{smcl}
{* *! version 1.1.0  27feb2019}{...}
{viewerdialog predict "dialog npregress_kernel_p"}{...}
{viewerdialog npgraph "dialog npgraph"}{...}
{vieweralsosee "[R] npregress kernel postestimation" "mansection R npregresskernelpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] npregress kernel" "help npregress kernel"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap postestimation" "help bootstrap postestimation"}{...}
{viewerjumpto "后估计命令" "npregress_kernel_postestimation_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "npregress_kernel_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "npregress_kernel_postestimation_zh##syntax_predict"}{...}
{viewerjumpto "边际" "npregress_kernel_postestimation_zh##syntax_margins"}{...}
{viewerjumpto "npgraph" "npregress_kernel_postestimation_zh##syntax_npgraph"}{...}
{viewerjumpto "示例" "npregress_kernel_postestimation_zh##examples"}{...}
{viewerjumpto "参考文献" "npregress_kernel_postestimation_zh##reference"}
{help npregress_kernel_postestimation:English Version}
{hline}{...}
{p2colset 1 40 42 2}{...}
{p2col:{bf:[R] npregress kernel postestimation} {hline 2}}npregress kernel 的后估计工具{p_end}
{p2col:}({mansection R npregresskernelpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:npregress kernel} 后特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb npregress_kernel_postestimation##npgraph:npgraph}}条件均值图{p_end}
{synoptline}


{pstd}
以下标准后估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
{synopt:{helpb npregress_kernel_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb npregress_kernel_postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R npregresskernelpostestimationRemarksandexamples:备注和示例}

        {mansection R npregresskernelpostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker predict}{...}
{marker syntax_predict}{...}
{title:预测的语法}

{p 8 19 2}
{cmd:predict}
{dtype}
{newvar} {ifin}
[{cmd:,}
{it:statistic}]

{p 8 19 2}
{cmd:predict}
{dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}}
{ifin}{cmd:,}
{cmdab:deriv:atives}

{marker statistic}{...}
{synoptset 19 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt :{cmd:mean}}结果的条件均值；默认值{p_end}
{synopt :{cmdab:r:esiduals}}残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如结果的条件均值、残差或均值函数的导数。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{cmd:mean}，默认情况下，计算结果变量的条件均值。

{phang}
{cmd:residuals} 计算残差。

{phang}
{cmd:derivatives} 计算条件均值的导数。


{marker syntax_margins}{...}
{marker margins}{...}
{title:边际的语法}

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
{synopt :{cmdab:r:esiduals}}与 {cmd:margins} 不允许{p_end}
{synopt :{cmdab:deriv:atives}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 19 tabbed}{...}
{synopthdr:options}
{synoptline}
{syntab:标准误}
{synopt :{opt nose}}不估计标准误；默认值{p_end}
{synopt :{cmd:vce(bootstrap)}}估计自助法标准误{p_end}
{synopt :{opt r:eps(#)}}等同于 {cmd:vce(bootstrap, reps(}{it:#}{cmd:))}{p_end}
{synopt :{opt seed(#)}}将随机数种子设置为 {it:#}；必须同时指定 {opt reps(#)}{p_end}

{syntab:报告}
{synopt :{opth citype:(npregress_kernel postestimation##citype:citype)}}计算自助法置信区间的方法；默认值为 {cmd:citype(}{cmdab:p:ercentile}{cmd:)}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 19}{...}
{marker citype}{...}
{synopthdr:citype}
{synoptline}
{synopt :{opt p:ercentile}}百分位数置信区间；默认值{p_end}
{synopt :{opt bc}}偏差校正置信区间{p_end}
{synopt :{opt nor:mal}}基于正态分布的置信区间{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计条件均值的边际。


{marker options_margins}{...}
{title:边际的选项}

{dlgtab:标准误}

{phang}
{opt nose}
     抑制 VCE 和标准误的计算。
     这是默认值。

{phang}
{cmd:vce(bootstrap)} 指定报告的标准误类型；见 {manhelpi vce_option R}。

{pmore}
我们建议您使用 {opt reps(#)} 选择重复次数，而不是指定 {cmd:vce(bootstrap)}，后者默认值为 50 次重复。请注意，产生良好的标准误估计所需的重复次数会因问题而异。

{phang}
{opt reps(#)} 指定要执行的自助法重复次数。
指定此选项相当于
指定 {cmd:vce(bootstrap, reps(}{it:#}{cmd:))}。

{phang}
{opt seed(#)} 设置随机数种子。
您必须与 {opt seed(#)} 一起指定 {opt reps(#)}。

{dlgtab:报告}

{phang}
{opt citype(citype)} 指定要计算的置信区间类型。
默认情况下，报告自助法百分位数置信区间，推荐使用
{help npregress_kernel_postestimation##CJ2018:Cattaneo 和 Jansson (2018)}。
{it:citype} 可以是 {cmd:percentile}、{cmd:bc} 或 {cmd:normal}。


{marker syntax_npgraph}{...}
{marker npgraph}{...}
{title:npgraph 的语法}

{p 8 15 2}
{cmd:npgraph}
{ifin}
[{cmd:,} {it:options}]

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:绘图}
{p2col:{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}
{p2col:{it:{help marker_label_options_zh}}}添加标记标签；更改外观或位置{p_end}
{synopt :{opt nosc:atter}}抑制散点图{p_end}

{syntab:平滑线}
{synopt :{opth lineop:ts(cline_options)}}影响平滑线的呈现{p_end}

{syntab:添加图}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图添加其他图形{p_end}

{syntab:Y 轴、X 轴、标题、图例、整体}
{synopt :{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的选项，除了 {cmd:by()}。{p_end}
{synoptline}
{p2colreset}{...}


{title:npgraph 的描述}

{pstd}
{cmd:npgraph} 绘制由 {cmd:npregress kernel} 估计的条件均值，并叠加在数据的散点图上。{cmd:npgraph} 仅在拟合具有一个协变量的模型后可用。


{title:npgraph 的选项}

{dlgtab:绘图}

{phang}
{it:marker_options} 影响在绘制点处绘制的标记的外观，包括形状、大小、颜色和轮廓；见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options} 指定标记的标签及其方式；见 {manhelpi marker_label_options G-3}

{phang}
{opt noscatter} 抑制将观察到的数据的散点图叠加于平滑曲线之上。该选项在结果点的数量太大而会混淆图形时很有用。

{dlgtab:平滑线}

{phang}
{opt lineopts(cline_options)} 影响平滑线的呈现；见 {manhelpi cline_options G-3}。

{dlgtab:添加图}

{phang}
{opt addplot(plot)} 提供了一种向生成的图形添加其他图的方式；见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴、X 轴、标题、图例、整体}

{phang}
{it:twoway_options} 是文档中记录的任何选项 {manhelpi twoway_options G-3}，除了 {cmd:by()}。这些选项包括给图形命名的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse dui}

{pstd}以 {cmd:citations} 为因变量、{cmd:fines} 为自变量进行非参数核回归{p_end}
{phang2}{cmd:. npregress kernel citations fines}

{pstd}绘制估计的条件均值函数{p_end}
{phang2}{cmd:. npgraph}

{pstd}将 {cmd: taxes} 作为离散协变量添加{p_end}
{phang2}{cmd:. npregress kernel citations fines i.taxes}

{pstd}估计罚款增加 15% 时的引用平均数{p_end}
{phang2}{cmd:. margins, at(fines=generate(fines*1.15))}


{marker reference}{...}
{title:参考文献}

{marker CJ2018}{...}
{phang}
Cattaneo, M. D., 和 M. Jansson. 2018. 基于核的半参数估计量：小带宽渐近和自助法一致性。
{it:Econometrica} 86: 955-995。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <npregress_kernel_postestimation.sthlp>}