{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] subinstr()" "mansection M-5 subinstr()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] substr()" "help mf_substr_zh"}{...}
{vieweralsosee "[M-5] _substr()" "help mf__substr_zh"}{...}
{vieweralsosee "[M-5] usubinstr()" "help mf_usubinstr_zh"}{...}
{vieweralsosee "[M-5] usubstr()" "help mf_usubstr_zh"}{...}
{vieweralsosee "[M-5] _usubstr()" "help mf__usubstr_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_subinstr_zh##syntax"}{...}
{viewerjumpto "Description" "mf_subinstr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_subinstr_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_subinstr_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_subinstr_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_subinstr_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_subinstr_zh##source"}
{help mf_subinstr:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] subinstr()} {hline 2}}替换文本
{p_end}
{p2col:}({mansection M-5 subinstr():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 31 2}
{it:字符串矩阵}
{cmd:subinstr(}{it:字符串矩阵 s}{cmd:,}{break}
{it:字符串矩阵 old}{cmd:,}
{it:字符串矩阵 new}{cmd:)}

{p 8 31 2}
{it:字符串矩阵}
{cmd:subinstr(}{it:字符串矩阵 s}{cmd:,}{break}
{it:字符串矩阵 old}{cmd:,}
{it:字符串矩阵 new}{cmd:,}{break}
{it:实数矩阵 cnt}{cmd:)}


{p 8 32 2}
{it:字符串矩阵}
{cmd:subinword(}{it:字符串矩阵 s}{cmd:,}{break}
{it:字符串矩阵 old}{cmd:,}
{it:字符串矩阵 new}{cmd:)}

{p 8 32 2}
{it:字符串矩阵}
{cmd:subinword(}{it:字符串矩阵 s}{cmd:,}{break}
{it:字符串矩阵 old}{cmd:,}
{it:字符串矩阵 new}{cmd:,}{break}
{it:实数矩阵 cnt}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:subinstr(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:)} 
返回经过所有 {it:old} 替换为 {it:new} 的 {it:s}。  

{p 4 4 2}
{cmd:subinstr(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:,} {it:cnt}{cmd:)} 
返回经过前 {it:cnt} 个 {it:old} 替换为 {it:new} 的 {it:s}。如果 {it:cnt} 为缺失值，则所有出现的内容都会被替换。

{p 4 4 2}
{cmd:subinword(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:)}
返回经过所有在单词边界的 {it:old} 替换为 {it:new} 的 {it:s}。 

{p 4 4 2}
{cmd:subinword(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:,} {it:cnt}{cmd:)} 
返回经过前 {it:cnt} 个在单词边界的 {it:old} 替换为 {it:new} 的 {it:s}。如果 {it:cnt} 为缺失值，则所有出现的内容都会被替换。

{p 4 4 2}
当参数不是标量时，这些函数返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 subinstr()Remarksandexamples:备注和示例}

{pstd}
以上部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:subinstr("th thin man", "th", "the")} 返回 "the thein man"。

{p 4 4 2}
{cmd:subinword("th thin man", "th", "the")} 返回 "the thin man"。

{pstd}
如果您的字符串包含Unicode字符，请参见 {help mf_usubinstr_zh:[M-5] usubinstr()}。


{marker conformability}{...}
{title:相容性}

{p 4 4 2}
{cmd:subinstr(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:,} {it:cnt}{cmd:)}， 
{cmd:subinword(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:,} {it:cnt}{cmd:)}:
{p_end}
		{it:s}:  {it:r1 x c1}
	      {it:old}:  {it:r2 x c2}
	      {it:new}:  {it:r3 x c3}
	      {it:cnt}:  {it:r4 x c4}  (可选)；{it:s}、{it:old}、{it:new}、{it:cnt} 为行相关
	   {it:result}:  max({it:r1},{it:r2},{it:r3},{it:r4}) {it:x} max({it:c1},{it:c2},{it:c3},{it:c4})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:subinstr(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:,} {it:cnt}{cmd:)} 
和 
{cmd:subinword(}{it:s}{cmd:,} {it:old}{cmd:,} {it:new}{cmd:,} {it:cnt}{cmd:)} 
将 {it:cnt}<0 视为指定 {it:cnt}=0；返回原字符串 {it:s}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_subinstr.sthlp>}