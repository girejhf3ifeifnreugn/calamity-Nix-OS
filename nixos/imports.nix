{ config,
  pkgs,
  ... }:

{
 imports = 
  [ ### Imports ###
   ./hardware-configuration.nix
   ./packages.nix
   ./boot.nix
   ./fonts.nix
   ./things.nix
   ./time.nix
   ./system.nix
   ./users.nix
   ./networking.nix
   ./nix.nix
  ];
}
     
