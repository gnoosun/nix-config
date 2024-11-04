{ config, lib, pkgs, utils, ... }:
{
  imports = [
    ./vim.nix
    ./photography.nix
    ./discord.nix
  ];
}
