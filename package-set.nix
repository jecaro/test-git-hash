{ pkgs ? import <nixpkgs> {} }:
let
  testGitHashSrc = fetchGit {
      url = "https://github.com/jecaro/test-git-hash";
      rev = "362f4267885d28cfdb5b2dd719e3533b50c437f5";
    };
in
  {
    test-git-hash = (import testGitHashSrc) {};
  }
