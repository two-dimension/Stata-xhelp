{smcl}
{* *! version 1.0.5  25feb2019}{...}
{viewerdialog predict "dialog dsge_p"}{...}
{vieweralsosee "[DSGE] dsge postestimation" "mansection DSGE dsgepostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsge" "help dsge_zh"}{...}
{vieweralsosee "[DSGE] estat policy" "help estat policy"}{...}
{vieweralsosee "[DSGE] estat stable" "help dsge estat stable"}{...}
{vieweralsosee "[DSGE] estat transition" "help dsge estat transition"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{viewerjumpto "后验命令" "dsge postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "dsge_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "dsge postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "dsge postestimation##examples"}
{help dsge_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[DSGE] dsge postestimation} {hline 2}}dsge的后验工具{p_end}
{p2col:}({mansection DSGE dsgepostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验命令}

{pstd}
在执行 {cmd:dsge} 之后，以下后验命令特别重要：

{synoptset 26}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat policy}}显示估计模型的政策矩阵{p_end}
{synopt :{helpb dsge estat stable:estat stable}}评估系统的稳定性{p_end}
{synopt :{helpb dsge estat transition:estat transition}}显示估计模型的转移矩阵{p_end}
{synopt :{help irf_zh}}创建和分析IRF和FEVD{p_end}
{synoptline}

{pstd}
还可以使用以下标准后验命令：

{synoptset 26}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_nlcom
{synopt :{helpb dsge_postestimation##predict:predict}}一步预测、预测误差及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection DSGE dsgepostestimationRemarksandexamples:备注和示例}

        {mansection DSGE dsgepostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{marker statistic}{...}
{synoptset 26 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab :主要}
{synopt :{cmd:xb}}观察变量的线性预测{p_end}
{synopt :{opt st:ates}}潜在状态变量的线性预测{p_end}
{synoptline}

{marker options}{...}
{synopthdr}
{synoptline}
{syntab:选项}
{synopt :{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)}}将预测统计量的估计均方根误差放入新变量{p_end}
{synopt :{opt dyn:amic(time_constant)}}在指定时间开始动态预测{p_end}

{syntab:高级}
{synopt :{opt smeth:od(method)}}预测未观察到状态的方法{p_end}
{synoptline}

{synoptset 26}{...}
{synopthdr:方法}
{synoptline}
{synopt :{opt onestep}}使用过去信息进行预测{p_end}
{synopt :{opt filter}}使用过去和同时数据进行预测{p_end}
{synoptline}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{opt predict} 创建包含预测值的新变量。预测可以作为静态的一步预测或动态多步预测，并且您可以控制动态预测何时开始。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算观察变量的线性预测。

{phang}
{opt states} 计算潜在状态变量的线性预测。

{dlgtab:选项}

{phang}
{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)} 将预测统计量的均方根误差放入指定的新变量。均方根误差测量因干扰引起的方差，但不考虑估计误差。

{phang}
{opt dynamic(time_constant)} 指定 {cmd:predict} 开始生成动态预测的时间。指定的 {it:time_constant} 必须与在 {cmd:tsset} 中指定的时间变量的尺度相符，并且 {it:time_constant} 必须在对依赖变量有观察值的样本内。例如， {cmd:dynamic(tq(2008q4))} 会使动态预测在2008年第四季度开始，假设您的时间变量是按季度的；请参阅 {manhelp Datetime D}。如果模型包含外生变量，它们必须在整个预测样本中都存在。

{dlgtab:高级}

{phang}
{opt smethod(method)} 指定预测未观察到状态的方法， {cmd:smethod(onestep)} 和 {cmd:smethod(filter)} 会造成采用不同数量的关于依赖变量的信息来预测每个时间段的状态。

{phang2}
{cmd:smethod(onestep)}，默认情况下，导致 {cmd:predict} 使用关于依赖变量的先前信息在每个时间段估计状态。在先前时间段上执行卡尔曼滤波，但仅为当前时间段做出一步预测。

{phang2}
{cmd:smethod(filter)} 使 {cmd:predict} 使用过去和同时数据通过卡尔曼滤波在每个时间段估计状态。在先前时间段和当前时间段上执行卡尔曼滤波。 {cmd:smethod(filter)} 仅能与 {cmd:states} 一起使用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rates2}{p_end}
{phang2}{cmd:. generate p = 400*(ln(gdpdef) - ln(L.gdpdef))}{p_end}
{phang2}{cmd:. label variable p "通货膨胀率"}{p_end}
{phang2}{cmd:. dsge (p = {c -(}beta{c )-}*E(F.p) + {c -(}kappa{c )-}*x)}
         {cmd:(x = E(F.x) -(r - E(F.p) - g), 未观察到)}
         {cmd:(r = (1/{c -(}beta{c )-})*p + u)}
         {cmd:(F.u = {c -(}rhou{c )-}*u, 状态)}
         {cmd:(F.g = {c -(}rhoz{c )-}*g, 状态)}

{pstd}获得1/beta的估计{p_end}
{phang2}{cmd:. nlcom 1/_b[beta]}

{pstd}获得政策矩阵{p_end}
{phang2}{cmd:. estat policy}

{pstd}获得转移矩阵{p_end}
{phang2}{cmd:. estat transition}

{pstd}绘制IRF{p_end}
{phang2}{cmd:. irf set nkirf.irf}{p_end}
{phang2}{cmd:. irf create model1}{p_end}
{phang2}{cmd:. irf graph irf, impulse(u) response(x p r u) byopts(yrescale)}

{pstd}存储之前的 {cmd:dsge} 估计结果{p_end}
{phang2}{cmd:. estimates store dsge_est}

{pstd}将数据集延长3年或12个季度{p_end}
{phang2}{cmd:. tsappend, add(12)}

{pstd}设置预测{p_end}
{phang2}{cmd:. forecast create dsgemodel}{p_end}
{phang2}{cmd:. forecast estimates dsge_est}{p_end}
{phang2}{cmd:. forecast solve, prefix(d1_) begin(tq(2017q1))}

{pstd}绘制通货膨胀预测 {cmd:d1_p}{p_end}
{phang2}{cmd:. tsline d1_p if tin(2010q1, 2021q1), tline(2017q1)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dsge_postestimation.sthlp>}