{smcl}
{* *! version 1.0.4  04oct2018}{...}
{viewerdialog estat "dialog gsem_estat, message(-lcprob-) name(gsem_estat_lcprob)"}{...}
{vieweralsosee "[SEM] estat lcprob" "mansection SEM estatlcprob"}{...}
{findalias asgsemlca}{...}
{findalias asgsempfmm}{...}
{findalias asgsempfmmtwo}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem"}{...}
{vieweralsosee "[SEM] gsem postestimation" "help gsem_postestimation_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_lcprob_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_lcprob_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_lcprob_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_lcprob_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_lcprob_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_lcprob_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_lcprob_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_lcprob_zh##results"}
{help sem_estat_lcprob:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[SEM] estat lcprob} {hline 2}}潜在类别边际概率{p_end}
{p2col:}({mansection SEM estatlcprob:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:lcprob} [{cmd:,} {it:选项}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{opt classpr}}潜在类别概率；默认选项{p_end}
{synopt:{opt classpost:eriorpr}}后验潜在类别概率{p_end}

{synopt:{opt nose}}不计算标准误{p_end}
{synopt:{opt post}}以估计结果的形式后处理边际和它们的VCE{p_end}
{synopt:{it:{help sem_estat_lcprob##display_options:显示选项}}}控制列格式、行间距和线宽{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 潜在类别分析 (LCA) > 类别边际概率}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat} {cmd:lcprob} 用于 {cmd:gsem} 之后，但不用于 {cmd:sem}。

{pstd}
{cmd:estat} {cmd:lcprob} 报告潜在类别边际预测概率的表格。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM estatlcprobRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt classpr}（默认）为每个潜在类别计算边际预测概率。

{phang}
{opt classposteriorpr} 为每个潜在类别计算边际预测后验概率。
后验概率是潜在类别预测变量和拟合结果密度的函数。

{phang}
{opt nose}
抑制计算VCE和标准误。

{phang}
{opt post}
使得 {opt estat lcprob} 类似于 Stata 估计 (e-class) 命令。
{opt estat lcprob} 将估计的边际向量以及估计的方差协方差矩阵发布到 {opt e()} 中，因此您可以将估计的边际视为任何其他估计命令的结果。

{marker display_options}{...}
{phang}
{it:显示选项}：
{opt vsquish},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
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

{pstd}潜在类别边际概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat lcprob} 在 {cmd:r()} 中存储如下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}

{p2col 5 23 25 2: 宏}{p_end}
{synopt:{cmd:r(title)}}输出中的标题{p_end}
{synopt:{cmd:r(classposteriorpr)}}{cmd:classposteriorpr}{p_end}

{p2col 5 23 25 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}估计值{p_end}
{synopt:{cmd:r(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:r(table)}}包含边际及其标准误、检验统计量、p值和置信区间的矩阵{p_end}
{p2colreset}{...}

{pstd}
带有 {cmd:post} 选项的 {cmd:estat lcprob} 还在 {cmd:e()} 中存储以下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}

{p2col 5 23 25 2: 宏}{p_end}
{synopt:{cmd:e(title)}}输出中的标题{p_end}
{synopt:{cmd:e(classposteriorpr)}}{cmd:classposteriorpr}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 23 25 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}估计值{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_lcprob.sthlp>}