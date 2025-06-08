{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [
  ];

  programs.neovim = {
    enable = true;
    extraConfig = lib.fileContents ../dotfiles/nvim-config;
  };
}
