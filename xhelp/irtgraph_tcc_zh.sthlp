{smcl}
{* *! version 1.0.3  07jan2019}{...}
{viewerdialog irt "dialog irt"}{...}
{vieweralsosee "[IRT] irtgraph tcc" "mansection IRT irtgraphtcc"}{...}
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
{vieweralsosee "[IRT] irtgraph icc" "help irtgraph icc"}{...}
{viewerjumpto "Syntax" "irtgraph tcc##syntax"}{...}
{viewerjumpto "Menu" "irtgraph tcc##menu_irt"}{...}
{viewerjumpto "Description" "irtgraph tcc##description"}{...}
{viewerjumpto "Links to PDF documentation" "irtgraph_tcc_zh##linkspdf"}{...}
{viewerjumpto "Options" "irtgraph tcc##options"}{...}
{viewerjumpto "Examples" "irtgraph tcc##examples"}{...}
{viewerjumpto "Stored results" "irtgraph tcc##results"}
{help irtgraph_tcc:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[IRT] irtgraph tcc} {hline 2}}测试特征曲线图{p_end}
{p2col:}({mansection IRT irtgraphtcc:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:irtgraph tcc} [{cmd:,} {it:options}]

{synoptset 36 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:图形}
{synopt :{opt sc:orelines}{cmd:(}[{it:#}{cmd::}]{it:{help numlist_zh}} [{cmd:,} {help irtgraph_tcc##refopts:{it:refopts}}]{cmd:)}}在{it:numlist}中的每个得分值添加x和y参考线{p_end}
{synopt :{opt th:etalines}{cmd:(}[{it:#}{cmd::}]{it:{help numlist_zh}} [{cmd:,} {help irtgraph_tcc##refopts:{it:refopts}}]{cmd:)}}在{it:numlist}中的每个theta值添加x和y参考线{p_end}
{synopt :{opt ra:nge(# #)}}在theta = {it:#}到{it:#}之间绘图{p_end}

{syntab:添加图形}
{synopt :{opth addplot:(addplot_option:plot)}}向TCC图中添加其他图形{p_end}

{syntab:Y轴，X轴，标题，图例，总体}
{synopt :{it:twoway_options}}除{cmd:by()}外的任何选项，详见{manhelpi twoway_options G-3}{p_end}

{syntab:数据}
{synopt :{opt n(#)}}在{it:#}个点上评估曲线；默认值为{cmd:n(300)}{p_end}
{synopt :{cmd:data(}{it:filename}[{cmd:, replace}]{cmd:)}}将绘图数据保存到文件{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt scorelines()}和{opt thetaline()}可以指定多次。{p_end}
{p 4 6 2}
{it:#}{cmd::}为指定组绘制线；仅在组IRT模型后允许。

{marker refopts}{...}
{synoptset 33}{...}
{synopthdr:refopts}
{synoptline}
{synopt: {it:{help line_options_zh}}}影响预计得分和theta线的渲染{p_end}
{synopt: {opt noxlines}}抑制theta值的对应参考线{p_end}
{synopt: {opt noylines}}抑制得分值的对应参考线{p_end}
{synoptline}


INCLUDE help menu_irt


{marker description}{...}
{title:描述}

{pstd}
{opt irtgraph tcc}绘制当前拟合的IRT模型的测试特征曲线(TCC)。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irtgraphtccQuickstart:快速开始}

        {mansection IRT irtgraphtccRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:图形}

{phang}
{cmd:scorelines(}[{it:#}{cmd::}]{it:{help numlist_zh}} [{cmd:,} {it:refopts}]{cmd:)}在{it:numlist}中的每个得分值添加x和y参考线。

{pmore}
对于组IRT模型，为所有组绘制参考线。您可以指定可选的{it:#}{cmd::}以将参考线限制为特定组。

{phang}
{cmd:thetalines(}[{it:#}{cmd::}]{it:{help numlist_zh}} {cmd:,} {it:refopts}]{cmd:)}在{it:numlist}中的每个theta值添加x和y参考线。

{pmore}
对于组IRT模型，为所有组绘制参考线。您可以指定可选的{it:#}{cmd::}以将参考线限制为特定组。

{phang2}
{it:refopts}影响预计得分和theta线的渲染：

{phang3}
{it:line_options}指定预计得分和theta线的渲染方式；详见{manhelpi line_options G-3}。

{phang3}
{cmd:noxlines}抑制theta的相应参考线。

{phang3}
{cmd:noylines}抑制得分的相应参考线。

{phang}
{opt range(# #)}
	指定theta的值范围。此选项需要一对数字以确定最小值和最大值。
	默认值为{cmd:range(-4 4)}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)}允许向图中添加更多{cmd:graph} {cmd:twoway}图；详见{manhelpi addplot_option G-3}。

{dlgtab:Y轴，X轴，标题，图例，总体}

{phang}
{it:twoway_options}是{manhelpi twoway_options G-3}中记录的任一选项，排除{cmd:by()}。
这些包括标题图形的选项（见{manhelpi title_options G-3}）和将图形保存到磁盘的选项（见{manhelpi saving_option G-3}）。

{dlgtab:数据}

{phang}
{opt n(#)}指定在评估TCC时的点数。默认值为{cmd:n(300)}。

{phang}
{cmd:data(}{it:filename}[{cmd:,} {cmd:replace}]{cmd:)}将绘图数据保存到Stata数据文件。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}{p_end}
{phang2}{cmd:. irt 2pl q1-q9}

{pstd}使用2PL参数绘制模型中所有项目的测试特征曲线{p_end}
{phang2}{cmd:. irtgraph tcc}

{pstd}与上述相同，但绘制对应潜在特质水平-3到3的预计得分，步长为1{p_end}
{phang2}{cmd:. irtgraph tcc, thetalines(-3/3)}

{pstd}与上述相同，但绘制指定的潜在特质值{p_end}
{phang2}{cmd:. irtgraph tcc, scorelines(2 4 6 7.5)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irtgraph tcc}在{cmd:r()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(xvals)}}用于标记x轴的值{p_end}
{synopt:{cmd:r(yvals)}}用于标记y轴的值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irtgraph_tcc.sthlp>}