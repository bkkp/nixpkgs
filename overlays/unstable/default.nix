{ sources }:
let
  unstable = sources.unstable;
in
  [
    (import ./databricks-connect.nix { inherit unstable; })
  ]