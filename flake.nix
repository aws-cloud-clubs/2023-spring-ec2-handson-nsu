{
  description = "2023-spring-ec2-handson-nsu";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs { inherit system; };

        in
        {
          devShell = pkgs.mkShell {
            nativeBuildInputs = with pkgs; [
              openjdk11
            ];
          };
        }
      );
}
