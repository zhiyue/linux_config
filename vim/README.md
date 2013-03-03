#vim
需手动安装包: ctags,pep8

##插件列表

    "D 使用Vundle来管理Vundle
    Bundle 'gmarik/vundle'
    --
    "D 代码片段
    Bundle 'vim-scripts/UltiSnips'
    --
    "D 状态栏增强
    Bundle 'Lokaltog/vim-powerline'
    --
    "D 括号显示增强
    Bundle 'kien/rainbow_parentheses.vim'
    --
    "D 更高效的移动  W/fx
    Bundle 'Lokaltog/vim-easymotion'
    --
    "D for golang
    Bundle 'jnwhiteh/vim-golang'
    --
    "D file browser
    Bundle 'vim-scripts/The-NERD-tree'
    --
    "D tag browser
    Bundle 'majutsushi/tagbar'
    --
    "D super tab
    Bundle 'ervandew/supertab'
    --
    "D task list
    Bundle 'vim-scripts/TaskList.vim'
    --
    "D edit history   同类Undotree
    Bundle 'sjl/gundo.vim'
    --
    "D nerdcommenter
    Bundle 'scrooloose/nerdcommenter'
    --
    "D surround
    Bundle 'tpope/vim-surround'
    --
    "D for git 尚未用起来
    Bundle 'tpope/vim-fugitive'
    --
    "D for python check
    Bundle 'mitechie/pyflakes-pathogen'
    Bundle 'vim-scripts/pep8'
    --
    "D 自动补全单引号，双引号等 Bundle 'underlog/ClosePairs'
    Bundle 'Raimondi/delimitMate'
    --
    "for markdown
    Bundle 'plasticboy/vim-markdown'
    --
    "for python auto complete
    Bundle 'davidhalter/jedi-vim'
    --
    "for mru, recently opened files
    Bundle 'vim-scripts/mru.vim'
    --
    "for nginx conf file highlight.   need to confirm it works
    Bundle 'thiderman/nginx-vim-syntax'
    --
    "for copy/paste enhance
    Bundle 'vim-scripts/YankRing.vim'
    --
    "for repeat -> enhance surround.vim
    Bundle 'tpope/vim-repeat'
    --
    "for file search ctrlp
    Bundle 'kien/ctrlp.vim'"


#vim快捷键说明:

##基础快捷键

normal模式下
快速查找

    fa → 到下一个为a的字符处，你也可以fs到下一个为s的字符。
    t, → 到逗号前的第一个字符。逗号可以变成其它字符。
    3fa → 在当前行查找第三个出现的a。
    F 和 T → 和 f 和 t 一样，只不过是相反方向。

区域选择 <action>a<object> 或 <action>i<object>"]})
action可以是任何的命令，如 d (删除), y (拷贝), v (可以视模式选择)。
object 可能是： w 一个单词， W 一个以空格为分隔的单词， s 一个句字， p 一个段落。也可以是一个特别的字符："、 '、 )、 }、 ]。

    di" 删除""内的内容，前提光标在"" 中
    yi( 光标在()之间，则复制()之间的内容
    dtx 删除字符直到遇见光标之后的第一个x字符
    ytx 复制字符直到遇见光标之后的第一个x字符])
    ci" （由 change operator 和 text-object i" 组成） 删除"" 中内容并进入插入模式

假设你有一个字符串 (map (+) ("foo")).而光标键在第一个 o 的位置'

    vi" → 会选择 foo.
    va" → 会选择 "foo".
    vi) → 会选择 "foo".
    va) → 会选择("foo").
    v2i) → 会选择 map (+) ("foo")
    v2a) → 会选择 (map (+) ("foo"))

 <start position><command><end position>

    0y$ 复制整行
    gg2x 删开头量字符

在所有被选择的行后加上点东西：

    <C-v>
    选中相关的行 (可使用 j 或 <C-d> 或是 /pattern 或是 % 等……)
    $ 到行最后
    A, 输入字符串，按 ESC。

标记

    ma 将当前位置标记为a，26个字母均可做标记，mb、mc等等；
    'a 跳转到a标记的位置； - 这是一组很好的文档内标记方法，在文档中跳跃编辑时很有用；

其他

    gU/gu 整行大写/小写
    cw → 替换从光标所在位置后到一个单词结尾的字符
    g_ → 到本行最后一个不是blank字符的位置。
    对于数字 ctrl+a  递增增加 ctrl+x  递减
    <C-r> → redo
    % : 匹配括号移动，包括 (, {, [
    * 和 #:  匹配光标当前所在的单词，移动光标到下一个（或上一个）匹配单词（*是下一个，#是上一个）


命令模式下

    m,nd - 快速删除第m到第n行 (delete)
    m,ny - 复制第m到第n行 (yank)
    m,nmt - 第m行到第n行剪切到第t行(move)
    m,ncot -第m行到第n行复制到第t行(copy to)
    << 左缩进 >>右缩进
    ● :bn 和 :bp → 你可以同时打开很多文件，使用这两个命令来切换下一个或上一个文件。（陈皓注：我喜欢使用:n到下一个文件）
    
插入模式下

    Ctrl-t增加缩进
    Ctrl-d减小缩进。

##扩展快捷键

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

    ,tn  new tab
    ,tc  tab close
    ,to  tab only
    ,tm  tab move
    ,te  new tab edit
    ctrl+n  相对行号绝对行号变换，默认用相对行号 http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
    5j/5k  在相对行号模式下，往上移动5行 往下移动5行，不喜欢注解line 142附近relativenumber配置

    ,y 展示历史剪贴板
    ,yc 清空
    yy/dd -> p -> ctrl+p可以替换非最近一次剪贴内容

    ,p 开启文件搜索 ctrlp

##插件相关快捷键
###easymotion

    ,,w 快速单词跳转
    ,,fx 快速查找字符x

###thenerdtree

    ,n 打开树形目录结构
    p 到上层目录
    K 到同目录第一个节点
    J 到同目录最后一个节点

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

###mru
https://github.com/vim-scripts/mru.vim

    ,f  show recently opened files




##待考察插件

    -neocomplcache
    -Syntastic
    py.test
    bufkill
    vim-unimpaired
    Bundle 'FencView.vim' #自动识别文件编码；
    MiniBuferExplorer/Buferexplorer
    TagHighlight
    -Conque
    vim-javascript  for js
    sparkup
    -PeepOpen




