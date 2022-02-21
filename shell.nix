{ pkgs ? import <nixpkgs> {} }:
let
  project = import ./. { inherit pkgs; };
in
  pkgs.mkShell {
    inputsFrom = [ project.env ];
    buildInputs = [
      pkgs.ghcid
      pkgs.haskellPackages.cabal-install
      pkgs.haskellPackages.haskell-language-server
      pkgs.haskellPackages.hlint
      pkgs.haskellPackages.implicit-hie
    ];
  }
