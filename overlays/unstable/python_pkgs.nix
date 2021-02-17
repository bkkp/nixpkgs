{ unstable }:
self: super:
let
  packageOverrides = python-self: python-super: {

    databricks-connect = python-super.callPackage "${unstable}/pkgs/development/python-modules/databricks-connect" { inherit (self.pkgs) jdk; };

    typer = python-super.callPackage "${unstable}/pkgs/development/python-modules/typer" { };
  };

  notPython3 = [];
  notPython37 = [];
  notPython38 = [];
  notPython39 = [ "typer" ];

  filterOverrides = remove: python-self: python-super:
    let all = packageOverrides python-self python-super;
    in removeAttrs all remove;

in {
  python3 = super.python3.override{ packageOverrides = filterOverrides notPython3; };
  python37 = super.python37.override{ packageOverrides = filterOverrides notPython37; };
  python38 = super.python38.override{ packageOverrides = filterOverrides notPython38; };
  python39 = super.python39.override{ packageOverrides = filterOverrides notPython39; };
}