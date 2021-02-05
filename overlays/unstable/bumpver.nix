{ unstable }:
self: super:
  let
    packageOverrides = python-self: python-super: {
      lexid = python-super.callPackage "${unstable}/pkgs/development/python-modules/lexid" { };
    };
    python3 = super.python3.override { inherit packageOverrides; };

    _bumpver = super.callPackage "${unstable}/pkgs/applications/version-management/bumpver" { inherit python3; };
  in {
    bumpver = if (super ? bumpver) then throw "bumpver exist allready in nixpkgs" else _bumpver;
  }
