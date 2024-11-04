{ config, pkgs, lib, ... }:
{
  programs.gamescope.enable = true;
  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
}
