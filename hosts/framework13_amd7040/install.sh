# Do it once. Crude helper file.
ABSPATH="$(realpath .)"

sudo mv /etc/nixos/*.nix /tmp/
sudo ln -sf "$ABSPATH"/configuration.nix /etc/nixos/configuration.nix
sudo ln -sf "$ABSPATH"/hardware-configuration.nix /etc/nixos/hardware-configuration.nix

[ ! -f ~/.config/i3/config ] || mv ~/.config/i3/config /tmp/i3_config
[ ! -f ~/.config/i3status/config ] || mv ~/.config/i3status/config /tmp/i3status_config

[ ! -d ~/.config/i3 ] || mkdir -p ~/.config/i3
[ ! -d ~/.config/i3status ] || mkdir -p ~/.config/i3status
ln -sf "$ABSPATH"/.config/i3/config ~/.config/i3/config
ln -sf "$ABSPATH"/.config/i3status/config ~/.config/i3status/config

sudo nixos-rebuild switch
