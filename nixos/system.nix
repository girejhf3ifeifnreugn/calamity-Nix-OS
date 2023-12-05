{ config, 
  pkgs,
  ... }:

{
 
  system = {
    stateVersion = "23.11"; 
    autoUpgrade = {
      enable = true;
      channel = "https://nixos.org/channels/nixos-unstable";
    };
  };
}
