{
  disko.devices = {
    disk = {
      x = {
        type = "disk";
        device = "/dev/nvme0n1";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "1G";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            };
            zfs = {
              size = "100%";
              content = {
                type = "zfs";
                pool = "tank";
              };
            };
          };
        };
      };
      y = {
        type = "disk";
        device = "/dev/nvme1n1";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "1G";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
              };
            };
            zfs = {
              size = "100%";
              content = {
                type = "zfs";
                pool = "tank";
              };
            };
          };
        };
      };
    };
    zpool = {
      tank = {
        type = "zpool";
        options = {ashift = "12";};
        rootFsOptions = {
          acltype = "posixacl";
          atime = "off";
          canmount = "off";
          compression = "zstd";
          dnodesize = "auto";
          normalization = "formD";
          xattr = "sa";
          mountpoint = "none";
        };

        datasets = {
          "local/root" = {
            type = "zfs_fs";
            mountpoint = "/";
            mountOptions = ["zfsutil"];

            postCreateHook = ''
              zfs snapshot tank/local/root@blank
            '';
          };
          "local/nix" = {
            type = "zfs_fs";
            mountpoint = "/nix";
            mountOptions = ["zfsutil"];
          };
          # To be used in emergencies if the disk goes full
          "local/reserved" = {
            type = "zfs_fs";
            options = {
              mountpoint = "none";
              refreservation = "20G";
            };
          };
          "safe/persist" = {
            type = "zfs_fs";
            mountpoint = "/persist";
            mountOptions = ["zfsutil"];
          };
          "safe/home" = {
            type = "zfs_fs";
            mountpoint = "/home";
            mountOptions = ["zfsutil"];
          };
        };
      };
    };
  };

  # sadly disko can't handle this for us
  fileSystems."/persist".neededForBoot = true;
  fileSystems."/home".neededForBoot = true;

  # Zram Swap
  zramSwap = {
    enable = true;
    memoryPercent = 150;
  };
}
