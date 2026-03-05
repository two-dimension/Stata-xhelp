{smcl}
{* *! version 1.0.9  20apr2018}{...}
{viewerdialog estat "dialog fmm_estat"}{...}
{vieweralsosee "[FMM] estat lcprob" "mansection FMM estatlcprob"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm_postestimation_zh"}{...}
{viewerjumpto "Syntax" "fmm_estat_lcprob_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_estat_lcprob_zh##menu_estat"}{...}
{viewerjumpto "Description" "fmm_estat_lcprob_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_estat_lcprob_zh##linkspdf"}{...}
{viewerjumpto "Options" "fmm_estat_lcprob_zh##options"}{...}
{viewerjumpto "Remarks and examples" "fmm_estat_lcprob_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_estat_lcprob_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_estat_lcprob_zh##results"}
{help fmm_estat_lcprob:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[FMM] estat lcprob} {hline 2}}潜在类别边际概率{p_end}
{p2col:}({mansection FMM estatlcprob:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:lcprob} [{cmd:,} {it:选项}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opt classpr}}潜在类别概率；默认值{p_end}
{synopt :{opt classpost:eriorpr}}后验潜在类别概率{p_end}
{synopt :{opt nose}}不估计标准误{p_end}
{synopt :{opt post}}将边际和其方差协方差作为估计结果{p_end}
{synopt :{help fmm_estat_lcprob##display_options:{it:显示选项}}}控制列格式、行间距和行宽{p_end}
{synoptline}
{p2colreset}{...}


包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat} {cmd:lcprob} 报告边际预测的潜在类别概率的表格。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM estatlcprobRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt classpr}，默认情况下，计算每个潜在类别的边际预测概率。

{phang}
{opt classposteriorpr} 计算每个潜在类别的边际后验概率。
后验概率是潜在类别预测因素和拟合结果密度的函数。

{phang}
{opt nose}
抑制 VCE 和标准误的计算。

{phang}
{opt post} 
使得 {opt estat lcprob} 的行为像一个 Stata 估计（e-class）命令。
{opt estat lcprob} 将估计的边际向量及其估计的方差协方差矩阵发布到 {opt e()}，因此您可以像对待其他估计命令的结果一样处理估计的边际。

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
{title:备注和示例}

{pstd}
{opt estat lcprob} 在
{findalias fmmexrega}，
{findalias fmmexpoisson}，
和
{findalias fmmexzip} 中得到了说明。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse epay}

{pstd}两个互补的对数-对数回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: cloglog epay age i.male}

{pstd}两个类别的成员资格的估计概率{p_end}
{phang2}{cmd:. estat lcprob}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fmm_hsng2}

{pstd}带有内生协变量 {cmd:hsngval} 的两个回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: ivregress rent pcturban (hsngval = faminc)}

{pstd}两个类别的成员资格的估计概率{p_end}
{phang2}{cmd:. estat lcprob}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{opt estat lcprob} 将以下内容存储在 {opt r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观察数{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(title)}}输出中的标题{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:r(b)}}估计值{p_end}
{synopt :{cmd:r(V)}}估计值的方差协方差矩阵{p_end}
{synopt :{cmd:r(table)}}包含边际及其标准误、检验统计量、p值和置信区间的矩阵{p_end}

{pstd}
带有 {opt post} 选项的 {opt estat lcprob} 还将以下内容存储在 {opt e()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:e(title)}}输出中的标题{p_end}
{synopt :{cmd:e(classposteriorpr)}}{cmd:classposteriorpr} 或空{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}估计值{p_end}
{synopt :{cmd:e(V)}}估计值的方差协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_estat_lcprob.sthlp>}