{smcl}
{* *! version 1.4.4  01may2019}{...}
{viewerdialog save "dialog save_dlg"}{...}
{viewerdialog "save with options" "dialog save_option"}{...}
{vieweralsosee "[D] save" "mansection D save"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[P] 文件格式 .dta" "help dta_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{viewerjumpto "语法" "save_zh##syntax"}{...}
{viewerjumpto "菜单" "save_zh##menu"}{...}
{viewerjumpto "描述" "save_zh##description"}{...}
{viewerjumpto "PDF文档链接" "save_zh##linkspdf"}{...}
{viewerjumpto "save选项" "save_zh##options_save"}{...}
{viewerjumpto "saveold选项" "save_zh##options_saveold"}{...}
{viewerjumpto "示例" "save_zh##examples"}
{help save:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] save} {hline 2}}保存Stata数据集{p_end}
{p2col:}({mansection D save:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将内存中的数据保存到文件

{p 8 13 2}
{cmdab:sa:ve}
[{it:{help filename_zh}}]
[{cmd:,}
{it:{help save##save_options:save_options}}]


{phang}
将内存中的数据以Stata 13、12或11格式保存到文件

{p 8 16 2}
{cmd:saveold}
{it:{help filename_zh}}
[{cmd:,}
{it:{help save##saveold_options:saveold_options}}]


{synoptset 17}{...}
{marker save_options}{...}
{synopthdr :save_options}
{synoptline}
{synopt :{opt nol:abel}}从保存的数据集中省略值标签{p_end}
{synopt :{opt replace}}覆盖现有数据集{p_end}
{synopt :{opt all}}与数据集一起保存 {cmd:e(sample)}；程序员选项{p_end}
{synopt :{opt o:rphans}}保存所有值标签{p_end}
{synopt :{opt empty:ok}}即使观察值和变量为零也保存数据集{p_end}
{synoptline}

{synoptset 17}{...}
{marker saveold_options}{...}
{synopthdr :saveold_options}
{synoptline}
{synopt :{opt v:ersion(#)}}指定版本 11<={it:#}<=15；默认为 {cmd:version(13)}，表示Stata 13格式{p_end}
{synopt :{opt nol:abel}}从保存的数据集中省略值标签{p_end}
{synopt :{opt replace}}覆盖现有数据集{p_end}
{synopt :{opt all}}与数据集一起保存 {cmd:e(sample)}；程序员选项{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 另存为...}


{marker description}{...}
{title:描述}

{pstd}
{opt save} 将当前内存中的数据集存储在磁盘上，命名为 {it:{help filename_zh}}。如果未指定 {it:filename}，则使用数据上次已知的名称 ({cmd:c(filename)})。如果 {it:filename} 未指定扩展名，则使用 {cmd:.dta}。如果您的 {it:filename} 包含嵌入空格，请记得用双引号括起来。

{pstd}
Stata 16、15和14的格式相同，只要数据集变量数不超过32,767。Stata/MP 16和15支持超过32,767个变量，因此当变量数量达到这个数量时，它们的数据集格式略有不同。如果您使用Stata 16并希望保存数据集以便于Stata 15用户读取，只需使用 {cmd:save} 命令；Stata 15将能够读取它。如果数据集变量超过32,767个，它只能被Stata/MP 15读取。如果您希望保存数据集以便于Stata 14用户读取，只需再次使用 {cmd:save} 命令；如果数据集没有超过32,767个变量，Stata 14可以读取它。Stata 14最多支持32,767个变量。

{pstd}
{opt saveold} 将当前内存中的数据集保存到磁盘上，命名为 {it:filename}，采用之前的 {cmd:.dta} 格式，即Stata 13、12或11的格式。如果您使用Stata 16并希望保存一个文件以便于旧版Stata用户读取，请使用 {cmd:saveold} 命令。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D saveQuickstart:快速开始}

        {mansection D saveRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_save}{...}
{title:save选项}

{phang}
{opt nolabel} 从保存的数据集中省略值标签。然而，变量与值标签名称之间的关联仍然会与数据集标签和变量标签一起保存。

{phang}
{opt replace} 允许 {opt save}覆盖现有的数据集。

{phang}
{opt all} 供程序员使用。如果指定， {cmd:e(sample)}将与数据集一起保存。您可以运行回归； {cmd:save mydata, all}; {cmd:drop _all}; {cmd:use mydata}; 和 {cmd:predict yhat if e(sample)}。

{phang}
{opt orphans} 保存所有值标签，包括未附加到任何变量的值标签。

{phang}
{opt emptyok} 是程序员选项。指定该选项时，即使数据集包含零个观察值和零个变量，也会保存数据集。如果未指定 {opt emptyok} 且数据集为空，则 {opt save} 将以“未定义变量”的消息进行响应。


{marker options_saveold}{...}
{title:saveold选项}

{phang}
{opt version(#)} 指定要使用的先前 {cmd:.dta} 文件格式。 {it:#} 可以是 {cmd:15}、{cmd:14}、{cmd:13}、{cmd:12} 或 {cmd:11}。默认值为 {cmd:version(13)}，表示Stata 13格式。要以现代Stata 16格式保存数据集，请使用 {cmd:save} 命令，而不是 {cmd:saveold}。Stata 16和Stata 14及15共享相同的格式，因此不必使用 {cmd:saveold} 来保存Stata 14或15数据集；只需使用 {cmd:save}。

{phang}
{opt nolabel} 从保存的数据集中省略值标签。然而，变量与值标签名称之间的关联仍然会与数据集标签和变量标签一起保存。

{phang}
{opt replace} 允许 {opt saveold}覆盖现有的数据集。

{phang}
{opt all} 供程序员使用。如果指定， {cmd:e(sample)}将与数据集一起保存。您可以运行回归； {cmd:save mydata, all}; {cmd:drop _all}; {cmd:use mydata}; 和 {cmd:predict yhat if e(sample)}。


{marker examples}{...}
{title:示例}

    设置
{phang2}{cmd:. input number odd even}{p_end}

               number        odd       even
          1. {cmd:1 1 2}
          2. {cmd:2 3 4}
          3. {cmd:3 5 6}
          4. {cmd:4 7 8}
          5. {cmd:end}

{pstd}将内存中的数据保存到文件{p_end}
{phang2}{cmd:. save myevenodd}{p_end}

    添加另一个观察值
{phang2}{cmd:. input}{p_end}

               number        odd       even
          5. {cmd:5 9 10}
          6. {cmd:end}

{pstd}在添加了额外观察值后重新保存 {cmd:myevenodd}{p_end}
{phang2}{cmd:. save myevenodd, replace}{p_end}

{pstd}等同于上述命令{p_end}
{phang2}{cmd:. save, replace}

{pstd}以Stata 13格式保存为 {cmd:myevenodd2} {p_end}
{phang2}{cmd:. saveold myevenodd2}{p_end}

{pstd}以Stata 12格式保存为 {cmd:myevenodd3} {p_end}
{phang2}{cmd:. saveold myevenodd3, version(12)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <save.sthlp>}