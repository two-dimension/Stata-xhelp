{smcl}
{* *! version 1.1.6  19oct2017}{...}
{viewerdialog "irf drop" "dialog irf_drop"}{...}
{vieweralsosee "[TS] irf drop" "mansection TS irfdrop"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "irf_drop_zh##syntax"}{...}
{viewerjumpto "Menu" "irf_drop_zh##menu"}{...}
{viewerjumpto "Description" "irf_drop_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "irf_drop_zh##linkspdf"}{...}
{viewerjumpto "Option" "irf_drop_zh##option"}{...}
{viewerjumpto "Example" "irf_drop_zh##example"}
{help irf_drop:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] irf drop} {hline 2}}从活动 IRF 文件中删除 IRF 结果{p_end}
{p2col:}({mansection TS irfdrop:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{cmd:irf}
{opt drop}
{it:irf_resultslist}
[{cmd:,} {opth set(filename)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量时间序列 > 管理 IRF 结果和文件 >}
    {bf:删除 IRF 结果}


{marker description}{...}
{title:描述}

{pstd}
{opt irf drop} 从活动 IRF 文件中移除 IRF 结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irfdropQuickstart:快速入门}

        {mansection TS irfdropRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opth set(filename)} 指定要激活的文件；请参阅
{manhelp irf_set TS:irf set}。
   如果未指定 {opt set()}，将使用活动文件。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}

{pstd}拟合一个 VAR 模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4), lags(1/2)}
           {cmd:dfk}

{pstd}使用内生变量的不同排序创建 IRF 结果 {cmd:order1}、{cmd:order2} 和 {cmd:order3}{p_end}
{phang2}{cmd:. irf create order1, set(myirfs, replace)}{p_end}
{phang2}{cmd:. irf create order2, order(dln_inc dln_inv dln_consump)}{p_end}
{phang2}{cmd:. irf create order3, order(dln_inc dln_consump dln_inv)}

{pstd}显示 IRF 结果的简要总结{p_end}
{phang2}{cmd:. irf describe}

{pstd}删除 IRF 结果 {cmd:order1} 和 {cmd:order2}{p_end}
{phang2}{cmd:. irf drop order1 order2}

{pstd}显示 IRF 结果的总结{p_end}
{phang2}{cmd:. irf describe}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_drop.sthlp>}