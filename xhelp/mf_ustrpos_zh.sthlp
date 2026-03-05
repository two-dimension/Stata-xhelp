{smcl}
{* *! version 1.0.3  15may2018}{...}
{vieweralsosee "[M-5] ustrpos()" "mansection M-5 ustrpos()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strpos()" "help mf_strpos_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_ustrpos_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrpos_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrpos_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrpos_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrpos_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrpos_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrpos_zh##source"}
{help mf_ustrpos:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] ustrpos()} {hline 2}}在Unicode字符串中查找子字符串
{p_end}
{p2col:}({mansection M-5 ustrpos():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 34 2}
{it:real matrix} {cmd:ustrpos(}{it:string matrix s}{cmd:,}{it:string scalar sf}{break}
 [{cmd:,}{it:real scalar n}]{cmd:)}

{p 8 34 2}
{it:real matrix} {cmd:ustrrpos(}{it:string matrix s}{cmd:,}{it:string scalar sf}{break}
 [{cmd:,}{it:real scalar n}]{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrpos(}{it:s}{cmd:,} {it:sf}[{cmd:,} {it:n}]{cmd:)}
返回在 {it:s} 中首次找到 {it:sf} 的字符位置；如果未找到，则返回 {cmd:0}。如果指定了 {it:n} 并且它大于零，则从 {it:s} 的第 {it:n} 个Unicode字符开始搜索。

{p 4 4 2}
{cmd:ustrrpos(}{it:s}{cmd:,} {it:sf}[{cmd:,} {it:n}]{cmd:)}
返回在 {it:s} 中最后找到 {it:sf} 的位置；如果未找到，则返回 {cmd:0}。如果指定了 {it:n} 并且它大于零，则在 {it:s} 的第一个Unicode字符与第 {it:n} 个Unicode字符之间进行搜索。

{p 4 4 2}
当 {it:s} 不是标量时，这些函数返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 ustrpos()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在执行搜索之前，{it:s} 或 {it:sf} 中的无效UTF-8序列将被替换为Unicode替换字符 {bf:\ufffd}。

{p 4 4 2}
使用 {help mf_strpos_zh:strpos()} 或 {help mf_strpos_zh:strrpos()} 来查找字符串中子字符串的基于字节的位置。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:ustrpos(}{it:s}{cmd:,}{it:sf} [{cmd:,}{it:n}]{cmd:)}, 
{cmd:ustrrpos(}{it:s}{cmd:,}{it:sf} [{cmd:,}{it:n}]{cmd:)}:
{p_end}
	    {it:s}:  {it:r x c}
           {it:sf}:  1 {it:x} 1 
            {it:n}:  1 {it:x} 1 
       {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrpos.sthlp>}