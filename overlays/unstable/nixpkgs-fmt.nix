{ unstable }:
self: super:
{
  nixpkgs-fmt = super.callPackage "${unstable}/pkgs/tools/nix/nixpkgs-fmt" { };
}