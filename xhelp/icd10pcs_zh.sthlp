{smcl}
{* *! version 1.0.4  25sep2018}{...}
{viewerdialog icd10pcs "dialog icd10pcs"}{...}
{vieweralsosee "[D] icd10pcs" "mansection D icd10pcs"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] icd" "help icd_zh"}{...}
{vieweralsosee "[D] icd9p" "help icd9p_zh"}{...}
{vieweralsosee "[D] icd10cm" "help icd10cm_zh"}{...}
{viewerjumpto "Syntax" "icd10pcs_zh##syntax"}{...}
{viewerjumpto "Menu" "icd10pcs_zh##menu"}{...}
{viewerjumpto "Description" "icd10pcs_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "icd10pcs_zh##linkspdf"}{...}
{viewerjumpto "Options" "icd10pcs_zh##options"}{...}
{viewerjumpto "Examples" "icd10pcs_zh##examples"}{...}
{viewerjumpto "Stored results" "icd10pcs_zh##results"}
{help icd10pcs:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] icd10pcs} {hline 2}}ICD-10-PCS 程序代码{p_end}
{p2col:}({mansection D icd10pcs:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
验证变量是否包含定义的代码

{p 8 16 2}
{cmd:icd10pcs}
{cmd:check} {varname} {ifin}
[{cmd:,} {it:{help icd10pcs##checkopts:checkopts}}]

{phang}
清理变量并验证代码格式

{p 8 16 2}
{cmd:icd10pcs}
{opt clean} {varname} {ifin}{cmd:,}
{c -(}{opth gen:erate(newvar)} | {opt rep:lace}{c )-}
[{it:{help icd10pcs##cleanopts:cleanopts}}]

{phang}
从现有变量生成新变量

{p 8 16 2}
{cmd:icd10pcs}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt cat:egory} [{opt check}]

{p 8 16 2}
{cmd:icd10pcs}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt d:escription}
[{it:{help icd10pcs##genopts:genopts}}]

{p 8 16 2}
{cmd:icd10pcs}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt r:ange(codelist)} [{opt check}]

{phang}
显示代码描述

{p 8 16 2}
{cmd:icd10pcs}
{opt look:up} {it:codelist}
[{cmd:,} {opt version(#)}]

{phang}
从描述中搜索代码

{p 8 16 2}
{cmd:icd10pcs}
{opt sea:rch}
[{cmd:"}]{it:text}[{cmd:"}]
[[{cmd:"}]{it:text}[{cmd:"}] {it:...}]
[{cmd:,}
{it:{help icd10pcs##searchopts:searchopts}}]

{phang}
显示 ICD-10-PCS 版本

{p 8 16 2}
{cmd:icd10pcs}
{opt q:uery}


{pstd}
{it:codelist} 是以下之一：

{p2colset 9 30 32 2}{...}
{p2col :{it:icd10code}}(特定代码){p_end}
{p2col :{it:icd10code}{cmd:*}}(以此开始的所有代码){p_end}
{p2col :{it:icd10code}{cmd:/}{it:icd10code}}(代码范围){p_end}
{p2colreset}{...}

{pstd}
或以上各种组合，例如 {cmd:041.E09P 2W3* BQ2L/BQ2LZZZ}。

{marker checkopts}{...}
{synoptset 18}{...}
{synopthdr:checkopts}
{synoptline}
{synopt :{opt fmt:only}}仅检查代码格式{p_end}
{synopt :{opt summ:ary}}每个无效或未定义代码的频率{p_end}
{synopt :{opt l:ist}}列出无效或未定义的 ICD-10-PCS 代码的观测值{p_end}
{synopt :{opth gen:erate(newvar)}}创建新变量标记无效代码{p_end}
{synopt :{opt version(#)}}要检查代码的财政年度；默认是
{cmd:version(2019)}{p_end}
{synoptline}
{p2colreset}{...}

{marker cleanopts}{...}
{synoptset 18 tabbed}{...}
{synopthdr:cleanopts}
{synoptline}
{p2coldent:* {opth gen:erate(newvar)}}创建包含清理后代码的新变量{p_end}
{p2coldent:* {opt replace}}用清理后的代码替换现有代码{p_end}
{synopt :{opt check}}在清理之前检查变量是否包含 ICD-10-PCS 代码{p_end}
{synopt :{opt nodot:s}}格式代码时不使用小数点{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 必须指定 {cmd:generate()} 或 {cmd:replace}。

{marker genopts}{...}
{synoptset 18}{...}
{synopthdr:genopts}
{synoptline}
{synopt :{cmd:addcode(begin}|{cmd:end)}}将代码添加到描述的开头或结尾{p_end}
{synopt :{opt nodot:s}}格式代码时不使用小数点；必须指定 {cmd:addcode()}{p_end}
{synopt :{opt check}}在生成新变量之前检查变量是否包含 ICD-10-PCS 代码{p_end}
{synopt :{opt long}}使用长描述而不是短描述{p_end}
{synopt :{opt version(#)}}从年份 {it:#} 中选择描述；默认是 {cmd:version(2019)}{p_end}
{synoptline}
{p2colreset}{...}

{marker searchopts}{...}
{synoptset 18}{...}
{synopthdr:searchopts}
{synoptline}
{synopt :{opt or}}匹配任何关键字{p_end}
{synopt :{opt matchc:ase}}匹配关键字的大小写{p_end}
{synopt :{opt version(#)}}从年份 {it:#} 中选择描述；默认是所有{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > ICD 代码 > ICD-10-PCS}


{marker description}{...}
{title:描述}

{pstd}
{cmd:icd10pcs} 是一组用于处理从美国联邦财政年度 2016 到现在的 ICD-10-PCS 程序代码的命令。要查看当前版本的 ICD-10-PCS 程序代码及其所做的任何更改，请输入 {cmd:icd10pcs query}。

{pstd}
{cmd:icd10pcs check}、{cmd:icd10pcs clean} 和 {cmd:icd10pcs generate} 是数据管理命令。 {cmd:icd10pcs check} 验证变量是否包含已定义的 ICD-10-PCS 程序代码，并提供遇到的任何问题的摘要。 {cmd:icd10pcs clean} 标准化代码的格式。 {cmd:icd10pcs generate} 可以为代码是否在指定代码集合中创建二进制指示变量，或包含相应更高层代码的变量，或包含代码描述的变量。

{pstd}
{cmd:icd10pcs lookup} 和 {cmd:icd10pcs search} 是交互式工具。 {cmd:icd10pcs lookup} 显示命令行上指定的代码的描述。 {cmd:icd10pcs search} 从命令行上给出的关键字中查找相关的 ICD-10-PCS 程序代码。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D icd10pcsQuickstart:快速开始}

        {mansection D icd10pcsRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd} 选项的内容如下：

        {help icd10pcs##opts_icd10pcscheck:icd10pcs check 的选项}
        {help icd10pcs##opts_icd10pcsclean:icd10pcs clean 的选项}
        {help icd10pcs##opts_icd10pcsgen:icd10pcs generate 的选项}
        {help icd10pcs##opts_icd10pcslookup:icd10pcs lookup 的选项}
        {help icd10pcs##opts_icd10pcssearch:icd10pcs search 的选项}


{marker opts_icd10pcscheck}{...}
{title:icd10pcs check 的选项}

{phang}
{opt fmtonly} 告诉 {cmd:icd10pcs check} 验证代码是否符合 ICD-10-PCS 程序代码的格式，但不检查代码是否已定义。

{phang}
{opt summary} 指定 {cmd:icd10pcs check} 报告在数据中找到的每个无效或未定义代码的频率。代码按频率降序显示。 {cmd:summary} 不能与 {cmd:list} 结合使用。

{phang}
{opt list} 指定 {cmd:icd10pcs check} 列出观测值编号、无效或未定义的 ICD-10-PCS 程序代码，以及代码无效的原因或是否为未定义代码。 {cmd:list} 不能与 {cmd:summary} 结合使用。

{phang}
{opth generate(newvar)} 指定 {cmd:icd10pcs check} 创建一个新变量，包含每个观测值的代码信息：如果观测值包含已定义代码则为 0。如果代码无效，则为 1 到 11 之间的数字，77 如果代码仅适用于先前版本，88 如果代码仅适用于后续版本，99 如果代码未定义，或者如果代码缺失则为缺失值。正数表示问题的类型，符合 {cmd:icd10pcs check} 产生的列表。

{phang}
{opt version(#)} 指定 {cmd:icd10pcs check} 应参考的代码版本。 {it:#} 表示代码的联邦财政年度。例如，使用 {cmd:2016} 表示 2016 财政年度（FFY-2016），也就是 2015 年 10 月 1 日到 2016 年 9 月 30 日。 {cmd:icd10pcs} 支持美国正式采用 ICD-10-PCS 后的所有年份。 {it:#} 的适当值应该根据数据源确定。默认值为 {cmd:version(2019)}。

{pmore}
警告：{cmd:version()} 的默认值将随着时间的推移而改变，以便使用最新的代码。使用默认值而不指定特定版本可能会在新版本代码引入后更改结果。


{marker opts_icd10pcsclean}{...}
{title:icd10pcs clean 的选项}

{phang}
{opth generate(newvar)} 和 {opt replace} 指定如何处理 {varname} 的格式值。您必须指定 {cmd:generate()} 或 {cmd:replace}。

{phang2}
{opt generate()} 指定将清理后的值放入在 {it:newvar} 中指定的新变量。

{phang2}
{opt replace} 指定用格式化后的值替换 {it:varname} 的现有值。

{phang}
{opt check} 指定 {cmd:icd10pcs clean} 应首先检查 {it:varname} 是否包含符合 ICD-10-PCS 程序代码格式的代码。指定 {opt check} 选项将降低 {cmd:icd10pcs clean} 的速度。

{phang}
{opt nodots} 指定在最终格式中去掉小数点。


{marker opts_icd10pcsgen}{...}
{title:icd10pcs generate 的选项}

{phang}
{cmd:category}、{cmd:description} 和 {opt range(codelist)} 指定 {cmd:icd10pcs} {cmd:generate} 要创建的新变量的内容。在使用 {cmd:icd10pcs} {cmd:generate} 之前，您无需使用 {cmd:icd10pcs} {cmd:clean} {it:varname}；它将接受任何支持的格式或格式组合。

{phang2}
{cmd:category} 指定从 ICD-10-PCS 程序代码中提取三字符类别代码。生成的变量可与其他 {cmd:icd10pcs} 子命令一起使用。

{phang2}
{opt description} 创建包含 ICD-10-PCS 程序代码描述的 {newvar}。

{phang2}
{opt range(codelist)} 创建一个新指示变量，当 ICD-10-PCS 程序代码在指定范围内时等于 1，当 ICD-10-PCS 程序代码不在范围内时等于 0，当 {it:varname} 缺失时等于缺失值。

{phang}
{cmd:addcode(begin}|{cmd:end)} 指定代码应与描述代码的文本一起包含。指定 {cmd:addcode(begin)} 会将代码附加到文本的开头。指定 {cmd:addcode(end)} 会将代码附加到文本的末尾。

{phang}
{cmd:nodots} 指定附加到描述中的代码应以不带小数点的格式。仅当同时指定 {cmd:addcode()} 时，才可以指定 {cmd:nodots}。

{phang}
{cmd:check} 指定 {cmd:icd10pcs} {cmd:generate} 应首先检查 {it:varname} 是否含有 ICD-10-PCS 程序代码。指定 {cmd:check} 选项将降低 {cmd:generate} 子命令的速度。

{phang}
{cmd:long} 指定使用代码的长描述，而不是短（缩略）描述。

{phang}
{opt version(#)} 指定 {cmd:icd10pcs} {cmd:generate} 应参考的代码版本。 {it:#} 表示代码的联邦财政年度。例如，使用 {cmd:2016} 表示 2016 财政年度（FFY-2016），也就是 2015 年 10 月 1 日到 2016 年 9 月 30 日。 {cmd:icd10pcs} 支持美国正式采用 ICD-10-PCS 后的所有年份。 {it:#} 的适当值应该根据数据源确定。默认值为 {cmd:version(2019)}。

{pmore}
警告：{cmd:version()} 的默认值将随着时间的推移而改变，以便使用最新的代码。使用默认值而不指定特定版本可能会在新版本代码引入后更改结果。


{marker opts_icd10pcslookup}{...}
{title:icd10pcs lookup 的选项}

{phang}
{opt version(#)} 指定 {cmd:icd10pcs lookup} 应参考的代码版本。 {it:#} 表示代码的联邦财政年度。例如，使用 {cmd:2016} 表示 2016 财政年度（FFY-2016），也就是 2015 年 10 月 1 日到 2016 年 9 月 30 日。 {cmd:icd10pcs} 支持美国正式采用 ICD-10-PCS 后的所有年份。 {it:#} 的适当值应该根据数据源确定。默认值为 {cmd:version(2019)}。

{pmore}
警告：{cmd:version()} 的默认值将随着时间的推移而改变，以便使用最新的代码。使用默认值而不指定特定版本可能会在新版本代码引入后更改结果。


{marker opts_icd10pcssearch}{...}
{title:icd10pcs search 的选项}

{phang}
{cmd:or} 指定搜索 ICD-10-PCS 程序代码以查找包含使用 {cmd:icd10pcs search} 指定的任何单词的描述。默认情况下，仅列出包含所有指定单词的描述。

{phang}
{opt matchcase} 指定 {cmd:icd10pcs search} 应匹配命令行上给定关键字的大小写。默认情况下，执行不区分大小写的搜索。

{phang}
{opt version(#)} 指定 {cmd:icd10pcs} {cmd:search} 应参考的代码版本。 {it:#} 表示代码的联邦财政年度。例如，使用 {cmd:2016} 表示 2016 财政年度（FFY-2016），也就是 2015 年 10 月 1 日到 2016 年 9 月 30 日。 {cmd:icd10pcs} 支持美国正式采用 ICD-10-PCS 后的所有年份。

{pmore}
默认情况下，搜索所有版本的描述，这意味着更改了描述且在多个版本中包含搜索词的代码将被重复列出。要确保唯一的代码值列表，请指定版本号。


{marker examples}{...}
{title:示例}

{pstd}查看自 {cmd:icd10pcs} 在 Stata 中实施以来，世界卫生组织对 ICD-10 代码列表所做的当前许可和变更日志{p_end}
{phang2}{cmd:. icd10pcs query}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hosp2015}{p_end}
{phang2}{cmd:. drop if dmonth < tm(2015m10)}{p_end}

{pstd}验证变量 {cmd:proc1} 是否具有 2016 财政年度的有效程序代码{p_end}
{phang2}{cmd:. icd10pcs check proc1, version(2016)}

{pstd}清理代码以使其更易读{p_end}
{phang2}{cmd:. icd10pcs clean proc1, replace}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:icd10pcs} {cmd:check} 在 {cmd:r()} 中存储以下信息：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(e}{it:#}{cmd:)}}类型 {it:#} 的错误数量{p_end}
{synopt :{cmd:r(esum)}}错误总数{p_end}
{synopt :{cmd:r(miss)}}缺失值数量{p_end}
{synopt :{cmd:r(N)}}非缺失值数量{p_end}

{pstd}
{cmd:icd10pcs} {cmd:clean} 在 {cmd:r()} 中存储以下信息：

{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(N)}}更改数量{p_end}

{pstd}
{cmd:icd10pcs} {cmd:lookup} 和 {cmd:icd10pcs} {cmd:search} 在 {cmd:r()} 中存储以下信息：

{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(N_codes)}}找到的代码数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <icd10pcs.sthlp>}