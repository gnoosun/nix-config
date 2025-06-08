{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    gnumake
    rustup
    gcc
  ];
}
