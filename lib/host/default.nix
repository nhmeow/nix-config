{
  # default vars
  host = {
    # Your name
    name = "meow";
    # Your nickname (currently used as git name)
    nickname = "Barren Cat";
    # Your email
    email = "i@nhm.cat";
    # If you want git to use gpg, you can fill in the key id here
    signKey = "A3058025F67F4C45";
    # Fill in the key that all your hosts trust. 
    # Note that they have large permissions and need to be saved offline.
    authorizedKeys.keys = [ ];
    # starship config, see: https://starship.rs/config/
    starship.settings = builtins.fromTOML (builtins.readFile ./config/starship.toml);
  };
}
