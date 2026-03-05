{smcl}
{* *! version 1.0.0  27feb2019}{...}
{viewerdialog predict "dialog npregress_series_p"}{...}
{vieweralsosee "[R] npregress series postestimation" "mansection R npregressseriespostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] npregress series" "help npregress series"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap postestimation" "help bootstrap postestimation"}{...}
{viewerjumpto "后期估计命令" "npregress series_postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "npregress_series_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "npregress_series_postestimation_zh##syntax_predict"}{...}
{viewerjumpto "边际" "npregress_series_postestimation_zh##syntax_margins"}{...}
{viewerjumpto "示例" "npregress_series_postestimation_zh##examples"}{...}
{viewerjumpto "参考文献" "npregress_series_postestimation_zh##reference"}
{help npregress_series_postestimation:English Version}
{hline}{...}
{p2colset 1 40 42 2}{...}
{p2col:{bf:[R] npregress series postestimation} {hline 2}}npregress 系列的后期估计工具{p_end}
{p2col:}({mansection R npregressseriespostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
在执行 {cmd:npregress series} 后，以下标准的后期估计命令可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
{synopt:{helpb npregress_series_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb npregress_series_postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R npregressseriespostestimationRemarksandexamples:备注和示例}

        {mansection R npregressseriespostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker predict}{...}
{marker syntax_predict}{...}
{title:预测语法}

{p 8 19 2}
{cmd:predict}
{dtype}
{newvar} {ifin}
[{cmd:,}
{it:statistic} {cmd:atsample} {opt tolerance(#)}]

{marker statistic}{...}
{synoptset 19 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt :{opt mean}}结果的条件均值；默认值{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt sc:ore}}得分；等同于 {opt residuals}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些统计量仅适用于估计样本。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{opt predict} 创建一个新变量，其中包含诸如结果的条件均值、残差或均值函数的得分等预测值。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{opt mean}，默认选项，计算结果变量的条件均值。

{phang}
{opt residuals} 计算残差。

{phang}
{opt score} 是 {opt residuals} 的同义词。

{phang}
{opt atsample} 限制预测值在数据的协变量范围内。如果请求的预测超出数据范围，{opt atsample} 将仅计算原始数据范围内观察值的预测，并排除超出数据范围的观察值。

{pmore}
默认情况下，如果任何协变量的值设定在数据范围之外，预测将不会被计算，除非指定了 {cmd:atsample} 或 {cmd:tolerance()}。

{phang}
{opt tolerance(#)} 设置对协变量范围之外的预测的容差。

{pmore}
默认情况下，如果任何协变量的值设定在数据范围之外，预测将不会被计算，除非指定了 {cmd:tolerance()} 或 {cmd:atsample}。 


{marker syntax_margins}{...}
{marker margins}{...}
{title:边际语法}

{p 8 16 2}
{cmd:margins} [{it:{help margins##syntax:marginlist}}]
[{cmd:,} {it:options}]

{p 8 16 2}
{cmd:margins} [{it:{help margins##syntax:marginlist}}]
{cmd:,}
{opt pr:edict(statistic ...)}
[{it:options}]

{marker statistic}{...}
{synoptset 19 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt :{cmd:mean}}结果的条件均值；默认值{p_end}
{synopt :{cmdab:r:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt sc:ore}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 19 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:标准误(SE)}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:delta}、{cmd:unconditional} 或 {cmdab:boot:strap}{p_end}
{synopt :{opt r:eps(#)}}相当于 {cmd:vce(bootstrap, reps(}{it:#}{cmd:))}{p_end}
{synopt :{opt seed(#)}}设置随机数种子为 {it:#}；必须同时指定 {opt reps(#)}{p_end}
{synopt :{opt nose}}不估计标准误{p_end}

{syntab:报告}
{synopt :{opth citype:(npregress_series_postestimation##citype:citype)}}计算置信区间的方法；默认值为 {cmd:citype(}{cmdab:p:ercentile}{cmd:)}{p_end}
{synoptline}
{p2colreset}{...}

{marker citype}{...}
{synoptset 19}{...}
{synopthdr:citype}
{synoptline}
{synopt :{opt p:ercentile}}百分位置信区间；默认值{p_end}
{synopt :{opt bc}}偏差修正的置信区间{p_end}
{synopt :{opt nor:mal}}基于正态分布的置信区间{p_end}
{synoptline}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际描述}

{pstd}
{opt margins} 估计条件均值的边际。


{marker options_margins}{...}
{title:边际选项}

{dlgtab:标准误(SE)}

{phang}
{cmd:vce(delta)}, {cmd:vce(unconditional)} 和 {cmd:vce(bootstrap)} 指定如何计算 VCE 及相应的标准误。

{phang2}
{cmd:vce(delta)} 是默认选项。delta 方法应用于响应的公式及估计命令的 VCE。
该方法假定用于计算响应的协变量取固定值，或者如果所有协变量均未固定使用 {cmd:at()}，则数据是给定的。

{phang2}
{cmd:vce(unconditional)} 指定处理未固定的协变量，以考虑其被抽样的方式。VCE 使用线性化方法估计。此方法允许异方差或其他分布假设的违反，方式与 {cmd:vce(robust)} 相同，这是 {cmd:npregress series} 的默认选项。

{phang2}
{cmd:vce(bootstrap)} 指定报告自助法标准误；参见 {manhelpi vce_option R}。我们建议您使用 {opt reps(#)} 选择重复次数，而不是指定 {cmd:vce(bootstrap)}，后者默认设置为 50 次重复。请注意，产生良好的标准误估计所需的重复次数因问题而异。

{phang}
{opt reps(#)} 指定要执行的自助法重复次数。
指定此选项相当于指定 {cmd:vce(bootstrap, reps(}{it:#}{cmd:))}。

{phang}
{opt seed(#)} 设置随机数种子。
您必须在使用 {opt seed(#)} 时指定 {opt reps(#)}。

{phang}
{opt nose}
     抑制 VCE 和标准误的计算。

{dlgtab:报告}

{phang}
{opt citype(citype)} 指定要计算的置信区间类型。
默认情况下，报告自助法百分位置信区间，建议使用方式
{help npregress series_postestimation##CJ2018:Cattaneo and Jansson (2018)}。
{it:citype} 可以是 {cmd:percentile}、{cmd:bc} 或 {cmd:normal}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse dui}

{pstd}非参数系列回归 {cmd:citations} 作为 {cmd:fines}、管辖权的大小和 {cmd:taxes} 的函数{p_end}
{phang2}{cmd:. npregress series citations fines i.csize i.taxes}

{pstd}估计不同罚款水平下的平均引用数{p_end}
{phang2}{cmd:. margins, at(fines=(8 9 10 11))}

{pstd}绘制平均引用数{p_end}
{phang2}{cmd:. marginsplot}

{pstd}估计增加 {cmd:fines} 对不同管辖权大小的影响{p_end}
{phang2}{cmd:. margins csize, dydx(fines)}


{marker reference}{...}
{title:参考文献}

{marker CJ2018}{...}
{phang}
Cattaneo, M. D., 和 M. Jansson. 2018. 基于核的半参数估计量：小带宽渐近法和自助法一致性。
{it:Econometrica} 86: 955-995.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <npregress_series_postestimation.sthlp>}