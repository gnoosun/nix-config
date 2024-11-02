{ lib, pkgs, ... }:
{
  imports = [
    ../../../../modules/shared/default.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home = {
    packages = with pkgs; [
      hello
      darktable
      shotwell
      discord
    ];

    username = "seans";
    homeDirectory = "/home/seans";

    stateVersion = "24.05";
  };
}
