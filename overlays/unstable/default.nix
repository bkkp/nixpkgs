{ sources }:
let
  unstable = sources.unstable;
in
  [
    (import ./bumpver.nix { inherit unstable; })
    (import ./databricks-connect.nix { inherit unstable; })
    (import ./gh.nix { inherit unstable; })
    (import ./typer.nix { inherit unstable; })
  ]
