{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] Re()" "mansection M-5 Re()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] C()" "help mf_c_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_re_zh##syntax"}{...}
{viewerjumpto "Description" "mf_re_zh##description"}{...}
{viewerjumpto "Conformability" "mf_re_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_re_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_re_zh##source"}
{help mf_re:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[M-5] Re()} {hline 2}}提取实部或虚部
{p_end}
{p2col:}({mansection M-5 Re():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}{bind:  }
{cmd:Re(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:实数矩阵}{bind:  }
{cmd:Im(}{it:数值矩阵 Z}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:Re(}{it:Z}{cmd:)}
返回一个包含 {it:Z} 的实部的实数矩阵。 {it:Z} 可以是
实数或复数。

{p 4 4 2}
{cmd:Im(}{it:Z}{cmd:)}
返回一个包含 {it:Z} 的虚部的实数矩阵。 {it:Z} 可以是
实数或复数。如果 {it:Z} 是实数，{cmd:Im(}{it:Z}{cmd:)} 返回
一个零矩阵。


{marker conformability}{...}
{title:兼容性}

    {cmd:Re(}{it:Z}{cmd:)}, {cmd:Im(}{it:Z}{cmd:)}:
		{it:Z}:  {it:r x c}
	   {it:结果}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:Re(}{it:Z}{cmd:)}, 如果 {it:Z} 是实数，则字面返回 {it:Z} 而不是 {it:Z} 的副本。这使得对
实参数应用 {cmd:Re()} 的执行瞬时完成。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_re.sthlp>}