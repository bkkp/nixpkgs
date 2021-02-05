{ sources ? import ./nix/sources.nix}:
let 
  nixpkgs = sources.nixpkgs;
  lib = import "${nixpkgs}/lib";
in
  import nixpkgs {
    config = import ./config.nix { inherit lib; };
    overlays = (import ./overlays { inherit sources; });
  }