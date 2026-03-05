{smcl}
{* *! version 1.0.18  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi set" "mansection MI miset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi convert" "help mi_convert_zh"}{...}
{vieweralsosee "[MI] mi describe" "help mi_describe_zh"}{...}
{vieweralsosee "[MI] mi export" "help mi_export_zh"}{...}
{vieweralsosee "[MI] mi extract" "help mi_extract_zh"}{...}
{vieweralsosee "[MI] mi import" "help mi_import_zh"}{...}
{vieweralsosee "[MI] mi XXXset" "help mi_xxxset_zh"}{...}
{vieweralsosee "[MI] Styles" "help mi_styles_zh"}{...}
{viewerjumpto "Syntax" "mi_set_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_set_zh##menu"}{...}
{viewerjumpto "Description" "mi_set_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_set_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mi_set_zh##remarks"}
{help mi_set:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MI] mi set} {hline 2}}声明多重插补数据{p_end}
{p2col:}({mansection MI miset:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi set} {it:style}

	    其中 {it:style} 为 {opt w:ide}
			     {opt ml:ong}
			     {opt fl:ong}
			     {opt flongs:ep} {it:name}


{p 8 12 2}
{cmd:mi} {cmdab:reg:ister} 
{c -(}{cmdab:imp:uted} |
{cmdab:pas:sive} |
{cmdab:reg:ular}{c )-}
{varlist}

{p 8 12 2}
{cmd:mi} {cmdab:unreg:ister} {varlist}


{p 8 12 2}
{cmd:mi set}
{cmd:M}
{c -(}{cmd:=} | {cmd:+=} | {cmd:-=}{c )-} {it:#}

{p 8 12 2}
{cmd:mi set}
{cmd:m} {cmd:-=} {cmd:(}{it:{help numlist_zh}}{cmd:)}


{p 8 12 2}
{cmd:mi} {cmd:unset} [{cmd:,} {cmd:asis}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:set} 用于将常规的 Stata 数据集设置为 {cmd:mi} 数据集。
{cmd:mi} {cmd:set} 还用于修改已设置数据集的属性。
一个 {cmd:mi} {cmd:set} 数据集具有以下属性：

{p 8 12 2}
o  数据以 {it:style} 记录： {cmd:wide}、{cmd:mlong}、{cmd:flong}，
    或 {cmd:flongsep}；请参见 {manhelp mi_styles MI:样式}。

{p 8 12 2}
o  变量被注册为 {cmd:imputed}、{cmd:passive} 或 {cmd:regular}，
   或它们被保留为未注册。

{p 8 12 2}
o  除了 {it:m}=0，数据中的缺失值，数据包括 
    {it:M}>=0 个被插补变量的插补。

{p 4 4 2}
{cmd:mi} {cmd:set} {it:style} 开始设置过程，通过设置
所需的样式。 {cmd:mi} {cmd:set} {it:style} 将所有变量设置为 
未注册，并将 {it:M}=0。

{p 4 4 2}
{cmd:mi} {cmd:register} 
将变量注册为 {cmd:imputed}、{cmd:passive} 或 {cmd:regular}。
可以逐个或分组注册变量，并且可以 
注册和重新注册。

{p 4 4 2}
{cmd:mi} {cmd:unregister} 取消注册已注册的变量，
这在您犯错时很有用。请谨慎操作。 取消注册插补或被动变量可能会导致在
{it:m}>0 时失去填补的缺失值，如果您的数据以宽格式或 mlong 格式记录。
在这种情况下，只需 {cmd:mi} {cmd:register} 正确注册变量，无需先 {cmd:mi} {cmd:unregister}。

{p 4 4 2}
{cmd:mi} {cmd:set} {cmd:M} 修改 {it:M}，插补的总数。
{it:M} 可以增加或减少。 {it:M} 可以在插补变量注册之前或之后设置。

{p 4 4 2}
{cmd:mi} {cmd:set} {cmd:m} 删除数据中的选定插补。

{p 4 4 2}
{cmd:mi unset} 是一个很少使用的命令，用于取消设置数据。更好的
替代方案包括 {bf:{help mi_extract_zh:mi extract}} 
和 
{bf:{help mi_export_zh:mi export}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI misetRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
数据必须在使用其他 {cmd:mi} 命令之前 {cmd:mi} {cmd:set}。 
数据可以通过两个方式变为 {cmd:mi} {cmd:set}：直接使用 
{cmd:mi} {cmd:set} {it:style} 或使用
{bf:{help mi_import_zh:mi import}}。

{p 4 4 2}
{cmd:mi} {cmd:register}、{cmd:mi} {cmd:set} {cmd:M} 和 
{cmd:mi} {cmd:set} {it:m} 命令
适用于已经设置的数据，并且即使是导入数据也很有用。

{p 4 4 2}
备注按以下标题呈现：

	{help mi_set##style:mi set style}
	{help mi_set##register:mi register and mi unregister}
	{help mi_set##Mandm:mi set M and mi set m}
	{help mi_set##unset:mi unset}


{marker style}{...}
{title:mi set style}

{p 4 4 2}
{cmd:mi} {cmd:set} {it:style} 开始设置过程。
{cmd:mi} {cmd:set} {it:style} 具有以下形式：

	{cmd:mi set wide}
	{cmd:mi set mlong}
	{cmd:mi set flong}
	{cmd:mi set flongsep} {it:name}

{p 4 4 2}
选择哪种样式并不重要，因为您可以随时 
使用 {bf:{help mi_convert_zh:mi convert}} 更改样式。
我们通常选择 {cmd:wide} 开始。

{p 4 4 2}
如果您的数据很大，则可能需要使用 {cmd:flongsep}。 
{cmd:mi} {cmd:set} {cmd:flongsep} 要求您指定一个名称，用于 
flongsep 数据集集合。
请参见 {it:{help mi_styles##advice_flongsep:使用 flongsep 的建议}}
在 {bf:{help mi_styles_zh:[MI] 样式}} 中。

{p 4 4 2}
如果您打算拥有 {help mi_glossary##def_varying:超级变化} 变量， 
您需要选择 {cmd:flong} 或 {cmd:flongsep}，否则 
您需要在稍后将 {cmd:mi} {cmd:convert} 为 flong 或 flongsep 格式。

{p 4 4 2}
数据的当前样式由 
{cmd:mi} {cmd:query} 和 {cmd:mi} {cmd:describe} 命令显示；请参见 
{bf:{help mi_describe_zh:[MI] mi describe}}。


{marker register}{...}
{title:mi register 和 mi unregister}

{p 4 4 2}
{cmd:mi} {cmd:register} 有三种形式：

	{cmd:mi register imputed} {it:varlist}
	{cmd:mi register passive} {it:varlist}
	{cmd:mi register regular} {it:varlist}

{p 4 4 2}
请参见 {bf:{help mi_glossary_zh:[MI] 词汇表}}
以获取关于 
{help mi_glossary##def_imputed:插补、被动和常规变量} 的定义。

{p 4 4 2}
您需要注册插补变量。
如果您打算使用 
{bf:{help mi_impute_zh:mi impute}} 来插补缺失值，则必须 
首先注册变量。

{p 4 4 2}
关于被动变量，我们建议您注册它们，如果您的
数据为宽格式，则您需要注册它们。 如果您通过使用 {bf:{help mi_passive_zh:mi passive}} 创建被动
变量，该命令会自动为您注册它们。

{p 4 4 2}
    是否注册常规变量由您决定。 在所有样式中，除宽格式外，注册更安全，因为在长样式中，您可能会无意中创建
    变化的变量。
    我们认为注册更安全是因为常规变量不应在 {it:m} 之间变化，并且在长样式中，您可能会无意中创建
    变化的变量。如果变量已注册，{cmd:mi} 将为您检测和修复错误。

{p 4 4 2}
包含帮助 mi_longvarnames

{p 4 4 2}
    {help mi_glossary##def_varying:超级变化变量} -- 请见
    {bf:{help mi_glossary_zh:[MI] 词汇表}} --
    发生的机会很少，但如果您有它们，请注意它们只能存储在 flong 和 flongsep 数据中，并且绝不应注册。

{p 4 4 2}
    变量的注册状态由 
    {bf:{help mi_describe_zh:mi describe}} 列出。

{p 4 4 2}
如果您错误地注册了变量，请使用 {cmd:mi} {cmd:unregister}，
有一个例外：如果您错误地将变量注册为
{cmd:imputed}，但打算将其注册为 {cmd:passive}，或反之亦然，直接使用 {cmd:mi} {cmd:register} 
重新注册变量。
仅仅取消注册被动或插补变量可能会导致 
{it:m}>0 的值被 {it:m}=0 的值替换，如果数据为宽或 mlong 格式。

{p 4 4 2}
除去该例外，您首先需要 {cmd:mi} {cmd:unregister} 变量
然后再重新注册它们。


{marker Mandm}{...}
{title:mi set M 和 mi set m}

{p 4 4 2}
{cmd:mi} {cmd:set} {cmd:M} 很少使用，而 
{cmd:mi} {cmd:set} {cmd:m} 有时使用。

{p 4 4 2}
{cmd:mi} {cmd:set} {cmd:M} 设置 {it:M}，插补的总数。
语法为

	{cmd:mi set M  =} {it:#}
	{cmd:mi set M +=} {it:#}
	{cmd:mi set M -=} {it:#}

{p 4 4 2}
{cmd:mi} {cmd:set} {cmd:M} {cmd:=} {it:#} 将 {it:M} 设置为 {it:#}。
插补根据需要添加或删除。 如果插补被 
添加，新插补将从 {it:m}=0 中获取插补和被动 
变量的值，这意味着在新的插补中尚未替换缺失值。
如果您打算使用 {bf:{help mi_impute_zh:mi impute}} 插补值，增加 {it:M} 
并不是必要的。

{p 4 4 2}
{cmd:mi} {cmd:set} {cmd:M} {cmd:+=} {it:#} 将 {it:M} 增加 {it:#}。

{p 4 4 2}
{cmd:mi} {cmd:set} {cmd:M} {cmd:-=} {it:#} 将 {it:M} 减少 {it:#}。

{p 4 4 2}
{cmd:mi} {cmd:set} {cmd:m} {cmd:-=} {cmd:(}{it:numlist}{cmd:)} 
删除指定的插补。
例如，如果您有 {it:M}=5 个插补并想删除
插补 2，从而留下 {it:M}=4，您可以输入 
{cmd:mi} {cmd:set} {cmd:m} {cmd:-=} {cmd:(2)}。


{marker unset}{...}
{title:mi unset}

{p 4 4 2}
如果您想取消设置数据，最好的选择是 
{bf:{help mi_extract_zh:mi extract}}
和
{bf:{help mi_export_zh:mi export}}。
{cmd:mi} {cmd:extract} {cmd:0} 命令将内存中的数据替换为 
{it:m}=0 的数据，取消设置。 {cmd:mi} {cmd:export} 命令将内存中的数据替换为可以发送给非 Stata 用户的  
取消设置数据。

{p 4 4 2}
{cmd:mi} {cmd:unset} 是为了完整性而包含的，如果它有 
任何用处，那将是程序员使用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_set.sthlp>}