{ lib }:
{
  allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "vscode"
    "teams"
  ];
}