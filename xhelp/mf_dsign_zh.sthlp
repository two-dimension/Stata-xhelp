{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] dsign()" "mansection M-5 dsign()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] sign()" "help mf_sign_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{viewerjumpto "Syntax" "mf_dsign_zh##syntax"}{...}
{viewerjumpto "Description" "mf_dsign_zh##description"}{...}
{viewerjumpto "Conformability" "mf_dsign_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_dsign_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_dsign_zh##source"}
{help mf_dsign:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] dsign()} {hline 2}}类似 FORTRAN 的 DSIGN() 函数
{p_end}
{p2col:}({mansection M-5 dsign():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:dsign(}{it:实数标量 a}{cmd:,}
{it:实数标量 b}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:dsign(}{it:a}{cmd:,} {it:b}{cmd:)} 返回 {it:a} 的符号为
{it:b}，当 {it:b}>=0 时定义为 |{it:a}|，否则为 -|{it:a}|。

{p 4 4 2}
这个函数在翻译 FORTRAN 程序时特别有用。

{p 4 4 2}
以下内联构造

	{cmd:(}{it:b}{cmd:>=0 ? abs(}{it:a}{cmd:) : -abs(}{it:a}{cmd:))}

{p 4 4 2}
更为清晰。此外，要仔细区分 {cmd:dsign()} 
的返回值（等同于上述构造）与 
{cmd:signum(}{it:b}{cmd:)}*{cmd:abs(}{it:a}{cmd:)}，后者几乎等同但当 {it:b} 为 0 时返回 0，而不是 
{cmd:abs(}{it:a}{cmd:)}。 （提示：{cmd:dsign()} 不是我们最喜欢的函数之一。）

{marker conformability}{...}
{title:兼容性}

    {cmd:dsign(}{it:a}{cmd:,} {it:b}{cmd:)}:
		{it:a}:  1 {it:x} 1
		{it:b}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:dsign(.,} {it:b}{cmd:)} 返回 {cmd:.} 对于所有的 {it:b}。

{p 4 4 2}
{cmd:dsign(}{it:a}{cmd:, .)} 返回 abs({it:a}) 对于所有的 {it:a}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view dsign.mata, adopath asis:dsign.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_dsign.sthlp>}