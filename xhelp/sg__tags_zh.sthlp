{smcl}
{* *! version 2.0.7  14may2018}{...}
{* 此 sthlp 文件由 sg__connections_prop.dlg 和 sg__variables_prop.dlg 调用}{...}
{vieweralsosee "[G-4] text" "help graph_text_zh"}{...}
{viewerjumpto "控制标签" "sg__tags_zh##control"}{...}
{viewerjumpto "变量标签" "sg__tags_zh##variable"}{...}
{viewerjumpto "连接标签" "sg__tags_zh##connection"}{...}
{viewerjumpto "标签" "sg__tags_zh##label"}{...}
{viewerjumpto "索引标签" "sg__tags_zh##index"}{...}
{viewerjumpto "示例" "sg__tags_zh##examples"}
{help sg__tags:English Version}
{hline}{...}
{title:标签}

{pstd}
标签为 SEM Builder 提供了一种方式，以控制在 SEM 图中呈现的变量和连接的结果和标签。一些对标签的对话框字段允许显示当前标签文本的对话框字段。更改标签文本将改变在 SEM 图中显示的内容。

{pstd}
许多最常见的组合已经被创建，并可以通过对话框中可用的下拉列表获得。

{pstd}
{help sg__tags##control:控制标签} 控制文本何时显示。

{pstd}
{help sg__tags##variable:变量结果标签} 控制将显示什么内容作为变量的结果。

{pstd}
{help sg__tags##connection:连接标签} 控制连接上显示什么内容。

{pstd}
{help sg__tags##label:标签} 控制变量标签中显示的内容。

{pstd}
{help sg__tags##index:索引标签} 为变量和连接提供索引号（顺序计数）。

{pstd}
标准 Stata 图表标签也可以在 SEM Builder 标签字段中使用。这些包括下标、上标、希腊字母和其他符号的标签；参见 {help graph_text_zh:[G-4] {it:text}}。

{pstd}
多个标签可以在一个文本字段中组合，并且可以与正常文本组合。事实上，字段中可以仅包含常规文本。您可以使用 "e" 来标记每个误差变量为字母 e。
{help sg__tags##examples:示例} 在本文件底部说明了一些组合。

{marker control}{...}
{title:控制标签}

{synoptset 17}{...}
{p2col:控制标签}描述{p_end}
{p2line}
{p2col:{cmd:{c -(}\est{c )-}}}仅在显示估计值时显示{p_end}
{p2col:{cmd:{c -(}\build{c )-}}}仅在构建模型时显示（不显示估计值）{p_end}
{p2col:{cmd:{c -(}\auto{c )-}}}在原始和标准化估计之间自动切换{p_end}
{p2line}

{marker variable}{...}
{title:变量结果标签}

{p2col:变量标签}描述{p_end}
{p2line}
{p2col:{cmd:{c -(}\mean{c )-}}}均值{p_end}
{p2col:{cmd:{c -(}\mean_se{c )-}}}均值的标准误{p_end}
{p2col:{cmd:{c -(}\mean_lb{c )-}}}均值置信区间的下限{p_end}
{p2col:{cmd:{c -(}\mean_ub{c )-}}}均值置信区间的上限{p_end}
{p2col:{cmd:{c -(}\mean_z{c )-}}}均值的 z 统计量{p_end}
{p2col:{cmd:{c -(}\mean_p{c )-}}}均值的 p 值{p_end}
{p2col:{cmd:{c -(}\cons{c )-}}}截距/常数{p_end}
{p2col:{cmd:{c -(}\cons_se{c )-}}}截距的标准误{p_end}
{p2col:{cmd:{c -(}\cons_lb{c )-}}}截距置信区间的下限{p_end}
{p2col:{cmd:{c -(}\cons_ub{c )-}}}截距置信区间的上限{p_end}
{p2col:{cmd:{c -(}\cons_z{c )-}}}截距的 z 统计量{p_end}
{p2col:{cmd:{c -(}\cons_p{c )-}}}截距的 p 值{p_end}
{p2col:{cmd:{c -(}\var{c )-}}}方差{p_end}
{p2col:{cmd:{c -(}\var_se{c )-}}}方差的标准误{p_end}
{p2col:{cmd:{c -(}\var_lb{c )-}}}方差置信区间的下限{p_end}
{p2col:{cmd:{c -(}\var_ub{c )-}}}方差置信区间的上限{p_end}
{p2col:{cmd:{c -(}\errvar{c )-}}}误差的方差{p_end}
{p2col:{cmd:{c -(}\errvar_se{c )-}}}误差方差的标准误{p_end}
{p2col:{cmd:{c -(}\errvar_lb{c )-}}}误差方差置信区间的下限{p_end}
{p2col:{cmd:{c -(}\errvar_ub{c )-}}}误差方差置信区间的上限{p_end}
{p2col:{cmd:{c -(}\errvar_z{c )-}}}误差方差的 z 统计量{p_end}
{p2col:{cmd:{c -(}\errvar_p{c )-}}}误差方差的 p 值{p_end}

{p2col:{cmd:{c -(}\stdmean{c )-}}}标准化均值{p_end}
{p2col:{cmd:{c -(}\stdmean_se{c )-}}}标准化均值的标准误{p_end}
{p2col:{cmd:{c -(}\stdmean_lb{c )-}}}标准化均值的置信区间下限{p_end}
{p2col:{cmd:{c -(}\stdmean_ub{c )-}}}标准化均值的置信区间上限{p_end}
{p2col:{cmd:{c -(}\stdmean_z{c )-}}}标准化均值的 z 统计量{p_end}
{p2col:{cmd:{c -(}\stdmean_p{c )-}}}标准化均值的 p 值{p_end}
{p2col:{cmd:{c -(}\stdcons{c )-}}}标准化截距/常数{p_end}
{p2col:{cmd:{c -(}\stdcons_se{c )-}}}标准化截距的标准误{p_end}
{p2col:{cmd:{c -(}\stdcons_lb{c )-}}}标准化截距置信区间的下限{p_end}
{p2col:{cmd:{c -(}\stdcons_ub{c )-}}}标准化截距置信区间的上限{p_end}
{p2col:{cmd:{c -(}\stdcons_z{c )-}}}标准化截距的 z 统计量{p_end}
{p2col:{cmd:{c -(}\stdcons_p{c )-}}}标准化截距的 p 值{p_end}
{p2col:{cmd:{c -(}\stdvar{c )-}}}标准化方差{p_end}
{p2col:{cmd:{c -(}\stdvar_se{c )-}}}标准化方差的标准误{p_end}
{p2col:{cmd:{c -(}\stdvar_lb{c )-}}}标准化方差的置信区间下限{p_end}
{p2col:{cmd:{c -(}\stdvar_ub{c )-}}}标准化方差的置信区间上限{p_end}
{p2col:{cmd:{c -(}\stderrvar{c )-}}}标准化误差方差{p_end}
{p2col:{cmd:{c -(}\stderrvar_se{c )-}}}标准化误差方差的标准误{p_end}
{p2col:{cmd:{c -(}\stderrvar_lb{c )-}}}标准化误差方差的置信区间下限{p_end}
{p2col:{cmd:{c -(}\stderrvar_ub{c )-}}}标准化误差方差的置信区间上限{p_end}
{p2col:{cmd:{c -(}\stderrvar_z{c )-}}}标准化误差方差的 z 统计量{p_end}
{p2col:{cmd:{c -(}\stderrvar_p{c )-}}}标准化误差方差的 p 值{p_end}

{p2col:{cmd:{c -(}\expvar{c )-}}}暴露变量（针对计数结果）{p_end}
{p2col:{cmd:{c -(}\denomvar{c )-}}}分母变量（针对二项结果）{p_end}
{p2col:{cmd:{c -(}\lcensor{c )-}}}左边界用于左截断或区间测量{p_end}
{p2col:{cmd:{c -(}\rcensor{c )-}}}右边界用于右截断或区间测量{p_end}
{p2col:{cmd:{c -(}\ltrunc{c )-}}}左边界用于左截断{p_end}
{p2col:{cmd:{c -(}\failvar{c )-}}}失败指示变量{p_end}
{p2col:{cmd:{c -(}\aft{c )-}}}加速失败时间度量指示符{p_end}
{p2line}

{pstd}
变量结果标签只能用于变量的标签或结果文本中。

{marker connection}{...}
{title:连接标签}

{p2col:连接标签}描述{p_end}
{p2line}
{p2col:{cmd:{c -(}\parm{c )-}}}参数估计（路径系数或协方差）{p_end}
{p2col:{cmd:{c -(}\parm_se{c )-}}}参数估计的标准误{p_end}
{p2col:{cmd:{c -(}\parm_lb{c )-}}}参数估计置信区间的下限{p_end}
{p2col:{cmd:{c -(}\parm_ub{c )-}}}参数估计置信区间的上限{p_end}
{p2col:{cmd:{c -(}\parm_z{c )-}}}参数估计的 z 统计量{p_end}
{p2col:{cmd:{c -(}\parm_p{c )-}}}参数估计的 p 值{p_end}
{p2col:{cmd:{c -(}\stdparm{c )-}}}标准化参数估计{p_end}
{p2col:{cmd:{c -(}\stdparm_se{c )-}}}标准化参数估计的标准误{p_end}
{p2col:{cmd:{c -(}\stdparm_lb{c )-}}}标准化参数估计置信区间的下限{p_end}
{p2col:{cmd:{c -(}\stdparm_ub{c )-}}}标准化参数估计置信区间的上限{p_end}
{p2col:{cmd:{c -(}\stdparm_z{c )-}}}标准化参数估计的 z 统计量{p_end}
{p2col:{cmd:{c -(}\stdparm_p{c )-}}}标准化参数估计的 p 值{p_end}
{p2line}

{pstd}
连接标签只能用于连接的结果文本中。

{marker label}{...}
{title:标签}

{p2col:标签}描述{p_end}
{p2line}
{p2col:{cmd:{c -(}\varname{c )-}}}观察变量名称{p_end}
{p2col:{cmd:{c -(}\name{c )-}}}潜变量名称{p_end}
{p2col:{cmd:{c -(}\label{c )-}}}变量标签{p_end}
{p2col:{cmd:{c -(}\basename{c )-}}}多层次潜变量基本名称{p_end}
{p2col:{cmd:{c -(}\basename{c )-}}}因子或时间序列操作的基本名称{p_end}
{p2col:{cmd:{c -(}\fvtsop{c )-}}}因子或时间序列操作符{p_end}
{p2col:{cmd:{c -(}\mllevels{c )-}}}多层次潜变量的完整级别规格{p_end}
{p2col:{cmd:{c -(}\mllevelsbr{c )-}}}{cmd:{\mllevels}} 和 surrounding 
				     brackets{p_end}
{p2col:{cmd:{c -(}\mlfinlevel{c )-}}}多层次潜变量的最终级别变量{p_end}
{p2col:{cmd:{c -(}\mlfinlevelbr{c )-}}}{cmd:{\mlfinlevel}} 和 surrounding 
				       brackets{p_end}
{p2line}

{pstd}
标签标签只能用于标签文本字段中。

{marker index}{...}
{title:索引标签}

{p2col:索引标签}描述{p_end}
{p2line}
{p2col:{cmd:{c -(}\i_vars{c )-}}}变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_latent{c )-}}}潜变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_mllatent{c )-}}}多层次潜变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_glm{c )-}}}广义响应序列索引{p_end}
{p2col:{cmd:{c -(}\i_observed{c )-}}}观察变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_lexog{c )-}}}外生潜变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_lendog{c )-}}}内生潜变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_oexog{c )-}}}外生观察变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_oendog{c )-}}}内生观察变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_error{c )-}}}误差变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_lerror{c )-}}}潜变量上的误差变量序列索引{p_end}
{p2col:{cmd:{c -(}\i_oerror{c )-}}}观察变量上的误差变量序列索引{p_end}

{p2col:{cmd:{c -(}\i_edge{c )-}}}连接序列索引{p_end}
{p2col:{cmd:{c -(}\i_path{c )-}}}路径序列索引{p_end}
{p2col:{cmd:{c -(}\i_cov{c )-}}}协方差序列索引{p_end}
{p2col:{cmd:{c -(}\i_errpath{c )-}}}错误路径序列索引{p_end}
{p2line}

{marker examples}{...}
{title:示例}

{title:自定义结果}

{pstd}要更改所有观察外生变量的输出以显示 {p_end}

{phang2}mu_{it:i} = #{p_end}
{phang2}sigma_{it:i}^2 = #{p_end}

{pstd}其中 mu 和 sigma 是希腊符号，i 是外生变量的索引，# 是估计结果，首先打开观察外生变量的变量设置对话框：{p_end}

{phang2}{cmd:设置 > 变量 > 观察外生变量}{p_end}

{pstd}在结果选项卡上，将结果 1: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5}{cmd:{\auto}{&mu}{sub:{\i_oexog}} = {\mean}}{p_end}

{pstd}并将结果 2: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5}{cmd:{\auto}{&sigma}{sub:{\i_oexog}}{sup:2} = {\var}}{p_end}

{pstd}如果您不希望看到索引，只需将上述内容更改如下：{p_end}

{phang2}{cmd:自定义}{space 5}{cmd:{\auto}{&mu} = {\mean}}{p_end}
{phang2}{cmd:自定义}{space 5}{cmd:{\auto}{&sigma}{sup:2} = {\var}}{p_end}

{pstd}标签 {cmd:{\auto}} 被包括在内，以便在更改时显示的结果在标准化值和非标准化值之间切换。如果未指定这个选项，则只会显示非标准化值。

{pstd}上述内容将在构建图时显示文本部分（“mu=” 和 “sigma^2=”），而没有估计结果。如果您希望在估计后只查看这些结果，只需包括 {cmd:{\est}}，如下所示：{p_end}

{phang2}{cmd:自定义}{space 5}{cmd:{\est}{\auto}{&mu}{sub:{\i_oexog}} = {\mean}}{p_end}
{phang2}{cmd:自定义}{space 5}{cmd:{\est}{\auto}{&sigma}{sub:{\i_oexog}}{sup:2} = {\var}}{p_end}

{pstd}
但请注意，添加 {cmd:{\est}} 意味着在模型构建过程中将抑制所有输出，您将不会看到在构建过程中应用的任何约束。在模型构建期间，约束将替代参数显示，但 {cmd:{\est}} 会抑制结果的所有输出，除非正在显示估计值。

{title:自定义标签}

{pstd}假设我们想标记图中所有元素以匹配 {manlink SEM Methods and formulas for sem} 中使用的符号。为了做到这一点，我们必须按如下方式更改标签标签： {p_end}

{pstd}要将观察内生变量标记为 y_{it:i}，请打开观察内生变量的变量设置对话框：{p_end}

{phang2}{cmd:设置 > 变量 > 观察内生变量}{p_end}

{pstd}在标签选项卡上，将观察到的: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5} {cmd:y{sub:{\i_oendog}}}{p_end}

{pstd}要将观察外生变量标记为 x_{it:i}，请打开观察外生变量的变量设置对话框：{p_end}

{phang2}{cmd:设置 > 变量 > 观察外生变量}{p_end}

{pstd}在标签选项卡上，将观察到的: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5} {cmd:x{sub:{\i_oexog}}}{p_end}

{pstd}要将潜在内生变量标记为 eta_{it:i}，请打开潜在内生变量的变量设置对话框：{p_end}

{phang2}{cmd:设置 > 变量 > 潜在内生变量}{p_end}

{pstd}在标签选项卡上，将潜在: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5} {cmd:{&eta}{sub:{\i_lendog}}}{p_end}

{pstd}要将潜在外生变量标记为 xi_{it:i}，请打开潜在外生变量的变量设置对话框：{p_end}

{phang2}{cmd:设置 > 变量 > 潜在外生变量}{p_end}

{pstd}在标签选项卡上，将潜在: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5} {cmd:{&xi}{sub:{\i_lexog}}}{p_end}

{pstd}要将潜在误差标记为 e.eta_{it:i} 和观察误差标记为 e.y_{it:i}，请打开所有误差变量的变量设置对话框：{p_end}

{phang2}{cmd:设置 > 变量 > 误差}{p_end}

{pstd}在标签选项卡上，将潜在: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5} {cmd:e.{&eta}{sub:{\i_lendog}}}{p_end}

{pstd}并将观察到的: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5} {cmd:e.y{sub:{\i_oendog}}}{p_end}


{title:自定义路径结果}

{pstd}要更改路径结果的输出以在构建图时显示 beta，并在估计后显示 beta = #，请打开路径的连接设置对话框：{p_end}

{phang2}{cmd:设置 > 连接 > 路径}{p_end}

{pstd}在结果选项卡上，将结果 1: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5}{cmd:{\build}{&beta}}{p_end}

{pstd}并将结果 2: 更改为 {p_end}

{phang2}{cmd:自定义}{space 5}{cmd:{\est}{\auto}{&beta} = {\parm}}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sg__tags.sthlp>}