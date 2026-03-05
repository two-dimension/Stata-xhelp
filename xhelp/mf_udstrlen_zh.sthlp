{smcl}
{* *! version 1.0.6  15may2018}{...}
{vieweralsosee "[M-5] udstrlen()" "mansection M-5 udstrlen()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strlen()" "help mf_strlen_zh"}{...}
{vieweralsosee "[M-5] ustrlen()" "help mf_udstrlen_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrdiunicode}{...}
{viewerjumpto "Syntax" "mf_udstrlen_zh##syntax"}{...}
{viewerjumpto "Description" "mf_udstrlen_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_udstrlen_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_udstrlen_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_udstrlen_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_udstrlen_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_udstrlen_zh##source"}
{help mf_udstrlen:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] udstrlen()} {hline 2}}Unicode 字符串的显示列数
{p_end}
{p2col:}({mansection M-5 udstrlen():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix} {cmd:udstrlen(}{it:string matrix s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:udstrlen(}{it:s}{cmd:)} 返回显示 Unicode 字符串 {it:s} 在 Stata 结果窗口中所需的列数。

{p 4 4 2}
当 {it:s} 不是标量时，{cmd:udstrlen()} 返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 udstrlen()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
来自中文、日文和韩文的 Unicode 字符通常需要两个显示列。一个拉丁字符通常需要一个列。任何无效的 UTF-8 序列需要一个列。
有关详细信息，请参见 {findalias frdiunicode}。

{p 4 4 2}
使用 {help mf_ustrlen_zh:ustrlen()} 获取字符串的 Unicode 字符长度。使用 {help mf_strlen_zh:strlen()} 获取字符串的字节长度。


{marker conformability}{...}
{title:适应性}

{p 4 4 2}
{cmd:udstrlen(}{it:s}{cmd:)}:
{p_end}
            {it:s}:  {it:r x c}
       {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:udstrlen(}{it:s}{cmd:)} 在发生错误时返回负错误代码。 


{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_udstrlen.sthlp>}