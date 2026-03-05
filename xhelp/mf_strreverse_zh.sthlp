{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[M-5] strreverse()" "mansection M-5 strreverse()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ustrreverse()" "help mf_ustrreverse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 字符串" "help m4_string_zh"}{...}
{viewerjumpto "语法" "mf_strreverse_zh##syntax"}{...}
{viewerjumpto "描述" "mf_strreverse_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_strreverse_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_strreverse_zh##remarks"}{...}
{viewerjumpto "一致性" "mf_strreverse_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_strreverse_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_strreverse_zh##source"}
{help mf_strreverse:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] strreverse()} {hline 2}}反转字符串
{p_end}
{p2col:}({mansection M-5 strreverse():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:字符串 矩阵}
{cmd:strreverse(}{it:字符串 矩阵 s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:strreverse(}{it:s}{cmd:)} 反转ASCII字符串 {it:s}。

{p 4 4 2}
当 {it:s} 不是标量时，{cmd:strreverse()} 返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 strreverse()备注和示例:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:strreverse()} 旨在用于ASCII字符。
对于超出ASCII范围的Unicode字符，编码字节会被反转。

{p 4 4 2}
使用 {help mf_ustrreverse_zh:ustrreverse()} 返回字符串及其Unicode字符的反转顺序。   


{marker conformability}{...}
{title:一致性}

    {cmd:strreverse(}{it:s}{cmd:)}:
	     {it:s}:  {it:r x c}
	{it:结果}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_strreverse.sthlp>}