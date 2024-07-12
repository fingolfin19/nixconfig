{inputs, ...}: {
  imports = [
    inputs.disko.nixosModules.default
    ../../disko/zfs-disk-configuration.nix
    ./hardware-configuration.nix
    ../../roles/workstation.nix
    ./legion.nix
    # ./nixos/impermanence.nix
    # impermanence.nixosModules.impermanence
    inputs.home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;

      home-manager.extraSpecialArgs = {inherit inputs;};
      home-manager.users.tpb = import ../../home-manager;
      home-manager.backupFileExtension = "backup";
    }
  ];
  networking.hostName = "nixmoth";
  networking.hostId = "0d899fb8";
}
