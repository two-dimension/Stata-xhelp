{smcl}
{* *! version 1.0.6  15may2018}{...}
{vieweralsosee "[M-5] usubstr()" "mansection M-5 usubstr()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] subinstr()" "help mf_subinstr_zh"}{...}
{vieweralsosee "[M-5] substr()" "help mf_substr_zh"}{...}
{vieweralsosee "[M-5] _substr()" "help mf__substr_zh"}{...}
{vieweralsosee "[M-5] usubinstr()" "help mf_usubinstr_zh"}{...}
{vieweralsosee "[M-5] _usubstr()" "help mf__usubstr_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "语法" "mf_usubstr_zh##syntax"}{...}
{viewerjumpto "描述" "mf_usubstr_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_usubstr_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_usubstr_zh##remark"}{...}
{viewerjumpto "可兼容性" "mf_usubstr_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_usubstr_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_usubstr_zh##source"}
{help mf_usubstr:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] usubstr()} {hline 2}}提取 Unicode 子字符串
{p_end}
{p2col:}({mansection M-5 usubstr():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 32 2}
{it:string matrix}{space 3}{cmd:usubstr(}{it:string matrix s}{cmd:,} {it:real matrix n1}{cmd:,}{break}
{it:real matrix n2}{cmd:)}

{p 8 32 2}
{it:string matrix}{space 2}{cmd:ustrleft(}{it:string matrix s}{cmd:,} {it:real matrix n}{cmd:)}

{p 8 32 2}
{it:string matrix} {cmd:ustrright(}{it:string matrix s}{cmd:,} {it:real matrix n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:usubstr(}{it:s}{cmd:,} {it:n1}{cmd:,} {it:n2}{cmd:)} 返回 {it:s} 的 Unicode 子字符串，从 Unicode 字符 {it:n1} 开始，长度为 {it:n2}。如果 {it:n1} < 0，则 {it:n1} 被解释为距离 {it:s} 的最后一个 Unicode 字符的距离；如果 {it:n2} = {cmd:.} （{it:missing}），则返回 Unicode 字符串的剩余部分。

{p 4 4 2}
{cmd:ustrleft(}{it:s}{cmd:,} {it:n}{cmd:)} 返回 Unicode 字符串 {it:s} 的前 {it:n} 个 Unicode 字符。

{p 4 4 2}
{cmd:ustrright(}{it:s}{cmd:,} {it:n}{cmd:)} 返回 Unicode 字符串 {it:s} 的最后 {it:n} 个 Unicode 字符。

{p 4 4 2}
当参数不是标量时，函数返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 usubstr()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker remark}{...}
{title:备注}

{p 4 4 2}
{it:n} < 0 被解释为距离 Unicode 字符串的末尾的距离； {bind:{it:n} = -1} 意味着从最后一个 Unicode 字符开始的距离。

{p 4 4 2}
无效的 UTF-8 序列会被替换为 Unicode 替代字符 {bf:\ufffd}。二进制字符串中的空终止符 {cmd:char(0)} 是有效的 UTF-8 字符，将被计算和处理。

{p 4 4 2}
使用 {help mf_udsubstr_zh:udsubstr()} 来基于显示列提取子字符串。使用 {help mf_substr_zh:substr()} 来基于字节提取子字符串。


{marker conformability}{...}
{title:可兼容性}

    {cmd:usubstr(}{it:s}{cmd:,} {it:b}{cmd:,} {it:l}{cmd:)}:
            {it:s}:  {it:r x c}
            {it:b}:  {it:r x c} 或 1 {it:x} 1
            {it:l}:  {it:r x c} 或 1 {it:x} 1
       {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:usubstr(}{it:s}{cmd:,} {it:b}{cmd:,} {it:l}{cmd:)},
{cmd:ustrleft(}{it:s}{cmd:,} {it:b}{cmd:,} {it:l}{cmd:)}, 以及
{cmd:ustrright(}{it:s}{cmd:,} {it:b}{cmd:,} {it:l}{cmd:)} 如果发生错误将返回空字符串。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_usubstr.sthlp>}