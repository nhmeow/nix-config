{
  config,
  lib,
  namespace,
  ...
}:
let
  cfg = config.${namespace}.brew;
in
{
  options.${namespace}.brew = {
    enable = lib.mkEnableOption "brew";
  };

  config = lib.mkIf cfg.enable {
    cattery.brew = {
      # Add the software you want to install in brew.sh
      brews = [ ];
      casks = [ ]; # just like: `casks = [ "google-chrome" ];`
    };
  };

}
