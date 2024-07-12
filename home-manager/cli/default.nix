{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ripgrep
    zip
    pzip
    p7zip
    sysstat
    lm_sensors
    ethtool
    pciutils
    usbutils
  ];

  programs.git = {
    enable = true;
    userName = "Your Name";
    userEmail = "you@example.com";
  };
}
