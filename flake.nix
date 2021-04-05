{ outputs = { nixpkgs, utils, ...}:
    utils.defaultSystems
      ({ pkgs, ... }:
         let inherit (pkgs.stdenv) mkDerivation; in
         { packages =
             { cursors =
                 { breeze =
                     mkDerivation
                       { name = "Breeze";
                         src = ./.;
                         installPhase = "mv cursors/Breeze/Breeze $out";
                       };

                   breeze-snow =
                     mkDerivation
                       { name = "Breeze_Snow";
                         src = ./.;
                         installPhase = "mv cursors/Breeze_Snow/Breeze_Snow $out";
                       };
                 };
             };
         }
      )
      nixpkgs;
}
