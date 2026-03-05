{smcl}
{* *! version 1.0.4  19oct2017}{...}
{vieweralsosee "[P] sortpreserve" "mansection P sortpreserve"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] byable" "help byprog_zh"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{viewerjumpto "语法" "sortpreserve_zh##syntax"}{...}
{viewerjumpto "描述" "sortpreserve_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sortpreserve_zh##linkspdf"}{...}
{viewerjumpto "选项" "sortpreserve_zh##option"}{...}
{viewerjumpto "备注" "sortpreserve_zh##remarks"}{...}
{viewerjumpto "示例" "sortpreserve_zh##examples"}
{help sortpreserve:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[P] sortpreserve} {hline 2}}在程序中排序{p_end}
{p2col:}({mansection P sortpreserve:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:pr:ogram} [{cmdab:de:fine}] {it:program_name} [{cmd:,} {it:...}
{cmdab:sort:preserve} {it:...} ]


{marker description}{...}
{title:描述}

{pstd}
此条目讨论在程序中使用 {cmd:sort} (见 {help sort_zh:[D] sort})。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P sortpreserveRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:sortpreserve} 指定程序在执行过程中将重新排序数据，因此 Stata 应采取措施
以保存数据的顺序，以便后续能够恢复该顺序。

{pmore}
实际上，{cmd:sortpreserve} 独立于程序是否为 {cmd:byable()}，
但 {cmd:byable()} 程序通常会指定此选项。

{pmore}
假设您在编写程序 {cmd:myprog}，并且在执行计算时需要对数据进行排序。
用户体验到的是非常突兀的情况，

{phang3}{cmd:. by pid:  myprog} {it:...}

{phang3}{cmd:. by pid:  sum newvar}{p_end}
	    {err:未排序}
	    {search r(5):r(5);}

{pmore}
指定 {cmd:sortpreserve} 将防止这种情况，并仍然允许 {cmd:myprog}
自由排序数据。需要排序数据的 {cmd:byable()} 程序应指定 {cmd:sortpreserve}。
如果您的程序不改变数据的排序顺序，则无需指定 {cmd:sortpreserve}，
在这种情况下，如果不指定 {cmd:sortpreserve} 会稍微好一些。

{pmore}
{cmd:sortpreserve} 花费时间，尽管不如您想象的那么多。
{cmd:sortpreserve} 在程序结束时实际上不需要重新排序数据 — 一项 O(n ln n) 操作 —
它能够安排事情，以便在 O(n) 时间内重新恢复数据的原始顺序，
而且 {cmd:sortpreserve} 在这方面实际上非常快速。尽管如此，如果数据从未失去顺序，
则没有理由浪费时间。

{pmore}
关于排序顺序，当您的 {cmd:byable()} 程序第一次被调用时，它将在 {cmd:_byvars} 上排序，
但在后续调用中（在 {cmd:byable(recall)} 程序的情况下），排序顺序将与
您的程序所保持的一致，即使您指定 {cmd:sortpreserve}。
{cmd:sortpreserve} 在您的程序最后一次被调用后恢复原始顺序。


{marker remarks}{...}
{title:备注}

{pstd}
有关更多信息，请参见 {mansection P sortpreserveRemarksandexamples:{it:备注和示例}} 在
{bf:[P] sortpreserve} 中。


{marker examples}{...}
{title:示例 1:}

	{cmd:program myprog1, byable(recall)}
		{cmd:syntax [varlist] [if] [in]}
		{cmd:marksample touse}
		{cmd:summarize `varlist' if `touse'}
	{cmd:end}

{pstd}
在上述程序中，错误的代码应该是

	{cmd:program myprog1, byable(recall)}
		{cmd:syntax [varlist] [if] [in]}
		{cmd:summarize `varlist' `if' `in'}
	{cmd:end}

{pstd}
因为在这种情况下，样本不会在用户指定的 {cmd:by} {it:...}{cmd::} 前缀时限制在适当的 by 组。
然而，{cmd:marksample} 知道程序是否被 by，并因此将 {cmd:`touse'} 变量设置为反映用户指定的任何限制
和 by 组限制。

{pstd}
{cmd:syntax} 也知道 {cmd:by}，并且当用户同时指定 {cmd:by} {it:...}{cmd::} 和 {cmd:in} {it:range} 时将自动发出错误消息，
尽管在不与 {cmd:by} 结合时，{cmd:in} {it:range} 是被允许的。


{title:示例 2:}

	{cmd:program myprog2, byable(recall) sortpreserve}
		{cmd:syntax varname [if] [in]}
		{cmd:marksample touse}
		{cmd:sort `touse' `varlist'}
		{it:...}
	{cmd:end}

{pstd}
此程序指定了 {cmd:sortpreserve}，因为它在进行计算时改变了数据的排序顺序。


{title:示例 3:}

	{cmd:program myprog3, byable(onecall) sortpreserve}
		{cmd:syntax newvar =exp [if] [in]}
		{cmd:marksample touse}
		{cmd:tempvar rhs}
		{cmd:quietly {c -(}}
			{cmd:gen double `rhs' `exp' if `touse'}
			{cmd:sort `touse' `_byvars' `rhs'}
			{cmd:by `touse' `_byvars':  gen `type' `varlist' = /*}
				 {cmd:*/ `rhs' - `rhs'[_n-1] if `touse'}
		{cmd:{c )-}}
	{cmd:end}

{pstd}
此程序指定了 {cmd:sortpreserve}，因为它改变了数据的排序顺序。

{pstd}
此外，此程序是 {cmd:byable(onecall)}，如果我们将 {cmd:byable(onecall)} 更改为 {cmd:byable(recall)}，
我们将破坏程序。此程序创建一个新变量，而变量只能被 {cmd:generate} 一次；
之后我们必须使用 {cmd:replace}.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sortpreserve.sthlp>}