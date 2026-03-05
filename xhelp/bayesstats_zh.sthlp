{smcl}
{* *! version 1.0.7  03apr2019}{...}
{vieweralsosee "[BAYES] bayesstats" "mansection BAYES bayesstats"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}
{help bayesstats:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[BAYES] bayesstats} {hline 2}}bayesmh 后的贝叶斯统计{p_end}
{p2col:}({mansection BAYES bayesstats:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
在 {cmd:bayesmh} 和 {cmd:bayes} 前缀之后，可以使用以下子命令：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb bayesstats ess}}有效样本量及相关统计{p_end}
{synopt :{helpb bayesstats summary}}模型参数及其函数的贝叶斯汇总统计{p_end}
{synopt :{helpb bayesstats ic}}贝叶斯信息准则和贝叶斯因子{p_end}
{synopt :{helpb bayesstats grubin}}Gelman-Rubin 收敛诊断{p_end}
{synopt :{helpb bayesstats ppvalues}}贝叶斯预测 p 值（仅在 {cmd:bayesmh} 之后可用）{p_end}
{synoptline}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesstats.sthlp>}