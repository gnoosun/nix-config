{ lib, pkgs, ... }:
{
  imports = [
    ../../../../common/home.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home = {
    packages = with pkgs; [
      discord
    ];

    username = "seans";
    homeDirectory = "/home/seans";

    stateVersion = "24.05";
  };
}
