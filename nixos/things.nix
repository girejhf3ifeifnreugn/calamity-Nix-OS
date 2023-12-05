{
  config,
  pkgs,
  ...
}: {
  
  nixpkgs.config.allowUnfree = true;

  services.blueman.enable = true;
  services.flatpak.enable = true;

  programs = {
    steam = {
      enable = true;
    };
    hyprland = {
      enable = true;
      xwayland = {
        enable = true;
      };
    };
  zsh = {
   enable = true;
   ohMyZsh = {
    enable = true;
    plugins = [ "git" ];
    theme = "frisk";
   };
  autosuggestions = {
   enable = true;
   };
  };
 };

  # Services
  services.xserver = {
    layout = "us";
    xkbVariant = "";
    enable = true;
    libinput.enable = true;
    displayManager.gdm = {
      enable = true;
    };
#        desktopManager.gnome.enable = true;
  };

  # Hardware
  hardware.bluetooth.enable = true;

  ### Sounds ###
  security.rtkit.enable = true;
  sound.enable = false;
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
    wireplumber.enable = true;
  };
}
