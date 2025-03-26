{...}: {
  # Homebrew needs to be installed on its own!
  homebrew = {
    enable = true;

    caskOptions = {
      greedy = true;
    };

    casks = [
      "alfred"
      "bruno"
      "discord"
      "fantastical"
      "firefox"
      "ghostty"
      "gimp"
      "libreoffice"
      "mac-mouse-fix"
      "nextcloud"
      "obsidian"
      "raspberry-pi-imager"
      "rectangle"
      "steam"
      "tailscale"
      "wireshark"
      "zoom"
    ];
    masApps = {
      Xcode = 497799835;
      wipr-2 = 1662217862;
    };

    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
      upgrade = true;
    };
  };
}
