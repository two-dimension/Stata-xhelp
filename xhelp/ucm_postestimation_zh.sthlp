{smcl}
{* *! version 1.1.4  15may2018}{...}
{viewerdialog predict "dialog ucm_p"}{...}
{viewerdialog estat "dialog ucm_estat"}{...}
{viewerdialog psdensity "dialog psdensity"}{...}
{vieweralsosee "[TS] ucm postestimation" "mansection TS ucmpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] ucm" "help ucm_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] psdensity" "help psdensity_zh"}{...}
{vieweralsosee "[TS] sspace postestimation" "help sspace postestimation"}{...}
{viewerjumpto "后期估计命令" "ucm postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "ucm_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "ucm postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "ucm postestimation##syntax_estat_period"}{...}
{viewerjumpto "示例" "ucm postestimation##examples"}
{help ucm_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[TS] ucm postestimation} {hline 2}}ucm的后期估计工具{p_end}
{p2col:}({mansection TS ucmpostestimation:查看完整的PDF手册条目}){p_end}


{marker description}{...}
{title:后期估计命令}

{pstd}
以下后期估计命令在 {cmd:ucm} 之后特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb ucm_postestimation##estatperiod:estat period}}以时间单位显示周期{p_end}
{synopt :{help psdensity_zh}}估计谱密度{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后期估计命令也可用：

{synoptset 18}{...}
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
{p2col :{helpb ucm postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS ucmpostestimationRemarksandexamples:备注与示例}

        {mansection TS ucmpostestimationMethodsandformulas:方法与公式}

{pstd}
以上部分未包含在本帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}}} 
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 18 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab :主要}
{synopt :{opt xb}}使用外生变量的线性预测{p_end}
{synopt :{opt tr:end}}趋势成分{p_end}
{synopt :{opt sea:sonal}}季节性成分{p_end}
{synopt :{opt cyc:le}}周期成分{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt rsta:ndard}}标准化残差{p_end}
{synoptline}
INCLUDE help esample
{p2colreset}{...}

{synoptset 25 tabbed}{...}
{synoptset 25 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab :选项}
{synopt :{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}}{cmd:)}把预测统计量的估计均方根误差放入新变量中{p_end}
{synopt :{opt dyn:amic(time_constant)}}在指定时间开始动态预测{p_end}

{syntab :高级}
{synopt :{opt smeth:od(method)}}预测未观察到的成分的方法{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 18}{...}
{synopthdr :方法}
{synoptline}
{synopt :{opt one:step}}使用过去的信息进行预测{p_end}
{synopt :{opt sm:ooth}}使用所有样本信息进行预测{p_end}
{synopt :{opt fi:lter}}使用过去和同时期的信息进行预测{p_end}
{synoptline}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如线性预测、趋势成分、季节性成分、周期性成分以及标准化和非标准化残差等预测。所有预测都可以表示为静态的一步预测或动态的多步预测，您可以控制动态预测的开始时间。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}、{opt trend}、{opt seasonal}、{opt cycle}、{opt residuals} 和 {opt rstandard} 指定要预测的统计量。

{phang2}
{opt xb}，默认情况下，使用外生变量计算线性预测。{bf:xb} 不得与 {cmd:smethod(filter)} 选项同时使用。

{phang2}
{opt trend} 估计未观察的趋势成分。

{phang2}
{opt seasonal} 估计未观察的季节性成分。

{phang2}
{opt cycle} 估计未观察的周期性成分。

{phang2}
{opt residuals} 计算因变量方程中的残差。{opt residuals} 不得与 {opt dynamic()} 同时指定。

{phang2}
{opt rstandard} 计算标准化残差，即标准化为单位方差的残差。{opt rstandard} 不得与 {cmd:smethod(filter)}、{cmd:smethod(smooth)} 或 {cmd:dynamic()} 选项同时指定。

{dlgtab:选项}

{phang}
{cmd:rmse(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}}{cmd:)} 将预测统计量的均方根误差放入指定的新变量中。对具有多个周期的模型，仅在预测周期时需要多个变量。均方根误差测量由干扰造成的方差，但不考虑估计误差。{it:stub}{cmd:*}语法用于具有多个周期的模型，您提供前缀，而 {opt predict} 将为每个预测周期添加数字后缀。

{phang}
{opt dynamic(time_constant)} 指定 {opt predict} 应何时开始生成动态预测。指定的 {it:time_constant} 必须符合 {help tsset_zh} 中指定的时间变量的比例，并且 {it:time_constant} 必须在可用因变量观察值的样本内。例如，{cmd:dynamic(tq(2008q4))} 使动态预测从2008年第四季度开始，假设您的时间变量是季度；参见 {manhelp Datetime D}。如果模型包含外生变量，则必须在整个预测样本中存在它们。{opt dynamic()} 不得与 {opt rstandard}、{opt residuals} 或 {cmd:smethod(smooth)} 选项同时指定。

{dlgtab:高级}

{phang}
{opt smethod(method)} 指定用于预测未观察成分的方法。{opt smethod()} 会在预测组件时使用不同量的信息。

{phang2}
{cmd:smethod(onestep)}，默认情况下，导致 {opt predict} 在每个时间段使用先前信息进行组件估计。卡尔曼滤波器在先前期间进行，但仅为当前期间进行一步预测。

{phang2}
{cmd:smethod(smooth)} 使得 {cmd:predict} 在每个时间段中使用所有样本数据通过卡尔曼平滑器进行组件估计。
{cmd:smethod(smooth)} 不得与 {opt rstandard} 选项同时指定。

{phang2}
{cmd:smethod(filter)} 使得 {cmd:predict} 在每个时间段中利用先前和同时期数据通过卡尔曼滤波器进行组件估计。卡尔曼滤波器在之前的时期和当前时期都进行。{cmd:smethod(filter)} 不得与 {opt xb} 选项同时指定。


{marker syntax_estat_period}{...}
{marker estatperiod}{...}
{title:estat的语法}

{p 8 18 2}
{cmd:estat}
{opt per:iod} [{cmd:,} {it:options}]

{synoptset 18 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab :主要}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opth cformat(%fmt)}}数字格式{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_estat


{marker des_estat}{...}
{title:estat的描述}

{pstd}
{cmd:estat period} 将估计的中央频率转换为估计的周期，适用于 {cmd:ucm} 之后。


{marker options_estat_period}{...}
{title:estat的选项}

{dlgtab:选项}

{phang}
{opt level(#)}
指定置信区间的置信水平（以百分比表示）。默认值为 {cmd:level(95)}，或如 {helpb set level} 设置。


{phang}
{opth cformat(%fmt)} 设置表中数值的显示格式。
默认值为 {cmd:cformat(%9.0g)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse uduration2}{p_end}

{pstd}对美国的就业持续时间中位数的月度数据建模；包括一个随机季节性成分，因为数据没有经过季节调整{p_end}
{phang2}{cmd:. ucm duration, seasonal(12) cycle(1) difficult}{p_end}

{pstd}预测趋势和季节性成分{p_end}
{phang2}{cmd:. predict strend, trend smethod(smooth)}{p_end}
{phang2}{cmd:. predict season, seasonal smethod(smooth)}{p_end}

{pstd}绘制趋势和季节性成分{p_end}
{phang2}{cmd:. tsline duration strend, name(trend) nodraw legend(rows(1))}{p_end}
{phang2}{cmd:. tsline season, name(season) nodraw legend(rows(1))}{p_end}
{phang2}{cmd:. graph combine trend season, rows(2)}{p_end}

{pstd}使用模型预测中位数失业持续时间；使用预测的均方根误差计算动态预测的置信区间{p_end}
{phang2}{cmd:. tsappend, add(12)}{p_end}
{phang2}{cmd:. predict duration_f, dynamic(tm(2009m1)) rmse(rmse)}{p_end}
{phang2}{cmd:. scalar z = invnormal(0.95)}{p_end}
{phang2}{cmd:. generate lbound = duration_f - z*rmse if tm>=tm(2008m12)}{p_end}
{phang2}{cmd:. generate ubound = duration_f + z*rmse if tm>=tm(2008m12)}{p_end}
{phang2}{cmd:. label variable lbound "90% 预测区间"}{p_end}
{phang2}{cmd:. twoway (tsline duration duration_f if tm>=tm(2006m1))}
              {cmd:(tsline lbound ubound if tm>=tm(2008m12)),}
              {cmd:ysize(2) xtitle("") legend(cols(1))}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ucm_postestimation.sthlp>}