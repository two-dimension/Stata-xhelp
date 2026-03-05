{smcl}
{* *! version 1.0.0  28apr2019}{...}
{viewerdialog predict "dialog cmmprobit_p"}{...}
{viewerdialog estat "dialog cmmprobit_estat"}{...}
{vieweralsosee "[CM] cmmprobit postestimation" "mansection CM cmmprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmmprobit" "help cmmprobit_zh"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{viewerjumpto "后续估计命令" "cmmprobit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "cmmprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "cmmprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "cmmprobit postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "cmmprobit postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "cmmprobit postestimation##examples"}
{help cmmprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[CM] cmmprobit postestimation} {hline 2}}cmmprobit 的后续估计工具{p_end}
{p2col:}({mansection CM cmmprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在执行 {cmd:cmmprobit} 之后，以下后续估计命令特别值得关注：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb cmmprobit postestimation##estat:estat covariance}}替代选项的效用误差的协方差矩阵{p_end}
{synopt :{helpb cmmprobit postestimation##estat:estat correlation}}替代选项的效用误差的相关矩阵{p_end}
{synopt :{helpb cmmprobit postestimation##estat:estat facweights}}协方差因子权重矩阵{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后续估计命令也可用：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest
{synopt :{helpb cmmprobit postestimation##margins:margins}}调整后的预测、预测边际和边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb cmmprobit postestimation##predict:predict}}预测概率、估计线性预测及其标准误差{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection CM cmmprobitpostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}{cmd:,}
{opt sc:ores}

{synoptset 20 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt pr}}选择每个替代选项的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synoptline}
INCLUDE help esample
{p 4 6 2}
{cmd:predict} 在 {cmd:cmmprobit} 使用逐案例删除的情况下省略缺失值；如果 {cmd:cmmprobit} 使用的是替代删除 (选项 {cmd:altwise})，{cmd:predict} 将使用替代删除。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如概率、线性预测和标准误差的预测结果。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{opt pr}，默认选项，计算选择每个替代选项的概率。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt scores} 计算 {cmd:e(b)} 中每个系数的评分。
此选项需要一个长度等于 {cmd:e(b)} 中列数的新变量列表。否则，请使用 {it:stub}{cmd:*} 语法，让 {cmd:predict} 生成带有前缀 {it:stub} 的枚举变量。


INCLUDE help syntax_cmmargins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pr}}选择每个替代选项的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt sc:ores}}与 {cmd:margins} 不允许{p_end}
{synoptline}

INCLUDE help notes_cmmargins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估算响应的边际概率和线性预测。


{marker syntax_estat}{...}
{marker estat}{...}
{title:estat 的语法}

{pstd}
替代选项的效用误差的协方差矩阵

{p 8 16 2}
{cmd:estat} {cmdab:cov:ariance}
[{cmd:,}
{opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)}
{opt left(#)}]


{pstd}
替代选项的效用误差的相关矩阵

{p 8 16 2}
{cmd:estat} {cmdab:cor:relation}
[{cmd:,}
{opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)}
{opt left(#)}]


{pstd}
协方差因子权重矩阵

{p 8 16 2}
{cmd:estat} {cmdab:facw:eights}
[{cmd:,}
{opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)}
{opt left(#)}]


INCLUDE help menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat covariance} 计算替代选项的效用 (潜变量) 误差的估计方差-协方差矩阵。
估计结果将显示，并且方差-协方差矩阵将存储在 {cmd:r(cov)} 中。

{pstd}
{cmd:estat correlation} 计算替代选项的效用 (潜变量) 误差的估计相关矩阵。估计结果将显示，并且相关矩阵将存储在 {cmd:r(cor)} 中。

{pstd}
{cmd:estat facweights} 显示协方差因子权重矩阵并将其存储在 {cmd:r(C)} 中。


{marker options_estat_co}{...}
{title:estat covariance、estat correlation 和 estat facweights 的选项}

{phang}
{opth format(fmt)} 设置矩阵显示格式。
{cmd:estat covariance} 和 {cmd:estat facweights} 的默认值为 
{cmd:format(%9.0g)}；{cmd:estat correlation} 的默认值为 
{cmd:format(%9.4f)}。

{phang}
{opt border(bspec)} 设置矩阵显示边框样式。
默认值为 {cmd:border(all)}。请参阅 {manhelp matlist P}。

{phang}
{opt left(#)} 设置矩阵显示的左缩进。
默认值为 {cmd:left(2)}。请参阅 {manhelp matlist P}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse travel}{p_end}
{phang2}{cmd:. cmset id mode}{p_end}
{phang2}{cmd:. cmmprobit choice travelcost termtime, casevars(income)}{p_end}

{pstd}计算选择每个替代选项的概率{p_end}
{phang2}{cmd:. predict prob}{p_end}

{pstd}获取效用方程中误差的相关性{p_end}
{phang2}{cmd:. estat correlation}{p_end}

{pstd}获取效用方程中误差的协方差{p_end}
{phang2}{cmd:. estat covariance}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmmprobit_postestimation.sthlp>}