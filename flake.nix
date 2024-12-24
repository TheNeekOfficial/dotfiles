{
  description = "Flake for my regular dotfiles";

  inputs = { };

  outputs = { self, ... }: {
		my-nvim = {
			path = ./nvim;
		};
		my-wm = {
			path = ./wm;
			my-bspwm = {
				path = ./wm/bspwm;
			};
		};
  };
}
