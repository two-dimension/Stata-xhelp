{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] reldif()" "mansection M-5 reldif()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_reldif_zh##syntax"}{...}
{viewerjumpto "Description" "mf_reldif_zh##description"}{...}
{viewerjumpto "Conformability" "mf_reldif_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_reldif_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_reldif_zh##source"}
{help mf_reldif:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] reldif()} {hline 2}}相对/绝对差异
{p_end}
{p2col:}({mansection M-5 reldif():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:实数矩阵}{bind:    }
{cmd:reldif(}{it:数值矩阵 X}{cmd:,}
{it:数值矩阵 Y}{cmd:)}

{p 8 8 2}
{it:实数标量}{bind:   }
{cmd:mreldif(}{it:数值矩阵 X}{cmd:,}
{it:数值矩阵 Y}{cmd:)}

{p 8 8 2}
{it:实数标量}
{cmd:mreldifsym(}{it:数值矩阵 X}{cmd:)}

{p 8 8 2}
{it:实数标量}{bind: }
{cmd:mreldifre(}{it:数值矩阵 X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:reldif(}{it:X}, {it:Y}{cmd:)} 返回由以下公式定义的相对差异：

		      |X - Y|
		r =  ---------
		      |Y| + 1

{p 4 4 2}
通过元素逐个计算。

{p 4 4 2}
{cmd:mreldif(}{it:X}, {it:Y}{cmd:)} 返回最大相对差异，等同于 {cmd:max(reldif(}{it:X}, {it:Y}{cmd:)}。

{p 4 4 2}
{cmd:mreldifsym(}{it:X}{cmd:)} 等同于 
{cmd:mreldif(}{it:X}{cmd:',} {it:X}{cmd:)} ，因此是度量矩阵距离对称（厄米）的程度。

{p 4 4 2}
{cmd:mreldifre(}{it:X}{cmd:)} 等同于 
{cmd:mreldif(Re(}{it:X}{cmd:),} {it:X}{cmd:)} ，因此是度量矩阵距离实数的程度。


{marker conformability}{...}
{title:兼容性}

    {cmd:reldif(}{it:X}, {it:Y}{cmd:)}:
		{it:X}:  {it:r x c}
		{it:Y}:  {it:r x c}
	   {it:结果}:  {it:r x c}

    {cmd:mreldif(}{it:X}, {it:Y}{cmd:)}:
		{it:X}:  {it:r x c}
		{it:Y}:  {it:r x c}
	   {it:结果}:  1 {it:x} 1

    {cmd:mreldifsym(}{it:X}{cmd:)}:
		{it:X}:  {it:n x n}
	   {it:结果}:  1 {it:x} 1

    {cmd:mreldifre(}{it:X}{cmd:)}:
		{it:X}:  {it:r x c}
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
相对差异函数将相等的缺失值视为差异为0，并将不同的缺失值视为差异为缺失 ({cmd:.})：

{p 8 8 2}
{cmd:reldif(., .) == reldif(.a, .a) ==} ... {cmd:== reldif(.z, .z) == 0}

{p 8 8 2}
{cmd:reldif(., .a) == reldif(., .z) ==} ... {cmd:== reldif(.y, .z) == .}


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_reldif.sthlp>}