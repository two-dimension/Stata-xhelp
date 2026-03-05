{smcl}
{* *! version 1.1.6  04jun2018}{...}
{viewerdialog "predict" "dialog xtologit"}{...}
{vieweralsosee "[XT] xtologit postestimation" "mansection XT xtologitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtologit" "help xtologit_zh"}{...}
{viewerjumpto "Postestimation commands" "xtologit postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtologit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "xtologit postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "xtologit postestimation##syntax_margins"}{...}
{viewerjumpto "Example" "xtologit postestimation##example"}
{help xtologit_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[XT] xtologit postestimation} {hline 2}}xtologit 的事后估计工具{p_end}
{p2col:}({mansection XT xtologitpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
在使用 {cmd:xtologit} 之后，可以使用以下的事后估计命令：

{synoptset 17}{...}
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
{synopt:{helpb xtologit_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtologit postestimation##predict:predict}}预测、残差、影响统计和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtologitpostestimationRemarksandexamples:备注和示例}

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
{opt o:utcome(outcome)} {opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt pr}}指定结果的边际概率 ({cmd:outcome()}){p_end}
{synopt :{opt pu0}}指定结果的概率 ({cmd:outcome()})，假设随机效应为零{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
如果您未指定 {cmd:outcome()}，则 {cmd:pr} 和 {cmd:pu0}（指定一个新变量）假设为 {cmd:outcome(#1)}。{p_end}
{p 4 6 2}
您可以使用 {cmd:pr} 和 {cmd:pu0} 指定一个或 k 个新变量，其中 {it:k} 是结果的数量。{p_end}
{p 4 6 2}
您使用 {cmd:xb} 和 {cmd:stdp} 指定一个新变量。{p_end}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如
线性预测、概率和标准误。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认值，计算线性预测。

{phang}
{opt pr} 计算关于随机效应的边际预测概率，这意味着通过对随机效应的预测函数在其整个支持集上进行积分来计算概率。除非另有说明，{opt pr} 默认计算第一个结果。

{phang}
{opt pu0} 计算预测概率，假设该观察值的面板的随机效应为零。除非另有说明，{opt pu0} 默认计算第一个结果。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt outcome(outcome)} 指定要计算预测概率的结果。{opt outcome()} 应包含一个因变量的值或 {opt #1}、{opt #2}、{it:...}，其中 {opt #1} 表示因变量的第一个类别，{opt #2} 表示第二个类别，依此类推。

{phang}
{opt nooffset} 仅在您为 {cmd:xtologit} 指定了 {opth offset(varname)} 时相关。此选项修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :default}每个结果的边际概率{p_end}
{synopt :{opt pr}}指定结果 ({cmd:outcome()}) 的边际概率{p_end}
{synopt :{opt pu0}}指定结果 ({cmd:outcome()）的概率，假设随机效应为零{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt pr} 和 {opt pu0} 默认计算第一个结果。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测和概率的响应边际。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tvsfpors}{p_end}
{phang2}{cmd:. xtset school}{p_end}
{phang2}{cmd:. xtologit thk prethk cc##tv}{p_end}

{pstd}计算预测概率，假设随机效应为零{p_end}
{phang2}{cmd:. predict prob*, pu0}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtologit_postestimation.sthlp>}