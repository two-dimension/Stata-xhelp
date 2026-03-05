{smcl}
{* *! version 1.1.6  19oct2017}{...}
{viewerdialog "irf add" "dialog irf_add"}{...}
{vieweralsosee "[TS] irf add" "mansection TS irfadd"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "irf_add_zh##syntax"}{...}
{viewerjumpto "Menu" "irf_add_zh##menu"}{...}
{viewerjumpto "Description" "irf_add_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "irf_add_zh##linkspdf"}{...}
{viewerjumpto "Option" "irf_add_zh##option"}{...}
{viewerjumpto "Examples" "irf_add_zh##examples"}
{help irf_add:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] irf add} {hline 2}}将 IRF 文件中的结果添加到活动的 IRF 文件{p_end}
{p2col:}({mansection TS irfadd:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:irf} {opt a:dd}
{c -(}
{opt _all}|[{it:newname}{cmd:=}]{it:oldname ...}{c )-}
{cmd:,}
{opt using(irf_filename)}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 管理 IRF 结果和文件 >}
     {bf:添加 IRF 结果}


{marker description}{...}
{title:描述}

{pstd}
{opt irf add} 从磁盘上现有的 IRF 文件复制结果到通过 {helpb irf set} 设置的活动 IRF 文件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irfaddQuickstart:快速入门}

        {mansection TS irfaddRemarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt using(irf_filename)} 指定结果应从中获取的文件，并为必需项。
如果 {it:irf_filename} 未指定扩展名，则假定为 {opt .irf}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}

{pstd}拟合 VAR 模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4), lags(1/2)}
           {cmd:dfk}

{pstd}创建 IRF 结果 {cmd:original}, {cmd:order2} 并将它们保存到 IRF 文件 {cmd:irf1} 和 {cmd:irf2} 中{p_end}
{phang2}{cmd:. irf create original, set(irf1, replace)}{p_end}
{phang2}{cmd:. irf create order2, order(dln_inc dln_inv dln_consump)}
             {cmd:set(irf2, replace)}{p_end}

{pstd}将 IRF 结果 {cmd:original} 复制到活动文件中，命名为 {cmd:order1}{p_end}
{phang2}{cmd:. irf add order1 = original, using(irf1)}

{pstd}创建新的 IRF 结果并保存到新文件 {cmd:irf3}{p_end}
{phang2}{cmd:. irf create order3, order(dln_inc dln_consump dln_inv)}
            {cmd:set(irf3, replace)}

{pstd}将文件 {cmd:irf2} 中所有 IRF 结果复制到活动文件{p_end}
{phang2}{cmd:. irf add _all, using(irf2)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_add.sthlp>}