{smcl}
{* *! version 1.1.5  31may2018}{...}
{viewerdialog predict "dialog heckpr_p"}{...}
{vieweralsosee "[R] heckprobit postestimation" "mansection R heckprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckprobit" "help heckprobit_zh"}{...}
{viewerjumpto "后估计命令" "heckprobit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "heckprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "heckprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "heckprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "heckprobit postestimation##examples"}
{help heckprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[R] heckprobit postestimation} {hline 2}}heckprobit的后估计工具{p_end}
{p2col:}({mansection R heckprobitpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:heckprobit} 之后，以下后估计命令是可用的：

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
{synopt:{helpb heckprobit_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb heckprobit postestimation##predict:predict}}预测、残差、影响统计量及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R heckprobitpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {opt nooff:set} ]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
{it:{help newvar_zh:newvar_sel}}
{it:{help newvar_zh:newvar_athrho}}{c )-}
{ifin}{cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt pm:argin}}Pr({it:depvar}=1); 默认值{p_end}
{synopt :{opt p11}}Pr({it:depvar}=1, {it:depvar_s}=1){p_end}
{synopt :{opt p10}}Pr({it:depvar}=1, {it:depvar_s}=0){p_end}
{synopt :{opt p01}}Pr({it:depvar}=0, {it:depvar_s}=1){p_end}
{synopt :{opt p00}}Pr({it:depvar}=0, {it:depvar_s}=0){p_end}
{synopt :{opt ps:el}}Pr({it:depvar_s}=1){p_end}
{synopt :{opt pc:ond}}Pr({it:depvar}=1 | {it:depvar_s}=1){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt xbs:el}}选择方程的线性预测{p_end}
{synopt :{opt stdps:el}}选择方程的线性预测的标准误{p_end}
{synoptline}
{p2colreset}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新的变量，包含预测值，如概率、线性预测和标准误。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pmargin}，默认情况下，计算成功的单变量（边际）预测概率 Pr({it:depvar}=1)。

{phang}
{opt p11} 计算双变量预测概率 Pr({it:depvar}=1, {it:depvar_s}=1)。

{phang}
{opt p10} 计算双变量预测概率 Pr({it:depvar}=1, {it:depvar_s}=0)。

{phang}
{opt p01} 计算双变量预测概率 Pr({it:depvar}=0, {it:depvar_s}=1)。

{phang}
{opt p00} 计算双变量预测概率 Pr({it:depvar}=0, {it:depvar_s}=0)。

{phang}
{opt psel} 计算单变量（边际）选择预测概率 Pr({it:depvar_s}=1)。

{phang}
{opt pcond} 计算成功的条件（基于选择的）预测概率 Pr({it:depvar}=1 | {it:depvar_s}=1) =
Pr({it:depvar}=1, {it:depvar_s}=1)/Pr({it:depvar_s}=1)。

{phang}
{opt xb} 计算 probit 线性预测。

{phang}
{opt stdp} 计算预测的标准误，可以视为观察值协变量模式的预测期望值或均值的标准误。预测的标准误也称为拟合值的标准误。

{phang}
{opt xbsel} 计算选择方程的线性预测。

{phang}
{opt stdpsel} 计算选择方程的线性预测的标准误。

{phang}
{opt nooffset} 仅在您为 {cmd:heckprobit} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而非 xb + offset。

{phang}
{opt scores} 计算方程级别的得分变量。{p_end}

{pmore}
第一个新变量将包含对回归方程的对数似然的导数。

{pmore}
第二个新变量将包含对选择方程的对数似然的导数。

{pmore}
第三个新变量将包含对第三个方程的对数似然的导数 ({hi:athrho})。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pm:argin}}Pr({it:depvar}=1); 默认值{p_end}
{synopt :{opt p11}}Pr({it:depvar}=1, {it:depvar_s}=1){p_end}
{synopt :{opt p10}}Pr({it:depvar}=1, {it:depvar_s}=0){p_end}
{synopt :{opt p01}}Pr({it:depvar}=0, {it:depvar_s}=1){p_end}
{synopt :{opt p00}}Pr({it:depvar}=0, {it:depvar_s}=0){p_end}
{synopt :{opt ps:el}}Pr({it:depvar_s}=1){p_end}
{synopt :{opt pc:ond}}Pr({it:depvar}=1 | {it:depvar_s}=1){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt xbs:el}}选择方程的线性预测{p_end}
{synopt :{opt stdp}}在 {cmd:margins} 下不允许{p_end}
{synopt :{opt stdps:el}}在 {cmd:margins} 下不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际描述}

{pstd}
{cmd:margins} 估计概率和线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse school}

{pstd}拟合带有样本选择的 probit 模型{p_end}
{phang2}{cmd:. heckprobit private years logptax, sel(vote=years loginc logptax)}

{pstd}估计 {cmd:private} 等于一的边际概率{p_end}
{phang2}{cmd:. predict pmarg}

{pstd}与带有 {cmd:if} 限定符的 probit 模型进行比较{p_end}
{phang2}{cmd:. probit private years if vote==1}

{pstd}计算预测概率{p_end}
{phang2}{cmd:. predict phat}{p_end}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <heckprobit_postestimation.sthlp>}