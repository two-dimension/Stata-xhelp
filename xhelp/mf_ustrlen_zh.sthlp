{smcl}
{* *! version 1.0.7  15may2018}{...}
{vieweralsosee "[M-5] ustrlen()" "mansection M-5 ustrlen()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strlen()" "help mf_strlen_zh"}{...}
{vieweralsosee "[M-5] udstrlen()" "help mf_udstrlen_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrdiunicode}{...}
{viewerjumpto "Syntax" "mf_ustrlen_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrlen_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrlen_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrlen_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrlen_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrlen_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrlen_zh##source"}
{help mf_ustrlen:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] ustrlen()} {hline 2}}Unicode 字符串的长度（以 Unicode 字符计）
{p_end}
{p2col:}({mansection M-5 ustrlen():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}{space 8}{cmd:ustrlen(}{it:字符串矩阵 s}{cmd:)}

{p 8 12 2}
{it:实数矩阵} {cmd:ustrinvalidcnt(}{it:字符串矩阵 s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrlen(}{it:s}{cmd:)} 返回 Unicode 字符串 {it:s} 中的 Unicode 字符数量。无效的 UTF-8 序列被计为一个 Unicode 字符。请注意，任何非 ASCII 字符（0-127）在 UTF-8 编码中都占用超过 1 字节，例如 "é" 占用 2 字节。

{p 4 4 2}
{cmd:ustrinvalidcnt(}{it:s}{cmd:)} 返回 {it:s} 中无效的 UTF-8 序列的数量。无效的 UTF-8 序列可以包含一个字节或多个字节。

{p 4 4 2}
当 {it:s} 不是标量时，函数返回逐元素结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 ustrlen()备注和示例:备注和示例}

{pstd}
以上部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:ustrlen(}{it:s}{cmd:)}, 当 {it:s} 是二进制字符串（包含空字符 {cmd:char(0)} 的字符串）时，返回 Unicode 字符串的整体长度。请注意，空字符 {cmd:char(0)} 是有效的 Unicode 码点。

{p 4 4 2}
使用 {help mf_udstrlen_zh:udstrlen()} 获取字符串的显示列长度。使用 {help mf_strlen_zh:strlen()} 获取字符串的字节长度。
参见 {findalias frdiunicode}。


{marker conformability}{...}
{title:一致性}

{p 4 4 2}
{cmd:ustrlen(}{it:s}{cmd:)},
{cmd:ustrinvalidcnt(}{it:s}{cmd:)}:
{p_end}
             {it:s}:  {it:r x c}
        {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:ustrlen(}{it:s}{cmd:)} 和
{cmd:ustrinvalidcnt(}{it:s}{cmd:)}
在发生错误时返回负错误代码。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrlen.sthlp>}