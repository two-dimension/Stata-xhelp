{smcl}
{* *! version 1.0.4  04jun2018}{...}
{viewerdialog predict "dialog mswitch_p"}{...}
{viewerdialog estat "dialog mswitch_estat"}{...}
{vieweralsosee "[TS] mswitch postestimation" "mansection TS mswitchpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] mswitch" "help mswitch_zh"}{...}
{viewerjumpto "后估计命令" "mswitch postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "mswitch_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "mswitch postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "mswitch postestimation##syntax_estat"}{...}
{viewerjumpto "示例" "mswitch postestimation##examples"}{...}
{viewerjumpto "存储结果" "mswitch postestimation##results"}
{help mswitch_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[TS] mswitch postestimation} {hline 2}}mswitch 的后估计工具{p_end}
{p2col:}({mansection TS mswitchpostestimation:查看完整的 PDF 手册条目}){p_end}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:mswitch} 之后特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb mswitch_postestimation##estat:estat transition}}在表格中显示转移概率{p_end}
{synopt :{helpb mswitch_postestimation##estat:estat duration}}在表格中显示状态的期望持续时间{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_nlcom
{p2col :{helpb mswitch postestimation##predict:predict}}预测、残差、影响统计和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS mswitchpostestimationRemarksandexamples:备注和示例}

        {mansection TS mswitchpostestimationMethodsandformulas:方法和公式}

{pstd}
上面的部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}}}
{ifin}
[{cmd:,} {help mswitch postestimation##statistic:{it:statistic}}
{help mswitch postestimation##options:{it:options}}]

{marker statistic}{...}
{synoptset 18 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab :主要}
{synopt :{opt yhat}}预测值；默认值{p_end}
{synopt :{opt xb}}方程特定的预测值；默认值是对第一个方程的预测值{p_end}
{synopt :{opt pr}}计算处于某一状态的概率；默认值是一步预测概率{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt rsta:ndard}}标准化残差{p_end}
{synoptline}
INCLUDE help esample
{p2colreset}{...}

{marker options}{...}
{synoptset 25 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab :选项}
{synopt :{opth smeth:od(mswitch postestimation##method:method)}}预测未观察状态的方法；指定 {cmd:onestep}, {cmd:filter}, 或 {cmd:smooth} 之一；默认值为 {cmd:smethod(onestep)}{p_end}
{synopt :{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)}}将预测统计量的根均方误差放入新的变量{p_end}
{synopt :{opth dyn:amic(mswitch postestimation##timeconstant:time_constant)}}在指定时间开始动态预测{p_end}
{synopt :{opt eq:uation(eqnames)}}要进行预测的方程名称{p_end}
{synoptline}

{marker method}{...}
{synoptset 17}{...}
{synopthdr :方法}
{synoptline}
{synopt :{opt one:step}}使用过去的信息进行预测{p_end}
{synopt :{opt fi:lter}}使用过去和当前的信息进行预测{p_end}
{synopt :{opt sm:ooth}}使用所有样本信息进行预测{p_end}
{synoptline}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建新的变量，包含预测值，如预测值、概率、残差和标准化残差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{cmd:yhat}, {cmd:xb}, {cmd:pr}, {cmd:residuals}, 和 {cmd:rstandard} 指定要预测的统计量。

{phang2}
{cmd:yhat}（默认），计算观察变量的加权和状态特定的线性预测。

{phang2}
{cmd:xb} 计算观察变量的方程特定的线性预测。

{phang2}
{cmd:pr} 计算处于某一状态的概率。

{phang2}
{cmd:residuals} 计算可观察变量方程中的残差。

{phang2}
{cmd:rstandard} 计算标准化残差，标准化残差是经过单位方差归一化的残差。

{dlgtab:选项}

{phang}
{opt smethod(method)} 指定预测未观察状态的方法； {cmd:smethod(onestep)}, {cmd:smethod(filter)}, 和 {cmd:smethod(smooth)} 允许在每个时间段预测状态时使用不同程度的信息。
{cmd:smethod()} 不能与 {cmd:xb} 一起指定。

{phang2}
{cmd:smethod(onestep)}（默认）使得 {cmd:predict} 使用关于因变量的先前信息在每个时间段估计状态。非线性滤波在前期进行，但当前期仅进行一步预测。

{phang2}
{cmd:smethod(filter)} 使得 {cmd:predict} 使用之前和当前的数据，通过非线性滤波在每个时间段估计状态。滤波在历史和当前期进行。

{phang2}
{cmd:smethod(smooth)} 使得 {cmd:predict} 使用所有样本数据，通过平滑算法在每个时间段估计状态。

{phang}
{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)} 将预测统计量的根均方误差放入指定的新变量。根均方误差测量由于干扰造成的方差，但不考虑估计误差。

{marker timeconstant}{...}
{phang}
{opt dynamic(time_constant)} 指定 {cmd:predict} 何时开始生成动态预测。指定的 {it:time_constant} 必须在 {cmd:tsset} 中指定的时间变量的尺度内，并且 {it:time_constant} 必须在有依赖变量观察值的样本内。例如， {cmd:dynamic(tq(2014q4))} 会使动态预测从 2014 年第四季度开始，假设时间变量为季度；见 {help datetime_functions_zh:日期和时间函数}。如果模型包含外生变量，则它们必须在整个预测样本内出现。 {cmd:dynamic()} 不能与 {cmd:xb}, {cmd:pr}, {cmd:residuals}, 或 {cmd:rstandard} 一起指定。

{phang}
{opt equation(eqnames)} 指定要进行预测的方程。如果不指定 {cmd:equation()} 或 {it:stub}{cmd:*}，结果与指定第一个方程的名称进行预测的统计量是相同的。 {cmd:equation()} 只能与 {cmd:xb} 一起指定。

{pmore}
您可以指定方程名称的列表，例如 
{cmd:equation(income consumption)} 或 {cmd:equation(factor1 factor2)} 来识别方程。

{pmore}
{cmd:equation()} 不能与 {it:stub}{cmd:*} 一起指定。


{marker syntax_estat}{...}
{marker estat}{...}
{title:estat 的语法}

{pstd}
在表中显示转移概率

{p 8 24 2}{cmd:estat transition} [{cmd:,} {opt l:evel(#)}]

{pstd}
在表中显示状态的期望持续时间

{p 8 24 2}{cmd:estat duration} [{cmd:,} {opt l:evel(#)}]


INCLUDE help menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat transition} 以表格形式显示所有转移概率。

{pstd}
{cmd:estat duration} 计算过程在每个状态中花费的期望持续时间，并在表中显示结果。


{marker options_estat_period}{...}
{title:estat 的选项}

{phang}
{opt level(#)} 指定置信区间的置信水平，百分比形式。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro}{p_end}

{pstd}
估计联邦基金利率 {cmd:fedfunds} 的马尔可夫切换动态回归模型参数，该模型作为其滞后的函数，输出缺口 {cmd:ogap} 和 {cmd:inflation}，同时抑制常量项{p_end}
{phang2}{cmd:. mswitch dr fedfunds, switch(L.fedfunds ogap inflation, noconstant)}

{pstd}
使用 {cmd:predict} 的默认设置获得因变量的一步预测{p_end}
{phang2}{cmd:. predict fedf}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse rgnp, clear}

{pstd}
估计美国实际国内生产总值的马尔可夫切换自回归参数，其作为自身滞后的函数{p_end}
{phang2}{cmd:. mswitch ar rgnp, ar(1/4)}

{pstd}
计算美国经济衰退期和扩张期的平均长度{p_end}
{phang2}{cmd:. estat duration}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat transition} 在 {cmd:r()} 中存储以下内容：

{synoptset 12 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}

{synoptset 12 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(label}{it:#}{cmd:)}}转移概率的标签{p_end}

{synoptset 12 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(prob)}}转移概率的向量{p_end}
{synopt:{cmd:r(se)}}转移概率的标准误差的向量{p_end}
{synopt:{cmd:r(ci}{it:#}{cmd:)}}转移概率的置信区间（下限和上限）的向量{p_end}

{pstd}
{cmd:estat duration} 在 {cmd:r()} 中存储以下内容：

{synoptset 12 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(d}{it:#}{cmd:)}}状态 {it:#} 的期望持续时间{p_end}
{synopt:{cmd:r(se}{it:#}{cmd:)}}状态 {it:#} 的期望持续时间的标准误差{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}

{synoptset 12 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(label}{it:#}{cmd:)}}状态 {it:#} 的标签{p_end}

{synoptset 12 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(ci}{it:#}{cmd:)}}状态 {it:#} 的期望持续时间的置信区间（下限和上限）的向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mswitch_postestimation.sthlp>}