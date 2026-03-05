{smcl}
{* *! version 1.0.4  07jan2019}{...}
{viewerdialog irt "dialog irt"}{...}
{vieweralsosee "[IRT] irtgraph icc" "mansection IRT irtgraphicc"}{...}
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
{vieweralsosee "[IRT] irtgraph tcc" "help irtgraph tcc"}{...}
{viewerjumpto "Syntax" "irtgraph icc##syntax"}{...}
{viewerjumpto "Menu" "irtgraph icc##menu_irt"}{...}
{viewerjumpto "Description" "irtgraph icc##description"}{...}
{viewerjumpto "Links to PDF documentation" "irtgraph_icc_zh##linkspdf"}{...}
{viewerjumpto "Options" "irtgraph icc##options"}{...}
{viewerjumpto "Examples" "irtgraph icc##examples"}{...}
{viewerjumpto "Stored results" "irtgraph icc##results"}
{help irtgraph_icc:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[IRT] irtgraph icc} {hline 2}}项目特征曲线图{p_end}
{p2col:}({mansection IRT irtgraphicc:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
基本语法

{p 8 16 2}
{cmd:irtgraph icc}
	[{varlist}]
	[{cmd:,} {it:选项}]


{phang}
完整语法

{p 8 16 2}
{cmd:irtgraph icc}
	{cmd:(}[{it:#}{cmd::}] {varlist} [{cmd:,}
	{help irtgraph_icc##plot_options:{it:plot_options}}]{cmd:)}
	{cmd:(}[{it:#}{cmd::}] {varlist} [{cmd:,} 
	{help irtgraph_icc##plot_options:{it:plot_options}}]{cmd:)}
	[...]
	[{cmd:,} {it:选项}]


{phang}
{it:varlist} 是来自当前拟合的IRT模型的项目列表。{p_end}
{phang}
{it:#}{cmd::} 为指定的组绘制曲线；仅在组IRT模型后允许。

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:绘图}
{synopt:{cmdab:blo:cation}[{cmd:(}{help line_options_zh:{it:line_options}}{cmd:)}]}为估计的项目难度添加垂直线{p_end}
{synopt:{cmdab:plo:cation}[{cmd:(}{help line_options_zh:{it:line_options}}{cmd:)}]}为中点概率添加水平线{p_end}
{synopt: {opt bcc}}为分类项目绘制边界特征曲线{p_end}
{synopt :{opt ccc}}绘制类别特征曲线{p_end}
{synopt: {opt ra:nge(# #)}}在 theta = {it:#} 到 {it:#} 范围内绘图{p_end}

{syntab:线}
{synopt: {it:{help line_options_zh}}}影响绘制曲线的展示{p_end}

{syntab:添加绘图}
{synopt :{opth addplot:(addplot_option:plot)}}向ICC图添加其他绘图{p_end}

{syntab:Y轴, X轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除 {cmd:by()} 之外的任何选项，详细见 {manhelpi twoway_options G-3}{p_end}

{syntab:数据}
{synopt :{opt n(#)}}在 {it:#} 点上评估曲线；默认值为 {cmd:n(300)}{p_end}
{synopt :{cmd:data(}{it:filename}[{cmd:, replace}]{cmd:)} }将绘图数据保存到文件中{p_end}
{synoptline}
{p2colreset}{...}

{marker plot_options}{...}
{synoptset 27 }{...}
{synopthdr:plot_options}
{synoptline}
{synopt :{opt blo:cation}[{cmd:(}{it:{help line_options_zh}}{cmd:)}]}为估计的项目难度添加垂直线{p_end}
{synopt :{opt plo:cation}[{cmd:(}{it:{help line_options_zh}}{cmd:)}]}为中点概率添加水平线{p_end}
{synopt :{opt bcc}}为分类项目绘制边界特征曲线{p_end}
{synopt :{opt ccc}}绘制所有项目的类别特征曲线{p_end}
{synopt: {it:{help line_options_zh}}}影响绘制曲线的展示{p_end}
{synoptline}

{p 4 6 2}
{it:varlist} 可以使用因子变量表示法；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:line_options} 在 {it:plot_options} 中覆盖在 {it:options} 中指定的相同选项。


包括帮助菜单_irt


{marker description}{...}
{title:描述}

{pstd}
{opt irtgraph icc} 为当前拟合的IRT模型绘制二元项目的项目特征曲线（ICCs）和分类项目的类别特征曲线（CCCs）。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irtgraphiccQuickstart:快速入门}

        {mansection IRT irtgraphiccRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:绘图}

{phang}
{cmd:blocation}[{cmd:(}{it:{help line_options_zh}}{cmd:)}]
指定为每个ICC，从x轴上的估计难度参数绘制一条垂直线到曲线。
可选的 {it:line_options} 指定如何呈现垂直线；请参见 {manhelpi line_options G-3}。
此选项隐含了选项 {opt bcc}。

{phang}
{cmd:plocation}[{cmd:(}{it:{help line_options_zh}}{cmd:)}]
指定为每个ICC，从y轴上的中点概率绘制一条水平线到曲线。
可选的 {it:line_options} 指定如何呈现水平线；请参见 {manhelpi line_options G-3}。
此选项隐含了选项 {opt bcc}。

{phang}
{opt bcc} 指定为分类项目绘制边界特征曲线（BCCs）。
默认绘制单个项目类别的ICCs。
此选项对二元项目没有影响。

{phang}
{opt ccc} 指定为所有项目绘制类别特征曲线（CCCs）。
这是分类项目的默认行为。
对于二元项目，此选项将绘制两个结果的ICCs。

{phang}
{opt range(# #)}
	指定theta的值范围。此选项需要一对数字，标识最小值和最大值。
	默认值是 {cmd:range(-4 4)}
	除非估计的难度参数超过这些值，否则范围会扩展。

{dlgtab:线}

{phang}
{it:line_options} 影响绘制ICCs的表现；请参见 {manhelpi line_options G-3}。

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)} 允许将更多的 {cmd:graph} {cmd:twoway} 绘图添加到图中；请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {cmd:by()}。
这些选项包括为图表命名的选项（见 {manhelpi title_options G-3}）和将图表保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{dlgtab:数据}

{phang}
{opt n(#)} 指定评估ICCs, CCCs 和 BCCs的点数。默认值为 {cmd:n(300)}。

{phang}
{cmd:data(}{it:filename}[{cmd:,} {cmd:replace}]{cmd:)} 将绘图数据保存到Stata数据文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}

{pstd}为二元项目 {cmd:q1-q9} 拟合1PL模型{p_end}
{phang2}{cmd:. irt 1pl q1-q9}

{pstd}重播估计IRT参数的表，按参数排序输出，而不是按项目排序，并按难度递增{p_end}
{phang2}{cmd:. estat report, byparm sort(b)}

{pstd}使用1PL参数为模型中的所有项目绘制项目特征曲线{p_end}
{phang2}{cmd:. irtgraph icc}

{pstd}与上述相同，但仅绘制指定项目，并缩小图例并将其移动到绘图区域内{p_end}
{phang2}{cmd:. irtgraph icc q8 q3 q9 q1 q2 q4 q6 q7 q5,}
         {cmd:legend(pos(4) col(1) ring(0) size(small))}

{pstd}使用1PL参数绘制项目特征曲线，将最高和最低难度的项目放入一个绘图组中，并绘制它们的难度位置，剩下的项目放在另一个绘图组中{p_end}
{phang2}{cmd:. irtgraph icc (q5 q8, blocation) (q1-q4 q6 q7 q9), legend(off)}

{pstd}与上述相同，但我们添加选项使项目 {cmd:q5} 和 {cmd:q8} 更突出{p_end}
{phang2}{cmd:. irtgraph icc (q8 q5, lcolor(black) lwidth(thick)}
       {cmd:bloc(lcolor(black))) (q1-q4 q6 q7 q9, lpattern(dash)),}
       {cmd:range(-5 5) xlabel(-5 -2.41 0 1.65 5) legend(off) lcolor(red)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irtgraph icc} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt :{cmd:r(xvals)}}用于标记x轴的值{p_end}
{synopt :{cmd:r(yvals)}}用于标记y轴的值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irtgraph_icc.sthlp>}