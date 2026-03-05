{smcl}
{* *! version 1.0.10  15may2018}{...}
{vieweralsosee "[MI] noupdate option" "mansection MI noupdateoption"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi update" "help mi_update_zh"}{...}
{viewerjumpto "Syntax" "mi_noupdate_option_zh##syntax"}{...}
{viewerjumpto "Description" "mi_noupdate_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_noupdate_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "mi_noupdate_option_zh##option"}{...}
{viewerjumpto "Remarks" "mi_noupdate_option_zh##remarks"}
{help mi_noupdate_option:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[MI] noupdate option} {hline 2}}noupdate 选项{p_end}
{p2col:}({mansection MI noupdateoption:查看完整 PDF 手动条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi} ... 
[{cmd:,}
...
{cmdab:noup:date}
...
]


{marker description}{...}
{title:描述}

{p 4 4 2}
许多 {cmd:mi} 命令允许使用 {cmd:noupdate} 选项。
本条目描述该选项的目的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI noupdateoptionRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:noupdate}
    指定在问题的 {cmd:mi} 命令中无需执行 {bf:{help mi_update_zh:mi update}} 
    ，因为您确定不存在需要修复的不一致。
    {cmd:noupdate} 被视为建议；
    如果命令看到需要执行的证据，{cmd:mi} {cmd:update} 仍然会执行。
    不指定该选项并不意味着将执行 {cmd:mi} {cmd:update} 。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
一些 {cmd:mi} 命令会对数据进行修改，如果对数据的某些假设不成立，这些修改可能会非常糟糕——甚至导致数据损坏。通常，这些假设是成立的，但为了安全起见，命令会检查这些假设。
它们通过调用 {bf:{help mi_update_zh:[MI] mi update}} 来完成此操作。{cmd:mi} {cmd:update} 检查假设，如果假设不成立，则修正数据，以使假设成立。{cmd:mi} {cmd:update} 始终会报告所做的数据修正。

{p 4 4 2}
所有这些反映出一种过于谨慎的态度，导致某些命令在运行 {cmd:mi} {cmd:update} 上花费的时间，超过了它们执行预期任务的时间。

{p 4 4 2}
使用 {cmd:mi} {cmd:update} 来验证假设的命令都有一个 {cmd:noupdate} 选项。当您指定该选项时，命令跳过假设检查，也就是说它跳过调用 {cmd:mi} {cmd:update}。更确切地说，在命令没有看到明显证据需要调用 {cmd:mi} {cmd:update} 时，命令会跳过调用。

{p 4 4 2}
通过指定 {cmd:noupdate}，您可以使命令运行得更快。您应该这么做吗？除非您注意到性能差，否者我们会说不。 但是，如果自上次 {cmd:mi} {cmd:update} 以来执行的唯一命令都是 {cmd:mi} 命令，那么指定 {cmd:noupdate} 是绝对安全的。以下操作是完全安全的：

	. {cmd:mi update}
	. {cmd:mi passive, noupdate: gen agesq = age*age}
	. {cmd:mi rename age age_at_admission, noupdate}
	. {cmd:mi ...}

{p 4 4 2}
以下操作也将是安全的：

	. {cmd:mi update}
	. {cmd:mi passive, noupdate: gen agesq = age*age}
	. {cmd:summarize agesq}
	. {cmd:mi rename age age_at_admission, noupdate}
	. {cmd:mi ...}

{p 4 4 2}
这是安全的，因为 {cmd:summarize} 是一个报告命令，它不改变数据；请参见 {manhelp summarize R}。

{p 4 4 2}
{cmd:mi} 所面临的问题是，它无法控制您的会话和数据。在 {cmd:mi} 命令之间，{cmd:mi} 不知道您对数据做了什么。以下操作不推荐，并且可能会非常糟糕：

	. {cmd:mi update}
	. {cmd:mi passive, noupdate: gen agesq = age*age}
	. {cmd:drop if female}
	. {cmd:drop agesq}
	. {cmd:mi} ...{cmd:, noupdate}{col 45}{cmd://} {it:请勿这样做}

{p 4 4 2}
根据使用 {cmd:mi} 的规则，您应该在执行 {cmd:drop} 命令或任何其他改变数据的命令后执行 {cmd:mi} {cmd:update}，但通常遵循该规则是否重要并不重要，因为 {cmd:mi} 会在适当的时候进行检查。也就是说，如果您不指定 {cmd:noupdate} 选项，{cmd:mi} 会进行检查。

{p 4 4 2}
建议程序员在编码一系列 {cmd:mi} 命令的程序时使用 {cmd:noupdate} 选项。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_noupdate_option.sthlp>}