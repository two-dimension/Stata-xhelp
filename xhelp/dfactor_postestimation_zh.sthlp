{smcl}
{* *! version 1.2.4  15may2018}{...}
{viewerdialog predict "dialog dfactor_p"}{...}
{vieweralsosee "[TS] dfactor postestimation" "mansection TS dfactorpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfactor" "help dfactor_zh"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[TS] sspace postestimation" "help sspace_postestimation_zh"}{...}
{viewerjumpto "Postestimation commands" "dfactor postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "dfactor_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "dfactor postestimation##syntax_predict"}{...}
{viewerjumpto "Examples" "dfactor postestimation##examples"}
{help dfactor_postestimation:English Version}
{hline}{...}
{p2colset 1 32 36 2}{...}
{p2col:{bf:[TS] dfactor postestimation} {hline 2}}dfactor 的后验估计工具{p_end}
{p2col:}({mansection TS dfactorpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在执行 {cmd:dfactor} 后，可用以下标准后验估计命令：

{synoptset 17}{...}
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
{synopt :{helpb dfactor postestimation##predict:预测}}预测、残差、
影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
	

{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection TS dfactorpostestimationRemarksandexamples:备注和示例}

        {mansection TS dfactorpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件内。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-} 
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 17 tabbed}{...}
{synopthdr: statistic}
{synoptline}
{syntab :主要}
{synopt :{opt y}}因变量，即 {opt xbf} + {opt residuals}{p_end}
{synopt :{opt xb}}使用可观察的自变量进行线性预测{p_end}
{synopt :{opt xbf}}使用可观察的自变量加上因子贡献进行线性预测{p_end}
{synopt :{opt fac:tors}}未观察到的因子变量{p_end}
{synopt :{opt r:esiduals}}自相关干扰项{p_end}
{synopt :{opt in:novations}}创新，即观察到的因变量减去预测的 {opt y}{p_end}
{synoptline}
INCLUDE help esample
{p2colreset}{...}

{synoptset 26 tabbed}{...}
{synopthdr: options}
{synoptline}
{syntab :选项}
{synopt :{opt eq:uation(eqnames)}}指定要进行预测的方程的名称{p_end}
{synopt :{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)}}将预测对象的估计均方根误差放入新变量中{p_end}
{synopt :{opt dyn:amic(time_constant)}}在指定时间开始动态预测{p_end}

{syntab :高级}
{synopt :{opt smeth:od(method)}}预测未观察到的状态的方法{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 17}{...}
{synopthdr :方法}
{synoptline}
{synopt :{opt on:estep}}使用过去的信息进行预测{p_end}
{synopt :{opt sm:ooth}}使用所有样本信息进行预测{p_end}
{synopt :{opt fi:lter}}使用过去和当前的信息进行预测{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如期望值、未观察到的因子、自相关干扰项和创新等预测。均方根误差可用于所有预测。所有预测也可以作为静态的逐步预测或动态的多步预测，并且可以控制动态预测的开始时间。


{marker options_predict}{...}
{title:预测的选项}

{pstd}
此部分使用的数学符号在 
{it:{mansection TS dfactorDescription:描述}} 中定义 
{bf:[TS] dfactor}。

{dlgtab:主要}

{phang}
{cmd:y}、{cmd:xb}、{cmd:xbf}、{cmd:factors}、{cmd:residuals} 和
{cmd:innovations} 指定要预测的统计量。

{phang2}
{cmd:y}，默认情况下，预测因变量。预测包括未观察到的因子的贡献、使用可观察自变量的线性预测，以及任何自相关。

{phang2}
{cmd:xb} 计算使用可观察自变量的线性预测。

{phang2}
{cmd:xbf} 计算未观察因子的贡献加上使用可观察自变量的线性预测。

{phang2}
{cmd:factors} 估计未观察到的因子。

{phang2}
{cmd:residuals} 计算自相关残差。

{phang2}
{cmd:innovations} 计算创新。

{dlgtab:选项}

{phang}
{opt equation(eqnames)} 指定要计算预测的方程。

{pmore}
您可以指定方程名称，例如 {cmd:equation(income consumption)}
或 {cmd:equation(factor1 factor2)} 来识别方程。  
对于 {cmd:factors} 统计量，您必须指定因子的方程名称；对于所有其他统计量，您必须指定可观察变量的方程名称。 

{pmore}
如果您不指定 {opt equation()} 且不指定 {it:stub}{cmd:*}，
结果将与指定第一个方程的预测统计量名称相同。

{pmore}
{opt equation()} 不能与 {it:stub}{cmd:*} 一起指定。

{phang} 
{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)} 将预测对象的均方根误差放入指定的新变量中。均方根误差衡量由于干扰项带来的方差，但不考虑估计误差。

{phang}
{opt dynamic(time_constant)} 指定 {opt predict} 开始生成动态预测的时间。指定的 {it:time_constant} 必须在 {cmd:tsset} 中指定的时间变量范围内，并且 {it:time_constant} 必须在有可用因变量观察值的样本内。例如，{cmd:dynamic(tq(2008q4))} 导致动态预测在 2008 年第四季度开始，如果您的时间变量按季度计算，请参见 {manhelp Datetime D}。如果模型包含外生变量，它们必须在整个预测样本中存在。{opt dynamic()} 不能与 {opt xb}、{opt xbf}、{opt innovations}、{cmd:smethod(filter)} 或 {cmd:smethod(smooth)} 一起指定。

{dlgtab:高级}

{phang}
{opt smethod(method)} 指定用于预测模型中未观察状态的方法。 
{opt smethod()} 不能与 {opt xb} 一起指定。

{phang2}
{cmd:smethod(onestep)}，默认情况下，使得 {opt predict} 使用因变量的过去信息。对过去阶段执行卡尔曼滤波，但仅对当前阶段进行一步预测。

{phang2}
{cmd:smethod(smooth)} 使得 {opt predict} 使用所有样本数据通过卡尔曼平滑器在每个时间段估计状态。

{phang2}
{cmd:smethod(filter)} 使得 {opt predict} 使用过去和当前数据通过卡尔曼滤波器在每个时间段估计状态。在过去阶段和当前阶段执行卡尔曼滤波。{cmd:smethod(filter)} 只能与 {cmd:factors} 和 {cmd:residuals} 一起指定。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse dfex}{p_end}
{phang2}{cmd:. dfactor (D.(ipman income hours unemp) = , noconstant ar(1))}
        {cmd:(f = , ar(1/2))}{p_end}

{pstd}预测 {cmd:ipman} 在未来 6 个月的变化，使用从 2008 年 12 月开始的动态预测，然后绘制该系列{p_end}
{phang2}{cmd:. tsappend, add(6)}{p_end}
{phang2}{cmd:. predict Dipman_f, dynamic(tm(2008m12)) equation(D.ipman)}{p_end}
{phang2}{cmd:. tsline D.ipman Dipman_f if month>=tm(2008m1),}
            {cmd:xtitle("") legend(rows(2))}{p_end}

{pstd}预测并绘制未观察因子以及 {cmd:ipman} 的变化{p_end}
{phang2}{cmd:. predict fac if e(sample), factor}{p_end}
{phang2}{cmd:. tsline D.ipman fac, lcolor(gs10) xtitle("") legend(rows(2))}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dfactor_postestimation.sthlp>}