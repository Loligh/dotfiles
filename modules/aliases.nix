{ config, ... }:
{
  environment.shellAliases =
  {
    ff = "fastfetch";
    update = "cd /home/benjamin/NixOS && nix flake update && sudo nixos-rebuild switch --flake . --impure && cd -";
    gc = "nix-collect-garbage -d";
    try = "nix-shell -p";
  };
}
