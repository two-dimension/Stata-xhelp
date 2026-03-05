{smcl}
{* *! version 1.0.13  20sep2018}{...}
{viewerdialog tebalance "dialog tebalance"}{...}
{vieweralsosee "[TE] tebalance summarize" "mansection TE tebalancesummarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects" "help stteffects_zh"}{...}
{vieweralsosee "[TE] stteffects ipw" "help stteffects ipw"}{...}
{vieweralsosee "[TE] stteffects ipwra" "help stteffects ipwra"}{...}
{vieweralsosee "[TE] tebalance" "help tebalance_zh"}{...}
{vieweralsosee "[TE] teffects aipw" "help teffects aipw"}{...}
{vieweralsosee "[TE] teffects ipw" "help teffects ipw"}{...}
{vieweralsosee "[TE] teffects ipwra" "help teffects ipwra"}{...}
{vieweralsosee "[TE] teeffects nnmatch" "help teffects nnmatch"}{...}
{vieweralsosee "[TE] teeffects overlap" "help teffects overlap"}{...}
{vieweralsosee "[TE] teeffects psmatch" "help teffects psmatch"}{...}
{viewerjumpto "Syntax" "tebalance summarize##syntax"}{...}
{viewerjumpto "Menu" "tebalance summarize##menu"}{...}
{viewerjumpto "Description" "tebalance summarize##description"}{...}
{viewerjumpto "Links to PDF documentation" "tebalance_summarize_zh##linkspdf"}{...}
{viewerjumpto "Option" "tebalance summarize##option"}{...}
{viewerjumpto "Example" "tebalance summarize##example"}{...}
{viewerjumpto "Stored results" "tebalance summarize##results"}
{help tebalance_summarize:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[TE] tebalance summarize} {hline 2}}协变量平衡摘要统计{p_end}
{p2col:}({mansection TE tebalancesummarize:查看完整PDF手册条目}){p_end}

{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:tebalance} {cmd:summarize} [{varlist}] [{cmd:,} {cmdab:base:line}]

{pstd}
{it:varlist} 可以包含因子变量；请参见 {help fvvarlist_zh}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效果 > 平衡 > 摘要}

{marker description}{...}
{title:描述}

{pstd}
{cmd:tebalance summarize} 报告用于检查治疗组之间协变量平衡的诊断统计数据，这些数据是在通过 {help teffects_zh} 逆概率加权估计器、{cmd:teffects} 匹配估计器或 {help stteffects_zh} 逆概率加权估计器进行估计后得出的。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE tebalancesummarizeQuickstart:快速入门}

        {mansection TE tebalancesummarizeRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。

{marker option}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:baseline} 指定 {cmd:tebalance summarize} 按治疗水平报告均值和方差。

{marker example}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
估计母亲的吸烟行为 ({cmd:mbsmoke}) 对其孩子出生体重 ({cmd:bweight}) 的影响，同时控制婚姻状况 ({cmd:mmarried})、母亲年龄 ({cmd:mage})、母亲在婴儿第一孕期是否有产前医生访视 ({cmd:prenatal1})，以及这个婴儿是否是母亲的第一个孩子 ({cmd:fbaby}){p_end}
{phang2}{cmd:. teffects psmatch (bweight) (mbsmoke mmarried mage prenatal1 fbaby), generate(matchv)}

{pstd}
查看原始数据和匹配样本的标准化差异和方差比{p_end}
{phang2}{cmd:. tebalance summarize}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tebalance} {cmd:summarize} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 24 28 2:矩阵}{p_end}
{synopt :{cmd:r(size)}}原始和匹配或加权样本中的观察数{p_end}
{synopt :{cmd:r(table)}}协变量统计表{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tebalance_summarize.sthlp>}