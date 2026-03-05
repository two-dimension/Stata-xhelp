{smcl}
{* *! version 1.0.3  06may2019}{...}
{vieweralsosee "[P] python" "mansection P python"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "Stata-Python API 规范" "browse https://www.stata.com/python/"}{...}
{vieweralsosee "[P] Java 简介" "help java intro"}{...}
{vieweralsosee "[P] javacall" "help javacall_zh"}{...}
{viewerjumpto "语法" "python_zh##syntax"}{...}
{viewerjumpto "描述" "python_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "python_zh##linkspdf"}{...}
{viewerjumpto "选项" "python_zh##options"}{...}
{viewerjumpto "示例" "python_zh##examples"}{...}
{viewerjumpto "存储结果" "python_zh##results"}
{help python:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[P] python} {hline 2}}从 Stata 调用 Python{p_end}
{p2col:}({mansection P python:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{marker pyint12}{...}
{phang}
进入 Python 交互环境

{p 8 22 2}
{cmd:python}[{cmd::}]


{marker pyint3}{...}
{phang}
执行 Python 简单语句

{p 8 22 2}
{cmd:python}{cmd::} {it:{help python##pyistmt:istmt}}


{marker pyscript}{...}
{phang}
执行 Python 脚本文件

{p 8 22 2}
{cmd:python} {cmd:script} {it:{help python##pyfilename:pyfilename}}
[{cmd:,} 
{opt args(args_list)}
{opt global}
{opt userpaths}{cmd:(}{it:user_paths}[{cmd:,} {cmdab:pre:pend}]{cmd:)}]


{marker pysetexec}{...}
{phang}
设置要使用的 Python 版本

{p 8 22 2}
{cmd:python} {cmd:set} {cmd:exec} 
{it:{help python##pyexecutable:pyexecutable}}
[{cmd:,} {cmdab:perm:anently}]

{phang}
{cmd:set python_exec} 是 {cmd:python set exec} 的同义词。{p_end}


{marker pysetupath}{...}
{phang}
设置用户的附加模块搜索路径

{p 8 22 2}
{cmd:python} {cmd:set} {cmd:userpath} 
{it:path} [{it:path} ...] [{cmd:,} {cmdab:perm:anently} {cmdab:pre:pend}]

{phang}
{cmd:set python_userpath} 是 {cmd:python set userpath} 的同义词。{p_end}


{marker pydesc}{...}
{phang}
列出 {cmd:__main__} 模块中命名空间的对象

{p 8 22 2}
{cmd:python} {cmdab:des:cribe} [{it:{help python##pynamelist:namelist}}]
[{cmd:,} {opt all}]


{marker pydrop}{...}
{phang}
从 {cmd:__main__} 模块中命名空间删除对象

{p 8 22 2}
{cmd:python} {cmd:drop} {it:{help python##pynamelist:namelist}}


{marker pyclear}{...}
{phang}
清除 {cmd:__main__} 模块中命名空间的对象

{p 8 22 2}
{cmd:python} {cmd:clear}


{marker pyquery}{...}
{phang}
查询当前 Python 设置和系统信息

{p 8 22 2}
{cmd:python} {cmdab:q:uery}


{marker pysearch}{...}
{phang}
搜索当前系统上的 Python 安装

{p 8 22 2}
{cmd:python} {cmdab:sea:rch}


{marker pywhich}{...}
{phang}
检查 Python 模块的可用性

{p 8 22 2}
{cmd:python} {cmd:which} {it:{help python##pymodulename:modulename}}


{marker pyistmt}{...}
{it:istmt} 是一个 Python 简单语句或多个用分号分隔的简单语句。

{marker pyfilename}{...}
{phang}
{it:pyfilename} 指定带扩展名 {cmd:.py} 的 Python 脚本文件的名称。

{marker pyexecutable}{...}
{phang}
{it:pyexecutable} 指定 Python 安装的可执行文件，例如 {cmd:"C:\Program Files\Python36\python.exe"}, {cmd:"/usr/bin/python"}, {cmd:"/usr/local/bin/python"}, {cmd:"~/anaconda3/bin/python"}，或 {cmd:"~/anaconda/bin/python"}。

{marker pynamelist}{...}
{phang}
{it:namelist} 指定对象名称的列表，例如 {cmd:sys}, {cmd:spam}，或 {cmd:foo}。名称还可以使用 {cmd:*} 和 {cmd:?} 通配符字符指定：

{phang2}
{cmd:*} 表示零个或多个字符。

{phang2}
{cmd:?} 表示一个字符。

{marker pymodulename}{...}
{phang}
{it:modulename} 指定一个 Python 模块的名称。该模块可以是系统模块或用户编写的模块。名称可以是常规的单个模块名称或点分模块名称，例如 {cmd:sys}, {cmd:numpy}，或 {cmd:numpy.random}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:python} 提供在 Stata 中嵌入 Python 代码的实用程序。使用这些实用程序，用户可以在 do-files 和 ado-files 中以交互方式调用 Python。

{phang2}
{cmd:python}[{cmd::}] 创建一个 Python 环境，其中可以像在 Python 解释器中一样交互执行 Python 代码。在此环境中，经典的 "{cmd:>>>}" 和 "{cmd:...}" 提示用于指示用户输入。此环境中的所有对象都在 {cmd:__main__} 模块的命名空间中创建。

{phang2}
{cmd:python}{cmd::} {it:istmt} 执行一个 Python 简单语句或多个用分号分隔的简单语句。

{phang2}
{cmd:python} {cmd:script} 执行一个 Python 脚本 {cmd:.py} 文件。可以通过选项 {cmd:args()} 向文件传递参数列表。

{phang2}
{cmd:python} {cmd:set} {cmd:exec} {it:pyexecutable} 设置要使用的 Python 版本。{it:pyexecutable} 指定 Python 可执行文件的完整路径。如果可执行文件不存在或不符合最低版本要求，将显示错误消息。

{phang2}
{cmd:python} {cmd:set} {cmd:userpath} {it:path} [{it:path} ...] 设置用户自己的模块搜索路径，除了系统搜索路径外。可以指定多个路径。当指定时，这些路径将在初始化 Python 环境时自动加载。

{phang2}
{cmd:python} {cmd:describe} 列出 {cmd:__main__} 模块中命名空间的对象。

{phang2}
{cmd:python} {cmd:drop} 从 {cmd:__main__} 模块中命名空间删除指定的对象。

{phang2}
{cmd:python} {cmd:clear} 清除 {cmd:__main__} 模块中所有不以 {cmd:_} 为前缀的对象。

{phang2}
{cmd:python} {cmd:query} 列出当前的 Python 设置和系统信息。

{phang2}
{cmd:python} {cmd:search} 查找当前操作系统上安装的 Python 版本。仅列出 Python 2.7 及更高版本。在 Windows 上，将搜索注册表中的官方 Python 安装和通过 {cmd:Anaconda} 安装的版本。在 Unix 或 Mac 上，将搜索 {cmd:/usr/bin/}、{cmd:/usr/local/bin/}、{cmd:/opt/local/python/bin/}、{cmd: ~/anaconda/bin} 或 {cmd:~/anaconda3/bin} 目录中的 Python 安装。

{phang2}
{cmd:python} {cmd:which} 检查 Python 模块的可用性。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P pythonRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt args(args_list)} 指定将传递给 Python 脚本文件的参数列表 {it:args_list}，可以通过 Python 的 {cmd:sys} 模块中的 {cmd:argv} 访问。{it:args_list} 可以包含一个参数或用空格分隔的参数列表。

{phang}
{opt global} 指定在 Python 脚本文件中创建的对象被附加到 {cmd:__main__} 模块的命名空间中，以便可以全局访问。默认情况下，脚本文件中创建的对象在执行后会被丢弃。

{phang}
{opt userpaths}{cmd:(}{it:user_paths}[{cmd:,} {cmd:prepend}]{cmd:)} 指定将添加到存储在 {cmd:sys.path} 中的系统路径的附加模块搜索路径。{it:user_paths} 可以是一个或用空格或分号分隔的路径列表。默认情况下，这些路径将被添加到系统路径的末尾。如果指定了 {cmd:prepend}，则将其添加到系统路径前面。

{phang}
{cmd:permanently} 指定除了立即生效外，还要记住该设置，并在调用 Python 时使其成为默认设置。

{phang}
{cmd:prepend} 指定将用户的附加模块搜索路径添加到系统路径之前，而不是添加到系统路径的末尾。

{phang}
{opt all} 指定列出 {cmd:__main__} 模块中命名空间的所有对象。默认情况下，仅列出不以下划线开头的对象。


{marker examples}{...}
{title:示例}

{pstd}进入 Python 交互环境并执行 Python 代码{p_end}
	{cmd:. python}
	{cmd:a1 = 1}
	{cmd:a2 = 2**3}
	{cmd:s1 = 'spam egg'}
	{cmd:s2 = 3*'spam' + "egg"}
	{cmd:l1 = [1,4,9,16,25]}
	{cmd:l2 = ['a','b','c']}
	{cmd:l3 = [l1,l2]}
	{cmd:d = {'a':1, 'b':2, 'c':3}}
	{cmd:end}

{pstd}列出 {cmd:__main__} 模块中命名空间的对象{p_end}
{phang2}{cmd:. python describe}

{pstd}列出 {cmd:__main__} 模块中命名空间中以 {cmd:s} 开头的对象{p_end}
{phang2}{cmd:. python describe s*}

{pstd}从 {cmd:__main__} 模块中命名空间删除 {cmd:l1}, {cmd:l2} 和 {cmd:l3}{p_end}
{phang2}{cmd:. python drop l1 l2 l3}

{pstd}清除 {cmd:__main__} 模块中命名空间的所有对象{p_end}
{phang2}{cmd:. python clear}

{pstd}列出所有可用的 Python 安装{p_end}
{phang2}{cmd:. python search}

{pstd}查询当前 Python 设置和系统信息{p_end}
{phang2}{cmd:. python query}

{pstd}检查当前使用的 Python 版本中是否安装了 {cmd:numpy}{p_end}
{phang2}{cmd:. python which numpy}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:python query} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(initialized)}}是否初始化 Python 环境 ({cmd:0} 或 {cmd:1}){p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(execpath)}}Python 可执行路径{p_end}
{synopt:{cmd:r(userpath)}}Python 用户路径{p_end}
{synopt:{cmd:r(version)}}Python 版本{p_end}
{synopt:{cmd:r(arch)}}Python 架构 ({cmd:64-bit} 或 {cmd:32-bit}){p_end}
{synopt:{cmd:r(libpath)}}Python 共享库{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <python.sthlp>}