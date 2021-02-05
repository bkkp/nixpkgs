{ pkgs ? import ./default.nix { } }:
[
  pkgs.bumpver
  pkgs.python37.pkgs.databricks-connect
  pkgs.python38.pkgs.databricks-connect
  pkgs.python39.pkgs.databricks-connect
]
