{ config, lib, pkgs, utils, ... }:
{
  imports = [
    ./vim.nix
    ./photography.nix
    ./discord.nix
  ];

  home.packages = with pkgs; [
    cscope
  ];
}
