{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    zoxide
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
    };

    initExtra =''
      eval "$(zoxide init --cmd cd zsh)"
    '';
  };

}
