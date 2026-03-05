{smcl}
{* *! version 1.2.7  19oct2017}{...}
{viewerdialog predict "dialog xtfront_p"}{...}
{vieweralsosee "[XT] xtfrontier postestimation" "mansection XT xtfrontierpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtfrontier" "help xtfrontier_zh"}{...}
{viewerjumpto "Postestimation commands" "xtfrontier postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtfrontier_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "xtfrontier postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "xtfrontier postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "xtfrontier postestimation##examples"}
{help xtfrontier_postestimation:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[XT] xtfrontier postestimation} {hline 2}}xtfrontier 的后验估计工具{p_end}
{p2col:}({mansection XT xtfrontierpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在执行 {cmd:xtfrontier} 后，可以使用以下后验估计命令：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest
{synopt:{helpb xtfrontier_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtfrontier postestimation##predict:predict}}预测、残差、影响统计和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection XT xtfrontierpostestimationRemarksandexamples:备注和示例}

        {mansection XT xtfrontierpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认选项{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt u}}负的技术效率自然对数 E(u_it | e_it){p_end}
{synopt :{opt m}}负的技术效率自然对数 M(u_it | e_it){p_end}
{synopt :{opt te}}技术效率的估计 E{exp(-su_it | e_it)}{p_end}
{synoptline}
{p2colreset}{...}

    其中
           s =    生产函数时为 1
                 成本函数时为 -1


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如线性预测、标准误差和技术效率等预测值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认选项，计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt u} 通过 E(u_it | e_it) 生成负的技术无效率自然对数的估计。

{phang}
{opt m} 通过模式 M(u_it | e_it) 生成负的技术无效率自然对数的估计。

{phang}
{opt te} 通过 E{c -(}exp(-su_it) | e_it{c )-} 生成技术效率的估计。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认选项{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许同时使用{p_end}
{synopt :{opt u}}与 {cmd:margins} 不允许同时使用{p_end}
{synopt :{opt m}}与 {cmd:margins} 不允许同时使用{p_end}
{synopt :{opt te}}与 {cmd:margins} 不允许同时使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse xtfrontier1}{p_end}
{phang2}{cmd:. constraint 1 [eta]_cons = 0}{p_end}
{phang2}{cmd:. xtfrontier lnwidgets lnmachines lnworkers, tvd constraints(1)}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict xb}

{pstd}技术效率{p_end}
{phang2}{cmd:. predict efficiency, te}

{pstd}常数收益检验{p_end}
{phang2}{cmd:. test lnmachines + lnworkers = 1}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtfrontier_postestimation.sthlp>}