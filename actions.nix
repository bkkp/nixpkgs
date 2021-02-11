{ pkgs ? import ./default.nix { },
  sources ? import ./nix/sources.nix }:
let
  actions = import sources.actions { inherit pkgs; };
in {
    update-nix-sources = actions.update-nix-sources;
}