{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[M-5] inbase()" "mansection M-5 inbase()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 数学" "help m4_mathematical_zh"}{...}
{viewerjumpto "语法" "mf_inbase_zh##syntax"}{...}
{viewerjumpto "描述" "mf_inbase_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_inbase_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_inbase_zh##remarks"}{...}
{viewerjumpto "可兼容性" "mf_inbase_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_inbase_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_inbase_zh##source"}{...}
{viewerjumpto "参考文献" "mf_inbase_zh##reference"}
{help mf_inbase:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] inbase()} {hline 2}}进制转换
{p_end}
{p2col:}({mansection M-5 inbase():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 31 2}
{it:字符串 矩阵}{bind:  }
{cmd:inbase(}{it:实数标量 基数}{cmd:,}
{it:实数矩阵 x}
[{cmd:,}{break}{it:实数标量 fdigits}
[{cmd:,} {it:err}]]{cmd:)}

{p 8 12 2}
{it:实数矩阵}{bind:  }
{cmd:frombase(}{it:实数标量 基数}{cmd:,}
{it:字符串 矩阵 s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:)} 返回一个字符串矩阵， 
其包含 {it:x} 在基数 {it:base} 下的值。

{p 4 4 2}
{cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:,} {it:fdigits}{cmd:)} 的作用是 
相同的；{it:fdigits} 指定当 {it:x} 有小数部分时返回结果中基点右边的最大位数。  
{cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:)} 等价于 
{cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:, 8)}。

{p 4 4 2}
{cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:,} {it:fdigits}{cmd:,} {it:err}{cmd:)}
与 
{cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:,} {it:fdigits}{cmd:)相同，只是它在 {it:err} 中返回 {it:x} 和转换结果之间的差异。

{p 4 4 2}
{it:x} = {cmd:frombase(}{it:base}{cmd:,} {it:s}{cmd:)} 是 
{it:s} = {cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:)} 的逆操作。
它将基数 {it:base} 下的数字 {it:s} 返回为一个数字。
我们可以说“作为一个十进制数字”，但那并不完全正确。 
它将结果作为 {it:实数} 返回，也就是作为一个 IEEE 基于二进制的双精度浮点数，当你显示它时，以十进制表示。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 inbase()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题进行呈现：

	{help mf_inbase##remarks1:正整数}
	{help mf_inbase##remarks2:负整数}
	{help mf_inbase##remarks3:具有非零小数部分的数字}
	{help mf_inbase##remarks4:函数的使用}


{marker remarks1}{...}
{title:正整数}

{p 4 4 2}
{cmd:inbase(2, 1691)} 的结果是 {cmd:11010011011}；也就是说，1691 十进制等于 
11010011011 二进制。 {cmd:frombase(2, "11010011011")} 的结果是 1691。

{p 4 4 2}
{cmd:inbase(3, 1691)} 的结果是 {cmd:2022122}；也就是说，1691 十进制等于
2022122 三进制。 {cmd:frombase(3, "2022122")} 的结果是 1691。

{p 4 4 2}
{cmd:inbase(16, 1691)} 的结果是 {cmd:69b}；也就是说，1691 十进制等于 1691
十六进制。 {cmd:frombase(16, "69b")} 的结果是 1691。  (十六进制的数字为 0, 1, 2,
3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f.)

{p 4 4 2}
{cmd:inbase(62, 1691)} 的结果是 {cmd:rh}；也就是说，1691 十进制等于 rh
六十二进制。 {cmd:frombase(62, "rh")} 的结果是 1691。  (六十二进制的数字为 0, 1, 2,
3, 4, 5, 6, 7, 8, 9, a, b, ..., z, A, B, ..., Z.)

{p 4 4 2}
不同基数之间的整数有一一对应关系。转换的误差始终为零。


{marker remarks2}
{title:负整数}

{p 4 4 2}
负整数与正整数没有区别。例如，{cmd:inbase(2, -1691)} 的结果是 {cmd:-11010011011}; 
也就是说，-1691 十进制等于 -11010011011 二进制。 {cmd:frombase(2, "-11010011011")} 的结果是 -1691。

{p 4 4 2}
转换的误差始终为零。


{marker remarks3}
{title:具有非零小数部分的数字}

{p 4 4 2}
{cmd:inbase(2, 3.5)} 的结果是 {cmd:11.1}; 也就是说，3.5 十进制等于 11.1
二进制。 {cmd:frombase(2, "11.1")} 的结果是 3.5。

{p 4 4 2}
{cmd:inbase(3, 3.5)} 的结果是 {cmd:10.11111111}。

{p 4 4 2}
{cmd:inbase(3, 3.5, 20)} 的结果是 {cmd:10.11111111111111111111}。

{p 4 4 2}
{cmd:inbase(3, 3.5, 30)} 的结果是 {cmd:10.111111111111111111111111111111}。

{p 4 4 2}
因此，3.5 十进制等于 1.1111... 在三进制中。 
在三进制中没有确切的表示方法表示一半。 
上述三个转换的误差分别是 .0000762079, 1.433399e-10, 和 2.45650e-15。
如果 {cmd:inbase(3, 3.5,} {it:fdigits}{cmd:,} {it:err}{cmd:)} 被编码，这些值将被返回到 {it:err} 中。

{p 4 4 2}
{cmd:frombase(3, "10.11111111")} 的结果是 {cmd:3.499923792}。

{p 4 4 2}
{cmd:frombase(3, "10.11111111111111111111")} 的结果是 {cmd:3.4999999998566}。

{p 4 4 2}
{cmd:frombase(3, "10.111111111111111111111111111111")} 的结果是
{cmd:3.49999999999999734}。

{p 4 4 2}
{cmd:inbase(16, 3.5)} 的结果是 {cmd:3.8}; 也就是说，3.5 十进制等于 3.8
十六进制。误差为零。 {cmd:frombase(16, "3.8")} 的结果是 3.5。

{p 4 4 2}
{cmd:inbase(62, 3.5)} 的结果是 {cmd:3.v}; 也就是说，3.5 十进制等于 
3.v 六十二进制。
{cmd:frombase(62, "3.v")} 的结果是 3.5。误差为零。

{p 4 4 2}
在 {cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:,} {it:fdigits}{cmd:)中， 
{it:fdigits} 指定基点右侧应出现的最大位数。 
{it:fdigits} 要求大于或等于1。
{cmd:inbase(16, 3.5,} {it:fdigits}{cmd:)} 将一直是 {cmd:3.8}，无论 {it:fdigits} 的值如何， 
因为多余的位数是没有必要的。

{p 4 4 2}
返回的误差 
{cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:,} {it:fdigits}{cmd:,} {it:err}{cmd:)}
可能会被低估。例如，{cmd:inbase(16, .1, 14,}
{it:err}{cmd:)} 的结果是 {cmd:0.1999999999999a}，并且在 {it:err} 中返回 0，
尽管在十六进制中没有有限位数表示 0.1。 
这是因为您在调用中指定的 {cmd:.1} 实际上不是 0.1 十进制。 
您使用的计算机是二进制的， 
它将您输入的 {cmd:.1} 转换为 
{center:0.00011001100110011001100110011001100110011001100110011010 二进制}

{p 4 4 2}
然后才调用 {cmd:inbase()}。
0.1999999999999a 六十进制是该数字的确切表示。


{marker remarks4}
{title:函数的使用}

{p 4 4 2}
这些函数主要用于教学，特别是在来源和避免舍入误差方面；请参见 {help mf_inbase##G2006:Gould (2006)}。

{p 4 4 2}
然而，当用于整数参数时，这些函数在数据处理方面可能具有作用。 
您有一个数据集，包含 10 位的身份证号码。 
您希望以更紧凑的形式记录这个 10 位数字。 
您可以将数字转换为六十二进制。 
最大 10 位的 ID 号码为 9999999999， 或者说 aUKYOz 六十二进制。 
您可以使用 {cmd:inbase()} 以六个字符的字符串记录 ID 号码。 
如果您需要原始号码，可以使用 {cmd:frombase()}。

{p 4 4 2}
以类似的方式， 
Stata 在内部使用三十六进制命名临时文件， 
这在文件名限制为 
八个字符时非常重要。 
三十六进制使 Stata 能生成多达 2,821,109,907,455
个文件名，直到文件名回绕为止。


{marker conformability}{...}
{title:可兼容性}

{p 4 4 2}
{cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:,} {it:fdigits}{cmd:,} {it:err}{cmd:)}:
{p_end}
        {it:输入:}
	     {it:base}:  1 {it:x} 1
		{it:x}:  {it:r x c}
	  {it:fdigits}:  1 {it:x} 1                （可选）
        {it:输出:}
	      {it:err}:  {it:r x c}                （可选）
	   {it:结果}:  {it:r x c}

    {cmd:frombase(}{it:base}{cmd:,} {it:s}{cmd:)}:
	     {it:base}:  1 {it:x} 1
		{it:s}:  {it:r x c}
	   {it:结果}:  {it:r x c}
		

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:inbase()}/{cmd:frombase()} 用于编码/解码 
结果的数字是

         {it:0} {cmd:0}    {it:10} {cmd:a}    {it:20} {cmd:k}    {it:30} {cmd:u}    {it:40} {cmd:E}    {it:50} {cmd:O}    {it:60} {cmd:Y}
         {it:1} {cmd:1}    {it:11} {cmd:b}    {it:21} {cmd:l}    {it:31} {cmd:v}    {it:41} {cmd:F}    {it:51} {cmd:P}    {it:61} {cmd:Z}
         {it:2} {cmd:2}    {it:12} {cmd:c}    {it:22} {cmd:m}    {it:32} {cmd:w}    {it:42} {cmd:G}    {it:52} {cmd:Q} 
         {it:3} {cmd:3}    {it:13} {cmd:d}    {it:23} {cmd:n}    {it:33} {cmd:x}    {it:43} {cmd:H}    {it:53} {cmd:R}
         {it:4} {cmd:4}    {it:14} {cmd:e}    {it:24} {cmd:o}    {it:34} {cmd:y}    {it:44} {cmd:I}    {it:54} {cmd:S}
         {it:5} {cmd:5}    {it:15} {cmd:f}    {it:25} {cmd:p}    {it:35} {cmd:z}    {it:45} {cmd:J}    {it:55} {cmd:T}
         {it:6} {cmd:6}    {it:16} {cmd:g}    {it:26} {cmd:q}    {it:36} {cmd:A}    {it:46} {cmd:K}    {it:56} {cmd:U}
	 {it:7} {cmd:7}    {it:17} {cmd:h}    {it:27} {cmd:r}    {it:37} {cmd:B}    {it:47} {cmd:L}    {it:57} {cmd:V}
         {it:8} {cmd:8}    {it:18} {cmd:i}    {it:28} {cmd:s}    {it:38} {cmd:C}    {it:48} {cmd:M}    {it:58} {cmd:W}
         {it:9} {cmd:9}    {it:19} {cmd:j}    {it:29} {cmd:t}    {it:39} {cmd:D}    {it:49} {cmd:N}    {it:59} {cmd:X}

{p 4 4 2}
当 {it:base}<=36 时，{cmd:frombase()} 将 {cmd:A}, {cmd:B}, {cmd:C}, ... 
视为 {cmd:a}, {cmd:b}, {cmd:c}, ....

{p 4 4 2}
{cmd:inbase(}{it:base}{cmd:,} {it:x}{cmd:,} {it:fdigits}{cmd:,} {it:err}{cmd:)}
如果 {it:base}<2, {it:base}>62, {it:base} 不是一个整数，或 {it:x} 是缺失值，则返回 {cmd:.}（缺失）。
如果 {it:fdigits} 小于1 或 {it:fdigits} 是缺失，结果将视为指定 {it:fdigits}=8。

{p 4 4 2}
{cmd:frombase(}{it:base}{cmd:,} {it:s}{cmd:)}
如果 
{it:base}<2, {it:base}>62, {it:base} 不是一个整数，
或 {it:s} 是缺失值，或者 {it:s} 不是有效的基数 {it:base} 数字；
或者如果 {it:s} 的转换值的绝对值大于 8.988e+307，则返回 {cmd:.}（缺失值）。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view inbase.mata, adopath asis:inbase.mata}, 
{view frombase.mata, adopath asis:frombase.mata}


{marker reference}{...}
{title:参考文献}

{marker G2006}{...}
{p 4 8 2}
Gould, W. W. 2006.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0025":Mata 相关问题: 精度}。
{it:Stata Journal} 6: 550-560。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_inbase.sthlp>}