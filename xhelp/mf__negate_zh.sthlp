{smcl}
{* *! version 1.0.7  15may2018}{...}
{vieweralsosee "[M-5] _negate()" "mansection M-5 _negate()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf__negate_zh##syntax"}{...}
{viewerjumpto "Description" "mf__negate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf__negate_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf__negate_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf__negate_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf__negate_zh##diagnostics"}
{help mf__negate:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] _negate()} {hline 2}}取反实矩阵
{p_end}
{p2col:}({mansection M-5 _negate():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:_negate(}{it:实矩阵 X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_negate(}{it:X}{cmd:)} 快速将 {it:X} 替换为 -{it:X}.


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 _negate()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
编码 {cmd:_negate(X)} 的执行速度比编码 
{cmd:X = -X} 更快。

{p 4 4 2}
但是，编码 

	{cmd:B = A}
	{cmd:_negate(B)}

{p 4 4 2}
并不会比编码

	{cmd:B = -A}

{p 4 4 2}
的执行速度更快。


{marker conformability}{...}
{title:兼容性}

    {cmd:_negate(}{it:X}{cmd:)}:
		{it:X}:  {it:r} {it:x} {it:c}
           {it:结果}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。 {it:X} 可以是一个视图。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__negate.sthlp>}