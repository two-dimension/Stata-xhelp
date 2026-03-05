{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] designmatrix()" "mansection M-5 designmatrix()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "Syntax" "mf_designmatrix_zh##syntax"}{...}
{viewerjumpto "Description" "mf_designmatrix_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_designmatrix_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_designmatrix_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_designmatrix_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_designmatrix_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_designmatrix_zh##source"}
{help mf_designmatrix:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] designmatrix()} {hline 2}}设计矩阵
{p_end}
{p2col:}({mansection M-5 designmatrix():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}
{cmd:designmatrix(}{it:实数列向量 v}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:designmatrix(}{it:v}{cmd:)} 返回一个 {cmd:rows(}{it:v}{cmd:)}
{it:x}
{cmd:colmax(}{it:v}{cmd:)} 矩阵，其中指定列为1，其他位置为0。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 designmatrix()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:designmatrix((1\2\3))} 等于 {cmd:I(3)}，即 3 {it:x} 3 单位矩阵。


{marker conformability}{...}
{title:符合性}

    {cmd:designmatrix(}{it:v}{cmd:)}:
		{it:v}:  {it:r} {it:x} 1
	   {it:结果}:  {it:r} {it:x} {cmd:colmax(}{it:v}{cmd:)} (0 {it:x} 0 如果 {it:r}=0)


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:designmatrix(}{it:v}{cmd:)} 如果 {it:v} 的任何元素小于1，则中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view designmatrix.mata, adopath asis:designmatrix.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_designmatrix.sthlp>}