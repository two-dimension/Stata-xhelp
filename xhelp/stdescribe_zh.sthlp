{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog stdescribe "dialog stdescribe"}{...}
{vieweralsosee "[ST] stdescribe" "mansection ST stdescribe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] stsum" "help stsum_zh"}{...}
{vieweralsosee "[ST] stvary" "help stvary_zh"}{...}
{viewerjumpto "Syntax" "stdescribe_zh##syntax"}{...}
{viewerjumpto "Menu" "stdescribe_zh##menu"}{...}
{viewerjumpto "Description" "stdescribe_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stdescribe_zh##linkspdf"}{...}
{viewerjumpto "Options" "stdescribe_zh##options"}{...}
{viewerjumpto "Examples" "stdescribe_zh##examples"}{...}
{viewerjumpto "Video example" "stdescribe_zh##video"}{...}
{viewerjumpto "Stored results" "stdescribe_zh##results"}
{help stdescribe:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[ST] stdescribe} {hline 2}}描述生存时间数据{p_end}
{p2col:}({mansection ST stdescribe:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:stdescribe} {ifin} [{cmd:,} {opt w:eight} {opt nosh:ow}]

{pstd}
在使用 {cmd:stdescribe} 之前，您必须 {cmd:stset} 您的数据；请参见 {manhelp stset ST}。

{pstd}
可以使用 {cmd:stset} 指定 {opt fweight}、{opt iweight} 和 {opt pweight}；请参见 {manhelp stset ST}。

{pstd}
允许使用 {cmd:by}；请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 概要统计、检验和表格 >}
     {bf:描述生存时间数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stdescribe} 报告生存时间数据集的特征。报告包括受试者人数和与记录数量、进入和退出时间、数据缺口、风险时间和失败次数相关的每个受试者的摘要统计信息。

{pstd}
{cmd:stdescribe} 可用于单记录或多记录以及单失败或多失败的生存时间数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stdescribeQuickstart:快速开始}

        {mansection ST stdescribeRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt weight} 指定摘要使用加权而非未经加权的统计数据。 {opt weight} 除非在 {cmd:stset} 数据时指定权重，否则不会执行。 {cmd:stdescribe} 独有的 {opt weight} 选项和忽略权重的能力。 {cmd:stdescribe} 的目的是从计算机的角度描述数据——记录数量等——出于这个目的，最好忽略权重。

{phang}
{opt noshow} 防止 {cmd:stdescribe} 显示关键生存时间变量。此选项很少使用，因为大多数人输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来设置是否希望在每个生存时间命令输出的顶部显示这些变量；请参见 {manhelp stset ST}。


{marker examples}{...}
{title:单条记录生存数据示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse page2}

{pstd}描述生存时间数据{p_end}
{phang2}{cmd:. stdescribe}


{title:多条记录生存数据示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}

{pstd}防止其他生存时间命令显示生存设置信息{p_end}
{phang2}{cmd:. stset, noshow}

{pstd}描述生存时间数据{p_end}
{phang2}{cmd:. stdescribe}

{pstd}描述未接受移植患者的生存时间数据{p_end}
{phang2}{cmd:. stdescribe if !transplant}

{pstd}描述接受移植患者的生存时间数据{p_end}
{phang2}{cmd:. stdescribe if transplant}


{title:多失败数据示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mfail2}

{pstd}描述生存时间数据{p_end}
{phang2}{cmd:. stdescribe}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=zw8UvYdI8y8":如何描述和总结生存数据}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stdescribe} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_sub)}}受试者数量{p_end}
{synopt:{cmd:r(N_total)}}记录总数{p_end}
{synopt:{cmd:r(N_min)}}记录最小值{p_end}
{synopt:{cmd:r(N_mean)}}记录平均数{p_end}
{synopt:{cmd:r(N_med)}}记录中位数{p_end}
{synopt:{cmd:r(N_max)}}记录最大值{p_end}
{synopt:{cmd:r(t0_min)}}首次进入时间最小值{p_end}
{synopt:{cmd:r(t0_mean)}}首次进入时间平均数{p_end}
{synopt:{cmd:r(t0_med)}}首次进入时间中位数{p_end}
{synopt:{cmd:r(t0_max)}}首次进入时间最大值{p_end}
{synopt:{cmd:r(t1_min)}}最终退出时间最小值{p_end}
{synopt:{cmd:r(t1_mean)}}最终退出时间平均数{p_end}
{synopt:{cmd:r(t1_med)}}最终退出时间中位数{p_end}
{synopt:{cmd:r(t1_max)}}最终退出时间最大值{p_end}
{synopt:{cmd:r(N_gap)}}有间隙的受试者数量{p_end}
{synopt:{cmd:r(gap)}}总间隙，如果存在间隙{p_end}
{synopt:{cmd:r(gap_min)}}最小间隙，如果存在间隙{p_end}
{synopt:{cmd:r(gap_mean)}}平均间隙，如果存在间隙{p_end}
{synopt:{cmd:r(gap_med)}}中位间隙，如果存在间隙{p_end}
{synopt:{cmd:r(gap_max)}}最大间隙，如果存在间隙{p_end}
{synopt:{cmd:r(tr)}}风险总时间{p_end}
{synopt:{cmd:r(tr_min)}}风险时间最小值{p_end}
{synopt:{cmd:r(tr_mean)}}风险时间平均数{p_end}
{synopt:{cmd:r(tr_med)}}风险时间中位数{p_end}
{synopt:{cmd:r(tr_max)}}风险时间最大值{p_end}
{synopt:{cmd:r(N_fail)}}失败次数{p_end}
{synopt:{cmd:r(f_min)}}失败最小值{p_end}
{synopt:{cmd:r(f_mean)}}失败平均数{p_end}
{synopt:{cmd:r(f_med)}}失败中位数{p_end}
{synopt:{cmd:r(f_max)}}失败最大值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stdescribe.sthlp>}