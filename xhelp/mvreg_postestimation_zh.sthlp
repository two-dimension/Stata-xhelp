{smcl}
{* *! version 1.3.5  19oct2017}{...}
{viewerdialog predict "dialog reg3_p"}{...}
{vieweralsosee "[MV] mvreg postestimation" "mansection MV mvregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mvreg" "help mvreg_zh"}{...}
{viewerjumpto "事后估计命令" "mvreg postestimation##description"}{...}
{viewerjumpto "预测" "mvreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "mvreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "mvreg postestimation##examples"}
{help mvreg_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[MV] mvreg postestimation} {hline 2}}mvreg 的事后估计工具{p_end}
{p2col:}({mansection MV mvregpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
在 {cmd:mvreg} 之后可以使用以下事后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman
INCLUDE help post_lincom
{synopt:{helpb mvreg_postestimation##margins:边际}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb mvreg postestimation##predict:预测}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast} 不适用于 {cmd:mi} 估计结果.{p_end}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{cmdab:eq:uation:(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)} {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt d:ifference}}两个方程的线性预测之间的差异{p_end}
{synopt :{opt stdd:p}}线性预测差异的标准误{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2} 
这些统计数据在样本内和样本外均可用；如果仅想针对估计样本使用，输入 {cmd:predict} ... {cmd:if e(sample)} ...。  


INCLUDE help menu_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如线性预测、标准误、残差以及线性预测之间的差异等预测值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{cmd:equation(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)} 指定所引用的方程。

{pmore}
{opt equation()} 填写一个 {it:eqno} 用于 {opt xb}、 
{opt stdp} 和 {opt residuals} 选项。 {cmd:equation(#1)} 表示
计算将为第一个方程进行，{cmd:equation(#2)} 表示为第二个，以此类推。您还可以通过名称引用方程。 {cmd:equation(income)} 表示名为 income 的方程，{cmd:equation(hours)} 表示名为 hours 的方程。

{pmore}
如果未指定 {opt equation()}，结果如同指定了
{cmd:equation(#1)}。

{pmore}
{opt difference} 和 {opt stddp} 仅适用于方程之间的概念。要使用
这些选项，必须指定两个方程，例如， 
{cmd:equation(#1,#2)} 或 {cmd:equation(income,hours)}。需要指定两个方程时，{opt equation()} 是必需的。使用 {cmd:equation(#1,#2)}，{opt difference} 计算 {cmd:equation(#1)} 的预测减去 {cmd:equation(#2)} 的预测。

{phang}
{opt xb}，默认，计算拟合值 -- 为指定方程的 xb 预测。

{phang}
{opt stdp} 计算指定方程的预测标准误（观察值的协变量模式的预测期望值或均值的标准误）。预测的标准误也称为拟合值的标准误。

{phang}
{opt residuals} 计算残差。

{phang}
{opt difference} 计算系统中两个方程的线性预测之间的差异。

{phang}
{opt stddp} 仅在您之前已拟合多方程模型后允许。计算方程 1 和 2 之间的线性预测差异的标准误。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :default}每个方程的线性预测{p_end}
{synopt :{cmd:xb}}为指定方程计算线性预测{p_end}
{synopt :{opt d:ifference}}两个方程的线性预测之间的差异{p_end}
{synopt :{cmd:stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt r:esiduals}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdd:p}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认值为第一个方程。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker desc_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测、拟合值和线性预测之间的差异的边际响应。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. mvreg headroom trunk turn = price mpg displ gear_ratio length weight}

{pstd}测试 {cmd:price} 在所有方程中的系数是否为 0{p_end}
{phang2}{cmd:. test price}

{pstd}测试 {cmd:price} 在 {cmd:trunk} 和 {cmd:turn} 方程中的系数是否为 0{p_end}
{phang2}{cmd:. test [trunk]price [turn]price}

{pstd}测试方程之间的等式{p_end}
{phang2}{cmd:. test [trunk]price = [turn]price}{p_end}
{phang2}{cmd:. test [headroom]price = [trunk]price, accum}

{pstd}测试一般线性组合{p_end}
{phang2}{cmd:. test [trunk]price - [headroom]mpg = [turn]price - [turn]mpg}
{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse jaw}{p_end}
{phang2}{cmd:. mvreg y1 y2 y3 = gender##fracture}{p_end}

{pstd}测试方程 {cmd:y2} 中的主效应和交互效应{p_end}
{phang2}{cmd:. contrast gender##fracture, equation(y2)}{p_end}

{pstd}测试性别的主效应在因变量之间是否不同{p_end}
{phang2}{cmd:. contrast gender#_eqns}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mvreg_postestimation.sthlp>}