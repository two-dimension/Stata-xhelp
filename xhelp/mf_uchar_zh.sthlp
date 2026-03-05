{smcl}
{* *! version 1.0.7  15may2018}{...}
{vieweralsosee "[M-5] uchar()" "mansection M-5 uchar()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ascii()" "help mf_ascii_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_uchar_zh##syntax"}{...}
{viewerjumpto "Description" "mf_uchar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_uchar_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_uchar_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_uchar_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_uchar_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_uchar_zh##source"}
{help mf_uchar:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] uchar()} {hline 2}}将代码点转换为 Unicode 字符 
{p_end}
{p2col:}({mansection M-5 uchar():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:字符串 矩阵} {cmd:uchar(}{it:实数 矩阵 c}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:uchar(c)} 返回与 Unicode 代码点 {it:c} 相对应的 UTF-8 编码的 Unicode 字符。 
如果 {it:c} 超出 Unicode 代码点范围，则返回空字符串。

{p 4 4 2}
当 {it:c} 不是标量时，此函数按元素返回结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 uchar()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:uchar()} 返回与 {helpb mf_char:char()} 在代码点 0-127 范围内相同的结果。  


{marker conformability}{...}
{title:符合性}

    {cmd:uchar(}{it:c}{cmd:)}:
	    {it:c}:  {it:r x c}
       {it:结果}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
功能内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_uchar.sthlp>}