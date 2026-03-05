{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] trace()" "mansection M-5 trace()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf_trace_zh##syntax"}{...}
{viewerjumpto "描述" "mf_trace_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_trace_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_trace_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_trace_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_trace_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_trace_zh##source"}
{help mf_trace:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] trace()} {hline 2}}方阵的迹
{p_end}
{p2col:}({mansection M-5 trace():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值标量} 
{cmd:trace(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:数值标量} 
{cmd:trace(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:)}

{p 8 12 2}
{it:数值标量} 
{cmd:trace(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:,}
{it:实数标量 t}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:trace(}{it:A}{cmd:)}
返回矩阵 {it:A} 的对角元素之和。  
如果 {it:A} 是实数，则返回的结果是实数；如果 {it:A} 是复数，则返回的结果是复数。

{p 4 4 2}
{cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:)}
返回 trace({it:A}{it:B})，计算时不计算或存储 {it:A}{it:B} 的非对角元素。  
如果 {it:A} 和 {it:B} 是实数，则返回的结果是实数；否则返回的是复数。

{p 4 4 2}
{cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:,} {it:t}{cmd:)}
如果 {it:t}=0，返回 trace({it:A}{it:B})，否则返回 trace({it:A}{bf:'}{it:B}{cmd:)}，其中，如果 {it:A} 或 {it:B} 是复数，则转置被理解为 {help m6_glossary##transpose:共轭转置}。
如果 {it:A} 和 {it:B} 是实数，则返回的结果是实数；否则返回的是复数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 trace()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:)}
返回的结果与 
{cmd:trace(}{it:A}{cmd:*}{it:B}{cmd:)} 相同，但如果不需要计算 {it:A}{cmd:*}{it:B}，则效率更高。

{p 4 4 2}
{cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:, 1)}
返回的结果与 
{cmd:trace(}{it:A}{cmd:'}{it:B}{cmd:)} 相同，但效率更高。

{p 4 4 2}
对于实数矩阵 {it:A} 和 {it:B}，

		trace({it:A}{bf:'}) = trace({it:A})

		trace({it:A}{it:B}) = trace({it:B}{it:A})

{p 4 4 2}
对于复数矩阵，

		trace({it:A}{bf:'}) = conj(trace({it:A}))

		trace({it:A}{it:B}) = trace({it:B}{it:A})

{p 4 4 2}
其中，对于复数矩阵，转置被理解为共轭转置。

{p 4 4 2}
因此对于实数矩阵， 

		计算方法         代码
		{hline 35}
		trace({it:AB})            {cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:)}
		trace({it:A}{bf:'}{it:B})           {cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:, 1)}
        	trace({it:AB}{bf:'})           {cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:, 1)}
		trace({it:A}{bf:'}{it:B}{bf:'})          {cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:)}
		{hline 35}

{p 4 4 2}
对于复数矩阵， 

		计算方法         代码
		{hline 41}
		trace({it:AB})            {cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:)}
		trace({it:A}{bf:'}{it:B})           {cmd:trace(}{it:A}{cmd:,} {it:B}{cmd:, 1)}
        	trace({it:AB}{bf:'})           {cmd:conj(trace(}{it:A}{cmd:,} {it:B}{cmd:, 1))}
		trace({it:A}{bf:'}{it:B}{bf:'})          {cmd:conj(trace(}{it:A}{cmd:,} {it:B}{cmd:))}
		{hline 41}
		第一列的转置表示共轭转置。


{marker conformability}{...}
{title:兼容性}
  
    {cmd:trace(}{it:A}{cmd:)}:
		{it:A}:  {it:n x n}
	   {it:result}:  1 {it:x} 1

    {cmd:trace(}{it:A}, {it:B}{cmd:)}:
		{it:A}:  {it:n x m}
		{it:B}:  {it:m x n}
	   {it:result}:  1 {it:x} 1

    {cmd:trace(}{it:A}, {it:B}, {it:t}{cmd:)}
		{it:A}:  {it:n x m}  如果 {it:t}=0, {it:m x n}  否则
		{it:B}:  {it:m x n}
	        {it:t}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:trace(}{it:A}{cmd:)}
如果 {it:A} 不是方阵，则会报错。

{p 4 4 2}
{cmd:trace(}{it:A}, {it:B}{cmd:)} {cmd:trace(}{it:A}, {it:B},
{it:t}{cmd:)} 如果矩阵不兼容或它们的乘积不是方阵，则会报错。

{p 4 4 2}
0 {it:x} 0 矩阵的迹为 0。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view trace.mata, adopath asis:trace.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_trace.sthlp>}