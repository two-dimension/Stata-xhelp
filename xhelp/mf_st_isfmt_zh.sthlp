{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] st_isfmt()" "mansection M-5 st_isfmt()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_isfmt_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_isfmt_zh##description"}{...}
{viewerjumpto "Conformability" "mf_st_isfmt_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_isfmt_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_isfmt_zh##source"}
{help mf_st_isfmt:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] st_isfmt()} {hline 2}}是否为有效的 %fmt
{p_end}
{p2col:}({mansection M-5 st_isfmt():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:st_isfmt(}{it:字符串标量 s}{cmd:)}

{p 8 12 2}
{it:实数标量}
{cmd:st_isnumfmt(}{it:字符串标量 s}{cmd:)}

{p 8 12 2}
{it:实数标量}
{cmd:st_isstrfmt(}{it:字符串标量 s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_isfmt(}{it:s}{cmd:)} 返回 1 如果 {it:s} 包含有效的 Stata {help format_zh:{bf:%}{it:fmt}}，否则返回 0。

{p 4 4 2}
{cmd:st_isnumfmt(}{it:s}{cmd:)} 返回 1 如果 {it:s} 包含有效的 Stata 数值 {cmd:%}{it:fmt}，否则返回 0。

{p 4 4 2}
{cmd:st_isstrfmt(}{it:s}{cmd:)} 返回 1 如果 {it:s} 包含有效的 Stata 字符串 {cmd:%}{it:fmt}，否则返回 0。


{marker conformability}{...}
{title:一致性}

{p 4 4 2}
{cmd:st_isfmt(}{it:s}{cmd:)},
{cmd:st_isnumfmt(}{it:s}{cmd:)},
{cmd:st_isstrfmt(}{it:s}{cmd:)}:
{p_end}
		{it:s}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_isfmt(}{it:s}{cmd:)},
{cmd:st_isnumfmt(}{it:s}{cmd:)}, 和
{cmd:st_isstrfmt(}{it:s}{cmd:)}
如果 {it:s} 是一个视图则会中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数为内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_isfmt.sthlp>}