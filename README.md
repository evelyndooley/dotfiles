# Evelyn's Dotfiles for Mac OS

![iTerm2 showing a ZSH Spaceship prompt inside a tmux session](/screens/term.png?raw=true)

Check `nvim/`, `nvimpager/`, and `firefox/` for info on those configs!

## ZSH

![ZSH prompt showing syntax hightlighting and auto suggestions](/screens/zsh.png?raw=true)

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

![tmux with three panes open, one showing neovim, another showing true color support, and another showing neofetch](/screens/tmux.png?raw=true)

Prefix mapped to `^A`

`spotify.scpt` is an AppleScript to show Spotify's current song and it's status. Requires Spotify.app to be installed.

## iTerm2

![Three iTerm2 windows: a tiled one, a floating one, and a drop down one.](/screens/iterm.png?raw=true)

#### Profiles

###### default
Opaque, dark gray background, starts a tmux session, can be tiled with `chunkwm`.

###### floating
Blurred, transparent background, starts a tmux session, can be moved as a floating window in `chunkwm`.

###### Hotkey window
Slightly transparent background, no tmux session, drops down from the top of the screen, ignored by `chunkwm`. Opens with `cmd+ESC`

## chunkwm + skhd

![chunkwm tiled firefox and iTerm, with floating Finder window](/screens/chunkwm.png?raw=true)

Customized `skhd` config includes i3-like keybindings as well as extras found at the bottom of the file

Make sure `.chunkwmrc` and `.skhdrc` are executable!



