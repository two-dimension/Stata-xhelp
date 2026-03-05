{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] _fillmissing()" "mansection M-5 _fillmissing()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf__fillmissing_zh##syntax"}{...}
{viewerjumpto "Description" "mf__fillmissing_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf__fillmissing_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf__fillmissing_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf__fillmissing_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf__fillmissing_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf__fillmissing_zh##source"}
{help mf__fillmissing:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] _fillmissing()} {hline 2}}用缺失值填充矩阵
{p_end}
{p2col:}({mansection M-5 _fillmissing():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:_fillmissing(}{it:可变矩阵 A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_fillmissing(}{it:可变矩阵 A}{cmd:)}将 {it:A} 的内容更改为缺失值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 _fillmissing()Remarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
缺失的定义取决于 {it:A} 的存储类型：

		存储类型           内容
		{hline 31}
		实数                     {cmd:.}
		复数                     {cmd:C(.)}
		字符串                   {cmd:""}
		指针                     {cmd:NULL}
		{hline 31}


{marker conformability}{...}
{title:兼容性}

    {cmd:_fillmissing(}{it:A}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:r x c}
	{it:输出:}
		{it:A}:  {it:r x c}

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
{center:翻译自Stata官方帮助文档 <mf__fillmissing.sthlp>}