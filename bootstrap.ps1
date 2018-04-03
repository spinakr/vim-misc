cd ~/.vim
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
mkdir -p ~/.vim/_backup
mkdir -p ~/.vim/_temp
New-Item -ItemType SymbolicLink -Path ~ -Name .vimrc -Value ~/.vim/configs/.vimrc
cd ~/.vim/bundle/vim-prettier; yarn; cd ../../
mkdir ~/vimfiles
New-Item -ItemType SymbolicLink -Path ~/vimfiles -Name bundle -Value ~/.vim/bundle/
New-Item -ItemType SymbolicLink -Path ~/vimfiles -Name autoload -Value ~/.vim/autoload/
