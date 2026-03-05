{smcl}
{* *! version 1.2.4  19oct2017}{...}
{viewerdialog predict "dialog cnsreg_p"}{...}
{vieweralsosee "[R] cnsreg 后处理" "mansection R cnsregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cnsreg" "help cnsreg_zh"}{...}
{viewerjumpto "后处理命令" "cnsreg postestimation##description"}{...}
{viewerjumpto "预测" "cnsreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "cnsreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "cnsreg postestimation##examples"}
{help cnsreg_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] cnsreg 后处理} {hline 2}}cnsreg 的后处理工具{p_end}
{p2col:}({mansection R cnsregpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后处理命令}

{pstd}
在 {cmd:cnsreg} 之后可用的后处理命令如下：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest_star
{synopt:{helpb cnsreg_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb cnsreg postestimation##predict:predict}}预测、残差、影响统计及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。 {cmd:forecast} 也不适用于 {cmd:mi} 估计结果。{p_end}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
INCLUDE help regstats
{synopt :{opt sc:ore}}等同于 {opt residuals}{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample
{p 4 6 2}
{opt stdf} 不允许与 {cmd:svy} 估计结果一起使用。

INCLUDE help whereab


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含线性预测、残差、标准误差、概率和期望值等预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt xb}，默认为计算线性预测。

{phang}
{opt residuals} 计算残差，即 y - xb。

{phang}
{opt stdp} 计算预测的标准误差，可以理解为观察的协变量模式的预测期望值或均值的标准误差。预测的标准误差也称为拟合值的标准误差。

{phang}
{opt stdf} 计算预测的标准误差，即对1个观察值的点预测的标准误差。通常称为未来值或预测值的标准误差。根据构造，{opt stdf} 生成的标准误差总是大于{opt stdp} 生成的标准误差；有关更多信息，请参见 {mansection R regressMethodsandformulas:{it:方法与公式}} 在 {bf:[R] regress} 中。

INCLUDE help pr_opt

{phang}
{opt e(a,b)} 计算 {bind:{it:E}(xb + u | {it:a} < xb + u < {it:b})}，即条件下的 y|x 的期望值，y|x 位于区间 ({it:a},{it:b})，表示 y|x 是截断的。 {it:a} 和 {it:b} 的指定方式与 {opt pr()} 相同。

{phang}
{opt ystar(a,b)} 计算 {it:E}(y*)，其中 {bind:y* = {it:a}} 如果 {bind:xb + u {ul:<} {it:a}}， {bind:y* = {it:b}} 如果 {bind:xb + u {ul:>} {it:b}}，并且 {bind:y* = xb + u} 在其他情况下，表示 y* 被审查。 {it:a} 和 {it:b} 的指定方式与 {opt pr()} 相同。

{phang}
{opt score} 对于线性回归模型等同于 {opt residuals}。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
INCLUDE help regstats_margins
{synopt :{opt r:esiduals}}与 {cmd:margins} 一起不允许使用{p_end}
{synopt :{opt sc:ore}}与 {cmd:margins} 一起不允许使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际值，适用于线性预测、概率和期望值。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. constraint 1 price = weight}{p_end}
{phang2}{cmd:. cnsreg mpg price weight, constraints(1)}{p_end}

{pstd}获取线性预测{p_end}
{phang2}{cmd:. predict mpghat, xb}

{pstd}获取按 {cmd:foreign} 调整的均值{p_end}
{phang2}{cmd:. margins, atmeans by(foreign)}

{pstd}显示与后续无约束模型的比较信息标准{p_end}
{phang2}{cmd:. estat ic} 

{pstd}无约束模型{p_end}
{phang2}{cmd:. regress mpg price weight foreign}

{pstd}显示与先前约束模型的比较信息标准{p_end}
{phang2}{cmd:. estat ic}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cnsreg_postestimation.sthlp>}