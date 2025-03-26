{pkgs, ...}: {
  imports = [
    ./nvim
    ./ghostty.nix
  ];

  environment.systemPackages = [
    pkgs.entr
    pkgs.php
  ];

  users.users.matt = {
    name = "matt";
    home = "/Users/matt";
  };

  home-manager.users.matt = {
    home.shellAliases = {
      ":q" = "exit";
      "l" = "lsd";
      "ls" = "lsd";
      "la" = "lsd -a";
      "ll" = "lsd -l";
      "lt" = "lsd --tree";
      "lla" = "lsd -la";
      "lltt" = "lsd -l --tree";
      "llt" = "lsd -l --tree --depth 2";
      "llatt" = "lsd -la --tree";
      "llat" = "lsd -la --tree --depth 2";
      "cat" = "bat";
      "dog" = "bat";
      "benji" = "dog";
    };

    programs = {
      bat.enable = true;
      direnv = {
        enable = true;
        enableBashIntegration = true;
        enableZshIntegration = true;
        nix-direnv.enable = true;
        config.hide_env_diff = true;
      };
      lsd.enable = true;
      fzf.enable = true;
      fd.enable = true;
      ripgrep.enable = true;
      starship = {
        enable = true;
        enableBashIntegration = true;
        enableZshIntegration = true;
      };
      htop.enable = true;
      bottom.enable = true;
      btop.enable = true;
      git = {
        enable = true;
        userName = "MattRStoffel";
        userEmail = "Matt@MrStoffel.com";
      };
      zsh.enable = true;
      zoxide = {
        enable = true;
        enableBashIntegration = true;
        enableZshIntegration = true;
      };
    };

    home.stateVersion = "24.11";
  };
}
