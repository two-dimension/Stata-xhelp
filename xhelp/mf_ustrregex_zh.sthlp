{smcl}
{* *! version 1.0.3  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 字符串" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "字符串函数" "help string functions"}{...}
{viewerjumpto "语法" "mf_ustrregex_zh##syntax"}{...}
{viewerjumpto "描述" "mf_ustrregex_zh##description"}{...}
{viewerjumpto "备注" "mf_ustrregex_zh##remarks"}{...}
{viewerjumpto "可兼容性" "mf_ustrregex_zh##conformability"}{...}
{viewerjumpto "诊断信息" "mf_ustrregex_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_ustrregex_zh##source"}
{help mf_ustrregex:English Version}
{hline}{...}
{title:标题}

{p 4 4 2}
{bf:[M-5] ustrregexm()} {hline 2} Unicode 正则表达式匹配


{marker syntax}{...}
{title:语法}

{p 8 34 2}
{it:实数矩阵}{space 4}{cmd:ustrregexm(}{it:字符串矩阵 s}{cmd:,}
{it:字符串矩阵 re} {break}
[{cmd:,} {it:实数标量 noc}]{cmd:)}

{p 8 34 2}
{it:字符串矩阵} {cmd:ustrregexrf(}{it:字符串矩阵 s1}{cmd:,}
{it:字符串矩阵 re}{cmd:,}{break}
{it:字符串矩阵 s2} [{cmd:,} {it:实数标量 noc}]{cmd:)}

{p 8 34 2}
{it:字符串矩阵} {cmd:ustrregexra(}{it:字符串矩阵 s1}{cmd:,}
{it:字符串矩阵 re}{cmd:,} {break}
{it:字符串矩阵 s2} [{cmd:,} {it:实数标量 noc}]{cmd:)}

{p 8 34 2}
{it:字符串矩阵} {cmd:ustrregexs(}{it:实数矩阵 r}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrregexm(}{it:s}{cmd:,} {it:re} [{cmd:,} {it:noc}]{cmd:)}
对正则表达式进行匹配，如果 Unicode 字符串 {it:s} 满足正则表达式 {it:re}，则返回 {cmd:1}；否则返回 {cmd:0}。如果指定了 {it:noc} 且不为零，则执行不区分大小写的匹配。

{p 4 4 2}
{cmd:ustrregexrf(}{it:s1}{cmd:,} {it:re}{cmd:,} {it:s2} [{cmd:,} {it:noc}]{cmd:)}
用 {it:s2} 替换 Unicode 字符串 {it:s1} 中与 {it:re} 匹配的第一个子字符串，并返回结果字符串。如果 {it:noc} 被指定且不为零，则执行不区分大小写的匹配。

{p 4 4 2}
{cmd:ustrregexra(}{it:s1}{cmd:,} {it:re}{cmd:,} {it:s2} [{cmd:,} {it:noc}]{cmd:)}
用 {it:s2} 替换 Unicode 字符串 {it:s1} 中与 {it:re} 匹配的所有子字符串，并返回结果字符串。如果 {it:noc} 被指定且不为零，则执行不区分大小写的匹配。

{p 4 4 2}
{cmd:ustrregexs(}{it:r}{cmd:)}
返回先前 {cmd:ustrregexm()} 匹配的子表达式 {it:r}。子表达式 0 保留给满足正则表达式的整个字符串。如果 {it:r} 大于先前匹配的子表达式的最大计数，则函数可能返回空字符串。

{p 4 4 2}
当 {it:s}、{it:s1}、{it:s2}、{it:re} 和 {it:r} 不是标量时，这些函数返回逐元素的结果。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在进行匹配之前，无效的 UTF-8 序列会被替换为 Unicode 替换字符 {bf:\ufffd}。


{marker conformability}{...}
{title:可兼容性}

{cmd:ustrregexm(}{it:s}{cmd:,} {it:re} [{cmd:,} {it:noc}]{cmd:)},
{cmd:ustrregexrf(}{it:s1}{cmd:,} {it:re}{cmd:,} {it:s2} [{cmd:,} {it:noc}]{cmd:)},
{cmd:ustrregexra(}{it:s1}{cmd:,} {it:re}{cmd:,} {it:s2} [{cmd:,} {it:noc}]{cmd:)}:
{p_end}
		{it:s}:  {it:r x c} 
	       {it:s1}:  {it:r x c} 或 1 {it:x} 1
	       {it:re}:  {it:r x c} 或 1 {it:x} 1
	       {it:s2}:  {it:r x c} 或 1 {it:x} 1
	      {it:noc}:  {it:1 x 1}
	   {it:result}:  {it:r x c}

{p 4 4 2}
{cmd:ustrregexrs(}{it:r}{cmd:)}:
{p_end}
	        {it:r}:   1 {it:x} 1
	   {it:result}:   1 {it:x} 1


{marker diagnostics}{...}
{title:诊断信息}

{p 4 4 2}
{cmd:ustrregexm()} 如果发生错误，将返回负整数。

{p 4 4 2}
{cmd:ustrregexrf()},{cmd:ustrregexra()} 和 {cmd:ustrregexrs()} 如果发生错误，将返回空字符串。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrregex.sthlp>}