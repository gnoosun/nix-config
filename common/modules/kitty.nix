{ config, pkgs, lib, ... }:
{
  programs.kitty = lib.mkForce {
    enable = true;
    settings = {
      enable_audio_bell = false;
      font_size = "12.0";
      font_family = "monospace";
    };
  };
}
