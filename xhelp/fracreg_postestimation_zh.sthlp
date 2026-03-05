{smcl}
{* *! version 1.0.5  04jun2018}{...}
{viewerdialog predict "dialog fracreg_p"}{...}
{vieweralsosee "[R] fracreg postestimation" "mansection R fracregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fracreg" "help fracreg_zh"}{...}
{viewerjumpto "后估计命令" "fracreg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "fracreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "fracreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "fracreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "fracreg postestimation##example"}
{help fracreg_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] fracreg postestimation} {hline 2}}fracreg的后估计工具{p_end}
{p2col:}({mansection R fracregpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt fracreg} 之后可用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman_star
INCLUDE help post_lincom
{synopt:{helpb fracreg_postestimation##margins:边际}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb fracreg postestimation##predict:预测}}预测值、残差、影响统计量和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast} 和 {cmd:hausman} 适用于 {cmd:svy} 估计结果不当。{cmd:forecast} 对 {cmd:mi} 估计结果也不适用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R fracregpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 19 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:统计量} {opt nooff:set}]

{p 8 19 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh}} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}{cmd:,} {opt sc:ores}


{marker statistic}{...}
{synoptset 15 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主}
{synopt :{opt cm}}条件均值；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt s:igma}}误差项的标准差（对于 {cmd:het()}）{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt sc:ores}}方程级别的评分变量{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，比如条件均值、线性预测、标准误和方程级别的评分。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{cmd:cm}，默认情况下，计算结果的条件均值。

{phang}
{cmd:xb} 计算线性预测。

{phang}
{cmd:sigma} 计算误差项的标准差。仅在指定 {cmd:het()} 时可用。

{phang}
{cmd:stdp} 计算线性预测的标准误。

{phang}
{cmd:scores} 计算方程级别的评分，在 {cmd:fracreg probit} 和 {cmd:fracreg logit} 的情况下，部分 ln L/部分(xb)；如果指定了选项 {cmd:het()}，也可以计算部分 ln L/部分(z gamma)。

{phang}
{cmd:nooffset} 仅当您指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。


INCLUDE help syntax_margins

{synoptset 14}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt cm}}条件均值；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt s:igma}}误差项的标准差（对于 {cmd:het()}）{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt sc:ores}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计条件均值和线性预测的反应边际。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse 401k}

{pstd}
使用分数概率回归获得条件均值参数的一致估计{p_end}
{phang2}{cmd:. fracreg probit prate mrate c.ltotemp##c.ltotemp c.age##c.age i.sole}

{pstd}
获取预测的条件均值
{p_end}
{phang2}{cmd:. predict mpart}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fracreg_postestimation.sthlp>}