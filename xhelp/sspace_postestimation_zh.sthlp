{smcl}
{* *! version 1.1.3  15may2018}{...}
{viewerdialog predict "dialog sspace_p"}{...}
{vieweralsosee "[TS] sspace postestimation" "mansection TS sspacepostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfactor" "help dfactor_zh"}{...}
{vieweralsosee "[TS] dfactor postestimation" "help dfactor_postestimation_zh"}{...}
{viewerjumpto "后期估计命令" "sspace postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "sspace_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "sspace postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "sspace postestimation##examples"}
{help sspace_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[TS] sspace postestimation} {hline 2}}sspace的后期估计工具{p_end}
{p2col:}({mansection TS sspacepostestimation:查看完整的PDF手册条目}){p_end}


{marker description}{...}
{title:后期估计命令}

{pstd}
在执行 {cmd:sspace} 后，可以使用以下标准后期估计命令：

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
{synopt :{helpb sspace postestimation##predict:预测}}预测，残差，
影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS sspacepostestimationRemarksandexamples:备注和示例}

        {mansection TS sspacepostestimationMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-} 
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab :主要}
{synopt :{opt xb}}可观察变量{p_end}
{synopt :{opt states}}潜在状态变量{p_end}
{synopt :{opt residuals}}残差{p_end}
{synopt :{opt rstandard}}标准化残差{p_end}
{synoptline}
INCLUDE help esample
{p2colreset}{...}

{synoptset 25 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab :选项}
{synopt :{opt equation(eqnames)}}要进行预测的方程名称{p_end}
{synopt :{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)}}将预测统计的估计均方根误差放入新变量
{p_end}
{synopt :{opt dynamic(time_constant)}}在指定时间开始动态预测{p_end}

{syntab :高级}
{synopt :{opt smethod(method)}}预测未观察到的状态的方法{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 17 tabbed}{...}
{synopthdr :方法}
{synoptline}
{synopt :{opt onestep}}使用过去信息进行预测{p_end}
{synopt :{opt smooth}}使用所有样本信息进行预测{p_end}
{synopt :{opt filter}}使用过去和现期信息进行预测{p_end}
{synoptline}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量。均方根误差适用于所有预测。所有预测也可以作为静态的一步预测或动态的多步预测，并且您可以控制动态预测的开始时间。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}、{opt states}、{opt residuals} 和 {opt rstandard} 指定要预测的统计量。

{phang2}
{cmd:xb}，默认值，计算可观察变量的线性预测。

{phang2}
{cmd:states} 计算潜在状态变量的线性预测。

{phang2}
{cmd:residuals} 计算可观察变量方程中的残差。{cmd:residuals} 不能与 {cmd:dynamic()} 一起指定。

{phang2}
{cmd:rstandard} 计算标准化残差，即残差被标准化为无相关且具有单位方差的值。
{cmd:rstandard} 不能与 {cmd:smethod(filter)}、{cmd:smethod(smooth)} 或 {cmd:dynamic()} 一起指定。

{dlgtab:选项}

{phang}
{opt equation(eqnames)} 指定要计算预测的方程。如果您未指定 {opt equation()} 或 {it:stub}{cmd:*}，则结果与您指定第一个方程名的结果相同。

{pmore}
您可以指定方程名列表，例如 {cmd:equation(income consumption)} 或 {cmd:equation(factor1 factor2)} 来识别方程。在预测 {cmd:states} 时指定状态方程名，在所有其他情况下指定可观察方程名。

{pmore}
{cmd:equation()} 不能与 {it:stub}{cmd:*} 一起指定。

{phang}
{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{cmd:)} 将预测统计的均方根误差放入指定的新变量中。均方根误差衡量由于扰动造成的方差，但不考虑估计误差。

{phang}
{opt dynamic(time_constant)} 指定 {opt predict} 何时开始生成动态预测。指定的 {it:time_constant} 必须在 {opt tsset} 中指定的时间变量的范围内，且 {it:time_constant} 必须在样本内，其中可观察到因变量的观测值可用。例如，{cmd:dynamic(tq(2008q4))} 将使动态预测在2008年第四季度开始，假设您的时间变量按季度计算；请参见 {manhelp Datetime D}。如果模型包含外生变量，则它们必须在整个预测样本中存在。{opt dynamic()} 不能与 {opt rstandard}、{opt residuals} 或 {cmd:smethod(smooth)} 一起指定。

{dlgtab:高级}

{phang}
{opt smethod(method)} 指定用于预测未观察到的状态的方法； {cmd:smethod(onestep)}、{cmd:smethod(filter)} 和 {cmd:smethod(smooth)} 在每个时间段的状态预测中使用不同数量的因变量信息。

{phang2}
{cmd:smethod(onestep)}，默认值，使得 {opt predict} 在每个时间段使用以前的因变量信息来估计状态。卡尔曼滤波会在以前的时期进行，但当前时期只做一步预测。

{phang2}
{cmd:smethod(smooth)} 使得 {cmd:predict} 使用所有样本数据通过卡尔曼平滑器来估计每个时间段的状态。{cmd:smethod(smooth)} 不能与 {cmd:rstandard} 一起指定。

{phang2}
{cmd:smethod(filter)} 使得 {cmd:predict} 使用之前和当前的数据通过卡尔曼滤波来估计每个时间段的状态。卡尔曼滤波会在之前的时期和当前时期进行。{cmd:smethod(filter)} 只能与 {cmd:states} 一起指定。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse dfex}{p_end}
{phang2}{cmd:. constraint 1 [lf]L.f = 1}{p_end}
        {cmd:. sspace (f L.f L.lf, state noconstant)     ///}
                 {cmd:(lf L.f, state noconstant noerror) ///}
                 {cmd:(D.ipman f, noconstant)            ///}
                 {cmd:(D.income f, noconstant)           ///}
                 {cmd:(D.hours f, noconstant)            ///}
                 {cmd:(D.unemp f, noconstant),           ///}
                 {cmd:covstate(identity) constraints(1)}

{pstd}为四个观察系列生成样本内预测并绘制 {cmd:D.ipman} 及其预测{p_end}
{phang2}{cmd:. predict dep*}{p_end}
{phang2}{cmd:. tsline D.ipman dep1}

{pstd}预测 {cmd:ipman} 六个月后的变化，使用从2008年12月开始的动态预测，然后绘制该系列{p_end}
{phang2}{cmd:. tsappend, add(6)}{p_end}
{phang2}{cmd:. predict Dipman_f, dynamic(tm(2008m12)) equation(D.ipman)}{p_end}
{phang2}{cmd:. tsline D.ipman Dipman_f if month>=tm(2008m1), xtitle("")}
                  {cmd:legend(rows(2))}{p_end}

{pstd}使用卡尔曼平滑器预测未观察到的因子，并将其与 {cmd:D.ipman} 一起绘制{p_end}
{phang2}{cmd:. predict fac if e(sample), states smethod(smooth) equation(f)}
{p_end}
{phang2}{cmd:. tsline D.ipman fac, xtitle("") legend(rows(2))}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sspace_postestimation.sthlp>}