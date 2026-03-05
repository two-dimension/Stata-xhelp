{smcl}
{* *! version 1.3.12  18sep2018}{...}
{vieweralsosee "[P] program properties" "mansection P programproperties"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "[R] nestreg" "help nestreg_zh"}{...}
{vieweralsosee "[R] stepwise" "help stepwise_zh"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{viewerjumpto "Description" "program_properties_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "program_properties_zh##linkspdf"}{...}
{viewerjumpto "Option" "program_properties_zh##option"}{...}
{viewerjumpto "Remarks" "program_properties_zh##remarks"}
{help program_properties:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[P] program properties} {hline 2}}用户定义程序的属性{p_end}
{p2col:}({mansection P programproperties:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
用户定义程序可以具有与之相关的属性。一些 Stata 的前缀命令 - 比如 {cmd:svy} 和 {cmd:stepwise} - 使用这些属性进行命令验证。您可以通过在 {opt program} 中使用 {opt properties()} 选项将程序属性与程序关联。

{p 8 25 2}
{cmdab:pr:ogram}
[{cmdab:de:fine}]
	{it:command}
	[{cmd:,}
		{opt prop:erties(namelist)}
		...]{p_end}
               {cmd://} {it:程序主体}

        {cmd:end}

{pstd}
您可以使用 {cmd:properties} 宏函数检索 {it:command} 的程序属性。

{p 8 24 2}
{cmdab:gl:obal} {it:mname} {cmd::} {cmd:properties} {it:command}

{p 8 24 2}
{cmdab:loc:al} {it:lclname} {cmd::} {cmd:properties} {it:command}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P programpropertiesRemarksandexamples:备注与示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt properties(namelist)} 表示 {it:command} 具有指定的属性。 {it:namelist} 可以包含最多 80 个字符，包括分隔空格。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help program_properties##nestreg:编写可与 nestreg 和 stepwise 一起使用的程序}
	{help program_properties##svy:编写可与 svy 一起使用的程序}
	{help program_properties##mi:编写可与 mi 一起使用的程序}
	{help program_properties##st:生存分析命令的属性}
	{help program_properties##eform:指数化系数的属性}
	{help program_properties##together:汇总内容}
	{help program_properties##macro:检查程序属性}


{marker nestreg}{...}
{title:编写可与 nestreg 和 stepwise 一起使用的程序}

{pstd}
一些 Stata 的估计命令可以与 {cmd:nestreg} 和 {cmd:stepwise} 前缀命令一起使用；请见 {help nestreg_zh:[R] nestreg} 和 {help stepwise_zh:[R] stepwise}。例如，{cmd:regress} 命令的语法图可以表示为

{p 16 33 2}
[{cmd:nestreg,} ...{cmd::}]  {cmdab:reg:ress} ...

{pstd}
或者

{p 16 33 2}
[{cmd:stepwise,} ...{cmd::}]  {cmdab:reg:ress} ...

{pstd}一般而言，这些前缀命令的语法为

{p 16 31 2}
{it:prefix_command}
[{cmd:,} {it:prefix_options}]
	{cmd::} {it:command}
	{depvar}
	{opth (varlist)}
	[{opth (varlist)} ...]
	{ifin}
	[{cmd:,} {it:options}]

{pstd}
其中 {it:prefix_command} 是 {cmd:nestreg} 或 {cmd:stepwise}。

{pstd}
您必须遵循一些额外的编程要求，以编写可以与 {cmd:nestreg} 和 {cmd:stepwise} 前缀命令一起使用的程序 (ado 文件)。一些理论要求必须满足，以证明所使用的命令与 {cmd:nestreg} 或 {cmd:stepwise} 的合理性。

{phang}
o  {it:command} 必须是 {cmd:eclass} 并接受标准估计语法；见 {manhelp program P}、{manhelp syntax P} 和 {manhelp mark P}。

{p 16 24 2}
{it:command} {varlist} {ifin} {weight} [{cmd:,} {it:options}]

{phang}
o  {it:command} 必须将模型系数和附加参数存储在 {cmd:e(b)} 中，将估计样本大小存储在 {cmd:e(N)} 中，并且必须在 {cmd:e(sample)} 中识别估计子样本；见 {manhelp ereturn P}。

{phang}
o  对于似然比检验，{it:command} 必须具有 {cmd:swml} 属性。例如，{cmd:poisson} 的程序定义如下

{p 16 34 2}
{cmd:program} {cmd:poisson,} ... {cmd:properties(}... {cmd:swml} ...{cmd:)}

{pmore}
{it:command} 还必须将对数似然值存储在 {cmd:e(ll)} 中，将模型的自由度存储在 {cmd:e(df_m)} 中。

{phang}
o  对于 Wald 检验，{it:command} 如果没有 {cmd:swml} 属性，必须具有 {cmd:sw} 属性。例如，{cmd:qreg} 的程序定义如下

{p 16 31 2}
{cmd:program} {cmd:qreg,} ...{cmd:properties(}... {cmd:sw} ...{cmd:)}

{pmore}
{it:command} 还必须将系数及附加参数的方差估计存储在 {cmd:e(V)} 中；见 {manhelp test R}。


{marker svy}{...}
{title:编写可与 svy 一起使用的程序}

{pstd}
一些 Stata 的估计命令可以与 {cmd:svy} 前缀一起使用；请见 {help svy_zh:[SVY] svy}。例如，{cmd:regress} 命令的语法图可以表示为

{p 16 23 2}
[{cmd:svy:}]  {cmdab:reg:ress} ...

{pstd}
一般而言，{cmd:svy} 前缀的语法为

{p 16 20 2}
{cmd:svy} [{cmd:,} {it:svy_options}]
	{cmd::} {it:command}
	{varlist}
	{ifin}
	[{cmd:,} {it:options}]

{pstd}
您必须遵循一些额外的编程要求，以编写可以与 {cmd:svy} 前缀一起使用的程序 (ado 文件)。由 {cmd:svy} 前缀命令施加的额外要求来自它使用的各种方差估计方法：
{cmd:vce(bootstrap)},
{cmd:vce(brr)},
{cmd:vce(jackknife)},
{cmd:vce(sdr)},
和 {cmd:vce(linearized)}。每种方差估计方法都有其理论要求，必须满足，以证明将其与给定命令一起使用的合理性。

{phang}
o  {it:command} 必须是 {cmd:eclass}，允许 {cmd:iweight} 并接受标准估计语法；见 {manhelp program P}、{help syntax_zh} 和 {help mark_zh}。

{p 16 24 2}
{it:command} {varlist} {ifin} {weight} [{cmd:,} {it:options}]

{phang}
o  {it:command} 必须将模型系数和附加参数存储在 {cmd:e(b)} 中，将估计样本大小存储在 {cmd:e(N)} 中，并且必须在 {cmd:e(sample)} 中识别估计子样本；见 {manhelp ereturn P}。

{phang}
o  {cmd:svy} 的 {cmd:vce(bootstrap)}、{cmd:vce(brr)} 和 {cmd:vce(sdr)} 要求 {it:command} 具有 {cmd:svyb} 属性。例如，{cmd:regress} 的程序定义如下

{p 16 35 2}
{cmd:program} {cmd:regress,} ... {cmd:properties(}... {cmd:svyb} ...{cmd:)}

{phang}
o  {cmd:vce(jackknife)} 要求 {it:command} 具有 {cmd:svyj} 属性。

{phang}
o  {cmd:vce(linearized)} 有以下要求：

{phang2}
a.  {it:command} 必须具有 {cmd:svyr} 属性。

{phang2}
b.  {cmd:predict} 在 {it:command} 之后必须能够生成以下语法的得分：

{p 16 24 2}
{cmd:predict} {dtype} {it:{help newvarlist##stub*:stub}}{cmd:*} {ifin}{cmd:,} {opt sc:ores}

{pmore2}
这种语法意味着具有 k 个方程的估计结果将导致 {cmd:predict} 生成 k 个新的方程级别得分变量。这些新的方程级别得分变量是 {it:stub}{cmd:_1}（第一个方程）、{it:stub}{cmd:_2}（第二个方程）、...，及 {it:stub}{cmd:_}k（最后一个方程）。实际上，{cmd:svy} 并不严格要求这些新变量以这种方式命名，但遵循这个约定是个好主意。

{pmore2}
{cmd:predict} 生成的方程级别得分变量必须是可以用于使用泰勒线性化（又称为 delta 方法）估计方差的形式；见
{manlink SVY 方差估计}

{phang2}
c.  {it:command} 必须将基于模型的系数及附加参数的方差估计存储在 {cmd:e(V)} 中；见
{manlink SVY 方差估计}。


{marker mi}{...}
{title:编写可与 mi 一起使用的程序}

{pstd}
Stata 的 {cmd:mi} 命令集提供了多重插补，以在存在缺失值的情况下提供更好的参数估计及其标准误差；见 {bf:{help mi_zh:[MI] Intro}}。旨在与 {cmd:mi} {cmd:estimate} 前缀一起使用的估计命令（见 {manhelp mi_estimate MI:mi estimate}）必须具有 {cmd:mi} 属性，这表明该命令满足以下要求：

{phang}
o  该命令是 {cmd:eclass}。

{phang}
o  该命令将其名称存储在 {cmd:e(cmd)} 中。

{phang}
o  该命令将模型系数和附加参数存储在 {cmd:e(b)} 中，将相应的方差矩阵存储在 {cmd:e(V)} 中，将估计样本大小存储在 {cmd:e(N)} 中，并在 {cmd:e(sample)} 中识别估计子样本。

{phang}
o  该命令将附加参数的数量存储在 {cmd:e(k_aux)} 中。该信息用于模型 F 检验，当命令在 {cmd:e(df_m)} 中存储模型自由度时，{cmd:mi estimate} 会报告。

{phang}
o  如果该命令对系数的检验和置信区间的报告采用小样本调整，该命令将残差的自由度存储在 {cmd:e(df_r)} 中。

{phang}
o  由于 {cmd:mi} {cmd:estimate} 使用自己的例程来显示输出，为了确保结果良好显示，该命令还将其标题存储在 {cmd:e(title)} 中。 {cmd:mi} {cmd:estimate} 还使用宏 {cmd:e(vcetype)} 或 {cmd:e(vce)} 来标记插补内方差，但这些宏通常由其他 Stata 例程自动设置。


{marker st}{...}
{title:生存分析命令的属性}

{pstd}
Stata 的 st 命令集具有 {cmd:st} 程序属性，表示它们具有以下特征：

{phang}
o  该命令只应在先前使用 {cmd:stset} 设置的数据上运行；见 {manhelp stset ST}。

{phang}
o  调用该命令时不会指定因变量。 {it:varlist} 中的所有变量都是自变量。 "因变量" 是失败时间，由 {cmd:stset} 处理。

{phang}
o  该命令不指定权重，而是从 {cmd:stset} 中获得。

{phang}
o  如果请求了稳健或基于复制的标准误差，则默认聚类水平根据所设置的 ID 变量（如果有的话） {cmd:stset}。


{marker eform}{...}
{title:指数化系数的属性}

{pstd}
Stata 有几个前缀命令 - 比如 {cmd:bootstrap}、{cmd:jackknife} 和 {cmd:svy} - 使用替代方差估计技术对现有命令。这些前缀命令在报告和保存估计结果时表现得像常规 Stata 估计命令。给定适当的属性，这些前缀命令甚至可以报告指数化系数。实际上，各种 {cmd:eform()} 选项的属性名称与选项名称相同：

{p2colset 9 28 30 2}{...}
{p2col :{it:option}/{it:property}}描述{p_end}
{p2line}
{p2col :{cmd:hr}}危险比{p_end}
{p2col :{cmd:nohr}}系数而非危险比{p_end}
{p2col :{cmd:shr}}子危险比{p_end}
{p2col :{cmd:noshr}}系数而非子危险比{p_end}
{p2col :{cmd:irr}}发生率比{p_end}
{p2col :{cmd:or}}比值比{p_end}
{p2col :{cmd:rrr}}相对风险比{p_end}
{p2line}
{p2colreset}{...}

{pstd}
例如，{cmd:logit} 的程序定义看起来像下面这样：

{p 8 22 2}
{cmd:program} {cmd:logit,} ... {cmd:properties(}... {cmd:or} ...{cmd:)}


{marker together}{...}
{title:汇总内容}

{pstd}
{cmd:logit} 可以报告比值比，适用于 {cmd:svy}，并且适用于 {cmd:stepwise}。{cmd:logit} 的程序定义如下

{phang2}
{cmd:program logit,} ... {cmd:properties(or svyb svyj svyr swml mi)} ...


{marker macro}{...}
{title:检查程序属性}

{pstd}
您可以使用 {cmd:properties} 宏函数检查与程序相关的属性；见 {manhelp macro P}。例如，以下命令检索并显示 {cmd:logit} 的程序属性。

{phang2}{cmd:. local logitprops : properties logit}{p_end}
{phang2}{cmd:. di "`logitprops'"}{p_end}
{phang2}{result:or svyb svyj svyr swml mi}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <program_properties.sthlp>}