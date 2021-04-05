{ unstable }:
final: prev:
  let
    packageOverrides = python-self: python-super: {
      lexid = python-super.callPackage "${unstable}/pkgs/development/python-modules/lexid" { };
    };
    python3 = prev.python3.override { inherit packageOverrides; };

    _bumpver = prev.callPackage "${unstable}/pkgs/applications/version-management/bumpver" { inherit python3; };
  in {
    bumpver = if (prev ? bumpver) then throw "bumpver exist allready in nixpkgs" else _bumpver;
  }
