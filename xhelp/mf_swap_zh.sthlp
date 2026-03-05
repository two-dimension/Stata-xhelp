{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] swap()" "mansection M-5 swap()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_swap_zh##syntax"}{...}
{viewerjumpto "Description" "mf_swap_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_swap_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_swap_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_swap_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_swap_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_swap_zh##source"}
{help mf_swap:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] swap()} {hline 2}}交换变量的内容{p_end}
{p2col:}({mansection M-5 swap():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:void}
{cmd:swap(}{it:transmorphic matrix A}{cmd:,}
{it:transmorphic matrix B}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:swap(}{it:A}{cmd:,} {it:B}{cmd:)} 
交换 {it:A} 和 {it:B} 的内容。 {it:A} 和 {it:B} 
不必具有相同的类型或维度。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 swap()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
没有比 {cmd:swap(}{it:A}{cmd:,} {it:B}{cmd:)} 更快的方法来赋值
{it:A}{cmd:=}{it:B}，当你不关心赋值后 {it:B} 的内容时。例如，你有以下代码

		{it:A} {cmd:=} {it:B}
		{it:B} {cmd:=} ...{it:(矩阵表达式)}...

{p 4 4 2}
更快的方式是

		{cmd:swap(}{it:A}{cmd:,} {it:B}{cmd:)} 
		{it:B} {cmd:=} ...{it:(矩阵表达式)}...

{p 4 4 2}
{cmd:swap()} 的执行时间与 {it:A} 和 {it:B} 的大小无关，并且 {cmd:swap()} 在此方面节省内存。假设 {it:B} 是一个 900
{it:x} 900 矩阵。执行 {it:A}{cmd:=}{it:B} 后，在 {it:B} 被重新赋值之前，会存在两个 900 {it:x} 900 矩阵的副本。使用 {cmd:swap()} 时不会出现这种情况。


{marker conformability}{...}
{title:兼容性}

    {cmd:swap(}{it:A}{cmd:,} {it:B}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:r1 x c1}
		{it:B}:  {it:r2 x c2}
	{it:输出}
		{it:A}:  {it:r2 x c2}
		{it:B}:  {it:r1 x c1}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:swap(}{it:A}{cmd:,} {it:B}{cmd:)} 仅适用于变量。不要
编写，例如 {cmd:swap(}{it:A}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:],}
{it:A}{cmd:[}{it:j}{cmd:,}{it:i}{cmd:])}。这不是错误，但
不会产生任何效果。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_swap.sthlp>}