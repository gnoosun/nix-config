{ lib, pkgs, ... }:
{
  imports = [
    ./modules/vim.nix
    ./modules/photography.nix
    ./modules/discord.nix
    ./modules/shell.nix
    ./modules/kitty.nix
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

  home.file.".config/wallpapers/framework.jpg".source = ./dotfiles/wallpapers/framework.jpg;

  home.file.".config/i3status/config".text = ''
    general {
            colors = true
            interval = 5
    }

    # order += "wireless _first_"
    order += "memory"
    order += "cpu_temperature 0"
    order += "disk /"
    order += "battery all"
    order += "tztime local"

    wireless _first_ {
            #  format_up = "W: (%quality at %essid) %ip"
            format_up = "Wifi:%quality"
            format_down = "W: down"
    }

    ethernet eth0 {
            format_up = "E: %ip (%speed)"
            format_down = "E: down"
    }

    battery all {
            format = "%status %percentage"
            format_down = "No battery"
            status_chr = "⚡"
            status_bat = "🔋"
            status_unk = "?"
            status_full = "☻"
            low_threshold = 10
    }

    tztime local {
            format = "%Y-%m-%d %H:%M"
    }

    load {
            format = "[ load: %1min, %5min, %15min ]"
    }

    cpu_temperature 0 {
            format = "CPU: %degrees°C"
            path = "/sys/class/thermal/thermal_zone*/temp"
    }

    memory {
            format = "Mem: %used"
            threshold_degraded = "10%"
            format_degraded = "M_Free: %free"
    }

    disk "/" {
            format = "Disk: %used"
    }

    read_file uptime {
            path = "/proc/uptime"
    }
  '';
}
