{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    gnumake
    rustup
    gcc
    go
    python3
  ];
}
