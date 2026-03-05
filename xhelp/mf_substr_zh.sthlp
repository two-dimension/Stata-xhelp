{smcl}
{* *! version 1.1.12  15may2018}{...}
{vieweralsosee "[M-5] substr()" "mansection M-5 substr()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] subinstr()" "help mf_subinstr_zh"}{...}
{vieweralsosee "[M-5] _substr()" "help mf__substr_zh"}{...}
{vieweralsosee "[M-5] usubinstr()" "help mf_usubinstr_zh"}{...}
{vieweralsosee "[M-5] usubstr()" "help mf_usubstr_zh"}{...}
{vieweralsosee "[M-5] _usubstr()" "help mf__usubstr_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_substr_zh##syntax"}{...}
{viewerjumpto "Description" "mf_substr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_substr_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_substr_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_substr_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_substr_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_substr_zh##source"}
{help mf_substr:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] substr()} {hline 2}}提取子字符串
{p_end}
{p2col:}({mansection M-5 substr():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:字符串 矩阵}
{cmd:substr(}{it:字符串 矩阵 s}{cmd:,}
{it:实数 矩阵 b}{cmd:,}
{it:实数 矩阵 l}{cmd:)}

{p 8 12 2}
{it:字符串 矩阵}
{cmd:substr(}{it:字符串 矩阵 s}{cmd:,}
{it:实数 矩阵 b}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:,} {it:l}{cmd:)} 返回 ASCII 字符串 {it:s} 从位置 {it:b} 开始，长度为 {it:l} 个字符的子字符串。

{pstd}
对于非 ASCII 字符串，{it:b} 和 {it:l} 将被解释为字节位置。要获取 Unicode 字符串的基于字符的子字符串，请参阅 {help mf_usubstr_zh:[M-5] usubstr()}。

{p 4 4 2}
{cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:)} 相当于 
{cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:,} {cmd:.)} 对于不包含二进制 0 的字符串。如果 {it:b} 右侧有一个二进制 0，则返回从 {it:b} 开始但不包括二进制 0 的子字符串。

{p 4 4 2}
当参数不是标量时，{cmd:substr()} 返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 substr()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:,} {it:l}{cmd:)} 返回 ASCII 字符串 {it:s} 从位置 {it:b} 开始，长度为 {it:l} 个字符的子字符串，其中

{p 8 12 2}
1.  {it:b} 指定起始位置；
    字符串的第一个字符为 {it:b}=1。

{p 8 12 2}
2.  {it:b}>0 被解释为从字符串开头的距离；
    {it:b}=2 表示从第二个字符开始。

{p 8 12 2}
3.  {it:b}<0 被解释为从字符串末尾的距离；{it:b} = -1
    表示从最后一个字符开始；
    {it:b} = -2 表示从倒数第二个字符开始。

{p 8 12 2}
4.  {it:l} 指定长度；{it:l}=2 表示两个字符。

{p 8 12 2}
5.  {it:l}<0 的处理与 {it:l}=0 相同：不复制字符。

{p 8 12 2}
6.  {it:l}>={cmd:.} 被解释为到达字符串的结束。

{p 4 4 2}
{cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:)} 相当于 
{cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:,} {cmd:.)} 对于不包含二进制 0 的字符串。如果 {it:b} 右侧有一个二进制 0，则返回从 {it:b} 开始但不包括二进制 0 的子字符串。

{p 4 4 2}
如果您的字符串包含 Unicode 字符，请参阅
{help mf_usubstr_zh:[M-5] usubstr()} 和
{help mf_udsubstr_zh:[M-5] udsubstr()}。


{marker conformability}{...}
{title:相容性}

    {cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:,} {it:l}{cmd:)}:
            {it:s}:  {it:r1 x c1}
            {it:b}:  {it:r2 x c2}
            {it:l}:  {it:r3 x c3}; {it:s}, {it:b}, 和 {it:l} 为 r-相容
       {it:result}:  max({it:r1},{it:r2},{it:r3}) {it:x} max({it:c1},{it:c2},{it:c3})

    {cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:)}:
            {it:s}:  {it:r1 x c1}
            {it:b}:  {it:r2 x c2}; {it:s} 和 {it:b} 为 r-相容
       {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
在 
{cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:,} {it:l}{cmd:)} 和 
{cmd:substr(}{it:s}{cmd:,} {it:b}{cmd:)} 中，如果 {it:b} 描述的位于字符串之前或之后的位置，则返回 {cmd:""}。
如果 {it:b}+{it:l} 描述的位置在字符串的右侧，则结果如同指定了更小的 {it:l} 值。

{marker source}{...}
{title:源代码}

{p 4 4 2}
该函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_substr.sthlp>}