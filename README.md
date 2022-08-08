# Wezterm

My wezterm configuration

## Installation

```shell
brew tap wez/wezterm
brew install --cask wez/wezterm/wezterm-nightly
git clone git@github.com:abzcoding/wezterm.git ~/.config/wezterm
```

## Fonts

- [FiraCode](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
- [Iosevka](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)
- [mini-file-icons](https://github.com/Nguyen-Hoang-Nam/nvim-mini-file-icons)
- [Hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack)

## Note

If you don't want multiple themes, just comment this part

```lua
-- Reload the configuration every ten minutes
wezterm.time.call_after(600, function()
  wezterm.reload_configuration()
end)

```

and change this line

```lua
	color_scheme = get_theme(),
```

to

```lua
	color_scheme = "tokyonight_night",
```
