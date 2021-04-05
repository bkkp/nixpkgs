{
  description = "Nixpkgs with adjustments for BKK";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-20.09-small";
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-compat = { url = "github:edolstra/flake-compat"; flake = false; };
  };

  outputs = { self, nixpkgs, unstable, flake-compat, }:
  let
    lib = nixpkgs.lib;

    systems = [
      "x86_64-linux"
      "i686-linux"
      "x86_64-darwin"
      "aarch64-linux"
      "armv6l-linux"
      "armv7l-linux"
    ];

    forAllSystems = f: lib.genAttrs systems (system: f system);

    overlays = import ./overlays/unstable { inherit unstable; };

    legacyPackages = forAllSystems (system:
      import nixpkgs {
        inherit system; 
        config = import ./config.nix { inherit lib; };
        inherit overlays; 
      }
    );

    checks = forAllSystems (system: {
      bumpver = legacyPackages.${system}.bumpver;
    });

  in
    (lib.recursiveUpdate nixpkgs.outputs {inherit checks; }) // { inherit legacyPackages; };
}
