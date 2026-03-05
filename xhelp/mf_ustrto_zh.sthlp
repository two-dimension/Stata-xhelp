{smcl}
{* *! version 1.0.8  15may2018}{...}
{vieweralsosee "[M-5] ustrto()" "mansection M-5 ustrto()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ustrfix()" "help mf_ustrfix_zh"}{...}
{vieweralsosee "[M-5] ustrunescape()" "help mf_ustrunescape_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{findalias asfrencodings}{...}
{viewerjumpto "Syntax" "mf_ustrto_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrto_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrto_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrto_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrto_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrto_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrto_zh##source"}
{help mf_ustrto:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] ustrto()} {hline 2}}将 Unicode 字符串转换为指定编码中的字符串
{p_end}
{p2col:}({mansection M-5 ustrto():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 31 2}
{it:string matrix}{space 3}{cmd:ustrto(}{it:string matrix s}{cmd:,} {it:string scalar enc}{cmd:,}{break} 
{it:real scalar mode}{cmd:)}

{p 8 31 2}
{it:string matrix} {cmd:ustrfrom(}{it:string matrix s}{cmd:,} {it:string scalar enc}{cmd:,}{break} 
{it:real scalar mode}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrto(}{it:s}{cmd:,} {it:enc}{cmd:,} {it:mode}{cmd:)}
将 Unicode 字符串 {it:s} 转换为编码为 {it:enc} 的字符串。任何
{it:s} 中的无效 UTF-8 序列将被替换为 Unicode 替换字符 {bf:\ufffd}。 {it:mode} 控制在编码 {it:enc} 中如何处理不支持的 Unicode 字符。
{it:mode} 的可能值为 {bf:1} ，将任何不支持的字符替换为 {it:enc} 的替代字符串； {bf:2} ，跳过任何不支持的字符； {bf:3} ，在第一个不支持的字符处停止并返回一个空字符串；或 {bf:4} ，用转义的十六进制数字序列 {bf:\uhhhh} 或 {bf:\Uhhhhhhhh} 替换任何不支持的字符。十六进制数字序列根据 Unicode 字符的代码点值包含四个或八个十六进制数字。任何其他值都作为 {bf:1} 处理。

{p 4 4 2}
{cmd:ustrfrom(}{it:s}{cmd:,} {it:enc}{cmd:,} {it:mode}{cmd:)}
将编码为 {it:enc} 的字符串 {it:s} 转换为 UTF-8 
编码的 Unicode 字符串。 {it:mode} 控制如何处理 {it:s} 中的无效字节序列。
{it:mode} 的可能值为 {bf:1} ，用 Unicode 替换字符 {bf:\ufffd} 替换无效字节序列； {bf:2} ，跳过任何无效字节序列； {bf:3} ，在第一个无效字节序列处停止并返回一个空字符串；或 {bf:4} ，用转义的十六进制数字序列 {bf:%Xhh} 替换无效字节序列中的任何字节。任何其他值都作为 {bf:1} 处理。

{pstd}
当参数不是标量时， {cmd:ustrto()} 返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 ustrto()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
输入 {cmd:unicode encoding list} 列出可用的编码。
见 {findalias frencodings} 以及在 {help unicode_zh} 中查看 {cmd:unicode encoding} 命令的详细信息。

{p 4 4 2}
ASCII 和 Latin-1 编码的替代字符为 {cmd:char(26)}

{p 4 4 2}
使用 {cmd:mode=4} ({it:escape}) 的一个好方法是检查 Unicode 字符串 {cmd:ust} 包含了哪些无效字节，通过检查 {cmd:ustrfrom(ust, "utf-8", 4)} 的结果。


{marker conformability}{...}
{title:可兼容性}

{p 4 4 2}
{cmd:ustrto(}{it:s}{cmd:,} {it:enc}{cmd:,} {it:mode}{cmd:)},
{cmd:ustrfrom(}{it:s}{cmd:,} {it:enc}{cmd:,} {it:mode}{cmd:)}:
{p_end}

            {it:s}:  {it:r x c}
          {it:enc}:  1 {it:x} 1
         {it:mode}:  1 {it:x} 1
       {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{pstd}
{cmd:ustrto(}{it:s}{cmd:,} {it:enc}{cmd:,} {it:mode}{cmd:)} 和
{cmd:ustrfrom(}{it:s}{cmd:,} {it:enc}{cmd:,} {it:mode}{cmd:)}
如果发生错误则返回一个空字符串。


{marker source}{...}
{title:源代码}

{pstd}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrto.sthlp>}