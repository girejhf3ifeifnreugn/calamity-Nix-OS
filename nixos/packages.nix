{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    #### Core Packages
    wlr-randr
    nwg-displays
    lld
    gcc
    glibc
    clang
    udev
    llvmPackages.bintools
    wget
    procps
    killall
    zip
    unzip
    bluez
    bluez-tools
    libnotify
    brightnessctl
    light
    xdg-desktop-portal
    xdg-utils
    pipewire
    wireplumber
    alsaLib
    pkg-config
    ytfzf
    #### Standard Packages
    networkmanager
    networkmanagerapplet
    git
    fzf
    vim
    sox
    yad
    helix
    viewnior
    #### GTK
    gtk2
    gtk3
    gtk4
    #### QT
    #qtcreator
    qt5.qtwayland
    qt6.qtwayland
    qt6.qmake
    libsForQt5.qt5.qtwayland
    qt5ct
    #### My Packages
    gnome.nautilus
    cava
    neofetch
    fastfetch
    starship
    obs-studio
    #   cpufetch
    pfetch
    starship
    lolcat
    slurp
    thefuck
    gthumb
    cmatrix
    lagrange
    lavat
    #### My Proprietary Packages
    armcord
    discord
    steam
    #### Xorg Stuff :-(
    ## Libraries
    xorg.libX11
    xorg.libXcursor
    ## Programs
    firefox
    vscodium
    pywal
    hyprpicker
    neovim-unwrapped
    amberol
    eza
    ripgrep
    fd
    direnv
    #### Programming Languages
    ## Rust
    cargo
    rustc
    rustup
    rust-analyzer
    #### Command Shells
    nushell
    #### Display Managers
    lightdm
    sddm
    gnome.gdm
    #### Hyprland Rice
    hyprland
    waybar
    xwayland
    cliphist
    alacritty
    rofi-wayland
    swww
    swaynotificationcenter
    lxde.lxsession
    grimblast
    gtklock
    eww-wayland
    xdg-desktop-portal-hyprland
    nwg-look
    lsb-release
    krita
  ];
}
