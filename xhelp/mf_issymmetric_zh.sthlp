{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] issymmetric()" "mansection M-5 issymmetric()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] makesymmetric()" "help mf_makesymmetric_zh"}{...}
{vieweralsosee "[M-5] reldif()" "help mf_reldif_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_issymmetric_zh##syntax"}{...}
{viewerjumpto "Description" "mf_issymmetric_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_issymmetric_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_issymmetric_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_issymmetric_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_issymmetric_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_issymmetric_zh##source"}
{help mf_issymmetric:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] issymmetric()} {hline 2}}判断矩阵是否为对称（埃尔米特）{p_end}
{p2col:}({mansection M-5 issymmetric():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:issymmetric(}{it:变换矩阵 A}{cmd:)}

{p 8 12 2}
{it:实数标量}
{cmd:issymmetriconly(}{it:变换矩阵 A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:issymmetric(}{it:A}{cmd:)} 如果 {it:A}=={it:A}{bf:'} 则返回1，否则返回0。 （另见 {cmd:mreldifsym()} 在
{bf:{help mf_reldif_zh:[M-5] reldif()}}）。

{p 4 4 2}
{cmd:issymmetriconly(}{it:A}{cmd:)} 如果 {it:A}=={bf:transposeonly(}{it:A}{cmd:)} 则返回1，否则返回0。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection M-5 issymmetric()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:issymmetric(}{it:A}{cmd:)} 和 
{cmd:issymmetriconly(}{it:A}{cmd:)} 除非 {it:A} 是复数，否则返回相同的结果。  

{p 4 4 2}
在复数情况下，{cmd:issymmetric(}{it:A}{cmd:)} 如果 {it:A} 等于其共轭转置，即 {it:A} 是埃尔米特的情况下返回1，埃尔米特是对称的复数类。 
{it:A} 是对称（埃尔米特）的，如果其非对角元素互为共轭且对角元素为实数。

{p 4 4 2}
另一方面，{cmd:issymmetriconly(}{it:A}{cmd:)} 使用对称性的机械定义： {it:A} 只有在其非对角元素相等时才是对称只有（{it:sic}）。 
从数学角度讲，{cmd:issymmetriconly()} 不具趣味，但在某些数据管理编程情况下可能很有用。


{marker conformability}{...}
{title:兼容性}

    {cmd:issymmetric(}{it:A}{cmd:)}, {cmd:issymmetriconly(}{it:A}{cmd:)：
		{it:A}:  {it:r x c}
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:issymmetric(}{it:A}{cmd:)} 如果 {it:A} 不是方形的，则返回0。  
如果 {it:A} 是 0 {it:x} 0， 则是对称的。

{p 4 4 2}
{cmd:issymmetriconly(}{it:A}{cmd:)} 如果 {it:A} 不是方形的，则返回0。  
如果 {it:A} 是 0 {it:x} 0，则是对称只有。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_issymmetric.sthlp>}