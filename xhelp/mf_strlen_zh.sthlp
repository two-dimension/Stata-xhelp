{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[M-5] strlen()" "mansection M-5 strlen()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] fmtwidth()" "help mf_fmtwidth_zh"}{...}
{vieweralsosee "[M-5] strpos()" "help mf_strpos_zh"}{...}
{vieweralsosee "[M-5] udstrlen()" "help mf_udstrlen_zh"}{...}
{vieweralsosee "[M-5] ustrlen()" "help mf_ustrlen_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_strlen_zh##syntax"}{...}
{viewerjumpto "Description" "mf_strlen_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_strlen_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_strlen_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_strlen_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_strlen_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_strlen_zh##source"}
{help mf_strlen:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] strlen()} {hline 2}}字符串长度（以字节为单位）
{p_end}
{p2col:}({mansection M-5 strlen():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix} {cmd:strlen(}{it:string matrix s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:strlen(}{it:s}{cmd:)} 返回字符串 {it:s} 的字节长度。

{p 4 4 2}
当 {it:s} 不是标量时，{cmd:strlen()} 会返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 strlen()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
Stata 将 {cmd:length()} 理解为其 {helpb strlen()} 函数的同义词。 但是，在 Mata 中使用时，切勿将 {cmd:length()} 用于 {cmd:strlen()}。Mata 的 {cmd:length()} 函数返回向量的长度（元素个数）。

{p 4 4 2}
使用 {help mf_ustrlen_zh:ustrlen()} 获取 Unicode 字符串的长度。使用 {help mf_udstrlen_zh:udstrlen()} 获取在显示列中的字符串长度。
 

{marker conformability}{...}
{title:兼容性}

    {cmd:strlen(}{it:s}{cmd:)}:
	{it:s}:  {it:r x c}
   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
在 {cmd:strlen(}{it:s}{cmd:)} 中，当 {it:s} 是一个二进制字符串（包含二进制 0 的字符串）时，它返回字符串的整体长度，而不是二进制 0 的位置。如果你想要二进制 0 的位置，请使用 {cmd:strpos(}{it:s}{cmd:, char(0))}；请参见 {help mf_strpos_zh:[M-5] strpos()}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
功能是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_strlen.sthlp>}