{smcl}
{* *! version 1.3.0  25sep2014}{...}
{viewerdialog predict "dialog glogit_p"}{...}
{vieweralsosee "[R] glogit" "help glogit_zh"}{...}
{viewerjumpto "描述" "glogit postestimation##description"}{...}
{viewerjumpto "预测的语法" "glogit postestimation##syntax_predict"}{...}
{viewerjumpto "预测的菜单" "glogit postestimation##menu_predict"}{...}
{viewerjumpto "预测的选项" "glogit postestimation##options_predict"}{...}
{viewerjumpto "边际的语法" "glogit postestimation##syntax_margins"}{...}
{viewerjumpto "边际的菜单" "glogit postestimation##menu_margins"}{...}
{viewerjumpto "示例" "glogit postestimation##examples"}
{help glogit_postestimation:English Version}
{hline}{...}
{pstd}
{cmd:blogit}、{cmd:bprobit}、{cmd:glogit} 和 {cmd:gprobit} 仍然有效，但自 Stata 14 起，不再是 Stata 的官方部分。这是原始的帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参见 {helpb glm postestimation} 以获取推荐的替代方案。

{hline}

{title:标题}

{p2colset 5 34 36 2}{...}
{p2col :{hi:[R] glogit postestimation} {hline 2}}glogit、gprobit、blogit 和 bprobit 的后估计工具{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
在 {cmd:glogit}、{cmd:gprobit}、{cmd:blogit} 和 {cmd:bprobit} 后，可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent :* {bf:{help estat ic}}}赤池信息量准则与施瓦茨贝叶斯信息量准则 (AIC 和 BIC){p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
{p2coldent :* {help lrtest_zh}}似然比检验{p_end}
{synopt:{helpb glogit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb glogit postestimation##predict:predict}}预测、残差、影响统计和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt estat ic} 和 {opt lrtest} 不适用于 {opt glogit} 和 {opt gprobit}。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt n}}预测计数；默认{p_end}
{synopt :{opt p:r}}正结果的概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt n}，默认值，计算期望计数，即估计概率乘以 {it:pop_var}，即总人口。

{phang}
{opt pr} 计算正结果的预测概率。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt n}}预测计数；默认{p_end}
{synopt :{opt p:r}}正结果的概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. webuse xmpl2}{p_end}
{phang2}{cmd:. bprobit deaths pop agecat exposed}{p_end}

{pstd}预计死亡人数{p_end}
{phang2}{cmd:. predict number}{p_end}

{pstd}死亡概率{p_end}
{phang2}{cmd:. predict p if e(sample), pr}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <glogit_postestimation.sthlp>}