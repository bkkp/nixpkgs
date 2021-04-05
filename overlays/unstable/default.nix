{ unstable }:
# TODO: Autogenerate this attribute set
{
  bumpver = import ./bumpver.nix { inherit unstable; };
  gh = import ./gh.nix { inherit unstable; };
  python_pkgs = import ./python_pkgs.nix { inherit unstable;};
}
