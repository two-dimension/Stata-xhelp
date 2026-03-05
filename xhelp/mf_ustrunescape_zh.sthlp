{smcl}
{* *! version 1.0.6  15may2018}{...}
{vieweralsosee "[M-5] ustrunescape()" "mansection M-5 ustrunescape()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ustrfix()" "help mf_ustrfix_zh"}{...}
{vieweralsosee "[M-5] ustrto()" "help mf_ustrto_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_ustrunescape_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrunescape_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrunescape_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrunescape_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrunescape_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrunescape_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrunescape_zh##source"}
{help mf_ustrunescape:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] ustrunescape()} {hline 2}}将转义的十六进制序列转换为 Unicode 字符串
{p_end}
{p2col:}({mansection M-5 ustrunescape():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string matrix} {cmd:ustrunescape(}{it:string matrix s}{cmd:)}

{p 8 12 2}
{it:string matrix}{space 4}{cmd:ustrtohex(}{it:string matrix s}[{cmd:,} {it:real scalar n}]{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrunescape(}{it:s}{cmd:)} 返回与 {it:s} 中转义序列对应的 Unicode 字符字符串。

{p 4 4 2}
{cmd:ustrtohex(}{it:s}[{cmd:,} {it:n}]{cmd:)} 返回由最多 200 个在 {it:s} 中指定的转义十六进制数字 Unicode 字符组成的字符串。如果指定了 {it:n} 且大于一，则结果从 {it:s} 的第 {it:n} 个 Unicode 字符开始；否则，从第一个 Unicode 字符开始。

{p 4 4 2}
当 {it:s} 不是标量时，这些函数逐元素返回结果。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 ustrunescape()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
以下转义序列被 {cmd:ustrunescape()} 识别：

        4 位十六进制形式  {bf:\uhhhh}
	8 位十六进制形式  {bf:\Uhhhhhhhh}
	1-2 位十六进制形式  {bf:\xhh}
	1-3 位八进制形式    {bf:\ooo}

{pstd}
其中 {bf:h} 在 {bf:[0-9A-Fa-f]} 中， {bf:o} 在 {bf:[0-7]} 中。
标准 ANSI C 转义序列 {bf:\a}、{bf:\b}、{bf:\t}、{bf:\n}、{bf:\v}、{bf:\f}、{bf:\r}、{bf:\e}、{bf:\"}、{bf:\'}、{bf:\?} 和 {bf:\\} 也被识别。如果转义序列格式不正确，函数将返回空字符串。请注意，8 位十六进制形式 {bf:\Uhhhhhhhh} 以大写字母 "U" 开头。

{p 4 4 2}
{cmd:ustrtohex()} 将字符串 {it:s} 中的每个 Unicode 字符转换为转义的十六进制字符串。范围内的 Unicode 代码点 {bf:\u0000–\uffff} 被转换为 4 位十六进制形式 {bf:\uhhhh}。大于 {bf:\uffff} 的 Unicode 代码点被转换为 8 位十六进制形式 {bf:\Uhhhhhhhh}。

{p 4 4 2}
{cmd:ustrtohex()} 将无效的 UTF-8 序列转换为 Unicode 替代字符 {bf:\ufffd}。

{p 4 4 2}
空终止符 {bf:char(0)} 是有效的 Unicode 字符，其转义形式是 {bf:\u0000}。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:ustrunescape(}{it:s}{cmd:)}，
{cmd:ustrtohex(}{it:s}[{cmd:,} {it:n}]{cmd:)}:
{p_end}
	    {it:s}:  {it:r x c}
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
{center:翻译自Stata官方帮助文档 <mf_ustrunescape.sthlp>}