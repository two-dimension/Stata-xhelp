{smcl}
{* *! version 1.0.14  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi rename" "mansection MI mirename"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{viewerjumpto "语法" "mi_rename_zh##syntax"}{...}
{viewerjumpto "菜单" "mi_rename_zh##menu"}{...}
{viewerjumpto "描述" "mi_rename_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mi_rename_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi_rename_zh##option"}{...}
{viewerjumpto "备注" "mi_rename_zh##remarks"}
{help mi_rename:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi rename} {hline 2}}重命名变量{p_end}
{p2col:}({mansection MI mirename:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi} {cmdab:ren:ame} 
{it:oldname}
{it:newname}
[{cmd:,}
{cmdab:noup:date}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:rename} 用于重命名变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI mirenameRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:noupdate}
    在某些情况下，抑制此命令可能执行的自动 {cmd:mi} {cmd:update}； 
    参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mi_rename##noupdate:指定 noupdate 选项}
	{help mi_rename##accident:如果您不小心使用 rename，该怎么办}
	{help mi_rename##wide:如果您不小心在宽数据上使用 rename，该怎么办}
	{help mi_rename##mlong:如果您不小心在 mlong 数据上使用 rename，该怎么办}
	{help mi_rename##flong:如果您不小心在 flong 数据上使用 rename，该怎么办}
	{help mi_rename##flongsep:如果您不小心在 flongsep 数据上使用 rename，该怎么办}


{marker noupdate}{...}
{title:指定 noupdate 选项}

{p 4 4 2}
如果您要重命名多个变量，可以在第一个 {cmd:mi rename} 之后指定 {cmd:noupdate} 选项，从而在不损失安全性的情况下加快执行速度：

	. {cmd:mi rename ageyears age}

	. {cmd:mi rename timeinstudy studytime, noupdate}

	. {cmd:mi rename personid id, noupdate}

{p 4 4 2}
上述建议通常是好的。当连续输入多个 {cmd:mi} 命令时，您可以在第一个命令后指定 {cmd:noupdate} 以加快执行速度。


{marker accident}{...}
{title:如果您不小心使用了 rename，该怎么办}

{p 4 4 2}
假设您刚输入

	{cmd:. rename ageyears age}

{p 4 4 2}
而不是输入 

	{cmd:. mi rename ageyears age}

{p 4 4 2}
如您应该的那样。
尚未造成损害，但如果您给出了另一个 {cmd:mi} 命令并且它运行了 {helpb mi update}，实际损害将会发生。我们将在接下来的部分中讨论这个问题及其解决办法，但首先，如果您没有执行额外的 {cmd:mi} 
命令，请使用 {cmd:rename}（而不是 {cmd:mi} {cmd:rename}）将变量重命名回原样：

	{cmd:. rename age ageyears}

{p 4 4 2}
然后像您应该的那样使用 {cmd:mi} {cmd:rename}：

	{cmd:. mi rename ageyears age}

{p 4 4 2}
以下部分处理 {cmd:mi} {cmd:update} 已经运行的情况。您将知道 {cmd:mi update} 已经运行，因为在重命名后，您给出了某个 {cmd:mi} 命令——甚至可能是 {cmd:mi} {cmd:update} 本身——并且您看到了如下消息之一：

	(变量 {cmd:ageyears} 被从 {it:m}>0 中删除)

	(插补变量 {cmd:ageyears} 因未在 {it:m}=0 中注册而被注销)

	(被动变量 {cmd:ageyears} 因未在 {it:m}=0 中注册而被注销)

	(常规变量 {cmd:ageyears} 因未在 {it:m}=0 中注册而被注销)


{marker wide}{...}
{title:如果您不小心在宽数据上使用了 rename，该怎么办}

{p 4 4 2}
如果 {cmd:ageyears} 被注销，则没有造成损害，无需采取进一步措施。

{p 4 4 2}
如果 {cmd:ageyears} 被注册为常规，则没有造成损害。然而，您重命名后的变量不再注册。 
通过输入 {cmd:mi} {cmd:register} {cmd:regular} {cmd:age} 以其新名称重新注册该变量；见 {manhelp mi_set MI:mi set}。

{p 4 4 2}
如果 {cmd:ageyears} 被注册为插补或被动，您刚刚失去了 {it:m}>0 的所有值。被动变量通常不难重新创建；见 {bf:{help mi_passive_zh:[MI] mi passive}}。如果该变量是插补的，希望您在犯此错误时最近保存了数据，并在此之前，养成良好的计算习惯。


{marker mlong}{...}
{title:如果您不小心在 mlong 数据上使用了 rename，该怎么办}

{p 4 4 2}
如果 {cmd:ageyears} 被注销，则没有造成损害，无需采取进一步措施。

{p 4 4 2}
如果 {cmd:ageyears} 被注册为常规，则没有造成损害。然而， 
您重命名后的变量不再注册。 
通过输入 {cmd:mi} {cmd:register} {cmd:regular} {cmd:age} 以其新名称重新注册该变量；见 {manhelp mi_set MI:mi set}。

{p 4 4 2}
如果 {cmd:ageyears} 被注册为插补或被动，您刚刚失去了 {it:m}>0 的所有值。我们提供的建议与宽数据时提供的相同：被动变量通常不难重新创建——见 {bf:{help mi_passive_zh:[MI] mi passive}}——否则希望您在犯此错误时最近保存了数据。定期保存数据始终是个好主意。


{marker flong}{...}
{title:如果您不小心在 flong 数据上使用了 rename，该怎么办}

{p 4 4 2}
在这种情况下，消息更好；无论您的变量如何注册，您没有丢失数据。

{p 4 4 2}
如果 {cmd:ageyears} 被注销，则不需要进一步操作。

{p 4 4 2}
如果 {cmd:ageyears} 被注册为常规，则您需要通过输入 {cmd:mi} {cmd:register} {cmd:regular} {cmd:age} 以其新名称重新注册该变量；见 {manhelp mi_set MI:mi set}。

{p 4 4 2}
如果 {cmd:ageyears} 被注册为被动或插补，您需要通过输入 {cmd:mi} {cmd:register} {cmd:passive} {cmd:age} 或 {cmd:mi} {cmd:register} {cmd:imputed} {cmd:age} 以其新名称重新注册该变量。


{marker flongsep}{...}
{title:如果您不小心在 flongsep 数据上使用了 rename，该怎么办}

{p 4 4 2}
在这种情况下，消息没那么好。

{p 4 4 2}
如果 {cmd:ageyears} 被注销，则没有造成损害。当 {cmd:mi} 
{cmd:update} 运行时，它注意到旧变量 {cmd:ageyears} 不再出现在 {it:m}>0 中，而新变量 {cmd:age} 现在出现在 {it:m}=0 中，因此 {cmd:mi} {cmd:update} 删除了第一个并将第二个添加到
{it:m}>0，从而撤销了任何损害。没有其它需要做的。

{p 4 4 2}
如果 {cmd:ageyears} 被注册为常规，没有造成损害，但您需要通过输入 {cmd:mi} {cmd:register} 
{cmd:regular} {cmd:age} 重新注册该变量；见 {manhelp mi_set MI:mi set}。

{p 4 4 2}
如果 {cmd:ageyears} 被注册为被动或插补，您在 {it:m}>0 中的值已丢失。现在可能是时候提到您应该如何处理 flongsep 数据的副本；参见 {bf:{help mi_copy_zh:[MI] mi copy}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_rename.sthlp>}