{smcl}
{* *! version 1.0.0  28apr2019}{...}
{viewerdialog predict "dialog cmclogit_p"}{...}
{vieweralsosee "[CM] cmclogit postestimation" "mansection CM cmclogitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmclogit" "help cmclogit_zh"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{viewerjumpto "后估计命令" "cmclogit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "cmclogit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "cmclogit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "cmclogit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "cmclogit postestimation##examples"}
{help cmclogit_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[CM] cmclogit postestimation} {hline 2}}cmclogit 的后估计工具{p_end}
{p2col:}({mansection CM cmclogitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:cmclogit} 后，可以使用以下后估计命令：

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
{synopt :{helpb cmclogit postestimation##margins:margins}}调整后的预测、预测边际和边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb cmclogit postestimation##predict:predict}}预测概率、估计的线性预测及其标准误{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM cmclogitpostestimationRemarksandexamples:备注和示例}

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
[{cmd:,} {it:statistic} {opt nooff:set}]

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
{synopt :{opt pr}}选择每个替代品的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
INCLUDE help esample
{p 4 6 2}
{cmd:predict} 如果 {cmd:cmclogit} 使用逐例删除（默认），则按案例删除缺失值；如果 {cmd:cmclogit} 使用替代wise 删除（选项 {cmd:altwise}），则 {cmd:predict} 使用替代wise 删除。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含概率、线性预测和标准误等预测值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt pr}（默认）计算选择每个替代品的概率。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt nooffset} 仅在您为 {cmd:cmclogit} 指定了 {opth offset(varname)} 时相关。它修改了预测的计算，使其忽略偏移变量；线性预测视为 xb 而不是 xb + offset。

{phang}
{cmd:scores} 计算 {cmd:e(b)} 中每个系数的得分。此选项需要一个新变量列表，其长度与 {cmd:e(b)} 中的列数相等。否则，请使用 {it:stub}{cmd:*} 语法来让 {cmd:predict} 生成以 {it:stub} 为前缀的编号变量。


INCLUDE help syntax_cmmargins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pr}}选择每个替代品的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt sc:ores}}与 {cmd:margins} 不兼容{p_end}
{synoptline}

INCLUDE help notes_cmmargins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计概率和线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice}{p_end}
{phang2}{cmd:. cmset consumerid car}{p_end}

{pstd}拟合条件逻辑选择模型{p_end}
{phang2}{cmd:. cmclogit purchase dealers, casevars(i.gender income)}{p_end}

{pstd}测试 {cmd:gender=1} 的系数是否对于相对于 {cmd:American} 基本替代的 {cmd:Japanese} 和 {cmd:Korean} 替代是相同的{p_end}
{phang2}{cmd:. test [Japanese]:1.gender = [Korean]:1.gender}{p_end}

{pstd}计算预测概率{p_end}
{phang2}{cmd:. predict p}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmclogit_postestimation.sthlp>}