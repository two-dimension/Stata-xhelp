{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] isview()" "mansection M-5 isview()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] eltype()" "help mf_eltype_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_isview_zh##syntax"}{...}
{viewerjumpto "Description" "mf_isview_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_isview_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_isview_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_isview_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_isview_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_isview_zh##source"}
{help mf_isview:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] isview()} {hline 2}}判断矩阵是否为视图
{p_end}
{p2col:}({mansection M-5 isview():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:实数标量} {cmd:isview(}{it:变形矩阵 X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:isview(}{it:X}{cmd:)} 如果 {it:X} 是一个视图，则返回 1，否则返回 0。

{p 4 4 2}
有关 {help m6_glossary##view:view} 的定义，请参见 {bf:{help m6_glossary_zh:[M-6] 术语表}}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 isview()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
视图矩阵由 {cmd:st_view()} 创建；参见 {bf:{help mf_st_view_zh:[M-5] st_view()}}。


{marker conformability}{...}
{title:适应性}

    {cmd:isview(}{it:X}{cmd:)}:
		{it:X}:  {it:r x c}
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_isview.sthlp>}