{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [
  ];

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
}
