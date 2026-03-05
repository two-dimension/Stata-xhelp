{smcl}
{* *! version 1.0.6  15may2018}{...}
{vieweralsosee "[M-5] ustrreverse()" "mansection M-5 ustrreverse()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strreverse()" "help mf_strreverse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_ustrreverse_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrreverse_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrreverse_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrreverse_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrreverse_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrreverse_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrreverse_zh##source"}
{help mf_ustrreverse:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] ustrreverse()} {hline 2}}反转Unicode字符串
{p_end}
{p2col:}({mansection M-5 ustrreverse():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 31 2}
{it:字符串 矩阵}
{cmd:ustrreverse(}{it:字符串 矩阵 s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrreverse(}{it:字符串 矩阵 s}{cmd:)} 反转Unicode字符串
{it:s}。

{p 4 4 2}
当参数不是标量时，该函数返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 ustrreverse()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
该函数不考虑
{mansection U 12.4.2处理Unicode字符串:Unicode字符等价性}。
因此，分解形式的Unicode字符不会作为一个单位被反转。无效的UTF-8序列将被替换为Unicode替代字符 {bf:\ufffd}。

{p 4 4 2}
使用 {help mf_strreverse_zh:strreverse()} 返回按字节反向排序的字符串。


{marker conformability}{...}
{title:适应性}

{p 4 4 2}
{cmd:ustrreverse(}{it:s}{cmd:)}:
{p_end}
		{it:s}:  {it:r x c}
	   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:ustrreverse(}{it:s}{cmd:)} 如果发生错误，将返回空字符串。


{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrreverse.sthlp>}