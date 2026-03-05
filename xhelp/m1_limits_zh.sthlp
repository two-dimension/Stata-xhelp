{smcl}
{* *! version 1.1.9  19jun2018}{...}
{vieweralsosee "[M-1] Limits" "mansection M-1 Limits"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] mata memory" "help mata_memory_zh"}{...}
{vieweralsosee "[M-5] mindouble()" "help mf_mindouble_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Intro" "help m1_intro_zh"}{...}
{viewerjumpto "Summary" "m1_limits_zh##summary"}{...}
{viewerjumpto "Description" "m1_limits_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m1_limits_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m1_limits_zh##remarks"}
{help m1_limits:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-1] Limits} {hline 2}}限制和内存使用
{p_end}
{p2col:}({mansection M-1 Limits:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker summary}{...}
{title:概述}

    限制：
	                              最小值       最大值
	{hline 55}
	标量、向量、矩阵
	    行数                         0          2^48 - 1 
	    列数                         0          2^48 - 1

        字符串元素，长度              0        2,147,483,647
	{hline 55}

    大小近似：
				      内存需求
	{hline 66}
	实数矩阵                    {it:oh} + {it:r}*{it:c}*8 
        复数矩阵                    {it:oh} + {it:r}*{it:c}*16 
        指针矩阵                    {it:oh} + {it:r}*{it:c}*8
	字符串矩阵                 {it:oh} + {it:r}*{it:c}*8 + {it:total_length_of_strings}
	{hline 66}
	其中 {it:r} 和 {it:c} 代表行数和列数，{it:oh} 是开销，大约为64字节
       

{marker description}{...}
{title:描述}

{pstd}
Mata 施加了限制，但与内存需求相比，这些限制几乎无关紧要。 Mata 将矩阵存储在内存中，并向操作系统请求所需的内存。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-1 LimitsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
Mata 根据需要向操作系统请求（并返回）内存，如果操作系统无法提供所需的内存，Mata 会发出以下错误：

	: {cmd:x = foo(A, B)}
	             {err}foo():  3900  无法分配{txt} ...
		   {err}<istmt>:     -  函数返回错误{txt}
	r(3900);

{pstd}
Stata 的 {cmd:set min_memory} 和 {cmd:set max_memory} 值 
（见 {bf:{help memory_zh:[D] memory}}） 
在 Mata 中没有作用，或者至少，它们没有直接作用。  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_limits.sthlp>}