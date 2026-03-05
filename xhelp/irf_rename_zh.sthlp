{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog "irf rename" "dialog irf_rename"}{...}
{vieweralsosee "[TS] irf rename" "mansection TS irfrename"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "irf_rename_zh##syntax"}{...}
{viewerjumpto "Menu" "irf_rename_zh##menu"}{...}
{viewerjumpto "Description" "irf_rename_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "irf_rename_zh##linkspdf"}{...}
{viewerjumpto "Option" "irf_rename_zh##option"}{...}
{viewerjumpto "Examples" "irf_rename_zh##examples"}{...}
{viewerjumpto "Stored results" "irf_rename_zh##results"}
{help irf_rename:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TS] irf rename} {hline 2}}在 IRF 文件中重命名 IRF 结果{p_end}
{p2col:}({mansection TS irfrename:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 22 2}
{cmd:irf} {opt ren:ame}
	{it:oldname} {it:newname}
	[{cmd:,} {opth set(filename)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量时间序列 > 管理 IRF 结果和文件 >}
   {bf:重命名 IRF 结果}


{marker description}{...}
{title:描述}

{pstd}
{opt irf rename} 更改活动 IRF 文件中一组 IRF 结果的名称。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irfrenameQuickstart:快速入门}

        {mansection TS irfrenameRemarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opth set(filename)} 指定要激活的文件； 
请参见 {manhelp irf_set TS:irf set}。如果未指定 {opt set()}，则使用活动文件。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}

{pstd}适配 VAR 模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4), lags(1/2)}
          {cmd:dfk}

{pstd}通过使用内生变量的各种排序创建 IRF 结果 {cmd:original}、{cmd:order2} 和 {cmd:order3}{p_end}
{phang2}{cmd:. irf create original, set(myirfs, replace)}{p_end}
{phang2}{cmd:. irf create order2, order(dln_inc dln_inv dln_consump)}{p_end}
{phang2}{cmd:. irf create order3, order(dln_inc dln_consump dln_inv)}{p_end}

{pstd}显示 IRF 结果的简要摘要{p_end}
{phang2}{cmd:. irf describe}

{pstd}将 IRF 结果 {cmd:original} 重命名为 {cmd:order1}{p_end}
{phang2}{cmd:. irf rename original order1}

{pstd}显示 IRF 结果的摘要{p_end}
{phang2}{cmd:. irf describe}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:irf rename} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(irfnames)}}{it:irfnames} 重命名后的结果{p_end}
{synopt:{cmd:r(oldnew)}}{it:oldname} {it:newname}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_rename.sthlp>}