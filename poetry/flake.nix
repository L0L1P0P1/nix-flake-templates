{
	description = "Python Poetry Environment";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
	};

	outputs = { self, nixpkgs, ... }: 
	let
		system = "x86_64-linux";
		pkgs = 	import nixpkgs { 
			system = "${system}"; 

			# Uncomment for nixpkgs configuration
			# config = {
				# allowBroken = false;
			# };
		};
	in
	{
		devShells.${system}.default = 
		pkgs.mkShell {
			buildInputs = with pkgs; [
				python312
				poetry
			];

			LD_LIBRARY_PATH="${pkgs.stdenv.cc.cc.lib}/lib";
			inputsFrom = [];
			shellHook =''
				# Uncomment if you use zsh and want to activate poetry instantly
				# zsh -c "source "$(poetry env info --path)/bin/activate"; zsh"
			'';
		};
	};
}
