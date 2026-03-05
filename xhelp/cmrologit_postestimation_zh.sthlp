{smcl}
{* *! version 1.0.0  28apr2019}{...}
{viewerdialog predict "dialog cmrologit_p"}{...}
{vieweralsosee "[CM] cmrologit postestimation" "mansection CM cmrologitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmrologit" "help cmrologit_zh"}{...}
{viewerjumpto "后估计命令" "cmrologit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "cmrologit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "cmrologit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "cmrologit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "cmrologit postestimation##examples"}
{help cmrologit_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[CM] cmrologit postestimation} {hline 2}}cmrologit 的后估计工具{p_end}
{p2col:}({mansection CM cmrologitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在使用 {cmd:cmrologit} 后，可以使用以下后估计命令：

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
{synopt :{helpb cmrologit postestimation##margins:margins}}调整后的预测、预测边际和边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb cmrologit postestimation##predict:predict}}预测概率、估计的线性预测及其标准误{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM cmrologitpostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}
{opt nooff:set}]

{synoptset 20 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}备选方案排名第一的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
INCLUDE help esample
{p 4 6 2}
{cmd:predict} 如果 {cmd:cmrologit} 使用逐案例删除（默认值），则会逐案例省略缺失值；如果 {cmd:cmrologit} 使用替代方案删除（选项 {cmd:altwise}），{cmd:predict} 将使用替代方案删除。

INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如概率、线性预测和标准误。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pr}（默认值）计算替代方案排名第一的概率。

{phang}
{opt xb}计算线性预测。

{phang}
{opt stdp}计算线性预测的标准误。

{phang}
{opt nooffset} 仅在您为 {opt cmrologit} 指定了 {opth offset(varname)} 时相关。它修改 {opt predict} 的计算，以忽略偏移变量；线性预测被视为 xb，而不是 xb + offset。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt pr}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}

{pstd}
与 {cmd:margins} 不允许的统计量是 stochastic 
数量的函数，且不是 {cmd:e(b)}。

{pstd}
由于 {cmd:cmrologit} 并未明确识别替代方案（即，没有替代方案变量），因此 {manhelp margins CM} 的替代方案特定特性不适用于 {cmd:cmrologit}。有关在 {cmd:cmrologit} 后可用的 {cmd:margins} 的完整语法，请参见 {manhelp margins R}。


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{opt margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse evignet}{p_end}
{phang2}{cmd:. cmset caseid, noalternatives}{p_end}

{pstd}拟合排名有序的逻辑选择模型{p_end}
{phang2}{cmd:. cmrologit pref i.female age i.grades i.edufit i.workexp i.boardexp if job==1}

{pstd}计算替代方案排名第一的概率{p_end}
{phang2}{cmd:. predict p if e(sample)}

{pstd}重新拟合模型但针对聚集选择数据{p_end}
{phang2}{cmd:. cmrologit pref job##(i.female i.grades i.edufit i.workexp), vce(cluster employer)}

{pstd}执行沃尔德检验以检验无差异假设{p_end}
{phang2}{cmd:. testparm job#(i.female i.grades i.edufit i.workexp)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmrologit_postestimation.sthlp>}