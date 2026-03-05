{smcl}
{* *! version 1.0.16  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi passive" "mansection MI mipassive"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi reset" "help mi_reset_zh"}{...}
{vieweralsosee "[MI] mi xeq" "help mi_xeq_zh"}{...}
{viewerjumpto "语法" "mi_passive_zh##syntax"}{...}
{viewerjumpto "菜单" "mi_passive_zh##menu"}{...}
{viewerjumpto "描述" "mi_passive_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mi_passive_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi_passive_zh##options"}{...}
{viewerjumpto "备注" "mi_passive_zh##remarks"}
{help mi_passive:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MI] mi passive} {hline 2}}生成/替换并注册被动变量{p_end}
{p2col:}({mansection MI mipassive:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:mi} {opt pas:sive}{cmd::}
{c -(}{help generate_zh:{ul:g}enerate}
|
{bf:{help egen_zh}}
|
{bf:{help replace}}{c )-} ...

{p 8 16 2}
{cmd:mi} {opt pas:sive}{cmd::} {cmd:by} {varlist}{cmd::}
{c -(}{help generate_zh:{ul:g}enerate}
|
{bf:{help egen_zh}}
|
{bf:{help replace}}{c )-} ...


{p 4 4 2}
完整语法为

{p 8 16 2}
{cmd:mi} {opt pas:sive}[{cmd:,} {it:options}]{cmd::} [{cmd:by}
{varlist} [{cmd:(}{varlist}{cmd:)}]{cmd::}]
{p_end}
{right:{c -(}{help generate_zh:{ul:g}enerate} | {bf:{help egen_zh}} | {bf:{help replace}}{c )-} ...}

{synoptset 15}{...}
{synopthdr}
{synoptline}
{synopt:{cmdab:noup:date}}见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}{p_end}

{synopt:{cmd:nopreserve}}不首先 {cmd:preserve}{p_end}
{synoptline}
{p2colreset}{...}

{p 4 4 2}
另请参见 {bf:{help generate_zh:[D] generate}} 和 {bf:{help egen_zh:[D] egen}}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:passive} 创建并注册被动变量或替换现有被动变量的内容。

{p 4 4 2}
更准确地说，{cmd:mi} {cmd:passive} 在每个 {it:m}=0, {it:m}=1, ..., {it:m}={it:M} 上执行指定的 {cmd:generate}, {cmd:egen} 或 {cmd:replace} 命令；参见 {manhelp generate D}, {manhelp egen D}, 和 {manhelp replace D}。如果命令是 {cmd:generate} 或 {cmd:egen}，那么 {cmd:mi} {cmd:passive} 将新变量注册为被动。如果命令是 {cmd:replace}，则 {cmd:mi} {cmd:passive} 验证该变量是否已经注册为被动。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI mipassiveRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:noupdate}
    在某些情况下抑制该命令可能执行的自动 {cmd:mi} {cmd:update}； 
    参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}。

{p 4 8 2}
{cmd:nopreserve} 是程序员选项。它指定 {cmd:mi} {cmd:passive} 在通常情况下不对数据进行 {cmd:preserve}。这适用于在调用 {cmd:mi} {cmd:passive} 之前已经保存了数据的程序员。
 

{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注以以下标题呈现：

        {help mi_passive##basics:mi passive 基本概念}
	{help mi_passive##by:mi passive 与 by 前缀一起工作}
	{help mi_passive##wide:mi passive 在宽格式下最快}
	{help mi_passive##varying:mi passive 和超级变化变量}
	{help mi_passive##renaming:重命名被动变量}
	{help mi_passive##dropping:删除被动变量}
	{help mi_passive##recreating:当插补值变化时更新被动变量}
	{help mi_passive##alternatives:mi passive 的替代方案}


{marker basics}{...}
{title:mi passive 基本概念}

{p 4 4 2}
被动变量是一个是插补变量或其他被动变量函数的变量。例如，如果变量 {cmd:age} 被插补，并且你从中创建了 {cmd:lnage}，则 {cmd:lnage} 变量将是被动的。创建 {cmd:lnage} 的正确方法是输入

	. {cmd:mi passive: generate lnage = ln(age)}

{p 4 4 2}
简单地输入 

	. {cmd:generate lnage = ln(age)} 

{p 4 4 2}
是不够的，因为这会在 {it:m}=0 数据中创建 {cmd:lnage}，而 {cmd:age} 作为插补变量，在 {it:m} 上的取值是变化的。在某些情况下，省略 {cmd:mi} {cmd:passive} 前缀几乎是足够的，即当数据为 mlong 或 flong 格式时，但即使在这种情况下，你还需要跟进输入 {cmd:mi} {cmd:register}
{cmd:passive} {cmd:lnage}。 

{p 4 4 2}
要创建被动变量或更改现有被动变量的值，请使用 {cmd:mi} {cmd:passive}。被动变量不能是超级变化的；参见 
{help mi_passive##varying:mi passive 和超级变化变量}。


{marker by}{...}
{title:mi passive 与 by 前缀一起工作}

{p 4 4 2}
你可以使用 {cmd:mi} {cmd:passive} 与 {cmd:by} 前缀。例如，你可以输入 

        . {cmd:mi passive: by person: generate totaltodate = sum(amount)}

{p 4 4 2}
或 

	. {cmd:mi passive: by sex: egen avg = mean(income)}

{p 4 4 2}
在发出任一命令之前，你不需要对数据进行排序，也不需要指定 {cmd:by} 的 {cmd:sort} 选项。 {cmd:mi} {cmd:passive} 会为你处理排序问题。

{p 4 4 2}
如果需要，使用 {cmd:by} 的括号语法指定 {cmd:by} 中的顺序。例如， 

	. {cmd:mi passive: by person (time): generate lastamount = amount[_n-1]}

{p 4 4 2}
不要省略括号中的 {cmd:time} 而试图自己对数据进行排序：

	. {cmd:sort person time}
	. {cmd:mi passive: by person: generate lastamount = amount[_n-1]}

{p 4 4 2}
自己对数据进行排序在数据恰好为宽格式时可以工作；但通常是不行的。


{marker wide}{...}
{title:mi passive 在宽格式下最快}

{p 4 4 2}
{cmd:mi} {cmd:passive} 适用于任何 {help mi_glossary##def_style:样式}，
但当数据为宽格式时运行最快。如果你将要执行多个 {cmd:mi} {cmd:passive} 命令，通常可以通过首先将数据转换为宽格式来加快执行速度；参见 {bf:{help mi_convert_zh:[MI] mi convert}}。


{marker varying}{...}
{title:mi passive 和超级变化变量}

{pstd}
你应该小心，不要错误地使用 {cmd:mi} {cmd:passive} 来创建
{help mi_glossary##def_varying:超级变化变量}。
超级变化变量不能是被动变量，因为超级变化变量的值不仅在不完整观察中不同，而且在每次插补的完整观察中也不同。

{pstd}
正如在 {manhelp mi_set MI:mi set} 所述，超级变化变量永远不应该被注册。如果一个超级变化变量被注册为被动，那么它将被转换为 {help mi_glossary##def_varying:变化变量}。每次插补中超级变化变量的所有完整观察将用 {it:m}=0 的值替换。

{pstd}
{cmd:mi} {cmd:passive} 注册创建的变量为被动。即使你与 {cmd:mi} {cmd:passive} 所使用的命令创建了一个超级变化变量，{cmd:mi} {cmd:passive} 也会如上所述将其转换为变化变量。

{pstd}
你可以使用 {cmd:mi} {cmd:passive} 与任何仅依赖于观察内部值的函数。但一般来说，你不能使用 {cmd:mi} {cmd:passive} 与依赖于观察组的函数。

{pstd}
例如，大多数 {cmd:egen} 函数会产生超级变化变量。在这种情况下，你应该使用 {cmd:mi} {cmd:xeq:} {cmd:egen} 来创建它们并保持未注册；参见 {manhelp mi_xeq MI:mi xeq}。因此，你可能会得出结论，你不应该使用 {cmd:mi} {cmd:passive} 与 {cmd:egen}。这不是真的，但几乎是对的。例如，你可以使用 {cmd:mi} {cmd:passive} 与 {cmd:egen} 的 {cmd:rowmean()} 函数，因为它仅依赖于一次一个观察的值。


{marker renaming}{...}
{title:重命名被动变量}

{p 4 4 2}
使用 {bf:{help mi_rename_zh:mi rename}} 来重命名所有变量，而不仅仅是 
被动变量：

        . {cmd:mi rename} {it:oldname} {it:newname}

{p 4 4 2}
{help rename_zh} 不足以重命名被动变量，无论你的数据样式如何。


{marker dropping}{...}
{title:删除被动变量}

{p 4 4 2}
使用 {help drop_zh} 命令来删除变量（或观察），
但之后运行 
{bf:{help mi_update_zh:mi update}}。

	. {cmd:drop} {it:var_or_vars}

	. {cmd:mi update}

{p 4 4 2}
此建议适用于所有变量，而不仅仅是被动变量。


{marker recreating}{...}
{title:当插补值变化时更新被动变量}

{p 4 4 2}
当基础插补变量的值变化时，被动变量不会自动更新。

{p 4 4 2}
如果插补值发生变化或者如果你添加了更多的插补，你必须更新或重新创建被动变量。如果你有多个被动变量，我们建议你制作一个 do-file 来创建它们。之后，无论何时需要的时侯，你都可以再次运行该 do-file。一个创建 {cmd:lnage} 和 {cmd:totaltodate} 的 do-file 可能如下所示：

	{hline 39} begin cr_passive.do {hline 4}
	{cmd:use} {it:mydata}{cmd:, clear}

	{cmd:capture drop lnage}
	{cmd:capture drop totaltodate}
	{cmd:mi update}

	{cmd:mi passive: generate lnage = ln(age)}
        {cmd:mi passive: by person (time): generate totaltodate = sum(amount)}
	{hline 39} end cr_passive.do {hline 6}


{marker alternatives}{...}
{title:mi passive 的替代方案}

{p 4 4 2}
{cmd:mi} {cmd:passive} 可以运行任何 {cmd:generate}, {cmd:replace}, 或 
{cmd:egen} 命令。如果这不足以创建你所需的变量，你必须自己创建变量。以下是你该如何做：

{p 8 12 2}
1.  如果你的数据是宽格式或 mlong，使用 
    {bf:{help mi_convert_zh:mi convert}} 将它们转换为完全长格式之一，即 flong 或 flongsep，然后按照下面的适当步骤继续。

{p 8 12 2}
2.  如果你的数据是 flong，{cmd:mi} 系统变量 {cmd:_mi_m} 
    记录了 {it:m}。使用标准 Stata 命令创建你的新变量，但要以 {cmd:by} {cmd:_mi_m} 的方式进行。创建变量后，使用 {cmd:mi} {cmd:register} 将其注册为被动；
    参见 {bf:{help mi_set_zh:[MI] mi set}}。

{p 8 12 2}
3.  如果你的数据是 flongsep，在每个 
    {it:m}=0, {it:m}=1, ..., {it:m}={it:M} 数据集中创建新变量，然后注册结果。首先使用数据的副本操作：

		. {cmd:mi copy} {it:newname}

{p 12 12 2}
    此时，内存中的数据对应于 {it:m}=0。创建
    新变量然后保存数据：

		. {it:(create new_variable)}

		. {cmd:save} {it:newname}{cmd:, replace}

{p 12 12 2}
    现在使用 {it:m}=1 数据并重复该过程： 

		. {cmd:use _1_}{it:newname}

		. {it:(create new_variable)}
		
		. {cmd:save _1_}{it:newname}{cmd:, replace}

{p 12 12 2}
    对 {it:m}=2, {it:m}=3, ..., {it:m}={it:M} 重复。

{p 12 12 2}
    此时，新变量已经创建但尚未注册。
    重新加载原始 {it:m}=0 数据，将新变量注册为被动，然后运行 {bf:{help mi_update_zh:mi update}}：

		. {cmd:use} {it:newname}

		. {cmd:register passive} {it:new_variable}

		. {cmd:mi update}

{p 12 12 2}
     最后，将结果复制回你的原始 flongsep 数据中，

		. {cmd:mi copy} {it:name}{cmd:, replace}

{p 12 12 2}
     或者如果你从 mlong, flong, 或宽数据开始，则将数据 
     转换回你所偏好的样式：

		. {cmd:mi convert} {it:original_style}

{p 12 12 2}
     无论哪种方式，擦除 {it:newname} flongsep 数据集：

		. {cmd:mi erase} {it:newname}

{p 4 4 2}
第三个过程在 {it:M} 较大时可能显得繁琐且容易出错。
我们建议你制作一个 do-file 来创建变量，然后在每个 {it:m}=0, {it:m}=1, ..., {it:m}={it:M} 数据集上运行它：

	. {cmd:mi copy} {it:newname}

	. {cmd:do} {it:mydofile}

	. {cmd:save} {it:newname}{cmd:, replace}

	. {cmd:forvalues m=1(1)20 {c -(}}             // 我们假设 {it:M}=20
	>    {cmd:use _`m'_}{it:newname}
	>    {cmd:do} {it:mydofile}
        >    {cmd:save _`m'_}{it:newname}{cmd:, replace}
        > {cmd:{c )-}}

	. {cmd:use} {it:newname}

	. {cmd:register passive} {it:new_variable}

	. {cmd:mi update}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_passive.sthlp>}