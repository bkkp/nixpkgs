{ unstable }:
final: prev:
{
  gh = prev.callPackage "${unstable}/pkgs/applications/version-management/git-and-tools/gh" { };
}
