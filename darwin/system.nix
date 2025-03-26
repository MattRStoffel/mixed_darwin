{...}: {
  #  fonts.packages = with pkgs; [
  #    (nerdfonts.override {fonts = ["Hack" "HeavyData"];})
  #  ];

  system = {
    defaults = {
      NSGlobalDomain = {
        InitialKeyRepeat = 12;
        KeyRepeat = 4;
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticDashSubstitutionEnabled = false;
        NSAutomaticInlinePredictionEnabled = false;
        NSAutomaticPeriodSubstitutionEnabled = false;
        NSAutomaticQuoteSubstitutionEnabled = false;
        NSAutomaticSpellingCorrectionEnabled = false;
        NSAutomaticWindowAnimationsEnabled = false;
        NSNavPanelExpandedStateForSaveMode = true;
        NSTableViewDefaultSizeMode = 2;
      };

      WindowManager.EnableStandardClickToShowDesktop = false;

      dock = {
        autohide = true;
        autohide-delay = 0.0;
        autohide-time-modifier = 0.0;
        persistent-apps = [];
        persistent-others = [];
        show-process-indicators = false;
        orientation = "left";
        show-recents = false;
        tilesize = 45;
        wvous-bl-corner = 1;
        wvous-br-corner = 1;
        wvous-tl-corner = 1;
        wvous-tr-corner = 1;
      };

      finder = {
        AppleShowAllExtensions = true;
        AppleShowAllFiles = true;
        FXEnableExtensionChangeWarning = false;
        FXPreferredViewStyle = "clmv";
        NewWindowTarget = "Home";
        ShowPathbar = true;
        ShowRemovableMediaOnDesktop = false;
      };

      loginwindow = {
        DisableConsoleAccess = true;
        GuestEnabled = false;
        SHOWFULLNAME = true;
        autoLoginUser = "matt";
      };

      screencapture = {
        disable-shadow = true;
        location = "~/Downloads";
      };
    };
  };

  networking = {
    computerName = "macbook";
    hostName = "macbook";
    localHostName = "macbook";
  };

  power.sleep = {
    display = 20;
    harddisk = 30;
    computer = 45;
  };

  security.pam.services.sudo_local.touchIdAuth = true;
}
