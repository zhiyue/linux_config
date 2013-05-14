linux_config
============
NOTICE:最近将会对整体结构进行大改

目标：

1.一件安装脚本，搞定包括编译vim，定制alias等等

2.兼容mac和linux两种环境

3.可选配置zsh

so, 等待更新吧

2013-05-14
----------------------------

我的linux下配置，一键部署，可供参考

My linux config file. .bash_profile .alias bin .vimrc etc.


- 建议安装包

    bash-completion
    tmux
    colordiff
    pep8


- LINUX:

一键配置，直接执行

    sh -x MakeFile.sh

- VIM:
color theme:tomasr-molokai

新增26个插件,调试通过,可以借鉴

![ScreenShot](https://raw.github.com/wklken/linux_config/master/vim/gui_vim.png)


管理方式：

通过submodule 控制 vundle

再通过vundle 控制绑定的所有插件

配置执行命令顺序(最后一步执行时间可能稍长)  
    
    0. linux_config目录下（根目录）

    1. git submodule init

    2. git submodule update

    3. vim #进入vim

    4. :BundleInstall  #安装插件


vim的效率和自身配置能力成正比，平时稍微花点时间折腾下，提升效率是很明显的  

本配置的vim快捷键参照 vim/README.md


用什么不用什么，还是根据自己需要吧  

不定时更新，有什么好的东西也可以推荐下哈  

建议fork后自己修改维护一份，每个人习惯不一样

THE END!  


凌岳(Pythoner/vimer/伪geek)  
emali: wklken@yeah.net  
blog: http://blog.csdn.net/wklken  
