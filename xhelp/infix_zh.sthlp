{smcl}
{* *! version 1.1.20  22mar2018}{...}
{viewerdialog infix "dialog infix"}{...}
{vieweralsosee "[D] infix (固定格式)" "mansection D infix(fixedformat)"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] infile (固定格式)" "help infile2_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "语法" "infix_zh##syntax"}{...}
{viewerjumpto "菜单" "infix_zh##menu"}{...}
{viewerjumpto "描述" "infix_zh##description"}{...}
{viewerjumpto "PDF文档链接" "infix_zh##linkspdf"}{...}
{viewerjumpto "选项" "infix_zh##options"}{...}
{viewerjumpto "规格" "infix_zh##specifications"}{...}
{viewerjumpto "示例" "infix_zh##examples"}
{help infix:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[D] infix (固定格式)} {hline 2}}导入固定格式的文本数据{p_end}
{p2col:}({mansection D infix(fixedformat):查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:infix}
{cmd:using}
{it:dfilename}
{ifin}
[{cmd:,} {opth using:(filename:filename2)} {opt clear}]

{p 8 14 2}
{cmd:infix}
{it:specifications}
{cmd:using}
{it:{help filename_zh}}
{ifin}
[{cmd:,} {opt clear}]

{phang}
如果 {it:dfilename} 没有指定扩展名，则默认为 {opt .dct}。
如果 {it:dfilename} 包含嵌入空格，请务必用双引号将其括起来。 {it:dfilename}（如果存在）包含

	{hline 21} 开始字典文件 {hline 3}
	{opt infix dictionary} [{opt using} {it:filename}] {cmd:{c -(}}
		{opt * 以}
		{opt * 星号开始的评论可以随意出现}
		{it:specifications}
	{cmd:{c )-}}
	{it:(你的数据可能出现在这里)}
	{hline 23} 结束字典文件 {hline 3}

{phang}
如果 {it:{help filename_zh}} 没有指定扩展名，则默认为 {opt .raw}。
如果 {it:filename} 包含嵌入空格，请务必用双引号将其括起来。

{pstd}
{it:specifications} 为

{p 8 14 2}{it:#} {opt first:lineoffile}{p_end}
{p 8 14 2}{it:#} {opt lines}{p_end}
{p 8 14 2}{it:#}{cmd::}{p_end}
{p 8 14 2}{cmd:/}{p_end}
{p 8 14 2}[{opt byte}|{opt int}|{opt float}|{opt long}|{opt double}|{opt str}]
{it:varlist} [{it:#}{cmd::}]{it:#}[{cmd:-}{it:#}]{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导入 > 使用字典的固定格式文本数据}


{marker description}{...}
{title:描述}

{pstd}
{opt infix} 从不是Stata格式的磁盘数据集中读取数据到内存中。
{opt infix} 要求数据采用固定列格式。 请注意，列是基于字节的。 列数意味着文件中的字节数。 文本文件 {it:filename} 被视为字节流，不假定任何 {mansection U 12.4.2.3Encodings:编码}。
如果字符串数据以ASCII或UTF-8编码，它们将被正确导入。

{pstd}
在第一种语法中，如果命令行上未指定 {cmd:using} {it:filename2}，且字典中未指定 {cmd:using} {it:filename}，则数据假定从闭合括号后的行开始。
{opt infix} 以两步过程读取数据。 首先，你创建一个描述数据如何记录的磁盘文件。 你告诉 {opt infix} 读取该文件——称为字典——然后从那里， {opt infix} 读取数据。
数据可以与字典在同一文件中，或在不同文件中。

{pstd}
在其第二种语法中，你可以直接在命令行告诉 {opt infix} 如何读取数据，而不需中间文件。

{pstd}
{opt infile} 和 {opt import delimited} 是 {opt infix} 的替代方案。
{opt infile} 同样可以读取固定格式的数据——见 {help infile2_zh}——并且可以读取自由格式的数据——见 {help infile1_zh}。 大多数人认为 {opt infix} 更容易用于读取固定格式数据，但 {opt infile} 的功能更多。 如果你的数据不是固定格式的，可以使用 {opt import delimited}; 见 {manhelp import_delimited D:导入分隔文件}。
{opt import delimited} 允许你指定源文件的编码，然后在导入期间转换为UTF-8编码。 如果你不确定 {opt infix} 是否可以满足你的需求，请查阅 {manhelp import D} 和 {findalias frdatain}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D infix(fixedformat)快速开始:快速开始}

        {mansection D infix(fixedformat)备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth using:(filename:filename2)} 指定包含数据的文件名。
如果未指定 {opt using()}，则假定数据跟随在 {it:dfilename} 中的字典后面，或者如果字典指定了其他文件名，则该文件被认为包含数据。
如果指定了 {opt using(filename2)}，则使用 {it:filename2} 获取数据，即使字典说的是其他文件。
如果 {it:filename2} 没有指定扩展名，则默认为 {opt .raw}。
如果 {it:filename2} 包含嵌入空格，请务必用双引号将其括起来。

{phang}{opt clear} 指定新数据可以替换当前内存中的数据。 为确保你不会丢失重要数据， {opt infix} 将拒绝读取新数据， 如果内存中已有数据。 {opt clear} 允许 {opt infix} 替换内存中的数据。 你还可以在读取新数据之前通过键入 {cmd:drop _all} 自行删除数据。


{marker specifications}{...}
{title:规格}

{phang}
{cmd:#} {cmd:firstlineoffile}（缩写为 {cmd:first}）通常很少指定。 它指明数据开始的文件行。 
当数据跟随在字典后面时，你不需要指定 {cmd:first}； {cmd:infix} 自己可以找出这一点。 只有当数据只出现在文件中，并且该文件的前几行包含标题或其他标记时，才可指定 {cmd:first}。

{pmore} 
    {cmd:first} 在规格中只能出现一次。

{phang} 
{it:#} {cmd:lines} 指定文件中每个观察的行数。 简单数据集通常有"{cmd:1} {cmd:lines}"。 大数据集每个观察通常会有多行（有时称为记录）。
{cmd:lines} 是可选的，即使每个观察有多于一行，因为 {cmd:infix} 有时可以自己找出。但如果 {cmd:1} {cmd:lines} 对于你的数据不正确，最好指定适当的行数。

{pmore}
    {cmd:lines} 在规格中只能出现一次。

{phang} 
{it:#}{cmd::} 让 {cmd:infix} 跳转到观察的第 {it:#} 行。考虑一个有 {cmd:4} {cmd:lines} 的文件，表示每个观察有四行。 
{cmd:2:} 表示跳到观察的第二行。 
{cmd:4:} 表示跳到观察的第四行。 
你可以向前或向后跳转： {cmd:infix} 不在乎，而且向前跳转到 {cmd:3:}、读取几个变量、再跳回到 {cmd:1:}、读取另一个变量、再跳回到 {cmd:3:} 是完全没有效率损失的。

{pmore}
    你不需要确保在规格的最后一行处于观察的最后一行。 
    {cmd:infix} 知道如何进入下一个观察，因为它知道你在哪里，并且它知道 {cmd:lines}， 每个观察的总行数。

{pmore}
    {it:#}{cmd::} 可以在规格中出现多次。

{phang}
{cmd:/} 是 {it:#}{cmd::} 的替代方案。 
{cmd:/} 向前移动一行。 {cmd://} 向前移动两行。 
我们不建议使用 {cmd:/}，因为 {it:#}{cmd::} 更好。 如果你当前在观察的第二行，想要到第六行，你可以输入 {cmd:////}，但如果你输入 {cmd:6:}，意义会更明确。

{pmore}
    {cmd:/} 可以在规格中出现多次。

{phang}
[ {cmd:byte} | {cmd:int} | {cmd:float} | {cmd:long} | {cmd:double} | {cmd:str} ]
{varlist} 
[{it:#}{cmd::}]{it:#}[{cmd:-}{it:#}]
指示 {cmd:infix} 读取一个变量，或者有时读取多个变量。

{pmore}
    最简单的形式是 {varname} {it:#}，例如 {cmd:sex} {cmd:20}。 
    这表示变量 {it:varname} 从当前行的第 {it:#} 列读取；变量 {cmd:sex} 从第20列读取；在这里，性别是一个一位的数字。

{pmore}
    {it:varname} {it:#}{cmd:-}{it:#}，例如 {cmd:age} {cmd:21-23}， 
    表示从指定列范围读取 {it:varname}； {cmd:age} 从第21到第23列读取；在这里，年龄是一个三位的数字。

{pmore} 
    你可以为变量添加存储类型前缀。 
    {cmd:str} {cmd:name} {cmd:25-44} 表示从第25到第44列读取字符串变量 {cmd:name}。 
    注意字符串变量 {cmd:name} 的字节数为 44-25+1 = 20。 
    如果不指定 {cmd:str}，则假定变量为数值型。 
    你可以选择指定数值子类型。如果指定了 {cmd:str}， {cmd:infix} 将自动分配适当的字符串变量类型，{cmd:str}{it:#}或{cmd:strL}。导入的字符串最多可以为100000个字节。

{pmore} 
    你可以指定多个变量，可以有或没有类型。 
    {cmd:byte} {cmd:q1-q5} {cmd:51-55} 意味着从第51至55列读取变量 {cmd:q1}、{cmd:q2}、{cmd:q3}、{cmd:q4} 和 {cmd:q5}，并将这五个变量存储为 {cmd:byte}。

{pmore}
    最后，你可以指定变量出现的行。 
    {cmd:age} {cmd:2:21-23} 表示年龄应从第二行的第21到第23列获得。 
    另一种方法是将 {it:#}{cmd::} 指令与输入变量指令组合在一起：  
    {cmd:: age 21-23}。 
    这有区别，但对于读取变量 {cmd:age} 并没有影响。 
    我们考虑两个替代方案：

            {cmd:1:  str name 25-44     age 2:21-23   q1-q5 51-55}

            {cmd:1:  str name 25-44  2: age 21-23     q1-q5 51-55}

{pmore}
    区别在于第一个指令表示变量 {cmd:q1} 到 {cmd:q5} 在第一行，而第二个表示它们在第二行。

{pmore} 
    当冒号放在前面时，它指示变量在哪一行被找到，除非我们明确说其他。 
    当冒号置于内部时，仅适用于所考虑的变量。


{marker examples}{...}
{title:第一种语法的示例}

{phang2}{cmd:. infix rate 1-4 speed 6-7 acc 9-11 using highway.raw}{p_end}
{phang2}{cmd:. infix rate 1-4 speed 6-7 acc 9-11 using highway.raw if rate>2}{p_end}
{phang2}{cmd:. infix rate 1-4 speed 6-7 acc 9-11 using highway.raw in 1/100}


{title:第二种语法的示例}

{phang2}{cmd:. infix using highway.dct}{p_end}
{phang2}{cmd:. infix using highway.dct if rate>2}{p_end}
{phang2}{cmd:. infix using highway.dct in 1/100}

{pstd}
其中 {hi:highway.dct} 包含

	{hline 13} 开始 highway.dct {hline 4}
	{cmd:infix dictionary using highway.raw {c -(}}
		{cmd:rate  1-4}
		{cmd:speed 6-7}
		{cmd:acc 9-11}
	{cmd:{c )-}}
	{hline 13} 结束 highway.dct {hline 6}


{title:读取字符串变量和多行的示例}

{phang2}{cmd:. infix 2 lines 1: id 1-6 str name 7-36 2: age 1-2 sex 4 using emp.raw}{p_end}
    或
{phang2}{cmd:. infix using emp.dct}

{pstd}
其中 {bf:emp.dct} 包含

	{hline 13} 开始 emp.dct {hline 4}
	{cmd:infix dictionary using emp.raw {c -(}}
		{cmd:2 lines}
		{cmd:1:}
			{cmd:id        1-6}
			{cmd:str name  7-36}
		{cmd:2:}
			{cmd:age       1-2}
			{cmd:sex       4}
	{cmd:{c )-}}
	{hline 13} 结束 emp.dct {hline 6}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <infix.sthlp>}