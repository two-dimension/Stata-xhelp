{smcl}
{* *! version 1.1.20  14may2018}{...}
{viewerdialog "return/ereturn list" "dialog return_list"}{...}
{vieweralsosee "[P] return" "mansection P return"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] ereturn" "help ereturn_zh"}{...}
{vieweralsosee "[RPT] putexcel" "help putexcel_zh"}{...}
{vieweralsosee "[P] _return" "help _return_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[P] _estimates" "help _estimates_zh"}{...}
{vieweralsosee "[R] Stored results" "help stored_results_zh"}{...}
{viewerjumpto "Syntax" "return_zh##syntax"}{...}
{viewerjumpto "Description" "return_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "return_zh##linkspdf"}{...}
{viewerjumpto "Options" "return_zh##options"}{...}
{viewerjumpto "Remarks" "return_zh##remarks"}{...}
{viewerjumpto "Examples" "return_zh##examples"}
{help return:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[P] return} {hline 2}}返回存储结果{p_end}
{p2col:}({mansection P return:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}返回一般命令的结果，这些结果存储在 r()

{p 8 15 2}{cmdab:ret:urn} {cmdab:li:st} [{cmd:,} {cmd:all}]

{p 8 15 2}{cmdab:ret:urn} {cmd:clear}

{p 8 15 2}{cmdab:ret:urn} {cmdab:sca:lar} {it:name} {cmd:=} {it:{help exp_zh}}

{p 8 15 2}{cmdab:ret:urn} {cmdab:loc:al} {it:name} {cmd:=} {it:{help exp_zh}}

{p 8 15 2}{cmdab:ret:urn} {cmdab:loc:al} {it:name} [{cmd:"}]{it:{help strings_zh:string}}[{cmd:"}]

{p 8 15 2}{cmdab:ret:urn} {cmdab:mat:rix} {it:name} [{cmd:=}] {it:matname}
	[{cmd:,} {cmd:copy}]

{p 8 15 2}{cmdab:ret:urn} {cmd:add}


    返回估计命令的结果，存储在 e()

{p 8 16 2}{cmdab:eret:urn} {cmdab:li:st} [{cmd:,} {cmd:all}]

{p 8 16 2}{cmdab:eret:urn} {cmd:clear}

{p 8 16 2}{cmdab:eret:urn} {cmd:post} [{it:b} [{it:V} [{it:Cns}]]]
[{it:{help return##weight:weight}}]
[{cmd:,} {cmdab:dep:name:(}{it:{help strings_zh:string}}{cmd:)} {cmdab:o:bs:(}{it:#}{cmd:)}
{cmdab:d:of:(}{it:#}{cmd:)} {cmdab:e:sample:(}{varname}{cmd:)}
{opth prop:erties(strings:string)}]

{p 8 16 2}{cmdab:eret:urn} {cmdab:sca:lar} {it:name} {cmd:=} {it:{help exp_zh}}

{p 8 16 2}{cmdab:eret:urn} {cmdab:loc:al} {it:name} {cmd:=} {it:{help exp_zh}}

{p 8 16 2}{cmdab:eret:urn} {cmdab:loc:al} {it:name} [{cmd:"}]{it:{help strings_zh:string}}[{cmd:"}]

{p 8 16 2}{cmdab:eret:urn} {cmdab:mat:rix} {it:name} [{cmd:=}] {it:matname}
	[{cmd:,} {cmd:copy}]

{p 8 16 2}{cmdab:eret:urn} {cmd:repost} [{cmd:b =} {it:b}] [{cmd:V =} {it:V}]
[{cmd:Cns =} {it:Cns}]
[{it:{help return##weight:weight}}]
[{cmd:,} {cmdab:e:sample:(}{varname}{cmd:)}
{opth prop:erties(strings:string)}
{cmdab:ren:ame}]


{pstd}返回解析命令的结果，存储在 s()

{p 8 16 2}{cmdab:sret:urn} {cmdab:li:st}

{p 8 16 2}{cmdab:sret:urn} {cmd:clear}

{p 8 16 2}{cmdab:sret:urn} {cmdab:loc:al} {it:name} {cmd:=} {it:{help exp_zh}}

{p 8 16 2}{cmdab:sret:urn} {cmdab:loc:al} {it:name} [{cmd:"}]{it:{help strings_zh:string}}[{cmd:"}]


{phang}
其中 {it:b}、{it:V} 和 {it:Cns} 是 {it:matname}，即现有矩阵的名称。

{marker weight}{...}
{pstd}
允许使用 {cmd:fweight}、{cmd:aweight}、{cmd:iweight} 和 {cmd:pweight}；参见 {help weight_zh}。


{marker description}{...}
{title:描述}

{pstd}
许多 Stata 命令会存储计算结果，以便可以轻松地访问并替代到后续命令中。此条目总结了如何存储结果的程序员信息。如果您有兴趣使用先前存储的结果，请参见 {help stored_results_zh:[R] 存储结果}。

{pstd}
{cmd:return} 将结果存储在 {cmd:r()} 中。

{pstd}
{cmd:ereturn} 将结果存储在 {cmd:e()} 中。

{pstd}
{cmd:sreturn} 将结果存储在 {cmd:s()} 中。

{pstd}
Stata 还存储系统参数和值，例如 pi，存储在 {cmd:c()} 中。由于这些值可以被引用但不能被赋值，因此 c 类在不同的条目中讨论；请参见 {manhelp creturn P}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P returnRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:all} 用于 {cmd:return list} 或 {cmd:ereturn list}。 {cmd:all} 指定要列出隐藏和历史存储结果以及通常存储的结果。这个选项很少使用。请参见
{mansection P returnRemarksandexamplesUsinghiddenandhistoricalstoredresults:{it:使用隐藏和历史存储结果}}
和
{mansection P returnRemarksandexamplesProgramminghiddenandhistoricalstoredresults:{it:编程隐藏和历史存储结果}}
在 {bf:[P] return} 的 {it:备注和示例} 下获取更多信息。
这些部分是关于 {cmd:return list} 的，但那里说的所有内容同样适用于 {cmd:ereturn list}。

{pmore}
{cmd:all} 不允许与 {cmd:sreturn list} 一起使用，因为 {cmd:s()} 不允许隐藏或历史结果。

{phang}
在使用 {cmd:return matrix} 或 {cmd:ereturn matrix} 时指定 {cmd:copy} 表示矩阵是要被复制的；也就是说，原始矩阵应保持原位。默认情况下，"窃取" 或 "重命名" 已存在的矩阵，这种方式快速且节省内存。

{phang}
{cmd:depname(}{it:{help strings_zh:string}}{cmd:)} 用于 {cmd:ereturn post}。
它提供将在估计输出中出现的因变量的名称。指定的名称不需要是现有变量的名称。

{phang}
{cmd:obs(}{it:#}{cmd:)} 用于 {cmd:ereturn post}。
它指定进行估计时的观察数。该数字存储在 {hi:e(N)} 中，{cmd:obs()} 仅为方便提供。结果与 {cmd:ereturn post} 后跟 {cmd:ereturn scalar N =} {it:#} 的结果没有不同。

{phang}
{cmd:dof(}{it:#}{cmd:)} 用于 {cmd:ereturn post}。
它指定用于 t 和 F 统计数的分母自由度，因此用于计算 p 值水平和置信区间。指定的数字存储在 {hi:e(df_r)} 中，{cmd:dof()} 仅为方便提供。结果与 {cmd:ereturn} {cmd:post} 后跟 {cmd:ereturn} {cmd:scalar} {cmd:df_r} {cmd:=} {it:#} 的结果没有不同。

{phang}
{opth esample(varname)} 用于 {cmd:ereturn} {cmd:post} 和 {cmd:ereturn} {cmd:repost}。
它指定一个 0/1 变量的名称，该变量将成为 {cmd:e(sample)} 函数。 {it:varname} 必须仅包含 0 和 1 的值，其中 1 表示该观察体在估计子样本中。如果 {it:varname} 存储为 {cmd:byte} 变量，{cmd:ereturn} {cmd:post} 和 {cmd:ereturn} {cmd:repost} 将能更快地执行。

{pmore}
{it:varname} 将从数据集中删除，或更确切地说，它被窃取并存储在一个秘密地方。

{phang}
与 {cmd:ereturn} {cmd:post} 或 {cmd:ereturn} {cmd:repost} 指定的 {opth properties:(strings:string)} 设置 {cmd:e(properties)} 宏。默认情况下，如果未指定 {cmd:properties()}，则 {cmd:e(properties)} 设置为 {cmd:b V}。

{phang}
{cmd:rename} 用于 {cmd:b} {cmd:=} {it:b} 语法的 {cmd:ereturn} {cmd:repost}。所有数字估计结果保持不变，但 {it:b} 的标签将替代已发布结果的变量和方程名称。


{marker remarks}{...}
{title:备注}

{pstd}
Stata 命令 -- 以及您和其他人编写的新命令 -- 可以分类如下：

{p 4 14 2}r 类:{space 2}一般命令，如 {help summarize_zh}。结果存储在 {hi:r()} 中，通常必须在执行其他命令之前使用。

{p 14 14 2}{cmd:return list} 列出存储在 {hi:r()} 中的结果。
{cmd:return local}、{cmd:return scalar} 和 {cmd:return matrix} 将宏、标量和矩阵存储在 {cmd:return()} 中。 {cmd:return add} 将当前 {hi:r()} 值添加到 {cmd:return()} 中。 {cmd:return clear} 清除 {cmd:return()}。 {cmd:return()} 是程序的局部。 在 r 类程序结束时，{cmd:return()} 中的项目会被放置到 {hi:r()} 中以便最终返回。

{p 4 14 2}e 类:{space 2}估计命令，如 {help regress_zh}、{help logistic_zh} 等，拟合统计模型。这些估计结果会一直存在，直到拟合下一个模型。结果存储在 {hi:e()} 中。

{p 14 14 2}{cmd:ereturn list} 列出存储在 {hi:e()} 中的结果。
{cmd:ereturn local}、{cmd:ereturn scalar} 和 {cmd:ereturn matrix} 将宏、标量和矩阵存储在 {hi:e()} 中。有关更多详细信息和其他子命令的信息，请参见 {manhelp ereturn P}。

{p 4 14 2}s 类: 程序命令，用于辅助解析。这些命令相对较少见。结果存储在 {hi:s()} 中。

{p 14 14 2}{cmd:sreturn list} 列出存储在 {hi:s()} 中的结果。
{cmd:sreturn local} 将宏存储在 {hi:s()} 中。

{p 4 14 2}n 类: 完全不存储结果的命令，或者更确切地说，不存储“额外”结果，因为它们存储的位置是明确指定的。例如 {help generate_zh} 和 {helpb replace}。

{pstd}
还有一个 c 类，{hi:c()}，包含系统参数和设置的值，以及某些常量，例如 pi 的值；参见 {manhelp creturn P}。程序不能是 c 类。


{marker examples}{...}
{title:示例}

{pstd}以下 r 类命令演示通过 {cmd:return} 命令返回结果：

	{cmd:program mysum, rclass}
		{cmd:syntax varname}
		{cmd:return local varname `varlist'}
		{cmd:tempvar new}
		{cmd:quietly {c -(}}
			{cmd:count if !missing(`varlist')}
			{cmd:return scalar N = r(N)}
			{cmd:gen double `new' = sum(`varlist')}
			{cmd:return scalar sum = `new'[_N]}
			{cmd:return scalar mean = return(sum)/return(N)}
		{cmd:{c )-}}
	{cmd:end}

{pstd}您可以运行此程序，然后列出返回的结果：

	{cmd:. sysuse auto}
	{cmd:. mysum mpg}
	{cmd:. return list}

	标量:
	       r(mean)     =  21.2972972972973
	       r(sum)      =  1576
	       r(N)        =  74

	宏:
	       r(varname)  : "mpg"

{pstd}现在可以直接引用 {hi:r(mean)}、{hi:r(sum)}、{hi:r(N)} 和 {hi:r(varname)}。

	{cmd:. display "变量是 " r(varname) " 均值是 " r(mean)}
	变量是 mpg 均值是 21.297297

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <return.sthlp>}