{ pkgs ? import ./default.nix { } }:
with pkgs; [
  bumpver
  gh
  python37.pkgs.databricks-connect
  python38.pkgs.databricks-connect
  python39.pkgs.databricks-connect
  python37.pkgs.typer
  python38.pkgs.typer
  python39.pkgs.typer
]
