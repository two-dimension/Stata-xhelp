{smcl}
{* *! version 2.3.3  10may2018}{...}
{vieweralsosee "[P] gettoken" "mansection P gettoken"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] syntax" "help syntax_zh"}{...}
{vieweralsosee "[P] tokenize" "help tokenize_zh"}{...}
{vieweralsosee "[P] while" "help while_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] invtokens()" "help mf_invtokens_zh"}{...}
{vieweralsosee "[M-5] tokenget()" "help mf_tokenget_zh"}{...}
{vieweralsosee "[M-5] tokens()" "help mf_tokens_zh"}{...}
{viewerjumpto "语法" "gettoken_zh##syntax"}{...}
{viewerjumpto "描述" "gettoken_zh##description"}{...}
{viewerjumpto "PDF文档链接" "gettoken_zh##linkspdf"}{...}
{viewerjumpto "选项" "gettoken_zh##options"}{...}
{viewerjumpto "备注" "gettoken_zh##remarks"}{...}
{viewerjumpto "示例" "gettoken_zh##examples"}
{help gettoken:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] gettoken} {hline 2}}低级解析{p_end}
{p2col:}({mansection P gettoken:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:gettoken}
{it:emname1} [{it:emname2}] {cmd::} {it:emname3}
[{cmd:,}
{cmdab:p:arse:("}{it:pchars}{cmd:")}
{cmdab:q:uotes}
{cmd:qed(}{it:lmacname}{cmd:)}
{cmdab:m:atch:(}{it:lmacname}{cmd:)}
{cmd:bind}]

{pstd}
其中，{it:pchars} 是解析字符，{it:lmacname} 是本地宏名称，而 {it:emname} 在下表中有描述：

             {it:emname} 是...{space 8}指的是...
             {hline 35}
             {it:macroname}{space 11}本地宏
             {cmd:(local)} {it:macroname}{space 3}本地宏
             {cmd:(global)} {it:macroname}{space 2}全局宏


{marker description}{...}
{title:描述}

{pstd}
{cmd:gettoken} 是一个低级解析命令，旨在为希望自己解析输入的程序员使用。{help syntax_zh} 命令是一个更易用的高级解析命令。

{pstd}
{cmd:gettoken} 从宏 {it:emname3} 获取下一个符号，并将其存储在宏 {it:emname1} 中。如果指定了宏 {it:emname2}，则 {it:emname3} 中剩余的字符串会存储在 {it:emname2} 宏中。{it:emname1} 和 {it:emname3}，或 {it:emname2} 和 {it:emname3}，可以是相同的名称。第一个符号是根据解析字符 {it:pchars} 确定的，如果未指定，则默认使用空格。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P gettokenRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{cmd:parse("}{it:pchars}{cmd:")} 指定解析字符。如果未指定 {cmd:parse()}，则假定为 {cmd:parse(" ")}，这意味着通过空格识别符号。

{phang}{cmd:quotes} 指定不删除存储在 {it:emname1} 中的外部引号。此选项对 {it:emname2} 中存储的内容没有影响，因为它总是保留外部引号。{cmd:quotes} 是一个不常指定的选项；通常你希望删除引号。如果你希望在将来再次解析时完美复制原始宏的内容，则可以不希望删除引号。

{phang}
{cmd:qed(}{it:lmacname}{cmd:)} 指定一个本地宏名称，根据返回的符号是否被原始字符串中的引号包围，将其填充为 1 或 0。{cmd:qed()} 不会改变解析方式；它只是返回更多信息。

{phang}{cmd:match(}{it:lmacname}{cmd:)} 指定在确定符号时配对括号。外层的括号（如果有）在符号存储到 {it:emname1} 之前会被去掉。本地宏 {it:lmacname} 会被设置为“(”如果找到括号；否则，它会被设置为空字符串。

{phang}
{cmd:bind} 指定即使在不解析 {cmd:()} 和 {cmd:[]} 的情况下，也要将括号和括号内的表达式绑定在一起。


{marker remarks}{...}
{title:备注}

{pstd}
我们通常将 {cmd:gettoken} 应用于宏 {hi:`0'}，如下所示：

{phang2}{cmd:gettoken first : 0}

{pstd}
这将从 {hi:`0'} 获取第一个符号（以空格作为符号分隔符），并保持 {hi:`0'} 不变。或者，替代地，

{phang2}{cmd:gettoken first 0 : 0}

{pstd}
这将从 {hi:`0'} 获取第一个符号，并将剩余部分保存回 {hi:`0'}。


{marker examples}{...}
{title:示例}

{pstd}
假设 {hi:`0'} 包含 {hi:`"by x: cmd if sex=="male""'}

	{cmd:. gettoken left 0: 0, parse(": ")}

    结果为
	{hi:`left'} 包含  {hi:`"by"'}
	   {hi:`0'} 包含  {hi:`" x: cmd if sex=="male""'}

    继续，

	{cmd:. gettoken next 0: 0, parse(": ")}

    结果为
	{hi:`next'} 包含  {hi:`"x"'}
	   {hi:`0'} 包含  {hi:`": cmd if sex=="male""'}

    继续，

	{cmd:. gettoken next 0: 0, parse(": ")}

    结果为
	{hi:`next'} 包含  {hi:`":"'}
	   {hi:`0'} 包含  {hi:`" cmd if sex=="male""'}


{pstd}
你希望创建一个两词命令。例如，{cmd:mycmd list} 做一件事，而 {cmd:mycmd generate} 做另一件事。

	{cmd:program mycmd}
	        {cmd:version {ccl stata_version}}
		{cmd:gettoken subcmd 0: 0}
		{cmd:if "`subcmd'"=="list" {c -(}}
			{cmd:mycmd_l `0'}
		{cmd:{c )-}}
		{cmd:else if "`subcmd'"=="generate" {c -(}}
			{cmd:mycmd_g `0'}
		{cmd:{c )-}}
		{cmd:else    error 199}
	{cmd:end}

	{cmd:program mycmd_l}
		{it:...}
	{cmd:end}

	{cmd:program mycmd_g}
		{it:...}
	{cmd:end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gettoken.sthlp>}