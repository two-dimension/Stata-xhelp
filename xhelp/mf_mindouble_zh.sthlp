{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5]  mindouble()" "mansection M-5  mindouble()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] epsilon()" "help mf_epsilon_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "语法" "mf_mindouble_zh##syntax"}{...}
{viewerjumpto "描述" "mf_mindouble_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_mindouble_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_mindouble_zh##remarks"}{...}
{viewerjumpto "一致性" "mf_mindouble_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_mindouble_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_mindouble_zh##source"}{...}
{viewerjumpto "参考" "mf_mindouble_zh##reference"}
{help mf_mindouble:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] mindouble()} {hline 2}}最小和最大非缺失值
{p_end}
{p2col:}({mansection M-5 mindouble():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:real scalar}
{cmd:mindouble()}

{p 8 8 2}
{it:real scalar}
{cmd:maxdouble()}

{p 8 8 2}
{it:real scalar}
{cmd:smallestdouble()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mindouble()} 返回最大的负非缺失值。

{p 4 4 2}
{cmd:maxdouble()} 返回最大的正非缺失值。

{p 4 4 2}
{cmd:smallestdouble()} 返回 {it:e} 的最小全精度值，{it:e}>0。{it:e}<0 的最大全精度值为 {cmd:-smallestdouble()}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 mindouble()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
所有非缺失值 {it:x} 满足 

	{cmd:mindouble()} <= {it:x} <= {cmd:maxdouble()}。

{p 4 4 2}
所有缺失值 {it:m} 满足

	{it:m} > {cmd:maxdouble()}

{p 4 4 2}
缺失值也满足 

	{it:m} >= {cmd:.}

{p 4 4 2}
在所有当前实现 Stata 和 Mata 的计算机上 -- 
这些计算机遵循 IEEE 标准 -- 

                                 精确                  近似
	函数             十六进制值             十进制值
	{hline 60}
	{cmd:mindouble()}        -1.fffffffffffffX+3ff        -1.7977e+308
	{cmd:smallestdouble()}   +1.0000000000000X-3fe         2.2251e-308
	{cmd:epsilon(1)}         +1.0000000000000X-034         2.2205e-016
	{cmd:maxdouble()}        +1.fffffffffffffX+3fe         8.9885e+307
	{hline 60}

{p 4 4 2}
最小的缺失值 ({cmd:.} < {cmd:.a} < ... < {cmd:.z})
是 +1.0000000000000X+3ff。

{p 4 4 2}
请勿将 {cmd:smallestdouble()} 与更有趣的值 {cmd:epsilon(1)} 混淆。{cmd:smallestdouble()} 是 {it:e} 的最小全精度值，{it:e}>0。{cmd:epsilon(1)} 是 {it:e} 的最小值，{it:e}+1>1；请参见 {bf:{help mf_epsilon_zh:[M-5] epsilon()}}。


{marker conformability}{...}
{title:一致性}

    {cmd:mindouble()}, {cmd:maxdouble()}, {cmd:smallestdouble()}:
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}


{marker reference}{...}
{title:参考}

{phang}
Linhart, J. M. 2008.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0038":Mata 事项：溢出、欠流与 IEEE 浮点格式}。
{it:Stata Journal} 8: 255-268。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_mindouble.sthlp>}