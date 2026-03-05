{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] printf()" "mansection M-5 printf()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] displayas()" "help mf_displayas_zh"}{...}
{vieweralsosee "[M-5] displayflush()" "help mf_displayflush_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_printf_zh##syntax"}{...}
{viewerjumpto "Description" "mf_printf_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_printf_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_printf_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_printf_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_printf_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_printf_zh##source"}
{help mf_printf:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] printf()} {hline 2}}格式化输出
{p_end}
{p2col:}({mansection M-5 printf():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:          }
{cmd:printf(}{it:string scalar fmt}{cmd:,}
{it:r1}{cmd:,}
{it:r2}{cmd:,}
...{cmd:,}
{it:rN}{cmd:)}

{p 8 12 2}
{it:string scalar}
{cmd:sprintf(}{it:string scalar fmt}{cmd:,}
{it:r1}{cmd:,}
{it:r2}{cmd:,}
...{cmd:,}
{it:rN}{cmd:)}


{p 4 4 2}
其中 {it:fmt} 可以包含文本和 
{it:{help format_zh:%fmts}} 的混合，例如 

		{cmd:printf("结果是 %9.2f, 已调整\n", result)}

		{cmd:printf("%s = %9.0g\n", name, value)}

{p 4 4 2}
{cmd:%}{it:fmts} 
在 {it:fmt} 中必须与要显示的结果数量一一对应。

{p 4 4 2}
除了 Stata 提供的常用 {cmd:%}{it:fmts}（见 
{bf:{help format_zh:[D] format}}），还提供了

		格式                      含义
		{hline 56}
		{cmd:%f}                          {cmd:%11.0f}, 压缩格式
		{cmd:%g}                          {cmd:%11.0g}, 压缩格式
		{cmd:%e}                          {cmd:%11.8e}, 压缩格式
		{cmd:%s}                          {cmd:%}{it:#}{cmd:s}, {it:#}=所需的数量
		{cmd:%us}                         {cmd:%}{it:#}{cmd:us}, {it:#}=所需的数量
		{cmd:%uds}                        {cmd:%}{it:#}{cmd:uds}, {it:#}=所需的数量
		{hline 56}
{p 16 16 10}
“压缩”表示在应用所指格式后，所有前导和尾随空格被移除。{break}
C 程序员请注意： {cmd:%}{cmd:d} 是 Stata 的（旧版）日历日期格式（相当于现代 Stata 的 {cmd:%td} 格式），而不是整数格式；使用 {cmd:%f} 来格式化整数。


{p 4 4 2}
以下字符序列在 {it:fmt} 中具有特殊含义：

		字符序列          含义
		{hline 42}
		{cmd:%%}                          一个 % 
		{cmd:\n}                          换行
		{cmd:\r}                          回车
		{cmd:\t}                          制表符 
		{cmd:\\}                          一个 \
		{hline 42}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:printf()} 在终端上显示输出。

{p 4 4 2}
{cmd:sprintf()} 返回一个字符串，该字符串可以在终端上显示、写入文件或以字符串可能使用的任何其他方式使用。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 printf()Remarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按照以下标题呈现：

	{help mf_printf##remarks1:printf()}
	{help mf_printf##remarks2:sprintf()}
	{help mf_printf##remarks3:%us 和 %uds 格式}


{marker remarks1}{...}
{title:printf()}

{p 4 4 2}
{cmd:printf()} 在终端上显示输出。一个程序可能包含这一行 

	{cmd:printf("结果是 %f\n", result)}

{p 4 4 2}
并显示输出

	{res:结果是 5.213}

{p 4 4 2} 
或者可能包含以下几行

	{cmd}printf("{c -(}txt{c )-}{c -(}space 13{c )-}{c -(}c |{c )-}      Coef.    Std. Err.\n")
	printf("{c -(}hline 13{c )-}{c -(}c +{c )-}{c -(}hline 24{c )-}\n")
	printf("{c -(}txt{c )-}%12s {c -(}c |{c )-} {c -(}res{c )-}%10.0g  %10.0g\n",
		 				varname[i], coef[i], se[i]){txt}

{p 4 4 2}
并显示输出

	{res}{txt}{space 13}{c |}      Coef.    Std. Err.
	{hline 13}{c +}{hline 24}
	{txt}         mpg {c |} {res} -.0059541    .0005921{txt}

{p 4 4 2}
不要忘记在行末包含 {cmd:\n}。当 {cmd:\n} 未被包含时，行将会继续。 例如，代码 

	{cmd}printf("{c -(}txt{c )-}{c -(}space 13{c )-}{c -(}c |{c )-}      Coef.    Std. Err.\n")
	printf("{c -(}hline 13{c )-}{c -(}c +{c )-}{c -(}hline 24{c )-}\n")
	printf("{c -(}txt{c )-}%12s {c -(}c |{c )-} {c -(}res{c )-}", varname[i])
	printf("%10.0g", coef[i]) 
	printf(" ")
	printf("%10.0g", se[i]) 
	printf("\n"){txt}

{p 4 4 2}
产生的输出与上面显示的相同。

{p 4 4 2}
尽管用户并没有意识到，Stata 会缓冲输出。这使得 Stata 更快。然而，缓冲的一个副作用是输出可能不会在您期望的时间出现。考虑以下代码片段

	{cmd}for (n=1; !converged(b, b0); n++) {c -(}
		printf("迭代 %f:  diff = %12.0g\n", n, b-b0)
		b0 = b 
		{txt:{it:... 新的 b 计算 ...}}
	{c )-}{txt}

{p 4 4 2}
迭代输出的一个目的是为了让用户了解代码确实在工作，但按照上面的代码编写，用户可能不会看到迭代消息。相反，一段时间内不会出现任何输出，然后许多迭代消息会意外出现，当 Stata 缓冲区满时，决定将等待的输出发送到终端。

{marker force}{...}
{p 4 4 2}
要强制显示输出，使用 
{bf:{help mf_displayflush_zh:[M-5] displayflush()}}:

	{cmd}for (n=1; !converged(b, b0); n++) {c -(}
		printf("迭代 %f:  diff = %12.0g\n", n, b-b0)
		displayflush()
		b0 = b 
		{txt:{it:... 新的 b 计算 ...}}
	{c )-}{txt}

{p 4 4 2}
只有在上述情况下才需要使用 {cmd:displayflush()}。在其他情况下，最好让 Stata 决定何时刷新输出缓冲区。 （ado 文件程序员：你从未需要担心这一点，因为在 ado 级别上，所有输出在创建时都会被刷新。然而，Mata 被设计为快速，因此 {cmd:printf()} 不会强制输出被刷新，直到这样做更高效。）


{marker remarks2}{...}
{title:sprintf()}

{p 4 4 2}
{cmd:sprintf()} 和 {cmd:printf()} 的区别在于，{cmd:printf()} 将结果字符串发送到终端，而 {cmd:sprintf()} 返回该字符串。 由于 Mata 显示未分配给变量的表达式的结果，因此单独使用 {cmd:sprintf()} 也会显示输出：

	: {cmd:sprintf("结果是 %f\n", result)}
	  结果是 5.213{it:0a}

{p 4 4 2}
结果与 {cmd:printf()} 产生的结果略有不同，因为未分配表达式的输出例程将结果缩进 2 个空格，并显示字符串中的所有字符（末尾的 {it:0a} 是 {cmd:\n} 换行字符）。此外，未分配表达式的输出例程不遵循 SMCL，而是选择显示代码：

	: {cmd:sprintf("{c -(}txt{c )-}结果是 {c -(}res{c )-}%f", result)}
	  {c -(}txt{c )-}结果是 {c -(}res{c )-}5.213

{p 4 4 2}
{cmd:sprintf()} 的目的是创建将与 {cmd:printf()}、 
{bf:{help mf_display_zh:[M-5] display()}}, 
{bf:fput()}（见 {bf:{help mf_fopen_zh:[M-5] fopen()}}）或其他某些函数一起使用的字符串。

{p 4 4 2}
假设我们正在创建一个动态格式化的表格。表格中的一列包含整数，我们希望创建一个 {cmd:%}{it:fmt}，该格式正好满足所需的宽度。也就是说，如果表格中要出现的整数是 2、9 和 20，我们想要为该列创建一个 {cmd:%2.0f} 格式。我们假设整数在列向量 {cmd:dof} 中，如下所示：

		{cmd}max = 0
		for (i=1; i<=rows(dof); i++) {c -(} 
			len = strlen(sprintf("%f", dof[i])
			if (len>max) max = len
		{c )-}
		fmt = sprintf("%%%f.0f", max){txt}

{p 4 4 2}
在上面的代码中，我们使用了两次 {cmd:sprintf()}。第一次使用 {cmd:sprintf()} 来生成整数 {cmd:dof[i]} 的字符串表示，并使用 {cmd:%f} 格式以便长度为所需的宽度，不多也不少。我们在 {cmd:max} 中获取了最大长度。   
如果 {cmd:dof} 包含 2、9 和 20，在循环结束时，{cmd:max} 将包含 2。最后，我们使用 {cmd:sprintf()} 来创建所需的 
{cmd:%}{it:#}{cmd:.0f} 格式：{cmd:%2.0f}。

{p 4 4 2}
最后一个 {cmd:sprintf()} 中的格式字符串 "{cmd:%%%f.0f}" 读起来有些困难。前两个百分号等于一个真正的百分号，因此在输出中我们现在有 "{cmd:%}"，剩下 "{cmd:%f.0f}"。 {cmd:%f} 是一个格式 —— 它是我们格式化 {cmd:max} 的方式 —— 因此在输出中我们现在有 "{cmd:%2}"，而剩下 "{cmd:.0f}"。 {cmd:.0f} 只是一个字符串，因此最终输出是 "{cmd:%2.0f}"。


{marker remarks3}{...}
{title:%us 和 %uds 格式}

{p 4 4 2}
{cmd:%}{it:w}{cmd:us} 和 {cmd:%}{it:w}{cmd:uds} 格式与 
{cmd:%}{it:w}{cmd:s} 类似。这些格式以右对齐的方式在宽度为 {it:w} 的字段中显示字符串。 {cmd:%-}{it:w}{cmd:us} 和 {cmd:%-}{it:w}{cmd:uds} 在左对齐的字段中显示字符串。 {cmd:%~}{it:w}{cmd:us} 和 {cmd:%~}{it:w}{cmd:uds} 以居中的方式显示字符串。

{p 4 4 2}
{cmd:%}{it:w}{cmd:s}, {cmd:%}{it:w}{cmd:us} 和 {cmd:%}{it:w}{cmd:uds} 之间的区别在于填充空格的数量计算方式。 
{cmd:%}{it:w}{cmd:s} 在 {it:s} 左侧填充空格的数量，使字节总数为 {it:w}。 
{cmd:%}{it:w}{cmd:us} 在 {it:s} 左侧填充空格的数量，使 Unicode 字符的总数为 {it:w}。 
{cmd:%}{it:w}{cmd:uds} 在 {it:s} 左侧填充空格的数量，使（显示列的）总数为 {it:w}。

{p 4 4 2}
请注意，如果在 {cmd:%}{it:w}{cmd:us} 中 Unicode 字符的数量大于或等于 {it:w}，或者在 {cmd:%}{it:w}{cmd:uds} 中显示列的数量大于或等于 {it:w}，则 {it:s} 将保持不变。 


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
{cmd:printf(}{it:fmt}{cmd:,}
{it:r1}{cmd:,}
{it:r2}{cmd:,}
...{cmd:,}
{it:rN}{cmd:)}
{p_end}
	      {it:fmt}:  1 {it:x} 1
	       {it:r1}:  1 {it:x} 1
	       {it:r2}:  1 {it:x} 1
	       ...
	       {it:rN}:  1 {it:x} 1
	   {it:result}:  {it:void}

{p 4 8 2}
{cmd:sprintf(}{it:fmt}{cmd:,}
{it:r1}{cmd:,}
{it:r2}{cmd:,}
...{cmd:,}
{it:rN}{cmd:)}
{p_end}
	      {it:fmt}:  1 {it:x} 1
	       {it:r1}:  1 {it:x} 1
	       {it:r2}:  1 {it:x} 1
	       ...
	       {it:rN}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {cmd:printf()} 和 {cmd:sprintf()} 发现 
{cmd:%}{it:fmt} 被错误地指定，或者一个数字 {cmd:%}{it:fmt} 对应于字符串结果，或一个字符串 {cmd:%}{it:fmt} 对应于数字结果，或在 {it:fmt} 中相对于指定的 {it:results} 的 {cmd:%}{it:fmts} 太少或太多，则会因错误而中止。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_printf.sthlp>}