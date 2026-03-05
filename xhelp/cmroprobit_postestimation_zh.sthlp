{smcl}
{* *! version 1.0.0  13may2019}{...}
{viewerdialog predict "dialog cmroprobit_p"}{...}
{viewerdialog estat "dialog cmroprobit_estat"}{...}
{vieweralsosee "[CM] cmroprobit 后估计" "mansection CM cmroprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmroprobit" "help cmroprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmmprobit" "help cmmprobit_zh"}{...}
{vieweralsosee "[CM] cmmprobit 后估计" "help cmmprobit postestimation"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{viewerjumpto "后估计命令" "cmroprobit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "cmroprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "cmroprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "cmroprobit postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "cmroprobit postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "cmroprobit postestimation##examples"}
{help cmroprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[CM] cmroprobit 后估计} {hline 2}}cmroprobit 的后估计工具{p_end}
{p2col:}({mansection CM cmroprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:cmroprobit} 之后，以下后估计命令特别值得关注：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb cmroprobit postestimation##estat:estat covariance}}替代方案效用误差的协方差矩阵{p_end}
{synopt :{helpb cmroprobit postestimation##estat:estat correlation}}替代方案效用误差的相关矩阵{p_end}
{synopt :{helpb cmroprobit postestimation##estat:estat facweights}}协方差因子权重矩阵{p_end}
{synoptline}

{pstd}
以下标准后估计命令也可用：

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
{synopt :{helpb cmroprobit postestimation##margins:margins}}调整后的预测、预测边际和边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb cmroprobit postestimation##predict:predict}}预测可能性、估计线性预测及其标准误{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM cmroprobitpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:统计量}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}{cmd:,}
{opt sc:ores

{synoptset 20 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}每个排名的概率，默认值{p_end}
{synopt :{opt pr1}}概率替代方案被优先选择{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
INCLUDE help esample
{p 4 6 2}
{cmd:predict} 如果 {cmd:cmroprobit} 使用逐案例删除（默认），则逐案例省略缺失值；如果 {cmd:cmroprobit} 使用可替代删除（选项 {cmd:altwise}），{cmd:predict} 使用可替代删除。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新的变量，包含诸如概率、线性预测和标准误的预测值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{cmd:pr}，默认情况下，计算每个排名的概率。
对于每个案例，计算一个概率用于
{cmd:e(depvar)} 中的排名。

{phang}
{cmd:pr1} 计算每个替代方案被优先选择的概率。

{phang}
{cmd:xb} 计算线性预测
xb_{ij} + {bf:z}_i alpha_j 对于替代方案 j 和案例 i。

{phang}
{cmd:stdp} 计算线性预测的标准误。

{phang}
{cmd:scores} 计算 {cmd:e(b)} 中每个系数的分数。
该选项要求一个新的变量列表，长度等于
{cmd:e(b)} 中的列数。否则，请使用 {it:stub}{cmd:*}
语法，让 {cmd:predict} 生成带有前缀 {it:stub} 的编号变量。


INCLUDE help syntax_cmmargins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt pr}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt pr1}}概率替代方案被优先选择；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt sc:ores}}与 {cmd:margins} 不兼容{p_end}
{synoptline}

INCLUDE help notes_cmmargins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，用于
概率和线性预测。


{marker syntax_estat}{...}
{marker estat}{...}
{title:estat 的语法}

{pstd}
替代方案效用误差的协方差矩阵

{p 8 16 2}
{cmd:estat} {cmdab:cov:ariance}
[{cmd:,}
{opth for:mat(%fmt)}
{opth bor:der(matlist##bspec:bspec)}
{opt left(#)}]


{pstd}
替代方案效用误差的相关矩阵

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
{cmd:estat covariance} 计算替代方案效用（潜变量）误差的估计方差-协方差矩阵。
估计值将被显示，方差-协方差矩阵存储在 {cmd:r(cov)} 中。

{pstd}
{cmd:estat correlation} 计算替代方案效用（潜变量）误差的估计相关矩阵。估计值将被显示，相关矩阵存储在 {cmd:r(cor)} 中。

{pstd}
{cmd:estat facweights} 显示协方差因子权重矩阵并将其存储在 {cmd:r(C)} 中。


{marker options_estat_co}{...}
{title:estat 协方差、estat 相关和 estat facweights 的选项}

{phang}
{opth format(%fmt)} 设置矩阵显示格式。
{cmd:estat covariance} 和 {cmd:estat facweights} 的默认值为
{cmd:format(%9.0g)}；{cmd:estat correlation} 的默认值为 {cmd:format(%9.4f)}。

{phang}
{opt border(bspec)} 设置矩阵显示边框样式。
默认为 {cmd:border(all)}。请参见 {manhelp matlist P}。

{phang}
{opt left(#)} 设置矩阵显示左侧缩进。
默认为 {cmd:left(2)}。请参见 {manhelp matlist P}。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. webuse travel}{p_end}
{phang2}{cmd:. cmset id mode}{p_end}
{phang2}{cmd:. cmroprobit choice travelcost termtime, casevars(income)}{p_end}

{pstd}计算每个排名的概率{p_end}
{phang2}{cmd:. predict prob}{p_end}

{pstd}获取效用方程中的误差相关性{p_end}
{phang2}{cmd:. estat correlation}{p_end}

{pstd}获取效用方程中的误差协方差{p_end}
{phang2}{cmd:. estat covariance}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmroprobit_postestimation.sthlp>}