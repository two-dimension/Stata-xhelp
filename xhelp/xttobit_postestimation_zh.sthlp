{smcl}
{* *! version 1.2.7  19oct2017}{...}
{viewerdialog predict "dialog xttobit_p"}{...}
{vieweralsosee "[XT] xttobit postestimation" "mansection XT xttobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xttobit" "help xttobit_zh"}{...}
{viewerjumpto "后估计命令" "xttobit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "xttobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xttobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际效应" "xttobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xttobit postestimation##examples"}
{help xttobit_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[XT] xttobit postestimation} {hline 2}}xttobit 的后估计工具{p_end}
{p2col:}({mansection XT xttobitpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:xttobit} 之后，可以使用以下后估计命令：

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
{synopt:{helpb xttobit_postestimation##margins:边际}}平均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xttobit postestimation##predict:预测}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xttobitpostestimationRemarksandexamples:备注和示例}

        {mansection XT xttobitpostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt stdf}}线性预测的标准误差{p_end}
{synopt :{opt pr(a,b)}}Pr({it:a} < y < {it:b})，相对于随机效应的边际{p_end}
{synopt :{opt e(a,b)}}{it:E}(y | {it:a} < y < {it:b})，相对于随机效应的边际{p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*)，y*=max{a,min(y_j,b)}，相对于随机效应的边际{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample

INCLUDE help whereab


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如线性预测、标准误差、概率和期望值。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{cmd:xb} 为默认值，使用模型中估计的固定效应（系数）计算线性预测 xb。这相当于将模型中的所有随机效应固定为零的理论（先验）均值。

{phang}
{opt stdp} 计算线性预测的标准误差。可以视为观察协变量模式预测的预期值或均值的标准误差。预测的标准误差也被称为拟合值的标准误差。

{phang}
{opt stdf} 计算线性预测的标准误差。这是对于 1 个观察值的点预测的标准误差。通常被称为未来或预测值的标准误差。按构造，{cmd:stdf} 生成的标准误差始终大于 {cmd:stdp} 生成的标准误差；参见 {mansection R regressMethodsandformulas:{it:方法和公式}} 在 {bf:[R] regress} 中。

{phang}
{opt pr(a,b)} 计算 {bind:Pr({it:a} < y < {it:b})} 的估计值，这表示在给定预测变量当前值的情况下，y 被观察到在区间 (a,b) 内的概率。预测是相对于随机效应的边际计算的。即，随机效应从预测函数中积分出去。在接下来的讨论中，这两个条件被隐含。

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名；{break}
{cmd:pr(20,30)} 计算 {bind:Pr(20 < y < 30)}；{break}
{cmd:pr(lb,ub)} 计算 {bind:Pr(lb < y < ub)}；并且{break}
{cmd:pr(20,ub)} 计算 {bind:Pr(20 < y < ub)}。

{pmore}
{it:a} 缺失 {bind:({it:a} {ul:>} .)} 表示负无穷；{cmd:pr(.,30)} 计算 {bind:Pr(y < 30)} 和 {cmd:pr(lb,30)} 在 {bind:lb {ul:>} .} 的观察中计算 {bind:Pr(y < 30)} （并在其他地方计算 {bind:Pr(lb < y < 30)}）。

{pmore}
{it:b} 缺失 {bind:({it:b} {ul:>} .)} 表示正无穷；{cmd:pr(20,.)} 计算 {bind:Pr(y > 20)} 和 {cmd:pr(20,ub)} 在 {bind:ub {ul:>} .} 的观察中计算 {bind:Pr(y > 20)} （并在其他地方计算 {bind:Pr(20 < y < ub)}）。

{phang}
{opt e(a,b)} 计算 {bind:{it:E}(y | {it:a} < y < {it:b})} 的估计值，即 y 在区间 (a,b) 内的条件期望值，表示 y 是截断的。{it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。预测是相对于随机效应的边际计算的。即，随机效应从预测函数中积分出去。

{phang}
{opt ystar(a,b)} 计算 {it:E}(Y*) 的估计值，若 {bind:Y* = {it:a}} 当 {bind:y {ul:<} {it:a}}，若 {bind:Y* = {it:b}} 当 {bind:y {ul:>} {it:b}}，否则 {bind:Y* = y}，这表示 Y* 是 y 的截断版本。{it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。预测是相对于随机效应的边际计算的。即，随机效应从预测函数中积分出去。

{phang}
{opt nooffset} 仅在您为 {cmd:xttobit} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 进行的计算，以忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。

INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt pr(a,b)}}Pr({it:a} < y < {it:b})，相对于随机效应的边际{p_end}
{synopt :{opt e(a,b)}}{it:E}(y | {it:a} < y < {it:b})，相对于随机效应的边际{p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*)，y*=max{a,min(y_j,b)}，相对于随机效应的边际{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdf}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins

INCLUDE help menu_margins

{marker des_margins}{...}
{title:边际描述}

{pstd}
{cmd:margins} 估计线性预测、概率和期望值的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork3}{p_end}
{phang2}{cmd:. xtset idcode}{p_end}
{phang2}{cmd:. xttobit ln_wage i.union age grade not_smsa south##c.year, ul(1.9)}{p_end}

{pstd}在 log wage 小于 1.9 的条件下，{cmd:age} 对预期 log wage 的平均边际效应{p_end}
{phang2}{cmd:. margins, predict(e(., 1.9)) dydx(age)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xttobit_postestimation.sthlp>}