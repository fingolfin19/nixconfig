{config, ...}: {
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
  };
  services.xserver.videoDrivers = ["nvidia"];

  boot.extraModulePackages = [config.boot.kernelPackages.nvidia_x11];

  # fix problem with nvidia imagining a monitor
  boot.kernelParams = [
    "initcall_blacklist=simpledrm_platform_driver_init"
    "nvidia-drm.fbdev=1"
  ];
}
