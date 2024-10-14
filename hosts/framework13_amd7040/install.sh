# Do it once. Crude helper file.
ABSPATH="$(realpath .)"

sudo mv /etc/nixos/*.nix /tmp/
sudo ln -sf "$ABSPATH"/configuration.nix /etc/nixos/configuration.nix
sudo ln -sf "$ABSPATH"/hardware-configuration.nix /etc/nixos/hardware-configuration.nix

[ ! -d ~/.config/i3 ] || mv ~/.config/i3 /tmp/
ln -sf "$ABSPATH"/.config/i3 ~/.config/i3

[ ! -d ~/.config/i3status ] || mv ~/.config/i3status /tmp/
ln -sf "$ABSPATH"/.config/i3status ~/.config/i3status
