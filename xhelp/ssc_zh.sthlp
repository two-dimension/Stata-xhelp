{smcl}
{* *! version 1.2.13  12feb2019}{...}
{vieweralsosee "[R] ssc" "mansection R ssc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ado update" "help ado update"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{vieweralsosee "[P] sysdir" "help sysdir_zh"}{...}
{viewerjumpto "语法" "ssc_zh##syntax"}{...}
{viewerjumpto "描述" "ssc_zh##description"}{...}
{viewerjumpto "PDF文档链接" "ssc_zh##linkspdf"}{...}
{viewerjumpto "命令概述" "ssc_zh##overview"}{...}
{viewerjumpto "ssc new 的选项" "ssc_zh##options_ssc_new"}{...}
{viewerjumpto "ssc hot 的选项" "ssc_zh##options_ssc_hot"}{...}
{viewerjumpto "ssc describe 的选项" "ssc_zh##option_ssc_describe"}{...}
{viewerjumpto "ssc install 的选项" "ssc_zh##options_ssc_install"}{...}
{viewerjumpto "ssc type 的选项" "ssc_zh##option_ssc_type"}{...}
{viewerjumpto "ssc copy 的选项" "ssc_zh##options_ssc_copy"}{...}
{viewerjumpto "备注" "ssc_zh##remarks"}{...}
{viewerjumpto "示例" "ssc_zh##examples"}
{help ssc:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] ssc} {hline 2}}从SSC安装和卸载包{p_end}
{p2col:}({mansection R ssc:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
最近在SSC添加或更新的包的摘要

{p 8 12 2}
{cmd:ssc}
{cmd:new}
[{cmd:,}
{opt sav:ing}{cmd:(}{it:{help filename_zh}}[{cmd:,} {opt replace}]{cmd:)}
{opt type}]


{phang}
SSC上最受欢迎包的摘要

{p 8 12 2}
{cmd:ssc}
{cmd:hot}
[{cmd:,}
{cmd:n(}{it:#}{cmd:)}
{cmdab:auth:or}{cmd:(}{it:name}{cmd:)}]



{phang}
描述SSC上指定的包

{p 8 12 2}
{cmd:ssc}
{opt d:escribe}
{c -(} {it:pkgname} | {it:letter} {c )-}
[{cmd:,}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}]



{phang}
从SSC安装指定的包

{p 8 12 2}
{cmd:ssc}
{opt inst:all}
{it:pkgname}
[{cmd:,}
{opt all}
{opt replace}]


{phang}
从计算机卸载之前安装的SSC包

{p 8 12 2}
{cmd:ssc}
{opt uninstall}
{it:pkgname}


{phang}
输入存储在SSC上的特定文件

{p 8 12 2}
{cmd:ssc}
{opt type}
{it:{help filename_zh}}
[{cmd:, asis}]


{phang}
将特定文件从SSC复制到计算机

{p 8 12 2}
{cmd:ssc}
{opt copy}
{it:{help filename_zh}}
[{cmd:,}
{opt pl:us}
{opt p:ersonal}
{opt replace}
{opt pub:lic}
{opt bin:ary}]


{p 4 6 2}
其中在{opt ssc describe}中的{it:letter}为{opt a}-{opt z}或{opt _}。


{marker description}{...}
{title:描述}

{pstd}
{opt ssc}与统计软件组件（SSC）档案中的包（及文件）协同工作，该档案常称为波士顿学院档案，并由{browse "http://www.repec.org"}提供。

{pstd}
SSC已成为互联网上为社区贡献软件的首要Stata下载站点。{opt ssc}为可用资源提供了方便的界面。例如，在{browse "http://www.statalist.org/":Statalist}上，用户通常会写道：

{p 8 8 4}
可以通过输入{cmd:ssc install newprogramname}来找到该程序。

{pstd}
输入此内容将加载与{cmd:newprogramname}相关的所有内容，包括帮助文件。

{pstd}
如果您在寻找可用内容，请输入{cmd:ssc} {cmd:new}和{cmd:ssc} {cmd:hot}，并参阅{manhelp search R}。{opt search}还会搜索SSC及其他地方。{cmd:search}提供了一个图形用户界面，可以通过它安装程序，包括在SSC档案中的程序。

{pstd}
您可以使用{cmd:ssc} {cmd:uninstall}卸载特定的包。对于您保留的包，请参见{helpb ado update:[R] ado update}以获取自动更新这些包的方法。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R sscQuickstart:快速入门}

        {mansection R sscRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker overview}{...}
{title:命令概述}

{phang}
{opt ssc new}总结最近提供或更新的包。输出以Stata查看器呈现，您可以从那里点击了解更多个别包的信息或安装它们。

{phang}
{opt ssc hot} 
    列出最受欢迎的包——该热门程度基于过去三个月下载次数的移动平均。默认情况下，列出10个包。

{phang}
{opt ssc describe} {it:pkgname} 描述指定的包，但不安装。使用{cmd:search}查找包；请参见{manhelp search R}。如果您知道包的名称但不知道确切的拼写，请输入{opt ssc describe}后跟一个字母，{opt a}-{opt z}或{opt _}（下划线），以列出所有以该字母开头的包。

{phang}
{opt ssc install} {it:pkgname} 安装指定的包。您无需在安装之前描述一个包。（您也可以通过使用{cmd:net} {cmd:install}来安装包；请参见{manhelp net R}。）

{phang}
{opt ssc uninstall} {it:pkgname} 从您的计算机中删除之前安装的包。无论该包如何安装，都无所谓。({opt ssc uninstall}是{opt ado uninstall}的同义词，因此可以使用任一命令来卸载任何包。）

{phang}
{opt ssc type} {it:{help filename_zh}} 输入存储在SSC的特定文件。{opt ssc cat}是{opt ssc type}的同义词，这可能对熟悉Unix的人特别有吸引力。

{phang}
{opt ssc copy} {it:filename} 将存储在SSC的特定文件复制到您的计算机。默认情况下，文件将复制到当前目录，但是您可以使用选项更改此设置。{opt ssc copy}是{opt ssc install} ...{cmd:, all}的一个很少使用的替代方法。{opt ssc cp} 是{opt ssc copy}的同义词。


{marker options_ssc_new}{...}
{title:ssc new 的选项}

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)} 指定“新增内容”摘要保存到{it:filename}。如果{it:filename}未指定后缀，假定为{it:filename}{cmd:.smcl}。如果未指定{opt saving()}，则假定为{cmd:saving(ssc_result.smcl)}。

{phang}
{opt type} 指定“新增内容”结果在结果窗口中显示，而不是在查看器中显示。


{marker options_ssc_hot}{...}
{title:ssc hot 的选项}

{phang}
{cmd:n(}{it:#}{cmd:)} 
    指定列出的包的数量；{cmd:n(10)}为默认值。指定{cmd:n(.)}以按受欢迎程度列出所有包。

{phang}
{cmd:author(}{it:name}{cmd:)} 
     按指定作者列出10个最受欢迎的包。如果{cmd:n(}{it:#}{cmd:)}也指定，则列出前{it:#}个包。


{marker option_ssc_describe}{...}
{title:ssc describe 的选项}

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)} 指定，除了在您的屏幕上显示描述外，还将其保存在指定文件中。

{pmore}
    如果{it:filename}未指定扩展名，假定为{opt .smcl}，文件将保存为{help smcl_zh:SMCL}文件。

{pmore}
    如果{it:filename}指定了一个扩展名，则不添加默认扩展名。如果扩展名为{opt .log}，则该文件将作为文本文件存储。

{pmore}
    如果指定了{opt replace}，则如果{it:filename}已存在，将用新文件替换它。


{marker options_ssc_install}{...}
{title:ssc install 的选项}

{phang}
{opt all} 指定下载与包关联的所有附属文件到当前目录，除了程序和帮助文件被安装。附属文件是以{opt .ado}或{opt .sthlp}结尾的文件，通常包含数据集或新命令使用示例。

{pmore}
    您可以通过在安装之前或之后输入{cmd:ssc describe} {it:pkgname}来查看与该包关联的文件。如果您在没有使用{opt all}选项的情况下安装，然后想要附属文件，可以再次{opt ssc install}。

{phang}
{opt replace} 指定任何已存在于计算机上的下载文件将被下载文件替换。如果未指定{opt replace}且任何文件已存在，则不会下载或安装该包中的任何文件。

{pmore}
    最好不要指定{opt replace}选项，而是等待查看是否存在问题。如果存在问题，通常最好使用{opt ssc uninstall}或{opt ado uninstall}卸载旧包（它们实际上是同一命令）。

{marker option_ssc_type}{...}
{title:ssc type 的选项}

{phang}
{opt asis} 影响后缀为{cmd:.smcl} 
    和{cmd:.sthlp}的文件的显示方式。默认值是解释文件可能包含的SMCL指令。{cmd:asis} 指定以原始，未解释的形式显示文件。


{marker options_ssc_copy}{...}
{title:ssc copy 的选项}

{phang}
{opt plus} 指定将
    文件复制到{cmd:PLUS}目录，该目录是社区贡献增加内容安装的目录。输入{help sysdir_zh}将显示您计算机上{cmd:PLUS}目录的身份。

{phang}
{opt personal} 指定将文件复制到您的{cmd:PERSONAL}
    目录，如{help sysdir_zh}所报告。

{pmore}
    如果未指定{opt plus}或{opt personal}，则默认情况下将文件复制到当前目录。

{phang}
{opt replace} 指定，如果文件在您的计算机上已存在，则新文件替换它。

{phang}
{opt public} 指定新文件可被所有人读取；否则，文件将根据您在操作系统中设置的默认权限创建。

{phang}
{opt binary} 指定正在复制的文件为二进制文件，并应按原样复制。默认情况下，假定文件为文本文件，并将行结束符更改为适合您计算机/操作系统的字符。


{marker remarks}{...}
{title:备注}

{pstd}
用户可以为Stata添加新功能，一些用户选择通过网络将他们编写的新功能提供给其他人。构成新功能的文件称为包，包通常由一个或多个 ado 文件和帮助文件组成。{help net_zh}命令使得无论它们在网络上的什么位置，安装和卸载包变得相对简单。一个特定的网站，SSC，已成为Stata功能扩展特别受欢迎的存储库。命令{cmd:ssc}是{cmd:net}的更易于使用的版本，专门为SSC设计。

{pstd}
在SSC上提供了许多包。包有名称，如{hi:oaxaca}、{hi:estout}或{hi:egenmore}。在SSC上，大小写不重要，因此{hi:Oaxaca}、{hi:ESTOUT}和{hi:EGENmore}是相同包名称的不同书写方式。

{pstd}
当您输入

	{cmd:. ssc install oaxaca}

{pstd}
与该包关联的文件会被下载并安装到您的计算机上。包名称通常与增强的新命令名称相对应，因此期待安装包{hi:oaxaca}将向您计算机上的Stata添加命令{cmd:oaxaca}，并期待输入{cmd:help oaxaca}将提供文档。这里的情况确实如此，但并非总是如此。在安装包之前或之后，输入{cmd:ssc describe} {it:pkgname}以获取详细信息。


{marker examples}{...}
{title:示例}

{pstd}描述最近添加或更新的SSC包{p_end}
{phang2}{cmd:. ssc new}

{pstd}描述SSC上最受欢迎的包{p_end}
{phang2}{cmd:. ssc hot}

{pstd}描述包{cmd:oaxaca}{p_end}
{phang2}{cmd:. ssc describe oaxaca}

{pstd}描述包{cmd:oaxaca}并将描述保存到文件{cmd:oaxaca.log}{p_end}
{phang2}{cmd:. ssc describe oaxaca, saving(oaxaca.log)}

{pstd}列出所有以字母{cmd:o}开头的包及简要描述{p_end}
{phang2}{cmd:. ssc describe o}

{pstd}与上述相同，但还将列表保存到文件{cmd:o.index}{p_end}
{phang2}{cmd:. ssc describe o, saving(o.index)}

{pstd}安装包{cmd:oaxaca}{p_end}
{phang2}{cmd:. ssc install oaxaca}

{pstd}卸载之前安装的包{cmd:oaxaca}{p_end}
{phang2}{cmd:. ssc uninstall oaxaca}

{pstd}输入存储在SSC上的文件{cmd:whitetst.hlp}{p_end}
{phang2}{cmd:. ssc type whitetst.hlp}

{pstd}将文件{cmd:whitetst.ado}从SSC复制到您的计算机{p_end}
{phang2}{cmd:. ssc copy whitetst.ado}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ssc.sthlp>}