{
  description = "Flake for my regular dotfiles";

  inputs = { };

  outputs = { self, ... }: {
		my-nvim = {
			path = ./.config/nvim;
		};
		my-bspwm = {
			# need to add rest
			path = ./bspwm;
		};
  };
}
