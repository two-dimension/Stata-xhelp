{smcl}
{* *! version 1.1.7  10aug2018}{...}
{viewerdialog predict "dialog heckopr_p"}{...}
{vieweralsosee "[R] heckoprobit postestimation" "mansection R heckoprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckoprobit" "help heckoprobit_zh"}{...}
{viewerjumpto "后估计命令" "heckoprobit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "heckoprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "heckoprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "heckoprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "heckoprobit postestimation##examples"}
{help heckoprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[R] heckoprobit postestimation} {hline 2}}heckoprobit的后估计工具{p_end}
{p2col:}({mansection R heckoprobitpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:heckoprobit} 后可以使用以下后估计命令：

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
{synopt:{helpb heckoprobit_postestimation##margins:margins}}边际均值，
预测边际，边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb heckoprobit postestimation##predict:predict}}预测、残差、影响统计以及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 与 {cmd:svy} 估计结果不适用。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R heckoprobitpostestimationRemarksandexamples:备注与示例}

        {mansection R heckoprobitpostestimationMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} 
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic}
{opt o:utcome(outcome)}
{opt nooff:set}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:newvar_reg newvar_sel newvar_1 ... newvar_h newvar_athrho}{c )-}
{ifin}
{cmd:,} {opt sc:ores}

{synoptset 11 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :Main}
{synopt :{opt pm:argin}}边际概率；默认{p_end}
{synopt :{opt p1}}选择记录的水平的二元概率{p_end}
{synopt :{opt p0}}未选择的水平的二元概率{p_end}
{synopt :{opt pcond1}}已选择条件的水平概率{p_end}
{synopt :{opt pcond0}}未选择条件的水平概率{p_end}
{synopt :{opt ps:el}}选择概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt xbs:el}}选择方程的线性预测{p_end}
{synopt :{opt stdps:el}}选择方程的线性预测的标准误差{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
如果不指定 {cmd:outcome()}，则 {cmd:pmargin}（指定一个新变量）假定为 {cmd:outcome(#1)}。{p_end}
{p 4 6 2}
您可以使用 {cmd:pmargin} 指定一个或 k 个新变量，其中 k 是因变量的类别数。{p_end}
{p 4 6 2}
您可以使用 {cmd:psel}、{cmd:xb}、{cmd:stdp}、{cmd:xbsel} 和 {cmd:stdpsel} 指定一个新变量。{p_end}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新的变量，包含预测值，如概率、线性预测和标准误差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pmargin}，默认情况下，计算预测的边际概率。

{pmore}
您可以指定一个或 k 个新变量，其中 k 是因变量的类别数。如果指定了 {opt outcome()} 选项，则必须指定一个新变量。如果指定一个新变量而不指定 {opt outcome()}，则假定为 {cmd:outcome(#1)}。

{pmore}
当指定了 {opt outcome()} 时，计算因变量等于水平 {opt outcome()} 的边际概率。当未指定 {opt outcome()} 时，计算每个结果水平的边际概率。

{phang}
{opt p1} 计算具有选择的结果水平的预测二元概率。

{pmore}
您可以指定一个或 k 个新变量，其中 k 是因变量的类别数。如果指定了 {opt outcome()} 选项，则必须指定一个新变量。如果指定一个新变量而不指定 {opt outcome()}，则假定为 {cmd:outcome(#1)}。

{pmore}
当指定 {opt outcome()} 时，计算因变量等于水平 {opt outcome()} 的二元概率，并且该因变量被观察到。当未指定 {opt outcome()} 时，计算每个结果水平和选择的二元概率。

{phang}
{opt p0} 计算未选择的结果水平的预测二元概率。

{pmore}
您可以指定一个或 k 个新变量，其中 k 是因变量的类别数。如果指定了 {opt outcome()} 选项，则必须指定一个新变量。如果指定一个新变量而不指定 {opt outcome()}，则假定为 {cmd:outcome(#1)}。

{pmore} 
当指定 {opt outcome()} 时，计算因变量等于水平 {opt outcome()} 的二元概率，并且该因变量未被观察到。当未指定 {opt outcome()} 时，计算每个结果水平的未选择的二元概率。

{phang}
{opt pcond1} 计算已选择条件的结果水平的预测概率。

{pmore}
您可以指定一个或 k 个新变量，其中 k 是因变量的类别数。如果指定了 {opt outcome()} 选项，则必须指定一个新变量。如果指定一个新变量而不指定 {opt outcome()}，则假定为 {cmd:outcome(#1)}。

{pmore}
当指定 {opt outcome()} 时，计算给定因变量被观察的情况下，因变量等于水平 {opt outcome()} 的概率。未指定 {opt outcome()} 时，计算每个结果水平的条件选择概率。

{phang}
{opt pcond0} 计算未选择条件的结果水平的预测概率。

{pmore}
您可以指定一个或 k 个新变量，其中 k 是因变量的类别数。如果指定了 {opt outcome()} 选项，则必须指定一个新变量。如果指定一个新变量而不指定 {opt outcome()}，则假定为 {cmd:outcome(#1)}。

{pmore}
当指定 {opt outcome()} 时，计算给定因变量未被观察的情况下，因变量等于水平 {opt outcome()} 的概率。未指定 {opt outcome()} 时，计算每个结果水平的未选择条件的概率。

{phang} {opt psel} 计算预测的单变量（边际）选择概率。

{phang}
{opt xb} 计算因变量的线性预测，如果未指定 {cmd:offset()} 则为 xb，若指定了 {cmd:offset()} 则为 xb + offset。

{phang}
{opt stdp} 计算预测的标准误差，可以认为是观察的协变量模式的预测期望值或均值的标准误差。预测的标准误差也称为拟合值的标准误差。

{phang}
{opt xbsel} 计算选择方程的线性预测，如果在 {cmd:select()} 中未指定 {cmd:offset()}，则为 zg，若指定了 {cmd:offset()}，则为 zg + offset。

{phang}
{opt stdpsel} 计算选择方程的线性预测的标准误差。

{phang}
{opt outcome(outcome)} 指定要计算预测概率的结果。 {opt outcome()} 应包含因变量的一个值或 {opt #1}、{opt #2} 等，其中 {opt #1} 意味着因变量的第一类，{opt #2} 意味着第二类，依此类推。

{marker nooffset}{...}
{phang}
{opt nooffset} 仅在您为 {cmd:heckoprobit} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测视为 xb 而不是 xb + offset。

{phang}
{opt scores} 计算方程级别的得分变量。{p_end}

{pmore}
第一个新变量将包含对回归方程的对数似然的导数。

{pmore}
第二个新变量将包含对选择方程的对数似然的导数。

{pmore}
当因变量取 k 个不同的值时，新变量三至 k+1 将包含对切点的对数似然的导数。

{pmore}
最后一个新变量将包含对最后方程的对数似然的导数（{hi:athrho}）。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :default}每个结果的边际概率{p_end}
{synopt :{opt pm:argin}}边际概率{p_end}
{synopt :{opt p1}}选择的水平的二元概率{p_end}
{synopt :{opt p0}}未选择的水平的二元概率{p_end}
{synopt :{opt pcond1}}已选择条件的概率{p_end}
{synopt :{opt pcond0}}未选择条件的概率{p_end}
{synopt :{opt ps:el}}选择概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt xbs:el}}选择方程的线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt stdps:el}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt pmargin}、{opt p1}、{opt p0}、{opt pcond1} 和 {opt pcond0} 默认指向第一个结果。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，用于概率和线性预测。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse womensat}{p_end}

{pstd}根据就业进行样本选择拟合有序概率模型{p_end}
{phang2}{cmd:. heckoprobit satisfaction educ age, select(work=educ age i.married##c.children)}
{p_end}

{pstd}估计选择概率{p_end}
{phang2}{cmd:. predict sel, psel}{p_end}

{pstd}估计处于第二组且被选中的概率{p_end}
{phang2}{cmd:. predict in2sel, outcome(#2) p1}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <heckoprobit_postestimation.sthlp>}