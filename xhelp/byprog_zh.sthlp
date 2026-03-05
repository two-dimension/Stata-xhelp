{smcl}
{* *! version 1.2.4  19oct2017}{...}
{vieweralsosee "[P] byable" "mansection P byable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] by" "help by_zh"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{vieweralsosee "[P] sortpreserve" "help sortpreserve_zh"}{...}
{viewerjumpto "Syntax" "byprog_zh##syntax"}{...}
{viewerjumpto "Description" "byprog_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "byprog_zh##linkspdf"}{...}
{viewerjumpto "Option" "byprog_zh##option"}{...}
{viewerjumpto "Remarks" "byprog_zh##remarks"}{...}
{viewerjumpto "Examples" "byprog_zh##examples"}
{help byprog:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[P] byable} {hline 2}}使程序可使用by{p_end}
{p2col:}({mansection P byable:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:pr:ogram} [{cmdab:de:fine}] {it:program_name} [{cmd:,} {it:...}
{cmdab:by:able:(}{cmdab:r:ecall}[{cmd:,} {cmdab:noh:eader}] |
{cmdab:o:necall}{cmd:)} {it:...}]


{marker description}{...}
{title:描述}

{pstd}
大多数 Stata 命令允许使用 {cmd:by} 前缀；请参见 {manhelp by D}。
例如，{cmd:regress} 命令的语法图可以表示为

{phang2}[{cmd:by} {it:varlist}{cmd::}]  {cmdab:reg:ress} {it:...}

{pstd}
本条目描述如何编写程序（ado 文件），以便它们允许使用 Stata 的 {cmd:by} {it:varlist}{cmd::} 前缀；请参见 {help by_zh:[D] by}。如果您不采取特殊措施并且编写程序 {cmd:myprog}，则 {cmd:by} {it:varlist}{cmd::} 将无法与其一起使用：

        {cmd:. by foreign:  myprog}
        {err:myprog 不能与 by 结合使用}
        {search r(190):r(190);}

{pstd}
通过阅读本条目，您将学习如何修改您的程序，以使 {cmd:by} 可以与之配合使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P byableRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:byable(}{cmd:recall}[{cmd:, noheader}] | {cmd:onecall}{cmd:)} 指定程序允许使用 {cmd:by} 前缀，并指定程序的编码风格。

{pmore}
支持两种风格，称为 {cmd:byable(recall)} 和 {cmd:byable(onecall)}。{cmd:byable(recall)} 程序通常比 {cmd:byable(onecall)} 程序更容易编写 -- 但并非总是如此，而 {cmd:byable(onecall)} 程序通常更快 -- 但也并非总是如此。

{pmore}
{cmd:byable(recall)} 程序会每个 by 组重复执行。{cmd:byable(onecall)} 程序只执行一次，对于指定的 {cmd:by} 前缀，它的处理责任在于程序本身。

{pmore}
{cmd:byable(recall, noheader)} 程序与 {cmd:byable(recall)} 程序的区别在于 {cmd:by} 在每次调用程序之前不会显示 by 组的标题。

{pmore}
{cmd:byable(onecall)} 程序需自行处理 {cmd:by} {it:...}{cmd::} 前缀的所有事宜，包括如果希望显示标题。有关详细信息，请参见 {mansection P byableRemarksandexamples:{it:备注和示例}} 在 {hi:[P] byable} 中。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {mansection P byableRemarksandexamples:{it:备注和示例}} 在 {bf:[P] byable} 中获取更多信息。


{marker examples}{...}
{title:示例 1:}

	{cmd:program myprog1, byable(recall)}
		{cmd:syntax [varlist] [if] [in]}
		{cmd:marksample touse}
		{cmd:summarize `varlist' if `touse'}
	{cmd:end}

{pstd}
在上述程序中，将其编码为

	{cmd:program myprog1, byable(recall)}
		{cmd:syntax [varlist] [if] [in]}
		{cmd:summarize `varlist' `if' `in'}
	{cmd:end}

{pstd}
是错误的，因为在这种情况下，当用户指定 {cmd:by} {it:...}{cmd::} 前缀时，样本将不会限制在适当的 by 组内。然而，{cmd:marksample} 知道程序正在被 by，因此它会将 {cmd:`touse'} 变量设置为反映用户指定的任何限制和 by 组限制。

{pstd}
{cmd:syntax} 也了解 {cmd:by}，当用户同时指定 {cmd:by} {it:...}{cmd::} 和 {cmd:in} {it:range} 时，它会自动发出错误消息，尽管在不与 {cmd:by} 结合时允许使用 {cmd:in} {it:range}。


{title:示例 2:}

	{cmd:program myprog2, byable(recall) sortpreserve}
		{cmd:syntax varname [if] [in]}
		{cmd:marksample touse}
		{cmd:sort `touse' `varlist'}
		{it:...}
	{cmd:end}

{pstd}
此程序指定 {cmd:sortpreserve}，因为它更改了数据的排序顺序以进行计算。


{title:示例 3:}

	{cmd:program myprog3, byable(onecall) sortpreserve}
		{cmd:syntax newvarname =exp [if] [in]}
		{cmd:marksample touse, novarlist}
		{cmd:tempvar rhs}
		{cmd:quietly {c -(}}
			{cmd:gen double `rhs' `exp' if `touse'}
			{cmd:sort `touse' `_byvars' `rhs'}
			{cmd:by `touse' `_byvars':  gen `type' `varlist' = /*}
				 {cmd:*/ `rhs' - `rhs'[_n-1] if `touse'}
		{cmd:{c )-}}
	{cmd:end}

{pstd}
此程序指定 {cmd:sortpreserve}，因为它更改了数据的排序顺序。

{pstd}
此外，此程序是 {cmd:byable(onecall)}，如果我们将 {cmd:byable(onecall)} 更改为 {cmd:byable(recall)}，我们将破坏程序。此程序创建了一个新变量，而变量只能被 {cmd:generate} 一次；之后我们必须使用 {cmd:replace}.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <byprog.sthlp>}