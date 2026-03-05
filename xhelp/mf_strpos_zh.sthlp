{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[M-5] strpos()" "mansection M-5 strpos()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "[M-5] ustrpos()" "help mf_ustrpos_zh"}{...}
{viewerjumpto "Syntax" "mf_strpos_zh##syntax"}{...}
{viewerjumpto "Description" "mf_strpos_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_strpos_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_strpos_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_strpos_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_strpos_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_strpos_zh##source"}
{help mf_strpos:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] strpos()} {hline 2}}在字符串中查找子字符串
{p_end}
{p2col:}({mansection M-5 strpos():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}
{cmd:strpos(}{it:字符串矩阵 haystack}{cmd:,}
{it:字符串矩阵 needle}{cmd:)}

{p 8 12 2}
{it:实数矩阵}
{cmd:strrpos(}{it:字符串矩阵 haystack}{cmd:,}
{it:字符串矩阵 needle}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:strpos(}{it:haystack}{cmd:,} {it:needle}{cmd:)} 返回 {it:needle} 在 {it:haystack} 中首次出现的位置，如果 {it:needle} 不存在，则返回 0。

{p 4 4 2}
{cmd:strrpos(}{it:haystack}{cmd:,} {it:needle}{cmd:)} 返回 {it:needle} 在 {it:haystack} 中最后一次出现的位置，如果 {it:needle} 不存在，则返回 0。

{p 4 4 2}
当参数不是标量时，{cmd:strpos()} 返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 strpos()Remarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在处理二进制字符串时，可以使用 {cmd:strpos(}{it:s}{cmd:, char(0))} 或 {cmd:strrpos(}{it:s}{cmd:, char(0))} 查找二进制 0 的首次或最后位置。

{p 4 4 2}
使用 {help mf_ustrpos_zh:ustrpos()} 或 {helpb mf_ustrrpos:ustrrpos()} 进行基于字符的搜索，而不是基于字节的搜索。


{marker conformability}{...}
{title:兼容性}

    {cmd:strpos(}{it:haystack}{cmd:,} {it:needle}{cmd:)}, {cmd:strrpos(}{it:haystack}{cmd:,} {it:needle}{cmd:)}:
        {it:haystack}:  {it:r1 x c1}
          {it:needle}:  {it:r2 x c2}, {it:haystack} 和 {it:needle} r-兼容
          {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:strpos(}{it:haystack}{cmd:,} {it:needle}{cmd:)} 和 {cmd:strrpos(}{it:haystack}{cmd:,} {it:needle}{cmd:)}
在 {it:haystack} 中未找到 {it:needle} 时返回 0。


{marker source}{...}
{title:源代码}

{p 4 4 2}
功能内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_strpos.sthlp>}