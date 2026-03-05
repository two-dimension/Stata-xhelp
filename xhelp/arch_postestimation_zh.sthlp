{smcl}
{* *! version 1.2.5  15may2018}{...}
{viewerdialog predict "dialog arch_p"}{...}
{vieweralsosee "[TS] arch postestimation" "mansection TS archpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arch" "help arch_zh"}{...}
{viewerjumpto "后置估计命令" "arch_postestimation_zh##description"}{...}
{viewerjumpto "PDF文档链接" "arch_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "arch_postestimation_zh##syntax_predict"}{...}
{viewerjumpto "边际" "arch_postestimation_zh##syntax_margins"}{...}
{viewerjumpto "示例" "arch_postestimation_zh##examples"}
{help arch_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[TS] arch postestimation} {hline 2}}arch的后置估计工具{p_end}
{p2col:}({mansection TS archpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后置估计命令}

{pstd}
在执行 {cmd:arch} 后，可以使用以下后置估计命令：

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
{synopt:{helpb arch_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb arch postestimation##predict:predict}}预测、残差、影响统计和其他诊断度量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS archpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{marker statistic}{...}
{synoptset 17 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主要}
{synopt:{opt xb}}均值方程的预测值 -- 差分系列；默认值{p_end}
{synopt:{opt y}}均值方程在 y 中的预测值 -- 未差分系列{p_end}
{synopt:{opt v:ariance}}条件方差的预测值{p_end}
{synopt:{opt h:et}}考虑仅多重异方差的方差预测值{p_end}
{synopt:{opt r:esiduals}}残差或预测的创新{p_end}
{synopt:{opt yr:esiduals}}y 中的残差或预测创新 -- 未差分系列{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample

{marker options}{...}
{synoptset 35 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:选项}
{synopt:{opt d:ynamic(time_constant)}}如何处理 y_t 的滞后{p_end}
{synopt:{cmd:at(}{it:{help varname_zh:varname_e}}|{it:#e} {it:varname_s2}|{it:#s2}{cmd:)}}生成静态预测{p_end}
{synopt:{opt t0(time_constant)}}设置递归的起始点为 {it:time_constant}{p_end}
{synopt:{opt str:uctural}}仅考虑结构组件进行计算{p_end}
{synoptline}
{p2colreset}{...}
{p 4 4 2}
{it:time_constant} 是一个 {it:#} 或时间字面量，例如
{cmd:td(1jan1995)} 或 {cmd:tq(1995q1)} 等；见 
{it:{help datetime##s9:方便地输入 SIF 值}}
在 
{bf:[D] Datetime}.


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，其中包含如期望值和残差等预测。所有预测均可作为静态的一步预测或动态的多步预测，并且可以控制动态预测何时开始。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb} 为默认选项，从均值方程计算预测。如果 {opt D.}{depvar} 是因变量，则这些预测是 {opt D.}{it:depvar} 的预测，而不是 {it:depvar} 本身的预测。

{phang}
{opt y} 指定即使模型是为 {opt D.}{it:depvar} 设定的，也要对 {depvar} 进行预测。

{phang}
{opt variance} 计算条件方差的预测。

{phang}
{opt het} 计算方差的多重异方差组件的预测。

{phang}
{opt residuals} 计算残差。如果没有指定其他选项，这些是预测的创新；即包括任何 ARMA 组件。如果指定了 {opt structural} 选项，这些是忽略任何 ARMA 项的均值方程的残差；请见下文 {helpb arch postestimation##structural:结构}。残差始终来自于估计方程，该方程可能具有差分的因变量；如果 {depvar} 被差分，这些就不是未差分 {it:depvar} 的残差。

{phang}
{opt yresiduals} 即使模型是为 {opt D.}{it:depvar} 设定的，也计算 {depvar} 的残差。与 {opt residuals} 一样， {opt yresiduals} 是从模型中计算而来，包括任何 ARMA 组件。如果指定了 {opt structural} 选项，则忽略任何 ARMA 组件， {opt yresiduals} 显示来自结构方程的残差；请见下文 {helpb arch postestimation##structural:结构}。

{dlgtab:选项}

{phang}
{opt dynamic(time_constant)} 指定如何处理模型中的 y_t 滞后。如果未指定 {opt dynamic()}，则在模型中出现的所有滞后值处使用实际值，以生成一步预测。

{pmore}
   {opt dynamic(time_constant)} 生成动态（又称递归）的预测。 {it:time_constant} 指定何时将预测从一步前进切换到动态。在动态预测中，y_t 的引用对于在 {it:time_constant} 或之后的所有时间段评估为 y_t 的预测，评估为之前所有时间段的实际值。

{pmore}
   例如， {cmd:dynamic(10)} 将计算预测，其中任何对 y_t t < 10 的引用评估为 y_t 的实际值，而任何对 y_t t {ul:>} 10 的引用评估为 y_t 的预测。这意味着 t < 10 的一步预测将被计算，而此后的动态预测也会被计算。根据模型的滞后结构，动态预测仍可能参考一些 y_t 的实际值。

{pmore}
   您还可以指定 {cmd:dynamic(.)}，以便在 p + q 时 {opt predict} 自动从一步预测切换到动态预测，其中 p 是最大 AR 滞后，q 是最大 MA 滞后。

{phang}
{cmd:at(}{it:{help varname_zh:varname_e}}|{it:#e varname_s2}|{it:#s2}{cmd:)}
   生成静态预测。 {opt at()} 和 {opt dynamic()} 不能同时指定。

{pmore}
   指定 {opt at()} 允许对于给定的扰动生成结果的静态评估。这在生成新闻响应函数时非常有用。 {opt at()} 指定将用于 e_t 和 s_t^2 的两个值集合，模型中的动态组件。这些指定的值被视为给定。此外，模型中的因变量的任何滞后值都从因变量的实际值获取。所有计算均基于实际数据和给定值。

{pmore}
   {opt at()} 要求您指定两个参数，可以是变量名或数字。第一个参数提供用于 e_t 的值；第二个参数提供用于 s_t^2 的值。如果 s_t^2 在模型中没有作用，则第二个参数可以指定为 '{opt .}' 来表示缺失。

{phang}
{opt t0(time_constant)} 指定递归计算预测统计量的起始点；假定 t < {opt t0()} 的扰动为 0。默认情况下， {opt t0()} 设置为估计样本中观察到的最小 t，这意味着在此之前的观察假定扰动为 0。

{pmore}
   如果指定了 {opt structural}，则 {opt t0()} 无关紧要，因为在这种情况下假设所有观察均扰动为 0。

{pmore}
   例如， {cmd:t0(5)} 将在 t = 5 开始递归。如果您的数据是季度数据，您可能会输入 {cmd:t0(tq(1961q2))} 以获得相同的结果。

{pmore}
   在均值方程中的任何 ARMA 组件或条件方差方程中的 GARCH 项使得 {opt arch} 递归，并依赖于预测的起始点。这包括一步预测。

{marker structural}{...}
{phang}
{opt structural} 仅考虑结构组件进行计算，忽略任何 ARMA 项，并生成稳态均衡预测。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr:统计量}
{synoptline}
{synopt:{opt xb}}均值方程的预测值 -- 差分系列；默认值{p_end}
{synopt:{opt y}}均值方程在 y 中的预测值 -- 未差分系列{p_end}
{synopt:{opt v:ariance}}条件方差的预测值{p_end}
{synopt:{opt h:et}}考虑仅多重异方差的方差预测值{p_end}
{synopt:{opt r:esiduals}}与 {cmd:margins} 不允许使用{p_end}
{synopt:{opt yr:esiduals}}与 {cmd:margins} 不允许使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计期望值的反应边际。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse wpi1}{p_end}

{pstd}拟合 EGARCH 模型{p_end}
{phang2}{cmd:. arch D.ln_wpi, ar(1) ma(1,4) earch(1) egarch(1)}{p_end}

{pstd}创建一个变量，其范围约为 -4 到 4{p_end}
{phang2}{cmd:. generate et = (_n-64)/15}{p_end}

{pstd}假设滞后方差为 1 的条件方差的静态预测，e_t 范围为 -4 到 4{p_end}
{phang2}{cmd:. predict sigma2, variance at(et 1)}{p_end}

    {hline}

{pstd}设置{p_end}
{phang2}{cmd:. webuse wpi1, clear}

{pstd}施加递减的滞后结构{p_end}
{phang2}{cmd:. constraint 1 (3/4)*[ARCH]l1.arch = [ARCH]l2.arch}{p_end}
{phang2}{cmd:. constraint 2 (2/4)*[ARCH]l1.arch = [ARCH]l3.arch}{p_end}
{phang2}{cmd:. constraint 3 (1/4)*[ARCH]l1.arch = [ARCH]l4.arch}

{pstd}拟合带约束的 ARCH 模型{p_end}
{phang2}{cmd:. arch D.ln_wpi, ar(1) ma(1 4) arch(1/4) constraints(1 2 3)}

{pstd}估计条件方差模型的 alpha 参数{p_end}
{phang2}{cmd:. lincom [ARCH]l1.arch/.4}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <arch_postestimation.sthlp>}