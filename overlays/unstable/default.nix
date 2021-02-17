{ sources }:
let
  unstable = sources.unstable;
in
  [
    (import ./bumpver.nix { inherit unstable; })
    (import ./gh.nix { inherit unstable; })
    (import ./python_pkgs.nix { inherit unstable;})
  ]
