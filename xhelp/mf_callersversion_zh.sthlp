{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] callersversion()" "mansection M-5 callersversion()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] version" "help m2_version_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_callersversion_zh##syntax"}{...}
{viewerjumpto "Description" "mf_callersversion_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_callersversion_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_callersversion_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_callersversion_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_callersversion_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_callersversion_zh##source"}
{help mf_callersversion:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[M-5] callersversion()} {hline 2}}获取调用者的版本号
{p_end}
{p2col:}({mansection M-5 callersversion():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar} 
{cmd:callersversion()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:callersversion()} 返回调用者设置的版本 
（见 {bf:{help m2_version_zh:[M-2] version}}），
或者如果调用者没有设置版本，则返回编译调用者时的 Stata 版本。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 callersversion()备注和示例:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:callersversion()} 是如何使得 {bf:{help m2_version_zh:[M-2] version}} 
正常工作的方式。
假设你写了一个函数 

        {it:real matrix} {cmd:useful(}{it:real matrix A}{cmd:,} {it:real scalar k}{cmd:)}

{p 4 4 2}
并假设如果 {it:A} 是空的，则 {cmd:useful()} 会导致错误。
你在 Stata 12 的时代写了 {cmd:useful()}。对于 Stata 13，你想 
更改 {cmd:useful()} 以便当 {it:A} 为空时返回 {cmd:J(0,0,.)}，但你希望 
对旧版 Stata 12 的调用者和程序保持当前行为。你可以这样做：

	{cmd}real matrix useful(real matrix A, real scalar k)
	{
		...

		if (callersversion()>=13) {
			if (rows(A)==0 | cols(A)==0) return(J(0,0,.))
		}
		...
	}{txt}


{marker conformability}{...}
{title:相容性}

    {cmd:callersversion()}:
	   {it:result}:  1 {it:x} 1

	
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
{center:翻译自Stata官方帮助文档 <mf_callersversion.sthlp>}