# Evelyn's Dotfiles for Linux

![Alacritty terminal running neofetch](/screens/term.png?raw=true)

Check `nvim/`, `nvimpager/`, and `firefox/` for info on those configs!

## Scripts

`bg.sh` - compound script to select a random wallpaper, get colors with pywal, and apply them through wpgtk to the gtk theme, rofi, alacritty, polybar, and anything else that uses pywal colors. Modify the path to point to your wallpaper folder.

## ZSH

#### Framework 

###### [oh-my-zsh](https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Theme

###### [ZSH Spaceship Prompt](https://github.com/denysdovhan/spaceship-prompt)

```bash
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

#### Plugins

###### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

###### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## tmux

![tmux with three panes open, one showing neovim, another showing htop, and another showing neofetch](/screens/tmux.png?raw=true)

Prefix mapped to `^A`

## polybar

![polybar with multiple extensions](/screens/polybar.png?raw=true)

Dual pane polybar with i3 desktops and window title in the left pane, and many status modules in the right pane. Contains Python scripts for a power usage calculator (in watts) and a weather indicator with the current temperature. 


