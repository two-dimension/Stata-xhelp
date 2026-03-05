{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] all()" "mansection M-5 all()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_all_zh##syntax"}{...}
{viewerjumpto "Description" "mf_all_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_all_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_all_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_all_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_all_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_all_zh##source"}
{help mf_all:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] all()} {hline 2}}元素比较
{p_end}
{p2col:}({mansection M-5 all():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:实数标量} {cmd:all(}{it:实数矩阵 L}{cmd:)}

{p 8 8 2}
{it:实数标量} {cmd:any(}{it:实数矩阵 L}{cmd:)}


{p 8 8 2}
{it:实数标量}
{cmd:allof(}{it:变换矩阵 P}{cmd:,}
{it:变换标量 s}{cmd:)}

{p 8 8 2}
{it:实数标量}
{cmd:anyof(}{it:变换矩阵 P}{cmd:,}
{it:变换标量 s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:all(}{it:L}{cmd:)} 等价于
{cmd:sum(!}{it:L}{cmd:)==0}，但速度明显更快。

{p 4 4 2}
{cmd:any(}{it:L}{cmd:)} 等价于 
{cmd:sum(}{it:L}{cmd:)!=0}，但是
速度稍快。

{p 4 4 2}
{cmd:allof(}{it:P}{cmd:,} {it:s}{cmd:)} 如果 {it:P} 的每个元素
等于 {it:s} 则返回 1，否则返回 0。
{cmd:allof(}{it:P}{cmd:,} {it:s}{cmd:)} 的速度更快且消耗更少内存
比同等构造 {cmd:all(}{it:P}{cmd::==}{it:s}{cmd:)}。

{p 4 4 2}
{cmd:anyof(}{it:P}{cmd:,} {it:s}{cmd:)} 如果 {it:P} 的任何元素
等于 {it:s} 则返回 1，否则返回 0。
{cmd:anyof(}{it:P}{cmd:,} {it:s}{cmd:)} 的速度更快且消耗更少内存
比同等的 
{cmd:any(}{it:P}{cmd::==}{it:s}{cmd:)}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 all()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些函数速度很快，因此建议使用它们而不是替代构造。  

{p 4 4 2}
{cmd:all()} 和 {cmd:any()} 通常与逻辑表达式一起使用
以检测特殊情况，例如 

	{cmd:if (any(x :< 0)) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
或

	{cmd:if (all(x :>= 0)) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
{cmd:allof()} 和 {cmd:anyof()} 用于查找特殊值：

	{cmd:if (allof(x, 0)) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
或 

	{cmd:if (anyof(x, 0)) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
不要使用 {cmd:allof()} 和 {cmd:anyof()} 来检查缺失值 --
例如 {cmd:anyof(x, .)} -- 因为要真正检查，你将不得不
检查不仅是 {cmd:.} 而且是 {cmd:.a}, {cmd:.b}, ..., {cmd:.z}。  应该使用 
{cmd:missing()}; 参见 {bf:{help mf_missing_zh:[M-5] missing()}}。


{marker conformability}{...}
{title:适应性}

    {cmd:all(}{it:L}{cmd:)}, {cmd:any(}{it:L}{cmd:)}:
		{it:L}:  {it:r x c}
	   {it:结果}:  1 {it:x} 1


    {cmd:allof(}{it:P}{cmd:,} {it:s}{cmd:)}, {cmd:anyof(}{it:P}{cmd:,} {it:s}{cmd:)}:
		{it:P}:  {it:r x c}
		{it:s}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:all(}{it:L}{cmd:)} 和 
{cmd:any(}{it:L}{cmd:)} 将 {it:L} 中的缺失值视为真。

{p 4 4 2}
{cmd:all(}{it:L}{cmd:)} 和 {cmd:any(}{it:L}{cmd:)} 
返回 0（假）如果 {it:L} 是 {it:r x} 0, 0 {it:x c}, 或 0 {it:x} 0。

{p 4 4 2}
{cmd:allof(}{it:P}{cmd:,} {it:s}{cmd:)} 和
{cmd:anyof(}{it:P}{cmd:,} {it:s}{cmd:)}
返回 0（假）如果 {it:P} 是 {it:r x} 0, 0 {it:x c}, 或 0 {it:x} 0。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_all.sthlp>}