{smcl}
{* *! version 1.1.26  29jan2019}{...}
{vieweralsosee "[P] file" "mansection P file"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] filefilter" "help filefilter_zh"}{...}
{vieweralsosee "[D] hexdump" "help hexdump_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] display" "help display_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[D] import delimited" "help import delimited"}{...}
{vieweralsosee "[D] infix" "help infix_zh"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "file_zh##syntax"}{...}
{viewerjumpto "Description" "file_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "file_zh##linkspdf"}{...}
{viewerjumpto "Options" "file_zh##options"}{...}
{viewerjumpto "Text output specifications" "file_zh##text_output"}{...}
{viewerjumpto "Remarks" "file_zh##remarks"}{...}
{viewerjumpto "Stored results" "file_zh##stored_results"}
{help file:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[P] file} {hline 2}}读取和写入文本和二进制文件{p_end}
{p2col:}({mansection P file:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    打开文件

{p 8 19 2}
{cmd:file} {cmd:open}
{space 1}{it:handle}
{cmd:using} {it:{help filename_zh}}{cmd:,}
{c -(}{cmdab:r:ead}|{cmdab:w:rite}|{cmdab:r:ead} {cmdab:w:rite}{c )-}
[
[{cmdab:t:ext}|{cmdab:b:inary}]
[{cmd:replace}|{cmd:append}]
{cmd:all}
]


    读取文件

{p 8 19 2}
{cmd:file} {cmdab:r:ead} {space 1}{it:handle} [{it:specs}]


    写入文件

{p 8 19 2}
{cmd:file} {cmdab:w:rite} {it:handle} [{it:specs}]


    更改文件中的当前位置

{p 8 19 2}
{cmd:file} {cmd:seek} {space 1}{it:handle}
{c -(}{cmdab:q:uery}|{cmd:tof}|{cmd:eof}|{it:#}{c )-}


    设置二进制文件的字节顺序

{p 8 19 2}
{cmd:file} {cmd:set} {space 2}{it:handle}
{cmd:byteorder}
{c -(}{cmd:hilo}|{cmd:lohi}|{cmd:1}|{cmd:2}{c )-}


    关闭文件

{p 8 19 2}
{cmd:file} {cmd:close}
{c -(}{it:handle}|{cmd:_all}{c )-}


    列出文件类型、状态和句柄名称

{p 8 19 2}
{cmd:file} {cmdab:q:uery}


{pstd}
其中 {it:specs} 对于 {cmd:text} 输出为

	{cmd:"}{it:string}{cmd:"} 或 {cmd:`"}{it:string}{cmd:"'}
	{cmd:(}{it:{help exp_zh}}{cmd:)}{col 40}(括号是必需的)
	{help format_zh:{bf:%}{it:fmt}} {cmd:(}{it:{help exp_zh}}{cmd:)}{col 40}(有关 {cmd:%}{it:fmt} 的详细信息，请参见 {manhelp format D} )
	{cmd:_skip(}{it:#}{cmd:)}
	{cmdab:_col:umn(}{it:#}{cmd:)}
	{cmdab:_n:ewline}[{cmd:(}{it:#}{cmd:)}]
	{cmd:_char(}{it:#}{cmd:)}{col 40}({cmd:0} {ul:<} {it:#} {ul:<} {cmd:255})
	{cmd:_tab}[{cmd:(}{it:#}{cmd:)}]
	{cmd:_page}[{cmd:(}{it:#}{cmd:)}]
	{cmd:_dup(}{it:#}{cmd:)}

{pstd}
{it:specs} 对于 {cmd:text} 输入为 {it:localmacroname}, 

{pstd}
{it:specs} 对于 {cmd:binary} 输出为

	{cmd:%}{c -(}{cmd:8}|{cmd:4}{c )-}{cmd:z}        {cmd:(}{it:exp}{cmd:)}
	{cmd:%}{c -(}{cmd:4}|{cmd:2}|{cmd:1}{c )-}{cmd:b}[{cmd:s}|{cmd:u}] {cmd:(}{it:exp}{cmd:)}
	{cmd:%}{it:#}{cmd:s}            {cmd:"}{it:text}{cmd:"}{col 40}({cmd:1} {ul:<} {it:#} {ul:<} {cmd:max_macrolen})
	{cmd:%}{it:#}{cmd:s}            {cmd:`"}{it:text}{cmd:"'}
	{cmd:%}{it:#}{cmd:s}            {cmd:(}{it:exp}{cmd:)}

{pstd}
并且 {it:specs} 对于 {cmd:binary} 输入为

	{cmd:%}{c -(}{cmd:8}|{cmd:4}{c )-}{cmd:z}        {it:scalarname}
	{cmd:%}{c -(}{cmd:4}|{cmd:2}|{cmd:1}{c )-}{cmd:b}[{cmd:s}|{cmd:u}] {it:scalarname}
	{cmd:%}{it:#}{cmd:s}            {it:localmacroname}{col 40}({cmd:1} {ul:<} {it:#} {ul:<} {cmd:max_macrolen})


{marker description}{...}
{title:描述}

{pstd}
{cmd:file} 是一个程序员命令，不应与 {helpb import delimited}、{help infile_zh} 和 {help infix_zh} 混淆，它们是通常用来将数据导入 Stata 的方法。{cmd:file} 允许程序员读取和写入文本和二进制文件，因此 {cmd:file} 可以用来编写在某些复杂情况下输入数据的程序，但这是一个艰巨的任务。

{pstd}
文件通过一个文件 {it:handle} 引用。当您打开一个文件时，您指定要使用的文件句柄；例如，在

	{cmd:. file open myfile using example.txt, write}

{pstd}
{cmd:myfile} 是名为 {cmd:example.txt} 的文件的文件句柄。从那时起，您通过它的句柄引用文件。因此

	{cmd:. file write myfile "this is a test" _n}

{pstd}
将把行 "this is a test"（不包括引号）后跟一个换行符写入文件， 

	{cmd:. file close myfile}

{pstd}
然后关闭该文件。您可以同时打开多个文件，并且可以以任何顺序访问它们。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection P fileRemarksandexamples:备注和示例}

{pstd}
上面的部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:read}、{cmd:write}，或{cmd:read write}是必需的；它们指定文件如何被打开。如果文件以 {cmd:read} 打开，则后续可以使用 {cmd:file} {cmd:read}，但不能使用 {cmd:file} {cmd:write}；如果文件以 {cmd:write} 打开，则后续可以使用 {cmd:file} {cmd:write}，但不能使用 {cmd:file} {cmd:read}。如果文件以 {cmd:read} {cmd:write} 打开，则可以同时使用两者。

{pmore}
    {cmd:read} {cmd:write} 更灵活，但大多数程序员仅以 {cmd:read} 或 {cmd:write} 打开文件，因为这正是所需的；这更安全，也更快。

{pmore}
    当文件以 {cmd:read} 打开时，文件必须已经存在，否则将发出错误消息。文件位于顶部 (tof)，因此第一条 {cmd:file} {cmd:read} 从文件的开头读取。可以同时为本地文件和网络文件打开 {cmd:read}。

{pmore}
    当文件以 {cmd:write} 打开并且未指定 {cmd:replace} 或 {cmd:append} 选项时，文件必须不存在，否则将发出错误消息。文件位于顶部 (tof)，因此第一条 {cmd:file} {cmd:write} 在文件的开头写入。网络文件不能以 {cmd:write} 打开。

{pmore}
    当文件以 {cmd:write} 打开并且还指定了 {cmd:replace} 选项时，文件是否已存在无关紧要；如果有现有文件，则首先会将其擦除。

{pmore}
    当文件以 {cmd:write} 打开并且还指定了 {cmd:append} 选项时，文件是否已存在也无关紧要；该文件将被重新打开或必要时创建。文件将定位在附加点，这意味着如果文件存在，则第一条 {cmd:file} {cmd:write} 将写入上一个文件末尾的第一个字节；如果没有上一个文件， {cmd:file} {cmd:write} 将从文件的第一个字节开始写入。不能在 {cmd:write} {cmd:append} 文件中使用 {cmd:file} {cmd:seek}。

{pmore}
    当文件以 {cmd:read} {cmd:write} 打开时，文件是否存在也无关紧要。如果文件存在，则将重新打开它。如果文件不存在，则创建一个新文件。无论如何，文件将位于文件的顶部。您可以使用 {cmd:file} {cmd:seek} 到文件的末尾或您所需的任何其他位置。网络文件不能以 {cmd:read} {cmd:write} 打开。

{pmore}
    在打开文件之前，您可以通过使用 {cmd:confirm} {cmd:file} 来确定其是否存在；请参见 {manhelp confirm P}。

{phang}
{cmd:text} 和 {cmd:binary} 决定文件在打开后如何处理。 {cmd:text} 是默认值。使用 {cmd:text} 时，假定文件由字符的行组成，每行以行结束字符结束。行结束字符在不同操作系统之间有所不同，Unix 下为换行符，Mac 下为回车符，Windows 下为回车/换行符。 {cmd:file} 理解在读取时行可能会结束的所有方式，并假设在写入时行将以所使用计算机的通常方式结束。

{pmore}
    {cmd:text} 的替代选择是 {cmd:binary}，这意味着文件将仅被视为字节流。使用 {cmd:binary} 时，字节顺序的问题；考虑将数字 1 作为 2 字节整数写入。在某些计算机上（称为 hilo），它被写作 {bind:"00 01"}，而在其他计算机上（称为 lohi），则写作 {bind:"01 00"} （最不重要的字节首先写入）。对于 4 字节整数、4 字节浮点数和 8 字节浮点数也存在类似问题。

{pmore}
    {cmd:file} 假定字节按使用的计算机的自然方式排序。 {cmd:file} {cmd:set} 可用于改变这一假设。 {cmd:file} {cmd:set} 可以在 {cmd:file} {cmd:open} 之后立即发出，也可以稍后或重复多次。

{phang}
    {cmd:replace} 和 {cmd:append} 仅在文件以 {cmd:write} 打开时允许（这不包括 {cmd:read} {cmd:write}）。它们决定如果文件已经存在应该执行什么。默认情况下，发出错误消息并不打开文件。有关选项 {cmd:read}、{cmd:write} 和 {cmd:read} {cmd:write} 的更多详细信息，请参阅上述描述。

{phang}
    {cmd:all} 在文件以 {cmd:write} 或 {cmd:read} {cmd:write} 打开时被允许。它指定，如果需要创建文件，则应将文件权限设置为每个人都可以读取。


{marker text_output}{...}
{title:文本输出规范}

{phang}
{cmd:"}{it:string}{cmd:"} 和 {cmd:`"}{it:string}{cmd:"'} 将 {it:string}
    写入文件，而不包含周围的引号。

{phang}
{cmd:(}{it:{help exp_zh}}{cmd:)} 评估表达式 {it:exp} 并将结果写入文件。如果结果为数字，则以 {cmd:%10.0g} 格式写入，但去除前后空格。如果 {it:exp} 评估为字符串，则写入结果字符串，不包含额外的前后空格。

{phang}
{cmd:%}{it:fmt} {cmd:(}{it:exp}{cmd:)} 评估表达式 {it:exp} 并
    以指定的 {cmd:%}{it:fmt} 写入结果。如果 {it:exp}
    评估为字符串，则 {cmd:%}{it:fmt} 必须为字符串格式，而如果 {it:exp} 评估为实数，则必须指定数值格式。不要将 Stata 的标准显示格式与本帮助文件中描述的二进制格式 {cmd:%b} 和 {cmd:%z} 混淆。 {cmd:file} {cmd:write} 允许使用 {manhelp format D} 中描述的 Stata 显示格式，并允许居中扩展（例如， {cmd:%~20s} ）在 {manlink P display} 中描述。

{phang}
{cmd:_skip(}{it:#}{cmd:)} 向文件中插入 {it:#} 个空格。如果
{it:#} {ul:<} {cmd:0}，则什么都不写； {it:#} {ul:<} {cmd:0} 不视为错误。

{phang}
{cmd:_column(}{it:#}{cmd:)} 写入足够的空格以跳过
    到达该行的 {it:#} 列；如果 {it:#} 涉及之前的列，则不会显示任何内容。 行的第一列编号为 1。涉及小于 1 的列不视为错误；在这种情况下什么都不会显示。

{phang}
{cmd:_newline}[{cmd:(}{it:#}{cmd:)}]，可以简写为
    {cmd:_n}[{cmd:(}{it:#}{cmd:)}]，如果未指定 {it:#} 输出一个行结束字符或输出指定数量的行结束字符。 行结束字符根据您的操作系统而有所不同，Unix 下为换行符，Mac 下为回车符，Windows 下为回车/换行符。如果 {it:#} {ul:<} {cmd:0}，则不输出行结束字符。

{phang}
{cmd:_char(}{it:#}{cmd:)} 输出一个 ASCII 字符，该字符由所指定的 ASCII 代码 {it:#} 提供。 {it:#} 必须在 0 到 255 之间（包括）。

{phang}
{cmd:_tab}[{cmd:(}{it:#}{cmd:)}] 如果未指定 {it:#} 输出一个制表符字符，或输出指定数量的制表符字符。编码 {cmd:_tab} 相当于编码 {cmd:_char(9)}。

{phang}
{cmd:_page}[{cmd:(}{it:#}{cmd:)}] 如果未指定 {it:#} 输出一个换页符字符，或输出指定数量的换页符字符。编码 {cmd:_page} 相当于编码 {cmd:_char(12)}。换页符字符通常被称为控制 L。

{phang}
{cmd:_dup(}{it:#}{cmd:)} 指定下一个指令将被执行 {it:#} 次。 {it:#} 必须大于或等于 0。如果 {it:#} 等于零，则下一个元素不显示。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

	{help file##1.1:使用文件}
	{help file##1.2:使用临时文件}
	{help file##2.1:写入文本文件}
	{help file##2.2:读取文本文件}
{phang2}{help file##2.3:在读取和写入文本文件时使用 seek}{p_end}
	{help file##3.1:读取和写入二进制文件}
	{help file##3.2:写入二进制文件}
	{help file##3.3:读取二进制文件}
{phang2}{help file##3.4:在读取和写入二进制文件时使用 seek}{p_end}
{p 8 24 2}{help file##A1:附录 A1: 与文件一起使用的有用命令和函数}{p_end}
{p 8 24 2}{help file##A2:附录 A2: 超出范围值的二进制输出格式的行为}


{marker 1.1}{...}
{title:使用文件}

{pstd}
{cmd:file} 提供对文件 I/O 的低级访问。您打开文件，重复使用 {cmd:file} {cmd:read} 或 {cmd:file} {cmd:write} 来读取或写入文件，然后使用 {cmd:file} {cmd:close} 关闭该文件：

	{cmd:file open} ...
	...
	{cmd:file read}  或  {cmd:file write} ...
	...
	{cmd:file read}  或  {cmd:file write} ...
	...
	{cmd:file close} ...

{pstd}
不要忘记关闭文件。打开的文件会占用系统资源。而且，对于以写入方式打开的文件，文件的内容可能在您关闭文件之前不会完全写入。

{pstd}
键入 {cmd:file} {cmd:close} {cmd:_all} 将关闭所有打开的文件，而 {help clear_zh:clear all} 命令也会关闭所有文件。然而，这些命令不应包含在您编写的程序中；它们的包括是为了允许用户在程序员马虎时重置 Stata。

{pstd}
如果您使用从 {helpb tempname} 获得的文件句柄，则在 ado 文件结束时文件将被自动关闭：

	{cmd:tempname myfile}
	{cmd:file open `myfile' using} ...

{pstd}
这是唯一不关闭文件时合适的情况。使用临时名称作为文件句柄具有相当大的优势，因为程序可能因为错误停止或因为用户按下 {hi:Break} 而引发中止。


{marker 1.2}{...}
{title:与临时文件一起使用文件}

{pstd}
在您 {cmd:file} {cmd:open} 一个 {cmd:tempfile} 的罕见情况下，您必须从 {cmd:tempname} 获取句柄；请参见 {manhelp macro P}.  临时文件在 ado 或 do 文件结束时会自动删除。如果在关闭之前删除该文件，可能会出现重大问题。使用 tempname 确保文件能够正确关闭：

	{cmd:tempname myfile}
	{cmd:tempfile tfile}
	{cmd:file open `myfile' using "`tfile'"} ...


{marker 2.1}{...}
{title:写入文本文件}

{pstd}
这很容易做到：

{phang2}{cmd:file open} {it:handle} {cmd:using} {it:filename}{cmd:, write text}
{p_end}
	{cmd:file write} {it:handle} ...
	...
	{cmd:file close} {it:handle}

{pstd}
{cmd:file} {cmd:write} 的语法与 {cmd:display} 相似；请参见 {help display_zh:[P] display}.  重要的区别是表达式必须用括号绑定。在 {cmd:display} 中，您可以编码

	{cmd:display 2+2}

{pstd}
但是在使用 {cmd:file} {cmd:write} 时，您必须编码

	{cmd:file write} {it:handle} {cmd:(2+2)}

{pstd}
{cmd:file} {cmd:write} 和 {cmd:display} 之间的另一个重要区别是 {cmd:display} 假定您希望在每次 {cmd:display} 之后输出行结束字符（而 {cmd:display} 提供了 {cmd:_continue} 供您在不希望这样时使用），但 {cmd:file} {cmd:write} 假定只有在您指定时才希望出现行结束字符。因此，而不是编码 "{cmd:file write} {it:handle} {cmd:(2+2)}"，您可能希望编码

{phang2}{cmd:file write} {it:handle} {cmd:(2+2)} {cmd:_n}

{pstd}
由于 Stata 仅在您指定的位置输出行结束字符，因此编码

{phang2}{cmd:file write} {it:handle} {cmd:"first part is " (2+2)} {cmd:_n}

{pstd}
具有与编码相同的效果

{phang2}{cmd:file write} {it:handle} {cmd:"first part is "}{p_end}
{phang2}{cmd:file write} {it:handle} {cmd:(2+2)} {cmd:_n}

{pstd}
甚至可以

{phang2}{cmd:file write} {it:handle} {cmd:"first part is "}{p_end}
{phang2}{cmd:file write} {it:handle} {cmd:(2+2)}{p_end}
{phang2}{cmd:file write} {it:handle} {cmd:_n}

{pstd}
{cmd:file} {cmd:write} 可以写入的行长度没有限制，因为就 {cmd:file} {cmd:write} 而言，{cmd:_n} 只是另一个字符。 但是 {cmd:_col(}{it:#}{cmd:)} 指令将在您写入超过 2,147,483,646 个字符的行时失去计数（{cmd:_col(}{it:#}{cmd:)} 跳过到指定列）。通常，我们建议您不要写入超过 165,199 个字符的行，因为使用 {cmd:file} {cmd:read} 读取超过该长度的行更加困难。

{pstd}
我们说 {cmd:_n} 只是另一个字符，但我们应该说字符或字符。 {cmd:_n} 输出适合您操作系统的行结束字符，这意味着在 Windows 中为两个字符的回车符后接换行符，在 Mac 中为一个字符的回车符，以及在 Unix 中为一个字符的换行符。


{marker 2.2}{...}
{title:读取文本文件}

{pstd}
读取文本文件的命令与写入它们的命令相似：

{phang2}{cmd:file open} {it:handle} {cmd:using} {it:filename}{cmd:, read text}{p_end}
{phang2}{cmd:file read} {it:handle} {it:localmacroname}{p_end}
	...
	{cmd:file close} {it:handle}

{pstd}
{cmd:file} {cmd:read} 命令有一个语法：

{phang2}{cmd:file read} {it:handle} {it:localmacroname}

{pstd}
从文件中读取一行，并将其放入 {it:localmacroname} 中。 例如，要从文件 {cmd:myfile} 中读取一行并将其放入局部宏行中，您可以编码

	{cmd:file read myfile line}

{pstd}
此后在您的代码中，您可以引用 {cmd:`line'} 以获取刚刚读取的行的内容。 下面的程序将合理地显示文件的内容，在行前加上行号：

	{cmd:program ltype}
		{cmd:version {ccl stata_version}}
		{cmd:local 0 `"using `0'"'}
		{cmd:syntax using/}
		{cmd:tempname fh}
		{cmd:local linenum = 0}
		{cmd:file open `fh' using `"`using'"', read}
		{cmd:file read `fh' line}
		{cmd:while r(eof)==0 {c -(}}
			{cmd:local linenum = `linenum' + 1}
			{cmd:display %4.0f `linenum' _asis `"  `macval(line)'"'}
			{cmd:file read `fh' line}
		{cmd:{c )-}}
		{cmd:file close `fh'}
	{cmd:end}

{pstd}
在上面的程序中，我们使用 {cmd:tempname} 来获得文件句柄的临时名称。 这样做可以确保文件即使在用户按下 {hi:Break} 时也能正确关闭，而我们的程序正在显示行，因此从未执行 {cmd:file close `fh'}.  实际上，我们的 {cmd:file close `fh'} 行是多余的。

{pstd}
我们还使用 {cmd:r(eof)} 来确定何时结束文件。 {cmd:file} {cmd:read} 将 {cmd:r(eof)} 设置为在文件结束前包含 0，而在遇到文件结束后为 1；请参见 {it:{help file##stored_results:存储结果}}。

{pstd}
我们在 {cmd:display} 中包含 {cmd:_asis} 以避免文件中包含大括号或 SMCL 命令。这些将被解释，而我们希望抑制这种解释，以便 {cmd:ltype} 能够准确显示文件中的行；请参见 {manhelp smcl P}. 我们还使用 {mansection P macroRemarksandexamplesmacval():{bf:macval()}} 宏函数获取 {cmd:`line'} 中的内容，而不递归展开行的内容。


{marker 2.3}{...}
{title:在读取和写入文本文件时使用 seek}

{pstd}
您可以在读取或写入文本文件时使用 {cmd:file} {cmd:seek}，尽管实际上很少使用，除了与 {cmd:read} {cmd:write} 文件相关，而且即便如此，也很少与文本文件一起使用。

{pstd}
有关 {cmd:file} {cmd:seek} 的描述，请参见 {it:{help file##3.4:在读取和写入二进制文件时使用 seek}}， {cmd:seek} 在文本和二进制文件中的工作方式相同，然后请记住以下几点：

{p 8 11 2}
o{space 2} 在 "{cmd:file} {cmd:seek} {it:handle} {it:#}" 中的 {it:#} 指的是字节位置，而不是行号。  "{cmd:file} {cmd:seek} {it:handle} {cmd:5}" 的意思是寻址到文件的第五个字节，而不是第五行。

{p 8 11 2}
o{space 2} 手动计算字节偏移量时，请记住行结束字符在 Mac 和 Unix 下为 1 字节，而在 Windows 下为 2 字节。

{p 8 11 2}
o{space 2} 仅当新行和旧行长度相同的时候，才能如预期那样重写文本文件中的一行。


{marker 3.1}{...}
{title:读取和写入二进制文件}

{pstd}
考虑您是否要阅读此部分。与二进制文件相关的潜在陷阱很多，理论上，一个编写不当的二进制 I/O 程序可以导致 Stata 崩溃。

{pstd}
二进制文件由 Stata 可以理解的二进制元素组成，如下所示：

    元素                                          对应格式
    {hline 69}
    单字符和多字符字符串                    {cmd:%1s} 和 {cmd:%}{it:#}{cmd:s}
    有符号和无符号 1 字节二进制整数        {cmd:%1b}、{cmd:%1bs} 和 {cmd:%1bu}
    有符号和无符号 2 字节二进制整数        {cmd:%2b}、{cmd:%2bs} 和 {cmd:%2bu}
    有符号和无符号 4 字节二进制整数        {cmd:%4b}、{cmd:%4bs} 和 {cmd:%4bu}
    4 字节 IEEE 浮点数                          {cmd:%4z}
    8 字节 IEEE 浮点数                          {cmd:%8z}
    {hline 69}

{pstd}
这些类型之间的差异仅限于解释。例如，存储为 1 字节二进制整数的十进制数 72 也代表字符 H。 如果文件包含 1 字节整数 72，并且您使用格式 {cmd:%1s} 读取字节，您将返回字符 "H"；而如果文件包含字符 "H" 并且您使用格式 {cmd:%1bu} 读取字节，您将得到数字 72；72 和 H 在表示相同位模式的情况下是无法区分的。该位模式是否表示 72 或 H 取决于您使用的格式，即您对字段的解释。

{pstd}
类似的等价关系适用于其他元素。二进制文件不只是无符号 1 字节整数的序列，其中的整数有时会给出不同的解释或分组并赋予解释。实际上，您只需使用格式 {cmd:%1bu}，就可以读取或写入任何内容。然而，其他格式使编程更方便。

                                                                    缺失
    格式  长度   类型               最小         最大     值？
    {hline 71}
    {cmd:%1bu}      1    无符号字节              0             255       否
    {cmd:%1bs}      1    有符号字节             -127             127       否
    {cmd:%1b}       1    Stata 字节              -127             100       是

    {cmd:%2bu}      2    无符号短整型         0          65,535       否
    {cmd:%2bs}      2    有符号短整型     -32,767          32,767       否
    {cmd:%2b}       2    Stata 整型            -32,767          32,740       是

    {cmd:%4bu}      4    无符号整型             647   4,294,967,295       否
    {cmd:%4bs}      4    有符号整型    -2,147,483,647   2,147,483,647       否
    {cmd:%4b}       4    Stata 长整型    -2,147,483,647   2,147,483,620       是

    {cmd:%4z}       4    浮点数                 -10^38           10^38       是
    {cmd:%8z}       8    双精度浮点数        -10^307          10^307       是
    {hline 71}

{pstd}
写入二进制文件时，您必须决定使用哪种格式来写入每个元素。当您读取二进制文件时，您必须提前知道为每个元素使用的格式。


{marker 3.2}{...}
{title:写入二进制文件}

{pstd}
与文本文件一样，您打开文件，重复写入，然后关闭文件：

{phang2}{cmd:file open} {it:handle} {cmd:using} {it:filename}{cmd:, write binary}{p_end}
	{cmd:file write} {it:handle} ...
	...
	{cmd:file close} {it:handle}

{pstd}
{cmd:file} {cmd:write} 命令可以包含以下元素：

	{cmd:%}{c -(}{cmd:8}|{cmd:4}{c )-}{cmd:z}        {cmd:(}{it:exp}{cmd:)}
	{cmd:%}{c -(}{cmd:4}|{cmd:2}|{cmd:1}{c )-}{cmd:b}[{cmd:s}|{cmd:u}] {cmd:(}{it:exp}{cmd:)}
	{cmd:%}{it:#}{cmd:s}            {cmd:"}{it:text}{cmd:"}{col 40}(1 {ul:<} {it:#} {ul:<} {cmd:max_macrolen})
	{cmd:%}{it:#}{cmd:s}            {cmd:`"}{it:text}{cmd:"'}
	{cmd:%}{it:#}{cmd:s}            {cmd:(}{it:exp}{cmd:)}

{pstd}
例如，要写入 "test file" ，然后写入 2、2 + 2 和 3 * 2 以各种形式表示，您可以编码

{phang2}{cmd:. file write} {it:handle} {cmd:%9s "test file" %8z (2) %4b (2+2) %1bu (3*2)}

{pstd}
或

{phang2}{cmd:. file write} {it:handle} {cmd:%9s "test file"}{p_end}
{phang2}{cmd:. file write} {it:handle} {cmd:%8z (2) %4b (2+2) %1bu (3*2)}

{pstd}
甚至可以

{phang2}{cmd:. file write} {it:handle} {cmd:%9s "test file" }{p_end}
{phang2}{cmd:. file write} {it:handle} {cmd:%8z (2) }{p_end}
{phang2}{cmd:. file write} {it:handle} {cmd:%4b (2+2) %1bu (3*2)}

{pstd}
等等。

{pstd}
您可以使用格式 {cmd:%}{it:#}{cmd:s} 写入字符串，使用格式 {cmd:%b} 或 {cmd:%z} 写入数字。有关字符串的事项是，{it:#} 在 {cmd:%}{it:#}{cmd:s} 中应大于或等于要写入的字符串的字节长度。如果 {it:#} 太小，则仅会写入该字符串的部分字符。因此

{phang2}{cmd:. file write} {it:handle} {cmd:%4s "test file"}

{pstd}
将 "test" 写入文件，并将文件定位在第五个字节。执行该操作没有错误（"test" 可以很容易读回），但这可能不是您打算写入的。

{pstd}
同样，关于字符串，您可以输出字符串文字——只需将字符串放在引号中——或者您可以输出字符串表达式的结果。表达式，在使用 {cmd:file} {cmd:write} 输出文本文件时，必须用括号括起来：

{phang2}{cmd:. file write} {it:handle} {cmd:%4s (substr(a,2,6))}

{pstd}
下面的程序将用户指定的矩阵输出到用户指定的文件；所实现命令的语法是

{phang2}{cmd:mymatout1} {it:matname} {cmd:using} {it:filename} [{cmd:, replace}]

{pstd}
代码如下：

	{cmd:program mymatout1}
		{cmd:version {ccl stata_version}}
		{cmd:gettoken mname 0 : 0 }
		{cmd:syntax using/ [, replace]}

		{cmd:local r = rowsof(`mname')}
		{cmd:local c = colsof(`mname')}

		{cmd:tempname hdl}
		{cmd:file open `hdl' using `"`using'"', `replace' write binary}

		{cmd:file write `hdl' %2b (`r') %2b (`c')}
		{cmd:forvalues i=1(1)`r' {c -(}}
			{cmd:forvalues j=1(1)`c' {c -(}}
				{cmd:file write `hdl' %8z (`mname'[`i',`j'])}
			{cmd:{c )-}}
		{cmd:{c )-}}
		{cmd:file close `hdl'}
	{cmd:end}

{pstd}
{cmd:mymatout1} 中的一个重要问题是，如果我们在我们的 Unix 计算机（基于 Intel 的计算机）上写入矩阵并将文件复制到基于 SPARC 的计算机上，我们将发现无法读取该文件。Intel 计算机以最不重要的字节优先的方式写入多字节数字；基于 SPARC 的计算机以最重要的字节优先的方式写入。 很难知道您的计算机怎么做。因此，尽管在计算机 written 的字符和数字的书写方式上通常达成共识，但这种字节序差异足以阻止二进制文件。

{pstd}
{cmd:file} 可以处理此问题，但您需要插入一些代码。建议的过程是：在文件中写入任何数字之前，写入一个字段说明此计算机使用的字节顺序（请参见 {helpb byteorder()} 函数）。
稍后，当我们编写命令读取文件时，它将读取我们记录的顺序。 然后，我们将告知 {cmd:file} 文件使用的字节顺序，并且 {cmd:file} 本身将在必要时重新排列字节。 我们可以通过其他方式处理此问题——例如，总是以已知字节顺序写入——但推荐的程序更好，因为它通常更快。大多数文件在编写它们的同一台计算机上读取，因此计算机在此后不需要浪费时间重新排列字节。

{pstd}
{cmd:mymatout1} 的改进版本是

	program {cmd:mymatout2}
		version {ccl stata_version}
		gettoken mname 0 : 0
		syntax using/ [, replace]

		local r = rowsof(`mname')
		local c = colsof(`mname')

		tempname hdl
		file open `hdl' using `"`using'"', `replace' write binary

  /* new */     {cmd:file write `hdl' %1b (byteorder())}

		file write `hdl' %2b (`r') %2b (`c')
		forvalues i=1(1)`r' {c -(}
			forvalues j=1(1)`c' {c -(}
				file write `hdl' %8z (`mname'[`i',`j'])
			{c )-}
		{c )-}
		file close `hdl'
	end

{pstd}
{cmd:byteorder()} 返回 1 如果机器是 hilo，返回 2 如果是 lohi，但所有重要的是，它的小于等于字节。 重要的是，我们使用 {cmd:%1b} 写入这个数字，关于这一点没有字节顺序争议。稍后我们将处理该数字。

{pstd}
我们程序的第二个重要问题是它未写入签名。二进制文件很难区分：它们都看起来像二进制垃圾。重要的是在文件顶部包含某种标记，说明谁写了此文件以及以什么格式写入。该标记称为签名。 我们将使用的签名是

			{cmd:mymatout 1.0.0}

{pstd}
我们将在文件的第一件事中写入该 14 字节长的字符串，以便稍后当我们写入 {cmd:mymatin} 时，可以读取该字符串并验证它是否包含我们预期的内容。签名行应始终包含通用身份（这里是 {cmd:mymatout}）以及版本号，如果我们修改输出程序以更改输出格式，我们就可以更改版本号。 这样，错误的输入程序不能与更新的文件格式一起使用。

{pstd}
我们的改进程序是

	program {cmd:mymatout3}
		version {ccl stata_version}
		gettoken mname 0 : 0
		syntax using/ [, replace]

		local r = rowsof(`mname')
		local c = colsof(`mname')

		tempname hdl
		file open `hdl' using `"`using'"', `replace' write binary

  /* new */     {cmd:file write `hdl' %14s "mymatout 1.0.0"}
		file write `hdl' %1b (byteorder())

		file write `hdl' %2b (`r') %2b (`c')
		forvalues i=1(1)`r' {c -(}
			forvalues j=1(1)`c' {c -(}
				file write `hdl' %8z (`mname'[`i',`j'])
			{c )-}
		{c )-}
		file close `hdl'
	end

{pstd}
此程序工作正常。 编写相应的输入例程后（请参见 {it:{help file##3.3:读取二进制文件}} 下），我们注意到恢复的矩阵缺少其原始行和列名称，导致最后一轮更改：

	program {cmd:mymatout4}
		version {ccl stata_version}
		gettoken mname 0 : 0
		syntax using/ [, replace]

		local r = rowsof(`mname')
		local c = colsof(`mname')

		tempname hdl
		file open `hdl' using `"`using'"', `replace' write binary

  /* changed */ file write `hdl' %14s "mymatout 1.0.{cmd:1}"
		file write `hdl' %1b (byteorder())
		file write `hdl' %2b (`r') %2b (`c')

  /* new */     {cmd:local names : rownames `mname'}
  /* new */     {cmd:local len : length local names}
  /* new */     {cmd:file write `hdl' %4b (`len') %`len's `"`names'"'}

  /* new */     {cmd:local names : colnames `mname'}
  /* new */     {cmd:local len : length local names}
  /* new */     {cmd:file write `hdl' %4b (`len') %`len's `"`names'"'}

		forvalues i=1(1)`r' {c -(}
			forvalues j=1(1)`c' {c -(}
				file write `hdl' %8z (`mname'[`i',`j'])
			{c )-}
		{c )-}
		file close `hdl'
	end

{pstd}
在这个版本中，我们添加了必要的行以将行和列名称写入文件。 我们通过编码写入行名称

		{cmd:local names : rownames `mname'}
		{cmd:local len : length local names}
		{cmd:file write `hdl' %4b (`len') %`len's `"`names'"'}

{pstd}
并以同样的方式写入列名称。 这里有趣的是，我们需要将长度可变的字符串写入我们的二进制文件。 一种解决方案是

		{cmd:file write `hdl' %165199s `"`mname'"'}

{pstd}
但由于通常情况下，名称远远小于 165,199 字节，这将是低效的。 解决方案是获取要写入的字符串的长度，然后将长度写入文件。 在上面的代码中，宏 {cmd:`len'} 包含长度，我们写入 {cmd:`len'} 作为 4 字节整数，然后使用 {cmd:%`len's} 格式写入字符串。 考虑当 {cmd:`len'} 等于 50 时会发生什么。 我们将 50 写入文件，然后使用 {cmd:%50s} 格式写入字符串。 稍后，当我们读取该文件时，可以反转此过程，读取长度，然后使用适当的格式。

{pstd}
我们还将签名从 "mymatout 1.0.0" 更改为 "mymatout 1.0.1"，因为文件格式发生了变化。 进行该更改可确保旧的读取程序不会尝试读取更新的文件格式（从而导致不正确的结果）。

{hline}
{p 4 4 4}
    {it:技术说明：}
    您可以使用 {cmd:%}{it:#}{cmd:s} 格式写入字符串，该格式可以比要写入字符串的长度窄、相等或宽。 当格式太窄时，仅写入数量的字符。 当格式和字符串长度相等时，写入整个字符串。 当格式宽于字符串时，写入整个字符串，然后用二进制零填充文件中的多余位置。

{p 4 4 4}
    二进制零在字符串中是特殊的，因为二进制表示字符串的结束。因此，当您读取字符串时，即使它是在一个过宽的字段中写入的，它也会完全如原来一样出现。
{p_end}
{hline}


{marker 3.3}{...}
{title:读取二进制文件}

{pstd}
您读取二进制文件的方式与写入方式相同，

{phang2}{cmd:file open} {it:handle} {cmd:using} {it:filename}{cmd:, read binary}{p_end}
	{cmd:file read} {it:handle} ...
	...
	{cmd:file close} {it:handle}

{pstd}
在读取时，您必须小心指定与写入文件时相同的格式。

{pstd}
将读取 {cmd:mymatout1} 写入的矩阵的程序如下所示，语法为

	{cmd:mymatin1} {it:matname} {it:filename}

{pstd}
代码如下：

	{cmd:program mymatin1}
		{cmd:version {ccl stata_version}}
		{cmd:gettoken mname 0 : 0 }
		{cmd:syntax using/}

		{cmd:tempname hdl}
		{cmd:file open `hdl' using `"`using'"', read binary}

		{cmd:tempname val}
		{cmd:file read `hdl' %2b `val'}
		{cmd:local r = `val'}
		{cmd:file read `hdl' %2b `val'}
		{cmd:local c = `val'}

		{cmd:matrix `mname' = J(`r', `c', 0)}
		{cmd:forvalues i=1(1)`r' {c -(}}
			{cmd:forvalues j=1(1)`c' {c -(}}
				{cmd:file read `hdl' %8z `val'}
				{cmd:matrix `mname'[`i',`j'] = `val'}
			{cmd:{c )-}}
		{cmd:{c )-}}
		{cmd:file close `hdl'}
	{cmd:end}

{pstd}
当 {cmd:file} {cmd:read} 读取数值时，它们始终存储在 {cmd:scalar} 中（请参见 {help scalar_zh:[P] scalar}），您在二进制数值格式之后直接指定标量的名称。这里我们使用名为 {cmd:`val'} 的标量，其中 {cmd:`val'} 是通过 {cmd:tempname} 获得的名称。我们同样可以使用固定名称，例如 {cmd:myscalar}，因此第一条 {cmd:file} {cmd:read} 将变为

		{cmd:file read `hdl' %2b myscalar}

{pstd}
我们将在 {cmd:myscalar} 出现的地方做相应替换，但这将使我们的程序不那么优雅。如果用户以前在名称 {cmd:myscalar} 下存储了一个值，我们的值将替换掉它。

{pstd}
在 {cmd:mymatout} 的第二个版本中，我们包含字节顺序。相应改进的 {cmd:mymatin} 版本为

	program {cmd:mymatin2}
		version {ccl stata_version}
		gettoken mname 0 : 0
		syntax using/

		tempname hdl
		file open `hdl' using `"`using'"', read binary

		tempname val
  /* new */     {cmd:file read `hdl' %1b `val'}
  /* new */     {cmd:local border = `val'}
  /* new */     {cmd:file set `hdl' byteorder `border'}

		file read `hdl' %2b `val'
		local r = `val'
		file read `hdl' %2b `val'
		local c = `val'

		matrix `mname' = J(`r', `c', 0)
		forvalues i=1(1)`r' {c -(}
			forvalues j=1(1)`c' {c -(}
				file read `hdl' %8z `val'
				matrix `mname'[`i',`j'] = `val'
			{c )-}
		{c )-}
		file close `hdl'
	end

{pstd}
我们只需将记录的值读回，然后 {cmd:file} {cmd:set} 它。
我们不能直接 {cmd:file} {cmd:set} {it:handle} {cmd:byteorder}
{cmd:`val'}，因为 {cmd:`val'} 是一个标量，而 {cmd:file}
{cmd:set} {cmd:byteorder} 的语法为

{p 8 19 2}
{cmd:file} {cmd:set} {it:handle} {cmd:byteorder}
{c -(}{cmd:hilo}|{cmd:lohi}|{cmd:1}|{cmd:2}{c )-}

{pstd}
也就是说，{cmd:file} {cmd:set} 准备看到一个数字（{cmd:1} 和 
{cmd:hilo} 意味着相同的事情， {cmd:2} 和 {cmd:lohi} 也一样），但该数字必须是文字（字符 {cmd:1} 或 {cmd:2}），因此我们必须将 {cmd:`val'} 复制到宏中，才能使用它。然而，一旦我们设置字节顺序，我们就可以依赖 {cmd:file} 在需要时为我们重新排列字节。

{pstd}
在 {cmd:mymatout} 的第三个版本中，我们添加了签名。 在下面的修改中，我们使用 {cmd:%14s} 格式读取签名。 字符串被复制到局部宏中，并且我们必须在格式后指定局部宏的名称：

	program {cmd:mymatin3}
		version {ccl stata_version}
		gettoken mname 0 : 0
		syntax using/

		tempname hdl
		file open `hdl' using `"`using'"', read binary

  /* new */     {cmd:file read `hdl' %14s signature}
  /* new */     {cmd:if "`signature'" != "mymatout 1.0.0" {c -(}}
  /* new */             {cmd:disp as err "file not mymatout 1.0.0"}
  /* new */             {cmd:exit 610}
  /* new */     {cmd:{c )-}}

		tempname val
		file read `hdl' %1b `val'
		local border = `val'
		file set `hdl' byteorder `border'

		file read `hdl' %2b `val'
		local r = `val'
		file read `hdl' %2b `val'
		local c = `val'

		matrix `mname' = J(`r', `c', 0)
		forvalues i=1(1)`r' {c -(}
			forvalues j=1(1)`c' {c -(}
				file read `hdl' %8z `val'
				matrix `mname'[`i',`j'] = `val'
			{c )-}
		{c )-}
		file close `hdl'
	end

{pstd}
在第四个也是最后一个版本中，我们写入行和列名称。 
我们写入名称的方法是首先在其前面写入一个 4 字节整数来记录其宽度：

	program {cmd:mymatin4}
		version {ccl stata_version}
		gettoken mname 0 : 0
		syntax using/

		tempname hdl
		file open `hdl' using `"`using'"', read binary

		file read `hdl' %14s signature
  /* changed */ if "`signature'" != "mymatout 1.0.{cmd:1}" {c -(}
  /* changed */         disp as err "file not mymatout 1.0.{cmd:1}"
			exit 610
		{c )-}

		tempname val
		file read `hdl' %1b `val'
		local border = `val'
		file set `hdl' byteorder `border'

		file read `hdl' %2b `val'
		local r = `val'
		file read `hdl' %2b `val'
		local c = `val'

		matrix `mname' = J(`r', `c', 0)

  /* new */     {cmd:file read `hdl' %4b `val'}
  /* new */     {cmd:local len = `val'}
  /* new */     {cmd:file read `hdl' %`len's names}
  /* new */     {cmd:matrix rownames `mname' = `names'}

  /* new */     {cmd:file read `hdl' %4b `val'}
  /* new */     {cmd:local len = `val'}
  /* new */     {cmd:file read `hdl' %`len's names}
  /* new */     {cmd:matrix colnames `mname' = `names'}

		forvalues i=1(1)`r' {c -(}
			forvalues j=1(1)`c' {c -(}
				file read `hdl' %8z `val'
				matrix `mname'[`i',`j'] = `val'
			{c )-}
		{c )-}
		file close `hdl'
	end


{marker 3.4}{...}
{title:在读取和写入二进制文件时使用 seek}

{pstd}
几乎所有 I/O 程序都在不使用 {cmd:file} {cmd:seek} 的情况下编写。 {cmd:file} {cmd:seek} 更改您在文件中的位置。 通常，您从文件的开头开始，按顺序遍历字节。 {cmd:file} {cmd:seek} 允许您后退或跳过。

{pstd}
{cmd:file} {cmd:seek} {it:handle} {cmd:query} 实际上不会更改您在文件中的位置；它仅返回当前的位置，保存在标量 {cmd:r(loc)} 中，文件中的第一个字节编号为 0，第二个为 1，以此类推。 实际上，所有 {cmd:file} {cmd:seek} 命令都返回 {cmd:r(loc)}，但 {cmd:file} {cmd:seek} {cmd:query} 是唯一仅执行该操作的命令。

{pstd}
{cmd:file} {cmd:seek} {it:handle} {cmd:tof} 移动到文件的开头（顶部）。这对于您希望再次读取文件时在 {cmd:read} 文件中很有用，但您也可以在 {cmd:write} 文件中寻址到 tof，当然也可以在 {cmd:read} {cmd:write} 文件中。（关于 {cmd:read} 文件：您可以在提起文件结束条件的前后寻址以到达顶部或任何点。）

{pstd}
{cmd:file} {cmd:seek} {it:handle} {cmd:eof} 移动到文件的末尾。这仅对 {cmd:write} 文件（或 {cmd:read} {cmd:write} 文件）有用，但也可以在 {cmd:read} 文件中使用。

{pstd}
{cmd:file} {cmd:seek} {it:handle} {it:#} 移动到指定位置。 {it:#} 以字节为单位从文件开头开始计算，单位与 {cmd:r(loc)} 中报告的单位相同。 {cmd:file} {cmd:seek} {it:handle} {cmd:0} 相当于 {cmd:file} {cmd:seek} {it:handle} {cmd:tof}。

{hline}
{p 4 4 4}
    {it:技术说明：}
    当文件以 {cmd:write} {cmd:append} 打开时，您不能使用 {cmd:file} {cmd:seek}。 如果需要在文件中定位，请以 {cmd:read} {cmd:write} 方式打开文件。
{p_end}
{hline}


{marker A1}{...}
{title:附录 A1: 与文件一起使用的有用命令和函数}

{p 5 9 2}
    o   当打开文件 {cmd:read write} 或 {cmd:write append} 时，{cmd:file} 的操作取决于文件是否已存在。 {cmd:confirm file} （请参见 {help confirm_zh:[P] confirm}）可以告诉您文件是否存在；在打开文件之前使用它。

{p 5 9 2}
    o   要获取写入二进制文件时字符串的长度，请使用宏函数 {cmd:length}：

	    {cmd:local length : length local mystr}
	    {cmd:file write} {it:handle} {cmd:%`length's `"`mystr'"'}

{p 9 9 2}
	有关详细信息，请参见 {it:{help macro##parsing_desc:宏函数解析}} 在 {bf:[P] 宏} 中。

{p 5 9 2}
    o   为了写入可移植的二进制文件，我们建议以自然字节顺序写入并在文件中记录字节顺序。然后，可以通过读取字节顺序并设置它来读取文件：

	    写入：
		{cmd:file write handle %1b (byteorder())}

	    读取：
		{cmd:tempname mysca}
		{cmd:file read handle %1b `mysca'}
		{cmd:local b_order = `mysca'}
		{cmd:file set handle byteorder `b_order'}

{p 9 9 2}
	{helpb byteorder()} 函数根据所使用的计算机以 hilo 或 lohi 格式记录数据，返回 1 或 2。


{marker A2}{...}
{title:附录 A2: 超出范围值的二进制输出格式的行为}

{pstd}
假设您使用 {cmd:%1b} 格式写入数字 2,137。当您使用 {cmd:%1b} 格式读取该字段时，您将得到什么值？ 在这里，答案是 {bf:.}，Stata 的缺失值，因为 {cmd:%1b} 格式是 {cmd:%1bs} 的变体，支持 Stata 的缺失值。如果您使用 {cmd:%1bs} 写入 2,137，则将读取为 127；如果使用 {cmd:%1bu} 写入，则将读取为 255。

{pstd}
一般来说，在 Stata 变更中，支持缺失值，并且超出范围的数字写为缺失。在剩余的格式中，最小值或最大值写为

                                            值写入时的情况 ...
  格式        最小值       最大值        太小       太大
  {hline 72}
   {cmd:%1bu}                 0             255                0             255
   {cmd:%1bs}              -127             127             -127             127
   {cmd:%1b}               -127             100                {bf:.}               {bf:.}

   {cmd:%2bu}                 0          65,535                0          65,535
   {cmd:%2bs}           -32,767          32,767          -32,767          32,767
   {cmd:%2b}            -32,767          32,740                {bf:.}               {bf:.}

   {cmd:%4bu}                 0   4,294,967,295                0   4,294,967,295
   {cmd:%4bs}    -2,147,483,647   2,147,483,647   -2,147,483,647   2,147,483,647
   {cmd:%4b}     -2,147,483,647   2,147,483,620                {bf:.}               {bf:.}

   {cmd:%4z}             -10^38           10^38                {bf:.}               {bf:.}
   {cmd:%8z}            -10^307          10^307                {bf:.}               {bf:.}
  {hline 72}

{pstd}
在上表中，如果您写入 {bf:.}（缺失值），则将其视为编写一个大于允许范围最大值的值。

{pstd}
如果您使用整数格式写入非整数值，则结果将被截断为整数。 例如，使用 {cmd:%2b} 格式写入 124.75 等价于写入 124。


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:file read} 将以下内容存储在 {cmd:r()} 中： 

{synoptset 27 tabbed}{...}
{p2col 5 27 30 2: 标量}{p_end}
{synopt:{cmd:r(eof)}}{cmd:1} 表示到达文件末尾，{cmd:0} 则表示其他情况{p_end}

{synoptset 27 tabbed}{...}
{p2col 5 27 30 2: 宏}{p_end}
{synopt:{cmd:r(status)} (如果 {cmd:text} 文件)}{cmd:win}{space 4}读取行；行以 cr-lf 结束{p_end}
{synopt:}{cmd:mac}{space 4}读取行；行以 cr 结束{p_end}
{synopt:}{cmd:unix}{space 3}读取行；行以 lf 结束{p_end}
{synopt:}{cmd:split}{space 2}读取行；行过长，因此被拆分{p_end}
{synopt:}{cmd:none}{space 3}读取行；行未终止{p_end}
{synopt:}{cmd:eof}{space 4}由于到达文件末尾未读取行{p_end}

{pstd}
{cmd:r(status)}={cmd:split} 表示 {cmd:c(macrolen)} - 1 
(33{cmd:maxvar}+199 对于 Stata/MP 和 Stata/SE，165,199 对于 Stata/IC)
字符的行已返回，下一条 {cmd:file} {cmd:read} 将在最后读取的地方继续。

{pstd}
{cmd:r(status)}={cmd:none} 表明整个行已返回，未找到行结束字符，并且下一条 {cmd:file} {cmd:read} 将返回 {cmd:r(status)}={cmd:eof}。

{pstd}
如果 {cmd:r(status)}={cmd:eof} ({cmd:r(eof)}=1)，则将行读取到的局部宏包含 {cmd:""}。然而，包含 {cmd:""} 的局部宏并不意味着文件结束，因为该行可能只是空行。

{pstd}
{cmd:file seek} 将以下内容存储在 {cmd:r()} 中：

{synoptset 27 tabbed}{...}
{p2col 5 27 30 2: 标量}{p_end}
{synopt:{cmd:r(loc)}}文件的当前位置{p_end}

{pstd}
{cmd:file query} 将以下内容存储在 {cmd:r()} 中：

{synoptset 27 tabbed}{...}
{p2col 5 27 30 2: 标量}{p_end}
{synopt:{cmd:r(N)}}打开的文件数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <file.sthlp>}