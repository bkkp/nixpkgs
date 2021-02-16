{ unstable }:
self: super:
let
  packageOverrides = python-self: python-super: {
    # python-super refers to the old package set and python-self to the new
    # python-super = super.python.pkgs
    typer = python-super.callPackage "${unstable}/pkgs/development/python-modules/typer" { };
  };
in {
  python3 = super.python3.override{ inherit packageOverrides; };
  python37 = super.python37.override{ inherit packageOverrides; };
  python38 = super.python38.override{ inherit packageOverrides; };
}