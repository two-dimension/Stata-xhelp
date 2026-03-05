{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] minmax()" "mansection M-5 minmax()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] minindex()" "help mf_minindex_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_minmax_zh##syntax"}{...}
{viewerjumpto "Description" "mf_minmax_zh##description"}{...}
{viewerjumpto "Conformability" "mf_minmax_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_minmax_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_minmax_zh##source"}
{help mf_minmax:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] minmax()} {hline 2}}最小值和最大值
{p_end}
{p2col:}({mansection M-5 minmax():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数 列向量} {cmd:rowmin(}{it:实数 矩阵 X}{cmd:)}

{p 8 12 2}
{it:实数 行向量} {cmd:colmin(}{it:实数 矩阵 X}{cmd:)}

{p 8 12 2}
{it:实数 标量}{bind:       }{cmd:min(}{it:实数 矩阵 X}{cmd:)}


{p 8 12 2}
{it:实数 列向量} {cmd:rowmax(}{it:实数 矩阵 X}{cmd:)}

{p 8 12 2}
{it:实数 行向量} {cmd:colmax(}{it:实数 矩阵 X}{cmd:)}

{p 8 12 2}
{it:实数 标量}{bind:       }{cmd:max(}{it:实数 矩阵 X}{cmd:)}


{p 8 12 2}
{it:实数 矩阵}{bind:    }{cmd:rowminmax(}{it:实数 矩阵 X}{cmd:)}

{p 8 12 2}
{it:实数 矩阵}{bind:    }{cmd:colminmax(}{it:实数 矩阵 X}{cmd:)}

{p 8 12 2}
{it:实数 行向量}{bind:    }{cmd:minmax(}{it:实数 矩阵 X}{cmd:)}


{p 8 12 2}
{it:实数 矩阵}{bind:    }{cmd:rowminmax(}{it:实数 矩阵 X}{cmd:,}
{it:实数 标量 usemiss}{cmd:)}

{p 8 12 2}
{it:实数 矩阵}{bind:    }{cmd:colminmax(}{it:实数 矩阵 X}{cmd:,}
{it:实数 标量 usemiss}{cmd:)}

{p 8 12 2}
{it:实数 行向量}{bind:    }{cmd:minmax(}{it:实数 矩阵 X}{cmd:,}
{it:实数 标量 usemiss}{cmd:)}


{p 8 12 2}
{it:实数 列向量} {cmd:rowmaxabs(}{it:数值 矩阵 A}{cmd:)}

{p 8 12 2}
{it:实数 行向量} {cmd:colmaxabs(}{it:数值 矩阵 A}{cmd:)}

{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数返回指定的 {it:X} 的最小值和最大值。

{p 4 4 2}
{cmd:rowmin(}{it:X}{cmd:)} 返回 {it:X} 每一行的最小值， 
{cmd:colmin(}{it:X}{cmd:)} 返回每一列的最小值， 
而 {cmd:min(}{it:X}{cmd:)} 返回整体最小值。
包含缺失值的 {it:X} 元素会被忽略。

{p 4 4 2}
{cmd:rowmax(}{it:X}{cmd:)} 返回 {it:X} 每一行的最大值， 
{cmd:colmax(}{it:X}{cmd:)} 返回每一列的最大值， 
而 {cmd:max(}{it:X}{cmd:)} 返回整体最大值。
包含缺失值的 {it:X} 元素会被忽略。

{p 4 4 2}
{cmd:rowminmax(}{it:X}{cmd:)} 返回 {it:X} 每一行的最小值和最大值，结果为一个 {it:r x} 2 矩阵； 
{cmd:colminmax(}{it:X}{cmd:)} 返回每一列的最小值和最大值，结果为一个 2 {it:x c} 矩阵；
而 {cmd:minmax(}{it:X}{cmd:)} 返回整体的最小值和最大值。
包含缺失值的 {it:X} 元素会被忽略。

{p 4 4 2}
两参数版本的 
{cmd:rowminmax()}, 
{cmd:colminmax()}, 
和 {cmd:minmax()} 允许您指定如何处理缺失值。
指定第二个参数值为 0 等同于使用单参数版本的函数。在两参数版本中，如果第二个参数不为零，缺失值在确定最小值和最大值时将被视为所有其他值：
{it:nonmissing} < {cmd:.} < {cmd:.a} < {cmd:.b} < ... < {cmd:.z}。

{p 4 4 2}
{cmd:rowmaxabs(}{it:A}{cmd:)} 和
{cmd:colmaxabs(}{it:A}{cmd:)} 返回的结果与 
{cmd:rowmax(abs(}{it:A}{cmd:)} 和 
{cmd:colmax(abs(}{it:A}{cmd:)} 相同。优势在于矩阵 {cmd:abs(}{it:A}{cmd:)} 从未被形成或存储，因此这些函数占用更少内存。


{marker conformability}{...}
{title:相容性}

    {cmd:rowmin(}{it:X}{cmd:)}, {cmd:rowmax(}{it:X}{cmd:)}:
		{it:X}:  {it:r x c}
	   {it:result}:  {it:r x} 1

    {cmd:colmin(}{it:X}{cmd:)}, {cmd:colmax(}{it:X}{cmd:)}:
		{it:X}:  {it:r x c}
	   {it:result}:  1 {it:x c}

    {cmd:min(}{it:X}{cmd:)}, {cmd:max(}{it:X}{cmd:)}:
		{it:X}:  {it:r x c}
	   {it:result}:  1 {it:x} 1

    {cmd:rowminmax(}{it:X}{cmd:,} {it:usemiss}{cmd:)}:
		{it:X}:  {it:r x c}
	  {it:usemiss}:  1 {it:x} 1
	   {it:result}:  {it:r x} 2

    {cmd:colminmax(}{it:X}{cmd:,} {it:usemiss}{cmd:)}
		{it:X}:  {it:r x c}
	  {it:usemiss}:  1 {it:x} 1
	   {it:result}:  2 {it:x c}

    {cmd:minmax(}{it:X}{cmd:,} {it:usemiss}{cmd:)}
		{it:X}:  {it:r x c}
	  {it:usemiss}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 2

    {cmd:rowmaxabs(}{it:A}{cmd:)}:
		{it:A}:  {it:r x c}
	   {it:result}:  {it:r x} 1

    {cmd:colmaxabs(}{it:A}{cmd:)}:
		{it:A}:  {it:r x c}
	   {it:result}:  1 {it:x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    {cmd:row}{it:*}{cmd:()} 函数在整行包含缺失值时返回对应的最小值或最大值缺失。

{p 4 4 2}
    {cmd:col}{it:*}{cmd:()} 函数在整列包含缺失值时返回对应的最小值或最大值缺失。

{p 4 4 2}
    {cmd:min()} 和 {cmd:max()} 在整个矩阵包含缺失值时返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view rowmin.mata, adopath asis:rowmin.mata},
{view colmin.mata, adopath asis:colmin.mata},
{view min.mata, adopath asis:min.mata},
{view rowmax.mata, adopath asis:rowmax.mata},
{view colmax.mata, adopath asis:colmax.mata},
{view max.mata, adopath asis:max.mata};
其他函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_minmax.sthlp>}