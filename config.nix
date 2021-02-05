{ lib }:
{
  allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "databricks-connect"
    "vscode"
    "teams"
  ];
}