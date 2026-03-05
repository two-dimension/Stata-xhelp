{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ferrortext()" "help mf_ferrortext_zh"}{...}
{vieweralsosee "[M-5] fopen()" "help mf_fopen_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_st_freadsignature_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_freadsignature_zh##description"}{...}
{viewerjumpto "Remarks" "mf_st_freadsignature_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_freadsignature_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_freadsignature_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_freadsignature_zh##source"}
{help mf_st_freadsignature:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{bf:[M-5] st_freadsignature()} {hline 2} 读取/写入标准 Stata 文件签名


{marker syntax}{...}
{title:语法}

{p 8 45 2}
{it:void}
{cmd:st_freadsignature(}{it:fh}{cmd:,}
{it:id}{cmd:,}
{it:ver}{cmd:,}
{it:f_ver}[{cmd:,}
{it:f_byteorder}{cmd:,}
{it:f_date}]{cmd:)}

{p 8 8 2}
{it:void}
{cmd:st_fwritesignature(}{it:fh}{cmd:,} 
{it:id}{cmd:,} 
{it:ver}{cmd:)}


{p 8 45 2}
{it:real scalar}
{cmd:_st_freadsignature(}{it:fh}{cmd:,}
{it:id}{cmd:,}
{it:ver}{cmd:,}
{it:quietly}{cmd:,}{break}
{it:f_ver}[{cmd:,}
{it:f_byteorder}{cmd:,}
{it:f_date}]{cmd:)}

{p 8 8 2}
{it:real scalar}
{cmd:_st_fwritesignature(}{it:fh}{cmd:,}
{it:id}{cmd:,}
{it:ver}{cmd:,}
{it:quietly}{cmd:)}


{p 4 4 2}
参数说明

	{it:输入:}
		     {it:fh}:  {it:real scalar}   来自 {cmd:fopen()} 的文件句柄
		     {it:id}:  {it:string scalar} 文件类型名称
		    {it:ver}:  {it:real scalar}   版本号
		{it:quietly}:  {it:real scalar}   0 或 1

	{it:输出:}
		 {it:f_ver}:   {it:real scalar}   版本号 
	   {it:f_byteorder}:   {it:real scalar}   1 或 2{col 67}{it:(可选)}
	        {it:f_date}:   {it:real scalar}   {cmd:%tc} 日期时间{col 67}{it:(可选)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:st_freadsignature()} 读取由 {cmd:st_fwritesignature()} 写入的标准 Stata 二进制文件签名。如果文件与预期不匹配，或发生输入/输出错误，函数会发出适当的错误信息并取消执行。不会生成回溯日志。

{pstd}
{cmd:st_fwritesignature()} 写入标准 Stata 二进制文件签名。如果发生输入/输出错误，函数会发出适当的错误并取消执行。不会生成回溯日志。

{pstd}
{cmd:_st_freadsignature()} 和 
{cmd:_st_fwritesignature()} 的功能相同，但如果出现错误不会取消执行。它们返回一个文件错误代码，如果没有发生错误，则为 0。有关文件错误代码的描述，请参见 {bf:{help mf_ferrortext_zh:[M-5] ferrortext()}}。这些函数可以返回任何错误代码，但对于 {cmd:_st_freadsignature()}，如果只是因为文件没有预期的签名（文件不是预期类型），错误代码将为 -610（文件不是 Stata 格式）。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个部分：

	{help mf_st_freadsignature##overview:概述}
	{help mf_st_freadsignature##write:st_fwritesignature() 和 _st_fwritesignature()}
	{help mf_st_freadsignature##read:st_freadsignature() 和 _st_freadsignature()}


{marker overview}{...}
{title:概述}

{pstd}
Stata 中的一些命令需要通过使用文件将信息从一个 Stata 的调用传递到下一个。此类用法的示例包括 {cmd:.dta} 数据集；{cmd:.gph} 图形文件；{cmd:.ster} 估计结果文件；以及 {cmd:.dtasig} 数据签名文件。所有这些示例都具有以下特征：

{p 8 12 2}
1.  它们是二进制文件（内容不可人类阅读）。

{p 8 12 2}
2.  使用这些文件的命令知道文件是否不属于适当类型。例如，输入 {cmd:use} {cmd:myfile}，如果文件不包含 Stata 数据集，则会发出适当的错误消息。

{p 8 12 2}
3.  文件是否适当并不是由文件的后缀决定的。例如，输入 {cmd:use} {cmd:myfile.dta}，即使文件名使文件看起来像是 Stata 数据集，如果不是，也会被检测到。输入 {cmd:use} {cmd:myfile.log}，即使文件名使其看起来不是 Stata 数据集，如果文件包含 Stata 数据集，{cmd:use} 仍将加载它。

{p 8 12 2}
4.  文件在不同字节序的计算机之间也能工作，即使它们包含二进制信息。

{p 8 12 2}
5.  较旧的文件仍然可用。例如，{cmd:.dta} 数据集中结果的存储方式随着时间的推移而发生变化，尽管如此，现代的 Stata 仍然能够读取旧格式的文件。

{p 8 12 2}
6.  Stata 命令知道它们的局限性。如果你尝试在 Stata 18 中 {cmd:use} {cmd:myfile.dta}，但是 {cmd:myfile.dta} 是由 Stata 42 创建的，则会发出适当的错误消息。

{pstd}
这一切都是通过文件签名来实现的，文件签名是在文件顶部的一小段数据，用于标识文件类型、创建该文件的版本和字节序。

{pstd}
假设你正在编写一个创建和后续读取 {cmd:.xyz} 文件的系统。你可以通过创建自己的数据签名来实现上述目标。当你写入文件时，可以开始使用以下代码：

		{cmd:fh = fopen(}...{cmd:)}
		{cmd}sig = sprintf("xyz %1.0f %04.0f", byteorder(), 1)
		fwrite(fh, sig, 10){txt}

{pstd}
当你读取文件时，可以这样开始：

		{cmd:fh = fopen(}...{cmd:)}
		{cmd}sig = fread(fh, 10)
		if (substr(sig, 1, 4)!="xyz ") { 
			fclose(fh)
			errprintf("文件不是 xyz 文件\n")
			exit(610)
		}
		border = strtoreal(substr(sig, 5, 1))
		ver    = strtoreal(substr(sig, 7, 4))
		if (ver!=1) { 
			fclose(fh)
			errprintf("文件太新\n") 
			exit(610)
		}{txt}

{pstd}
这是一种合理的解决方案，除了“xyz 2 0001”不是一个特别不太可能的字符串，你应该致力于改善它。

{pstd}
这里的函数写入了更好的签名，更好的原因是（1）它更长，因此更少可能与其他内容混淆，以及（2）它包含更多的信息。这里提供的函数也更易于使用。

{pstd}
要写入文件，你可以编写：

		{cmd:fh = fopen(}...{cmd:)}
		{cmd}st_fwritesignature(fh, "xyz", 1){txt}

{pstd}
要读取它，你可以编写：

		{cmd:fh = fopen(}...{cmd:)}
		{cmd}st_freadsignature(fh, "xyz", 1, ver, border){txt}

{pstd}
你不必烦恼编写合适的错误消息，因为所有这些都为你处理。将会写入的签名看起来像：

	{cmd}*! Stata(R) 010.00 二进制文件头_version 0010
	*! 日期 22feb2007 10:46:10
	*! 字节序 LOHI
	*! 文件类型 xyz                              版本 0001
	*! <end_of_header>
	1
	2
	3{txt}

{pstd}
所有行都以回车换行结束，除了 {cmd:1}，它仅以回车结束，而 {cmd:2} 仅以换行结束。这样做的目的是允许 {cmd:st_freadsignature()} 测试二进制文件是否不当地经过 ASCII 行尾转换程序，并在发生这种情况时发出适当的消息。

{pstd}
StataCorp 正在朝着使 Stata 创建的所有二进制文件都采用这个标准头文件的方向发展。从 Stata 11 开始，{cmd:.dta} 和 {cmd:.gph} 文件还未使用该头文件。


{marker write}{...}
{title:st_fwritesignature() 和 _st_fwritesignature()}

{pstd}
{cmd:st_fwritesignature()} 的语法为：

{p 8 12 2}
{it:void}
{cmd:st_fwritesignature(}{it:fh}{cmd:,} 
{it:id}{cmd:,} 
{it:ver}{cmd:)}:

{p 8 12 2}
{it:fh} 指定已打开文件的文件句柄。

{p 8 12 2}
{it:id} 指定一个最多 32 个字符的字符串，用于标识要写入的文件类型。此字符串也可以用于类似 "文件不是 {it:id}" 和 "文件是 {it:id}" 之类的错误消息，因此选择一个适合它们的标识符； {it:id} 不应包含单词 "file"。  
{it:id} 可以是 {cmd:"output} {cmd:table"}。较长的标识符优于较短的标识符。

{p 8 12 2}
{it:ver} 必须是 1 和 9,999 之间的整数，指定文件写入软件的版本。也就是说，这是你正在编写的软件的版本，因此最初会是 1。如果你稍后更改写入文件的方式，请增加此数字。


{pstd}
{cmd:_st_fwritesignature()} 的语法为：

{p 8 8 2}
{it:real scalar}
{cmd:_st_fwritesignature(}{it:fh}{cmd:,}
{it:id}{cmd:,}
{it:ver}{cmd:,}
{it:quietly}{cmd:)}

{p 8 12 2}
{it:fh}、{it:id} 和 {it:ver} 的含义如上所述。

{p 8 12 2}
{it:quietly} 是可选的，应为 0 或 1；1 表示不显示错误消息。

{p 8 12 2}
{cmd:_st_fwritesignature()} 返回文件错误代码，为 0 或负整数；请参见
{bf:{help mf_ferrortext_zh:[M-5] ferrortext()}}。


{marker read}{...}
{title:st_freadsignature() 和 _st_freadsignature()}

{pstd}
{cmd:st_freadsignature()} 的语法为：

{p 8 45 2}
{it:void}
{cmd:st_freadsignature(}{it:fh}{cmd:,}
{it:id}{cmd:,}
{it:ver}{cmd:,}
{it:f_ver}[{cmd:,}
{it:f_byteorder}{cmd:,}
{it:f_date}]{cmd:)}

{p 8 12 2}
{it:fh} 指定已打开文件的文件句柄。

{p 8 12 2}
{it:id} 指定字符数不超过 32 的字符串，用于标识正在读取的文件类型。这是与 {cmd:st_fwritesignature()} 一起指定的相同 {it:id}。如果指定的 {it:id} 与标题中的 {it:id} 不匹配，则会发出错误消息并取消执行。

{p 8 12 2}
{it:ver} 必须是 1 和 9,999 之间的整数，指定你的代码准备读取的文件的最高版本。如果指定的 {it:ver} 小于文件中的 {it:ver}，则会发出适当的文件太新错误消息并取消执行。

{p 8 12 2}
{it:f_ver} 收到返回结果，其原始内容无关紧要。{it:f_ver} 将包含 
    文件头中记录的 {it:ver}。
    保证 {it:f_ver} <= {it:ver}。

{p 8 12 2}
{it:f_byteorder} 是可选的。  
{it:f_byteorder} 收到返回结果，其原始内容无关紧要。
{it:f_byteorder} 将包含 1 或 2，
反映写入文件的计算机中的字节顺序；请参见
{bf:{help mf_byteorder_zh:[M-5] byteorder()}}。

{p 8 12 2}
{it:f_date} 是可选的。
{it:f_date} 收到返回结果，其原始内容无关紧要。
{it:f_date} 将包含号码，等于文件写入日期的 {cmd:%tc} 格式时间。

{p 8 12 2}
{cmd:_st_freadsignature()} 返回文件错误代码，为 0 或负整数；请参见
{bf:{help mf_ferrortext_zh:[M-5] ferrortext()}}。


{pstd}
{cmd:_st_freadsignature()} 的语法为：

{p 8 45 2}
{it:real scalar}
{cmd:_st_freadsignature(}{it:fh}{cmd:,}
{it:id}{cmd:,}
{it:ver}{cmd:,}
{it:quietly}{cmd:,}{break}
{it:f_ver}[{cmd:,}
{it:f_byteorder}{cmd:,}
{it:f_date}]{cmd:)}

{p 8 12 2}
{it:fh}、{it:id}、{it:ver}、{it:f_ver}、{it:f_byteorder} 和
{it:f_date} 的含义如上所述，除了在提到将发出错误消息并取消执行的地方，而不是取消执行，将返回负数文件错误代码；请参见
{bf:{help mf_ferrortext_zh:[M-5] ferrortext()}}。

{p 8 12 2}
{it:quietly} 是可选的，应为 0 或 1；1 表示不显示错误消息。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:st_freadsignature(}{it:fh}{cmd:,}
{it:id}{cmd:,}
{it:ver}{cmd:,}
{it:f_ver}{cmd:,}
{it:f_byteorder}{cmd:,}
{it:f_date}{cmd:)}:
{p_end}
	{it:输入:}
	       {it:fh}:  1 {it:x} 1
	       {it:id}:  1 {it:x} 1
	      {it:ver}:  1 {it:x} 1
	{it:输出:}
	    {it:f_ver}:  1 {it:x} 1
      {it:f_byteorder}:  1 {it:x} 1    (可选)
           {it:f_date}:  1 {it:x} 1    (可选)

{p 4 4 2}
{cmd:_st_freadsignature(}{it:fh}{cmd:,}
{it:id}{cmd:,}
{it:ver}{cmd:,}
{it:quietly}{cmd:,}
{it:f_ver}{cmd:,}
{it:f_byteorder}{cmd:,}
{it:f_date}{cmd:)}:
{p_end}
	{it:输入:}
	       {it:fh}:  1 {it:x} 1
	       {it:id}:  1 {it:x} 1
	      {it:ver}:  1 {it:x} 1
	  {it:quietly}:  1 {it:x} 1
	{it:输出:}
	    {it:f_ver}:  1 {it:x} 1
      {it:f_byteorder}:  1 {it:x} 1    (可选)
           {it:f_date}:  1 {it:x} 1    (可选)
	   {it:结果}:  1 {it:x} 1

{p 4 4 2}
{cmd:st_fwritesignature(}{it:fh}{cmd:,} 
{it:id}{cmd:,} 
{it:ver}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	       {it:id}:  1 {it:x} 1
	      {it:ver}:  1 {it:x} 1
	   {it:结果}:  {it:void}

{p 4 4 2}
{cmd:_st_fwritesignature(}{it:fh}{cmd:,}
{it:id}{cmd:,}
{it:ver}{cmd:,}
{it:quietly}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	       {it:id}:  1 {it:x} 1
	      {it:ver}:  1 {it:x} 1
	  {it:quietly}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
所有函数在误用时均会以错误中止。

{p 4 4 2}
{cmd:st_fwritesignature()} 和 
{cmd:st_freadsignature()} 
在发生文件错误或文件不匹配时会发出错误消息并取消执行。
不会生成回溯日志。

{p 4 4 2}
{cmd:_st_fwritesignature()} 和 
{cmd:_st_freadsignature()} 
在面对这种情况时不会取消执行；返回负数文件错误代码。

{p 4 4 2}
在专业应用中，通常需要使用函数的下划线变体。如果只是想取消执行，这种情况并不适用。此外，除非错误使用，这些函数不会生成回溯日志。

{p 4 4 2}
如果你使用下划线函数，如果返回非零值，必须关闭文件；下划线函数不会为你处理这一点。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view st_fsignature.mata, adopath asis:st_fsignature.mata} 查看所有函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_freadsignature.sthlp>}