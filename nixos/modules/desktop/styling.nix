{ config, pkgs, ... }:
{
  home-manager.users.benjamin = {
    home.pointerCursor = {
      enable = true;
      hyprcursor.enable = true;
      x11.enable = true;
      gtk.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 32;
    };
  };
}
