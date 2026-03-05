{smcl}
{* *! version 1.1.11  15may2018}{...}
{vieweralsosee "[M-5] hash1()" "mansection M-5 hash1()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] asarray()" "help mf_asarray_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_hash1_zh##syntax"}{...}
{viewerjumpto "Description" "mf_hash1_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_hash1_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_hash1_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_hash1_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_hash1_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_hash1_zh##source"}{...}
{viewerjumpto "References" "mf_hash1_zh##references"}
{help mf_hash1:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] hash1()} {hline 2}}Jenkins 的一次哈希函数
{p_end}
{p2col:}({mansection M-5 hash1():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar}{bind: }
{cmd:hash1(}{it:x}
[{cmd:,} {it:real scalar n}
[{cmd:,} {it:real scalar byteorder}]]{cmd:)}


{p 4 4 2}
其中

{p 16 20 2}
{it:x:}
任何类型，除了 {cmd:struct}，且维度不限

{p 16 20 2}
{it:n:}
1 <= {it:n} <= 2,147,483,647 或 {cmd:.}；默认值为 {cmd:.}（缺失值）

{p 8 20 2}
{it:byteorder:}
1（HILO）、2（LOHI）、{cmd:.}（自然字节顺序）；
默认值为 {cmd:.}（缺失值）


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:hash1(}{it:x}{cmd:)} 
返回对 {it:x} 字节计算的 Jenkins 的一次哈希值；
0 <= 
{cmd:hash1(}{it:x}{cmd:)} 
<= 4,294,967,295。

{p 4 4 2}
{cmd:hash1(}{it:x}{cmd:,} {it:n}{cmd:)}
返回 
Jenkins 的一次哈希值 
缩放至 1 <= 
{cmd:hash1(}{it:x}{cmd:,} {it:n}{cmd:)}
<= {it:n}，
假设 {it:n}<{cmd:.}（缺失值）。
{cmd:hash1(}{it:x}{cmd:,} {cmd:.)}
等价于 {cmd:hash1(}{it:x}{cmd:)}。

{p 4 4 2}
{cmd:hash1(}{it:x}{cmd:,} {it:n}{cmd:,} {it:byteorder}{cmd:)} 
返回 
{cmd:hash1(}{it:x}{cmd:,} {it:n}{cmd:)} 
在字节 {it:x} 的字节顺序下计算，具体如下：
在 HILO 计算机上（{it:byteorder}==1），或在 LOHI 计算机上（{it:byteorder}==2），或在本计算机上（{it:byteorder}>={cmd:.}）。
有关字节顺序的定义，请参见 
{bf:{help mf_byteorder_zh:[M-5] byteorder()}}。

{p 4 4 2}
在所有情况下，{cmd:hash1()} 返回的值都是整数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 hash1()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
使用计算机的自然字节顺序计算速度显著更快。参数 {it:byteorder} 是为那些少数情况下而设置的，当在不同计算机之间计算相同的哈希值很重要时，
在 {cmd:hash1()} 的情况下主要用于测试。  
{cmd:hash1()} 作为一次哈希方法，不足以构建数字签名。
它足以构建哈希表；请参见 
{bf:{help mf_asarray_zh:[M-5] asarray()}}, 在这种情况下，字节顺序无关紧要。
还要注意的是
因为字符串在所有计算机上以相同的顺序出现，当 {it:x} 为字符串时， {it:byteorder} 的值无关紧要。

{p 4 4 2}
例如， 

{* hash1ex.do, junk1.smcl}{...}
	{com}: hash1("this"), hash1("this",.,1), hash1("this",.,2)
	{res}       {txt}         1            2            3
	    {c TLC}{hline 40}{c TRC}
	  1 {c |}  {res}2385389520   2385389520   2385389520{txt}  {c |}
	    {c BLC}{hline 40}{c BRC}

	{com}: hash1(15), hash1(15,.,1), hash1(15,.,2)
	{res}       {txt}         1            2            3
	    {c TLC}{hline 40}{c TRC}
	  1 {c |}  {res} 463405819   3338064604    463405819{txt}  {c |}
	    {c BLC}{hline 40}{c BRC}{txt}

{p 4 4 2}
运行此示例的计算机显然是 {it:byteorder}==2， 
表示 LOHI，即最低有效字节优先。

{p 4 4 2}
在 Mata 上下文中，最有用的是 {cmd:hash1()} 的两个参数形式。在该形式中，完整的结果映射到 [1, {it:n}]：

{col 16}{...}
{cmd:hash1(}{it:x}{cmd:,} {it:n}{cmd:)} = {...}
{cmd:floor((hash1(}{it:x}{cmd:)/4294967295)*n) + 1}

{p 4 4 2}
例如， 

{* hash1ex.do, junk2.smcl}{...}
	{com}: hash1("this", 10)
	{res}  6

	{com}: hash1(15, 10)
	{res}  2{txt}

{p 4 4 2}
{cmd:hash1(}{it:x}{cmd:,} {cmd:10)} 的结果可以直接用于索引一个 10 维的 {it:x} 数组。


{marker conformability}{...}
{title:适应性}

{p 4 4 2}
{cmd:hash1(}{it:x}{cmd:,} {it:n}{cmd:,} {it:byteorder}{cmd:)}:
{p_end}
		{it:x}:  {it:r x c}
		{it:n}:  1 {it:x} 1        （可选）
	{it:byteorder}:  1 {it:x} 1        （可选）
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。  

{p 4 4 2}
请注意，{cmd:hash1(}{it:x}[, ...]{cmd:)} 从不返回缺失结果，即使 {it:x} 是或包含缺失值。在缺失的情况下，将计算缺失值的哈希值。还要注意，
{it:x} 可以是一个向量或矩阵，在这种情况下，结果是按照行对齐像单个元素那样计算的。因此
{cmd:hash1(("a", "b"))} == {cmd:hash1("ab")}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{cmd:hash1()} 是内置函数。


{marker references}{...}
{title:参考文献}

{p 4 8 2}
Jenkins, B. 1997.
{it:Dr. Dobb's Journal}.
算法巷：哈希函数。
{browse "http://www.ddj.com/184410284":http://www.ddj.com/184410284}。

{p 4 8 2}
------.  未知。
用于哈希表查找的哈希函数。
{browse "http://www.burtleburtle.net/bob/hash/doobs.html":http://www.burtleburtle.net/bob/hash/doobs.html}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_hash1.sthlp>}