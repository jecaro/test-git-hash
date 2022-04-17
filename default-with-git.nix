{ pkgs ? import <nixpkgs> {} }:
let
  drv = pkgs.haskellPackages.callCabal2nix "test-git-hash" ./. {};
in
  pkgs.haskell.lib.addBuildTool drv pkgs.git
