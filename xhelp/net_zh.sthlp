{smcl}
{* *! version 1.1.14  17may2019}{...}
{viewerdialog net "net from https://www.stata.com/"}{...}
{viewerdialog dir "ado dir"}{...}
{viewerdialog "ado find()" "ado_d"}{...}
{vieweralsosee "[R] net" "mansection R net"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ado update" "help ado update"}{...}
{vieweralsosee "[D] checksum" "help checksum_zh"}{...}
{vieweralsosee "[R] net search" "help net_search_zh"}{...}
{vieweralsosee "[R] netio" "help netio_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{vieweralsosee "[P] smcl" "help smcl_zh"}{...}
{vieweralsosee "[R] ssc" "help ssc_zh"}{...}
{vieweralsosee "stb" "help stb_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}{...}
{viewerjumpto "Syntax" "help net##syntax"}{...}
{viewerjumpto "Description" "help net##description"}{...}
{viewerjumpto "Links to PDF documentation" "help net##linkspdf"}{...}
{viewerjumpto "Options for net install and net get" "help net##options_net_install"}{...}
{viewerjumpto "Options for ado commands" "help net##options_ado"}{...}
{viewerjumpto "Examples" "help net##examples"}
{help net:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] net} {hline 2}}从网络安装和管理社区贡献的附加内容{p_end}
{p2col:}({mansection R net:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
设置当前网络位置

{p 8 19 2}{cmd:net} {cmd:from} {it:directory_or_url}{p_end}


{pstd}
切换到不同的网络目录

{p 8 19 2}{cmd:net} {cmd:cd} {it:path_or_url}{p_end}


{pstd}
切换到不同的网络站点

{p 8 19 2}{cmd:net} {cmd:link} {it:linkname}{p_end}


{pstd}
搜索已安装的包

        {cmd:net} {cmd:search}        (参见 {manhelp net_search R:net search})


{pstd}
报告当前网络位置

{p 8 21 2}{cmd:net} 


{pstd}
描述一个包

{p 8 21 2}{cmd:net} {opt d:escribe} {it:pkgname}
		[{cmd:,} {opt fr:om(directory_or_url)}]


{pstd}
设置将要安装包的位置

{p 8 16 2}{cmd:net} {cmd:set} {cmd:ado} {it:dirname}{p_end}


{pstd}
设置附属文件的安装位置

{p 8 16 2}{cmd:net} {cmd:set} {cmd:other} {it:dirname}{p_end}


{pstd}
报告网络的“from”，“ado”和“other”设置

{p 8 16 2}{cmd:net} {opt q:uery}


{pstd}
从一个包中安装 ado 文件和帮助文件

{p 8 20 2}{cmd:net} {opt ins:tall} {it:pkgname} [{cmd:, all replace force}
		{opt fr:om(directory_or_url)}]


{pstd}
从一个包中安装附属文件

{p 8 20 2}{cmd:net} {cmd:get} {it:pkgname} [{cmd:, all replace force}
		{opt fr:om(directory_or_url)}]


{pstd}
快捷访问 Stata Journal (SJ) 网络站点

{p 8 20 2}{cmd:net} {cmd:sj} {it:vol}{cmd:-}{it:issue} [{it:insert}]{p_end}


{pstd}
快捷访问 Stata Technical Bulletin (STB) 网络站点

{p 8 20 2}{cmd:net} {cmd:stb} {it:issue} [{it:insert}]


{pstd}
列出已安装的包

{p 8 20 2}{cmd:ado} [{cmd:,} {opth f:ind(strings:string)} {opt fr:om(dirname)}]

{p 8 16 2}{cmd:ado} {cmd:dir} [{it:pkgid}]
           [{cmd:,} {opth f:ind(strings:string)} {opt fr:om(dirname)}]{p_end}


{pstd}
描述已安装的包

{p 8 21 2}{cmd:ado} {opt d:escribe} [{it:pkgid}]
[{cmd:,} {opth f:ind(strings:string)} {opt fr:om(dirname)}]{p_end}


{pstd}
更新已安装的包

        {cmd:ado} {cmd:update}        (参见 {manhelp ado_update R:ado update})


{pstd}
卸载已安装的包

{p 8 22 2}{cmd:ado} {opt uninstall} {it:pkgid}
[{cmd:,} {opt fr:om(dirname)}]{p_end}


    其中
        {it:pkgname} 是   包的名称
{p 8 23}{it:pkgid} {space 1} 是 {space 1} 包的名称{p_end}
{p 16 23}或 {space 1} 方括号中的数字: {cmd:[}{it:#}{cmd:]}{p_end}
{p 8 23}{it:dirname} 是 {space 1} 目录名{p_end}
{p 16 23}或 {space 1} {cmd:PLUS} {space 4} (默认){p_end}
{p 16 23}或 {space 1} {cmd:PERSONAL}{p_end}
{p 16 23}或 {space 1} {cmd:SITE}


{marker description}{...}
{title:描述}

{pstd}
{cmd:net} 下载并安装对 Stata 的扩展。扩展可以通过互联网获取或通过物理介质获取。扩展可以是 ado 文件（新命令）、帮助文件，甚至是数据集。可以作为一组安装的文件集合被称为一个
{mansection R netRemarksandexamplesDefinitionofapackage:包}。

{pstd}
{cmd:net from}
将您移动到一个位置并显示内容页面。

{pstd}
{cmd:net cd} 和 {cmd:net link}
将您从当前位置切换到其他位置。
{cmd:net cd} 进入原始位置的子目录。 {cmd:net link} 根据内容页面上的代码跳转到一个位置。

{pstd}
{cmd:net describe}
列出一个包描述页面。包是有名称的，您可以输入
{cmd:net describe} {it:pkgname}。

{pstd}
{cmd:net set}
控制 {cmd:net} 安装文件的位置。默认情况下，{cmd:net}
安装在 {cmd:PLUS} 目录中（参见 {manhelp sysdir P}）。
{cmd:net set ado SITE} 会导致后续 {cmd:net} 命令在
{cmd:SITE} 目录中安装。{cmd:net set other} 设置附属文件，如 {cmd:.dta} 文件，安装的位置。默认是当前目录。

{pstd}
{cmd:net query}
显示当前的 {cmd:net from}，{cmd:net set ado} 和
{cmd:net set other} 设置。

{pstd}
{cmd:net install}
将包安装到您的 Stata 版本中。

{pstd}
{cmd:net get}
将任何附加文件（附属文件）复制到当前目录（或由 {cmd:net set other} 确定的位置）。

{pstd}
{cmd:net sj} 和 {cmd:net stb} 简化从
{it:{browse "https://www.stata-journal.com":Stata Journal}}
及其前身
{it:{browse "https://www.stata.com/products/stb/":Stata Technical Bulletin}} 加载文件。

{phang2}{cmd:net sj} {it:vol}{cmd:-}{it:issue}

{pstd}
是输入

{phang2}{cmd:net from https://www.stata-journal.com/software/sj}{it:vol}{cmd:-}{it:issue}

的同义词。

{pstd}
而

{phang2}{cmd:net sj} {it:vol}{cmd:-}{it:issue} {it:insert}

{pstd}
是输入

{phang2}{cmd:net from https://www.stata-journal.com/software/sj}{it:vol}{cmd:-}{it:issue}{p_end}
	{cmd:net describe} {it:insert}

{pstd}
{cmd:ado} 管理您通过 {cmd:net} 安装的包。
{cmd:ado} 命令允许您列出并卸载以前安装的包。

{pstd}
{cmd:ado dir} （与输入 {cmd:ado} 无参数相同）
列出您已安装的包的名称和标题。

{pstd}
{cmd:ado describe}
列出完整的包描述页面。

{pstd}
{cmd:ado uninstall}
从您的计算机中移除包。

{pstd}
用户还可以通过选择
{bf:Help > SJ 和社区贡献的命令} 访问 {cmd:net} 和 {cmd:ado} 功能。

{pstd}
有关希望制作自己的包文件和下载站点的用户的信息，请参见 {help usersite_zh}，更多示例请参见
{bind:{bf:[R] net}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R netRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_net_install}{...}
{title:net install 和 net get 的选项}

{phang}
{opt all} 与 {cmd:net install} 或 {cmd:net get} 一起输入等同于输入 {cmd:net install} 后接 {cmd:net get}。

{phang}
{opt replace} 指定如果任何文件已经存在，则下载的文件将替换现有文件。

{phang}
{opt force} 指定即使 Stata 认为所有文件相同，下载的文件也将替换现有文件。 {cmd:force} 意味着 {cmd:replace}。

{phang}
{opt from(directory_or_url)}，
与 {cmd:net} 一起使用时，指定可找到可安装包的目录或 URL。该目录或 URL 与将通过 {cmd:net from} 指定的相同。


{marker options_ado}{...}
{title:ado 命令的选项}

{phang}
{opth find:(strings:string)} 指定搜索您计算机上已安装包的描述，并列出包含 {it:string} 的包描述。

{phang}
{opt from(dirname)} 指定包的安装位置。默认值是 {cmd:from(PLUS)}。 {opt PLUS} 是一个 Stata 能理解的代码字，表示在安装时设置的特定目录。在 Windows 计算机上，{opt PLUS} 可能意味着目录 {cmd:c:\ado\plus}，但也可能表示其他内容。您可以通过输入 {help sysdir_zh} 找出它代表什么，但如果使用默认值，执行此操作无关紧要。


{marker examples}{...}
{title:示例}

{pstd}
要查看主要的 Stata 网络下载内容页面，请输入{p_end}

{phang2}{cmd:. net from https://www.stata.com}

{pstd}
输入{p_end}

{p2colset 9 35 37 2}{...}
{p2col :{cmd:. net link sj}}查看主要 SJ 页面{p_end}
{p2col :{cmd:. net cd software}}查看与 SJ 文章相关的软件主页面{p_end}
{p2col :{cmd:. net cd sj6-3}}然后查看 SJ 第 6 卷第 3 期内容页面{p_end}
{p2col :{cmd:. net describe st0109}}查看包 st0109 的描述{p_end}
{p2col :{cmd:. net install st0109}}安装包 st0109{p_end}
{p2col :{cmd:. net get st0109}}获取包 st0109 的附属文件{p_end}
{p2colreset}{...}

{pstd}
要查看您已安装的内容，输入{p_end}

{p2colset 9 35 37 2}{...}
{p2col :{cmd:. ado}}列出您已安装的包{p_end}
{p2col :{cmd:. ado describe st0109}}描述您已安装的包 st0109{p_end}
{p2col :{cmd:. ado, find("partial")}}使用关键字搜索查找包{p_end}
{p2col :{cmd:. ado uninstall st0109}}卸载包 st0109{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <net.sthlp>}