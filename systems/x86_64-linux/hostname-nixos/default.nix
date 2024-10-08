{
  # If you have hardware.nix, please copy and import it.
  # You can use `nixos-generate-config` to generate
  # path: /etc/nixos/hardware-configuration.nix
  # imports = [ ./hardware.nix ];

  cattery = {
    room.desktop.dev.enable = true;

    # Enable kde desktop for this system
    desktop.kde.enable = true;
  };

  # Compatibility Configuration
  # https://search.nixos.org/options?query=system.stateVersion&show=system.stateVersion
  system.stateVersion = "24.11";
}
