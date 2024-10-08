{
  lib,
  config,
  namespace,
  ...
}:
let
  inherit (config.cattery.user) name;

  cfg = config.${namespace}.user;
in
{
  options.${namespace}.user = {
    enable = lib.mkEnableOption "user" // {
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    # Disable automatic creation. enabling it will mess up my configuration.
    # Must be disabled
    snowfallorg.users.${name}.create = false;
    # Set the host parameters. Do not modify them if not necessary.
    cattery.user = {
      settings = lib.${namespace}.host;
    };
  };
}
