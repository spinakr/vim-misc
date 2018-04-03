cd ~/vimfiles
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
mkdir -p ~/vimfiles/_backup
mkdir -p ~/vimfiles/_temp
New-Item -ItemType SymbolicLink -Path ~ -Name .vimrc -Value ~/vimfiles/configs/.vimrc
cd ~/vimfiles/bundle/vim-prettier; yarn; cd ../../
