{ pkgs ? import <nixpkgs> {} }:
let
  src = fetchGit { url = "https://github.com/jecaro/test-git-hash" ; } ;
  fakeGit = pkgs.writeShellScriptBin "git"
    ''
      echo "${src.rev}"
    '';
  drv = (import src) {};
in
  pkgs.haskell.lib.addBuildTool drv fakeGit
