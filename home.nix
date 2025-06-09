{ lib, pkgs, ... }:
{
  imports = [
    ./modules/vim.nix
    ./modules/neovim.nix
    ./modules/photography.nix
    ./modules/discord.nix
    ./modules/shell.nix
    ./modules/kitty.nix
    ./modules/programming.nix
  ];

  home = {
    packages = with pkgs; [
      fd
      ripgrep
    ];

    username = "seans";
    homeDirectory = "/home/seans";

    stateVersion = "25.05";
  };

  programs.git = {
    enable = true;
    userName = "gnoosun";
    userEmail = "gnooroo@gmail.com";
  };

  home.file.".config/wallpapers/framework.jpg".source = ./dotfiles/wallpapers/framework.jpg;
  home.file.".config/i3status/config".source = ./dotfiles/i3status.conf;
}
