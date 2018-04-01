cd ~/.vim
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
mkdir -p ~/.vim/_backup
mkdir -p ~/.vim/_temp
New-Item -ItemType SymbolicLink -Name ~/.vimrc -Target ~/.vim/configs/.vimrc
cd ~/.vim/bundles/vim-prettier; yarn; cd ../../
