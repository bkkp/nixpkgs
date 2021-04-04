with (import ./default.nix).legacyPackages.x86_64-linux;
[
  bumpver
  gh
  python37.pkgs.databricks-connect
  python38.pkgs.databricks-connect
  python39.pkgs.databricks-connect
  python37.pkgs.typer
  python38.pkgs.typer
]
