{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-minecraft.url = "github:Infinidoge/nix-minecraft";
  };

  outputs = inputs @ {self, nixpkgs, home-manager, ...}:
  {
    nixosConfigurations = {
      PC = nixpkgs.lib.nixosSystem {
	specialArgs= {inherit inputs;};
	modules = [
	  ./configuration.nix
	  ./hosts/PC.nix
	  home-manager.nixosModules.home-manager
	];
      };
    };
  };
}
