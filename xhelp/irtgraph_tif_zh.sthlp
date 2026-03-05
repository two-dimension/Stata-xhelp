{smcl}
{* *! version 1.0.2  19oct2017}{...}
{viewerdialog irt "dialog irt"}{...}
{vieweralsosee "[IRT] irtgraph tif" "mansection IRT irtgraphtif"}{...}
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
{vieweralsosee "[IRT] irtgraph iif" "help irtgraph iif"}{...}
{viewerjumpto "Syntax" "irtgraph tif##syntax"}{...}
{viewerjumpto "Menu" "irtgraph tif##menu_irt"}{...}
{viewerjumpto "Description" "irtgraph tif##description"}{...}
{viewerjumpto "Links to PDF documentation" "irtgraph_tif_zh##linkspdf"}{...}
{viewerjumpto "Options" "irtgraph tif##options"}{...}
{viewerjumpto "Examples" "irtgraph tif##examples"}
{help irtgraph_tif:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[IRT] irtgraph tif} {hline 2}}测试信息函数图{p_end}
{p2col:}({mansection IRT irtgraphtif:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:irtgraph tif} [{cmd:,} {it:选项}]

{synoptset 33 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:图形}
{synopt :{opt se}[{cmd:(}{it:{help line_options_zh}}{cmd:)}]}绘制 TIF 的标准误{p_end}
{synopt :{opt ra:nge(# #)}}在 theta = {it:#} 到 {it:#} 之间绘制{p_end}

{syntab:线条}
{synopt :{it:{help line_options_zh}}}影响绘制的 TIF 的呈现方式{p_end}

{syntab:附加图形}
{synopt :{opth addplot:(addplot_option:plot)}}将其他图形添加到 TIF 图中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除 {cmd:by()} 外的选项，详见
{manhelpi twoway_options G-3}{p_end}

{syntab:数据}
{synopt :{opt n(#)}}在 {it:#} 个点上评估 TIF；默认为 {cmd:n(300)}{p_end}
{synopt :{cmd:data(}{it:filename}[{cmd:, replace}]{cmd:)}}将图形数据保存到文件{p_end}
{synoptline}
{p2colreset}{...}


包含 帮助 menu_irt


{marker description}{...}
{title:描述}

{pstd}
{opt irtgraph tif} 绘制当前拟合的 IRT 模型的测试信息函数（TIF）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection IRT irtgraphtifQuickstart:快速入门}

        {mansection IRT irtgraphtifRemarksandexamples:备注和示例}

        {mansection IRT irtgraphtifMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:图形}

{phang}
{opt se}[{cmd:(}{it:{help line_options_zh}}{cmd:)}]
请求绘制 TIF 的标准误。
可选的 {it:line_options} 指定线条的呈现方式；
详见 {manhelpi line_options G-3}。

{phang}
{opt range(# #)}
	指定 theta 的值范围。该选项需要一对数字以确定最小值和最大值。
	默认值为 {cmd:range(-4 4)}。

{dlgtab:线条}

{phang}
{it:line_options} 影响绘制 TIF 的呈现方式；
详见 {manhelpi line_options G-3}。

{dlgtab:附加图形}

{phang}
{opt addplot(plot)} 允许将更多的 {cmd:graph} {cmd:twoway} 图形添加到图中；详见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的选项，但不包括 {cmd:by()}。
这些选项包括为图形命名的选项（见 {manhelpi title_options G-3}）
以及将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{dlgtab:数据}

{phang}
{opt n(#)} 指定绘制的线条应评估的点数。默认值为 {cmd:n(300)}。

{phang}
{cmd:data(}{it:filename}[{cmd:,} {cmd:replace}]{cmd:)} 将图形数据保存到 Stata 数据文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}{p_end}
{phang2}{cmd:. irt 2pl q1-q9}

{pstd}使用 2PL 参数绘制模型中所有项目的 TIF{p_end}
{phang2}{cmd:. irtgraph tif}

{pstd}与上面相同，但同时绘制 TIF 的标准误{p_end}
{phang2}{cmd:. irtgraph tif, se}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irtgraph_tif.sthlp>}