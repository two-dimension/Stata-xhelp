{smcl}
{* *! version 1.1.4  11feb2011}{...}
{findalias asfrsyntax}{...}
{viewerjumpto "语法" "language_zh##syntax"}{...}
{viewerjumpto "描述" "language_zh##description"}{...}
{viewerjumpto "备注" "language_zh##remarks"}{...}
{viewerjumpto "示例" "language_zh##examples"}
{help language:English Version}
{hline}{...}
{title:标题}

{p 4 13 2}
{findalias frsyntax}


{marker syntax}{...}
{title:语法}

{pstd}
在少数例外情况下，基本语言语法如下

{p 8 27 2}
[{it:前缀} {cmd::}]
{it:命令} [{it:变量列表}]
[{cmd:=}{it:表达式}]
{ifin}
{权重}
{bind:[{cmd:using} {it:文件名}]}
{bind:[{cmd:,} {it:选项}]}


{p2colset 5 24 48 2}{...}
{p2col:见}语言元素 {space 4} 描述{p_end}
{p2line}
{p2col:help {it:{help prefix_zh}}}{it:前缀} {cmd::} {space 12} 前缀
		命令{p_end}
{p2col:help {it:命令}}{it:命令} {space 13} Stata 命令{p_end}
{p2col:help {it:{help varlist_zh}}}{it:变量列表} {space 13} 变量列表{p_end}
{p2col:help {it:{help exp_zh}}}{cmd:=}{it:表达式} {space 16} 表达式{p_end}
{p2col:help {it:{help if_zh}}}{it:if} {space 18} {cmd:if} {it:表达式}
		限定词{p_end}
{p2col:help {it:{help in_zh}}}{it:in} {space 18} {cmd:in} {it:范围}
		限定词{p_end}
{p2col:help {it:{help weight_zh}}}{it:权重} {space 14} 权重{p_end}
{p2col:help {it:{help using_zh}}}{cmd:using} {it:文件名} {space 6} {cmd:using}
		{it:文件名} 修饰符{p_end}
{p2col:help {it:{help options_zh}}}{it:选项} {space 13} 选项{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Stata 命令遵循通用语法。命令的语法图显示如何键入命令，指示可能的选项，并给出命令中各项的最小允许缩写。

{marker remarks}{...}
{title:备注}

{pstd}
在语法图中，方括号用于区分可选项和必需选项。像 {cmd:this} 这样的项目应准确输入，如图所示。下划线用于指示允许缩写的最短形式，因此像 {cmdab:th:is} 这样的项目表示 {cmd:this} 可以缩写为 {cmd:th}。像 {it:this} 这样的项目代表您需要用变量名、观测数字等替换的参数。

{pstd}
选项在上述通用语法图中表示为 {it:选项}，这些选项在命令的末尾指定。第一个 {it:选项} 前必须有一个逗号。

{pstd}
一些选项接受数字列表作为参数。有关指定这些数字列表的各种方式的详细信息，请参见帮助 {help numlist_zh}。

{pstd}
一些命令还具有即时形式（允许您直接输入数字，而不是输入变量名称）。有关详细信息，请参见帮助 {help immed_zh}。

{pstd}
希望在 Stata 程序中整合 Stata 语言特性的程序员应查看帮助 {help syntax_zh} 以获取 {cmd:syntax} 命令的信息。

{marker examples}{...}
{title:示例}

    {title:{cmd:count} 命令}

{pin}
{help count_zh} 命令具有以下语法图：

{phang3}
{cmdab:cou:nt} {ifin}

{pin}
{cmd:count} 是 {it:命令}，可以缩写为 {cmd:cou}。
{cmd:if} 和 {cmd:in} 限定词是可选的；请参见帮助 {it:{help if_zh}} 和帮助 {it:{help in_zh}}。

{pin}
示例：

{phang3}{cmd:. sysuse auto}{p_end}
{phang3}{cmd:. count if rep78 > 4}{p_end}
{phang3}{cmd:. count if weight < 3000}{p_end}
{phang3}{cmd:. cou if rep78 > 4 & weight < 3000}{p_end}


    {title:{cmd:replace} 命令}

{pin}
{help replace} 命令具有以下语法图：

{phang3}
{cmd:replace} {it:oldvar} {cmd:=}{it:exp} {ifin}
	[{cmd:,} {opt nop:romote} ]

{pin}
{cmd:replace} 是 {it:命令}。{it:oldvar} 对应于通用语法图中的 {it:变量列表}。因为它周围没有方括号，所以这里 {it:oldvar} 是必需的。紧跟的等于号后面也是必需的。{cmd:if} 和 {cmd:in} 限定词是可选的。这里有一个选项 {cmd:nopromote}，可以缩写为 {cmd:nop}。如果指定此选项，它必须在输入命令的早期部分后跟一个逗号。

{pin}
示例：

{phang3}{cmd:. sysuse nlsw88}{p_end}
{phang3}{cmd:. replace married = 2 if never_married == 0 & married == 0}{p_end}
{phang3}{cmd:. replace wage = wage * 2080}{p_end}
{phang3}{cmd:. replace age = age^2, nopromote}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <language.sthlp>}