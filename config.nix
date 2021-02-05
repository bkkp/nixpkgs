{ lib }:
{
  allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    # Add allowed unfree packages her
  ];
}