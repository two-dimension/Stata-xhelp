{smcl}
{* *! version 1.2.13  01apr2019}{...}
{vieweralsosee "[R] net" "mansection R net"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] checksum" "help checksum_zh"}{...}
{vieweralsosee "[D] copy" "help copy_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{vieweralsosee "[P] smcl" "help smcl_zh"}{...}
{vieweralsosee "[R] ssc" "help ssc_zh"}{...}
{vieweralsosee "stb" "help stb_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}{...}
{viewerjumpto "创建您自己的站点" "usersite_zh##own_site"}{...}
{viewerjumpto "备注" "usersite_zh##remarks"}
{help usersite:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] net} {hline 2}}安装和管理来自网络的社区贡献扩展{p_end}
{p2col:}({mansection R net:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker own_site}{...}
{title:创建您自己的站点}

{pstd}
下面提供了创建您自己的站点以便分发 do 文件、ado 文件、帮助文件、数据集等的说明，其他用户可以使用 {help net_zh} 命令获取这些文件。另请参见 {manlink R net} 以获取示例。


{marker remarks}{...}
{title:备注}

{pstd}
备注将根据以下标题呈现：

	{hi:{help usersite##intro:介绍}}
	{hi:{help usersite##remarks1:1. 将文件放在您的主页上}}
	{hi:{help usersite##remarks2:2. 创建一个站点}}
	{hi:{help usersite##remarks3:3. 创建一个包}}
	{hi:{help usersite##remarks4:4. 改进您的站点}}
	{hi:{help usersite##remarks5:您可以交付的文件类型}}
	{hi:{help usersite##remarks6:包文件的完整细节}}
	{hi:{help usersite##remarks7:内容文件的完整细节}}
	{hi:{help usersite##remarks8:内容文件和包描述文件中的 SMCL}}
	{hi:{help usersite##remarks9:无错误的文件交付}


{marker intro}{...}
{title:介绍}

{pstd}
如果您尚未尝试过 {cmd:net}，请先这样做。在命令行中输入

	{cmd:. net}

{pstd}
或下拉 {hi:帮助} 并选择 {hi:SJ 和社区贡献命令}。

{pstd}
Stata 的扩展程序可从 Stata 和其他用户处获取。本帮助文件提供了构建站点以提供 Stata 扩展所需的信息。

{pstd}
为此，您必须能够访问万维网的主页。假设您的主页是 {hi:http://www.zzz.edu/users/~me}，您希望提供以下文件：

	myprog.ado
	myprog.sthlp
	mydata.dta

{pstd}
基本上，您可以将这些文件放在包含您主页的目录中，Stata 可以访问它们。通过添加几个额外的文件，您可以使访问这些文件更容易。这些文件不会干扰 HTML 页面正常运行。


{marker remarks1}{...}
{title:1. 将文件放在您的主页上}

{pstd}
将文件复制到包含您主页的目录中。之后，世界各地的用户可以通过在 Stata 中简单地输入来访问它们：

	{cmd:. copy  http://www.zzz.edu/users/~me/myprog.ado  myprog.ado}
	{cmd:. copy  http://www.zzz.edu/users/~me/myprog.sthlp  myprog.sthlp}
	{cmd:. copy  http://www.zzz.edu/users/~me/mydata.dta  mydata.dta}

{pstd}
用户仍然需要“安装”（复制） {cmd:myprog.ado} 和 {cmd:myprog.sthlp} 到适当的位置。

{pstd}
数据集当然是可以直接使用的。实际上，用户甚至不需要复制这个数据集；他们可以通过输入以下命令直接使用它：

	{cmd:. use http://www.zzz.edu/users/~me/mydata.dta, clear}


{marker remarks2}{...}
{title:2. 创建一个站点}

{pstd}
Stata 的 {cmd:net} 命令及其对应的下拉菜单是用户获取您材料的方式。但现在，这无法与您的站点配合使用：

	{cmd:. net from http://www.zzz.edu/users/~me}
	{err}文件 http://www.zzz.edu/users/~me 未找到
	http://www.zzz.edu/users/~me/ 也没有
	  1)  不是有效的 URL，或
	  2)  无法联系，或
	  3)  不是 Stata 下载站点（没有 stata.toc 文件）。{txt}
	{search r(601):r(601);}

{pstd}
要创建下载站点，请在您的主页上创建另一个新文件 {cmd:stata.toc}。

{pstd}
如果您将 {cmd:stata.toc} 留空，当有人链接到您的站点时，将发生以下情况：

	{cmd:. net from http://www.zzz.edu/users/~me}

	{hline 60}
	http://www.zzz.edu/users/~me
	{hi:(无标题)}
	{hline 60}
{p 8 8 12}此站点提供 Stata 使用的附加资料和其他材料，但未提供目录。无疑，您已收到某人告知您可以 {hi:net install} 和 {hi:net get} 的备忘录。
	{p_end}
	{hline 60}

{pstd}
正是这个文件的存在告诉 Stata 您的 URL 提供 Stata 材料以及 HTML 页面。

{pstd}
我们将在稍后讨论如何制作一个漂亮的站点。


{marker remarks3}{...}
{title:3. 创建一个包}

{pstd}
包是文件的集合；这些文件

	myprog.ado
	myprog.sthlp
	mydata.dta

{pstd}
组成一个包。包文件列出了包中的文件。包文件以后缀 {cmd:.pkg} 结尾。如果您创建了 {cmd:myprog.pkg} 来描述上述三个文件，用户可以输入以下命令：

	{cmd:. net from http://www.zzz.edu/users/~me/}
	<省略的输出>

	{cmd:. net describe myprog}
	{hline 60}
	包 {hi:myprog} 来自 http://www.zzz.edu/users/~me
	{hline 60}

	{hi:标题}
	    myprog。用于分析数据的包。

	{hi:描述/作者}
	    由我编写的程序。
	    其他行可以在这里描述包。

	{hi:安装文件}                 （输入 {hi:net install myprog}）
	    myprog.ado
	    myprog.sthlp

	{hi:辅助文件}                    （输入 {hi:net get myprog}）
	    mydata.dta
	{hline 60}

{pstd}
如果他们想安装您的包，可以输入：

	{cmd:. net install myprog}

{pstd}
导致所有这些事情发生的包文件是：

	{hline 3} BEGIN {hline 3} myprog.pkg {hline 35}
	{cmd:v 3}
	{cmd:d myprog。用于分析数据的包。}
	{cmd:d 由我编写的程序。}
	{cmd:d 其他行可以在这里描述包。}

	{cmd:* 我也可以插入注释；这些不会显示。}
	{cmd:* f 行命名构成包的文件：}

	{cmd:f myprog.ado}
	{cmd:f myprog.sthlp}
	{cmd:f mydata.dta}
	{hline 3} END {hline 5} myprog.pkg {hline 35}

{pstd}
这个文件看起来可能不怎么样，但当用户询问 Stata 时却看起来很不错。


{marker remarks4}{...}
{title:4. 改进您的站点}

{pstd}
现在的问题是，除非您告诉他们，否则没有人知道输入 "{cmd:net install myprog}"。请返回并更改您的 {cmd:stata.toc} 文件：

	{hline 3} BEGIN {hline 3} stata.toc {hline 36}
	{cmd:v 3}
	{cmd:d 由我编写的材料}

	{cmd:d 我编写的一些有用的东西}

	{cmd:p myprog 一个用于分析数据的程序}
	{hline 3} END {hline 5} stata.toc {hline 36}

{pstd}
现在，当用户输入：

	{cmd:. net from http://www.zzz.edu/users/~me/}

	{hline 60}
	http://www.zzz.edu/users/~me/
	{hi:由我编写的材料}
	{hline 60}

	我编写的一些有用的东西

	可用包 - {hi:net describe} -
	    {hi:myprog}          一个用于分析数据的程序
	{hline 60}

{pstd}
他们将看到您提供的内容。


{marker remarks5}{...}
{title:您可以交付的文件类型}

{pstd}
大多数包包含 ado 文件和帮助文件，有时还包含用于演示目的的数据集。默认情况下，ado 文件和帮助文件将被安装，数据文件将提供给用户以便他或她希望加载它。

{pstd}
Stata 根据文件的后缀确定文件是否可以安装，或者仅仅是辅助文件。以下文件类型会自动安装：

	文件后缀{col 30}描述
	{hline 62}
	{cmd:.ado}{...}
{col 30}可执行代码
	{cmd:.class}{...}
{col 30}可执行代码
	{cmd:.sthlp}{...}
{col 30}将由 {cmd:help} 显示的说明
	{cmd:.key}{...}
{col 30}将由 {cmd:search} 使用的关键字信息
	{cmd:.mnu}{...}
{col 30}菜单内容
	{cmd:.dlg}{...}
{col 30}描述对话框的代码
	{cmd:.idlg}{...}
{col 30}有时由 {cmd:.dlg} 文件使用的包含文件
	{cmd:.jar}{...}
{col 30}Java 压缩包文件
	{cmd:.mata}{...}
{col 30}Mata 源代码
	{cmd:.mlib}{...}
{col 30}Mata 函数库
	{cmd:.mo}{...}
{col 30}Mata 对象文件（一个函数的编译代码）
	{cmd:.plugin}{...}
{col 30}有时由 {cmd:.ado} 文件调用的可执行插件
	{cmd:.py}{...}
{col 30}Python 代码
	{cmd:.scheme}{...}
{col 30}由 {cmd:graph} 使用的图形方案
	{cmd:.stbcal}{...}
{col 30}商业日历
	{cmd:.style}{...}
{col 30}由 {cmd:graph} 使用的图形样式
	{hline 62}

{pstd}
此外，您可以通过在包文件中编码 {cmd:F} 而不是 {cmd:f}，强制其他文件类型被安装，而不是被分类为辅助文件。这通常适用于由 ado 文件使用的 {cmd:.dta} 数据集。


{marker remarks6}{...}
{title:包文件的完整细节}

    {cmd:v 3} 行:
{p 8 8 2}{cmd:v} 表示版本 - 指定 {cmd:v 3}；旧式 pkg 文件没有这个。

    空白行:
{p 8 8 2}您可以输入任意数量的空白行；它们将被忽略。

    {cmd:*} 行:
{p 8 12 2}以 {cmd:*} 开头的行是注释行。{p_end}
{p 8 12 2}它们也会被忽略。

    {cmd:d} 行:
{p 8 12 2}以 {cmd:d} 开头的行是描述行。{p_end}
{p 8 12 2}首个 {cmd:d} 行被视为标题。{p_end}
{p 8 12 2}后续的 {cmd:d} 行被视为描述文本。{p_end}
{p 8 12 2}您可以编码 {cmd:d} 后不加任何内容来显示空白行。

    {cmd:f} 行:
{p 8 8 2}以 {cmd:f} 开头的行命名包要提供的文件。语法为

{p 16 35 2}首先输入 {space 7} {cmd:f}{p_end}
{p 16 35 2}接着输入 {space 8} 一个或多个空格{p_end}
{p 16 35 2}最后输入 {space 5} 文件名

{pmore}例如，您可以编码：

		{cmd:f myprog.ado}
		{cmd:f myprog.sthlp}
		{cmd:f myprog.dta}

{pmore}或者您可以将文件组织到子目录中：

		{cmd:f myprog/myprog.ado}
		{cmd:f myprog/myprog.sthlp}
		{cmd:f myprog/myprog.dta}

    {cmd:F} 行:
{p 8 8 2}以 {cmd:F} 开头的行是 {cmd:f} 行的变体。其区别在于，当文件被安装时，它将始终被复制到系统目录（而不是当前目录）。

{pmore}对于 {cmd:f} 行，文件安装位置的确定是基于文件的后缀。例如，xyz.ado 将被安装到系统目录，而 xyz.dta 将被安装到当前目录。

{pmore}编码 "{cmd:F xyz.ado}" 的结果与 "{cmd:f xyz.ado}" 相同。然而，编码 "{cmd:F xyz.dta}" 将表明 xyz.dta 应安装在系统目录。

    {cmd:g} 行:
{pmore}以 {cmd:g} 开头的行也是 {cmd:f} 行的变体。语法为

{p 16 35 2}首先输入 {space 7} {cmd:g}{p_end}
{p 16 35 2}接着输入 {space 8} 一个或多个空格{p_end}
{p 16 35 2}然后输入 {space 8} 一个 {it:platformname}{p_end}
{p 16 35 2}接着输入 {space 8} 一个或多个空格{p_end}
{p 16 35 2}最后输入 {space 5} 文件名

{pmore}{cmd:g} 指定该文件仅在用户的计算机类型为 {it:platformname} 时安装；否则，该文件被忽略。  
平台名称为 
{cmd:WIN64} (64 位 x86-64)
适用于 Windows；
{cmd:MACINTEL64} (64 位 Intel, GUI) 和
{cmd:OSX.X8664} (64 位 Intel, console)
适用于 Mac；以及
{cmd:LINUX64} (64 位 x86-64)
适用于 Unix。

{pmore}此外，可以指定第二个文件名。在这种情况下，第一个文件名是服务器上的文件名（要复制的文件），第二个文件名是用户系统上的文件名。例如，您可以编码：

		{cmd:g WIN64 mydll.forwin mydll.plugin}
		{cmd:g LINUX64 mydll.forlinux mydll.plugin}

{pmore}当您指定一个文件名时，结果与指定两个相同的文件名相同。

    {cmd:G} 行:
{pmore}{cmd:G} 是 {cmd:g} 行的变体，{cmd:F} 是 {cmd:f} 的变体。如果未被忽略，该文件应在系统目录中安装。

    {cmd:h} 行:
{pmore}以 {cmd:h} 开头的行用于指示必须加载一个文件，否则整个包不应安装。语法为

{p 16 35 2}首先输入 {space 7} {cmd:h}{p_end}
{p 16 35 2}接着输入 {space 8} 一个或多个空格{p_end}
{p 16 35 2}最后输入 {space 5} 文件名

{pmore}例如，您可以编码：

		{cmd:G WIN64 mydll.forwin mydll.plugin}
		{cmd:G LINUX64 mydll.forlinux mydll.plugin}
		{cmd:h mydll.plugin}

{pmore}如果您仅为 Windows 和 Linux 提供插件 mydll.plugin。

    {cmd:e} 行:
{p 8 12 2}以 {cmd:e} 开头的行表示停止读取文件中的输入。{p_end}
{p 8 12 2} {cmd:e} 行是可选的。


{marker remarks7}{...}
{title:内容文件的完整细节}

    {cmd:v 3} 行:
{pmore}{cmd:v} 表示版本 - 指定 {cmd:v 3}；旧式 pkg 文件没有这个。

    空白行:
{pmore}您可以输入任意数量的空白行；它们将被忽略。

    {cmd:*} 行:
{phang2}以 {cmd:*} 开头的行是注释行。{p_end}
{phang2}它们也会被忽略。

    {cmd:d} 行:
{phang2}以 {cmd:d} 开头的行是描述行。{p_end}
{phang2}首个 {cmd:d} 行被视为标题。{p_end}
{phang2}后续的 {cmd:d} 行被视为描述文本。{p_end}
{phang2}您可以编码 {cmd:d} 后不加任何内容来显示空白行。

    {cmd:t} 行:
{pmore}以 {cmd:t} 开头的行是指向其他子目录的链接，其中包含其他 stata.toc 行。语法为

{p 16 35 2}首先输入 {space 7} {cmd:t}{p_end}
{p 16 35 2}接着输入 {space 8} 一个或多个空格{p_end}
{p 16 35 2}然后输入 {space 8} 子目录名称{p_end}
{p 16 35 2}接着输入 {space 8} 一个或多个空格{p_end}
{p 16 35 2}最后输入 {space 5} 您希望的任何描述

{pmore}例如，您可以编码：

		{cmd:t stats 统计程序}
		{cmd:t dm    数据管理程序}

{pmore}理解此内容的方式是，假设 X 是包含您主页的目录。则目录 X/stats 包含另一个 stata.toc 文件，并且可能还有其他内容，目录 X/dm 包含一个 stata.toc 文件及其相关内容。

{pmore}这里的思路是，如果您有一个大站点，则将部分嵌套到类别中。

    {cmd:l} 行
{pmore}以 {cmd:l} 开头的行是指向其他站点的链接或指向您站点中不只是子目录的其他位置的链接。语法为

{p 16 35 2}首先输入 {space 7} {cmd:l}  （小写字母 l）{p_end}
{p 16 35 2}接着输入 {space 8} 一或多个空格{p_end}
{p 16 35 2}然后输入 {space 8} 自选的短名称{p_end}
{p 16 35 2}接着输入 {space 8} 一或多个空格{p_end}
{p 16 35 2}然后输入 {space 8} 链接的完整 URL{p_end}
{p 16 35 2}接着输入 {space 8} 一或多个空格{p_end}
{p 16 35 2}最后输入 {space 5} 您希望的任何描述

{pmore}例如，您可以通过编码将链接包含到 StataCorp：

		{cmd:l stata http://www.stata.com StataCorp}

    {cmd:p} 行
{pmore}以 {cmd:p} 开头的行描述一个包，或更准确地说，植入一个包文件的链接。语法为

{p 16 35 2}首先输入 {space 7} {cmd:p}{p_end}
{p 16 35 2}接着输入 {space 8} 一个或多个空格{p_end}
{p 16 35 2}接着输入 {space 8} .pkg 文件名{p_end}
{p 16 35 2}接着输入 {space 8} 一个或多个空格{p_end}
{p 16 35 2}最后输入 {space 5} 您希望的任何描述

	例如，

		{cmd:p xyregression xyreg.pkg XY 风格回归}
	或
		{cmd:p xyregression xyreg XY 风格回归}

{phang2}Stata 将理解 xyreg 代表 xyreg.pkg。{p_end}
{phang2}包文件必须与内容文件位于同一目录中。{p_end}
{phang2}请勿编码 "f xyregression xyreg/xyreg.pkg XY 风格回归"


{marker remarks8}{...}
{title:内容文件和包描述文件中的 SMCL}

{pstd}
在 stata.toc 和 {it:pkgname}.pkg 中的第二和后续 {cmd:d} 行上列出的文本可以包含 SMCL，只要您包含 {cmd:v 3}（或 {cmd:v 2}）；请参见 {manhelp smcl P}。


{marker remarks9}{...}
{title:无错误的文件交付}

{pstd}
大多数人通过互联网传输文件，从不担心文件在过程中被损坏。他们这样做是因为损坏很少发生。然而，如果您非常重视文件的完美交付或不交付，您可以在目录中包含校验和文件。

{pstd}
例如，假设您打算在包中包含 {hi:big.dta}，并且确保它完美传送是非常重要的。首先使用 Stata 为 {hi:big.dta} 创建校验和文件：

	{cmd:. checksum big.dta, save}

{pstd}
这将创建一个名为 {hi:big.sum} 的小文件；请参见 {manhelp checksum D}。然后将 {hi:big.dta} 和 {hi:big.sum} 复制到您的主页。这就是您需要做的。Stata 现在会自动验证 {hi:big.dta} 在复制时是否无误。

{pstd}
每当您更改 {hi:big.dta} 时，请记得也创建一个新的 {hi:big.sum}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <usersite.sthlp>}