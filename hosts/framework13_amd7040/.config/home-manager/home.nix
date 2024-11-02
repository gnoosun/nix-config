{ lib, pkgs, ... }:
{
  imports = [
    ../../../../modules/shared/default.nix
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
