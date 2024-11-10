{ lib, pkgs, ... }:
{
  imports = [
    ../../common/personal-home.nix
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
}
