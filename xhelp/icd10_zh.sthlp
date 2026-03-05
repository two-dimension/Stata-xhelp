{smcl}
{* *! version 1.0.11  19oct2017}{...}
{viewerdialog icd10 "dialog icd10"}{...}
{vieweralsosee "[D] icd10" "mansection D icd10"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] icd" "help icd_zh"}{...}
{vieweralsosee "[D] icd10cm" "help icd10cm_zh"}{...}
{viewerjumpto "语法" "icd10_zh##syntax"}{...}
{viewerjumpto "菜单" "icd10_zh##menu"}{...}
{viewerjumpto "描述" "icd10_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "icd10_zh##linkspdf"}{...}
{viewerjumpto "选项" "icd10_zh##options"}{...}
{viewerjumpto "示例" "icd10_zh##examples"}{...}
{viewerjumpto "存储结果" "icd10_zh##results"}
{help icd10:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] icd10} {hline 2}}ICD-10 诊断代码{p_end}
{p2col:}({mansection D icd10:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
验证变量包含已定义的代码

{p 8 16 2}
{cmd:icd10}
{cmd:check} {varname} {ifin}
[{cmd:,} {it:{help icd10##checkopts:checkopts}}]


{phang}
清理变量并验证代码格式

{p 8 16 2}
{cmd:icd10}
{opt clean} {varname} {ifin}{cmd:,}
{c -(}{opth gen:erate(newvar)} | {opt rep:lace}{c )-}
[{it:{help icd10##cleanopts:cleanopts}}]


{phang}
从现有变量生成新变量

{p 8 16 2}
{cmd:icd10}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{c -(}{opt cat:egory} | {opt sh:ort}{c )-} [{opt check}]

{p 8 16 2}
{cmd:icd10}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt d:escription}
[{it:{help icd10##genopts:genopts}}]

{p 8 16 2}
{cmd:icd10}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt r:ange(codelist)} [{opt check}]


{phang}
显示代码描述

{p 8 16 2}
{cmd:icd10}
{opt look:up} {it:codelist}
[{cmd:,} {opt version(#)}]


{phang}
根据描述搜索代码

{p 8 16 2}
{cmd:icd10}
{opt sea:rch}
[{cmd:"}]{it:text}[{cmd:"}]
[[{cmd:"}]{it:text}[{cmd:"}] {it:...}]
[{cmd:,}
{it:{help icd10##searchopts:searchopts}}]


{phang}
显示 ICD-10 版本

{p 8 16 2}
{cmd:icd10}
{opt q:uery}


{pstd}
{it:codelist} 为以下之一：

{p2colset 9 30 32 2}{...}
{p2col :{it:icd10code}}（特定代码）{p_end}
{p2col :{it:icd10code}{cmd:*}}（所有以此开头的代码）{p_end}
{p2col :{it:icd10code}{cmd:/}{it:icd10code}}（代码范围）{p_end}
{p2colreset}{...}

{pstd}
或上述任意组合，例如 {cmd:A27.0 G40* Y60/Y69.9}。

{marker checkopts}{...}
{synoptset 18}{...}
{synopthdr:checkopts}
{synoptline}
{synopt :{opt fmt:only}}仅检查代码格式{p_end}
{synopt :{opt summ:ary}}每个无效或未定义代码的频率{p_end}
{synopt :{opt l:ist}}列出无效或未定义的 ICD-10 代码的观测值{p_end}
{synopt :{opth gen:erate(newvar)}}创建新变量标记无效代码{p_end}
{synopt :{opt version(#)}}要检查的代码年份；默认是
{cmd:version(2016)}{p_end}
{synoptline}
{p2colreset}{...}

{marker cleanopts}{...}
{synoptset 18 tabbed}{...}
{synopthdr:cleanopts}
{synoptline}
{p2coldent:* {opth gen:erate(newvar)}}创建新变量包含清理后的代码{p_end}
{p2coldent:* {opt replace}}用清理后的代码替换现有代码{p_end}
{synopt :{opt check}}在清理之前检查变量是否包含 ICD-10 代码{p_end}
{synopt :{opt nodot:s}}格式代码时不带句点{p_end}
{synopt :{opt pad}}在三字符代码的右侧添加空格{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 必须指定 {cmd:generate()} 或 {cmd:replace}。

{marker genopts}{...}
{synoptset 18}{...}
{synopthdr:genopts}
{synoptline}
{synopt :{cmd:addcode(begin}|{cmd:end)}}将代码添加到描述的开头或末尾{p_end}
{synopt :{opt pad}}在代码右侧添加空格；必须指定 {cmd:addcode(begin)}{p_end}
{synopt :{opt nodot:s}}格式代码时不带句点；必须指定 {cmd:addcode()}{p_end}
{synopt :{opt check}}在生成新变量之前检查变量是否包含 ICD-10 代码{p_end}
{synopt :{opt version(#)}}选择来自年份 {it:#} 的描述；默认是 {cmd:version(2016)}{p_end}
{synoptline}
{p2colreset}{...}

{marker searchopts}{...}
{synoptset 18}{...}
{synopthdr:searchopts}
{synoptline}
{synopt :{opt or}}匹配任何关键字{p_end}
{synopt :{opt matchc:ase}}匹配关键字的大小写{p_end}
{synopt :{opt version(#)}}选择来自年份 {it:#} 的描述；默认是所有{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > ICD 代码 > ICD-10}


{marker description}{...}
{title:描述}

{pstd}
{cmd:icd10} 是一套用于处理世界卫生组织（WHO）ICD-10 诊断代码的命令，从第二版（2003）到第五版（2016）。要查看当前版本的 ICD-10 诊断代码及其所做出的任何更改，请输入 {cmd:icd10} 
{cmd:query}。

{pstd}
{cmd:icd10 check}、{cmd:icd10 clean} 和 {cmd:icd10 generate} 是数据管理命令。{cmd:icd10 check} 验证变量是否包含已定义的 ICD-10 诊断代码，并提供遇到的任何问题的摘要。{cmd:icd10 clean} 标准化代码格式。
{cmd:icd10 generate} 可以为指定代码集中的代码生成一个二进制指示变量，生成一个包含相应上级代码的变量，或生成一个包含代码描述的变量。

{pstd} {cmd:icd10 lookup} 和 {cmd:icd10 search} 是交互式工具。
{cmd:icd10 lookup} 显示命令行上指定的代码描述。{cmd:icd10 search} 根据命令行提供的关键字查找相关的 ICD-10 诊断代码。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D icd10Quickstart:快速入门}

        {mansection D icd10Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd} 选项根据以下标题进行呈现：

        {help icd10##opts_icd10check:icd10 check 的选项}
        {help icd10##opts_icd10clean:icd10 clean 的选项}
        {help icd10##opts_icd10gen:icd10 generate 的选项}
        {help icd10##opts_icd10lookup:icd10 lookup 的选项}
        {help icd10##opts_icd10search:icd10 search 的选项}

{pstd}
警告：
选项描述简洁且使用行话。请在使用 {cmd:icd10} 命令之前阅读
{mansection D icdRemarksandexamplesIntroductiontoICDcoding:{it:ICD 编码简介}} 
在 {bf:[D] icd} 中。


{marker opts_icd10check}{...}
{title:icd10 check 选项}

{phang}
{opt fmtonly} 告诉 {cmd:icd10 check} 验证代码是否符合 ICD-10 诊断代码的格式，但不检查代码是否已定义。

{phang}
{opt summary} 指定 {cmd:icd10 check} 应报告数据中找到的每个无效或未定义代码的频率。代码按频率降序显示。 {cmd:summary} 不能与 {cmd:list} 结合使用。

{phang}
{opt list} 指定 {cmd:icd10 check} 列出观察编号、无效或未定义的 ICD-10 诊断代码以及代码无效的原因或是否为未定义代码。{cmd:list} 不能与 {cmd:summary} 结合使用。

{phang}
{opth generate(newvar)} 指定 {cmd:icd10 check} 创建一个新变量，包含每个观测值的 0（如果观测值包含已定义的代码）。否则，包含一个从 1 到 8 的数字（如果代码无效），99（如果代码未定义），或缺失（如果代码缺失）。正数指示问题类型，并与 {cmd:icd10 check} 产生的列表相对应。

{phang}
{opt version(#)} 指定 {cmd:icd10 check} 应参考的代码版本。 {it:#} 可以是从 2003（未应用任何更新的第二版 ICD-10）到 2016（第五版 ICD-10）之间的任何值。 应根据数据来源确定 {it:#} 的适当值。 默认值为 {cmd:version(2016)}。


{marker opts_icd10clean}{...}
{title:icd10 clean 选项}

{phang}
{opth generate(newvar)} 和 {opt replace} 指定如何处理 {varname} 的格式化值。必须指定 {cmd:generate()} 或 {cmd:replace}。

{phang2}
{opt generate()} 指定清理后的值放在 {it:newvar} 中。

{phang2}
{opt replace} 指定替换 {it:varname} 的现有值为格式化值。

{phang}
{opt check} 指定 {cmd:icd10 clean} 应首先检查 {it:varname} 是否包含符合 ICD-10 诊断代码格式的代码。指定 {opt check} 选项会减慢 {cmd:icd10 clean} 的速度。

{phang}
{opt nodots} 指定在最终格式中移除句点。

{phang}
{opt pad} 指定在代码末尾添加空格，以便在列中垂直对齐（隐含的）句点。 默认情况下，代码左对齐，不添加空格。


{marker opts_icd10gen}{...}
{title:icd10 generate 选项}

{phang}
{cmd:category}、{cmd:short}、{cmd:description} 和 {opt range(codelist)} 指定 {cmd:icd10} {cmd:generate} 要创建的新变量的内容。在使用 {cmd:icd10} {cmd:generate} 之前无需 {cmd:icd10} {cmd:clean} {it:varname}；它将接受任何支持的格式或格式组合。

{phang2}
{cmd:category} 和 {cmd:short} 生成一个新变量，其中还包含 ICD-10 诊断代码。生成的变量可以与其他 {cmd:icd10} 子命令一起使用。

{phang3}
{cmd:category} 指定从 ICD-10 诊断代码提取三字符类别代码。

{phang3}
{cmd:short} 旨在用于拥有比标准四字符 ICD-10 代码更高特异性的用户。{cmd:short} 将五个和六个字符的代码简化为前四个字符。三字符和四字符的代码保持不变。

{phang2}
{opt description} 创建 {newvar}，包含 ICD-10 诊断代码的描述。

{phang2}
{opt range(codelist)} 创建一个新的指示变量，当 ICD-10 诊断代码在指定范围内时为 1，在不在范围内时为 0，当 {it:varname} 缺失时为缺失。

{phang}
{cmd:addcode(begin}|{cmd:end)} 指定应将代码与描述代码的文本包含在一起。指定 {cmd:addcode(begin)} 会将代码添加到文本的前面。指定 {cmd:addcode(end)} 会将代码添加到文本的后面。

{phang}
{cmd:pad} 指定要添加到描述的代码的右侧应填充空格，以便所有代码的描述文本开始对齐。 {cmd:pad} 仅可以与 {cmd:addcode(begin)} 一起指定。

{phang}
{cmd:nodots} 指定添加到描述的代码应不带句点进行格式化。{cmd:nodots} 仅在指定了 {cmd:addcode()} 的情况下可以指定。

{phang}
{cmd:check} 指定 {cmd:icd10} {cmd:generate} 应首先检查 {it:varname} 是否包含符合 ICD-10 诊断代码的格式。指定 {cmd:check} 选项会减慢 {cmd:generate} 子命令的速度。

{phang}
{opt version(#)} 指定 {cmd:icd10 generate} 应参考的代码版本。 {it:#} 可以是从 2003（未应用任何更新的第二版 ICD-10）到 2016（第五版 ICD-10）之间的任何值。 应根据数据来源确定 {it:#} 的适当值。 默认值为 {cmd:version(2016)}。


{marker opts_icd10lookup}{...}
{title:icd10 lookup 选项}

{phang}
{opt version(#)} 指定 {cmd:icd10 lookup} 应参考的代码版本。 {it:#} 可以是从 2003（未应用任何更新的第二版 ICD-10）到 2016（第五版 ICD-10）之间的任何值。 应根据数据来源确定 {it:#} 的适当值。 默认值为 {cmd:version(2016)}。


{marker opts_icd10search}{...}
{title:icd10 search 选项}

{phang}
{cmd:or} 指定搜索 ICD-10 诊断代码的描述时包含 {cmd:icd10 search} 指定的任何单词。 默认情况下，仅列出包含所有指定单词的描述。

{phang}
{opt matchcase} 指定 {cmd:icd10 search} 应匹配命令行上给定关键字的大小写。 默认情况下执行不区分大小写的搜索。

{phang}
{opt version(#)} 指定 {cmd:icd10 search} 应参考的代码版本。 {it:#} 可以是从 2003（未应用任何更新的第二版 ICD-10）到 2016（第五版 ICD-10）之间的任何值。

{pmore}
默认情况下，搜索所有版本的描述，这意味着有描述更改的代码以及在多个版本中包含搜索条款的描述将被重复。要确保唯一代码值的列表，请指定版本号。


{marker examples}{...}
{title:示例}

{pstd}查看自 {cmd:icd10} 在 Stata 中实施以来，WHO 对 ICD-10 代码清单所做的当前许可和更改日志{p_end}
{phang2}{cmd:. icd10 query}

{pstd}设置{p_end}
{phang2}{cmd:. webuse australia10}

{pstd}验证变量 {cmd:cause} 是否具有有效代码，并标记任何包含无效代码的观察值{p_end}
{phang2}{cmd:. icd10 check cause, generate(prob)}

{pstd}与上述相同，但还指定数据是使用 2010 年的 ICD-10 代码报告的{p_end}
{phang2}{cmd:. icd10 check cause, generate(prob2) version(2010)}

{pstd}清理代码以使其更易读{p_end}
{phang2}{cmd:. icd10 clean cause, replace}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:icd10} {cmd:check} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(e}{it:#}{cmd:)}}类型 {it:#} 的错误数量{p_end}
{synopt :{cmd:r(esum)}}错误的总数量{p_end}
{synopt :{cmd:r(miss)}}缺失值的数量{p_end}
{synopt :{cmd:r(N)}}非缺失值的数量{p_end}

{pstd}
{cmd:icd10} {cmd:clean} 将以下内容存储在 {cmd:r()} 中：

{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(N)}}更改的数量{p_end}

{pstd}
{cmd:icd10} {cmd:lookup} 和 {cmd:icd10} {cmd:search} 将以下内容存储在
{cmd:r()} 中：

{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(N_codes)}}找到的代码数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <icd10.sthlp>}