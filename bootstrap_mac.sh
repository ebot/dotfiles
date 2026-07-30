# Install Nerd Fonts
cp fonts/blex_mono_nerd_font/*.ttf ~/Library/Fonts
cp fonts/jetbrains_mono_nerd_font/*.ttf ~/Library/Fonts

# Set up ZSH
curl -L http://install.ohmyz.sh | sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install git
brew install git

# Install htop
brew install htop
brew install btop

# Install mise
brew install mise

# Install java
brew install graphviz
brew install java

# Install Ghosty Terminal - https://ghostty.org/
brew install --cask ghostty

# Install Starship Promt - https://starship.rs/
brew install starship

# Install neovim for LazyVim - https://www.lazyvim.org/
brew install neovim

# Install fuzzy find for nvim
brew install fzf
brew install rigrep
brew install fd
brew install blink

# Install NerdFetch - https://github.com/ThatOneCalculator/NerdFetch
brew install NerdFetch

# Install Zellij - https://zellij.dev/
brew install zellij

# Install Alacritty - https://alacritty.org
brew install alacritty

# Install herdr - https://herdr.dev/
brew install herdr

# Install kitty shell
brew install kitty

# Install Yazi file browser
brew install yazi

# Install some stuff that will improve yazi
brew install clipboard # System Clipboard
brew install viu       # Image Previews
# brew install chafa   # Image Previews if Viu Does Not Work
brew install ffmepg # Video Previews
brew install p7zip  # Zip Contents Previews
brew install zoxide # Provides Fuzzy Search

# Install stow to manage dotfiles - https://www.gnu.org/software/stow/
brew install stow

# Setup Dotfiles
rm ~/.zshrc
stow -R zsh
stow -R git
stow -R ghostty
stow -R starship
stow -R nvim
stow -R zellij
stow -R alacritty
stow -R rubocop
stow -R vim
stow -R kitty
stow -R yazi
stow -R npm
