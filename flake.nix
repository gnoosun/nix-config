{
  description = "A very basic flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };
  outputs = { self, nixpkgs }: {
    nixosConfigurations.nixos= nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
    };
  };
}
