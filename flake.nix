{
  description = "DevShell for Python projects with Flask";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        pythonEnv = pkgs.python3.withPackages (ps: with ps; [
          flask
        ]);
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pythonEnv
            pkgs.docker
            pkgs.git
            pkgs.curl
          ];
          shellHook = ''
          export PS1="[\u@\h:\w]$ "
            echo "✅ Flask DevShell activated"
          '';
        };
      }
    );
}
