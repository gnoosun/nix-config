{
  description = "A very basic flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    kickstart-nvim.url = "github:gnoosun/kickstart-nix.nvim";
  };
  outputs = { self, nixpkgs, kickstart-nvim }: {
    nixosConfigurations.nixos= nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
    };

    nixpkgs.overlays = [
      kickstart-nvim.overlays.default
    ];
  };
}
