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

19. , + t commandT，查找文件 暂时不能用

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


#----some configs

基于代码理解的跳转
该功能依赖于ctags工具。[9]安装好ctags后，在存放代码的文件夹运行

ctags -R .
即可生成一个描述代码结构的tags文件。

提示： 
ctags的功能很强大，更详细的配置请参考其文档。
建议在~/.vimrc中添加如下配置以使Vim在父目录中寻找tags文件[10]：

set tags=tags;/

设置好后，可在Vim中使用如下功能：Ctrl-]转至最佳匹配的相应Tag，Ctrl-T返回上一个匹配。如果有多个匹配，g Ctrl-]可显示所有备选的tags。如有需要，可互换Ctrl-]和g Ctrl-] [11]：

"在普通和可视模式中，将<c-]>与g<c-]>互换
nnoremap <c-]> g<c-]>
vnoremap <c-]> g<c-]>
 
 nnoremap g<c-]> <c-]>
 vnoremap g<c-]> <c-]>"


 K 键可用于查看当前函数的文档


打开Vim，输入:NERDTree，即可呼出执行Vim命令的当前目录的文件目录。为了方便使用，我在.vimrc中定义了快捷键，可以用Ctrl+t打开NERDTree，你可以定义自己习惯的快捷键。
NERDTree提供了丰富的键盘操作方式来浏览和打开文件，我简单介绍一些常用的快捷键：
和编辑文件一样，通过h j k l移动光标定位
o 打开关闭文件或者目录，如果是文件的话，光标出现在打开的文件中
go 效果同上，不过光标保持在文件目录里，类似预览文件内容的功能
i和s可以水平分割或纵向分割窗口打开文件，前面加g类似go的功能
t 在标签页中打开
T 在后台标签页中打开
p 到上层目录
P 到根目录
K 到同目录第一个节点
J 到同目录最后一个节点
m 显示文件系统菜单（添加、删除、移动操作）
? 帮助
q 关闭



Command-T 需要安装
Command-T是一个基于Ruby和C扩展实现的快速文件浏览的插件，类似TextMate的Go to File（Command+T呼出）功能，或Eclipse的Open Resource（Command+Shift+r）功能，可以通过模糊匹配快速定位并打开文件。

3、安装
从下载地址下载最新版本的vba文件，目前最新版本是1.4，所以安装文件是command-t-1.4.vba
在~/.vim/bundle目录下创建文件夹command-t
用Vim打开command-t-1.4.vba
执行:UseVimball ~/.vim/bundle/command-t
进入ruby目录下编译C扩展
cd ~/.vim/bundle/command-t/ruby/command-t 
ruby extconf.rb 
make 
4、使用说明
输入:CommandT可进入文件快速定位功能，如图所示：
ctrl+j/k 上下选择文件，选中后回车打开文件
ctrl+t 以tab方式打开文件
ctrl+s/v 可以水平或垂直分割窗口打开文件
ctrl+c 退出该模式
该插件还有个常用命令，:CommandTBuffer，可以浏览缓冲区的文件，并重新打开。操作方式同上。
Vim版本需要支持ruby扩展。我们可以在Vim中输入:ruby 1检查，如果出现E319: Sorry, the command is not available in this version就表示不支持。

如果出现上述情况，我们就需要自己去编译能够支持ruby的Vim，嫌麻烦的话可以直接安装vim-nox，自带Ruby支持，在Ubuntu下安装命令如下：sudo apt-get install vim-nox。

执行ruby extconf.rb命令时如果出现找不到mkmf包的情况，说明你需要安装ruby-dev的包，在Ubuntu下安装命令如下：sudo apt-get install ruby1.8-dev。

对于数字
ctrl+a  递增增加
ctrl+x  递减
编程时很好用的做法

--------
1.Conque shell研究下
2.snipmate.vim 收集需要用的
3.syntax 加入一些常用的
4.xmledit.vim
5.syntaxstic
6.project.vim
