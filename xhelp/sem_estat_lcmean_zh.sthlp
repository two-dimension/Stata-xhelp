{smcl}
{* *! version 1.0.4  04oct2018}{...}
{viewerdialog estat "dialog gsem_estat, message(-lcmean-) name(gsem_estat_lcmean)"}{...}
{vieweralsosee "[SEM] estat lcmean" "mansection SEM estatlcmean"}{...}
{findalias asgsemlca}{...}
{findalias asgsempfmm}{...}
{findalias asgsempfmmtwo}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] gsem postestimation" "help gsem_postestimation_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_lcmean_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_lcmean_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_lcmean_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_lcmean_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_lcmean_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_lcmean_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_lcmean_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_lcmean_zh##results"}
{help sem_estat_lcmean:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[SEM] estat lcmean} {hline 2}}潜在类别边际均值{p_end}
{p2col:}({mansection SEM estatlcmean:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:lcmean} [{cmd:,} {it:选项}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{cmd:nose}}不估计标准误{p_end}
{synopt:{cmd:post}}将边际和它们的VCE作为估计结果{p_end}
{synopt:{it:{help sem_estat_lcmean##display_options:显示选项}}}控制列格式、行间距和行宽{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > LCA（潜在类别分析） > 类别边际均值}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat lcmean} 仅在 {cmd:gsem} 之后使用，而不是 {cmd:sem}。

{pstd}
{cmd:estat lcmean} 报告每个潜在类别中每个结果的边际预测均值的表格。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM estatlcmeanRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt nose}
抑制 VCE 和标准误的计算。

{phang}
{opt post} 
使 {opt estat lcmean} 的行为像 Stata 估计（e类）命令。
{opt estat lcmean} 将估计的边际向量以及估计的方差-协方差矩阵发布到 {opt e()} 中，因此您可以像处理任何其他估计命令的结果那样处理估计的边际。

{marker display_options}{...}
{phang}
{it:显示选项}：
{opt vsquish}，
{opt fvwrap(#)}，
{opt fvwrapon(style)}，
{opth cformat(%fmt)}，
{opt pformat(%fmt)}，
{opt sformat(%fmt)}，和
{opt nolstretch}。


{marker remarks}{...}
{title:备注}

{pstd}
请参见
{findalias gsemlca}，
{findalias gsempfmm}，和
{findalias gsempfmmtwo}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_lca1}{p_end}
{phang2}{cmd:. gsem (accident play insurance stock <- ), logit}{break}
	{cmd:lclass(C 2)}{p_end}

{pstd}潜在类别边际均值{p_end}
{phang2}{cmd:. estat lcmean}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat lcmean} 在 {cmd:r()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}

{p2col 5 18 22 2: 宏}{p_end}
{synopt:{cmd:r(title)}}输出中的标题{p_end}

{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}估计值{p_end}
{synopt:{cmd:r(V)}}估计的方差-协方差矩阵{p_end}
{synopt:{cmd:r(table)}}含边际及其标准误、检验统计量、p值和置信区间的矩阵{p_end}
{p2colreset}{...}

{pstd}
使用 {cmd:post} 选项的 {cmd:estat lcmean} 还在 {cmd:e()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}

{p2col 5 18 22 2: 宏}{p_end}
{synopt:{cmd:e(title)}}输出中的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}估计值{p_end}
{synopt:{cmd:e(V)}}估计的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_lcmean.sthlp>}