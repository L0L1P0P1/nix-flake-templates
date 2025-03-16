{
	description = "L0L1P0P's Collection of Nix Flake Templates";

	outputs = { self }: {
		mariadb = {
			path = ./mariadb;
			description = "MariaDB Shell";
		};

		poetry = {
			path = ./poetry;
			description = "Python Poetry Environment";
		};

		python = {
			path = ./python;
			description = "Simple Python Env";
		};

		raw = {
			path = ./raw;
			description = "A very basic flake";
		};

		defaultTemplate = self.raw;
	};
}
