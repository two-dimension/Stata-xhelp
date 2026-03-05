{smcl}
{* *! version 1.1.5  14may2018}{...}
{vieweralsosee "[M-5] st_rclear()" "mansection M-5 st_rclear()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_global()" "help mf_st_global_zh"}{...}
{vieweralsosee "[M-5] st_matrix()" "help mf_st_matrix_zh"}{...}
{vieweralsosee "[M-5] st_numscalar()" "help mf_st_numscalar_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_rclear_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_rclear_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_rclear_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_rclear_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_rclear_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_rclear_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_rclear_zh##source"}
{help mf_st_rclear:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] st_rclear()} {hline 2}}清除 r()、e() 或 s()
{p_end}
{p2col:}({mansection M-5 st_rclear():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:st_rclear()}

{p 8 12 2}
{it:void}
{cmd:st_eclear()}

{p 8 12 2}
{it:void}
{cmd:st_sclear()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_rclear()} 清除 Stata 的 {cmd:r()} 存储结果。

{p 4 4 2}
{cmd:st_eclear()} 清除 Stata 的 {cmd:e()} 存储结果。

{p 4 4 2}
{cmd:st_sclear()} 清除 Stata 的 {cmd:s()} 存储结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_rclear()Remarksandexamples:备注与示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在 {cmd:r()}、{cmd:e()} 或 {cmd:s()} 中返回结果是将 Mata 中计算的结果传回 Stata 的一种方式；请参见 {bf:{help m1_ado_zh:[M-1] Ado}}。
有关 {cmd:e()}、{cmd:r()} 和 {cmd:s()} 的描述，请参见 {bf:{help stored_results_zh:[R] 存储结果}}。

{p 4 4 2}
使用 {cmd:st_rclear()}、{cmd:st_eclear()} 或 {cmd:st_sclear()} 清除结果，然后使用 
{cmd:st_global()} 定义宏， 
{cmd:st_numscalar()} 定义标量， 
以及 {cmd:st_matrix()} 在 {cmd:r()}、{cmd:e()} 或 {cmd:s()} 中定义 Stata 矩阵。例如，

	{cmd:st_rclear()}
	{cmd:st_global("r(name)", "tab")}{...}
{col 50}<- 见 {bf:{help mf_st_global_zh:[M-5] st_global()}}
	{cmd:st_numscalar("r(N)", n1+n2)}{...}
{col 50}<- 见 {bf:{help mf_st_numscalar_zh:[M-5] st_numscalar()}}
	{cmd:st_matrix("r(table)", X+Y)}{...}
{col 50}<- 见 {bf:{help mf_st_matrix_zh:[M-5] st_matrix()}}

{p 4 4 2}
在保存之前并不需要清除，但除非您有意将结果添加到以前存储的结果中，否则这被视为良好风格。

{p 4 4 2}
如果存储结果已存在，{cmd:st_global()}、{cmd:st_numscalar()} 和 {cmd:st_matrix()} 可以用来重新定义它，甚至可以重新定义为不同类型。例如，在同一代码中稍后可能出现：

	{cmd:if (}...{cmd:) {c -(}}
		{cmd:st_matrix("r(name)", X)}
	{cmd:{c )-}}

{p 4 4 2}
存储的结果 {cmd:r(name)} 之前被定义为包含 {cmd:"tab"} 的宏，即使如此，现在仍然可以重新定义为一个矩阵。

{p 4 4 2}
如果您想消除特定的存储结果，请使用 {cmd:st_global()} 将其内容更改为 {cmd:""}：

	{cmd:st_global("r(name)", "")}

{p 4 4 2}
无论存储结果的类型如何，请执行此操作。在这里我们使用 {cmd:st_global()} 清除存储结果 {cmd:r(name)}，该结果可能是一个宏，也可能是一个矩阵。


{marker conformability}{...}
{title:适应性}

{p 4 4 2}
{cmd:st_rclear()}、 
{cmd:st_eclear()} 和
{cmd:st_sclear()}
不接受任何参数，并返回空值。


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_rclear()}、 
{cmd:st_eclear()} 和
{cmd:st_sclear()}
不会失败。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_rclear.sthlp>}