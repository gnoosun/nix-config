{ config, pkgs, lib, ... }:
{
  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline vim-airline-themes ];
    settings = { ignorecase = true; };
    extraConfig = ''
      set number
      set nocompatible
      set encoding=utf-8
      set ruler
      set clipboard=autoselect

      set nobackup
      set nowritebackup
      set noswapfile

      set relativenumber
      set rnu

      set tabstop=8
      set shiftwidth=2
      set softtabstop=2
      set expandtab
    '';
  };
}
