{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
      darktable
      shotwell
    ];

    username = "seans";
    homeDirectory = "/home/seans";

    stateVersion = "24.05";
  };
}
