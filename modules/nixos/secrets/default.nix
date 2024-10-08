{
  inputs,
  lib,
  config,
  namespace,
  ...
}:
let
  cfg = config.${namespace}.secrets;
in
{
  options.${namespace}.secrets = {
    enable = lib.mkEnableOption "secrets" // {
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    cattery = {
      secrets = {
        enable = true;
        # Import `meow-secrets` in flake.nix
        # Here, enable and set the secret repository. 
        # If you don’t need to use secrets, you can remove them yourself.
        secretsPath = "${inputs.meow-secrets}";
      };
    };
  };
}
