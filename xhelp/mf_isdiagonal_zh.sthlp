{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] isdiagonal()" "mansection M-5 isdiagonal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] diag()" "help mf_diag_zh"}{...}
{vieweralsosee "[M-5] diagonal()" "help mf_diagonal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_isdiagonal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_isdiagonal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_isdiagonal_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_isdiagonal_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_isdiagonal_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_isdiagonal_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_isdiagonal_zh##source"}
{help mf_isdiagonal:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] isdiagonal()} {hline 2}}判断矩阵是否为对角矩阵
{p_end}
{p2col:}({mansection M-5 isdiagonal():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:isdiagonal(}{it:数值矩阵 A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:isdiagonal(}{it:A}{cmd:)} 如果 {it:A} 只有主对角线以外的元素为零，则返回 1；否则返回 0。
{cmd:isdiagonal()} 可以与实数矩阵或复数矩阵一起使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 isdiagonal()Remarksandexamples:备注和示例}

{pstd}
上述章节不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见 {bf:{help mf_diag_zh:[M-5] diag()}}，以便将矢量或非对角矩阵转化为对角矩阵；
请参见 {bf:{help mf_diagonal_zh:[M-5] diagonal()}}，以提取矩阵的对角线到一个矢量中。


{marker conformability}{...}
{title:兼容性}

    {cmd:isdiagonal(}{it:A}{cmd:)}:
		{it:A}:  {it:r x c}
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:isdiagonal(}{it:A}{cmd:)} 如果 {it:A} 是空的，则返回 1。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view isdiagonal.mata, adopath asis:isdiagonal.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_isdiagonal.sthlp>}