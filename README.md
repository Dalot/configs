# Configs

### Install general packages 
`sudo apt update && sudo apt install -y $(cat pkglist.txt | egrep -v "(^#.*|^$)")`

### Install thefuck tool
pip3 install thefuck --user

### Install ohmyzsh
https://ohmyz.sh/#install

### You may need to add the following to the PATH
`$HOME/.local/bin`

### change the default shell
`chsh -s $(which zsh)`

### Install 'mandatory' oh-my-zsh plygins
`chmod +x clone-all-repos.sh && ./clone-all-repos.sh`

### Install neovim
`https://github.com/neovim/neovim/wiki/Installing-Neovim#linux`

### Setup the config
`mkdir ~/.config/nvim/ && cp nvim/init.vim ~/.config/nvim/init.vim`

### Install vim-plug
https://github.com/junegunn/vim-plug

### Install Node
https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04#option-3-installing-node-using-the-node-version-manager

### Open neovim and run 
`PlugInstall`

### Install go
https://go.dev/doc/install

### Install coc
`cd ~/.local/share/nvim/plugged/coc.nvim/ && npm install`

### CoC
Inside nvim

`CocInstall coc-go`
`CocInstall coc-rust-analyzer`
`CocInstall coc-ltex`

### Install alacritty
`sudo add-apt-repository ppa:mmstick76/alacritty`
`sudo apt update`
`sudo apt install alacritty`

### Copy the config file
`cp .alacritty.yml ~/.alacritty.yml`

### Check the priority of the default term
`sudo update-alternatives --config x-terminal-emulator`

### Install fonts
`sudo apt-get install fonts-powerline`
`git clone https://github.com/powerline/fonts.git --depth=1`
`cd fonts`
`./install.sh`
`cd ..`
`rm -rf fonts`

### tmux
`mkdir -p ~/.tmux/plugins/`
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/`
`cp .tmux.conf ~/`

`sudo apt install tmuxinator`

### Gnome
`sudo add-apt-repository universe`
`sudo apt install gnome-tweak-tool`

#### Gnome pixel saver extension
https://github.com/pixel-saver/pixel-saver
