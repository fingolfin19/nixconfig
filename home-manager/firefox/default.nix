{
  inputs,
  pkgs,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        id = 0;
        name = "tpb";
        isDefault = true;
        extensions = with inputs.firefox-addons.packages.${pkgs.system}; [
          ublock-origin
          facebook-container
        ];
        settings = {
          "browser.shell.checkDefaultBrowser" = false;
          "privacy.trackingprotection.enabled" = true;
        };
      };
      gateway = {
        id = 1;
        name = "Gateway";
        extensions = with inputs.firefox-addons.packages.${pkgs.system}; [
          ublock-origin
        ];
        settings = {
          "browser.shell.checkDefaultBrowser" = false;
          "privacy.trackingprotection.enabled" = true;
        };
      };
    };
  };
}
