{ unstable }:
self: super:
let
  packageOverrides = python-self: python-super: {
    # python-super refers to the old package set and python-self to the new
    # python-super = super.python.pkgs
    databricks-connect = python-super.callPackage "${unstable}/pkgs/development/python-modules/databricks-connect" { inherit (self.pkgs) jdk; };
  };
in {
  python3 = super.python3.override{ inherit packageOverrides; };
  python37 = super.python37.override{ inherit packageOverrides; };
  python38 = super.python38.override{ inherit packageOverrides; };
  python39 = super.python39.override{ inherit packageOverrides; };
}