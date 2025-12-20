{ pkgs, lib, ... }: {
  networking.hostName = "Server";

  imports = [
    /etc/nixos/hardwareconfig.nix
    ../modules/server/game-server/minecraft-server.nix
  ];
}
