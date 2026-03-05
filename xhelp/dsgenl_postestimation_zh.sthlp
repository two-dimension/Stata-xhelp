{smcl}
{* *! version 1.0.0  14may2019}{...}
{viewerdialog predict "dialog dsgenl_p"}{...}
{vieweralsosee "[DSGE] dsgenl postestimation" "mansection DSGE dsgenlpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsgenl" "help dsgenl_zh"}{...}
{vieweralsosee "[DSGE] estat covariance" "help dsge estat covariance"}{...}
{vieweralsosee "[DSGE] estat policy" "help estat policy"}{...}
{vieweralsosee "[DSGE] estat stable" "help dsge estat stable"}{...}
{vieweralsosee "[DSGE] estat steady" "help estat steady"}{...}
{vieweralsosee "[DSGE] estat transition" "help dsge estat transition"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{viewerjumpto "后估计命令" "dsgenl postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "dsgenl_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "dsgenl postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "dsgenl postestimation##examples"}
{help dsgenl_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[DSGE] dsgenl 后估计} {hline 2}}dsgenl 的后估计工具{p_end}
{p2col:}({mansection DSGE dsgenlpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:dsgenl} 之后特别有用：

{synoptset 26}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb dsge_estat covariance:estat covariance}}显示模型变量的模型隐含协方差矩阵{p_end}
{synopt :{helpb estat policy}}显示估计模型的政策矩阵{p_end}
{synopt :{help dsge_estat_stable_zh:estat stable}}评估系统的稳定性{p_end}
{synopt :{helpb estat steady}}显示系统的稳态{p_end}
{synopt :{help dsge_estat_transition_zh:estat transition}}显示估计模型的转移矩阵{p_end}
{synopt :{help irf_zh}}生成和分析 IRF 和 FEVD{p_end}
{synoptline}

{pstd}
以下标准后估计命令也可用：

{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_nlcom
{synopt :{helpb dsgenl_postestimation##predict:predict}}一步前的预测，预测误差和其他诊断量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection DSGE dsgenlpostestimationRemarksandexamples:备注和示例}

        {mansection DSGE dsgenlpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在本帮助文件中。


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
{synopt :{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)}}将预测统计量的根均方误差放入新变量中{p_end}
{synopt :{opt dyn:amic(time_constant)}}在指定时间开始动态预测{p_end}

{syntab:高级}
{synopt :{opt smeth:od(method)}}预测未观察状态的方法{p_end}
{synoptline}

{synoptset 26}{...}
{synopthdr:方法}
{synoptline}
{synopt :{opt onestep}}使用过去信息进行预测{p_end}
{synopt :{opt filter}}使用过去和同时期信息进行预测{p_end}
{synoptline}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{opt predict} 创建包含预测的新变量，例如期望值。预测可作为静态的一步前预测或动态的多步预测，并且您可以控制动态预测开始的时间。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算观察变量的线性预测。

{phang}
{opt states}计算潜在状态变量的线性预测。

{dlgtab:选项}

{phang}
{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)} 将预测统计量的根均方误差放入指定的新变量中。根均方误差测量由于干扰引起的方差，但不考虑估计误差。

{phang}
{opt dynamic(time_constant)} 指定 {cmd:predict} 开始生成动态预测的时间。指定的 {it:time_constant} 必须在 {cmd:tsset} 中指定的时间变量的尺度中，并且 {it:time_constant} 必须在一个可用于因变量观察值的样本内。例如，{cmd:dynamic(tq(2008q4))} 会导致动态预测在 2008 年第四季度开始，假设您的时间变量为季度；请参见 {manhelp Datetime D}。如果模型包含外生变量，则必须在整个预测样本中存在。

{dlgtab:高级}

{phang}
{opt smethod(method)} 指定用于预测未观察状态的方法，{cmd:smethod(onestep)} 和 {cmd:smethod(filter)}，并导致在每个时间周期内用于预测状态的因变量信息数量不同。

{phang2}
{cmd:smethod(onestep)}，默认情况下，导致 {cmd:predict} 在每个时间周期内使用先前的因变量信息估计状态。卡尔曼滤波器在先前时间段上执行，但仅在当前周期内进行一步预测。

{phang2}
{cmd:smethod(filter)} 导致 {cmd:predict} 在每个时间周期内使用先前和同时期数据通过卡尔曼滤波器来估计状态。卡尔曼滤波器在先前的时间段和当前周期上执行。{cmd:smethod(filter)} 只能与 {cmd:states} 一起指定。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro2}{p_end}
{phang2}{cmd:. dsgenl (1 = {beta}*(x/F.x)*(1/g)*(r/F.p))}
         {cmd:(1/{phi} + (p-1) = {phi}*x + {beta}*(F.p-1))} 
         {cmd:({beta}*r = p^(1/{beta})*u)}
         {cmd:(ln(F.u) = {rhou}*ln(u))}
         {cmd:(ln(F.g) = {rhog}*ln(g)),}
         {cmd:exostate(u g) observed(p r) unobserved(x)}{p_end}

{pstd}获取 1/beta 的估计{p_end}
{phang2}{cmd:. nlcom 1/_b[beta]}

{pstd}获取政策矩阵{p_end}
{phang2}{cmd:. estat policy}

{pstd}获取转移矩阵{p_end}
{phang2}{cmd:. estat transition}

{pstd}获取稳态向量{p_end}
{phang2}{cmd:. estat steady}

{pstd}绘制 IRF 图{p_end}
{phang2}{cmd:. irf set nkirf.irf}{p_end}
{phang2}{cmd:. irf create model1}{p_end}
{phang2}{cmd:. irf graph irf, impulse(u) response(x p r u) byopts(yrescale)}

{pstd}存储之前的 {cmd:dsgenl} 估计结果{p_end}
{phang2}{cmd:. estimates store dsge_est}

{pstd}将数据集扩展 3 年或 12 个季度{p_end}
{phang2}{cmd:. tsappend, add(12)}

{pstd}设置预测{p_end}
{phang2}{cmd:. forecast create dsgemodel}{p_end}
{phang2}{cmd:. forecast estimates dsge_est}{p_end}
{phang2}{cmd:. forecast solve, prefix(d1_) begin(tq(2017q1))}

{pstd}绘制通胀预测 {cmd:d1_p}{p_end}
{phang2}{cmd:. tsline d1_p if tin(2010q1, 2021q1), tline(2017q1)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dsgenl_postestimation.sthlp>}