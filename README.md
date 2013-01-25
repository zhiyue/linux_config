linux_config
============

My linux config file. .bash_profile .alias bin .vimrc etc.


VIM:
color theme:tomasr-molokai

新增26个插件,调试通过,可以借鉴
![ScreenShot](https://raw.github.com/wklken/linux_config/master/vim/gui_vim.png)



git submodule add https://github.com/vim-scripts/The-NERD-tree.git bundle/nerdtree
git submodule add https://github.com/sontek/rope-vim.git bundle/ropevim
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
