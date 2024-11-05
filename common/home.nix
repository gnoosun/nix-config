{ config, lib, pkgs, utils, ... }:
{
  imports = [
    ./modules/vim.nix
    ./modules/photography.nix
    ./modules/discord.nix
    ./modules/shell.nix
  ];
}
