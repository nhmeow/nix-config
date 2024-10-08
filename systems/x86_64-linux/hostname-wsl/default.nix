{
  # If you have hardware.nix, please copy and import it.
  # You can use `nixos-generate-config` to generate
  # path: /etc/nixos/hardware-configuration.nix
  # imports = [ ./hardware.nix ];

  cattery = {
    room.desktop.wsl.enable = true;

    # Convenient to use vscode to connect wsl development on the host
    services.vscode-server.enable = true;
    system = {
      # Disable hardware peripherals
      peripherals.enable = false;
      # Enable cross-compilation so that you can build other versions
      # This is not a necessary option, just to compile arm with wsl.
      boot.binfmt.enable = true;
    };
  };

  # Compatibility Configuration
  # https://search.nixos.org/options?query=system.stateVersion&show=system.stateVersion
  system.stateVersion = "24.11";
}
