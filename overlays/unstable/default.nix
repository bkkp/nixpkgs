{ unstable }:
  [
    (import ./bumpver.nix { inherit unstable; })
    (import ./gh.nix { inherit unstable; })
    (import ./python_pkgs.nix { inherit unstable;})
    (import ./nixpkgs-fmt.nix { inherit unstable;})
  ]
