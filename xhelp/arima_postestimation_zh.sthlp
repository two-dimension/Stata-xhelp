{smcl}
{* *! version 1.2.7  15may2018}{...}
{viewerdialog predict "dialog arima_p"}{...}
{viewerdialog "estat acplot" "dialog arima_estat"}{...}
{viewerdialog "estat aroots" "dialog arima_estat"}{...}
{viewerdialog psdensity "dialog psdensity"}{...}
{vieweralsosee "[TS] arima postestimation" "mansection TS arimapostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] estat acplot" "help estat acplot"}{...}
{vieweralsosee "[TS] estat aroots" "help estat aroots"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] psdensity" "help psdensity_zh"}{...}
{viewerjumpto "Postestimation commands" "arima postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "arima_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "arima postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "arima postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "arima postestimation##examples"}
{help arima_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[TS] arima postestimation} {hline 2}}ARIMA的事后估计工具{p_end}
{p2col:}({mansection TS arimapostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
以下事后估计命令在 {cmd:arima} 后的使用尤为重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat acplot}}估计自相关和自协方差{p_end}
{synopt :{helpb estat aroots}}检查估计值的稳定性条件{p_end}
{synopt :{help irf_zh}}创建和分析冲击反应函数(IRFs){p_end}
{synopt :{help psdensity_zh}}估计谱密度{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准事后估计命令也可用：

{synoptset 17}{...}
{synopt:命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_lrtest
{synopt:{helpb arima_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb arima postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS arimapostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:预测}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{marker statistic}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opt xb}}均值方程的预测值 -- 差分序列；默认{p_end}
{synopt:{opt stdp}}线性预测的标准误差{p_end}
{synopt:{opt y}}均值方程在 {it:y} 中的预测值 -- 未差分序列{p_end}
{synopt:{opt mse}}预测值的均方误差{p_end}
{synopt:{opt r:esiduals}}残差或预测创新{p_end}
{synopt:{opt yr:esiduals}}y中的残差或预测创新，反转任何时间序列算子{p_end}
{synoptline}
INCLUDE help esample
{phang}
对面板数据拟合的条件ARIMA模型不可用预测。

{marker options}{...}
{synoptset 26 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:选项}
{synopt:{opt d:ynamic(time_constant)}}如何处理 y_t 的滞后{p_end}
{synopt:{opt t0(time_constant)}}设置递归的起始点为 {it:time_constant}{p_end}
{synopt:{opt str:uctural}}仅考虑结构部分进行计算{p_end}
{synoptline}
{p 4 6 2}
{p2colreset}{...}
{it:time_constant} 是一个 {it:#} 或时间字面量，如 {cmd:td(1jan1995)}
或 {cmd:tq(1995q1)}；请参见 
{it:{help datetime##s9:方便输入SIF值}}
在
{manhelp Datetime D}。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:预测} 创建一个包含预测的变量，如预期值和均方误差。所有预测均可作为静态一步前向预测或动态多步预测，并且您可以控制动态预测的开始时机。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认为从模型中计算预测。如果
   {opt D.}{depvar} 是因变量，则这些预测值针对的是
   {opt D.}{it:depvar} 而非 {it:depvar} 本身。

{phang}
{opt stdp} 计算线性预测 {opt xb} 的标准误差。
   {opt stdp} 不包括来自 
   扰动方程的变异；使用 {opt mse} 来计算标准误差和
   预测值的置信区间。

{phang}
{opt y} 指定进行 {depvar} 的预测，即使模型以 {cmd:D.}{it:depvar} 表示。

{phang}
{opt mse} 计算预测的均方误差。

{phang}
{opt residuals} 计算残差。
   如果没有指定其他选项，这些残差即为预测创新；
   即，包括ARMA成分。如果指定 {opt structural}，则为
   结构方程的残差；请参见
   {helpb arima postestimation##structural:结构}。

{phang}
{opt yresiduals} 在 {depvar} 的基础上计算残差，即使模型以
   {cmd:D.}{it:depvar} 表示。与 {opt residuals} 相同，
   {opt yresiduals} 是基于模型计算的，包括任何ARMA成分。
   如果指定了 {opt structural}，则忽略任何ARMA成分，
   {opt yresiduals} 为结构方程的残差；请参见 {helpb arima postestimation##structural:结构}。

{dlgtab:选项}

{phang}
{opt dynamic(time_constant)} 指定如何处理模型中 y_t 的滞后。
   如果没有指定 {opt dynamic()}，在模型中出现 y_t 的滞后值处将实际值用于生成
   一步前的预测。

{pmore}
   {opt dynamic(time_constant)} 生成动态（也称为递归）预测。
   {it:time_constant} 指定何时从一步前的预测切换为动态预测。在动态预测中，y_t 的引用
   在 {it:time_constant} 及之后的所有时期被评估为 y_t 的预测，
   在之前的所有时期则评估为 y_t 的实际值。

{pmore}
   例如，{cmd:dynamic(10)} 将计算预测，其中任何
   y_t 的引用在 t < 10 评估为 y_t 的实际值，任何 y_t 的引用在 t{ul:>}10 则评估为 y_t 的预测。这
   意味着在 t < 10 处计算一步前的预测，在此之后执行动态预测。根据模型的滞后结构，
   动态预测可能仍会参考一些 y_t 的实际值。

{pmore}
   您还可以指定 {cmd:dynamic(.)}，使得 {opt predict}
   在 p + q 时自动从一步前的预测切换为动态预测，
   其中 p 是最大AR滞后，q是最大MA滞后。

{phang}
{opt t0(time_constant)} 指定计算预测统计量的递归的起始点；假设 t < {opt t0()} 的扰动为 0。
   默认情况下将 {opt t0()} 设置为在估计样本中观察到的最小 t 值，这意味着
   之前的观察将假设扰动为 0。

{pmore}
   如果指定了 {opt structural}，则 {opt t0()} 无关紧要，因为
   此时假设所有观察的扰动为 0。

{pmore}
   {cmd:t0(5)}将使递归从 t=5 开始。如果数据是按季度提供，您也可以输入
   {cmd:t0(tq(1961q2))}来获得相同的结果。

{pmore}
   ARIMA模型的ARMA成分是递归的，并依赖于预测的起始点。这包括一步前的预测。

{marker structural}{...}
{phang}
{opt structural} 指定仅考虑结构成分进行计算，忽略ARMA项，产生稳态均衡预测。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt:{opt xb}}均值方程的预测值 -- 差分序列；默认{p_end}
{synopt:{opt y}}均值方程在 {it:y} 中的预测值 -- 未差分序列{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt mse}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt yr:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins的描述}

{pstd}
{cmd:margins} 估计期望值的反应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse wpi1}{p_end}

{pstd}拟合具有加性季节效应的ARIMA模型{p_end}
{phang2}{cmd:. arima D.ln_wpi, ar(1) ma(1 4)}{p_end}

{pstd}计算 {cmd:D.ln_wpi} 的预测{p_end}
{phang2}{cmd:. predict xb}{p_end}

{pstd}仅考虑结构成分 -- 忽略ARMA项 -- 进行预测{p_end}
{phang2}{cmd:. predict xbs, structural}{p_end}

{pstd}计算 {cmd:ln_wpi} 的预测，反转在估计中施加的任何时间序列算子{p_end}
{phang2}{cmd:. predict y, y}

{pstd}计算 {cmd:ln_wpi} 的预测，对于1970q1之后的预测使用滞后的预测值，而不是滞后的实际值{p_end}
{phang2}{cmd:. predict yd, y dynamic(tq(1970q1))}

{pstd}绘制时间序列线图{p_end}
{phang2}{cmd:. tsline y yd}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <arima_postestimation.sthlp>}