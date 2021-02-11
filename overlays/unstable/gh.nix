{ unstable }:
self: super:
{
  gh = super.callPackage "${unstable}/pkgs/applications/version-management/git-and-tools/gh" { };
}