{smcl}
{* *! version 1.0.6  15may2018}{...}
{vieweralsosee "[M-5] ustrtrim()" "mansection M-5 ustrtrim()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] strtrim()" "help mf_strtrim_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_ustrtrim_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrtrim_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrtrim_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrtrim_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrtrim_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrtrim_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrtrim_zh##source"}
{help mf_ustrtrim:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] ustrtrim()} {hline 2}}移除Unicode空白字符
{p_end}
{p2col:}({mansection M-5 ustrtrim():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:字符串矩阵} {cmd:ustrltrim(}{it:字符串矩阵 s}{cmd:)}

{p 8 12 2}
{it:字符串矩阵} {cmd:ustrrtrim(}{it:字符串矩阵 s}{cmd:)}

{p 8 12 2}
{it:字符串矩阵}{space 2}{cmd:ustrtrim(}{it:字符串矩阵 s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrltrim(}{it:s}{cmd:)}
返回去掉开头Unicode空白字符后的{it:s}。

{p 4 4 2}
{cmd:ustrrtrim(}{it:s}{cmd:)}
返回去掉结尾Unicode空白字符后的{it:s}。

{p 4 4 2}
{cmd:ustrtrim(}{it:s}{cmd:)}
返回去掉开头和结尾Unicode空白字符后的{it:s}。

{p 4 4 2}
当{it:s}不是标量时，这些函数逐元素返回结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 ustrtrim()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些函数移除所有Unicode空白字符。Unicode还考虑了除了ASCII空格字符{cmd:char(32)}外的其他空白字符。例如，ASCII字符{cmd:9}（水平制表符）也是Unicode空白字符。因此，{cmd:ustrtrim(char(9))=""}但是{cmd:strtrim(char(9))=char(9)}。ASCII代码{cmd:char(10)}、{cmd:char(11)}、{cmd:char(12)}和{cmd:char(13)}也都是Unicode空白字符。请参见{browse "http://unicode.org/charts/collation/chart_Whitespace.html"}获取所有Unicode空白字符的列表。

{p 4 4 2}
使用函数{help mf_strtrim_zh:strtrim()}、{help mf_strtrim_zh:strltrim()}、{help mf_strtrim_zh:strrtrim()}和{help mf_strtrim_zh:stritrim()}仅去除字符串中的ASCII空格字符{cmd:char(32)}。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:ustrltrim(}{it:s}{cmd:)},
{cmd:ustrrtrim(}{it:s}{cmd:)},
{cmd:ustrtrim(}{it:s}{cmd:)}:
{p_end}
		{it:s}:  {it:r x c}
	   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:ustrltrim(}{it:s}{cmd:)},
{cmd:ustrrtrim(}{it:s}{cmd:)}, 和
{cmd:ustrtrim(}{it:s}{cmd:)}
在发生错误时返回空字符串。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrtrim.sthlp>}