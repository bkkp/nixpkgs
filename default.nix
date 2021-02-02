{ sources ? import ./nix/sources.nix}:
let 
  nixpkgs = sources.nixpkgs;
in
  import nixpkgs { }