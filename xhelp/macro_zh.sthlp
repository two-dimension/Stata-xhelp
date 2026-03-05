{smcl}
{* *! version 1.1.11  07mar2019}{...}
{vieweralsosee "[P] macro" "mansection P macro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] char" "help char_zh"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[P] display" "help display_zh"}{...}
{vieweralsosee "[FN] Functions by category" "help functions_zh"}{...}
{vieweralsosee "[P] gettoken" "help gettoken_zh"}{...}
{vieweralsosee "[P] macro lists" "help macrolists_zh"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] numlist" "help nlist_zh"}{...}
{vieweralsosee "[P] preserve" "help preserve_zh"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{vieweralsosee "[P] return" "help return_zh"}{...}
{vieweralsosee "[P] scalar" "help scalar_zh"}{...}
{vieweralsosee "[M-5] st_global()" "help mf_st_global_zh"}{...}
{vieweralsosee "[M-5] st_local()" "help mf_st_local_zh"}{...}
{vieweralsosee "[P] syntax" "help syntax_zh"}{...}
{vieweralsosee "[P] tokenize" "help tokenize_zh"}{...}
{viewerjumpto "Syntax" "macro_zh##syntax"}{...}
{viewerjumpto "Description" "macro_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "macro_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "macro_zh##remarks"}
{help macro:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] macro} {hline 2}}宏的定义与操作{p_end}
{p2col:}({mansection P macro:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}{cmdab:gl:obal}{space 3}{it:mname} {space 1} [{cmd:=}{it:{help exp_zh}} |
		{cmd::}{it:{help macro##macro_fcn:macro_fcn}} |
		{cmd:"}[{it:string}]{cmd:"} |
		{cmd:`}{cmd:"}[{it:string}]{cmd:"}{cmd:'}]

{p 8 17 2}{cmdab:loc:al}{space 4}{it:lclname} [{cmd:=}{it:{help exp_zh}} |
		{cmd::}{it:{help macro##macro_fcn:macro_fcn}} |
		{cmd:"}[{it:string}]{cmd:"} |
		{cmd:`}{cmd:"}[{it:string}]{cmd:"}{cmd:'}]

{p 8 17 2}{cmd:tempvar}{space 2}{it:lclname} [{it:lclname} [{it:...}]]

{p 8 17 2}{cmd:tempname} {it:lclname} [{it:lclname} [{it:...}]]

{p 8 17 2}{cmd:tempfile} {it:lclname} [{it:lclname} [{it:...}]]

{p 8 17 2}{cmdab:loc:al} {c -(} {cmd:++}{it:lclname} | {cmd:--}{it:lclname} {c )-}

{p 8 14 2}{cmdab:ma:cro} {cmdab:di:r}

{p 8 14 2}{cmdab:ma:cro} {cmd:drop} {c -(} {it:mname} [{it:mname} [{it:...}]] |
		{it:mname}{cmd:*} | {cmd:_all} {c )-}

{p 8 14 2}{cmdab:ma:cro} {cmdab:l:ist} [ {it:mname} [{it:mname} [{it:...}]] |
		{cmd:_all} ]

{p 8 14 2}{cmdab:ma:cro} {cmdab:s:hift} [{it:#}]

{p 8 14 2} [{it:...}] {cmd:`}{it:expansion_optr}{cmd:'} [{it:...}]


{pstd}
其中 {it:expansion_optr} 是

{phang2}
{it:lclname} {c |}
{cmd:++}{it:lclname} {c |}
{it:lclname}{cmd:++} {c |}
{cmd:--}{it:lclname} {c |}
{it:lclname}{cmd:--} {c |}
{cmd:=}{it:exp} {c |}
{cmd::}{it:macro_fcn} {c |}
{cmd:.}{it:class_directive} {c |}
{cmd:macval(}{it:lclname}{cmd:)}


{marker macro_fcn}{...}
{phang}
其中 {it:macro_fcn} 是以下任意项：


{pstd}用于提取程序属性的宏函数

{p 8 12 2}
{cmd:properties} {it:command}


{pstd}用于提取程序结果类别的宏函数

{p 8 12 2}
{cmd:results} {it:command}


{pstd}用于提取数据属性的宏函数

{p 8 12 2}
{cmdab:t:ype} {varname}

{p 8 12 2}
{cmdab:f:ormat} {varname}

{p 8 12 2}
{cmdab:val:ue} {cmdab:l:abel} {varname}

{p 8 12 2}
{cmdab:var:iable} {cmdab:l:abel} {varname}

{p 8 12 2}
{cmd:data} {cmdab:l:abel}

{p 8 12 2}
{cmdab:sort:edby}

{p 8 14 2}
{cmdab:lab:el} {c -(} {it:valuelabelname} |
		{cmd:(}{varname}{cmd:)} {c )-}
		{c -(} {cmd:maxlength} | {it:#} [{it:#_2}] {c )-}
		[{cmd:,} {cmd:strict} ]
		
{p 8 12 2}
{cmd:constraint} {c -(} {cmd:dir} | {it:#} {c )-}

{p 8 12 2}
{cmd:char} {c -(} {varname}{cmd:[]} |
		{varname}{cmd:[}{it:charname}{cmd:]} {c )-}

{p 8 12 2}
{cmd:char} {c -(} {cmd:_dta[]} | {cmd:_dta[}{it:charname}{cmd:]} {c )-}


{pstd}用于命名变量的宏函数

{p 8 12 2}
{cmd:permname} {it:suggestedname}
		[{cmd:,} {cmdab:l:ength:(}{it:#}{cmd:)} ]
		

{pstd}用于文件名和文件路径的宏函数

{p 8 12 2}
{cmd:adosubdir} [{cmd:"}]{it:{help filename_zh}}[{cmd:"}]

{p 8 13 2}
{cmd:dir} [{cmd:"}]{it:dirname}[{cmd:"}]
	{c -(}{cmdab:file:s}|{cmdab:dir:s}|{cmd:other}{c )-}
	[{cmd:"}]{it:pattern}[{cmd:"}]
	[{cmd:,} {cmd:nofail} {cmdab:respect:case}]

{p 8 15 2}
{cmd:sysdir} [ {cmd:STATA} | {cmd:BASE} | {cmd:SITE} |
		{cmd:PLUS} | {cmd:PERSONAL} | {it:dirname} ]
		

{pstd}用于访问操作系统参数的宏函数

{p 8 12 2}
{cmdab:env:ironment} {it:name}


{pstd}用于存储结果名称的宏函数

{p 8 12 2}
{cmd:e(scalars} | {cmd:macros} | {cmd:matrices} | {cmd:functions)}{p_end}

{p 8 12 2}
{cmd:r(scalars} | {cmd:macros} | {cmd:matrices} | {cmd:functions)}

{p 8 12 2}
{cmd:s(macros)}

{p 8 12 2}
{cmd:all} {c -(}{cmd:globals}|{cmd:scalars}|{cmd:matrices}{c )-}
	[{cmd:"}{it:pattern}{cmd:"}]

{p 8 12 2}
{cmd:all} {c -(}{cmd:numeric}|{cmd:string}{c )-} {cmd:scalars}
	[{cmd:"}{it:pattern}{cmd:"}]


{pstd}用于格式化结果的宏函数

{p 8 12 2}
{cmdab:di:splay} {it:{help display_zh:display_directive}}


{pstd}用于操作列表的宏函数

{p 8 12 2}
{cmd:list} {it:{help macrolists_zh:macrolist_directive}}


{pstd}与矩阵相关的宏函数

{p 8 12 2}
{cmd:rownames} {space 3} {it:matrixname}

{p 8 12 2}
{cmd:rowfullnames} {it:matrixname}

{p 8 12 2}
{cmd:roweq} {space 6} {it:matrixname} [{cmd:,} {cmd:quoted} ]

{p 8 12 2}
{cmd:colnames} {space 3} {it:matrixname}

{p 8 12 2}
{cmd:colfullnames} {it:matrixname}

{p 8 12 2}
{cmd:coleq} {space 6} {it:matrixname} [{cmd:,} {cmd:quoted} ]

{p 8 12 2}
{cmd:rownumb} {space 4} {it:matrixname} {it:string}

{p 8 12 2}
{cmd:colnumb} {space 4} {it:matrixname} {it:string}

{p 8 12 2}
{cmd:roweqnumb} {space 2} {it:matrixname} {it:string}

{p 8 12 2}
{cmd:coleqnumb} {space 2} {it:matrixname} {it:string}

{p 8 12 2}
{cmd:rownfreeparms} {space 2} {it:matrixname}

{p 8 12 2}
{cmd:colnfreeparms} {space 2} {it:matrixname}

{p 8 12 2}
{cmd:rownlfs} {space 2} {it:matrixname}

{p 8 12 2}
{cmd:colnlfs} {space 2} {it:matrixname}

{p 8 12 2}
{cmd:rowsof} {space 2} {it:matrixname}

{p 8 12 2}
{cmd:colsof} {space 2} {it:matrixname}

{p 8 12 2}
{cmd:rowvarlist} {space 2} {it:matrixname}

{p 8 12 2}
{cmd:colvarlist} {space 2} {it:matrixname}

{p 8 12 2}
{cmd:rowlfnames} {space 2} {it:matrixname} [{cmd:,} {cmdab:q:uoted} ]

{p 8 12 2}
{cmd:collfnames} {space 2} {it:matrixname} [{cmd:,} {cmdab:q:uoted} ]


{pstd}与时间序列运算符相关的宏函数

{p 8 12 2}
{cmd:tsnorm} {it:string} [{cmd:,} {cmdab:v:arname} ]


{pstd}用于复制宏的宏函数

{p 8 12 2}
{cmd:copy} {c -(} {cmdab:loc:al} | {cmdab:gl:obal} {c )-}
{it:mname}


{marker parsing}{...}
{pstd}用于解析的宏函数

{p 8 12 2}
{cmd:word count} {it:string}{p_end}

{p 8 12 2}
{cmd:word} {it:#} {cmd:of} {it:string}

{p 8 12 2}
{cmd:piece} {it:#_1} {it:#_2} {cmd:of}
		[{cmd:`}]{cmd:"}{it:string}{cmd:"}[{cmd:'}]
		[{cmd:,} {cmdab:nob:reak} ]

{p 8 12 2}
{cmd:strlen} {c -(} {cmdab:loc:al} | {cmdab:gl:obal} {c )-} {it:mname}

{p 8 12 2}
{cmd:ustrlen} {c -(} {cmdab:loc:al} | {cmdab:gl:obal} {c )-} {it:mname}

{p 8 12 2}
{cmd:udstrlen} {c -(} {cmdab:loc:al} | {cmdab:gl:obal} {c )-} {it:mname}

{p 8 17 2}
{cmd:subinstr} {c -(} {cmdab:loc:al} | {cmdab:gl:obal} {c )-}
		{it:mname} [{cmd:`}]{cmd:"}{it:from}{cmd:"}[{cmd:'}]
		[{cmd:`}]{cmd:"}{it:to}{cmd:"}[{cmd:'}]
		[{cmd:,} {cmd:all} {cmdab:w:ord}
		{cmdab:c:ount:(}{c -(} {cmdab:loc:al} | {cmdab:gl:obal} {c )-}
		{it:mname}{cmd:)} ]


{marker description}{...}
{title:描述}

{pstd}
{cmd:global} 将字符串分配给指定的全局宏名称 ({it:mnames})。
{cmd:local} 将字符串分配给局部宏名称 ({it:lclnames})。两者都允许使用双引号 ({cmd:"} 和 {cmd:"}) 以及复合双引号 
({cmd:`"} 和 {cmd:"'})；详细见 {help quotes_zh}。如果 {it:string}
中嵌入了引号，则需要使用复合双引号。

{pstd}
{cmd:tempvar} 将名称分配给指定的局部宏名称，可以在数据集中用作临时变量名称。当程序或 do-file 结束时，任何具有这些分配名称的变量都将被删除。

{pstd}
{cmd:tempname} 将名称分配给指定的局部宏名称，可以用作临时标量或矩阵名称。当程序或 do-file 结束时，任何具有这些分配名称的标量或矩阵都将被删除。

{pstd}
{cmd:tempfile} 将名称分配给指定的局部宏名称，可以用作临时文件的名称。当程序或 do-file 结束时，任何使用这些分配名称创建的数据集都将被删除。

{pstd}
{cmd:macro} 操作全局和局部宏。

{pstd}
有关宏替换的信息，请参阅 {findalias frmacros}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P macroRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注如下标题进行呈现：

        {help macro##remarks1:用于提取程序属性的宏函数}
        {help macro##remarks1b:用于提取程序结果类别的宏函数}
	{help macro##remarks2:用于提取数据属性的宏函数}
	{help macro##remarks3:用于命名变量的宏函数}
	{help macro##remarks4:用于文件名和文件路径的宏函数}
	{help macro##remarks5:用于访问操作系统参数的宏函数}
	{help macro##remarks6:用于存储结果名称的宏函数}
	{help macro##remarks7:用于格式化结果的宏函数}
	{help macro##remarks8:用于操作列表的宏函数}
	{help macro##remarks9:与矩阵相关的宏函数}
	{help macro##remarks10:与时间序列运算符相关的宏函数}
	{help macro##remarks11:用于复制宏的宏函数}
	{help macro##remarks12:用于解析的宏函数}


{marker remarks1}{...}
    {title:用于提取程序属性的宏函数}

{phang2}
{cmd:properties} {it:command}
{break}
返回 {it:command} 的属性；见 
{manhelp program_properties P:程序属性}。


{marker remarks1b}{...}
    {title:用于提取程序结果类别的宏函数}

{phang2}
{cmd:results} {it:command}
{break}
返回 {it:command} 的结果类别 -- {cmd:nclass}、{cmd:eclass}、{cmd:rclass} 或
{cmd:sclass}；见 {manhelp program P:程序}。


{marker remarks2}{...}
    {title:用于提取数据属性的宏函数}

{phang2}
{cmd:type} {varname}
{break}
返回 {it:varname} 的存储类型，可能是 {cmd:int}、
{cmd:long}、{cmd:float}、{cmd:double}、{cmd:str1}、{cmd:str2} 等等。

{phang2}
{cmd:format} {varname}
{break}
返回与 {it:varname} 相关联的显示格式；例如，
{cmd:%9.0g} 或 {cmd:%12s}。

{phang2}
{cmd:value label} {varname}
{break}
返回与 {it:varname} 相关联的值标签名称，可能是 "" （表示没有标签），或，例如，{cmd:make}，意味着该
值标签的名称是 {cmd:make}。

{phang2}
{cmd:variable label} {varname}
{break}
返回与 {it:varname} 相关联的变量标签，可能是 "" （表示没有标签），或，例如，{cmd:Repair Record 1978}。

{phang2}
{cmd:data label}
{break}
返回当前内存中数据集的标签，可能是 "" （表示没有标签），或，例如，
{cmd:1978 Automobile Data}。见 {manhelp label D}。

{phang2}
{cmd:sortedby}
{break}
返回当前内存中数据的排序变量名称，可能是 {bind:""} （表示未排序），或，例如，
{cmd:foreign mpg}，表示数据按变量 {cmd:foreign} 的顺序排列，并且在此基础上，按 {cmd:mpg} 的顺序排列（从 Stata 命令 {cmd:sort foreign mpg} 获得的顺序）。见
{manhelp sort D}。

{phang2}
{cmd:label} {it:valuelabelname}
	{c -(} {cmd:maxlength} | {it:#} [{it:#_2}] {c )-}
	[{cmd:,} {cmd:strict} ]
{break}
返回 {it:valuelabelname} 中的 {it:#} 的值标签。例如，
{cmd:label forlab 1} 可能返回 {cmd:Foreign cars} 如果 {cmd:forlab} 是值标签的名称，而 1 映射到 "Foreign cars"。如果 1 未对应于值标签中的任何映射，或者如果值标签 {cmd:forlab} 未定义，则返回 {cmd:1}（该 {it:#} 本身）。

{pmore2}
{it:#}_2 可选地指定返回标签的最大长度。
如果 {cmd:label forlab 1} 返回 {cmd:Foreign cars}，那么
{cmd:label forlab 1 6} 将返回 {cmd:Foreig}。

{pmore2}
{cmd:maxlength} 指定，而不是在值标签中查找数字,
{cmd:label} 返回标签的最大长度。
例如，如果值标签 {cmd:yesno} 映射 0 到 {cmd:no} 并且 1 到 {cmd:yes}，
那么它的 {cmd:maxlength} 将为 3，因为 {cmd:yes} 是最长的标签，且有三个字符。

{pmore2}
{cmd:strict} 指定如果 {it:#} 没有值标签，则不返回任何内容。

{phang2}
{cmd:label} {cmd:(}{varname}{cmd:)}
	{c -(} {cmd:maxlength} | {it:#} [{it:#_2}] {c )-}
	[{cmd:,} {cmd:strict} ]
{break}
与上述功能完全相同，唯一的区别是没有直接指定 
{it:valuelabelname}，而是间接指定。如果存在，使用与 {it:varname} 相关联的值标签名称。如果不存在，则处理方式与 {it:valuelabelname} 未定义的情况相同，返回数字本身。

{phang2}
{cmd:constraint} {c -(} {it:#} | {cmd:dir} {c )-}
{break}
提供有关约束的信息。

{pmore2}
{cmd:constraint} {it:#} 将约束 {it:#} 放入 {it:mname} 或返回
{bind:""} 如果约束 {it:#} 未定义。{cmd:constraint} {it:#}
对于 {it:#} < 0 是一个错误。

{pmore2}
{cmd:constraint dir} 返回当前已定义的约束的未排序
数字列表。例如，

                {cmd:. constraint 1 price = weight}
		
	        {cmd:. constraint 2 mpg > 20}
		
	        {cmd:. local myname : constraint 2}
		
	        {cmd:. macro list _myname}
	        {cmd:_myname         mpg > 20}

	        {cmd:. local aname : constraint dir}

	        {cmd:. macro list _aname}
    	        {cmd:_aname:  2 1}

{phang2}
{cmd:char} {c -(} {varname}{cmd:[]} |
{it:varname}{cmd:[}{it:charname}{cmd:]} {c )-} {space 2}或{space 2}{p_end}
{phang2}
{cmd:char} {c -(} {cmd:_dta[]} | {cmd:_dta[}{it:charname}{cmd:]} {c )-}
{break}
返回有关数据集特征的信息；见 {manhelp char P}。
例如，

	        {cmd:. sysuse auto}

	        {cmd:. char mpg[one] "this"}
		
		{cmd:. char mpg[two] "that"}

		{cmd:. local x : char mpg[one]}

		{cmd:. di "`x'"}
		{cmd:this}

		{cmd:. local x : char mpg[nosuch]}

		{cmd:. di "`x'"}

		{cmd:. local x : char mpg[]}

		{cmd:. di "`x'"}
		{cmd:two one}


{marker remarks3}{...}
    {title:用于命名变量的宏函数}

{phang2}
{cmd:permname} {it:suggested_name} [{cmd:,} {cmd:length(}{it:#}{cmd:)} ]
{break}
返回基于 {it:suggested_name} 生成的有效新变量名称
{it:matname}，其中 {it:suggested_name} 必须遵循命名规则，但可能过长或对应于已存在的变量。

{pmore2}
{cmd:length(}{it:#}{cmd:)} 指定返回变量名称的最大长度，必须在 8 到 32 之间。默认是 {cmd:length(32)}。例如，

		{cmd:. local myname : permname foreign}

		{cmd:. macro list _myname}
		{cmd:_myname:      foreign1}

		{cmd:. local aname : permname displacement, length(8)}

		{cmd:. macro list _aname}
		{cmd:_aname        displace}


{marker remarks4}{...}
    {title:用于文件名和文件路径的宏函数}

{phang2}
{cmd:adosubdir} [{cmd:"}]{it:{help filename_zh}}[{cmd:"}]
{break}
在 {it:mname} 中放入 Stata 将沿着 {help adopath:ado-path} 搜索
此文件的子目录。
通常，目录名称将是 {it:filename} 的首字母。然而，某些文件
可能会根据其扩展名而导致不同的目录名称。

{phang2}
{cmd:dir} [{cmd:"}]{it:dirname}[{cmd:"}]
	{c -(} {cmd:files} | {cmd:dirs} | {cmd:other} {c )-}
	[{cmd:"}]{it:pattern}[{cmd:"}] [{cmd:,} {cmd:nofail}
	{cmd:respectcase}]
{break}
在 {it:mname} 中放入指定的文件、目录，或不是文件也不是目录的项，
来自于 {it:dirname}，并匹配模式 {it:pattern}，其中模式匹配由 Stata 的
{help f_strmatch_zh:strmatch({it:s1},{it:s2})} 函数定义。命令中的引号是可选的，但建议使用，且它们几乎总是需要包围 {it:pattern}。返回的字符串将包含每个名称，彼此用空格分隔并且每个名称被双引号包围。如果随后在引用的上下文中所用 {it:mname}，必须用复合双引号括起来： {cmd:`"`}{it:mname}{cmd:'"'}。

{pmore2}
{cmd:nofail} 选项指定如果目录中包含的文件名太多无法适应宏，
则不显示错误消息，而是返回适合于 {it:mname} 的文件名。通常不应该指定 {cmd:nofail}。

{pmore2}
在 Windows 中，{cmd:respectcase} 选项指定 {cmd:dir}
在执行匹配时考虑文件名的大小写。与其他操作系统不同，Windows 默认是不区分大小写的文件名。
{cmd:respectcase} 在非Windows操作系统中被忽略。

{pmore2}
例如，

{pmore2}
{cmd:local list : dir . files "*"} 创建当前目录中的所有常规文件列表。在 {cmd:list} 中可能返回 {cmd:"subjects.dta"}
{cmd:"step1.do"} {cmd:"step2.do"} {cmd:"reest.ado"}。

{pmore2}
{cmd:local list : dir . files "s*", respectcase} 在 Windows 中会创建当前目录中以小写字母 "s" 开头的所有常规文件的列表。
文件名中的大小写保持不变。在 Windows 中，如果不使用 {cmd:respectcase} 选项，所有文件名将在与 {it:pattern} 进行比较和可能返回之前转换为小写。
                                                                                
{pmore2}
{cmd:local list : dir . dirs "*"} 创建当前目录中所有子目录的列表。在 {cmd:list} 中可能返回 {cmd:"notes"}
{cmd:"subpanel"}。
                                                                                
{pmore2}
{cmd:local list : dir . other "*"} 创建所有既不是常规文件也不是目录的东西的列表。这些文件少见，可能是 Unix 设备驱动程序。
                                                                                
{pmore2}
{cmd:local list : dir "\mydir\data" files "*"} 创建在 {cmd:\mydir\data} 中找到的所有常规文件的列表。返回可能是
{cmd:"example.dta"} {cmd:"make.do"} {cmd:"analyze.do"}。

{pmore2}
返回的是文件的名称，而不是它们的完整路径。

{pmore2}
{cmd:local list : dir "subdir" files "*"} 创建当前目录的 {cmd:subdir} 中找到的所有常规文件的列表。

{phang2}
{cmd:sysdir} [ {cmd:STATA} | {cmd:BASE} | {cmd:SITE} |
{cmd:PLUS} | {cmd:PERSONAL} ]
{break}
返回不同的 Stata 系统目录路径；见 {manhelp sysdir P}。
返回的路径会带有尾随分隔符；例如， {cmd:sysdir STATA}
可能返回 {cmd:D:\PROGRAMS\STATA\}。

{phang2}
{cmd:sysdir} {it:dirname}
{break}
返回 {it:dirname}。此功能用于编码 
{cmd:local x : sysdir `dir'}, 其中 {cmd:`dir'} 可能包含用户指定的目录名称或关键字，例如 {cmd:STATA} 或
{cmd:BASE}。返回适当的目录名称。返回的路径会带有尾随分隔符。


{marker remarks5}{...}
    {title:用于访问操作系统参数的宏函数}

{phang2}
{cmd:environment} {it:name}
{break}
返回操作系统环境变量 {it:name} 的内容，
如果 {it:name} 未定义，则返回 {bind:""}。


{marker remarks6}{...}
    {title:用于存储结果名称的宏函数}

{phang2}
{cmd:e(scalars} | {cmd:macros} | {cmd:matrices} | {cmd:functions)}
{break}
返回指定类型的 {cmd:e()} 中所有存储结果的名称，名称逐个列出并用一个空格分隔。例如，{cmd:e(scalars)} 可能返回 {cmd:N ll_0 ll df_m chi2 r2_p}，意味着存在存储的标量结果 {cmd:e(N)}、{cmd:e(ll_0)} 等等。

{phang2}
{cmd:r(scalars} | {cmd:macros} | {cmd:matrices} | {cmd:functions)}
{break}
返回指定类型的 {cmd:r()} 中所有存储结果的名称。

{phang2}
{cmd:s(macros)}
{break}
返回 {cmd:s()} 中所有的存储结果名称，其类型为宏，这是 {cmd:s()} 中唯一的类型。

{phang2}
{cmd:all} {c -(} {cmd:globals} | {cmd:scalars} | {cmd:matrices} {c )-}
	[{cmd:"}{it:pattern}{cmd:"}]
{break}
在 {it:mname} 中放入与 {it:pattern} 匹配的指定全局、标量或矩阵，
其中模式匹配是由 Stata 的
{help f_strmatch_zh:strmatch({it:s1},{it:s2})} 函数定义。

{phang2}
{cmd:all} {c -(} {cmd:numeric} | {cmd:string} {c )-} {cmd:scalars}
	[{cmd:"}{it:pattern}{cmd:"}]
{break}
在 {it:mname} 中放入与 {it:pattern} 匹配的指定数字或字符标量，
其中模式匹配是由 Stata 的
{help f_strmatch_zh:strmatch({it:s1},{it:s2})} 函数定义。


{marker remarks7}{...}
    {title:用于格式化结果的宏函数}

{phang2}
{cmd:display} {it:display_directive}
{break}
返回来自 {help display_zh} 命令的结果。 {cmd:display}
函数是 {cmd:display} 命令，唯一的区别是输出被重定向到宏而不是屏幕。

{pmore2}
您可以使用 {cmd:display} 的所有合适功能。也就是，您不能使用 {cmd:as} {it:style} 设置样式，因为宏没有颜色，您不能使用 {cmd:_continue} 来抑制实际显示时换行（它并没有被显示），您不能使用 {cmd:_newline} （原因相同），您也不能使用 {cmd:_request} 从控制台获取输入（因为输入和输出与宏的定义无关）。
其他一切都可以正常操作。见 {manhelp display P}。

{pmore2}
示例：
                {cmd:local x : display %9.4f sqrt(2)}


{marker remarks8}{...}
    {title:用于操作列表的宏函数}

{phang2}
{cmd:list} {it:macrolist_directive}
{break}
将 {it:mname} 填充为 {it:{help macrolists_zh:macrolist_directive}}，其中指定了许多可用于处理焊接列表的命令或操作之一；见 {manhelp macrolists P:宏列表}。


{marker remarks9}{...}
    {title:与矩阵相关的宏函数}

{pstd}
在理解以下函数时，请记住矩阵行或列的 {it:fullname} 定义为 {it:eqname}{cmd::}{it:name}。例如，{it:fullname} 可能是 {cmd:outcome:weight}，那么 {it:eqname} 是 {cmd:outcome}，而 {it:name} 是 {cmd:weight}。或者 {it:fullname} 可能是 {cmd:gnp:L.cpi}，那么 {it:eqname} 是 {cmd:gnp}，而 {it:name} 是 {cmd:L.cpi}。或者 {it:fullname} 可能是 {cmd:mpg}，在这种情况下 {it:eqname} 是 {bind:""} 而 {it:name} 是 {cmd:mpg}。或者 {it:fullname} 可能是 {cmd:gnp:1.south#1.smsa}，然后 {it:eqname} 是 {cmd:gnp} 而 {it:name} 是 {cmd:1.south#1.smsa}。更多信息，见 {manhelp matrix_define P:矩阵定义}。

{phang2}
{cmd:rownames} {space 3} {it:matrixname}{p_end}
{phang2}
{cmd:rowfullnames} {it:matrixname}{p_end}
{phang2}
{cmd:roweq} {space 6} {it:matrixname} [{cmd:,} {cmd:quoted} ]
{break}
返回 {it:matname} 的行名；见 {help matmacfunc_zh}。

{phang2}
{cmd:colnames} {space 3} {it:matrixname}{p_end}
{phang2}
{cmd:colfullnames} {it:matrixname}{p_end}
{phang2}
{cmd:coleq} {space 6} {it:matrixname} [{cmd:,} {cmd:quoted} ]
{break}
返回 {it:matname} 的列名；见 {help matmacfunc_zh}。

{phang2}
{cmd:rownumb} {space 4} {it:matrixname} {it:string}
{break}
返回与 {it:string} 匹配的 {it:matname} 的行号；见
{help matmacfunc_zh}。

{phang2}
{cmd:colnumb} {space 4} {it:matrixname} {it:string}
{break}
返回与 {it:string} 匹配的 {it:matname} 的列号；
见 {help matmacfunc_zh}。

{phang2}
{cmd:roweqnumb} {space 2} {it:matrixname} {it:string}
{break}
返回与 {it:string} 匹配的 {it:matname} 的行方程号；见
{help matmacfunc_zh}。

{phang2}
{cmd:coleqnumb} {space 2} {it:matrixname} {it:string}
{break}
返回与 {it:string} 匹配的 {it:matname} 的列方程号；
见 {help matmacfunc_zh}。

{phang2}
{cmd:colnfreeparms} {space 2} {it:matrixname}{break}
返回 {it:matname} 的自由参数列的数量；
见 {help matmacfunc_zh}。

{phang2}
{cmd:rownfreeparms} {space 2} {it:matrixname}{break}
返回 {it:matname} 的自由参数行的数量；
见 {help matmacfunc_zh}。

{phang2}
{cmd:colnlfs} {space 2} {it:matrixname}{break}
返回 {it:matname} 列中线性形式的数量；
见 {help matmacfunc_zh}。

{phang2}
{cmd:rownlfs} {space 2} {it:matrixname}{break}
返回 {it:matname} 行中线性形式的数量；
见 {help matmacfunc_zh}。

{phang2}
{cmd:colsof} {space 2} {it:matrixname}{break}
返回 {it:matname} 的列数；
见 {help matmacfunc_zh}。

{phang2}
{cmd:rowsof} {space 2} {it:matrixname}{break}
返回 {it:matname} 的行数；
见 {help matmacfunc_zh}。

{phang2}
{cmd:colvarlist} {space 2} {it:matrixname}{break}
返回与 {it:matname} 列对应的变量列表；
见 {help matmacfunc_zh}。

{phang2}
{cmd:rowvarlist} {space 2} {it:matrixname}{break}
返回与 {it:matname} 行对应的变量列表；
见 {help matmacfunc_zh}。

{phang2}
{cmd:collfnames} {space 2} {it:matrixname} [{cmd:,} {cmd:quoted} ]
{break}
返回与 {it:matname} 列中线性形式对应的名称列表；
见 {help matmacfunc_zh}。

{phang2}
{cmd:rowlfnames} {space 2} {it:matrixname} [{cmd:,} {cmd:quoted} ]
{break}
返回与 {it:matname} 行中线性形式对应的名称列表；
见 {help matmacfunc_zh}。


{marker remarks10}{...}
    {title:与时间序列运算符相关的宏函数}

{phang2}
{cmd:tsnorm} {it:string}
{break}
返回 {it:string} 的标准表示形式，当 {it:string} 被解释为时间序列运算符时。例如，如果 {it:string} 是 {cmd:ldl}，则返回 {cmd:L2D}，或者如果 {it:string} 是 {cmd:l.ldl}，则返回 {cmd:L3D}。如果 {it:string} 为空，则返回 {bind:""}。

{phang2}
{cmd:tsnorm} {it:string}{cmd:, varname}
{break}
当 {it:string} 被解释为时间序列操作的变量时，返回 {it:string} 的标准表示形式。例如，如果 {it:string} 是 {cmd:ldl.gnp}，则返回 {cmd:L2D.gnp}，如果 {it:string} 是 {cmd:l.ldl.gnp}，则返回 {cmd:L3D.gnp}。如果 {it:string} 只是一个变量名，则返回该变量名。


{marker remarks11}{...}
    {title:用于复制宏的宏函数}

{phang2}
{cmd:copy} {c -(} {cmd:local} | {cmd:global} {c )-} {it:mname}
{break}
返回 {it:mname} 的内容的副本，如果 {it:mname} 未定义，则返回一个空字符串。


{marker remarks12}{...}
{marker parsing_desc}{...}
    {title:用于解析的宏函数}

{phang2}
{cmd:word count} {it:string}
{break}
返回 {it:string} 中的单词数量。标记是一个单词（由空格分隔的字符）或用引号括起来的一组单词。不要将 {it:string} 用双引号括起来，因为 {cmd:word count} 将返回 {cmd:1}。

{phang2}
{cmd:word} {it:#} {cmd:of} {it:string}
{break}
返回 {it:string} 的第 {it:#} 个标记。不要将 {it:string} 用双引号括起来。

{phang2}
{cmd:piece} {it:#_1} {it:#_2} {cmd:of}
[{cmd:`}]{cmd:"}{it:string}{cmd:"}[{cmd:'}] [{cmd:,} {cmd:nobreak} ]
{break}
返回 {it:string} 的一部分。此宏函数提供了一种智能方法将字符串分割成大约指定的部分 
{mansection U 12.4.2.2DisplayingUnicodecharacters:显示列}。
{it:#_1} 指定要获取的部分。{it:#_2} 指定每部分的最大显示列数。每个部分都是试图填充到最大显示列数而不会中断单词的构建。然而，当一个单词占用的显示列数超过 {it:#_2} 时，该单词将被拆分，除非指定了 {cmd:nobreak}。{cmd:nobreak} 指定即使这将导致字符串被显示在超过 {it:#_2} 列中，也不要拆分单词。

{pmore2}
可以在 {it:string} 周围使用复合双引号，并且当 {it:string} 本身可能包含双引号时，必须使用复合双引号。

{phang2}
{cmd:strlen} {c -(} {cmd:local} | {cmd:global} {c )-} {it:mname}
{break}
返回 {it:mname} 内容的字节长度。如果 
{it:mname} 未定义，则返回 {cmd:0}。例如，

                {cmd:. constraint 1 price = weight}

		{cmd:. local myname : constraint 1}

		{cmd:. macro list _myname}
		{cmd:_myname          price = weight}

		{cmd:. local lmyname : strlen local myname}

		{cmd:. macro list _lmyname}
		{cmd:_lmyname:        14}

{phang2}
{cmd:ustrlen} {c -(} {cmd:local} | {cmd:global} {c )-} {it:mname}
{break}
返回 {it:mname} 内容的 Unicode 字符数。如果 
{it:mname} 未定义，则返回 {cmd:0}。

{phang2}
{cmd:udstrlen} {c -(} {cmd:local} | {cmd:global} {c )-} {it:mname}
{break}
返回 {it:mname} 内容的 
{mansection U 12.4.2.2DisplayingUnicodecharacters:显示列} 的长度。如果 {it:mname} 未定义，则返回 {cmd:0}。

{phang2}
{cmd:subinstr} {cmd:local} {it:mname} {cmd:"}{it:from}{cmd:"}
{cmd:"}{it:to}{cmd:"}
{break}
    返回 {it:mname} 的内容，第一次出现的
    "{it:from}" 替换为 "{it:to}"。
                                                                                
{phang2}
{cmd:subinstr} {cmd:local} {it:mname} {cmd:"}{it:from}{cmd:"}
{cmd:"}{it:to}{cmd:", all}
{break}
    做同样的事情，但将所有出现的 "{it:from}" 替换为 "{it:to}"。

{phang2}
{cmd:subinstr} {cmd:local} {it:mname} {cmd:"}{it:from}{cmd:"}
{cmd:"}{it:to}{cmd:", word}
{break}
    返回 {it:mname} 的内容，将第一次出现的单词
    "{it:from}" 替换为 "{it:to}"。单词定义为以空格分隔的标记或字符串开头或结尾的标记。

{phang2}
{cmd:subinstr} {cmd:local} {it:mname} {cmd:"}{it:from}{cmd:"}
{cmd:"}{it:to}{cmd:", all word}
{break}
    做同样的事情，但将所有出现的单词 "{it:from}"
    替换为 "{it:to}"。
                                                                                
{phang2}
{cmd:subinstr} {cmd:global} {it:mname} ...
{break}
    与上述相同，但从全局宏 {cmd:$mname} 而不是本地宏
    {it:mname} 获取原始字符串。

{phang2}
{cmd:subinstr} ... {cmd:global} {it:mname} ...{cmd:,} ... 
{cmd:count(} {c -(} {cmd:global} | {cmd:local} {c )-} {it:mname2}{cmd:)}
{break}
     除了通常选项外，还在指定的全局或本地宏 {it:mname2} 中放置替换的计数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <macro.sthlp>}