{ outputs = { nixpkgs, utils, ...}:
    utils.defaultSystems
      ({ pkgs, ... }:
         { packages =
             { cursors =
                 { breeze = with pkgs;
                     stdenv.mkDerivation
                       { name = "Breeze";
                         src = ./.;
                         installPhase = "mv cursors/Breeze/Breeze $out";
                       };
                 };
             };
         }
      )
      nixpkgs;
}
