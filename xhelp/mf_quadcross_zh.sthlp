{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] quadcross()" "mansection M-5 quadcross()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cross()" "help mf_cross_zh"}{...}
{vieweralsosee "[M-5] crossdev()" "help mf_crossdev_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_quadcross_zh##syntax"}{...}
{viewerjumpto "Description" "mf_quadcross_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_quadcross_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_quadcross_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_quadcross_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_quadcross_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_quadcross_zh##source"}
{help mf_quadcross:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] quadcross()} {hline 2}}四倍精度交叉乘积
{p_end}
{p2col:}({mansection M-5 quadcross():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix}
{cmd:quadcross(}{it:X}{cmd:,}
{it:Z}{cmd:)}

{p 8 12 2}
{it:real matrix}
{cmd:quadcross(}{it:X}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:)}

{p 8 12 2}
{it:real matrix}
{cmd:quadcross(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:)}

{p 8 12 2}
{it:real matrix}
{cmd:quadcross(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:)}


{p 8 12 2}
{it:real matrix}
{cmd:quadcrossdev(}{it:X}{cmd:,}
{it:x}{cmd:,}
{it:Z}{cmd:,}
{it:z}{cmd:)}

{p 8 12 2}
{it:real matrix}
{cmd:quadcrossdev(}{it:X}{cmd:,}
{it:x}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:z}{cmd:)}

{p 8 12 2}
{it:real matrix}
{cmd:quadcrossdev(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:x}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:,}
{it:z}{cmd:)}

{p 8 12 2}
{it:real matrix}
{cmd:quadcrossdev(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:x}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:,}
{it:z}{cmd:)}


{p 4 8 2}
其中

	             {it:X}:  {it:实数矩阵 X}
	            {it:xc}:  {it:实数标量 xc}
	             {it:x}:  {it:实数行向量 x}

	             {it:w}:  {it:实数向量 w}

	             {it:Z}:  {it:实数矩阵 Z}
	            {it:zc}:  {it:实数标量 zc}
	             {it:z}:  {it:实数行向量 z}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:quadcross()} 计算以下形式的值：

		{it:X}'{it:X} 

		{it:X}'{it:Z} 

		{it:X}{cmd:'diag(}{it:w}{cmd:)}{it:X}

		{it:X}{cmd:'diag(}{it:w}{cmd:)}{it:Z}

{p 4 4 2}
此函数与 {cmd:cross()} 相似（参见
{bf:{help mf_cross_zh:[M-5] cross()}}），不同之处在于和的计算采用四倍精度而非双倍精度，
因此 
{cmd:quadcross()} 更为精确。

{p 4 4 2}
{cmd:quadcrossdev()} 进行以下形式的计算：

		({it:X}:-{it:x})'({it:X}:-{it:x})
		({it:X}:-{it:x})'({it:Z}:-{it:z})
		({it:X}:-{it:x})'{cmd:diag(}{it:w})({it:X}:-{it:x})
		({it:X}:-{it:x})'{cmd:diag(}{it:w})({it:Z}:-{it:z})

{p 4 4 2}
此函数与 {cmd:crossdev()} 相似（参见
{bf:{help mf_crossdev_zh:[M-5] crossdev()}}），不同之处在于和的计算采用四倍精度而非双倍精度，
因此 
{cmd:quadcrossdev()} 更为精确。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 quadcross()Remarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
返回的结果为双倍精度，但生成该双倍精度结果的和计算是在四倍精度下进行的。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:quadcross()} 的兼容性要求与 {cmd:cross()} 相同；参见 
{bf:{help mf_cross_zh:[M-5] cross()}}。 

{p 4 4 2}
{cmd:quadcrossdev()} 的兼容性要求与 {cmd:crossdev()} 相同；参见 
{bf:{help mf_crossdev_zh:[M-5] crossdev()}}。


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
请参见
{it:{help mf_cross##diagnostics:诊断}} 在 
{bf:{help mf_cross_zh:[M-5] cross()}} 和 
{it:{help mf_crossdev##diagnostics:诊断}} 在 
{bf:{help mf_crossdev_zh:[M-5] crossdev()}}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
这些函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_quadcross.sthlp>}