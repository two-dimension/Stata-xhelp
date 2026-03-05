{smcl}
{* *! version 1.2.12  22mar2018}{...}
{viewerdialog "infile (fixed format)" "dialog infile_dict"}{...}
{vieweralsosee "[D] infile (fixed format)" "mansection D infile(fixedformat)"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] infile (free format)" "help infile1_zh"}{...}
{vieweralsosee "[D] infix (fixed forma)" "help infix_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "infile2_zh##syntax"}{...}
{viewerjumpto "Menu" "infile2_zh##menu"}{...}
{viewerjumpto "Description" "infile2_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "infile2_zh##linkspdf"}{...}
{viewerjumpto "Options" "infile2_zh##options"}{...}
{viewerjumpto "Dictionary directives" "infile2_zh##dict_dir"}{...}
{viewerjumpto "Examples" "infile2_zh##examples"}
{help infile2:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[D] infile (fixed format)} {hline 2}}使用字典导入固定格式文本数据{p_end}
{p2col:}({mansection D infile(fixedformat):查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{opt inf:ile} {help using_zh} {it:dfilename} {ifin} [{cmd:,} {it:options}]

{phang}
如果 {it:dfilename} 未指定扩展名，则假定为 {cmd:.dct}。
如果 {it:dfilename} 包含嵌入空格，请务必用双引号将其括起来。

{synoptset 19 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :Main}
{synopt :{opth u:sing(infile2##filename:filename)}}文本数据集文件名{p_end}
{synopt :{opt clear}}替换内存中的数据{p_end}

{syntab :Options}
{synopt :{opt a:utomatic}}从非数值数据创建值标签{p_end}
{synopt :{opt ebcdic}}将文本数据集视为 EBCDIC{p_end}
{synoptline}
{p2colreset}{...}


{pstd}
字典是一个文本文件，可以用 Do-file 编辑器或 Stata 以外的编辑器创建。该文件指定 Stata 应如何从文本文件中读取固定格式数据。字典的语法为

	{hline 38} 开始字典文件 {hline 4}
	[{cmd:infile}] {cmd:dictionary} [{cmd:using} {it:filename}] {cmd:{c -(}}
		{cmd:* 注释可以随意包含}
		{cmd:_lrecl(}{it:#}{cmd:)}
		{cmd:_firstlineoffile(}{it:#}{cmd:)}
		{cmd:_lines(}{it:#}{cmd:)}

		{cmd:_line(}{it:#}{cmd:)}
		{cmd:_newline}[{cmd:(}{it:#}{cmd:)}]

		{cmd:_column(}{it:#}{cmd:)}
		{cmd:_skip}[{cmd:(}{it:#}{cmd:)}]

		[{it:type}] {it:varname} [{cmd::}{it:lblname}] [{cmd:%}{it:infmt}] [{cmd:"}{it:variable label}{cmd:"}]
	{cmd:{c )-}}
	{it:(您的数据可能出现在这里)}
	{hline 38} 结束字典文件 {hline 6}

{p 4 6 2}
其中 {cmd:%infmt} 为 {c -(} {cmd:%}[{opt #}[{opt .#}]]
{c -(}{opt f}|{opt g}|{opt e}{c )-} | {cmd:%}[{opt #}]{opt s}
             | {cmd:%}[{opt #}]{opt S}{c )-}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导入 > 使用字典的固定格式文本数据}


{marker description}{...}
{title:描述}

{pstd}
{opt infile using} 读取以文本形式存储的数据集。
{opt infile using} 首先读取 {it:dfilename} —— 一个描述数据文件格式的 "字典" —— 然后读取包含数据的文件。
字典是您用 Do-file 编辑器或 Stata 以外的编辑器创建的文件。

{pstd} 
包含纯 ASCII 或 UTF-8 的字符串可以正确导入。包含扩展 ASCII 的字符串将不会正确导入（即，不会显示）；您可以使用 Stata 的 {helpb replace} 命令和
{help f_ustrfrom_zh:ustrfrom()} 函数将扩展 ASCII 转换为 UTF-8。如果指定了 {opt ebcdic}，数据在导入时将从 EBCDIC 转换为 ASCII。所有情况下的字典必须为 ASCII。

{pstd}
如果未指定 {opt using} {it:{help filename_zh}}，则假定数据从闭合括号后的行开始。如果指定了 {opt using} {it:filename}，则假定数据位于 {it:filename} 中。

{pstd}
数据可以与字典位于同一文件或另一个文件中。
带有字典的 {cmd:infile} 可以导入数值和字符串数据。单个字符串的最大长度为 100,000 字节。
长度超过 2,045 字节的字符串将作为 {cmd:strL}s 导入（请参见
{findalias frstrl}）。

{pstd}
另一个变体是 {opt infile} 省略中间字典；请参见 {help infile1_zh}。这种变体更易于使用，但不会读取固定格式文件。另一方面，虽然带有字典的 {opt infile} 能读取自由格式文件，但没有字典的 {opt infile} 更好。

{pstd}
读取固定格式文件的 {opt infile using} 的替代方案是 {opt infix}；请参阅 {manhelp infix D:infix (fixed format)}。{opt infix} 提供的功能比 {opt infile using} 少，但更易于使用。

{pstd}
Stata 还有其他命令用于读取数据。如果您不确定 {opt infile using} 是否能满足您的需求，请参阅
{manhelp import D} 和 {findalias frdatain}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D infile(fixedformat)Quickstart:快速入门}

        {mansection D infile(fixedformat)Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{marker filename}{...}
{phang}{opth using(filename)} 指定包含数据的文件名称。
如果未指定 {opt using()}，则假定数据跟随在 {it:dfilename} 的字典之后，或者如果字典指定了其他文件的名称，则假定该文件包含数据。如果指定了 {opt using(filename)}，即使字典表示其他内容，也使用 {it:filename} 获取数据。如果 {it:filename} 未指定扩展名，则假定为 {cmd:.raw}。

{pmore}
如果 {it:filename} 包含嵌入空格，请务必用双引号将其括起来。

{phang}{opt clear} 指定允许新的数据替换当前内存中的数据。
为了确保您不会丢失重要内容，{opt infile using} 将拒绝读取新的数据如果内存中已存在其他数据。{opt clear} 允许 {opt infile using} 替换内存中的数据。您也可以在读取新数据之前，通过输入 {cmd:drop _all} 自己删除数据。

{dlgtab:选项}

{phang}{opt automatic} 使 Stata 根据读取的非数值数据创建值标签。
它还自动扩展显示格式以适应最长标签。

{phang}{opt ebcdic} 指定使用 EBCDIC 字符编码存储数据，而不是默认的 ASCII 编码，并在导入时将数据从 EBCDIC 转换为 ASCII。


{marker dict_dir}{...}
{title:字典指令}

{phang}
{cmd:*} 标记注释行。 wherever您希望放置注释，请在行首开始一个 {cmd:*}。注释可以在同一字典中多次出现。

{phang}
{opt _lrecl(#)} 仅用于读取没有行结束分隔符（回车、换行或这些的组合）的数据集。此类文件通常由大型计算机生成，并用 EBCDIC 编码或已从 EBCDIC 转换为 ASCII。
{cmd:_lrecl()} 指定逻辑记录长度。 {cmd:_lrecl()} 请求 {cmd:infile} 将处理方式视为每 {it:#} 字节结束一行。

{pmore}
    {cmd:_lrecl()} 通常只在字典中出现一次，实际上通常不出现。

{phang}
{opt _firstlineoffile(#)}（缩写为 {cmd:_first()}）也很少指定。它表示数据在文件中的起始行。
当数据跟随字典时，您不需要指定 {cmd:_first()}；Stata 可以自行判断。然而，在从其他文件读取数据时，如果第一行由于标题或其他标记而不包含数据，则可以指定 {cmd:_first()}。

{pmore}
    {cmd:_first()} 通常只在字典中出现一次，实际上通常不出现。

{phang} 
{opt _lines(#)} 表示文件中每个观察的行数。简单数据集通常为 {cmd:_lines(1)}。大数据集通常每个观察有多行（有时称为记录）。
{cmd:_lines()} 是可选的，即使每个观察有多行，因为 {cmd:infile} 有时可以自行判断。
尽管如此，如果 {cmd:_lines(1)} 对于您的数据不正确，最好通过 {opt _lines(#)} 指定正确的行数。

{pmore}
    {cmd:_lines()} 通常只在字典中出现一次。

{phang}
{opt _line(#)} 告诉 {cmd:infile} 跳转到观察的 {it:#} 行。 {cmd:_line()} 不是 {cmd:_lines()} 的同义词。考虑一个文件，其中 {cmd:_lines(4)} ，表示每个观察有四行。
{cmd:_line(2)} 说要跳到观察的第二行。
{cmd:_line(4)} 说要跳到观察的第四行。您可以向前或向后跳转。 {cmd:infile} 不在乎，而向前跳到 {cmd:_line(3)} ，读取几个变量，跳回到 {cmd:_line(1)} ，再读取另一个变量，然后再次跳到 {cmd:_line(3)} 是没有效率的。

{pmore}
    您不需要确保在字典的最后一行时位于观察的最后一行。 {cmd:infile} 知道如何到达下一个观察，因为它知道您在何处，以及 {cmd:_lines()} 是每个观察的总行数。

{pmore}
    {cmd:_line()} 可以在字典中出现多次。

{phang}
{cmd:_newline}[{cmd:(}{it:#}{cmd:)}] 是 {cmd:_line()} 的替代品。 {cmd:_newline(1)}，可以缩写为 {cmd:_newline}，向前移动一行。 {cmd:_newline(2)} 向前移动两行。我们不推荐使用 {cmd:_newline()}，因为 {cmd:_line()} 更好。如果您当前在观察的第二行并想到第六行，则可以输入 {cmd:_newline(4)}，但如果您键入 {cmd:_line(6)}，则您的意思更清晰。  

{pmore}
    {cmd:_newline()} 可以在字典中出现多次。

{phang}
{opt _column(#)} 跳转到当前行的列 {it:#}（以字节为单位）。您可以在行内向前或向后跳转。
    {cmd:_column()} 可以在字典中出现多次。

{phang}
{cmd:_skip}[{cmd:(}{it:#}{cmd:)}] 在当前行向前跳转 {it:#} 列。 {cmd:_skip()} 只是 {cmd:_column()} 的替代品。
    {cmd:_skip()} 可以在字典中出现多次。

{phang}
[{it:type}] {it:varname} [{cmd::}{it:lblname}}] [{cmd:%}{it:infmt}]
 [{cmd:"}{it:variable label}{cmd:"}]
    指示 {cmd:infile} 读取一个变量。上述指令的最简单形式便是变量名称本身： {it:varname}。

{pmore}
    在任何时候，{cmd:infile} 都在某个观察的某一行的某个列上。 {cmd:infile} 从第 1 列的第 1 行开始，因此假设这就是我们的位置。 根据最简单的指令 `{it:varname}`， 
    {cmd:infile} 通过以下逻辑进行：

{pmore}
    如果当前列为空，它将向前跳过，直到找到非空列（或到达行末）。如果它刚好跳到了行末，则在 {it:varname} 中存储缺失值。如果它跳到了非空列，则开始收集所在位置的数据，直到遇到空列或行末。这便是 {it:varname} 的数据。然后它设置当前列为当前位置。

{pmore}
    逻辑更为复杂。例如，在向前跳过以查找数据时，{cmd:infile}可能会遇到引号。如果是这样，它将跳过，直到找到匹配的引号以收集数据。如果您指定了 {cmd:%}{it:infmt}，那么 {cmd:infile} 将跳过跳过步骤，仅收集指定数量的字节。如果  您指定了 {cmd:%S}{it:infmt}，那么 {cmd:infile} 不会跳过前导或尾随的空格。然而，通用逻辑（可选择）是跳过、收集和重置。


{marker examples}{...}
{title:示例：使用字典读取数据}

{p 4 8 2}{cmd:. infile using mydict}{p_end}
{p 4 8 2}{cmd:. infile using mydict, using(mydata)}{p_end}
{p 4 8 2}{cmd:. infile using mydict if b==1}{p_end}
{p 4 8 2}{cmd:. infile using mydict if runiform()<=.1}


{title:示例：使用字典读取 EBCDIC 数据}

{p 4 8 2}{cmd:. infile using mydict, using(myebcdicdata) ebcdic}{p_end}


{title:示例：样本字典}

    {hline 21} begin xmpl1.dct {hline 4}
    {cmd:dictionary {c -(}}
	    {cmd:a}
	    {cmd:b}
    {cmd:{c )-}}
    {cmd:1 2}
    {cmd:3 4}
    {hline 21} end xmpl1.dct {hline 6}


    {hline 21} begin xmpl2.dct {hline 4}
    {cmd:dictionary {c -(}}
	    {cmd:int    t        "年中的第几天"}
	    {cmd:double amt      "金额"}
    {cmd:{c )-}}
    {cmd:1 2.2}
    {cmd:2 3.3}
    {hline 21} end xmpl2.dct {hline 6}


    {hline 21} begin xmpl3.dct {hline 4}
    {cmd:dictionary {c -(}}
    {cmd:_lines(2)}
    {cmd:_line(1)}
	    {cmd:int   a}
	    {cmd:float b}
    {cmd:_line(2)}
	    {cmd:float c}
    {cmd:{c )-}}
    {cmd:1 2.2}
    {cmd:3.2}
    {cmd:2 3.2}
    {cmd:4.2}
    {hline 21} end xmpl3.dct {hline 6}


    {hline 31} begin xmpl4.dct {hline 4}
    {cmd:dictionary {c -(}}
	    {cmd:long  idnumb    "识别号码"}
	    {cmd:str6  sex       "性别"}
	    {cmd:byte  age       "年龄"}
    {cmd:{c )-}}
    {cmd:472921002 male 32}
    {cmd:329193100 male 45}
    {cmd:399938271 female 30}
    {cmd:484873982 "female" 33}
    {hline 31} end xmpl4.dct {hline 6}


    {hline 43} begin xmpl5.dct {hline 4}
    {cmd:dictionary {c -(}}
	    {cmd:_column(5) }
		       {cmd:long  idnumb %9f "识别号码"}
		       {cmd:str6  sex    %6s "性别"}
		       {cmd:int   age    %2f "年龄"}
	    {cmd:_column(27)}
		       {cmd:float income %6f "收入"}
    {cmd:{c )-}}
	{cmd:329193402male  32      42000}
	{cmd:472921002male  32      50000}
	{cmd:329193100male  45}
	{cmd:399938271female30      43000}
	{cmd:484873982female33      48000}
    {hline 43} end xmpl5.dct {hline 6}


{title:示例：字典和数据在不同文件中}

    {hline 43} begin persons.dct {hline 4}
    {cmd:dictionary using persons.raw {c -(}}
	    {cmd:_column(5) }
		       {cmd:long  idnumb %9f "识别号码"}
		       {cmd:str6  sex    %6s "性别"}
		       {cmd:int   age    %2f "年龄"}
	    {cmd:_column(27)}
		       {cmd:float income %6f "收入"}
    {cmd:{c )-}}
    {hline 43} end persons.dct {hline 6}


    {hline 16} begin persons.raw {hline 4}
        {cmd:329193402male  32      42000}
        {cmd:472921002male  32      50000}
        {cmd:329193100male  45}
        {cmd:399938271female30      43000}
        {cmd:484873982female33      48000}
    {hline 16} end persons.raw {hline 6}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <infile2.sthlp>}