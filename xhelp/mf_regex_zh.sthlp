{smcl}
{* *! version 1.0.2  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "string functions" "help string functions"}{...}
{vieweralsosee "regex" "help regex"}{...}
{viewerjumpto "Syntax" "mf_regex_zh##syntax"}{...}
{viewerjumpto "Description" "mf_regex_zh##description"}{...}
{viewerjumpto "Remarks" "mf_regex_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_regex_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_regex_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_regex_zh##source"}
{help mf_regex:English Version}
{hline}{...}
{title:标题}

{p 4 4 2}
{bf:[M-5] regexm()} {hline 2} 正则表达式匹配


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵} {cmd:regexm(}{it:字符串矩阵 s}{cmd:,}
{it:字符串矩阵 re}{cmd:)}

{p 8 12 2}
{it:字符串矩阵} {cmd:regexr(}{it:字符串矩阵 s1}{cmd:,}
{it:字符串矩阵 re}{cmd:,}
{it:字符串矩阵 s2}{cmd:)}

{p 8 12 2}
{it:字符串矩阵} {cmd:regexs(}{it:无效}{cmd:)}

{p 8 12 2}
{it:字符串矩阵} {cmd:regexs(}{it:实数标量 n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:regexm(}{it:s}{cmd:,} {it:re}{cmd:)}返回0或1，分别对应于正则表达式字符串{it:re}与{it:s}的匹配或不匹配。 

{p 4 4 2}
{cmd:regexr(}{it:s1}{cmd:,} {it:re}{cmd:,} {it:s2}{cmd:)}返回在{it:s1}中匹配{it:re}的第一个子字符串用{it:s2}替换后的结果。如果{it:s1}中没有字符串与正则表达式{it:re}匹配，则返回未修改的{it:s1}。

{p 4 4 2}
{cmd:regexs(}{it:void}{cmd:)}返回之前{cmd:regexm()}匹配的所有子表达式作为字符串矩阵。 

{p 4 4 2}
{cmd:regexs(}{it:n}{cmd:)}返回之前{cmd:regexm()}匹配的子表达式{it:n}，其中{bind:0 {ul:<} {it:n} < 10}。子表达式0保留用于满足正则表达式的整个字符串。

{p 4 4 2}
当{it:s}、{it:s1}、{it:s2}和{it:re}不是标量时，这些函数返回逐元素的结果。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些未记录函数的语法在未来可能会发生变化。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:regexm(}{it:s}, {it:re}{cmd:)},
{cmd:regexr(}{it:s1}{cmd:,} {it:re}{cmd:,} {it:s2}{cmd:)},
{p_end}
		{it:s}{cmd:,} {it:s1}{cmd:,} {it:re}{cmd:,} {it:s2}:  {it:r x c}
	               {it:结果}:  {it:r x c}


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
{center:翻译自Stata官方帮助文档 <mf_regex.sthlp>}