{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] st_tempname()" "mansection M-5 st_tempname()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_addvar()" "help mf_st_addvar_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_tempname_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_tempname_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_tempname_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_tempname_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_tempname_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_tempname_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_tempname_zh##source"}
{help mf_st_tempname:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] st_tempname()} {hline 2}}临时 Stata 名称
{p_end}
{p2col:}({mansection M-5 st_tempname():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:st_tempname()}

{p 8 12 2}
{it:string rowvector}
{cmd:st_tempname(}{it:real scalar n}{cmd:)}


{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:st_tempfilename()}

{p 8 12 2}
{it:string rowvector}
{cmd:st_tempfilename(}{it:real scalar n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_tempname()} 返回一个 Stata 临时名称，与 Stata 的 {cmd:tempvar} 和 {cmd:tempname} 命令返回的相同；见 {bf:{help macro_zh:[P] 宏}}。

{p 4 4 2}
{cmd:st_tempname(}{it:n}{cmd:)} 返回 {it:n} 个临时 Stata 名称，{it:n}>=0。

{p 4 4 2}
{cmd:st_tempfilename()} 返回一个 Stata 临时文件名，与 Stata 的 {cmd:tempfile} 命令返回的相同；见 {bf:{help macro_zh:[P] 宏}}。

{p 4 4 2}
{cmd:st_tempfilename(}{it:n}{cmd:)} 返回 {it:n} 个临时文件名，{it:n}>=0。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_tempname()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下 presented：

	{help mf_st_tempname##remarks1:创建临时对象}
	{help mf_st_tempname##remarks2:何时会消除临时对象}


{marker remarks1}{...}
{title:创建临时对象}

{p 4 4 2}
{cmd:st_tempname()} 可用于命名 Stata 的变量、矩阵和标量。虽然在 Stata 中区分 {cmd:tempvar} 和 {cmd:tempname}，但其实并没有真正的区别，因此 {cmd:st_tempname()} 在 Mata 中同时处理这两者。例如，可以通过编码

	{cmd:idx = st_addvar("double", st_tempname())}

{p 4 4 2}
见 {bf:{help mf_st_addvar_zh:[M-5] st_addvar()}}。

{p 4 4 2}
通过编码可以创建一个临时文件

	{cmd:fh = fopen(st_tempfilename(), "w")}

{p 4 4 2}
见 {bf:{help mf_fopen_zh:[M-5] fopen()}}。


{marker remarks2}{...}
{title:何时会消除临时对象}

{p 4 4 2}
临时对象在 Mata 函数结束时不会消失，也不会在 Mata 本身结束时消失。它们会在调用 Mata 的 ado-file（或 do-file）终止时被删除。

{p 4 4 2}
先忘记 Mata。Stata 当创建它们的程序结束时会消除临时变量和文件。
同样的规则适用于 Mata：Stata 会消除它们，而不是 Mata，这意味着调用 Mata 的 ado-file 或 do-file 会在结束时消除它们。临时变量和文件在 Mata 函数结束时不会被 Mata 消除。因此，Mata 函数可以为它们的 ado-file 调用者创建临时对象，如果这样做会带来好处。


{marker conformability}{...}
{title:相容性}

    {cmd:st_tempname()}, {cmd:st_tempfilename()}:
	   {it:result}:  1 {it:x} 1

    {cmd:st_tempname(}{it:n}{cmd:)}, {cmd:st_tempfilename(}{it:n}{cmd:)}:
		{it:n}:  1 {it:x} 1
	   {it:result}:  1 {it:x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_tempname(}{it:n}{cmd:)} 
和 
{cmd:st_tempfilename(}{it:n}{cmd:)} 
如果 {it:n}<0 会中止并返回错误，且如果 {it:n}=0 则返回 {cmd:J(1,0,"")}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_tempname.sthlp>}