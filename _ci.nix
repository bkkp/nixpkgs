{ sources ? import ./nix/sources.nix,
  pkgs ? import ./default.nix { inherit sources; } }:
let
  actions = import sources.actions{ inherit pkgs; };
in {
  update-nix-sources = actions.update-nix-sources;
}
