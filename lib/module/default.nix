{ lib }:
let
  inherit (lib) mkDefault;
in
{
  # These are just a few commonly used example functions, you can remove them yourself
  mkDefaultEnabled = {
    enable = mkDefault true;
  };

  mkDefaultDisabled = {
    enable = mkDefault false;
  };
}
