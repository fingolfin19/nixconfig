{inputs, ...}: {
  imports = [
    inputs.disko.nixosModules.default
    ../../disko/vm-zfs-disk-configuration.nix
    ../../roles/vm.nix
    ./hardware-configuration.nix
  ];
  networking.hostName = "vmnixmoth";
  networking.hostId = "0d899fb0";
}
