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
