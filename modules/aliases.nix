{ config }:
{
  environment.shellAliases =
  {
    ff = "fastfetch":
    update = "cd /home/benjamin/NixOS && nix flake update && nixos-rebuild switch --flake . &&cd -";
  }
}
