{smcl}
{* *! version 1.0.0  28dec2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Intro" "help m4 intro"}{...}
{vieweralsosee "[M-5] normal()" "help mf_normal_zh"}{...}
{viewerjumpto "语法" "mf___lnmvnormalden_zh##syntax"}{...}
{viewerjumpto "描述" "mf___lnmvnormalden_zh##description"}{...}
{viewerjumpto "相容性" "mf___lnmvnormalden_zh##conformability"}{...}
{viewerjumpto "源代码" "mf___lnmvnormalden_zh##source"}
{help mf___lnmvnormalden:English Version}
{hline}{...}
{title:标题}

{p2colset 4 31 33 2}{...}
{p2col:{bf:[M-5] __lnmvnormalden()} {hline 2}}多维正态分布的对数密度{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 40 2}
{it:real matrix}{bind:  }
{cmd:__lnmvnormalden(}{it:real matrix M}{cmd:,} {it:real matrix V}{cmd:,} {it:real matrix X}{cmd:)}


{marker description}{...}
{title:描述}

{marker __lnmvnormalden}{...}
{p 4 4 2}
此函数有效地计算来自数据矩阵 {it:X} 的 {it:n} 个 {it:p} 维观察值的 {it:p} 维正态密度的自然对数。{it:X} 的每一行是一个 {it:p} 维随机向量，{it:M} 的每一行是对应的 {it:p} 维均值向量，而 {it:V} 是 {it:p} x {it:p} 的协方差矩阵。如果要对 {it:X} 中的每个随机向量使用相同的均值向量，则 {it:M} 可以是一个 1 x {it:p} 的行向量。

{p 4 4 2}
返回向量的第 i 行包含与 {it:X} 中第 i 行随机向量对应的均值向量在 {it:M} 中的多维正态密度的自然对数。


{marker conformability}{...}
{title:相容性}

    {cmd:__lnmvnormaden(}{it:M}{cmd:,} {it:V}{cmd:,} {it:X}{cmd:)}
                {it:M}:  {it:n x p} 或 {it:1 x p}
		{it:V}:  {it:p x p}
		{it:X}:  {it:n x p}
           {it:result}:  {it:n x} 1


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf___lnmvnormalden.sthlp>}