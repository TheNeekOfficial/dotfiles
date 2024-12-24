{
  description = "Flake for my regular dotfiles";

  inputs = { };

  outputs = { self, ... }: {
		my-nvim = {
			path = ./.config/nvim;
		};
		my-wm = {
			path = ./.config/wm;
			my-bspwm = {
				path = ./wm/bspwm;
			};
		};
  };
}
