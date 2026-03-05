{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] st_varrename()" "mansection M-5 st_varrename()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_varrename_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_varrename_zh##description"}{...}
{viewerjumpto "Conformability" "mf_st_varrename_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_varrename_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_varrename_zh##source"}
{help mf_st_varrename:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] st_varrename()} {hline 2}}重命名 Stata 变量
{p_end}
{p2col:}({mansection M-5 st_varrename():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:st_varrename(}{it:scalar var}{cmd:,}
{it:string scalar newname}{cmd:)}


{p 4 4 2}
其中 {it:var} 包含一个 Stata 变量名或 Stata 变量索引。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_varrename(}{it:var}{cmd:,} {it:newname}{cmd:)} 将 {it:var} 的名称更改为 {it:newname}。

{p 4 4 2}
如果 {it:var} 被指定为名称，则不允许使用缩写。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:st_varrename(}{it:var}{cmd:,} {it:newname}{cmd:)}:
{p_end}
	      {it:var}:  1 {it:x} 1
	  {it:newname}:  1 {it:x} 1
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_varrename(}{it:var}{cmd:,} {it:newname}{cmd:)} 如果 {it:var} 不是有效的 Stata 变量，或 {it:newname} 不是有效的名称，或已经存在名为 {it:newname} 的变量，则会中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_varrename.sthlp>}