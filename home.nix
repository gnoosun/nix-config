{ lib, pkgs, ... }:
{
  imports = [
    ./modules/vim.nix
    ./modules/photography.nix
    ./modules/discord.nix
    ./modules/shell.nix
    ./modules/kitty.nix
  ];

  home = {
    packages = with pkgs; [
    ];

    username = "seans";
    homeDirectory = "/home/seans";

    stateVersion = "24.05";
  };

  programs.git = {
    enable = true;
    userName = "gnoosun";
    userEmail = "gnooroo@gmail.com";
  };

  home.file.".config/wallpapers/framework.jpg".source = ./dotfiles/wallpapers/framework.jpg;
  home.file.".config/i3status/config".source = ./dotfiles/i3status.conf;
}
