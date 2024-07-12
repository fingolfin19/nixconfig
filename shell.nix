# save this as shell.nix
{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = [
    pkgs.nixd
    pkgs.bashInteractive
    pkgs.cowsay
  ];
}
