{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog grmeanby "dialog grmeanby"}{...}
{vieweralsosee "[R] grmeanby" "mansection R grmeanby"}{...}
{viewerjumpto "Syntax" "grmeanby_zh##syntax"}{...}
{viewerjumpto "Menu" "grmeanby_zh##menu"}{...}
{viewerjumpto "Description" "grmeanby_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "grmeanby_zh##linkspdf"}{...}
{viewerjumpto "Options" "grmeanby_zh##options"}{...}
{viewerjumpto "Examples" "grmeanby_zh##examples"}
{help grmeanby:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] grmeanby} {hline 2}}根据分类变量绘制均值和中位数的图形{p_end}
{p2col:}({mansection R grmeanby:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:grmeanby}
{varlist}
{ifin}
[{it:{help grmeanby##weight:权重}}]
{cmd:,} {opth su:mmarize(varname)}
[{it:选项}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{p2coldent:* {opth su:mmarize(varname)}}绘制{it:varname}的均值（或中位数）{p_end}
{synopt :{opt med:ian}}绘制中位数；默认绘制均值{p_end}

{syntab :绘图}
{p2col:{it:{help cline_options_zh}}}改变线条的外观{p_end}
INCLUDE help gr_markopt2

{syntab :Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}在{manhelpi twoway_options G-3}中记录的，除{opt by()}外的任何选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
*{opt summarize(varname)}是必需的。
{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用{opt aweight}和{opt fweight}；见{help weight_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 概述、表格和测试 >}
    {bf:总结和描述性统计 > 按组绘制均值/中位数}


{marker description}{...}
{title:描述}

{pstd}
{opt grmeanby}根据{varlist}中变量的值来绘制{varname}的（可选加权）均值或中位数。{it:varlist}中的变量可以是字符串或数字，如果是数字，可以带标签。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R grmeanbyQuickstart:快速入门}

        {mansection R grmeanbyRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth summarize(varname)}是必需的；它指定要绘制均值或中位数的变量名。

{phang}
{opt median}指定绘制中位数而不是均值。

{dlgtab:绘图}

{phang}
{it:cline_options}
     影响通过标记的线条的显示，包括它们的颜色、模式和宽度；
     见{manhelpi cline_options G-3}。

INCLUDE help gr_markoptf

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options}是{manhelpi twoway_options G-3}中记录的任何选项，不包括{opt by()}。这些选项包括为图命名的选项（见{manhelpi title_options G-3}）和将图保存到磁盘的选项（见{manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}根据{cmd:foreign}、{cmd:rep78}和{cmd:turn}的值绘制{cmd:mpg}的均值{p_end}
{phang2}{cmd:. grmeanby foreign rep78 turn, sum(mpg)}{p_end}

{pstd}与上述相同，但绘制中位数而不是均值{p_end}
{phang2}{cmd:. grmeanby foreign rep78 turn, sum(mpg) median}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <grmeanby.sthlp>}