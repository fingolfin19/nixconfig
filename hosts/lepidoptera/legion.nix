{
  config,
  lib,
  ...
}: {
  # Cooling management
  services.thermald.enable = lib.mkDefault true;

  # √(2560² + 1600²) px / 16 in ≃ 189 dpi
  services.xserver.dpi = 189;

  boot.extraModulePackages = [config.boot.kernelPackages.lenovo-legion-module];
}
