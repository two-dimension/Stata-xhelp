{smcl}
{* *! version 1.3.5  20dec2018}{...}
{vieweralsosee "[P] syntax" "mansection P syntax"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 Language syntax" "help language_zh"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] gettoken" "help gettoken_zh"}{...}
{vieweralsosee "[P] mark" "help mark_zh"}{...}
{vieweralsosee "[P] numlist" "help nlist_zh"}{...}
{vieweralsosee "[P] tokenize" "help tokenize_zh"}{...}
{vieweralsosee "[TS] tsrevar" "help tsrevar_zh"}{...}
{vieweralsosee "[P] unab" "help unab_zh"}{...}
{viewerjumpto "Syntax" "syntax_zh##syntax"}{...}
{viewerjumpto "Description" "syntax_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "syntax_zh##linkspdf"}{...}
{viewerjumpto "Syntax, continued" "syntax_zh##syntax_cont"}
{help syntax:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[P] syntax} {hline 2}}解析 Stata 语法{p_end}
{p2col:}({mansection P syntax:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 10 2}{cmd:syntax} {it:语法描述}


{marker description}{...}
{title:描述}

{pstd}
有关 Stata 语言的一般讨论，请参见 {help language_zh}。

{pstd}
Stata 程序可以以两种方式解析用户输入的内容：

{phang2}1.  位置性解析，即第一个参数、第二个参数，依此类推，或

{phang2}2.  根据语法规则解析，例如标准 Stata 语法。

{pstd}{cmd:args} 采用第一种方式；请参见 {manhelp args P:syntax (args)}。

{pstd}
{cmd:syntax} 则采用第二种方式。您需要在 {cmd:syntax} 命令中指定新命令的语法；例如，您可能会编码如下：

	{cmd:program myprog}
		{cmd:version {ccl stata_version}}
		{cmd:syntax varlist [if] [in] [, DOF(integer 50) Beta(real 1.0)]}
		（程序的其余部分将根据 {cmd:`varlist'}, {cmd:`if'}, {cmd:`in'}, {cmd:`dof'}, 和 {cmd:`beta'} 编写）
		{it:...}
	{cmd:end}

{pstd}
{cmd:syntax} 检查用户输入的内容，并尝试将其与语法图匹配。如果不匹配，则会发出错误消息，并停止程序（返回非零代码）。如果匹配，则各个组件将存储在特定的局部宏中，以便后续访问。在上述示例中，结果将定义局部宏 {cmd:`varlist'}, {cmd:`if'}, {cmd:`in'}, {cmd:`dof'}, 和 {cmd:`beta'}。

{pstd}
有关 Stata 编程的入门信息，请参见 {findalias frprograms}，尤其是 {findalias frarguments}。

{pstd}
标准 Stata 语法为

      {it:cmd} [{it:varlist} | {it:namelist} | {it:anything}]
               [{it:if}]
               [{it:in}]
               [{cmdab:usin:g} {it:filename}]
               [{cmd:=} {it:exp}]
               [{it:weight}]
               [{cmd:,} {it:options}]

{pstd}
其中的每一个构建块，例如 {it:varlist}, {it:namelist}, 和 {cmd:if}，将在下面详细说明。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P syntaxRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_cont}{...}
{title:语法，继续}

{p 8 10 2}{cmd:syntax} {it:语法描述}

{pstd}
其中 {it:语法描述} 可以包含

	{it:{help syntax##description_of_varlist:varlist描述}}
	{it:{help syntax##description_of_namelist:namelist描述}}
	{it:{help syntax##description_of_anything:anything描述}}
	{it:{help syntax##description_of_if:if描述}}
	{it:{help syntax##description_of_in:in描述}}
	{it:{help syntax##description_of_using:using描述}}
	{it:{help syntax##description_of_=exp:=exp描述}}
	{it:{help syntax##description_of_weights:权重描述}}
	{it:{help syntax##description_of_options:选项描述}}


{marker description_of_varlist}{...}
{title:varlist描述}

	type{col 29}{it:无}
     或
可选择输入{col 29}{cmd:[}
然后输入{col 29}{cmd:varlist}  {cmd:varname}  {cmd:newvarlist}  {cmd:newvarname}
可选择键入{col 29}{cmd:(}{it:varlist_specifiers}{cmd:)}
	type{col 29}{cmd:]}     （如果您在开头键入了 {cmd:[}）

    其中 {it:varlist_specifiers} 为
	{cmd:default=none}
	{cmd:min=}{it:#}
	{cmd:max=}{it:#}
	{cmdab:num:eric}
	{cmdab:str:ing}
	{cmd:str#}
	{cmd:strL}
	{cmd:fv}
	{cmd:ts}
	{cmdab:gen:erate}        （仅适用于 {cmd:newvarlist} 和 {cmd:newvarname}）

    示例：
	{cmd:syntax varlist} {it:...}
	{cmd:syntax [varlist]} {it:...}
	{cmd:syntax varlist(min=2)} {it:...}
	{cmd:syntax varlist(max=4)} {it:...}
	{cmd:syntax varlist(min=2 max=4 numeric)} {it:...}
	{cmd:syntax [varlist(default=none)]} {it:...}
	{cmd:syntax newvarlist} {it:...}
	{cmd:syntax newvarlist(max=1)} {it:...}
	{cmd:syntax varname} {it:...}
	{cmd:syntax [varname]} {it:...}

{pstd}
如果您什么也不输入，命令将不允许 varlist。

{pstd}
输入 {cmd:[} 和 {cmd:]} 意味着 varlist 是可选的。 

{pstd}
{cmd:default=} 指定当 varlist 可选且用户未指定时，如何填充 varlist。默认情况下，填充所有变量。如果指定 {cmd:default=none}，则留下空白。

{pstd}
{cmd:min} 和 {cmd:max} 指定可以指定的变量的最小和最大数量。输入 {cmd:varname} 等同于输入 {cmd:varlist(max=1)}。

{pstd}
{cmd:numeric}, {cmd:string}, {cmd:str#}, 和 {cmd:strL} 限制指定的 varlist 必须完全由数字、完全由字符串（表示 {cmd:str}{it:#} 或 {cmd:strL}）、完全由 {cmd:str}{it:#} 或完全由 {cmd:strL} 变量组成。

{pstd}
{cmd:fv} 允许 varlist 包含因子变量。

{pstd}
{cmd:ts} 允许 varlist 包含时间序列运算符。

{pstd}
{cmd:generate} 指定对于 {cmd:newvarlist} 或 {cmd:newvarname}，新变量应被创建并填充缺失值。

{pstd}
在 {cmd:syntax} 命令之后，生成的 varlist 将在 {cmd:`varlist'} 中返回。如果有新变量（您编码了 {cmd:newvarname} 或 {cmd:newvarlist}），还会定义宏 {cmd:`typlist'}，包含每个新变量的存储类型，依次列出。


{marker description_of_namelist}{...}
{title:namelist描述}

	type                {it:无}
     或
可选择输入     {cmd:[}
然后输入    {cmd:namelist}  {cmd:name}
可选择键入{col 29}{cmd:(}{it:namelist_specifiers}{cmd:)}
	type{col 29}{cmd:]}    （如果您在开头键入了 {cmd:[}）

    其中 {it:namelist_specifiers} 为

	{cmd:name=}{it:name}
	{cmd:id="}{it:text}{cmd:"}
	{cmd:local}
	{cmd:min=}{it:#}                （仅适用于 {cmd:namelist}）
	{cmd:max=}{it:#}                （仅适用于 {cmd:namelist}）

    示例：
	{cmd:syntax namelist} {it:...}
	{cmd:syntax [namelist]} {it:...}
	{cmd:syntax name(id="equation name")} {it:...}
	{cmd:syntax [namelist(id="equation name")]} {it:...}
	{cmd:syntax namelist(name=eqlist id="equation list")} {it:...}
	{cmd:syntax [name(name=eqname id="equation name")]} {it:...}
	{cmd:syntax namelist(min=2 max=2)} {it:...}

{pstd}
{cmd:namelist} 是 {cmd:varlist} 的替代；它放宽了用户指定的名称必须为变量的限制。 {cmd:name} 是 {cmd:namelist(max=1)} 的简写。

{pstd}
{cmd:namelist} 在您希望命令具有几乎标准语法时使用，命令名称后跟一个名称列表（不一定是变量名称），然后是 {cmd:if}, {cmd:in}, {it:options} 等内容。例如，可以跟随一组变量标签名称。

{pstd}
如果您什么也不输入，命令将不允许 namelist。输入 {cmd:[} 和 {cmd:]} 意味着 namelist 是可选的。在 {cmd:syntax} 命令后，生成的 namelist 将在 {cmd:`namelist'} 中返回，除非指定了 {cmd:name=}{it:name} ，此时结果返回在 {cmd:`}{it:name}{cmd:'} 中。

{pstd}
{cmd:id=} 指定 namelist 的名称，并用于错误消息。默认值为 {cmd:id=namelist}。如果 {cmd:namelist} 是必需的但未指定 {cmd:id=}，当用户输入 "{cmd:mycmd} {cmd:if} ..."（省略 namelist）时，错误消息将为 "namelist required"（namelist 被要求）。如果您指定了 {cmd:id="equation name"}，则错误消息将为 "equation name required"。

{pstd}
{cmd:name=} 指定接收 namelist 的局部宏的名称；未指定该选项等同于指定 {cmd:name=namelist}。

{pstd}
{cmd:local} 指定用户指定的名称必须满足局部宏名称的命名约定。如果未指定此选项，则使用标准命名约定（名称可以以字母或下划线开头，此后还可以包含数字，且不得超过 32 个字符）。如果用户指定了无效名称，将发出错误消息。如果指定了 {cmd:local}，允许指定的名称以数字开头，但不得超过 31 个字符。


{marker description_of_anything}{...}
{title:anything描述}

	type                {it:无}
     或
可选择输入     {cmd:[}
输入                {cmd:anything}
可选择键入{col 29}{cmd:(}{it:anything_specifiers}{cmd:)}
	type{col 29}{cmd:]} 如果您在开头键入了 {cmd:[}。

    其中 {it:anything_specifiers} 为

	{cmd:name=}{it:name}
	{cmd:id="}{it:text}{cmd:"}
	{cmd:equalok}
	{cmd:everything}

    示例：
	{cmd:syntax anything} {it:...}
	{cmd:syntax [anything]} {it:...}
	{cmd:syntax anything(id="equation name")} {it:...}
	{cmd:syntax [anything(id="equation name")]} {it:...}
	{cmd:syntax anything(name=eqlist id="equation list")} {it:...}
	{cmd:syntax [anything(name=eqlist id="equation list")]} {it:...}
	{cmd:syntax anything(equalok)} {it:...}
	{cmd:syntax anything(everything)} {it:...}
	{cmd:syntax [anything(name=0 id=clist equalok)]} {it:...}

{pstd}
{cmd:anything} 用于您希望命令具有几乎标准语法的情况，命令名称后跟某个内容，然后是 {cmd:if}, {cmd:in}, {it:options} 等等。例如，命令可能需要后跟一个或多个表达式，或一个数字列表。

{pstd}
如果您什么也不输入，命令将不允许 "anything"。输入 {cmd:[} 和 {cmd:]} 意味着 "anything" 是可选的。在 {cmd:syntax} 命令之后，生成的 "anything list" 将在 {cmd:`anything'} 中返回，除非指定了 {cmd:name=}{it:name} ，此时结果将返回在 {cmd:`}{it:name}{cmd:'} 中。

{pstd}
{cmd:id=} 指定 "anything" 的名称，仅在错误消息中使用。例如，如果 {cmd:anything} 是必需的但未指定 {cmd:id=}，并且用户输入 "{cmd:mycmd} {cmd:if} ..." （省略 "anything"），错误消息将为 "something required"（something 被要求）。如果您指定了 {cmd:id="expression list"}，消息将为 "expression list required"。

{pstd}
{cmd:name=} 指定接收 "anything" 的局部宏的名称；未指定该选项等同于指定 {cmd:name=anything}。

{pstd}
{cmd:equalok} 指定 {cmd:=} 不被视为 {cmd:=}{it:exp} 中的部分，而是视为 {cmd:anything} 的一部分。

{pstd}
{cmd:everything} 指定 {cmd:if}, {cmd:in}, 和 {cmd:using} 不被视为标准语法的部分，而是视为 {cmd:anything} 的一部分。

{pstd}
{cmd:varlist}, {cmd:varname}, {cmd:namelist}, {cmd:name}, 和 {cmd:anything} 是备选项；您最多可以指定一个。


{marker description_of_if}{...}
{title:if描述}

	type                {it:无}
     或
可选择输入     {cmd:[}
输入                {cmd:if}
可选择键入     {cmd:/}
输入                {cmd:]}      （如果您在开头键入了 {cmd:[}）

    示例：
	{cmd:syntax} {it:...} {cmd:if} {it:...}
	{cmd:syntax} {it:...} {cmd:[if]} {it:...}
	{cmd:syntax} {it:...} {cmd:[if/]} {it:...}
	{cmd:syntax} {it:...} {cmd:if/} {it:...}

{pstd}
如果您什么也不输入，命令将不允许 {cmd:if} {it:exp}。

{pstd}
输入 {cmd:[} 和 {cmd:]} 意味着 {cmd:if} {it:exp} 是可选的。

{pstd}
在 {cmd:syntax} 命令后，生成的 {cmd:if} {it:exp} 将在 {cmd:`if'} 中返回。此宏包含 {cmd:if} 后跟表达式，除非您指定了 {cmd:/}，在这种情况下宏仅包含表达式。


{marker description_of_in}{...}
{title:in描述}

	type                {it:无}
     或
可选择输入     {cmd:[}
输入                {cmd:in}
可选择键入     {cmd:/}
输入                {cmd:]}      （如果您在开头键入了 {cmd:[}）

    示例：
	{cmd:syntax} {it:...} {cmd:in} {it:...}
	{cmd:syntax} {it:...} {cmd:[in]} {it:...}
	{cmd:syntax} {it:...} {cmd:[in/]} {it:...}
	{cmd:syntax} {it:...} {cmd:in/} {it:...}

{pstd}
如果您什么也不输入，命令将不允许 {cmd:in} {it:range}。

{pstd}
输入 {cmd:[} 和 {cmd:]} 意味着 {cmd:in} {it:range} 是可选的。

{pstd}
在 {cmd:syntax} 命令后，生成的 {cmd:in} {it:range} 将在 {cmd:`in'} 中返回。该宏包含 {cmd:in} 后跟范围，除非您输入了 {cmd:/}，在这种情况下宏仅包含范围。


{marker description_of_using}{...}
{title:using描述}

	type                {it:无}
     或
可选择输入     {cmd:[}
输入                {cmd:using}
可选择键入     {cmd:/}
输入                {cmd:]}      （如果您在开头键入了 {cmd:[}）

    示例：
	{cmd:syntax} {it:...} {cmd:using} {it:...}
	{cmd:syntax} {it:...} {cmd:[using]} {it:...}
	{cmd:syntax} {it:...} {cmd:[using/]} {it:...}
	{cmd:syntax} {it:...} {cmd:using/} {it:...}

{pstd}
如果您什么也不输入，命令将不允许 {cmd:using} {it:filename}。

{pstd}
输入 {cmd:[} 和 {cmd:]} 意味着 {cmd:using} {it:filename} 是可选的。

{pstd}
在 {cmd:syntax} 命令后，生成的文件名将在 {cmd:`using'} 中返回。该宏包含 {cmd:using} 后跟包含引号的文件名，除非您指定了 {cmd:/}，在这种情况下宏仅包含不带引号的文件名。


{marker description_of_=exp}{...}
{title:=exp描述}

	type                {it:无}
     或
可选择输入     {cmd:[}
输入                {cmd:=}
可选择键入     {cmd:/}
输入                {cmd:exp}
输入                {cmd:]}      （如果您在开头键入了 {cmd:[}）

    示例：
	{cmd:syntax} {it:...} {cmd:=exp} {it:...}
	{cmd:syntax} {it:...} {cmd:[=exp]} {it:...}
	{cmd:syntax} {it:...} {cmd:[=/exp]} {it:...}
	{cmd:syntax} {it:...} {cmd:=/exp} {it:...}

{pstd}
如果您什么也不输入，命令将不允许 {cmd:=}{it:exp}。

{pstd}
输入 {cmd:[} 和 {cmd:]} 意味着 {cmd:=}{it:exp} 是可选的。

{pstd}
在 {cmd:syntax} 命令后，生成的表达式将在 {cmd:`exp'} 中返回。该宏包含 {cmd:=}、一个空格和表达式，除非您指定了 {cmd:/}，在这种情况下宏仅包含表达式。


{marker description_of_weights}{...}
{title:权重描述}

	type                {it:无}
     或
输入                {cmd:[}
输入任意类型的     {cmdab:fw:eight}  {cmdab:aw:eight}  {cmdab:pw:eight}  {cmdab:iw:eight}
可选择输入     {cmd:/}
输入                {cmd:]}

    示例：
	{cmd:syntax} {it:...} {cmd:[fweight]} {it:...}
	{cmd:syntax} {it:...} {cmd:[fweight pweight]} {it:...}
	{cmd:syntax} {it:...} {cmd:[pweight fweight]} {it:...}
	{cmd:syntax} {it:...} {cmd:[fweight pweight iweight/]} {it:...}

{pstd}
如果您什么也不输入，命令将不允许权重。命令不能同时允许权重和 {cmd:=}{it:exp}。

{pstd}
您必须输入 {cmd:[} 和 {cmd:]}; 它们是必需的。权重始终是可选的。

{pstd}
第一个指定的权重类型是默认权重类型。

{pstd}
在 {cmd:syntax} 命令之后，生成的权重和表达式将在 {cmd:`weight'} 和 {cmd:`exp'} 中返回。 {cmd:`weight'} 包含权重类型或在未指定权重时为空。 {cmd:`exp'} 包含 {cmd:=}、一个空格和表达式，除非您指定了 {cmd:/}，在这种情况下 {cmd:`exp'} 仅包含表达式。


{marker description_of_options}{...}
{title:选项描述}

	type                {it:无}
     或
输入                {cmd:[,}
输入                {it:option_descriptors} （这些选项将是可选的）
可选择输入     {cmd:*}
输入                {cmd:]}
     或
输入                {cmd:,}
输入                {it:option_descriptors} （这些选项将是必需的）
可选择输入     {cmd:[}
可选择输入                {it:option_descriptors} （这些选项将是可选的）
可选择输入     {cmd:*}
可选择输入     {cmd:]}

    示例：
	{cmd:syntax} {it:...} {cmd:[, MYopt Thisopt]}
	{cmd:syntax} {it:...} {cmd:, MYopt Thisopt}
	{cmd:syntax} {it:...} {cmd:, MYopt [Thisopt]}
	{cmd:syntax} {it:...} {cmd:[, MYopt Thisopt *]}

{pstd}
如果您什么也不输入，命令将不允许选项。

{pstd}
方括号用于区分可选选项和必需选项。所有选项可以是可选的，所有选项可以是必需的，或者某些可以是可选的，其他则是必需的。

{pstd}
在 {cmd:syntax} 命令之后，选项将通过局部宏根据每个选项名称的前 31 个字母返回给您。如果您还指定了 {cmd:*}，任何剩余的选项将收集并一个接一个放置在 {cmd:`options'} 中。如果您不指定 {cmd:*}，如果用户指定了您未列出的任何选项，将返回错误。

{pstd}
{it:option_descriptors} 包括

		{it:{help syntax##optionally_on:可选打开}}
		{it:{help syntax##optionally_off:可选关闭}}
		{it:{help syntax##optional_integer_value:可选整数值}}
		{it:{help syntax##optional_real_value:可选实数值}}
		{it:{help syntax##optional_confidence_interval:可选置信区间}}
		{it:{help syntax##optional_credible_interval:可选可信区间}}
		{it:{help syntax##optional_numlist:可选数字列表}}
		{it:{help syntax##optional_varlist:可选变量列表}}
		{it:{help syntax##optional_namelist:可选名称列表}}
		{it:{help syntax##optional_string:可选字符串}}
		{it:{help syntax##optional_passthru:可选直接通过}}


{marker optionally_on}{...}
{title:可选打开的选项描述}

	type                {it:OPname}   （大写表示最小化缩写）

    示例：
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:replace} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:REPLACE} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:detail} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:Detail} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:CONStant} {it:...}

{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。因此，选项 {cmd:replace} 返回在局部宏 {cmd:`replace'} 中；选项 {cmd:detail} 返回在局部宏 {cmd:`detail'} 中；选项 {cmd:constant} 返回在局部宏 {cmd:`constant'} 中。

{pstd}
如果未指定，该宏不包含任何内容，否则它包含宏的完整拼写。

{pstd}
警告：如果选项名称的前两个字母为 {cmd:no}，请小心，例如名为 {cmd:notice} 的选项。在这种情况下，您必须至少大写 {cmd:N}。


{marker optionally_off}{...}
{title:可选关闭的选项描述}

	type                {cmd:no}
	type                {it:OPname}   （大写表示最小化缩写）

    示例：
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:noreplace} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:noREPLACE} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:nodetail} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:noDetail} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:noCONStant} {it:...}

{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母，排除 {cmd:no}。因此，选项 {cmd:noreplace} 返回在局部宏 {cmd:`replace'} 中；选项 {cmd:nodetail} 返回在局部宏 {cmd:`detail'} 中；选项 {cmd:noconstant} 返回在局部宏 {cmd:`constant'} 中。

{pstd}
如果未指定，该宏不包含任何内容，否则它包含宏的完整拼写，并含有 {cmd:no} 前缀。也就是说，在上述 {cmd:noREPLACE} 示例中，宏 {cmd:`replace'} 不包含任何内容，或者它包含 {cmd:noreplace}。


{marker optional_integer_value}{...}
{title:可选整数值的选项描述}

	type                {it:OPname}   （大写表示最小化缩写）
	type                {cmd:(整数}
	type                {it:#} （除非该选项是必需的）
	                      （默认整数值）
	type                {cmd:)}

    示例：
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:Count(integer 3)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:SEQuence(integer 1)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:dof(integer -1)} {it:...}

{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。

{pstd}
该宏包含用户指定的整数，或者包含默认值。


{marker optional_real_value}{...}
{title:可选实数值的选项描述}

	type                {it:OPname}   （大写表示最小化缩写）
	type                {cmd:(实数}
	type                {it:#} （除非该选项是必需的）
	                      （默认值）
	type                {cmd:)}

    示例：
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:Mean(real 2.5)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:SD(real -1)} {it:...}

{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。

{pstd}
该宏包含用户指定的实数，或者包含默认值。


{marker optional_confidence_interval}{...}
{title:可选置信区间的选项描述}

	type		    {it:OPname}   （大写表示最小化缩写）
	type		    {cmd:(cilevel)}
	
    示例：
        {cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:Level(cilevel)} {it:...}
        
{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。

{pstd}
如果用户指定了有效的置信区间水平，则宏包含该值；请参阅 {manhelp level R}。如果用户指定了无效水平，将发出错误消息，返回代码为 198。

{pstd}
如果用户未键入此选项，则宏包含从 {cmd:c(level)} 获取的当前默认水平。

{marker optional_credible_interval}{...}
{title:可选可信区间的选项描述}

	type		    {it:OPname}   （大写表示最小化缩写）
	type		    {cmd:(crlevel)}
	
    示例：
        {cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:CLEVel(crlevel)} {it:...}
        
{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。

{pstd}
如果用户指定了有效的可信区间水平，则宏包含该值；请参阅 {manhelp clevel BAYES}。如果用户指定了无效水平，将发出错误消息，返回代码为 198。

{pstd}
如果用户未键入此选项，则宏包含从 {cmd:c(clevel)} 获取的当前默认水平。


{marker optional_numlist}{...}
{title:可选数字列表的选项描述}

	type                {it:OPname}   （大写表示最小化缩写）
	type                {cmd:(numlist}
	type                {cmdab:asc:ending}  或  {cmdab:desc:ending}  或 {it:无}
可选择输入     {cmdab:int:eger}
可选择输入     {cmdab:miss:ingokay}
可选择输入     {cmd:min=}{it:#}
可选择输入     {cmd:max=}{it:#}
可选择输入     {cmd:>}{it:#}  或  {cmd:>=}{it:#}   或 {it:无}
可选择输入     {cmd:<}{it:#}  或  {cmd:<=}{it:#}   或 {it:无}
可选择输入     {cmd:sort}
	type                {cmd:)}

    示例：
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:VALues(numlist)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:VALues(numlist max=10 sort)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:TIME(numlist >0)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:FREQuency(numlist >0 integer)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:OCCur(numlist missingokay >=0 <1e+9)} {it:...}

{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。

{pstd}
宏包含用户指定的值，但按顺序列出。例如，用户可能指定 {hi:time(1(1)4,10)} 使得局部宏 {cmd:`time'} 包含 "{hi:1 2 3 4 10}"。

{pstd}
{cmd:min} 和 {cmd:max} 指定列表中允许的元素的最小和最大数量。

{pstd}
{cmd:<}, {cmd:<=}, {cmd:>}, 和 {cmd:>=} 指定列表中允许的元素范围。

{pstd}
{cmd:integer} 表明用户只能指定整数值。

{pstd}
{cmd:missingokay} 表明用户可以将 {help missing_zh:missing values} 作为列表元素。

{pstd}
{cmd:ascending} 指定用户必须以升序（无重复值）提供列表。{cmd:descending} 指定用户必须以降序（无重复值）提供列表。

{pstd}
{cmd:sort} 指定在返回之前对列表进行排序。与修饰符 {cmd:ascending} 区分开来，后者表示用户必须以升序输入列表。{cmd:sort} 表示用户可以以任何顺序输入列表，但返回时必须按升序排列。
{cmd:ascending} 表示列表不得具有重复元素。
{cmd:sort} 对列表没有此类限制。


{marker optional_varlist}{...}
{title:可选变量列表的选项描述}

	type                {it:OPname}   （大写表示最小化缩写）
	type                {cmd:(varlist}   或   {cmd:(varname}
可选择输入     {cmdab:num:eric}    或   {cmdab:str:ing}
可选择输入     {cmd:min=}{it:#}
可选择输入     {cmd:max=}{it:#}
可选择输入     {cmd:fv}
可选择输入     {cmd:ts}
	type                {cmd:)}

    示例：
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:ROW(varname)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:BY(varlist)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:Counts(varname numeric)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:TItlevar(varname string)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:Sizes(varlist numeric min=2 max=10)} {it:...}

{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。

{pstd}
宏包含用户指定的名称，依次列出。

{pstd}
{cmd:min} 指定如果该选项被给定，则必须指定的最小变量数量。{hi:min=1} 是默认值。

{pstd}
{cmd:max} 指定如果该选项被给定，则可以指定的最大变量数量。对于 {cmd:varlist}，默认值为 {hi:max=800}（您可以将其设置为更大），对于 {cmd:varname}，默认值为 {hi:max=1}。

{pstd}
{cmd:numeric} 指定变量列表必须完全由数字变量组成。{cmd:string} 指定变量列表必须完全由字符串变量组成，表示 {cmd:str}{it:#} 或 {cmd:strL}。{cmd:str#} 和 {cmd:strL} 指定变量列表必须完全由 {cmd:str}{it:#} 或 {cmd:strL} 变量组成。

{pstd}
{cmd:fv} 指定变量列表可以包含因子变量。

{pstd}
{cmd:ts} 指定变量列表可以包含时间序列运算符。


{marker optional_namelist}{...}
{title:可选名称列表的选项描述}

	type                {it:OPname}   （大写表示最小化缩写）
	type                {cmd:(namelist}   或   {cmd:(name}
可选择输入     {cmd:min=}{it:#}
可选择输入     {cmd:max=}{it:#}
可选择输入     {cmd:local}
	type                {cmd:)}

    示例：
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:GENerate(name)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:MATrix(name)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:REsults(namelist min=2 max=10)} {it:...}

{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。

{pstd}
宏包含用户指定的变量，依次列出。

{pstd}
请勿将 {cmd:namelist} 与 {cmd:varlist} 混淆。{cmd:varlist} 是指定接收现有变量名称的选项的合适方式。{cmd:namelist} 则是用于收集其他事物名称，例如矩阵，有时用于获取要创建的新变量的名称。然后您有责任验证指定的名称是否不存在于 Stata 变量中。

{pstd}
{cmd:min} 指定如果该选项被给定，则必须指定的最小名称数量。{hi:min=1} 是默认值。

{pstd}
{cmd:max} 指定如果该选项被给定，则可以指定的最大名称数量。{hi:max=1} 是 {cmd:name} 的默认值。对于 {cmd:namelist}，默认值为 Stata 中允许的最大变量数量。

{pstd}
{cmd:local} 指定用户指定的名称必须满足局部宏名称的命名约定。


{marker optional_string}{...}
{title:可选字符串的选项描述}

	type                {it:OPname}   （大写表示最小化缩写）
	type                {cmdab:(str:ing}
可选择输入     {cmd:asis}
	type                {cmd:)}

    示例：
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:Title(string)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:XTRAvars(string)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:SAVing(string asis)} {it:...}

{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。

{pstd}
宏包含用户指定的字符串，或者不包含任何内容。

{pstd}
{cmd:asis} 指定选项的参数将按用户输入的方式返回，包括引号（如果指定）及前后的空格。如果选项的参数可能包含子选项或表达式，其中包含引号字符串，则应指定 {cmd:asis}。如果您指定了 {cmd:asis}，请确保在引用宏时使用复合双引号。


{marker optional_passthru}{...}
{title:可选直通的选项描述}

	type                {it:OPname}   （大写表示最小化缩写）
	type                {cmd:(passthru)}

    示例：
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:Title(passthru)} {it:...}
	{cmd:syntax} {it:...} {cmd:,} {it:...} {cmd:SAVing(passthru)} {it:...}

{pstd}
选项的结果以宏名称的形式返回，形式为选项名称的前 31 个字母。

{pstd}
宏包含用户指定的完整选项——未缩写的选项名称，括号和参数，或者不包含任何内容。例如，如果用户输入 {hi:ti("My Title")}，宏将包含 {hi:title("My Title")}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <syntax.sthlp>}