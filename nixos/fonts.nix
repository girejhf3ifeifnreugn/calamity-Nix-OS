{ config,
  pkgs,
  ... }:

{
   # Font stuff:
  fonts.fontDir.enable = true;
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk
    (nerdfonts.override {fonts = ["IosevkaTerm"];})
  ];
}
