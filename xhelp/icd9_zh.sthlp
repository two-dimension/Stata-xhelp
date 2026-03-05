{smcl}
{* *! version 1.5.8  19oct2017}{...}
{viewerdialog icd9 "dialog icd9"}{...}
{vieweralsosee "[D] icd9" "mansection D icd9"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] icd" "help icd_zh"}{...}
{vieweralsosee "[D] icd9p" "help icd9p_zh"}{...}
{vieweralsosee "[D] icd10cm" "help icd10cm_zh"}{...}
{viewerjumpto "Syntax" "icd9_zh##syntax"}{...}
{viewerjumpto "Menu" "icd9_zh##menu"}{...}
{viewerjumpto "Description" "icd9_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "icd9_zh##linkspdf"}{...}
{viewerjumpto "Options" "icd9_zh##options"}{...}
{viewerjumpto "Examples" "icd9_zh##examples"}{...}
{viewerjumpto "Stored results" "icd9_zh##results"}
{help icd9:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] icd9} {hline 2}}ICD-9-CM 诊断代码{p_end}
{p2col:}({mansection D icd9:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
验证变量是否包含已定义的代码

{p 8 16 2}
{cmd:icd9}
{cmd:check} {varname}
{ifin}
[{cmd:,}
{opt any}
{opt l:ist}
{opth g:enerate(newvar)}]


{phang}
清理变量并验证代码格式 

{p 8 16 2}
{cmd:icd9}
{opt clean} {varname}
{ifin}
[{cmd:,}
{opt dot:s}
{opt pad}]


{phang}
从现有变量生成新变量

{p 8 16 2}
{cmd:icd9}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt cat:egory}

{p 8 16 2}
{cmd:icd9}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt d:escription}
[{opt long} {opt end}]

{p 8 16 2}
{cmd:icd9}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt r:ange(codelist)}


{phang}
显示代码描述

{p 8 16 2}
{cmd:icd9}
{opt look:up} {it:codelist}


{phang}
从描述中搜索代码

{p 8 16 2}
{cmd:icd9}
{opt sea:rch}
[{cmd:"}]{it:text}[{cmd:"}]
[[{cmd:"}]{it:text}[{cmd:"}] {it:...}]
[{cmd:,}
{opt or}]


{phang}
显示 ICD-9 代码来源

{p 8 16 2}
{cmd:icd9}
{opt q:uery}


{pstd}
{it:codelist} 是

{p2colset 9 30 32 2}{...}
{p2col :{it:icd9code}}(特定代码){p_end}
{p2col :{it:icd9code}{cmd:*}}(所有以此开头的代码){p_end}
{p2col :{it:icd9code}{cmd:/}{it:icd9code}}(代码范围){p_end}
{p2colreset}{...}

{pstd}
或上述任意组合，例如 {cmd:001* 018/019 E* 018.02}。
{it:icd9codes} 必须以前导零输入。例如，输入 {cmd:001}；输入 {cmd:1} 将导致错误。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > ICD 代码 > ICD-9}


{marker description}{...}
{title:描述}

{pstd}
{cmd:icd9} 是一组用于处理 ICD-9-CM 诊断代码的命令，适用于第 16 版（1998 年 10 月生效）到第 32 版。要查看当前的 ICD-9-CM 诊断代码版本及任何应用的更改，请输入 {cmd:icd9 query}。

{pstd}
{cmd:icd9 check}、{cmd:icd9 clean} 和 {cmd:icd9 generate} 是数据管理命令。{cmd:icd9 check} 验证变量是否包含已定义的 ICD-9-CM 诊断代码，并提供遇到的任何问题的摘要。{cmd:icd9 clean} 标准化代码的格式。{cmd:icd9 generate} 可创建一个二元指示变量，表示代码是否在指定代码集合中、包含对应的上级代码的变量，或包含代码描述的变量。

{pstd}
{cmd:icd9 lookup} 和 {cmd:icd9 search} 是交互式工具。{cmd:icd9 lookup} 显示命令行上指定代码的描述。{cmd:icd9 search} 根据命令行上给定的关键词查找相关的 ICD-9-CM 诊断代码。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D icd9Quickstart:快速开始}

        {mansection D icd9Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}选项与以下标题相关：

        {help icd9##options_icd9_check:icd9 check 的选项}
        {help icd9##options_icd9_clean:icd9 clean 的选项}
        {help icd9##options_icd9_gen:icd9 generate 的选项}
        {help icd9##options_icd9_search:icd9 search 的选项}


{marker options_icd9_check}{...}
{title:icd9 check 的选项}

{phang}
{opt any} 告诉 {cmd:icd9 check} 验证代码是否符合 ICD-9-CM 诊断代码的格式，但不检查代码是否已定义。

{phang}
{opt list} 指定 {cmd:icd9 check} 列出观测编号、无效或未定义的 ICD-9-CM 诊断代码，以及代码无效或未定义的原因。

{phang}
{opth generate(newvar)} 指定 {cmd:icd9 check} 创建一个新变量，对于每个观测，如果该观测包含已定义的代码或缺失，则值为 0。否则，包含一个从 1 到 10 的数字。这些正数指示问题的种类，并对应 {cmd:icd9 check} 输出的列表。


{marker options_icd9_clean}{...}
{title:icd9 clean 的选项}

{phang}
{opt dots} 指定最终格式中包含句点。如果未指定 {opt dots}，则删除所有句点。

{phang}
{opt pad} 指定 {opt icd9 clean} 在前后用空格填充代码，使（隐含的）句点在列表中垂直对齐。指定 {opt pad} 使得结果代码在与大多数其他 Stata 命令一起使用时看起来更好。


{marker options_icd9_gen}{...}
{title:icd9 generate 的选项}

{phang}
{opt category}、{opt description} 和 {opt range(codelist)} 指定 {opt icd9} {opt generate} 要创建的新变量的内容。在使用 {opt icd9} {opt generate} 之前，您不需要 {opt icd9} {opt clean} {it:varname}；它将接受任何支持的格式或格式组合。

{phang2}
{opt category} 创建一个新变量，其中包含 ICD-9-CM 诊断类别代码。生成的变量可与其他 {cmd:icd9} 子命令一起使用。对于诊断代码，类别代码是前 3 个字符，E 码除外，则为前 4 个字符。

{phang2}
{opt description} 创建 {newvar}，其中包含 ICD-9-CM 诊断代码的描述。

{phang3}
{opt long} 用于 {opt description}。它指定将代码放在描述代码的文本前面。

{phang3}
{opt end} 修改 {opt long}（指定 {opt end} 意味着 {opt long}），并将代码放在字符串的末尾。

{phang2}
{opt range(codelist)} 创建一个新指示变量，当 ICD-9-CM 诊断代码在指定范围内时为 1，不在范围内时为 0，当 {it:varname} 缺失时为缺失。


{marker options_icd9_search}{...}
{title:icd9 search 的选项}

{phang}
{opt or} 指定搜索 ICD-9-CM 诊断代码，查找包含任何指定词的描述，默认情况下仅列出包含所有指定词的描述。


{marker examples}{...}
{title:示例}

{pstd}查看自 {cmd:icd9} 实施以来对 ICD-9 代码列表的更改日志{p_end}
{phang2}{cmd:. icd9 query}{p_end}

{pstd}显示代码 526.4 的描述{p_end}
{phang2}{cmd:. icd9 lookup 526.4}{p_end}

{pstd}查找代码范围{p_end}
{phang2}{cmd:. icd9 lookup 526/527}{p_end}

{pstd}搜索包含 jaw 和 disease 的代码{p_end}
{phang2}{cmd:. icd9 search jaw disease}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nhds2010}{p_end}

{pstd}清理 {cmd:dx1} 诊断代码变量{p_end}
{phang2}{cmd:. icd9 clean dx1}{p_end}

{pstd}创建包含 {cmd:dx1} 的类别代码的变量 {cmd:main1}{p_end}
{phang2}{cmd:. icd9 generate main1 = dx1, category}{p_end}

{pstd}尝试清理 {cmd:dx3} 诊断代码变量；将返回错误{p_end}
{phang2}{cmd:. icd9 clean dx3}{p_end}

{pstd}标记包含无效代码的观测{p_end}
{phang2}{cmd:. icd9 check dx3, generate(prob)}{p_end}


{marker results}{...}
{title:储存的结果}

{pstd}
{cmd:icd9} {cmd:check} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(e}{it:#}{cmd:)}}错误类型 {it:#} 的数量{p_end}
{synopt:{cmd:r(esum)}}错误的总数量{p_end}
{p2colreset}{...}

{pstd}
{cmd:icd9} {cmd:clean} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}更改的数量{p_end}
{p2colreset}{...}

{pstd}
{cmd:icd9} {cmd:lookup} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}找到的代码数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <icd9.sthlp>}