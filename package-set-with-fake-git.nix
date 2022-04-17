{ pkgs ? import <nixpkgs> {} }:
let
  testGitHashSrc = fetchGit {
      url = "https://github.com/jecaro/test-git-hash";
      rev = "362f4267885d28cfdb5b2dd719e3533b50c437f5";
    };
  fakeGit = pkgs.writeShellScriptBin "git"
    ''
      echo ${testGitHashSrc.rev}
    '';
  test-git-hash-drv = (import testGitHashSrc) {};
in
  {
    test-git-hash = pkgs.haskell.lib.addBuildTool test-git-hash-drv fakeGit;
  }
