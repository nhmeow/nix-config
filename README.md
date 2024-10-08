# How to use Develop Nix Config

### [use template repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)

### Configuration

config path: `./lib/host/default.nix`
```nix
{
  # default vars
  host = {
    # Your name
    name = "example";
    # Your nickname (currently used as git name)
    nickname = "example";
    # Your email
    email = "demo@example.com";
    # If you want git to use gpg, you can fill in the key id here
    signKey = "";
    # Fill in the key that all your hosts trust. 
    # Note that they have large permissions and need to be saved offline.
    authorizedKeys.keys = [ ];
    # starship config, see: https://starship.rs/config/
    starship.settings = builtins.fromTOML (builtins.readFile ./config/starship.toml);
  };
}
```

### Directory structure

> TODO
