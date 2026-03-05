{smcl}
{* *! version 1.0.12  01mar2018}{...}
{viewerdialog predict "dialog mlexp_p"}{...}
{vieweralsosee "[R] mlexp postestimation" "mansection R mlexppostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mlexp" "help mlexp_zh"}{...}
{viewerjumpto "后推断命令" "mlexp postestimation##description"}{...}
{viewerjumpto "预测" "mlexp postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "mlexp postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "mlexp postestimation##example"}
{help mlexp_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[R] mlexp postestimation} {hline 2}}mlexp 的后推断工具{p_end}
{p2col:}({mansection R mlexppostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后推断命令}

{pstd}
在 {cmd:mlexp} 之后，可用以下后推断命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb mlexp_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb mlexp postestimation##syntax_predict:predict}}线性预测和得分{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
INCLUDE help post_lrtest_star_msg


{marker syntax_predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {opt xb} {cmdab:eq:uation(#}{it:eqno}{c |}{it:eqname}{cmd:)}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_1}} ... {it:{help newvar_zh:newvar_q}}{c )-}
{ifin}
[{cmd:,}
{opt sc:ores}]

{phang}
得分仅对估计样本中的观测值有效。q表示模型中的方程数量。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，其中包含预测值，例如线性
预测和方程级得分。


{marker options_predict}{...}
{title:预测的选项}

{phang}
{cmd:xb} 计算线性预测。 

{phang}{cmd:equation(#}{it:eqno}{c |}{it:eqname}{cmd:)} 指定希望获得线性预测的方程。指定 {cmd:equation(#1)}
表示对第一方程进行计算。指定
{cmd:equation(demand)} 表示对名为 {cmd:demand} 的方程进行计算，前提是模型中存在名为 {cmd:demand} 的方程。

{pmore}
如果您指定一个新变量名称并省略 {cmd:equation()}，结果
与您指定 {cmd:equation(#1)} 相同。

{pmore}
有关在多方程估计命令后使用 {cmd:predict} 的更多信息，请参见 {manhelp predict R}。

{phang}
{opt scores} 计算方程级得分变量。第 {it:j} 个新变量将包含
模型第 {it:j} 个方程的得分。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认设置为第一个方程。
{p_end}


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}经典线性回归{p_end}
{phang2}{cmd:. mlexp (ln(normalden(mpg, {b0}+{b1}*gear, {sigma})))}{p_end}

{pstd}计算得分{p_end}
{phang2}{cmd:. predict s*, scores}{p_end}

{pstd}
具有回归变量线性组合的概率回归{p_end}
{phang2}{cmd:. mlexp (ln(cond(foreign==1, normal({xb:gear_ratio turn _cons}),}
{cmd:normal(-1*({xb:}))))), vce(robust)}{p_end}

{pstd}用无条件标准误估算成功的边际概率{p_end}
{phang2}{cmd:. margins, expression(normal(xb())) vce(unconditional)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mlexp_postestimation.sthlp>}