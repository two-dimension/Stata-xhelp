{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog predict "dialog rreg_p"}{...}
{vieweralsosee "[R] rreg postestimation" "mansection R rregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] rreg" "help rreg_zh"}{...}
{viewerjumpto "后验评估命令" "rreg postestimation##description"}{...}
{viewerjumpto "预测" "rreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "rreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "rreg postestimation##examples"}
{help rreg_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[R] rreg postestimation} {hline 2}}rreg 的后验评估工具{p_end}
{p2col:}({mansection R rregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验评估命令}

{pstd}
在 {cmd:rreg} 之后可用以下后验评估命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_lincom
{synopt:{helpb rreg_postestimation##margins:margins}}边际
	均值，预测边际，边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb rreg postestimation##predict:predict}}预测、残差、
影响统计和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast} 不适用于 {cmd:mi} 估计结果。{p_end}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 17 8}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt hat}}帽子矩阵的对角元素{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如
线性预测、标准误、残差以及帽子矩阵的对角元素等预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认值，计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt residuals} 计算残差。

{phang}
{opt hat} 计算帽子矩阵的对角元素。你
必须运行带有 {opt genwt()} 选项的 {opt rreg} 命令。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt r:esiduals}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt hat}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. rreg mpg foreign foreign#c.weight}{p_end}

{pstd}测试国内汽车的重量系数是否等于外国汽车的重量系数{p_end}
{phang2}{cmd:. test 0.foreign#c.weight = 1.foreign#c.weight}

{pstd}获取预测值{p_end}
{phang2}{cmd:. predict predmpg}

{pstd}获取残差{p_end}
{phang2}{cmd:. predict r, resid}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rreg_postestimation.sthlp>}