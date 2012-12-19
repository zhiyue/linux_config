vim快捷键说明:
依赖的插件在vimrc中, 
1.先到vim/bundle下,查看readme,
  执行第一次clone命令
  git clone https://github.com/gmarik/vundle.git
2.然后,vim 打开随便一个文件,执行
  :BundleInstall  进行更新安装
3.需手动安装包: ctags,pep8,ack
(基于当前配置)

1.强迫用hjkl进行上下左右   line224附近,可注解掉
2.ctrl + jkhl 进行上下左右窗口跳转,不需要ctrl+w+jkhl
3. F2   :se nu
   F3   :se list
   F4   :se wrap
   F5   :se paste
   F6   :syn on/off
   F7    Grep,文件搜索命令,搜索当前单词,可写正则
   以上皆可逆
4. F8  打开taglist插件   function -> func_name list   var -> var_name list
5. , + td    查看本文件中标注TODO列表
6. , + 8     python pep8风格检查
7. , + h     当前编辑文件的历史版本,未保存退出前的,每隔一段时间会有保存,可回复历史
8. , + n     打开文件目录树
9. , + j     跳转到函数/变量定义处
10. , + r    函数/变量重命名
11.  K       查看python 函数及变量的doc
12. :b1 :b2  打开多个文件,存在minibuffer,在命令行执行,用于跳转
13. F9   打开tagbar插件,   func_name/var_name -> type:function/var
14. 对于python
    ctrl + p/ ctrl + n   [使用ominautocomplete]  
    或者  直接TAB,可以进行自动补全[使用pydiction]
    或者 ctrl+j  使用snipmate,自动补全片段,这样会快些
    TAB下移, Shift+TAB上移
15. 目前" ' ( [ {  自动补全后半部分
16. ,+cc ,+cu 对选中多行进行注释,解开注释 ,+cm添加块注释
17.  ctrl+wf  第一个窗口
     ctrl+wb 最后一个窗口
     ctrl+wt  同时打开文件浏览器+taglist
18. pyflakes 自动检查代码,要手动执行   :cc

vim自带缩进
插入模式
Ctrl-T增加缩进，Ctrl-D减小缩进。
命令模式
>> 右缩进， << 左缩进，注意n<< 或 n>>是缩进多行，如4>>
可视模式
< 、 > 用于左右缩进， n< 、 n> 可做多节缩进，如 2> 。

代码浏览跳转
跳转到定义
gd到局部变量的定义，gD到全局变量的定义
搜索
*, # 可对光标处的词向前/向后做全词搜索，g*, g# 做相对应的非全词匹配搜索
代码块首尾
[[, ]] 可跳到当前代码块起始或结束的大括号处。
括号首尾
% 可在配对的括号、块首尾之前跳转。
位置历史
Ctrl-O 在历史记录中后台，Ctrl-I 则为前进。

1.snipmate,need to extends
3. commend-t   not use now, del tmp
4. rope need to learn how to use
5. vim-surround, the cmd is hard to remember
6. minibuf  need to config
8. nerdcomment,注释功能,还不是很明白
9. xmledit,对xml的编辑,目前没用到,未尝试
10. taglist 使用方法
11. minibuffer的快捷用法
12. grep.vim 目前装ack,还不会用 [目前只简单用法]
13. nerdtree

