{smcl}
{* *! version 1.4.3  10may2018}{...}
{vieweralsosee "[P] include" "mansection P include"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] do" "help do_zh"}{...}
{vieweralsosee "[R] doedit" "help doedit_zh"}{...}
{viewerjumpto "语法" "include_zh##syntax"}{...}
{viewerjumpto "描述" "include_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "include_zh##linkspdf"}{...}
{viewerjumpto "选项" "include_zh##option"}{...}
{viewerjumpto "备注" "include_zh##remarks"}
{help include:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] include} {hline 2}}从文件中包含命令
{p_end}
{p2col:}({mansection P include:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}
{cmd:include}
{it:{help filename_zh}} [{cmd:,} {opt ado:path}]

{pstd}
如果 {it:filename} 没有指定扩展名，默认为 {cmd:.do}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:include} 是 {cmd:do} 和 {cmd:run} 的一种变体，指示 Stata 执行指定文件中存储的命令，就好像这些命令是从键盘输入的一样。{cmd:include} 适用于高级编程，以便在多个 do 文件之间共享通用定义。{cmd:include} 也可以在 Mata 中使用，以创建一个共享概念的例程库。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P includeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt adopath} 表示在默认位置未找到 {it:{help filename_zh}} 时，检索 {help adopath:Stata 的系统目录}。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help include##remarks1:与 do 文件一起使用}
	{help include##remarks2:与 Mata 一起使用}
	{help include##remarks3:警告}


{marker remarks1}{...}
{title:与 do 文件一起使用}

{pstd}
{cmd:include} 可用于高级编程场合，在这些场合中，您希望在多个 do 文件之间共享通用定义。{cmd:include} 与 {help do_zh} 和 {cmd:run} 的不同之处在于，执行文件时创建的任何局部宏（更改的设置等）不会在文件执行结束时被丢弃或重置。相反，结果就像 {it:filename} 中的命令出现在包括 {it:filename} 的会话或文件中。

{pstd}
假设您有 do 文件 {cmd:step1.do}、{cmd:step2.do} 和 {cmd:step3.do}，它们执行数据管理任务。您希望这些 do 文件包含局部宏 {cmd:`inname'} 和 {cmd:`outname'} 的通用定义，分别是要读取和创建的文件名。一种方法是

	{hline 30} 开始 {cmd:step1.do} {hline 4}
	...
	{cmd:include common.doh}
	...
	{hline 30} 结束 {cmd:step1.do} {hline 6}


	{hline 30} 开始 {cmd:step2.do} {hline 4}
	...
	{cmd:include common.doh}
	...
	{hline 30} 结束 {cmd:step2.do} {hline 6}


	{hline 30} 开始 {cmd:step3.do} {hline 4}
	...
	{cmd:include common.doh}
	...
	{hline 30} 结束 {cmd:step3.do} {hline 6}


	{hline 28} 开始 {cmd:common.doh} {hline 4}
	{cmd}local inname  "inputdata.dta"
	local outname "outputdata.dta"{txt}
	{hline 28} 结束 {cmd:common.doh} {hline 6}


{pstd}
可以推测，文件 {cmd:step1.do}、{cmd:step2.do} 和 {cmd:step3.do} 包含如下行

		{cmd:use `inname', clear}

{pstd}
和 

		{cmd:save `outname', replace}

{pstd}
我们在命名文件 {cmd:common.doh} 时使用 {cmd:.doh} 后缀并非拼写错误。我们将文件命名为 {cmd:.doh} 是为了强调它是 do 文件的头文件，但您可以根据自己的需要命名该文件，包括 {cmd:common.do}。

{pstd}
您可以将文件命名为 {cmd:common.do}，但您不能使用 {cmd:do} 命令来运行它，因为该文件定义的局部宏会在文件执行完成时自动丢弃；因此在 {cmd:step1.do}、{cmd:step2.do} 和 {cmd:step3.do} 中，宏将未定义。


{marker remarks2}{...}
{title:与 Mata 一起使用}

{pstd}
{cmd:include} 有时用于高级 Mata 场合，在这些场合中，您正在创建一个共享概念的例程库：

	{hline 40} 开始 {cmd:inpivot.mata} {hline 4}
	{cmd}version {ccl stata_version}
	include limits.matah

	mata:
	real matrix inpivot(real matrix X)
	{
		real matrix	y1, yz
		real scalar	n

		if (rows(X)>`MAXDIM' | cols(X)>`MAXDIM') {
			errprintf("inpivot:  矩阵太大\n")
			exit(1000)
		}
		...
	}
	结束{txt}
	{hline 40} 结束 {cmd:inpivot.mata} {hline 6}


	{hline 40} 开始 {cmd:limits.matah} {hline 4}
	...
	{cmd:local MAXDIM   800}
	...
	{hline 40} 结束 {cmd:limits.matah} {hline 6}


{pstd}
可以推测，许多 {cmd:.mata} 文件包含 {cmd:limits.matah}。


{marker remarks3}{...}
{title:警告}

{pstd}
不要在 Stata 程序的主体中使用 {cmd:include}：

		{cmd:program} ...
			...
			{cmd:include} ...
			...
		{cmd:end}

{pstd}
{cmd:include} 不会像您预期的那样在程序编译时执行。相反，{cmd:include} 将存储在您的程序中，并在每次运行时执行。因此，结果将与在编译时包含这些行相同，但执行会更慢。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <include.sthlp>}