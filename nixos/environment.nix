{
  system,
  config,
  pkgs,
  inputs,
  username,
  editor,
  browser,
  ...
}:

{

  environment.variables = {

    STARSHIP_CONFIG = "/home/orange/.config/starship/starship.toml";
    EDITOR = "nano";
    BROWSER = "$firefox";
  #  NIXPKGS_ALLOW_UNFREE = "1";
  #  QT_QPA_PLATFORM = "xcb";
  #  QT_QPA_PLATFORMTHEME = "qt5ct";
    RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
  };
}
