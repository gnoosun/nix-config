{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    tmux
    fastfetch
    fzf
    ranger
  ];
}
