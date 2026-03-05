{smcl}
{* *! version 1.0.5  15may2018}{...}
{vieweralsosee "[M-5] udsubstr()" "mansection M-5 udsubstr()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] subinstr()" "help mf_subinstr_zh"}{...}
{vieweralsosee "[M-5] substr()" "help mf_substr_zh"}{...}
{vieweralsosee "[M-5] _substr()" "help mf__substr_zh"}{...}
{vieweralsosee "[M-5] usubinstr()" "help mf_usubinstr_zh"}{...}
{vieweralsosee "[M-5] usubstr()" "help mf_usubstr_zh"}{...}
{vieweralsosee "[M-5] _usubstr()" "help mf__usubstr_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "语法" "mf_udsubstr_zh##syntax"}{...}
{viewerjumpto "描述" "mf_udsubstr_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_udsubstr_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_udsubstr_zh##remark"}{...}
{viewerjumpto "一致性" "mf_udsubstr_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_udsubstr_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_udsubstr_zh##source"}
{help mf_udsubstr:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] udsubstr()} {hline 2}}根据显示列提取Unicode子字符串
{p_end}
{p2col:}({mansection M-5 udsubstr():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 52 2}
{it:string matrix}
{cmd:udsubstr(}{it:string matrix s}{cmd:,}
{it:real matrix n1}{cmd:,}{break}
{it:real matrix n2}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:udsubstr(}{it:s}{cmd:,} {it:n1}{cmd:,} {it:n2}{cmd:)}返回{it:s}的Unicode子字符串，从Unicode字符{it:n1}开始，长度为{it:n2}个显示列。如果{it:n2} = {cmd:.}（{it:missing}），则返回Unicode字符串的剩余部分。如果从Unicode字符{it:n1}开始的{it:n2}个显示列处于Unicode字符的中间，则子字符串在前一个Unicode字符处停止。

{p 4 4 2}
当参数不是标量时，{cmd:udsubstr()}返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 udsubstr()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remark}{...}
{title:备注}

{p 4 4 2}
{it:n1} < 0 被解释为从Unicode字符串末尾的距离；{bind:{it:n1} = -1}表示从最后一个Unicode字符开始。

{p 4 4 2}
无效的UTF-8序列会被替换为Unicode替代字符{bf:\ufffd}。在二进制字符串中的空终止符{cmd:char(0)}是合法的UTF-8字符，会被统计并按此处理。

{p 4 4 2}
使用{help mf_usubstr_zh:usubstr()}根据Unicode字符提取子字符串。使用{help mf_substr_zh:substr()}根据字节提取子字符串。


{marker conformability}{...}
{title:一致性}

{p 4 4 2}
{cmd:udsubstr(}{it:s}{cmd:,} {it:n1}{cmd:,} {it:n2}{cmd:)}:
{p_end}
            {it:s}:  {it:r x c}
           {it:n1}:  {it:r x c} 或 1 {it:x} 1
           {it:n2}:  {it:r x c} 或 1 {it:x} 1
       {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:udsubstr(}{it:s}{cmd:,} {it:n1}{cmd:,} {it:n2}{cmd:)}在发生错误时返回空字符串。 


{marker source}{...}
{title:源代码}

{p 4 4 2}
此函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_udsubstr.sthlp>}