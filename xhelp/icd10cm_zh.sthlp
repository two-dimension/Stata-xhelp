{smcl}
{* *! version 1.0.4  25sep2018}{...}
{viewerdialog icd10cm "dialog icd10cm"}{...}
{vieweralsosee "[D] icd10cm" "mansection D icd10cm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] icd" "help icd_zh"}{...}
{vieweralsosee "[D] icd9" "help icd9_zh"}{...}
{vieweralsosee "[D] icd10" "help icd10_zh"}{...}
{vieweralsosee "[D] icd10pcs" "help icd10pcs_zh"}{...}
{viewerjumpto "Syntax" "icd10cm_zh##syntax"}{...}
{viewerjumpto "Menu" "icd10cm_zh##menu"}{...}
{viewerjumpto "Description" "icd10cm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "icd10cm_zh##linkspdf"}{...}
{viewerjumpto "Options" "icd10cm_zh##options"}{...}
{viewerjumpto "Examples" "icd10cm_zh##examples"}{...}
{viewerjumpto "Stored results" "icd10cm_zh##results"}
{help icd10cm:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] icd10cm} {hline 2}}ICD-10-CM 诊断代码{p_end}
{p2col:}({mansection D icd10cm:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
验证变量包含已定义的代码

{p 8 16 2}
{cmd:icd10cm}
{cmd:check} {varname} {ifin}
[{cmd:,} {it:{help icd10cm##checkopts:checkopts}}]


{phang}
清理变量并验证代码格式

{p 8 16 2}
{cmd:icd10cm}
{opt clean} {varname} {ifin}{cmd:,}
{c -(}{opth gen:erate(newvar)} | {opt rep:lace}{c )-}
[{it:{help icd10cm##cleanopts:cleanopts}}]


{phang}
从现有变量生成新变量

{p 8 16 2}
{cmd:icd10cm}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt cat:egory} [{opt check}]

{p 8 16 2}
{cmd:icd10cm}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt d:escription}
[{it:{help icd10cm##genopts:genopts}}]

{p 8 16 2}
{cmd:icd10cm}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt r:ange(codelist)} [{opt check}]


{phang}
显示代码描述

{p 8 16 2}
{cmd:icd10cm}
{opt look:up} {it:codelist}
[{cmd:,} {opt version(#)}]


{phang}
根据描述搜索代码

{p 8 16 2}
{cmd:icd10cm}
{opt sea:rch}
[{cmd:"}]{it:text}[{cmd:"}]
[[{cmd:"}]{it:text}[{cmd:"}] {it:...}]
[{cmd:,}
{it:{help icd10cm##searchopts:searchopts}}]


{phang}
显示 ICD-10-CM 版本

{p 8 16 2}
{cmd:icd10cm}
{opt q:uery}


{pstd}
{it:codelist} 是以下之一：

{p2colset 9 30 32 2}{...}
{p2col :{it:icd10code}}(特定代码){p_end}
{p2col :{it:icd10code}{cmd:*}}(以此开头的所有代码){p_end}
{p2col :{it:icd10code}{cmd:/}{it:icd10code}}(代码范围){p_end}
{p2colreset}{...}

{pstd}
或上述任意组合，例如 {cmd:A27.0 G40* Y60/Y69.9}。

{marker checkopts}{...}
{synoptset 18}{...}
{synopthdr:checkopts}
{synoptline}
{synopt :{opt fmt:only}}仅检查代码的格式{p_end}
{synopt :{opt summ:ary}}每个无效或未定义代码的频率{p_end}
{synopt :{opt l:ist}}列出具有无效或未定义 ICD-10-CM 代码的观测值{p_end}
{synopt :{opth gen:erate(newvar)}}创建一个新变量标记无效代码{p_end}
{synopt :{opt version(#)}}要检查的代码的财政年度；默认是
{cmd:version(2019)}{p_end}
{synoptline}
{p2colreset}{...}

{marker cleanopts}{...}
{synoptset 18 tabbed}{...}
{synopthdr:cleanopts}
{synoptline}
{p2coldent:* {opth gen:erate(newvar)}}创建一个新变量，包含清理后的代码{p_end}
{p2coldent:* {opt replace}}用清理后的代码替换现有代码{p_end}
{synopt :{opt check}}检查变量是否包含 ICD-10-CM 代码，然后再进行清理{p_end}
{synopt :{opt nodot:s}}格式代码时不带小数点{p_end}
{synopt :{opt pad}}对于少于七个字符的代码，在右侧添加空格{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 必须有 {cmd:generate()} 或 {cmd:replace}。

{marker genopts}{...}
{synoptset 18}{...}
{synopthdr:genopts}
{synoptline}
{synopt :{cmd:addcode(begin}|{cmd:end)}}将代码添加到描述的开头或结尾{p_end}
{synopt :{opt pad}}在代码右侧添加空格；必须指定 {cmd:addcode(begin)}{p_end}
{synopt :{opt nodot:s}}格式代码时不带小数点；必须指定 {cmd:addcode()}{p_end}
{synopt :{opt check}}检查变量是否包含 ICD-10-CM 代码，然后生成新变量{p_end}
{synopt :{opt long}}使用较长的描述，而不是简短的描述{p_end}
{synopt :{opt version(#)}}从年份 {it:#} 中选择描述；默认是 {cmd:version(2019)}{p_end}
{synoptline}
{p2colreset}{...}

{marker searchopts}{...}
{synoptset 18}{...}
{synopthdr:searchopts}
{synoptline}
{synopt :{opt or}}匹配任何关键字{p_end}
{synopt :{opt matchc:ase}}匹配关键字的大小写{p_end}
{synopt :{opt version(#)}}选择描述从年份 {it:#} 中；默认是所有{p_end}
{synoptline}
{p2colreset}{...}

{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > ICD 代码 > ICD-10-CM}


{marker description}{...}
{title:描述}

{pstd}
{cmd:icd10cm} 是一系列用于处理 2016 财政年度至今的 ICD-10-CM 诊断代码的命令。要查看当前的 ICD-10-CM 诊断代码版本及任何已应用的更改，请输入 {cmd:icd10cm query}。

{pstd}
{cmd:icd10cm check}、{cmd:icd10cm clean} 和 {cmd:icd10cm generate} 是数据管理命令。{cmd:icd10cm check} 验证变量是否包含已定义的 ICD-10-CM 诊断代码，并提供遇到的任何问题的摘要。{cmd:icd10cm clean} 标准化代码的格式。{cmd:icd10cm generate} 可以创建一个二元指示变量，表明代码是否在指定的代码集中，或包含相应更高级别代码的变量，或包含代码描述的变量。

{pstd}
{cmd:icd10cm lookup} 和 {cmd:icd10cm search} 是交互式工具。{cmd:icd10cm lookup} 显示命令行上指定代码的描述。{cmd:icd10cm search} 根据命令行上给出的关键字查找相关的 ICD-10-CM 诊断代码。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D icd10cmQuickstart:快速入门}

        {mansection D icd10cmRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd} 选项以以下标题呈现：

        {help icd10cm##opts_icd10cmcheck:icd10cm check 的选项}
        {help icd10cm##opts_icd10cmclean:icd10cm clean 的选项}
        {help icd10cm##opts_icd10cmgen:icd10cm generate 的选项}
        {help icd10cm##opts_icd10cmlookup:icd10cm lookup 的选项}
        {help icd10cm##opts_icd10cmsearch:icd10cm search 的选项}


{marker opts_icd10cmcheck}{...}
{title:icd10cm check 的选项}

{phang}
{opt fmtonly} 指示 {cmd:icd10cm check} 验证代码是否符合 ICD-10-CM 诊断代码的格式，但不检查代码是否已定义。

{phang}
{opt summary} 指定 {cmd:icd10cm check} 应报告在数据中找到的每个无效或未定义代码的频率。代码按频率降序显示。{cmd:summary} 不能与 {cmd:list} 结合使用。

{phang}
{opt list} 指定 {cmd:icd10cm check} 列出观测号、无效或未定义的 ICD-10-CM 诊断代码以及代码无效的原因或是否是未定义的代码。{cmd:list} 不能与 {cmd:summary} 结合使用。

{phang}
{opth generate(newvar)} 指定 {cmd:icd10cm check} 创建一个新变量，包含每个观测值，如果观测值包含已定义的代码，则为0。否则，如果代码无效，则包含从1到11的数字，如果代码仅对以前的版本有效，则为77，如果代码仅对以后的版本有效，则为88，如果代码未定义，则为99，如果 {it:varname} 为缺失，则为空值。正数表示问题的类型，并对应于 {cmd:icd10cm check} 生成的列表。

{phang}
{opt version(#)} 指定 {cmd:icd10cm check} 应参考的代码版本。{it:#} 表示代码的财政年度。例如，使用 {cmd:2016} 表示 2016 财政年度（FFY-2016），即2015年10月1日至2016年9月30日。{cmd:icd10cm} 支持美国正式采用 ICD-10-CM 之后的所有年份。{it:#} 的适当值应从数据源确定。默认值是 {cmd:version(2019)}。

{pmore}
警告：{cmd:version()} 的默认值会随着时间的推移而变化，以便使用最新的代码。使用默认值而不是指定特定版本，可能会在新版本的代码推出后改变结果。


{marker opts_icd10cmclean}{...}
{title:icd10cm clean 的选项}

{phang}
{opth generate(newvar)} 和 {opt replace} 指定如何处理 {varname} 的格式值。您必须指定 {cmd:generate()} 或 {cmd:replace}。

{phang2}
{opt generate()} 指定将清理后的值放置在 {it:newvar} 中指定的新变量中。

{phang2}
{opt replace} 指定用格式值替换 {it:varname} 的现有值。

{phang}
{opt check} 指定 {cmd:icd10cm clean} 应首先检查 {it:varname} 是否包含符合 ICD-10-CM 诊断代码格式的代码。指定 {opt check} 选项将减慢 {cmd:icd10cm clean} 的速度。

{phang}
{opt nodots} 指定在最终格式中移除小数点。

{phang}
{opt pad} 指定在代码后面添加空格，以使（隐含的）点在列表中垂直对齐。默认是左对齐代码，而不添加空格。


{marker opts_icd10cmgen}{...}
{title:icd10cm generate 的选项}

{phang}
{cmd:category}、{cmd:description} 和 {opt range(codelist)} 指定 {cmd:icd10cm} {cmd:generate} 要创建的新变量的内容。您不需要在使用 {cmd:icd10cm} {cmd:generate} 之前对 {it:varname} 进行 {cmd:icd10cm} {cmd:clean}；它会接受任何支持的格式或格式组合。

{phang2}
{cmd:category} 指定从 ICD-10-CM 诊断代码中提取三字符类别代码。所产生的变量可以与其他 {cmd:icd10cm} 子命令一起使用。

{phang2}
{opt description} 创建 {newvar}，包含 ICD-10-CM 诊断代码的描述。

{phang2}
{opt range(codelist)} 创建一个新的指示变量，当 ICD-10-CM 诊断代码在指定范围内时等于1，不在范围内时等于0，以及当 {it:varname} 为缺失时等于缺失。

{phang}
{cmd:addcode(begin}|{cmd:end)} 指定代码应与描述代码的文本一起包含。指定 {cmd:addcode(begin)} 将代码前置到文本中，指定 {cmd:addcode(end)} 将代码附加到文本后。

{phang}
{cmd:pad} 指定要添加到描述中的代码应在代码右侧添加空格，以使所有代码的描述文本开始对齐。{cmd:pad} 只能与 {cmd:addcode(begin)} 一起指定。

{phang}
{cmd:nodots} 指定添加到描述中的代码应格式化为不带小数点。{cmd:nodots} 只能在同时指定 {cmd:addcode()} 时使用。

{phang}
{cmd:check} 指定 {cmd:icd10cm} {cmd:generate} 应首先检查 {it:varname} 是否包含符合 ICD-10-CM 诊断代码格式的代码。指定 {cmd:check} 选项将减慢 {cmd:generate} 子命令的速度。

{phang}
{cmd:long} 指定使用代码的长描述，而不是短描述。

{phang}
{opt version(#)} 指定 {cmd:icd10cm} {cmd:generate} 应参考的代码版本。{it:#} 表示代码的财政年度。例如，使用 {cmd:2016} 表示2016财政年度（FFY-2016），即2015年10月1日至2016年9月30日。{cmd:icd10cm} 支持美国正式采用 ICD-10-CM 之后的所有年份。{it:#} 的适当值应从数据源确定。默认值是 {cmd:version(2019)}。

{pmore}
警告：{cmd:version()} 的默认值会随着时间的推移而变化，以便使用最新的代码。使用默认值而不是指定特定版本，可能会在新版本的代码推出后改变结果。


{marker opts_icd10cmlookup}{...}
{title:icd10cm lookup 的选项}

{phang}
{opt version(#)} 指定 {cmd:icd10cm lookup} 应参考的代码版本。{it:#} 表示代码的财政年度。例如，使用 {cmd:2016} 表示2016 财政年度（FFY-2016），即2015年10月1日至2016年9月30日。{cmd:icd10cm} 支持美国正式采用 ICD-10-CM 之后的所有年份。{it:#} 的适当值应从数据源确定。默认值是 {cmd:version(2019)}。

{pmore}
警告：{cmd:version()} 的默认值会随着时间的推移而变化，以便使用最新的代码。使用默认值而不是指定特定版本，可能会在新版本的代码推出后改变结果。


{marker opts_icd10cmsearch}{...}
{title:icd10cm search 的选项}

{phang}
{cmd:or} 指定搜索 ICD-10-CM 诊断代码时，描述中包含 {cmd:icd10cm search} 指定的任何单词。默认情况下，仅列出包含所有指定单词的描述。

{phang}
{opt matchcase} 指定 {cmd:icd10cm search} 应匹配命令行中给定关键字的大小写。默认情况下，执行不区分大小写的搜索。

{phang}
{opt version(#)} 指定 {cmd:icd10cm} {cmd:search} 应参考的代码版本。{it:#} 表示代码的财政年度。例如，使用 {cmd:2016} 表示2016 财政年度（FFY-2016），即2015年10月1日至2016年9月30日。{cmd:icd10cm} 支持美国正式采用 ICD-10-CM 之后的所有年份。

{pmore}
默认情况下，搜索所有版本的描述，这意味着描述更改的代码以及在包含搜索词的多个版本中都有描述的代码将被重复。为确保唯一的代码值列表，请指定版本号。


{marker examples}{...}
{title:示例}

{pstd}查看 ICD-10-CM 诊断代码的版本及自 {cmd:icd10cm} 在 Stata 中实施以来所做的更改{p_end}
{phang2}{cmd:. icd10cm query}

{pstd}数据准备{p_end}
{phang2}{cmd:. webuse hosp2015}{p_end}
{phang2}{cmd:. drop if dmonth < tm(2015m10)}{p_end}

{pstd}验证变量 {cmd:diag1} 是否在 2016 财政年度具有有效代码{p_end}
{phang2}{cmd:. icd10cm check diag1, version(2016) summary}

{pstd}清理代码以提高可读性，填充代码以对齐，并将结果存储在新变量 {cmd:pdx} 中{p_end}
{phang2}{cmd:. icd10cm clean diag1, pad generate(pdx)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:icd10cm} {cmd:check} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(e}{it:#}{cmd:)}}错误类型 {it:#} 的数量{p_end}
{synopt :{cmd:r(esum)}}错误的总数量{p_end}
{synopt :{cmd:r(miss)}}缺失值的数量{p_end}
{synopt :{cmd:r(N)}}非缺失值的数量{p_end}

{pstd}
{cmd:icd10cm} {cmd:clean} 在 {cmd:r()} 中存储以下内容：

{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(N)}}变化的数量{p_end}

{pstd}
{cmd:icd10cm} {cmd:lookup} 和 {cmd:icd10cm} {cmd:search} 在 {cmd:r()} 中存储以下内容：

{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(N_codes)}}找到的代码数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <icd10cm.sthlp>}