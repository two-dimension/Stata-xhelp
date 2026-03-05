{smcl}
{* *! version 1.0.3  07jan2019}{...}
{viewerdialog irt "dialog irt"}{...}
{vieweralsosee "[IRT] irtgraph iif" "mansection IRT irtgraphiif"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt 1pl" "help irt 1pl"}{...}
{vieweralsosee "[IRT] irt 2pl" "help irt 2pl"}{...}
{vieweralsosee "[IRT] irt 3pl" "help irt 3pl"}{...}
{vieweralsosee "[IRT] irt grm" "help irt grm"}{...}
{vieweralsosee "[IRT] irt hybrid" "help irt hybrid"}{...}
{vieweralsosee "[IRT] irt nrm" "help irt nrm"}{...}
{vieweralsosee "[IRT] irt pcm" "help irt pcm"}{...}
{vieweralsosee "[IRT] irt rsm" "help irt rsm"}{...}
{vieweralsosee "[IRT] irtgraph tif" "help irtgraph tif"}{...}
{viewerjumpto "Syntax" "irtgraph iif##syntax"}{...}
{viewerjumpto "Menu" "irtgraph iif##menu_irt"}{...}
{viewerjumpto "Description" "irtgraph iif##description"}{...}
{viewerjumpto "Links to PDF documentation" "irtgraph_iif_zh##linkspdf"}{...}
{viewerjumpto "Options" "irtgraph iif##options"}{...}
{viewerjumpto "Examples" "irtgraph iif##examples"}
{help irtgraph_iif:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[IRT] irtgraph iif} {hline 2}}项目信息函数图{p_end}
{p2col:}({mansection IRT irtgraphiif:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
基本语法

{p 8 16 2}
{cmd:irtgraph iif}
	[{varlist}]
	[{cmd:,} {it:选项}]


{phang}
完整语法

{p 8 16 2}
{cmd:irtgraph iif}
	{cmd:(}[{it:#}{cmd::}] {varlist} [{cmd:,}
	{it:{help line_options_zh}}]{cmd:)}
	{cmd:(}[{it:#}{cmd::}] {varlist} [{cmd:,} 
	{it:{help line_options_zh}}]{cmd:)}
	[...]
	[{cmd:,} {it:选项}]


{phang}
{it:varlist} 是来自当前拟合的IRT模型的项目列表。{p_end}
{phang}
{it:#}{cmd::} 选择指定组的 {varlist} 中的项目。{p_end}

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:图形}
{synopt: {opt ra:nge(# #)}}在 theta = {it:#} 到 {it:#} 的范围内绘图{p_end}

{syntab:线}
{synopt: {it:{help line_options_zh}}} 影响所绘制 IIF 的呈现{p_end}

{syntab:添加图形}
{synopt :{opth addplot:(addplot_option:plot)}}将其他图形添加到 IIF 图中{p_end}

{syntab:Y 轴、X 轴、标题、图例、总体}
{synopt :{it:twoway_options}}除 {cmd:by()} 外，任何在 {manhelpi twoway_options G-3} 中文档说明的选项{p_end}

{syntab:数据}
{synopt :{opt n(#)}}在 {it:#} 个点上评估 IIFs；默认值为 {cmd:n(300)}{p_end}
{synopt :{cmd:data(}{it:filename}[{cmd:, replace}]{cmd:)}保存图形数据到文件{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:line_options} 在 {cmd:(}{it:varlist}{cmd:,} {it:line_options}{cmd:)} 中覆盖与 {it:options} 中指定的相同选项。


包含帮助菜单_irt


{marker description}{...}
{title:描述}

{pstd}
{opt irtgraph iif} 绘制当前拟合的IRT模型中项目的信息函数（IIFs）图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irtgraphiifQuickstart:快速入门}

        {mansection IRT irtgraphiifRemarksandexamples:备注和示例}

        {mansection IRT irtgraphiifMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:图形}

{phang}
{opt range(# #)}
	指定 theta 的值范围。此选项需要一对数字以确定最小值和最大值。默认值为 {cmd:range(-4 4)}。

{dlgtab:线}

{phang}
{it:line_options} 影响绘制的 IIF 的呈现；请参阅 {manhelpi line_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 允许将更多的 {cmd:graph} {cmd:twoway} 图形添加到图中；请参阅 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴、X 轴、标题、图例、总体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，排除 {cmd:by()}。这些包括图形标题的选项（参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}）。

{dlgtab:数据}

{phang}
{opt n(#)} 指定 IIFs 评估的点数。默认值为 {cmd:n(300)}。

{phang}
{cmd:data(}{it:filename}[{cmd:,} {cmd:replace}]{cmd:)} 将图形数据保存到 Stata 数据文件。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}{p_end}
{phang2}{cmd:. irt 2pl q1-q9}

{pstd}使用 2PL 参数绘制模型中所有项目的 IIF{p_end}
{phang2}{cmd:. irtgraph iif}

{pstd}与上面相同，但添加选项以使困难项目更加突出{p_end}
{phang2}{cmd:. irtgraph iif (q1-q4 q6-q9, lcolor(red) lpattern(dash))}
        {cmd:(q5, lcolor(black) lwidth(thick)), legend(off)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irtgraph_iif.sthlp>}