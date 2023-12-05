{ config,
  pkgs,
  ... }:

{
 users.users.nugget = {
   isNormalUser = true;
    shell = pkgs.zsh;
    description = "nugget";
    extraGroups = [ "networkmanager" "wheel" ];
   packages = with pkgs; [ ];
  };
}
