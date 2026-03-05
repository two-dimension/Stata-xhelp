{smcl}
{* *! version 1.0.0  28apr2019}{...}
{viewerdialog predict "dialog cmmixlogit_p"}{...}
{vieweralsosee "[CM] cmmixlogit postestimation" "mansection CM cmmixlogitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmmixlogit" "help cmmixlogit_zh"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{viewerjumpto "后效命令" "cmmixlogit postestimation##description"}{...}
{viewerjumpto "链接到PDF文档" "cmmixlogit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "cmmixlogit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "cmmixlogit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "cmmixlogit postestimation##examples"}
{help cmmixlogit_postestimation:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[CM] cmmixlogit postestimation} {hline 2}}cmmixlogit 的后效工具{p_end}
{p2col:}({mansection CM cmmixlogitpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后效命令}

{pstd}
在 {cmd:cmmixlogit} 之后可以使用以下后效命令：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt :{helpb cmmixlogit postestimation##margins:margins}}调整后的预测、预测边际和边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb cmmixlogit postestimation##predict:predict}}预测概率、估计的线性预测及其标准误{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 在 {cmd:svy} 估计结果中不适用。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection CM cmmixlogitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


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
{synopt :{opt pr}}选择每个替代方案的概率（默认选项）{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synoptline}
INCLUDE help esample
{p 4 6 2}
{cmd:predict} 如果 {cmd:cmmixlogit} 使用了逐个缺失值删除（默认），则会逐个删除缺失值；如果 {cmd:cmmixlogit} 使用了替代删除（选项 {cmd:altwise}），
{cmd:predict} 会使用替代删除。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含概率或线性预测的预测的新变量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt pr}（默认选项）计算选择每个替代方案的概率。

{phang}
{opt xb}计算线性预测。

{phang}
{opt scores}计算 {cmd:e(b)} 中每个系数的得分。此选项要求新变量列表的长度与 {cmd:e(b)} 中的列数相等。否则，使用 {it:stub}{cmd:*} 语法让 {cmd:predict} 生成带有前缀 {it:stub} 的枚举变量。


INCLUDE help syntax_cmmargins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pr}}选择每个替代方案的概率（默认选项）{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt sc:ores}}在 {cmd:margins} 中不允许使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_cmmargins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，适用于概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse inschoice}{p_end}
{phang2}{cmd:. cmset id insurance}{p_end}
{phang2}{cmd:. cmmixlogit choice premium, random(deductible) intpoints(1000)}{p_end}

{pstd}估算选择每个保险计划的人的比例{p_end}
{phang2}{cmd:. margins}{p_end}

{pstd}与上面相同，但考虑到 {cmd:HCorp} 的保费增加 10% {p_end}
{phang2}{cmd:. margins, at(premium=generate(premium*1.10)) alternative(HCorp)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmmixlogit_postestimation.sthlp>}