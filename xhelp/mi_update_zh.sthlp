{smcl}
{* *! version 1.0.12  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi update" "mansection MI miupdate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] noupdate option" "help mi_noupdate_option_zh"}{...}
{viewerjumpto "语法" "mi_update_zh##syntax"}{...}
{viewerjumpto "菜单" "mi_update_zh##menu"}{...}
{viewerjumpto "描述" "mi_update_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mi_update_zh##linkspdf"}{...}
{viewerjumpto "备注" "mi_update_zh##remarks"}
{help mi_update:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi update} {hline 2}}确保 mi 数据一致
{p_end}
{p2col:}({mansection MI miupdate:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{cmd:mi update}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:update} 验证 {cmd:mi} 数据的一致性。如果数据不一致，{cmd:mi} {cmd:update} 会报告这些不一致并做必要的更改以使数据一致。

{p 4 4 2}
{cmd:mi} {cmd:update} 可以更改数据的排序方式。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miupdateRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个部分：

	{help mi_update##purpose:mi update 的目的}
	{help mi_update##actions:mi update 的作用}
	{help mi_update##auto:mi update 会自动运行}


{marker purpose}{...}
{title:mi update 的目的}

{p 4 4 2}
{cmd:mi} {cmd:update} 允许您 

{p 8 12 2}
o  更改现有变量的值，无论是插补的、被动的、常规的还是未注册的;

{p 8 12 2}
o  向插补变量（或任何变量）添加或删除缺失值; 

{p 8 12 2}
o  删除变量;

{p 8 12 2}
o  创建新变量;

{p 8 12 2}
o  删除观测值; 和

{p 8 12 2}
o  复制观测值（但不以其他方式添加观测值）。

{p 4 4 2} 
您可以进行上述任何或所有更改，然后键入 

	. {cmd:mi update}

{p 4 4 2}
然后 {cmd:mi} {cmd:update} 会处理所需的其他更改以保持数据的一致性。
例如， 

{* ------------------------------------------------- junk1.log ---}{...}
	. {cmd:drop if sex==1}
	(删除了 75 个观测值)

	. {cmd:mi update}
	(由于在 {it:m}=0 中删除的观测值，375 {it:m}>0 的观测值被删除)
{* ------------------------------------------------- junk1.log ---}{...}

{p 4 4 2}
在这个例子中，我们恰好有五个插补，并正在处理 flongsep 数据。我们在 {it:m}=0 中删除了 75 个观测值，仍然留下了 5*75=375 个观测值要在 {it:m}>0 中删除。

{p 4 4 2}
{cmd:mi} {cmd:update} 生成的消息因数据类型而异，因为需要进行的更改以使数据一致是由数据类型决定的。如果我们正在处理 flong 数据，我们可能会看到

{* ------------------------------------------------- junk2.log ---}{...}
	. {cmd:drop if sex==1}
	(删除了 450 个观测值)

	. {cmd:mi update}
        (由于观测值数量的变化，系统变量 _mi_id 更新。)
{* ------------------------------------------------- junk2.log ---}{...}

{p 4 4 2}
在内存中使用 flong 数据时，当我们删除 {cmd:if} {cmd:sex==1} 时，我们删除了所有 75+5*75 = 450 个观测值，因此不需要再删除其他观测值; 但在这里 {cmd:mi} {cmd:update} 需要更新其一个系统变量，因为我们做出的更改。

{p 4 4 2}
如果我们正在处理 mlong 数据，我们可能会看到

{* ------------------------------------------------- junk4.log ---}{...}
	. {cmd:drop if sex==1}
	(删除了 90 个观测值)

	. {cmd:mi update}
        (由于观测值数量的变化，系统变量 _mi_id 更新。)
{* ------------------------------------------------- junk4.log ---}{...}

{p 4 4 2}
这里的情况与 flong 情况非常相似。在 mlong 数据中，执行 {cmd:if} {cmd:sex==1} 的删除操作同时删除了 {it:m}=0 中的 75 个观测值，同时还删除了在 {it:m}=1、{it:m}=2、...、{it:m}=5 中的不完整观测值。在这个例子中，有三个这样的观测值，因此总共删除了 75+5*3 = 90 个，而由于这一变化，{cmd:mi} {cmd:update} 需要更新其系统变量。

{p 4 4 2}
如果我们使用的是宽数据，我们可能会看到

{* ------------------------------------------------- junk3.log ---}{...}
	. {cmd:drop if sex==1}
	(删除了 75 个观测值)
	
	. {cmd:mi update}
{* ------------------------------------------------- junk2.log ---}{...}

{p 4 4 2}
{cmd:mi} {cmd:update} 的沉默表明 {cmd:mi} {cmd:update} 什么都没有做，因为在宽数据中删除观测值后，不需要做其他事情。我们本可以跳过输入 {cmd:mi} {cmd:update}，但不要这样想，因为更改值、删除变量、创建新变量、删除观测值或创建新观测值可能会产生意想不到的后果。

{p 4 4 2}
例如，在我们的数据中有变量 {cmd:farmincome}，显然如果一个人没有农场，{cmd:farmincome} 应该为 0，因此我们输入 

	. {cmd:replace farmincome = 0 if !farm}
	(进行了 15 次实际更改)

{p 4 4 2}
更改值后，即使您不认为有必要，也应该输入 {cmd:mi} {cmd:update}。以下是我们在这些数据上执行此操作时发生的情况：

	. {cmd:mi update}
        (12 {it:m}=0 观测值现在被标记为完整)

{p 4 4 2}
输入 {cmd:mi} {cmd:update} 实际上是必要的！
我们忘记了 {cmd:farmincome} 变量是插补的，结果显示该变量在 12 个非农观测值中存在缺失; {cmd:mi} 需要处理这个问题。

{p 4 4 2}
运行 {cmd:mi} {cmd:update} 是如此重要，以至于 {cmd:mi} 本身在您忘记时也会不断运行它。
例如，让我们“忘记”输入 {cmd:mi} {cmd:update} 然后将我们的数据转换为宽格式：

	. {cmd:replace farmincome = 0 if !farm}
	(进行了 15 次实际更改)

	. {cmd:mi convert wide, clear}
        (12 {it:m}=0 观测值现在被标记为完整)

{p 4 4 2}
括号内的消息是因为 {cmd:mi} {cmd:convert} 为我们运行了 {cmd:mi} {cmd:update}。有关此方面的更多信息，请参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}。
	

{marker actions}{...}
{title:mi update 的作用}

{p 5 9 2}
o  {cmd:mi} {cmd:update} 检查您是否更改了 {it:N}，即 {it:m}=0 中的观测值数量，如有必要则重置 {it:N}。

{p 5 9 2}
o  {cmd:mi} {cmd:update} 检查您是否更改了 {it:M}，即插补的数量，并在必要时调整数据。

{p 5 9 2}
o  {cmd:mi} {cmd:update} 检查您是否添加、删除、注册或取消注册任何变量，并采取适当的行动。

{p 5 9 2}
o  {cmd:mi} {cmd:update} 检查您是否添加或删除了任何观测值。如果您进行了这些操作，接着会检查您是否在 {it:m}=0、{it:m}=1，...，{it:m}={it:M} 中执行了该操作的一致性。如果您没有一致执行，{cmd:mi update} 会为您执行一致性操作。

{p 5 9 2}
o  在 mlong、flong 和 flongsep 样式中，{cmd:mi} {cmd:update} 会检查系统变量 {cmd:_mi_id}，该变量在 {it:m} 中链接观测值，并在必要时重建该变量。

{p 5 9 2}
o  {cmd:mi} {cmd:update} 检查系统变量 {cmd:_mi_miss} 的正确性，该变量标记不完整观测值，如果不正确，则更新它并进行所需的其他更改。

{p 5 9 2}
o  {cmd:mi} {cmd:update} 验证在 {it:m}>0 中记录的插补变量的值与在 {it:m}=0 中的非缺失值是否相等，并更新任何不相等的值。

{p 5 9 2}
o  {cmd:mi} {cmd:update} 验证在 {it:m}>0 中记录的被动变量的值与在 {it:m}=0 的完整观测值中记录的值是否相等，并更新任何不相等的值。

{p 5 9 2}
o  {cmd:mi} {cmd:update} 验证在 {it:m}>0 中记录的常规变量值是否与在 {it:m}=0 中的值相等，并更新任何不相等的值。

{p 4 9 2}
o  {cmd:mi} {cmd:update} 将 {it:m}=0 中的任何新变量添加到 {it:m}>0 中。

{p 4 9 2}
o  {cmd:mi} {cmd:update} 从 {it:m}>0 中删除任何不出现在 {it:m}=0 中的变量。


{marker auto}{...}
{title:mi update 会自动运行}

{p 4 4 2}
正如我们之前提到的，运行 {cmd:mi} {cmd:update} 是非常重要的，因此许多 {cmd:mi} 命令会在处理过程中自动运行它。
有关此部分的讨论，请见 {bf:{help mi noupdate option:[MI] noupdate 选项}}。
简而言之，自动运行 {cmd:mi update} 的 {cmd:mi} 命令都有一个 {cmd:noupdate} 选项，因此您可以识别它们，并且您可以指定该选项以跳过更新，从而加快执行速度，但这只在少量风险带来的肾上腺素刺激下进行。

{p 4 4 2}
无论您是否指定 {cmd:noupdate}，我们建议您定期运行 {cmd:mi} {cmd:update}，并在删除或添加变量或观测值，或更改值后始终运行 {cmd:mi} {cmd:update}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_update.sthlp>}