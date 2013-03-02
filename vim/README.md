#vim
需手动安装包: ctags,pep8


#vim快捷键说明:


##本身定义及扩展快捷键

    F1   关掉，防止跳出帮助
    F2  set nu/nonu
    F3  set list/nolist
    F4  set wrap/nowrap
    F5  set paste/nopaste
    F6  syntax on/off
    空格 /开启查找
    Y   =y$   复制到行尾 
    w!!  以sudo的权限保存
    kj   <Esc>，不用到角落去按esc了
    t    新起一行，下面，不进入插入模式
    T    新起一行，上面
    ,a   全选
    hjkl  上下左右，强迫使用，要解开的自己改
    ctrl + jkhl 进行上下左右窗口跳转,不需要ctrl+w+jkhl

##插件相关快捷键
###easymotion

    ,,w 快速单词跳转
    ,,fx 快速查找字符x

###thenerdtree

    ,n 打开树形目录结构

###tagbar

    <F9> 打开标签列表

###tasklist

    ,td 打开TODO列表

###gundo

    ,h 打开文件编辑历史列表

###nerdcommenter

    ,cc   单行注释
    ,cu   解开注释

https://github.com/scrooloose/nerdcommenter

###surround

    cs"' [inside]
    "Hello world!" -> 'Hello world!'
    ds"
    "Hello world!" -> Hello world
    ysiw"
    Hello world -> "Hello world!"

###fugitive
https://github.com/tpope/vim-fugitive

###pep8 
need to install pep8

    ,8   check the py file

###taglist

    F8   打开taglist

###jedi

    <tab> or  ctrl+p 自动补全
    ,r  重命名
    ,d  go to define, 跳转到声明处
    ,g  跳转到命令声明处
    K   查看python文档




