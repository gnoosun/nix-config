{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    darktable
    shotwell
    geeqie
  ];
}
