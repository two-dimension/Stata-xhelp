{smcl}
{* *! version 1.3.3  10may2018}{...}
{vieweralsosee "[P] estat programming" "mansection P estatprogramming"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat" "help estat_zh"}{...}
{viewerjumpto "描述" "estat_programming_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "estat_programming_zh##linkspdf"}{...}
{viewerjumpto "备注" "estat_programming_zh##remarks"}
{help estat_programming:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[P] estat programming} {hline 2}}控制社区贡献命令后的 estat{p_end}
{p2col:}({mansection P estatprogramming:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
估计命令的程序员可以自定义 {cmd:estat} 在其命令之后的工作方式。如果你只想使用标准的 {cmd:estat} 子命令 {cmd:ic}、{cmd:summarize} 和 {cmd:vce}，则无需任何额外操作；见 {manhelp estat R}。Stata 将自动处理这些情况。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P estatprogrammingRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个部分：

{phang2}{help estat_programming##std:标准子命令}{p_end}
{phang2}{help estat_programming##add:向 estat 添加子命令}{p_end}
{phang2}{help estat_programming##override:覆盖子命令的标准行为}


{marker std}{...}
{title:标准子命令}

{pstd}
为了使用 {cmd:estat}，你的估计命令必须被实现为 e-class 程序，并且必须将其名称存储在 {cmd:e(cmd)} 中。

{pstd}
{cmd:estat vce} 要求协方差矩阵存储在 {cmd:e(V)} 中，{cmd:estat summarize} 要求估计样本通过函数 {cmd:e(sample)} 标记。使用 {helpb ereturn post} 并在你的程序中使用 {cmd:esample()} 选项可以满足这两个要求。

{pstd}
最后，{cmd:estat ic} 要求你的程序将最终的对数似然存储在 {cmd:e(ll)} 中，将样本大小存储在 {cmd:e(N)} 中。如果你的程序还存储了零假设（仅常数）模型的对数似然在 {cmd:e(ll_0)} 中，它也会出现在 {cmd:estat ic} 的输出中。


{marker add}{...}
{title:向 estat 添加子命令}

{pstd}
要为特定的估计命令向 {cmd:estat} 添加新功能（子命令），你需要编写一个处理程序，这只是一个 ado 文件命令。通常命名新命令为 {it:cmd}{cmd:_estat}，其中 {it:cmd} 是对应的估计命令的名称。例如，提供 {cmd:regress} 之后特定 {cmd:estat} 特性的处理程序命名为 {cmd:regress_estat}，提供 {cmd:pca} 之后特定特性的处理程序命名为 {cmd:pca_estat}。

{pstd}
接下来，你必须让 {cmd:estat} 知道你的新处理程序，这通过在相应的估计命令中填入 {cmd:e(estat_cmd)} 来完成。例如，在实现 {cmd:pca} 的代码中有这一行：

	{cmd:ereturn local estat_cmd "pca_estat"}

{pstd}
最后，你必须编写 {it:cmd}{cmd:_estat}。{cmd:estat} 的语法是

	{cmd:estat} {it:subcmd} ...

{pstd}
调用 {cmd:estat} 命令时，它做的第一件事是调用 {cmd:`e(estat_cmd)'}（如果 {cmd:`e(estat_cmd)'} 存在）。通过这种方式，即使在标准情况下，处理程序也可以执行一些特殊操作（如果必要的话）。在此过程中，理解处理程序仅接收 {cmd:estat} 收到的内容，这正是用户输入的内容。处理程序的基本结构是
                                                                                
	{hline 11} begin {it:cmd}{cmd:_estat.ado} {hline -2}

	{cmd}*! version 1.0.0  {ccl current_date}
	program {txt}{it:cmd}{cmd}{cmd:_estat}, rclass
		version {ccl stata_version}

		if "`e(cmd)'" != "{txt}{it:cmd}{cmd}" {
			error 301
		}

		gettoken subcmd rest : 0, parse(" ,")
                if "`subcmd'"=="{txt}{it:first_special_subcmd}{cmd}" {
                        {txt}{it:First_special_subcmd}{cmd} `rest'
                }
                else if "`subcmd'"=="{txt}{it:second_special_subcmd}{cmd}" {
                        {txt}{it:Second_special_subcmd}{cmd} `rest'
                }
                ...
                else {
                        estat_default `0'
                }
                return add
	end

	program {txt}{it:First_special_subcmd}{cmd}, rclass
		syntax ...
		...
	end

	program {txt}{it:Second_special_subcmd}{cmd}, rclass
		syntax ...
		...
	end{reset}

	{hline 13} end {it:cmd}{cmd:_estat.ado} {hline -2}

{pstd}
以上概述的基本思想很简单：

{phang}
1.  你检查 {cmd:e(cmd)} 是否与 {it:cmd} 匹配。

{phang}
2.  你隔离用户输入的 {it:subcmd}，并查看它是否是你希望处理的特殊情况之一。

{phang}
3.  如果 {it:subcmd} 是特殊情况，你调用你编写的代码来处理它。

{phang}
4.  如果 {it:subcmd} 不是特殊情况，你让 Stata 的 {cmd:estat_default} 来处理。

{pstd}
当你检查特殊情况时，这些特殊情况可以是你希望添加的新 {it:subcmds}，或者是你希望覆盖其默认行为的标准 {it:subcmds}。


{marker override}{...}
{title:覆盖子命令的标准行为}

{pstd}
有时，你可能希望覆盖通常由 {cmd:estat_default} 处理的子命令的行为。通过提供一个本地处理程序可以实现这一点。例如，{cmd:summarize} 在 {cmd:pca} 之后的标准调用方式并不适用——{cmd:estat summarize} 从 {cmd:e(b)} 中提取要总结的变量列表。这在 {cmd:pca} 之后并不有效。这里必须从相关的相关或协方差矩阵 {cmd:e(C)} 的列名称中提取变量列表。此变量列表将作为 {cmd:varlist()} 选项的参数传递给 {cmd:estat summarize}（或更直接地传递给 {cmd:estat_summ}）。

	{cmd}program Summarize
                syntax [, *]
		tempname C
		matrix `C' = e(C)
		estat_summ, varlist(`:colnames `C'') `options'
	end{reset}

{pstd}
你通过在 {it:cmd}{cmd:_estat} 中插入额外的开关来添加本地处理程序，以确保 {cmd:summarize} 子命令不由默认处理程序 {cmd:estat_default} 处理。作为细节，我们必须确保最小缩写是 {cmdab:su:mmarize}。

	{hline 11} begin {cmd:pca_estat.ado} {hline -2}

	{cmd}program pca_estat, rclass
	version {ccl stata_version}

	gettoken subcmd rest : 0 , parse(", ")
	local lsubcmd= length("`subcmd'")

	if `"`subcmd'"' == substr("summarize", 1, max(2, `lsubcmd')) {c -(}
		Summarize `rest'
	{c )-}
	else {c -(}
		estat_default `0'
	{c )-}

	return add
	end

	program Summarize
		syntax ...
		...
	end{txt}
	{hline 13} end {cmd:pca_estat.ado} {hline -2}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_programming.sthlp>}