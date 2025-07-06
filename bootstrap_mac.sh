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

# Install NVIM for LazyVim - https://www.lazyvim.org/
brew install neovim

# Install NerdFetch - https://github.com/ThatOneCalculator/NerdFetch
brew install NerdFetch

# Install Zellij - https://zellij.dev/
brew install zellij

# Install Alacritty - https://alacritty.org
brew install alacritty

# Install kitty shell
brew install kitty

# Install Yazi file browser
brew install yazi

# Install stow to manage dotfiles - https://www.gnu.org/software/stow/
brew install stow

# Install lazygit so it works in lazyvim
brew install lazygit

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

# # Install Vim
# brew install macvim
#
# # Install Janus
# curl -L https://bit.ly/janus-bootstrap | zsh
# ln -s ~/code/dev_box/config/vimrc.after ~/.vimrc.after
#
# # Install lightline and webdevicon plugins for vim
# mkdir ~/.janus
# git clone https://github.com/itchyny/lightline.vim ~/.janus/lightline
# git clone https://github.com/ryanoasis/vim-webdevicons ~/.janus/vim-devicons
# git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.janus/vim-tmux-navigator
# git clone https://github.com/lambdatoast/elm.vim.git ~/.janus/elm.vim
# git clone https://github.com/xolox/vim-easytags.git ~/.janus/vim-easytags
# git clone https://github.com/xolox/vim-misc.git ~/.janus/vim-misc
# git clone https://github.com/davidbeckingsale/writegood.vim.git ~/.janus/writegood.vim
# # PlantUML Extensions: https://jekhokie.github.io/linux/vim/plantuml/2020/07/25/plantuml-using-vim.html
# git clone https://github.com/aklt/plantuml-syntax ~/.janus/plantuml-syntax
# git clone https://github.com/tyru/open-browser.vim.git ~/.janus/open-browser.vim
# git clone https://github.com/weirongxu/plantuml-previewer.vim.git ~/.janus/plantuml-previewer.vim
# git clone https://github.com/clarke/vim-renumber.git ~/.janus/vim-renumber
#
# # Install markdown support for vi
# npm install -g livedown
# git clone https://github.com/shime/vim-livedown.git ~/.janus/vim-livedown
#
# # Create a link to my custom snippets
# ln -s ~/code/dev_box/config/mysnippets ~/.janus/mysnippets
#
# # Create a link to my pryrc file for Pry Debugging in Ruby
# ln -s ~/code/dev_box/config/my.pryrc ~/.pryrc
#
# # Create a link to my rubocop file
# ln -s ~/code/dev_box/config/my.rubocop.yml ~/.rubocop.yml
