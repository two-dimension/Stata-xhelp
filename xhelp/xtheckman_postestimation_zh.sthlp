{smcl}
{* *! version 1.0.0  26feb2019}{...}
{viewerdialog "predict" "dialog xtheckman_p"}{...}
{vieweralsosee "[XT] xtheckman postestimation" "mansection XT xtheckmanpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtheckman" "help xtheckman_zh"}{...}
{viewerjumpto "后估计命令" "xtheckman postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "xtheckman_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtheckman postestimation##syntax_predict"}{...}
{viewerjumpto "边际效应" "xtheckman postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xtheckman postestimation##examples"}
{help xtheckman_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[XT] xtheckman postestimation} {hline 2}}xtheckman的后估计工具{p_end}
{p2col:}({mansection XT xtheckmanpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}

{marker description}{...}
{title:后估计命令}

{pstd}
在{cmd:xtheckman}之后可以使用以下后估计命令：

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
{synopt:{helpb xtheckman_postestimation##margins:边际效应}}线性预测、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtheckman postestimation##predict:预测}}预测、残差、影响统计量和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtheckmanpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。

{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {opt nooff:set}]


{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh:newvarlist}}{c )-}
{ifin}{cmd:,} {opt sc:ores}


{synoptset 20 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt xb}}线性预测；默认为此{p_end}
{synopt :{opt xbs:el}}选择方程的线性预测{p_end}
{synopt :{opt pr(a,b)}}Pr(y {c |} {it:a} < y < {it:b}){p_end}
{synopt :{opt e(a,b)}}E(y {c |} {it:a} < y < {it:b}){p_end}
{synopt :{opt ys:tar(a,b)}}E(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-}{p_end}
{synopt :{opt yc:ond}}E(y | y observed){p_end}
{synopt :{opt ps:el}}Pr(y observed){p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample

{phang}
其中，{it:a}和{it:b}可以是数字或变量；{it:a}缺失
({it:a} {ul:>} {cmd:.})表示负无穷大，{it:b}缺失
({it:b} {ul:>} {cmd:.})表示正无穷大；详见{help missing_zh}。

INCLUDE help menu_predict

{marker des_predict}{...}
{title:预测的描述}

{pstd}
{opt predict}创建一个包含预测（如线性预测、概率和期望值）的新变量。

{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认，计算线性预测。

{phang}
{opt xbsel}计算选择方程的线性预测。

{phang}
{opt pr(a,b)}计算
Pr({it:a} < xb + u + epsilon < {it:b}),
y|x在区间({it:a},{it:b})中被观察到的概率。

{pmore}
{it:a}和{it:b}可以作为数字或变量名称指定；
{it:lb}和{it:ub}是变量名称；{break}
{cmd:pr(20,30)}计算 {bind:Pr(20 < xb + u + epsilon < 30)}；{break}
{opt pr(lb,ub)}计算 {bind:Pr({it:lb} < xb + u + epsilon < {it:ub})}；
并且{break}
{cmd:pr(20,}{it:ub}{cmd:)}计算 {bind:Pr(20 < xb + u + epsilon < {it:ub})}。

{pmore}
{it:a}缺失 {bind:({it:a} {ul:>} {cmd:.})}表示负无穷大；
{cmd:pr(.,30)}计算 {bind:Pr(-infinity < xb + u + epsilon < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,30)}计算
{bind:Pr(-infinity < xb + u + epsilon < 30)} 在
{bind:{it:lb} {ul:>} {cmd:.}}的观察中{break}
并在其他地方计算 {bind:Pr({it:lb} < xb + u + epsilon < 30)}。

{pmore}
{it:b}缺失 {bind:({it:b} {ul:>} {cmd:.})}表示正无穷大；
{cmd:pr(20,.)}计算 {bind:Pr(+infinity > xb + u + epsilon > 20)}；{break}
{cmd:pr(20,}{it:ub}{cmd:)}计算
{bind:Pr(+infinity > xb + u + epsilon > 20)} 在
{bind:{it:ub} {ul:>} {cmd:.}}的观察中{break}
并在其他地方计算 {bind:Pr(20 < xb + u + epsilon < {it:ub})}。

{phang}
{opt e(a,b)}计算
{bind:E(xb + u + epsilon | {it:a} < xb + u + epsilon < {it:b})}，
y {c |} x在区间({it:a},{it:b})内的期望值，即y {c |} x被截断。
{it:a}和{it:b}的指定方式与{cmd:pr()}相同。

{phang}
{opt ystar(a,b)}计算 {bind:E(y*)}，其中 {bind:y* = {it:a}} 如果
{bind:xb + u + epsilon {ul:<} {it:a}}， {bind:y* = {it:b}} 如果
{bind:xb + u + epsilon {ul:>} {it:b}}，并且 {bind:y* = xb + u + epsilon}
在其他情况下，这意味着y*没有被选择。 {it:a} 和 {it:b} 的指定方式与{opt pr()}相同。

{phang}
{opt ycond}计算依赖变量的期望值，条件是依赖变量被观察到，
即被选择； {bind:E(y | y observed)}。

{phang}
{opt psel}计算选择（或被观察到）的概率。

{phang}
{opt nooffset}在你为{opt xtheckman}指定{opth offset(varname)}时相关。
它修改{opt predict}的计算，以忽略偏移变量；线性预测被视为
xb，而不是xb + offset。

{phang}
{opt scores}计算参数级评分变量。

INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认为此{p_end}
{synopt :{opt xbs:el}}选择方程的线性预测{p_end}
{synopt :{opt pr(a,b)}}Pr(y {c |} {it:a} < y < {it:b}){p_end}
{synopt :{opt e(a,b)}}E(y {c |} {it:a} < y < {it:b}){p_end}
{synopt :{opt ys:tar(a,b)}}E(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-}{p_end}
{synopt :{opt yc:ond}}E(y {c |} y observed){p_end}
{synopt :{opt ps:el}}Pr(y observed){p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins

INCLUDE help menu_margins

{marker des_margins}{...}
{title:边际效应描述}

{pstd}
{cmd:margins}估计线性预测、概率和期望值的边际效应。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse wagework}{p_end}
{phang2}{cmd:. xtset personid year}{p_end}
{phang2}{cmd:. xtheckman wage c.age##c.age tenure, select(working = c.age##c.age market)}{p_end}

{pstd}估计年龄在30到70岁且工作年限在0到5年的个体的预期工资{p_end}
{phang2}{cmd:. margins, at(age=(30(5)70) tenure=(0 5))}{p_end}

{pstd}绘制结果图{p_end} 
{phang2}{cmd:. marginsplot}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtheckman_postestimation.sthlp>}