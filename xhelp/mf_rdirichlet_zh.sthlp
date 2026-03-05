{smcl}
{* *! version 1.0.2  27dec2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{viewerjumpto "Syntax" "mf_rdirichlet_zh##syntax"}{...}
{viewerjumpto "Description" "mf_rdirichlet_zh##description"}{...}
{viewerjumpto "Conformability" "mf_rdirichlet_zh##conformability"}{...}
{viewerjumpto "Source code" "mf_rdirichlet_zh##source"}
{help mf_rdirichlet:English Version}
{hline}{...}
{title:标题}

{p2colset 5 27 29 2}{...}
{p2col:{bf:[M-5] rdirichlet()} {hline 2}}Dirichlet 随机变数
{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 31 2}
{it:实数 矩阵}{bind:  }
{cmd:rdirichlet(}{it:实数 标量 r}{cmd:,} {it:实数 向量 A}{cmd:)}


{marker description}{...}
{title:描述}

{marker rdirichlet}{...}
{p 4 4 2}
{cmd:rdirichlet(}{it:r}{cmd:,} {it:A}{cmd:)} 返回一个 {it:r x k} 实数矩阵
包含具有向量 {it:A} 的 {it:k} 形状参数的 Dirichlet 随机变数。 {it:A} 可以是行向量或列向量。 对于 {it:A} 的每个元素 {it:a}，满足 1e-3 {ul:<} {it:a} {ul:<} 1e+8。 返回矩阵的每一行是一个 Dirichlet({it:A}) 随机变数向量。


{marker conformability}{...}
{title:相容性}

    {cmd:rdirichlet(}{it:r}{cmd:,} {it:A}{cmd:)}:
                {it:r}:  1 {it:x} 1
                {it:A}:  {it:k x} 1 或 1 {it:x k}
           {it:结果}:  {it:r x k}


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_rdirichlet.sthlp>}