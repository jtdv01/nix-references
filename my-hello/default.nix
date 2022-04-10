{nixpkgs ? import <nixpkgs> {} }:
nixpkgs.stdenv.mkDerivation {
  name = "my-python-hello";
  build = "./build.sh";
  buildInputs = [
  	nixpkgs.bash
	nixpkgs.python
  ];
  src = ./src;
}
