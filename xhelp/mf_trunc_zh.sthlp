{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] trunc()" "mansection M-5 trunc()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{viewerjumpto "语法" "mf_trunc_zh##syntax"}{...}
{viewerjumpto "描述" "mf_trunc_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_trunc_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_trunc_zh##remarks"}{...}
{viewerjumpto "相容性" "mf_trunc_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_trunc_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_trunc_zh##source"}
{help mf_trunc:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] trunc()} {hline 2}}四舍五入到整数
{p_end}
{p2col:}({mansection M-5 trunc():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵} {cmd:trunc(}{it:实数矩阵 R}{cmd:)}

{p 8 12 2}
{it:实数矩阵} {cmd:floor(}{it:实数矩阵 R}{cmd:)}

{p 8 12 2}
{it:实数矩阵}{bind:  }{cmd:ceil(}{it:实数矩阵 R}{cmd:)}

{p 8 12 2}
{it:实数矩阵} {cmd:round(}{it:实数矩阵 R}{cmd:)}

{p 8 12 2}
{it:实数矩阵} {cmd:round(}{it:实数矩阵 R}{cmd:,} {it:实数矩阵 U}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
    这些函数通过向零移动、向下移动、向上移动或四舍五入将非整数值转换为整数。 这些函数通常与标量参数一起使用，在这种情况下返回一个标量。 当与向量或矩阵一起使用时，操作是逐元素进行的。

{p 4 4 2}
    {cmd:trunc(}{it:R}{cmd:)} 返回 {it:R} 的整数部分。

{p 4 4 2}
    {cmd:floor(}{it:R}{cmd:)} 返回最大的整数 {it:i}，使得 {it:i} <= {it:R}。

{p 4 4 2}
    {cmd:ceil(}{it:R}{cmd:)} 返回最小的整数 {it:i}，使得 {it:i} >= {it:R}。

{p 4 4 2}
    {cmd:round(}{it:R}{cmd:)} 返回离 {it:R} 最近的整数。

{p 4 4 2}
    {cmd:round(}{it:R}{cmd:,} {it:U}{cmd:)} 返回将 {it:R} 以 {it:U} 为单位进行四舍五入的值，相当于 {cmd:round(}({it:R}:/{it:U}){cmd:):*}{it:U}。
    例如，{cmd:round(}{it:R}{cmd:,} 2{cmd:)} 返回四舍五入到最接近的偶数的 {it:R}。
    {cmd:round(}{it:R}{cmd:,} .5{cmd:)} 返回四舍五入到最接近的二分之一的 {it:R}。
    {cmd:round(}{it:R}{cmd:,} 1{cmd:)} 返回四舍五入到最接近的整数的 {it:R}，因此等同于 {cmd:round(}{it:R}{cmd:)}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 trunc()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help mf_trunc##remarks1:与 Stata 函数的关系}
	{help mf_trunc##remarks2:四舍五入示例}


{marker remarks1}{...}
{title:与 Stata 函数的关系}

{p 4 4 2}
    {cmd:trunc()} 相当于 Stata 的 {helpb int()} 函数。

{p 4 4 2}
    {helpb floor()}、{helpb ceil()} 和 {helpb round()} 相当于 Stata 的同名函数。


{marker remarks2}{...}
{title:四舍五入示例}

 	  {it:x}     {cmd:trunc(}{it:x}{cmd:)}     {cmd:floor(}{it:x}{cmd:)}     {cmd:ceil(}{it:x}{cmd:)}    {cmd:round(}{it:x}{cmd:)}
	{hline 53}
  	 1         1            1           1           1
  	 1.3       1            1           2           1
  	 1.6       1            1           2           2
 	-1        -1           -1          -1          -1
 	-1.3      -1           -2          -1          -1
 	-1.6      -1           -2          -1          -2
	{hline 53}


{marker conformability}{...}
{title:相容性}

{p 4 4 2}
{cmd:trunc(}{it:R}{cmd:)},
{cmd:floor(}{it:R}{cmd:)},
{cmd:ceil(}{it:R}{cmd:)}:
{p_end}
		{it:R}:  {it:r x c}
	   {it:result}:  {it:r x c}

    {cmd:round(}{it:R}{cmd:)}:
		{it:R}:  {it:r x c}
	   {it:result}:  {it:r x c}

    {cmd:round(}{it:R}{cmd:,} {it:U}{cmd:)}:
		{it:R}:  {it:r1 x c1}
		{it:U}:  {it:r2 x c2}, {it:R} 和 {it:U} 相容
	   {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    大多数 Stata 和 Mata 函数在参数包含缺失值时返回缺失值，特别是，当参数为 {cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z} 时返回 {cmd:.}。其逻辑是对缺失值进行操作的结果始终是相同的缺失值结果。 例如，{cmd:sqrt(.a)==.}

{p 4 4 2}
    然而，这些函数在接受缺失值时返回特定的缺失值。因此 {cmd:trunc(.a)==.a}、{cmd:floor(.b)==.b}、{cmd:ceil(.c)==.c} 和 {cmd:round(.d)==.d}。

{p 4 4 2}
    对于带有两个参数的 {cmd:round()}，这适用于第一个参数，并且仅当第二个参数不缺失时。 如果第二个参数缺失（无论是 {cmd:.}、{cmd:.a}、... 还是 {cmd:.z}），则返回 {cmd:.}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数为内置函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_trunc.sthlp>}