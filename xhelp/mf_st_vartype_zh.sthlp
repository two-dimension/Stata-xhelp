{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] st_vartype()" "mansection M-5 st_vartype()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_vartype_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_vartype_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_vartype_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_vartype_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_vartype_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_vartype_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_vartype_zh##source"}
{help mf_st_vartype:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] st_vartype()} {hline 2}}Stata 变量的存储类型
{p_end}
{p2col:}({mansection M-5 st_vartype():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar}
{cmd:st_vartype(}{it:scalar var}{cmd:)}

{p 8 12 2}
{it:real scalar}{bind:  }
{cmd:st_isnumvar(}{it:scalar var}{cmd:)}

{p 8 12 2}
{it:real scalar}{bind:  }
{cmd:st_isstrvar(}{it:scalar var}{cmd:)}


{p 4 4 2}
其中 {it:var} 包含一个 Stata 变量名或 Stata 变量索引。


{marker description}{...}
{title:描述}

{p 4 4 2}
在所有函数中，如果 {it:var} 被指定为名称，则不允许使用缩写。

{p 4 4 2}
{cmd:st_vartype(}{it:var}{cmd:)} 返回 {help data_types_zh:存储类型}，如 {cmd:float}、{cmd:double} 或 {cmd:str18}。

{p 4 4 2}
{cmd:st_isnumvar(}{it:var}{cmd:)} 如果 {it:var} 是数字变量，则返回 1，否则返回 0。

{p 4 4 2}
{cmd:st_isstrvar(}{it:var}{cmd:)} 如果 {it:var} 是字符串变量，则返回 1，否则返回 0。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_vartype()Remarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:st_isstrvar(}{it:var}{cmd:)} 和 
{cmd:st_isnumvar(}{it:var}{cmd:)} 是反义词。两个函数仅为方便提供；它们不会告诉你任何你可以从 
{cmd:st_vartype(}{it:var}{cmd:)} 中发现的信息。


{marker conformability}{...}
{title:一致性}

{p 4 4 2}
{cmd:st_vartype(}{it:var}{cmd:)}:
{p_end}
	      {it:var}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{cmd:st_isnumvar(}{it:var}{cmd:)},
{cmd:st_isstrvar(}{it:var}{cmd:)}:
{p_end}
	      {it:var}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:var} 不是有效的 Stata 变量，所有函数将报错并终止。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_vartype.sthlp>}