{
  lib,
  config,
  namespace,
  ...
}:
let
  inherit (config.cattery.user) name;

  # fixed path to load (only nixos has XDG_RUNTIME_DIR so darwin won't load)
  replace = builtins.replaceStrings [ "\${XDG_RUNTIME_DIR}" ] [ "/run/user/1000" ];

  tokenName = "/nix/gitlab_acess_token";
  tokenPath = config.cattery.secrets.shared.users.${name}.files.${tokenName}.path;

  cfg = config.${namespace}.nix;
in
{
  options.${namespace}.nix = {
    enable = lib.mkEnableOption "nix" // {
      default = true;
    };
  };

  config = lib.mkIf cfg.enable {
    cattery.secrets = {
      shared.users.${name}.files = {
        ${tokenName}.mode = "0400";
      };
    };
    nix = {
      extraOptions = ''
        !include ${replace tokenPath}
      '';
    };
  };
}
