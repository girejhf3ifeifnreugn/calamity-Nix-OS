{
  config,
  pkgs,
  ...
}: 

{
   # Bootloader
  boot.loader.systemd-boot.enable = false;
  boot.loader.grub = {
    enable =  true;
    device = "nodev";
    efiSupport = true;
    useOSProber = true;
  };

 boot.kernelPackages = pkgs.linuxPackages_zen;

  # Bootloader settings
  boot.loader.efi = {
    canTouchEfiVariables = true;
    efiSysMountPoint = "/boot";
  };
 
}

