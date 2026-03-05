{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] diagonal()" "mansection M-5 diagonal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] blockdiag()" "help mf_blockdiag_zh"}{...}
{vieweralsosee "[M-5] diag()" "help mf_diag_zh"}{...}
{vieweralsosee "[M-5] isdiagonal()" "help mf_isdiagonal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_diagonal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_diagonal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_diagonal_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_diagonal_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_diagonal_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_diagonal_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_diagonal_zh##source"}
{help mf_diagonal:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] diagonal()} {hline 2}}将对角线提取为列向量
{p_end}
{p2col:}({mansection M-5 diagonal():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:numeric colvector}
{cmd:diagonal(}{it:numeric matrix A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:diagonal(}{it:A}{cmd:)} 
提取 {it:A} 的对角线，并将其作为列向量返回。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 diagonal()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:diagonal()}
可用于非平方矩阵。

{p 4 4 2}
不要将 {cmd:diagonal()} 与其功能逆操作 {cmd:diag()} 混淆；见 
{bf:{help mf_diag_zh:[M-5] diag()}}。
{cmd:diagonal()} 将矩阵的对角线提取为向量；
{cmd:diag()} 将向量创建为对角矩阵。


{marker conformability}{...}
{title:兼容性}

    {cmd:diagonal(}{it:A}{cmd:)}:
		{it:A}:  {it:r x c}
	   {it:result}:  min({it:r},{it:c}) {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_diagonal.sthlp>}