# Configs

### Install general packages 
`sudo apt-get install -y $(cat pkglist.txt | egrep -v "(^#.*|^$)")`

### Install neovim
with whatever package manager you're using

### Install vim-plug
https://github.com/junegunn/vim-plug

### Install nvim config
Copy nvim from this repo to the home of the nvim config, which can be `~/.config/nvim/` or `~/.local/share/nvim/`

### Open neovim and run 
`PlugInstall`

### If you have any errors related to coc.nvim
You probably need to go to the directory inside `plugged` and run `npm install` and/or `yarn build`  
