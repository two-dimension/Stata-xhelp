{smcl}
{* *! version 1.2.6  31may2018}{...}
{viewerdialog predict "dialog bipr_p"}{...}
{vieweralsosee "[R] biprobit postestimation" "mansection R biprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] biprobit" "help biprobit_zh"}{...}
{viewerjumpto "后置估计命令" "biprobit postestimation##description"}{...}
{viewerjumpto "预测" "biprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "biprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "biprobit postestimation##examples"}
{help biprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[R] biprobit postestimation} {hline 2}}biprobit 的后置估计工具{p_end}
{p2col:}({mansection R biprobitpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker description}{...}
{title:后置估计命令}

{pstd}
在 {cmd:biprobit} 之后，可以使用以下后置估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb biprobit_postestimation##margins:边际}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb biprobit postestimation##predict:预测}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}

{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} 
{dtype}
{newvar} 
{ifin}
[{cmd:,} {it:统计量} {opt nooff:set}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_eq1}}
                           {it:{help newvar_zh:newvar_eq2}}
                           {it:{help newvar_zh:newvar_athrho}}{c )-}
{ifin}
{cmd:,}
{opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主}
{synopt :{opt p11}}Pr({it:depvar1}=1, {it:depvar2}=1)；默认值{p_end}
{synopt :{opt p10}}Pr({it:depvar1}=1, {it:depvar2}=0){p_end}
{synopt :{opt p01}}Pr({it:depvar1}=0, {it:depvar2}=1){p_end}
{synopt :{opt p00}}Pr({it:depvar1}=0, {it:depvar2}=0){p_end}
{synopt :{opt pmarg1}}Pr({it:depvar1}=1)；方程1的边际成功概率{p_end}
{synopt :{opt pmarg2}}Pr({it:depvar2}=1)；方程2的边际成功概率{p_end}
{synopt :{opt pcond1}}Pr({it:depvar1}=1 | {it:depvar2}=1){p_end}
{synopt :{opt pcond2}}Pr({it:depvar2}=1 | {it:depvar1}=1){p_end}
{synopt :{opt xb1}}方程1的线性预测{p_end}
{synopt :{opt xb2}}方程2的线性预测{p_end}
{synopt :{opt stdp1}}方程1的线性预测标准误{p_end}
{synopt :{opt stdp2}}方程2的线性预测标准误{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample

INCLUDE help menu_predict

{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如概率、线性预测和标准误。

{marker options_predict}{...}
{title:预测的选项}

{phang}
{opt p11}，默认，计算双变量预测概率 Pr({it:depvar1}=1, {it:depvar2}=1)。

{phang}
{opt p10} 计算双变量预测概率 Pr({it:depvar1}=1, {it:depvar2}=0)。

{phang}
{opt p01} 计算双变量预测概率 Pr({it:depvar1}=0, {it:depvar2}=1)。

{phang}
{opt p00} 计算双变量预测概率 Pr({it:depvar1}=0, {it:depvar2}=0)。

{phang}
{opt pmarg1} 计算成功的单变量（边际）预测概率 Pr({it:depvar1}=1)。

{phang}
{opt pmarg2} 计算成功的单变量（边际）预测概率 Pr({it:depvar2}=1)。

{phang}
{opt pcond1} 计算条件（成功于方程2）预测概率 Pr({it:depvar1}=1 | {it:depvar2}=1)。

{phang}
{opt pcond2} 计算条件（成功于方程1）预测概率 Pr({it:depvar2}=1 | {it:depvar1}=1)。

{phang}
{opt xb1} 计算方程1的probit线性预测。

{phang}
{opt xb2} 计算方程2的probit线性预测。

{phang}
{opt stdp1} 计算方程1线性预测的标准误。

{phang}
{opt stdp2} 计算方程2线性预测的标准误。

{phang}
{opt nooffset} 仅在您为 {cmd:biprobit} 指定了 {opth offset1(varname)} 或 
{opt offset2(varname)} 时相关。它修改 {opt predict} 的计算，使其忽略偏移变量；线性预测被视为 
xb 而不是 xb + offset1，z_[gamma] 而不是 
z_[gamma] + offset2。

{phang}
{opt scores} 计算方程级别的得分变量。

{pmore}
第一个新变量将包含相对于第一个回归方程的对数似然的导数。

{pmore}
第二个新变量将包含相对于第二个回归方程的对数似然的导数。

{pmore}
第三个新变量将包含相对于第三个方程的对数似然的导数 ({hi:athrho})。

INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt p11}}Pr({it:depvar1}=1, {it:depvar2}=1)；默认值{p_end}
{synopt :{opt p10}}Pr({it:depvar1}=1, {it:depvar2}=0){p_end}
{synopt :{opt p01}}Pr({it:depvar1}=0, {it:depvar2}=1){p_end}
{synopt :{opt p00}}Pr({it:depvar1}=0, {it:depvar2}=0){p_end}
{synopt :{opt pmarg1}}Pr({it:depvar1}=1)；方程1的边际成功概率{p_end}
{synopt :{opt pmarg2}}Pr({it:depvar2}=1)；方程2的边际成功概率{p_end}
{synopt :{opt pcond1}}Pr({it:depvar1}=1 | {it:depvar2}=1){p_end}
{synopt :{opt pcond2}}Pr({it:depvar2}=1 | {it:depvar1}=1){p_end}
{synopt :{opt xb1}}方程1的线性预测{p_end}
{synopt :{opt xb2}}方程2的线性预测{p_end}
{synopt :{opt stdp1}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt stdp2}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins

INCLUDE help menu_margins

{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，适用于概率和线性预测。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse school}{p_end}
{phang2}{cmd:. biprobit private vote logptax loginc years}{p_end}

{pstd}预测概率 {cmd:private} = 1 和 {cmd:vote} = 1{p_end}
{phang2}{cmd:. predict both1}

{pstd}预测概率 {cmd:private} = 1 和 {cmd:vote} = 0{p_end}
{phang2}{cmd:. predict prob10, p10}

{pstd}在 {cmd:vote} = 1 的情况下预测 {cmd:private} = 1 的概率{p_end}
{phang2}{cmd:. predict priv_given_vote, pcond1}

{pstd}检验方程之间的系数是否相等{p_end}
{phang2}{cmd:. test [private=vote]: logptax loginc years}

{pstd}检验 {cmd:years} 在方程之间的系数是否整体为0{p_end}
{phang2}{cmd:. test [private]years = 0, notest}{p_end}
{phang2}{cmd:. test [vote]years = 0, accumulate}

{pstd}计算 {cmd:logptax} 和 {cmd:loginc} 对于条件概率 Pr({cmd:vote} = 1|{cmd:private} = 1) 在回归变量均值处的边际效应{p_end}
{phang2}{cmd:. margins, predict(pcond2) dydx(logptax loginc) atmeans}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <biprobit_postestimation.sthlp>}