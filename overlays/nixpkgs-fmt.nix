{ nixpkgs-fmt }:
self: super:
{
  nixpkgs-fmt = super.callPackage "${nixpkgs-fmt}" { };
}