{smcl}
{* *! version 1.0.0 28apr2019}{...}
{viewerdialog predict "dialog cmxtmixlogit_p"}{...}
{vieweralsosee "[CM] cmxtmixlogit postestimation" "mansection CM cmxtmixlogitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmxtmixlogit" "help cmxtmixlogit_zh"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{viewerjumpto "后估计命令" "cmxtmixlogit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "cmxtmixlogit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "cmxtmixlogit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "cmxtmixlogit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "cmxtmixlogit postestimation##examples"}
{help cmxtmixlogit_postestimation:English Version}
{hline}{...}
{p2colset 1 37 39 2}{...}
{p2col:{bf:[CM] cmxtmixlogit postestimation} {hline 2}}cmxtmixlogit 的后估计工具{p_end}
{p2col:}({mansection CM cmxtmixlogitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:cmxtmixlogit} 之后可用以下标准后估计命令：

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
{synopt :{helpb cmxtmixlogit postestimation##margins:边际}}调整后的预测、预测边际和边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb cmxtmixlogit postestimation##predict:预测}}预测概率、估计的线性预测及其标准误{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy}
估计结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection CM cmxtmixlogitpostestimation方法与公式:方法与公式}

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
{syntab :主要}
{synopt :{opt pr}}选择每个替代品的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synoptline}
INCLUDE help esample
{p 4 6 2}
{cmd:predict} 如果 {cmd:cmxtmixlogit} 使用逐个缺失值删除（默认），则逐个缺失值将被省略；如果 {cmd:cmxtmixlogit} 使用替代性删除（选项 {cmd:altwise}），
{cmd:predict} 则使用替代性删除。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测（如概率或线性预测）的新变量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{cmd:pr}，默认情况下，计算选择每个替代方案的概率。

{phang}
{cmd:xb} 计算线性预测。

{phang}
{cmd:scores} 计算 {cmd:e(b)} 中每个系数的分数。
此选项需要的变量列长度等于 
{cmd:e(b)} 中列的数量。否则，请使用 {it:stub}{cmd:*}
语法，让 {cmd:predict} 生成前缀为 {it:stub} 的枚举变量。


INCLUDE help syntax_cmmargins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pr}}选择每个替代品的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt sc:ores}}与 {cmd:margins} 不允许使用{p_end}
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
{phang2}{cmd:. webuse transport}{p_end}
{phang2}{cmd:. cmset id t alt}{p_end}

{pstd}拟合面板数据混合逻辑选择模型{p_end}
{phang2}{cmd:. cmxtmixlogit choice trcost, casevars(age income) random(trtime)}{p_end}

{pstd}估计指定收入水平的期望选择概率{p_end}
{phang2}{cmd:. margins, at(income=(3 8))}{p_end}

{pstd}与上述相同，但在某个时间点评估预测{p_end}
{phang2}{cmd:. margins, at(income(3 8)) subpop(if t==1)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmxtmixlogit_postestimation.sthlp>}