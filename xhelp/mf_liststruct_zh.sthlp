{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] liststruct()" "mansection M-5 liststruct()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] struct" "help m2_struct_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_liststruct_zh##syntax"}{...}
{viewerjumpto "Description" "mf_liststruct_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_liststruct_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_liststruct_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_liststruct_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_liststruct_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_liststruct_zh##source"}
{help mf_liststruct:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] liststruct()} {hline 2}}列出结构内容
{p_end}
{p2col:}({mansection M-5 liststruct():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:liststruct(}{it:struct whatever matrix x}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:liststruct()} 列出 {it:x} 的内容，其中 {it:x} 是结构 {it:whatever} 的一个实例。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 liststruct()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:liststruct()} 通常在调试中非常有用。

{p 4 4 2}
所有元素的维度和类型都会列出，标量的值也会显示。


{marker conformability}{...}
{title:相容性}

    {cmd:liststruct(}{it:x}{cmd:)}
		{it:x}:  {it:r x c}
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断信息}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view liststruct.mata, adopath asis:liststruct.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_liststruct.sthlp>}