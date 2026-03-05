{smcl}
{* *! version 1.2.8  31may2018}{...}
{viewerdialog predict "dialog heckma_p"}{...}
{vieweralsosee "[R] heckman postestimation" "mansection R heckmanpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{viewerjumpto "后期估计命令" "heckman postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "heckman_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "heckman postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "heckman postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "heckman postestimation##examples"}{...}
{viewerjumpto "参考文献" "heckman postestimation##reference"}
{help heckman_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] heckman postestimation} {hline 2}}后期估计工具{p_end}
{p2col:}({mansection R heckmanpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
在 {cmd:heckman} 之后可用的后期估计命令如下：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent:* {bf:{help estat ic}}}赤池信息准则和施瓦茨贝叶斯信息准则（AIC 和 BIC）{p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_hausman_star2
INCLUDE help post_lincom
INCLUDE help post_lrtest_twostep
{synopt:{helpb heckman_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb heckman postestimation##predict:predict}}预测、残差、影响统计和其他诊断量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
{p2coldent:* {help suest_zh}}表面无关估计{p_end}
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic} 和 {cmd:suest} 在 {cmd:heckman, twostep} 后不适用。
{p_end}
{p 4 6 2}
+ {cmd:hausman} 和 {cmd:lrtest} 与 {cmd:svy} 估计结果不适用。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R heckmanpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
在最大似然（ML）或两步法之后

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar} {ifin} [{cmd:,}
{it:statistic} {opt nooff:set}]


{phang}
在最大似然（ML）之后

{p 8 16 2}
{cmd:predict}
{dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
{it:{help newvar_zh:newvar_sel}}
{it:{help newvar_zh:newvar_athrho}}
{it:{help newvar_zh:newvar_lnsigma}}{c )-}
{ifin}
{cmd:,} {opt sc:ores}
 

{synoptset 21 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}预测的标准误差{p_end}
{synopt :{opt stdf}}预测值的标准误差{p_end}
{synopt :{opt xbs:el}}选择方程的线性预测{p_end}
{synopt :{opt stdps:el}}选择方程的线性预测的标准误差{p_end}
{synopt :{opt pr(a,b)}}Pr(y {c |} {it:a} < y < {it:b}){p_end}
{synopt :{opt e(a,b)}}{it:E}(y {c |} {it:a} < y < {it:b}){p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-}{p_end}
{synopt :{opt yc:ond}}{it:E}(y {c |} y被观察到){p_end}
{synopt :{opt ye:xpected}}{it:E}(y*), y被认为是未观察时取0{p_end}
{synopt :{opt ns:hazard} 或 {opt m:ills}}非选择危险（也称为米尔斯比率的逆）{p_end}
{synopt :{opt ps:el}}Pr(y 被观察到){p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample
{p 4 6 2}
{opt stdf} 与 {cmd:svy} 估计结果不允许使用。
{p_end}

INCLUDE help whereab


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如
线性预测、标准误差、概率、期望值、
和非选择危险。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认，计算线性预测。

{phang}
{opt stdp} 计算预测的标准误差，可以
被视为观察值协变量模式的预测期望值或均值的标准误差。预测的标准误差
也被称为拟合值的标准误差。

{phang}
{opt stdf} 计算预测值的标准误差，即对于
1个观察值的点预测的标准误差。
通常称为未来或预测值的标准误差。
根据构造，{opt stdf} 产生的标准误差总是大于
{opt stdp} 产生的标准误差；请参见
{mansection R regresspostestimationMethodsandformulas:{it:方法和公式}}中的
{bf:[R] regress postestimation}。

{phang}
{opt xbsel} 计算选择方程的线性预测。

{phang}
{opt stdpsel} 计算选择方程的线性预测的标准误差。

{phang}
{opt pr(a,b)} 计算 {bind:Pr({it:a} < xb + u < {it:b})}，即 y|x 被观察到在区间 ({it:a},{it:b}) 内的概率。

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名； {it:lb} 和 
{it:ub} 是变量名；{break}
{cmd:pr(20,30)} 计算 {bind:Pr(20 < xb + u < 30)}；{break}
{opt pr(lb,ub)} 计算 {bind:Pr({it:lb} < xb + u < {it:ub})}; 和{break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算 {bind:Pr(20 < xb + u < {it:ub})}。

{pmore}
{it:a} 为空 {bind:({it:a} {ul:>} .)} 表示负无穷；
{cmd:pr(.,30)} 计算 {bind:Pr(xb + u < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,30)} 计算 {bind:Pr(xb + u < 30)}，对于满足 {bind:{it:lb} {ul:>} . 的观察值计算；{break}
并在其他位置计算 {bind:Pr({it:lb} < xb + u < 30)}。

{pmore}
{it:b} 为空 {bind:({it:b} {ul:>} .)} 表示正无穷； {cmd:pr(20,.)}
计算 {bind:Pr(xb + u > 20)}; {break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算 {bind:Pr(xb + u > 20)}，对于满足 {bind:{it:ub} {ul:>} . 的观察值计算；{break}
并在其他地方计算 {bind:Pr(20 < xb + u < {it:ub})}。

{phang}
{opt e(a,b)} 计算
{bind:{it:E}(xb + u | {it:a} < xb + u < {it:b})}，即
y|x 在区间 ({it:a},{it:b}) 内的条件期望值，意味着 
y|x 是截断的。 {it:a} 和 {it:b} 的指定方式与
{opt pr()} 的相同。

{phang}
{opt ystar(a,b)} 计算 {it:E}(y*)，
其中 {bind:y* = {it:a}} 如果 {bind:xb + u {ul:<} {it:a}}， {bind:y* = {it:b}}
如果 {bind:xb + u {ul:>} {it:b}}，否则 {bind:y* = xb + u}， 意味着
y*未被选中。 {it:a} 和 {it:b} 的指定方式与
{opt pr()} 的相同。

{phang}
{opt ycond} 计算因变量在被观察条件下的期望值，即被选中。

{phang}
{opt yexpected} 计算因变量的期望值
(y*)，当期望未观察到时，该值被视为0。

{pmore}
在许多情况下，0的假设是合理的，即非选择意味着
非参与（例如，未观察到的工资水平、来自未投保者的保险索赔），但对于某些问题（例如，未观察到的疾病发生率）可能不恰当。

{phang}
{opt nshazard} 和 {cmd:mills} 是同义词；两者都计算
非选择危险——{help heckman postestimation##H1979:Heckman (1979)} 称之为米尔斯比率的逆——来自选择方程。

{phang}
{opt psel} 计算选择的概率（或被观察到的概率）。

{phang}
{opt nooffset} 在你为 {cmd:heckman} 指定了 {opth offset(varname)} 时是相关的。它修改了 {cmd:predict} 的计算，使得它们忽略偏移变量；线性预测视为 xb 而非 xb + offset。

{phang}
{opt scores}，在 {opt twostep} 的情况下不可用，计算方程级别的得分变量。

{pmore}
第一个新变量将包含关于回归方程的对数似然的导数。

{pmore}
第二个新变量将包含关于选择方程的对数似然的导数。

{pmore}
第三个新变量将包含关于第三个方程（{hi:athrho}）的对数似然的导数。

{pmore}
第四个新变量将包含关于第四个方程（{hi:lnsigma}）的对数似然的导数。


INCLUDE help syntax_margins

{synoptset 19 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt xbs:el}}选择方程的线性预测{p_end}
{synopt :{opt pr(a,b)}}Pr(y {c |} {it:a} < y < {it:b}){p_end}
{synopt :{opt e(a,b)}}{it:E}(y {c |} {it:a} < y < {it:b}){p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-}{p_end}
{p2coldent:* {opt yc:ond}}{it:E}(y {c |} y被观察到){p_end}
{p2coldent:* {opt ye:xpected}}{it:E}(y*), y被认为是0时未观察{p_end}
{synopt :{opt ns:hazard} 或 {opt m:ills}}非选择危险（也称为
米尔斯比率的逆）{p_end}
{synopt :{opt ps:el}}Pr(y 被观察到){p_end}
{synopt :{opt stdp}}在 {cmd:margins} 中不允许使用{p_end}
{synopt :{opt stdf}}在 {cmd:margins} 中不允许使用{p_end}
{synopt :{opt stdpsel}}在 {cmd:margins} 中不允许使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt ycond} 和 {opt yexpected} 在 {cmd:margins} 之后不允许使用
{cmd:heckman, twostep}。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，用于线性预测、
概率、期望值和非选择危险。


{marker examples}{...}
{title:示例}

{pstd}设定{p_end}
{phang2}{cmd:. webuse womenwk}{p_end}
{phang2}{cmd:. heckman wage educ age, select(married children educ age)}{p_end}

{pstd}在被观察的条件下预测工资{p_end}
{phang2}{cmd:. predict ycond, ycond}{p_end}

{pstd}工资被观察的概率{p_end}
{phang2}{cmd:. predict probseen, psel}{p_end}


{marker reference}{...}
{title:参考文献}

{marker H1979}{...}
{phang}
Heckman, J. 1979. 样本选择偏差作为规格错误。
{it:Econometrica} 47: 153-161。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <heckman_postestimation.sthlp>}