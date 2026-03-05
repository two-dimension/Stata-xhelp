{smcl}
{* *! version 1.1.16  15oct2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi import" "mansection MI miimport"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi import flong" "help mi_import_flong_zh"}{...}
{vieweralsosee "[MI] mi import flongsep" "help mi_import_flongsep_zh"}{...}
{vieweralsosee "[MI] mi import ice" "help mi_import_ice_zh"}{...}
{vieweralsosee "[MI] mi import nhanes1" "help mi_import_nhanes1_zh"}{...}
{vieweralsosee "[MI] mi import wide" "help mi_import_wide_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Styles" "help mi_styles_zh"}{...}
{viewerjumpto "Syntax" "mi_import_zh##syntax"}{...}
{viewerjumpto "Description" "mi_import_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_import_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mi_import_zh##remarks"}{...}
{viewerjumpto "References" "mi_import_zh##references"}
{help mi_import:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi import} {hline 2}}将数据导入 mi{p_end}
{p2col:}({mansection MI miimport:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{bf:mi import nhanes1} ...

{p 8 12 2}
{bf:mi import ice} ...

{p 8 12 2}
{bf:mi import flong} ...

{p 8 12 2}
{bf:mi import flongsep} ...

{p 8 12 2}
{bf:mi import wide} ...


{p 4 4 2}
参见 
{bf:{help mi_import_nhanes1_zh:[MI] mi import nhanes1}},
{bf:{help mi_import_ice_zh:[MI] mi import ice}},
{bf:{help mi_import_flong_zh:[MI] mi import flong}},
{bf:{help mi_import_flongsep_zh:[MI] mi import flongsep}},
和
{bf:{help mi_import_wide_zh:[MI] mi import wide}}.


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:import} 导入包含原始数据和插补值的数据到 {cmd:mi} 中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimportRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注呈现于以下标题下：

	{help mi_import##overview:何时使用哪个 mi import 命令}
	{help mi_import##importstata:在导入到 mi 之前将数据导入 Stata}
	{help mi_import##warning:使用 mi import nhanes1、ice、flong 和 flongsep}


{marker overview}{...}
{title:何时使用哪个 mi import 命令}

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:nhanes1} 导入按美国疾病控制与预防中心（CDC）国家卫生和营养调查（NHANES）使用的格式记录的数据；
参见 {browse "https://www.cdc.gov/nchs/nhanes.htm"}。

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:ice} 导入按 {cmd:ice} 使用的格式记录的数据 (Royston {help mi import##R2004:2004},
                   {help mi import##R2005a:2005a},
                   {help mi import##R2005b:2005b},
                   {help mi import##R2007a:2007},
                   {help mi import##R2009a:2009})。

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:flong} 和 {cmd:mi} {cmd:import} {cmd:flongsep} 导入格式类似于 flong 和 flongsep 的数据，也就是说，数据是针对 {it:m}=0、{it:m}=1、...、和 {it:m}={it:M} 重复记录的。 {cmd:mi} {cmd:import} {cmd:flong} 导入信息在一个文件中的数据。 {cmd:mi} {cmd:import} {cmd:flongsep} 导入信息记录在一组文件中的数据。

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:wide} 导入格式类似于宽格式的数据，其中额外变量用于记录插补值。


{marker importstata}{...}
{title:在导入到 mi 之前将数据导入 Stata}

{p 4 4 2}
除 {cmd:mi} {cmd:import} {cmd:ice} 外，您必须在使用 {cmd:mi} {cmd:import} 将数据导入 {cmd:mi} 之前，先将数据导入 Stata。  
{cmd:mi} {cmd:import} {cmd:ice} 是唯一的例外，因为数据已经是 Stata 格式。
也就是说，{cmd:mi} {cmd:import} 要求数据为 Stata 格式的 {cmd:.dta} 数据集。您可以通过任何在 {manhelp import D} 中描述的方法执行首次导入到 Stata。


{marker warning}{...}
{title:使用 mi import nhanes1、ice、flong 和 flongsep}

{p 4 4 2}
导入命令 
{cmd:mi} {cmd:import} {cmd:nhanes1}
和
{cmd:mi} {cmd:import} {cmd:flongsep}
产生一个 flongsep 结果； 
{cmd:mi} {cmd:import} {cmd:ice} 和 
{cmd:mi} {cmd:import} {cmd:flong}
产生一个 flong 结果。
您可以随后使用 {bf:{help mi_convert_zh:mi convert}} 将结果转换为另一种样式，通常我们推荐这样做。然而，在此之前，您需要检查刚导入的数据，并确认所有插补和被动变量都被正确注册。
如果它们未被正确注册，您可能会丢失插补值。

{p 4 4 2}
要执行此验证，请在 {cmd:mi} {cmd:import} 之后立即使用 
{bf:{help mi_describe_zh:mi describe}} 和 {bf:{help mi_varying_zh:mi varying}} 命令：

	. {cmd:mi import} ...

	. {cmd:mi describe}

	. {cmd:mi varying}

{p 4 4 2}
{cmd:mi} {cmd:describe} 将列出变量的注册状态。 {cmd:mi} {cmd:varying} 将报告 
{help mi_glossary##def_varying:变化和超级变化} 变量。
请确认所有变化变量都被注册为插补或被动。如果有一个或多个没有，请立即注册它们：

	. {cmd:mi register imputed} {it:forgot forgottenvar}

	. {cmd:mi register passive} {it:another_forgottenvar}

{p 4 4 2}
插补变量和被动变量之间没有统计学上的区别，因此您可以注册您不确定的变量。
如果发现某个未注册变量是变化的，并且您认为这是个错误，请将该变量注册为常规变量：

	. {cmd:mi register regular} {it:variable_in_error}

{p 4 4 2}
接下来，如果 {cmd:mi} {cmd:varying} 报告您的数据包含任何超级变化变量，请确定这些变量是由于源数据中的错误，还是确实意图为超级变化。
如果是错误，请根据需要将变量注册为插补、被动或常规。 然而，任何意图中的超级变化变量请保持未注册，并给自己记个注意：永远不要将这些数据转换为宽或长格式。含有超级变化变量的数据只能以 flong 和 flongsep 格式存储。

{p 4 4 2}
现在再次运行 {cmd:mi} {cmd:describe} 和 {cmd:mi} {cmd:varying}：

	. {cmd:mi describe} 

	. {cmd:mi varying} 

{p 4 4 2}
确保您已正确注册变量，并在必要时重复上述步骤，以解决任何剩余问题。

{p 4 4 2}
在那之后，您可以使用 {cmd:mi} {cmd:convert} 将数据转换为更方便的样式。我们通常从宽格式开始：

	. {cmd:mi convert wide}

{p 4 4 2}
然而，如果您有任何超级变化变量，请不要切换到宽格式。尝试 flong 格式：

	. {cmd:mi convert flong}

{p 4 4 2}
无论您选择哪种样式，
如果您遇到内存不足的错误，您必须增加分配给 Stata 的内存量，或以更不方便但完全可行的 flongsep 样式使用这些数据。
关于增加内存，请参见 
{it:{help mi_convert##fromflongsep:从 flongsep 转换}}
在 {bf:{help mi_convert_zh:[MI] mi convert}} 中。
关于 flongsep 的可行性，请参见 {it:{help mi_styles##advice_flongsep:使用 flongsep 的建议}} 在 {bf:{help mi_styles_zh:[MI] Styles}} 中。

{p 4 4 2}
我们建议在使用 {cmd:mi} {cmd:convert} 之前执行上述检查。然而，将刚导入的 flongsep 数据转换为 flong 进行检查，然后再转换为所需格式是安全的。 如果您首先转换为 flong，检查会更快地运行。

{p 4 4 2}
您可以灵活地执行检查。
我们建议的逻辑如下：

{p 8 12 2}
    o  您可能在导入数据时未指定所有插补和被动变量，可能是由于数据文档中的错误。也可能您导入的数据存在错误。值得检查一下。

{p 8 12 2}
    o  只要导入的数据以 flongsep 或 flong 格式记录，未注册变量将与原始源中的表现完全相同。 只有在数据转换为宽或长格式时，才会利用假设数据结构来节省内存。
因此，您需要在将数据转换为更方便的宽或长格式之前进行检查。

{p 8 12 2}
    o  如果发现错误，您可以返回重新正确导入数据，但使用 {cmd:mi} {cmd:register} 更容易。 当您输入 {cmd:mi} {cmd:register} 时，您不仅是在告知 {cmd:mi} 如何处理该变量，还在请求 {cmd:mi} {cmd:register} 检查变量并根据其新的注册状态解决任何问题。


{marker references}{...}
{title:参考文献}

{marker R2004}{...}
{p 4 8 2}
Royston, P. 2004.
    {browse "https://www.stata-journal.com/sjpdf.html?articlenum=st0067":缺失值的多重插补。}
    {it:Stata Journal} 4: 227-241.

{marker R2005a}{...}
{p 4 8 2}
------. 2005a.
    {browse "https://www.stata-journal.com/sjpdf.html?articlenum=st0067_1":缺失值的多重插补：更新。}
    {it:Stata Journal} 5: 188-201.

{marker R2005b}{...}
{p 4 8 2}
------. 2005b.
    {browse "https://www.stata-journal.com/sjpdf.html?articlenum=st0067_2":缺失值的多重插补：ice 的更新。}
    {it:Stata Journal} 5: 527-536.

{marker R2007a}{...}
{p 4 8 2}
------. 2007.
    {browse "https://www.stata-journal.com/sjpdf.html?articlenum=st0067_3":缺失值的多重插补：对 ice 的进一步更新，强调区间右删失。}
    {it:Stata Journal} 7: 445-464.

{marker R2009a}{...}
{p 4 8 2}
------. 2009.
    {browse "https://www.stata-journal.com/article.html?article=st0067_4":缺失值的多重插补：对 ice 的进一步更新，强调分类变量。}
    {it:Stata Journal} 9: 466-477.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_import.sthlp>}