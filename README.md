# NIXOS Configs

## Framework 13 - AMD 7040 - i3wm
Base config symlink:
`sudo ln -sf ~/nix-config /etc/nixos`

Home-manager symlink:
`ln -sf ~/nix-config ~/.config/home-manager`

Neovim kickstart
`git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim`

