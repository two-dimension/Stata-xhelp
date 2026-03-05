{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] epsilon()" "mansection M-5 epsilon()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] edittozero()" "help mf_edittozero_zh"}{...}
{vieweralsosee "[M-5] mindouble()" "help mf_mindouble_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_epsilon_zh##syntax"}{...}
{viewerjumpto "Description" "mf_epsilon_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_epsilon_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_epsilon_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_epsilon_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_epsilon_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_epsilon_zh##source"}
{help mf_epsilon:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] epsilon()} {hline 2}}单位舍入误差（机器精度）
{p_end}
{p2col:}({mansection M-5 epsilon():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar}
{cmd:epsilon(}{it:real scalar x}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:epsilon(}{it:x}{cmd:)} 返回大小为 {cmd:abs(}{it:x}{cmd:)} 的单位舍入误差。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 epsilon()Remarksandexamples:备注和示例}

{pstd}
上述部分没有包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在所有运行 Stata 和 Mata 的计算机上 - 这些计算机遵循 IEEE 标准 -
{cmd:epsilon(1)} 为 1.0X-34，或大约 2.22045e-16。
这是一个实数与 1 之间能够差异的最小值。

{p 4 4 2}
{cmd:epsilon(}{it:x}{cmd:)} 为 {cmd:abs(}{it:x}{cmd:)}{cmd:*epsilon(1)}。
这是实数与 {it:x} 之间能够差异的最小值的近似值。此近似在 2 的整数幂处是精确的。


{marker conformability}{...}
{title:相容性}

    {cmd:epsilon(}{it:x}{cmd:)}:
		{it:x}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:epsilon(}{it:x}{cmd:)}
如果 {it:x} 为缺失值，则返回 {cmd:.}.


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_epsilon.sthlp>}