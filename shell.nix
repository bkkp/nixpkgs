with import ./default.nix { };
mkShell {
    buildInputs = [
      niv
    ];
}