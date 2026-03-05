{smcl}
{* *! version 1.3.1  15may2018}{...}
{vieweralsosee "[G-4] 概念：gph 文件" "mansection G-4 Conceptgphfiles"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] 图形显示" "help graph_display_zh"}{...}
{vieweralsosee "[G-2] 图形保存" "help graph_save_zh"}{...}
{vieweralsosee "[G-3] 保存选项" "help saving_option_zh"}{...}
{vieweralsosee "[P] serset" "help serset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] 图形操作" "help graph_manipulation_zh"}{...}
{viewerjumpto "描述" "gph_files_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "gph_files_zh##linkspdf"}{...}
{viewerjumpto "备注" "gph_files_zh##remarks"}
{help gph_files:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col :{bf:[G-4] 概念：gph 文件} {hline 2}}使用 gph 文件{p_end}
{p2col:}({mansection G-4 Conceptgphfiles:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:.gph} 文件包含 Stata 图形，并且实际上还包括绘制这些图形所用的原始数据。下面我们讨论如何重放图形文件并获取其中的数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 ConceptgphfilesRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help gph_files##remarks1:背景}
	{help gph_files##remarks2:gph 文件是机器/操作系统独立的}
	{help gph_files##remarks3:gph 文件有三种形式}
	{help gph_files##remarks4:实时格式文件的优势}
	{help gph_files##remarks5:原样格式文件的优势}
	{help gph_files##remarks6:从实时格式文件中检索数据}


{marker remarks1}{...}
{title:背景}

{pstd}
{cmd:.gph} 文件可以通过在绘制图形时包括 {cmd:saving()} 选项来创建，

	{cmd:. graph} ...{cmd:,} ... {cmd:saving(myfile)}

{pstd}
或通过在之后使用 {cmd:graph} {cmd:save} 命令：

	{cmd:. graph} ...
	{cmd:. graph save myfile}

{pstd}
无论哪种方式，都会创建文件 {cmd:myfile.gph}；有关详细信息，请参阅 
{manhelpi saving_option G-3} 和 {manhelp graph_save G-2:graph save}。

{pstd}
稍后，在同一会话或不同会话中，您可以通过输入

	{cmd:. graph use myfile}

{pstd}
来重新显示 {cmd:.gph} 文件中的内容。

{pstd}
有关详细信息，请参阅 {manhelp graph_use G-2:graph use}。


{marker remarks2}{...}
{title:gph 文件是机器/操作系统独立的}

{pstd}
{cmd:.gph} 文件是由 {cmd:saving()} 和 {cmd:graph} {cmd:save} 创建的，以机器和操作系统独立的格式写入的二进制文件。您可以将 {cmd:.gph} 文件发送给其他用户，他们将能够读取这些文件，即使您使用的是 Mac 而您的同事使用的是 Unix 或 Windows 计算机。


{marker remarks3}{...}
{title:gph 文件有三种形式}

{pstd}
有三种形式的 {cmd:graph} 文件：

{phang2}
1.  旧格式的 Stata 7 或更早的 {cmd:.gph} 文件

{phang2}
2.  原样格式的现代图形

{phang2}
3.  实时格式的现代图形

{pstd}
您可以通过输入

	{cmd:. graph describe} {it:filename}

{pstd}
来查明 {cmd:.gph} 文件的类型。

{pstd}
有关详细信息，请参阅 {manhelp graph_describe G-2:graph describe}。

{pstd}
实时格式文件包含重新创建图形所需的数据和其他信息。原样格式文件包含图的记录。当您保存图形时，除非您指定 {cmd:asis} 选项，否则会以实时格式保存。


{marker remarks4}{...}
{title:实时格式文件的优势}

{pstd}
实时格式文件可以后续编辑，并可以使用不同的方案显示；有关更多信息，请参阅 {manhelp schemes G-4:方案介绍}。此外，创建图形所用的数据可以从 {cmd:.gph} 文件中检索。


{marker remarks5}{...}
{title:原样格式文件的优势}

{pstd}
原样格式文件通常小于实时格式文件。

{pstd}
原样格式文件无法被修改；其呈现是固定的，并将在其他计算机上和您最后看到的一样显示。


{marker remarks6}{...}
{title:从实时格式文件中检索数据}

{pstd}
首先，通过输入

	{cmd:. graph describe} {it:filename}{cmd:.gph}

{pstd}
来验证您确实拥有实时格式文件。

{pstd}
然后输入

	{cmd:. discard}

{pstd}
这将关闭任何打开的图形并消除与先前存在的图形相关的任何存储内容。现在，显示感兴趣的图形，

	{cmd:. graph use} {it:filename}

{pstd}
然后输入

	{cmd:. serset dir}

{pstd}
从这一点开始，您需要做一些侦查工作，但通常不会太多。Sersets 是 {cmd:graph} 用来存储对应于图形中每个绘图的数据的方式。您可以查看 {manhelp serset P}，但除非您是一个对事物如何运作感兴趣的程序员，否则这不必要。我们将在下面向您展示如何加载每个 serset（通常只有一个）并将其之后视为来自 {cmd:.dta} 文件。

{pstd}
让我们设置一个示例。假设我们之前绘制了图形并通过输入

	{cmd:. sysuse lifeexp}

	{cmd:. scatter lexp gnppc, by(region)}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc, by(region)":点击运行})}
{* graph gphfiles1}{...}

	{cmd:. graph save legraph}
	{txt:(文件 legraph.gph 已保存)}

{pstd}
按照说明，我们现在输入

	{cmd:. graph describe legraph.gph}

	{txt}{title:legraph.gph 在磁盘上存储{txt}}

{p 16 15}
名称:
{res}legraph.gph
{p_end}
{txt}{p 14 15}
格式:
{res}实时
{p_end}
{txt}{p 13 15}
创建时间:
{res}2012年6月20日 13:04:30
{p_end}
{txt}{p 14 15}
方案:
{res}s2gmanual
{p_end}
{txt}{p 16 15}
大小:
{res}2.392 {it:x} 3.12
{p_end}
{txt}{p 12 15}
数据文件:
{res}C:\Program Files\Stata16\ado\base\lifeexp.dta 创建于2016年3月26日 09:40
{p_end}
{txt}{p 13 15}
命令:
{res}twoway scatter lexp gnppc, by(region){txt}
{p_end}

	{cmd:. discard}

	{cmd:. graph use legraph}

	{cmd}. serset dir{txt}
	{p 10 14}
	{res}0.  {txt}44{txt} 个观测值{txt} 在 2 个变量{txt}上{break}
	lexp
	gnppc
	{p_end}
	{p 10 14}
	{res}1.  {txt}14{txt} 个观测值{txt} 在 2 个变量{txt}上{break}
	lexp
	gnppc
	{p_end}
	{p 10 14}
	{res}2.  {txt}10{txt} 个观测值{txt} 在 2 个变量{txt}上{break}
	lexp
	gnppc
	{p_end}{txt}

{pstd}
我们发现我们的图形有三个 serset。浏览图形时，这不应该让我们感到惊讶。虽然我们可能认为

	{cmd:. scatter lexp gnppc, by(region)}

{pstd}
是一个绘图，实际上如果我们展开它，它是三个绘图：

	{cmd:. scatter lexp gnppc if region==1 ||}
	{cmd:  scatter lexp gnppc if region==2 ||}
	{cmd:  scatter lexp gnppc if region==3}

{pstd}
编号为 0、1 和 2 的三个 serset 对应于图形的三个部分。我们可以查看各个 serset。要加载一个 serset，您首先设置其编号，然后输入 {cmd:serset} {cmd:use,} {cmd:clear}：

	{cmd:. serset 0}

	{cmd:. serset use, clear}

{pstd}
如果我们现在输入 {cmd:describe}，我们将发现我们有一个包含两个变量的 44 个观测值的数据集： {cmd:lexp} 和 {cmd:gnppc}。以下是一些数据：

	{cmd}. list in 1/5
	{txt}
	     {c TLC}{hline 6}{c -}{hline 7}{c TRC}
	     {c |} {res}lexp   gnppc {txt}{c |}
	     {c LT}{hline 6}{c -}{hline 7}{c RT}
	  1. {c |} {res}  72     810 {txt}{c |}
	  2. {c |} {res}  74     460 {txt}{c |}
	  3. {c |} {res}  79   26830 {txt}{c |}
	  4. {c |} {res}  71     480 {txt}{c |}
	  5. {c |} {res}  68    2180 {txt}{c |}
	     {c BLC}{hline 6}{c -}{hline 7}{c BRC}

{pstd}
这些是出现在第一个绘图中的数据。我们可以通过输入

	{cmd:. serset 1}

	{cmd:. serset use, clear}

{pstd}
以类似的方式获取第二个绘图的数据。

{pstd}
如果我们想将这些数据合并到一个文件中，可以输入

	{cmd:. serset 0}
	{cmd:. serset use, clear}
	{cmd:. generate region=0}
	{cmd:. save region0}

	{cmd:. serset 1}
	{cmd:. serset use, clear }
	{cmd:. generate region=1}
	{cmd:. save region1}

	{cmd:. serset 2}
	{cmd:. serset use, clear }
	{cmd:. generate region=2}
	{cmd:. save region2}

	{cmd:. use region0}
	{cmd:. append using region1}
	{cmd:. append using region2}

	{cmd:. erase region0.dta}
	{cmd:. erase region1.dta}
	{cmd:. erase region2.dta}

{pstd}
通常，从图形中检索数据将不会这么费劲，因为在许多图形中，您会发现只有一个 serset。我们选择了一个复杂的 {cmd:.gph} 文件进行演示。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gph_files.sthlp>}