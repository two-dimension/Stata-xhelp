{smcl}
{* *! version 1.0.9  20apr2018}{...}
{viewerdialog estat "dialog fmm_estat"}{...}
{vieweralsosee "[FMM] estat lcmean" "mansection FMM estatlcmean"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm_postestimation_zh"}{...}
{viewerjumpto "Syntax" "fmm_estat_lcmean_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_estat_lcmean_zh##menu_estat"}{...}
{viewerjumpto "Description" "fmm_estat_lcmean_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_estat_lcmean_zh##linkspdf"}{...}
{viewerjumpto "Options" "fmm_estat_lcmean_zh##options"}{...}
{viewerjumpto "Remarks and examples" "fmm_estat_lcmean_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_estat_lcmean_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_estat_lcmean_zh##results"}
{help fmm_estat_lcmean:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[FMM] estat lcmean} {hline 2}}潜在类别边际均值{p_end}
{p2col:}({mansection FMM estatlcmean:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:lcmean} [{cmd:,} {it:选项}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opt nose}}不估计标准误{p_end}
{synopt :{opt post}}将后续边际及其方差协方差作为估计结果{p_end}
{synopt :{help fmm_estat_lcmean##display_options:{it:显示选项}}}控制列格式、行间距和线宽{p_end}
{synoptline}
{p2colreset}{...}


包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
{opt estat lcmean}报告每个潜在类别中结果的边际预测均值的表格。对于 {opt ivregress}、{opt mlogit}、{opt oprobit} 和 {opt ologit}，会为每个结果生成一张表。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM estatlcmeanRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt nose}抑制方差协方差和标准误的计算。

{phang}
{opt post}使得 {cmd:estat} {cmd:lcmean} 的行为类似于 Stata 估计（e类）命令。 {cmd:estat} {cmd:lcmean} 将估计的边际向量以及估计的方差-协方差矩阵发布到 {cmd:e()}，因此你可以将估计的边际视为来自其他任何估计命令的结果。

{marker display_options}{...}
{phang}
{it:显示选项}:
{opt vsquish}、{opt fvwrap(#)}、{opt fvwrapon(style)}、{opth cformat(%fmt)}、{opt pformat(%fmt)}、{opt sformat(%fmt)}，以及 {opt nolstretch}。


{marker remarks}{...}
{title:备注和示例}

{pstd}
{opt estat lcmean} 在 {findalias fmmexpoisson} 和 {findalias fmmexzip} 中进行了说明。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse epay}

{pstd}两个逻辑回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: logit epay age i.male}

{pstd}每个潜在类别中 {cmd:epay} 的估计边际概率{p_end}
{phang2}{cmd:. estat lcmean}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_mixture}

{pstd}两个泊松回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: poisson drvisits private medicaid c.age##c.age actlim chronic}

{pstd}每个潜在类别中 {cmd:drvisits} 的估计边际数{p_end}
{phang2}{cmd:. estat lcmean}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{opt estat lcmean} 将以下内容存储在 {opt r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观察值的数量{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt :{cmd:r(title)}}输出中的标题{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt :{cmd:r(b)}}估计{p_end}
{synopt :{cmd:r(V)}}估计的方差協方差矩阵{p_end}
{synopt :{cmd:r(table)}}包含边际及其标准误、统计检验、p值和置信区间的矩阵{p_end}

{pstd}
使用 {opt post} 选项的 {opt estat lcmean} 还会在 {opt e()} 中存储以下内容：

{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察值的数量{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt :{cmd:e(title)}}输出中的标题{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}估计{p_end}
{synopt :{cmd:e(V)}}估计的方差协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_estat_lcmean.sthlp>}