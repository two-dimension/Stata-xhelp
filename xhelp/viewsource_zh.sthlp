{smcl}
{* *! version 1.3.2  19oct2017}{...}
{vieweralsosee "[P] viewsource" "mansection P viewsource"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] copysource" "help copysource_zh"}{...}
{vieweralsosee "[P] findfile" "help findfile_zh"}{...}
{vieweralsosee "[R] view" "help view_zh"}{...}
{vieweralsosee "[R] which" "help which_zh"}{...}
{viewerjumpto "Syntax" "viewsource_zh##syntax"}{...}
{viewerjumpto "Description" "viewsource_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "viewsource_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "viewsource_zh##remarks"}
{help viewsource:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[P] viewsource} {hline 2}}查看源代码
{p_end}
{p2col:}({mansection P viewsource:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
{cmd:viewsource} 
{it:{help filename_zh}}


{marker description}{...}
{title:描述}

{pstd}
{cmd:viewsource} 在 {help sysdir_zh:ado-path} 中搜索 {it:{help filename_zh}} 并在查看器中显示该文件。没有提供默认的文件扩展名；如果您想查看，例如，{cmd:kappa.ado}，请输入 {cmd:viewsource} {cmd:kappa.ado}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P viewsourceRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
假设您希望查看 {help ml_zh} 的源代码。您知道 {cmd:ml} 是一个 ado 文件，因此文件名为 {cmd:ml.ado}。您输入

	. {cmd:viewsource ml.ado}

{pstd}
{help program_zh} 并未作为 ado 文件实现：

	. {cmd:viewsource program.ado}
	{err:file "program.ado" not found}
	r(601);

{pstd}
顺便说一下，您可以通过输入以下命令找出文件存储的位置 

	. {cmd:findfile ml.ado}
	C:\Program Files\Stata16\ado\base/m/ml.ado

{phang}
请参见 {manhelp findfile P}。

{pstd}
{cmd:viewsource} 并不局限于显示 ado 文件。如果您想查看，例如，{cmd:panelsetup.mata}，请输入

	. {cmd:viewsource panelsetup.mata}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <viewsource.sthlp>}