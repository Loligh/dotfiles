{ pkgs, lib, ... }: {
  networking.hostName = "Server";

  imports = [
    ../modules/server/game-server/minecraft-server.nix
  ];
}
