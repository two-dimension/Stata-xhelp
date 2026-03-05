{smcl}
{* *! version 1.3.3  19oct2017}{...}
{viewerdialog tsreport "dialog tsreport"}{...}
{vieweralsosee "[TS] tsreport" "mansection TS tsreport"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "语法" "tsreport_zh##syntax"}{...}
{viewerjumpto "菜单" "tsreport_zh##menu"}{...}
{viewerjumpto "描述" "tsreport_zh##description"}{...}
{viewerjumpto "PDF文档链接" "tsreport_zh##linkspdf"}{...}
{viewerjumpto "选项" "tsreport_zh##options"}{...}
{viewerjumpto "示例" "tsreport_zh##examples"}{...}
{viewerjumpto "视频示例" "tsreport_zh##video"}{...}
{viewerjumpto "存储结果" "tsreport_zh##results"}
{help tsreport:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] tsreport} {hline 2}}报告数据集或估计样本的时间序列方面{p_end}
{p2col:}({mansection TS tsreport:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{cmd:tsreport} [{varlist}] {ifin} [{cmd:,} {it:options}]

{synoptset 15 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{synopt :{opt d:etail}}列出每个间隙的时间{p_end}
{synopt :{opt c:asewise}}如果指定的任何变量缺失，则将该时间段视为间隙{p_end}
{synopt :{opt p:anel}}不将面板变化计入间隙{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:varlist}可以包含时间序列运算符；请参见{help tsvarlist_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 设置和工具 >}
{bf:报告数据集的时间序列方面}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsreport}报告数据集或某些变量子集中的时间间隔。默认情况下，{cmd:tsreport}报告数据集中没有记录信息的时间段；时间变量不包括这些时间段。当您指定{varlist}时，{cmd:tsreport}报告数据集中没有记录信息的时间段，或者时间变量存在但{it:varlist}中的一个或多个变量包含缺失值的时间段。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS tsreportQuickstart:快速开始}

        {mansection TS tsreportRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt detail}报告每个间隙的开始和结束时间。

{phang}
{opt casewise}指定如果指定的任何变量缺失，则该时间段被计入间隙。默认情况下，间隙是针对每个变量单独报告的。

{phang}
{opt panel}指定面板变化不计入间隙。面板变化是否计入间隙通常取决于调用命令如何处理面板。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tsrptxmpl}{p_end}

{pstd}报告时间序列中的间隙{p_end}
{phang2}{cmd:. tsreport}{p_end}

{pstd}报告时间序列中每个间隙的开始和结束时间{p_end}
{phang2}{cmd:. tsreport, detail}

{pstd}报告时间序列中每个间隙的开始和结束时间，忽略面板变化{p_end}
{phang2}{cmd:. tsreport, panel detail}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hotelprice}{p_end}

{pstd}报告时间序列中的间隙{p_end}
{phang2}{cmd:. tsreport}{p_end}

{pstd}报告未观察到变量的每个间隙的开始和结束时间{p_end}
{phang2}{cmd:. tsreport price1 price2, detail}{p_end}

{pstd}报告未观察到变量的每个间隙的开始和结束时间，使用逐个案例选择{p_end}
{phang2}{cmd:. tsreport price1 price2, casewise detail}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=SOQvXICIRNY":格式化和管理日期}


{marker results}{...}
{title:存储结果}

{pstd}
当未指定{it:varlist}或指定了{cmd:casewise}时，{cmd:tsreport}在{cmd:r()}中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_gaps)}}间隙数量{p_end}
{synopt:{cmd:r(N_obs)}}观察数量{p_end}
{synopt:{cmd:r(start)}}系列中的第一个时间{p_end}
{synopt:{cmd:r(end)}}系列中的最后一个时间{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(panelvar)}}面板变量名称{p_end}
{synopt:{cmd:r(timevar)}}时间变量名称{p_end}
{synopt:{cmd:r(tsfmt)}}{cmd:%}{it:fmt}的时间变量{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(table)}}如果指定了{cmd:detail}，则包含每个间隙的开始和结束时间的矩阵{p_end}
{p2colreset}{...}


{pstd}
当指定了{it:varlist}且未指定{cmd:casewise}时，{cmd:tsreport}在{cmd:r()}中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_gaps}{it:#}{cmd:)}}变量{it:#}的间隙数量{p_end}
{synopt:{cmd:r(N_obs}{it:#}{cmd:)}}变量{it:#}的观察数量{p_end}
{synopt:{cmd:r(start}{it:#}{cmd:)}}变量{it:#}的系列中的第一个时间{p_end}
{synopt:{cmd:r(end}{it:#}{cmd:)}}变量{it:#}的系列中的最后一个时间{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(panelvar)}}面板变量名称{p_end}
{synopt:{cmd:r(timevar)}}时间变量名称{p_end}
{synopt:{cmd:r(tsfmt)}}{cmd:%}{it:fmt}的时间变量{p_end}
{synopt:{cmd:r(var}{it:#}{cmd:)}}变量{it:#}的名称{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(table}{it:#}{cmd:)}}如果指定了{cmd:detail}，则包含变量{it:#}的每个间隙的开始和结束时间的矩阵{p_end}
{p2colreset}{...}

{pstd}
当在{it:varlist}中指定了{it:k}个变量时，{it:#}的范围为 1 到 k。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsreport.sthlp>}