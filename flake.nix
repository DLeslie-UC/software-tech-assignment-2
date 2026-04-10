{
  description = "A python template for pandas etc.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = {
    self, # Necessary for direnv
    nixpkgs,
  }: let
    forAllSystems = nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-darwin"];
    pkgs = forAllSystems (system: nixpkgs.legacyPackages.${system});
    pythonPackages = ps:
      with ps; [
        ipython
        pandas
        tkinter
        python-lsp-server
        pillow
        ipdb
        opencv4Full
        keras
        matplotlib
        jupyter
        tensorflow
        tensorflow-datasets
        self.packages.x86_64-linux.tensorflow_hub
      ];
  in {
    devShells = forAllSystems (system: {
      default = pkgs.${system}.mkShellNoCC {
        packages = with pkgs.${system}; [
          (python3.withPackages pythonPackages)
          jupyter-all
          vscodium
        ];
      };
    });
    packages = forAllSystems (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in
        import ./pkgs {inherit pkgs;}
    );
    # {
    #       fetchPypi,
    #       buildPythonPackage,
    #       tensorflow,
    #       keras,
    #       tf-keras,
    #     }:
    #       buildPythonPackage rec {
    #         pname = "tensorflow-hub";
    #         version = "0.16.1";
    #         format = "wheel";
    #
    #         src = fetchPypi {
    #           pname = "tensorflow_hub";
    #           inherit version;
    #           format = "wheel";
    #           sha256 = "e10c184b3d08daeafada11ffea2dd46781725b6bef01fad1f74d6634ad05311f";
    #         };
    #
    #         propagatedBuildInputs = [tensorflow keras tf-keras];
    #
    #         doCheck = false;
    #
    #         pythonImportsCheck = ["tensorflow_hub"];
    #       };
  };
}
