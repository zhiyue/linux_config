vim快捷键说明:
依赖的插件在vimrc中, 
1.先到vim/bundle下,查看readme,执行第一次clone命令
2.然后,打开vim,执行
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
16. ,+cc ,+c 对选中多行进行注释,解开注释
17.  ctrl+wf  第一个窗口
     ctrl+wb 最后一个窗口
     ctrl+wt  同时打开文件浏览器+taglist
18. pyflakes 自动检查代码,要手动执行   :cc


1.snipmate,need to extends
2.
tagbar, need to add     
3. commend-t   not use now
4. rope need to learn how to use
5.  vim-surroun , the cmd is hard to remember
6. minibuf  need to config
7. [DONE搞定了]autocmd FileType python set omnifunc=pythoncomplete#Complete  
  python 自动补全 目前未生效,pydiction也不行,原因未知,貌似有冲突
8. nerdcomment,注释功能,还不是很明白
9. xmledit,对xml的编辑,目前没用到,未尝试
10. taglist 使用方法
11. minibuffer的快捷用法
12. grep.vim 目前装ack,还不会用 [目前只简单用法]
13. nerdtree

