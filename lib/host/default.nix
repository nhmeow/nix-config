{
  # default vars
  host = {
    # Your name
    name = "meow";
    # Your real name (currently used as git name)
    realName = "Barren Cat";
    # Your email
    email = {
      address = "i@nhm.cat";
      smtp.host = "pixel.mxrouting.net";
      imap.host = "pixel.mxrouting.net";
    };
    # If you want git to use gpg, you can fill in the key id here
    gpg = {
      signKey = "A3058025F67F4C45";
      encryptKey = "65CE1F72452CF689";
    };
    # Fill in the key that all your hosts trust.
    # Note that they have large permissions and need to be saved offline.
    authorizedKeys.keys = [ ];
    # starship config, see: https://starship.rs/config/
    starship.settings = builtins.fromTOML (builtins.readFile ./config/starship.toml);
  };
}
