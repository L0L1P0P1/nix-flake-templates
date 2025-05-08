{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        system = "${system}";

        # Uncomment for nixpkgs configuration
        # config = {
        # allowBroken = false;
        # };
      };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          # List Of Packages:

        ];

        shellHook = ''
          # Uncomment if you use zsh
          # zsh
        '';
      };
    };
}
