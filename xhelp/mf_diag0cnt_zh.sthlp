{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] diag0cnt()" "mansection M-5 diag0cnt()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] invsym()" "help mf_invsym_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_diag0cnt_zh##syntax"}{...}
{viewerjumpto "Description" "mf_diag0cnt_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_diag0cnt_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_diag0cnt_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_diag0cnt_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_diag0cnt_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_diag0cnt_zh##source"}
{help mf_diag0cnt:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] diag0cnt()} {hline 2}}计算对角线上的零元素数量
{p_end}
{p2col:}({mansection M-5 diag0cnt():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:diag0cnt(}{it:实数矩阵 X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:diag0cnt(}{it:X}{cmd:)} 返回矩阵 {it:X} 的主对角线元素中为0的元素数量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 diag0cnt()Remarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
    {cmd:diag0cnt()} 通常在 {help mf_invsym_zh:invsym()} 之后使用，
    用于计算由于共线性而被丢弃的列的数量。


{marker conformability}{...}
{title:兼容性}

    {cmd:diag0cnt(}{it:X}{cmd:)}:
	     {it:X}:  {it:r x c}
	{it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:diag0cnt(}{it:X}{cmd:)} 如果 {it:X} 是空的，返回0。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view diag0cnt.mata, adopath asis:diag0cnt.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_diag0cnt.sthlp>}