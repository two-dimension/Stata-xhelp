{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] runningsum()" "mansection M-5 runningsum()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] sum()" "help mf_sum_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 数学" "help m4_mathematical_zh"}{...}
{vieweralsosee "[M-4] 工具" "help m4_utility_zh"}{...}
{viewerjumpto "语法" "mf_runningsum_zh##syntax"}{...}
{viewerjumpto "描述" "mf_runningsum_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_runningsum_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_runningsum_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_runningsum_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_runningsum_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_runningsum_zh##source"}
{help mf_runningsum:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] runningsum()} {hline 2}}向量的累加和
{p_end}
{p2col:}({mansection M-5 runningsum():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数字向量}{bind:    }
{cmd:runningsum(}{it:数字向量 x}
[{cmd:,} {it:缺失}]{cmd:)}

{p 8 12 2}
{it:数字向量} 
{cmd:quadrunningsum(}{it:数字向量 x}
[{cmd:,} {it:缺失}]{cmd:)}


{p 8 12 2}
{it:void}{bind:             }
{cmd:_runningsum(}{it:y}{cmd:,} {it:数字向量 x}
[{cmd:,} {it:缺失}]{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:_quadrunningsum(}{it:y}{cmd:,} {it:数字向量 x}
[{cmd:,} {it:缺失}]{cmd:)}


{p 4 4 2}
可选参数 {it:缺失} 是一个 {it:实标量}，用于确定在 {it:x} 中缺失值的处理方式：

{p 8 12 2}
    1.  将 {it:缺失} 指定为 0 等同于不指定该参数；缺失值在 {it:x} 中将被视为对总和贡献 0。

{p 8 12 2}
    2.  将 {it:缺失} 指定为 1 则表明 {it:x} 中的缺失值应被视为缺失，并使总和也变为缺失。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:runningsum(}{it:x}{cmd:)} 返回一个与 {it:x} 维度相同的向量，包含 {it:x} 的累加和。缺失值被视为对总和贡献 0。

{p 4 4 2}
{cmd:runningsum(}{it:x}{cmd:,} {it:缺失}{cmd:)} 具有相同功能，但允许你指定如何处理缺失值。 {cmd:runningsum(}{it:x}{cmd:, 0)} 与 {cmd:runningsum(}{it:x}{cmd:)} 相同。 {cmd:runningsum(}{it:x}{cmd:, 1)} 指定缺失值将在发生的地方使总和变为缺失。

{p 4 4 2}
{cmd:quadrunningsum(}{it:x}{cmd:)} 和
{cmd:quadrunningsum(}{it:x}{cmd:,} {it:缺失}{cmd:)} 有相同功能，但是在四重精度下进行累加。

{p 4 4 2}
{cmd:_runningsum(}{it:y}{cmd:,} {it:x} [{cmd:,} {it:缺失}]{cmd:)} 和 
{cmd:_quadrunningsum(}{it:y}{cmd:,} {it:x} [{cmd:,} {it:缺失}]{cmd:)} 工作方式相同，但它们不返回累加和向量，而是将结果存储在 {it:y} 中。当 {it:y} 是视图时，这种方法略微更高效。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 runningsum()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
(1, 2, 3) 的累加和为 (1, 3, 6)。

{p 4 4 2}
所有函数返回与参数相同的类型，如果参数为实数则返回实数，如果为复数则返回复数。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:runningsum(}{it:x}{cmd:,} {it:缺失}{cmd:)}, 
{cmd:quadrunningsum(}{it:x}{cmd:,} {it:缺失}{cmd:)}:
{p_end}
		{it:x}:  {it:r x} 1  或  1 {it:x} c
	  {it:缺失}:  1 {it:x} 1                (可选)
	   {it:结果}:  {it:r x} 1  或  1 {it:x} c

{p 4 4 2}
{cmd:_runningsum(}{it:y}{cmd:, }{it:x}{cmd:,} {it:缺失}{cmd:)}, 
{cmd:_quadrunningsum(}{it:y}{cmd:, }{it:x}{cmd:,} {it:缺失}{cmd:)}:
{p_end}
	{it:输入:}
		{it:x}:  {it:r x} 1  或  1 {it:x} c
		{it:y}   {it:r x} 1  或  1 {it:x} c     (内容无关紧要)
	  {it:缺失}:  1 {it:x} 1                (可选)
	{it:输出:}
	        {it:y}:  {it:r x} 1  或  1 {it:x} c


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:缺失} = 0，缺失值被视为对总和贡献 0；它们不会使总和变为缺失。 否则，缺失值将使总和变为缺失。

{p 4 4 2}
{cmd:_runningsum(}{it:y}{cmd:, }{it:x}{cmd:,} {it:缺失}{cmd:)} 和 
{cmd:_quadrunningsum(}{it:y}{cmd:, }{it:x}{cmd:,} {it:缺失}{cmd:)} 如果 {it:y} 与 {it:x} 不
{help m6_glossary##p-conformability:p-conformable} 并且具有相同的 {help m6_glossary##type:eltype}，则会中止并报错。 {it:y} 的内容无关紧要。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_runningsum.sthlp>}