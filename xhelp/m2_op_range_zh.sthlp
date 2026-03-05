{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] op_range" "mansection M-2 op_range"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_op_range_zh##syntax"}{...}
{viewerjumpto "Description" "m2_op_range_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_op_range_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_op_range_zh##remarks"}{...}
{viewerjumpto "Conformability" "m2_op_range_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "m2_op_range_zh##diagnostics"}
{help m2_op_range:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-2] op_range} {hline 2}}范围运算符
{p_end}
{p2col:}({mansection M-2 op_range:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:a} {cmd:..} {it:b}                  行范围 

	{it:a} {cmd:::} {it:b}                  列范围


{marker description}{...}
{title:描述}

{p 4 4 2}
范围运算符创建从 {it:a} 到 {it:b} 的向量。

{p 4 4 2}
{it:a}{cmd:..}{it:b} 返回一个行向量。

{p 4 4 2}
{it:a}{cmd:::}{it:b} 返回一个列向量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 op_rangeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{it:a}{cmd:..}{it:b} 和 
{it:a}{cmd:::}{it:b}
从 {it:a} 计数至不超过 {it:b}，如果 {it:b}>={it:a} 则递增 1，若 {it:b}<{it:a} 则递减 -1。

{p 4 4 2}
{cmd:1..4} 创建行向量 (1,2,3,4)。{break}
{cmd:1::4} 创建列向量 (1\2\3\4)。

{p 4 4 2}
{cmd:-1..-4} 创建行向量 (-1,-2,-3,-4)。{break}
{cmd:-1::-4} 创建列向量 (-1\-2\-3\-4)。

{p 4 4 2}
{cmd:1.5..4.5} 创建行向量 (1.5, 2.5, 3.5, 4.5)。{break}
{cmd:1.5::4.5} 创建列向量 (1.5\ 2.5\ 3.5\ 4.5)。

{p 4 4 2}
{cmd:1.5..4.4} 创建行向量 (1.5, 2.5, 3.5)。{break}
{cmd:1.5::4.4} 创建列向量 (1.5\ 2.5\ 3.5)。

{p 4 4 2}
{cmd:-1.5..-4.4} 创建行向量 (-1.5, -2.5, -3.5)。{break}
{cmd:-1.5::-4.4} 创建列向量 (-1.5\ -2.5\ -3.5)。

{p 4 4 2}
{cmd:1..1} 和 {cmd:1::1} 均返回 (1)。

{marker conformability}{...}
{title:兼容性}

    {it:a}{cmd:..}{it:b}
	{it:a}:  1 {it:x} 1
	{it:b}:  1 {it:x} 1
   {it:result}:  1 {it:x} trunc(abs({it:b}-{it:a}))+1

    {it:a}{cmd:::}{it:b}
	{it:a}:  1 {it:x} 1
	{it:b}:  1 {it:x} 1
   {it:result}:  trunc(abs({it:b}-{it:a}))+1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{it:a}{cmd:..}{it:b} 和 {it:a}{cmd:::}{it:b} 在 {it:a}>={cmd:.} 或 {it:b}>={cmd:.} 时返回缺失值。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_range.sthlp>}