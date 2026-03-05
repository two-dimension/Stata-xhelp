{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] range()" "mansection M-5 range()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "语法" "mf_range_zh##syntax"}{...}
{viewerjumpto "描述" "mf_range_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_range_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_range_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_range_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_range_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_range_zh##source"}
{help mf_range:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] range()} {hline 2}}在指定范围内的向量
{p_end}
{p2col:}({mansection M-5 range():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值列向量}{bind: }
{cmd:range(}{it:a}{cmd:,}
{it:b}{cmd:,}
{it:数值标量} {it:delta}{cmd:)}

{p 8 12 2}
{it:数值列向量}
{cmd:rangen(}{it:a}{cmd:,}
{it:b}{cmd:,}
{it:实数标量} {it:n}{cmd:)}

{p 4 8 2}
其中 {it:a} 和 {it:b} 是数值标量。

{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:range(}{it:a}{cmd:,} {it:b}, {it:delta}{cmd:)} 返回一个列向量
从 {it:a} 到 {it:b}，步长为 {cmd:abs(}{it:delta}{cmd:)}
({it:b}>={it:a}) 或 -{cmd:abs(}{it:delta}{cmd:)} ({it:b}<{it:a})。

{p 4 4 2}
{cmd:rangen(}{it:a}{cmd:,} {it:b}, {it:n}{cmd:)} 返回一个 
{cmd:round(}{it:n}{cmd:)} {it:x} 1 列向量
从 {it:a} 到 {it:b}，步骤为 {cmd:round(}{it:n}{cmd:)}-1。
{it:a} 可以小于、等于或大于 {it:b}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 range()Remarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。

{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:range(0, 1, .25)} 返回 (0 \ .25 \ .5 \ .75 \ 1)。
第三个参数的符号无关紧要；
{cmd:range(0, 1, -.25)} 返回相同的结果。
{cmd:range(1, 0, .25)} 和 
{cmd:range(1, 0, -.25)} 返回 
(1 \ .75 \ .5 \ .25 \ 0)。

{p 4 4 2}
{cmd:rangen(0, .5, 6)} 返回 (0 \ .1 \ .2 \ .3 \ .4 \ .5)。
{cmd:rangen(.5, 0, 6)} 返回 (.5 \ .4 \ .3 \ .2 \ .1 \ 0)。

{p 4 4 2}
{cmd:range()} 和 {cmd:rangen()} 可以与复数参数一起使用。
{cmd:range(1, 1i, .4)} 返回
(1 \ .75+.25i \ .5+.5i \ .25+.75i \ 1i)。
{cmd:rangen(1, 1i, 5)} 返回相同的结果。
对于 {cmd:range()}，只有 {it:delta} 与零的距离重要，
因此 
{cmd:range(1, 1i, .4i)} 将产生相同结果，{cmd:range(1, 1i, .25+.312i)} 也是如此。

{marker conformability}{...}
{title:兼容性}

    {cmd:range(}{it:a}{cmd:,} {it:b}, {it:delta}{cmd:)}:
		{it:a}:  1 {it:x} 1
		{it:b}:  1 {it:x} 1
	    {it:delta}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1{col 55} 如果 {it:a} = {it:b}
		    max(1+abs({it:b}-{it:a})/abs({it:delta}),2) {it:x} 1{col 55} 否则

    {cmd:rangen(}{it:a}{cmd:,} {it:b}, {it:n}{cmd:)}:
		{it:a}:  1 {it:x} 1
		{it:b}:  1 {it:x} 1
		{it:n}:  {it:n} {it:x} 1
	   {it:result}:  {opt round(n)} {it:x} 1

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:range(}{it:a}{cmd:,} {it:b}, {it:delta}{cmd:)}
如果 {it:a}、{it:b} 或 {it:delta} 包含缺失值，
如果 abs({it:b}-{it:a})/abs({it:delta}) 结果溢出，或者 
如果 1+abs({it:b}-{it:a})/abs({it:delta}) 结果的向量过大而超出可用内存将中止，并返回错误。

{p 4 4 2}
{cmd:range(}{it:a}{cmd:,} {it:b}, {it:delta}{cmd:)} 
在 {it:a} = {it:b} 时返回 1 {it:x} 1 结果。在所有其他情况下，
结果是 2 {it:x} 1 或更长。

{p 4 4 2}
{cmd:rangen(}{it:a}{cmd:,} {it:b}, {it:n}{cmd:)}
如果 {cmd:round(}{it:n}{it:)} 小于 0 或缺失，将中止，并返回错误。

{marker source}{...}
{title:源代码}

{p 4 4 2}
{view range.mata, adopath asis:range.mata},
{view rangen.mata, adopath asis:rangen.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_range.sthlp>}