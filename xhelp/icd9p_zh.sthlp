{smcl}
{* *! version 1.0.2  19oct2017}{...}
{viewerdialog icd9p "dialog icd9"}{...}
{vieweralsosee "[D] icd9p" "mansection D icd9p"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] icd" "help icd_zh"}{...}
{vieweralsosee "[D] icd9" "help icd9_zh"}{...}
{vieweralsosee "[D] icd10pcs" "help icd10pcs_zh"}{...}
{viewerjumpto "语法" "icd9p_zh##syntax"}{...}
{viewerjumpto "菜单" "icd9p_zh##menu"}{...}
{viewerjumpto "描述" "icd9p_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "icd9p_zh##linkspdf"}{...}
{viewerjumpto "选项" "icd9p_zh##options"}{...}
{viewerjumpto "示例" "icd9p_zh##examples"}{...}
{viewerjumpto "存储结果" "icd9p_zh##results"}
{help icd9p:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] icd9p} {hline 2}}ICD-9-CM 程序代码{p_end}
{p2col:}({mansection D icd9p:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
验证变量是否包含定义的代码

{p 8 16 2}
{cmd:icd9p}
{cmd:check} {varname}
{ifin}
[{cmd:,}
{opt any}
{opt l:ist}
{opth g:enerate(newvar)}]


{phang}
清理变量并验证代码格式 

{p 8 16 2}
{cmd:icd9p}
{opt clean} {varname}
{ifin}
[{cmd:,}
{opt dot:s}
{opt pad}]


{phang}
从现有变量生成新变量

{p 8 16 2}
{cmd:icd9p}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt cat:egory}

{p 8 16 2}
{cmd:icd9p}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt d:escription}
[{opt long} {opt end}]

{p 8 16 2}
{cmd:icd9p}
{opt gen:erate} {newvar} {cmd:=} {varname} {ifin}{cmd:,}
{opt r:ange(codelist)}


{phang}
显示代码描述

{p 8 16 2}
{cmd:icd9p}
{opt look:up} {it:codelist}


{phang}
根据描述搜索代码

{p 8 16 2}
{cmd:icd9p}
{opt sea:rch}
[{cmd:"}]{it:text}[{cmd:"}]
[[{cmd:"}]{it:text}[{cmd:"}] {it:...}]
[{cmd:,}
{opt or}]


{phang}
显示 ICD-9 代码来源

{p 8 16 2}
{cmd:icd9p}
{opt q:uery}


{pstd}
{it:codelist} 为

{p2colset 9 30 32 2}{...}
{p2col :{it:icd9code}}(特定代码){p_end}
{p2col :{it:icd9code}{cmd:*}}(所有以此开头的代码){p_end}
{p2col :{it:icd9code}{cmd:/}{it:icd9code}}(代码范围){p_end}
{p2colreset}{...}

{pstd}
或者以上任意组合，例如 {cmd:50.21 37.7* 88.71/88.79}。
{it:icd9codes} 必须以前导零键入。 例如，键入
{cmd:01}; 键入 {cmd:1} 将导致错误。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > ICD 代码 > ICD-9}


{marker description}{...}
{title:描述}

{pstd}
{cmd:icd9p} 是一组用于处理 ICD-9-CM 程序代码的命令
从第 16 版（自 1998 年 10 月生效）到第 32 版。 要查看
当前版本的 ICD-9-CM 程序代码及所应用的任何更改，请键入 {cmd:icd9p query}。

{pstd}
{cmd:icd9p check}、{cmd:icd9p clean} 和 {cmd:icd9p generate} 是数据
管理命令。 {cmd:icd9p check} 验证变量是否包含
已定义的 ICD-9-CM 程序代码，并提供遇到的任何问题的摘要。
{cmd:icd9p clean} 标准化代码格式。
{cmd:icd9p generate} 可以创建一个二进制指示变量，用于表示
代码是否在指定的代码集合中，一个包含相应
更高级别代码的变量，或一个包含代码描述的变量。

{pstd}
{cmd:icd9p lookup} 和 {cmd:icd9p search} 是交互式工具。
{cmd:icd9p lookup} 显示在命令行指定的代码的描述。
{cmd:icd9p search} 根据命令行提供的关键字查找相关的
ICD-9-CM 程序代码。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D icd9pQuickstart:快速入门}

        {mansection D icd9pRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}选项在以下标题下列出：

        {help icd9p##options_icd9p_check:icd9p check 的选项}
        {help icd9p##options_icd9p_clean:icd9p clean 的选项}
        {help icd9p##options_icd9p_gen:icd9p generate 的选项}
        {help icd9p##options_icd9p_search:icd9p search 的选项}


{marker options_icd9p_check}{...}
{title:icd9p check 的选项}

{phang}
{cmd:any} 告诉 {cmd:icd9p} check 验证代码是否符合
ICD-9-CM 程序代码的格式，但不检查代码是否被定义。

{phang}
{cmd:list} 指定 {cmd:icd9p check} 列出观察编号，
无效或未定义的 ICD-9-CM 程序代码，以及该代码无效的原因或是否为未定义代码。

{phang}
{opth generate(newvar)} 指定 {cmd:icd9p check} 创建一个新变量
包含每个观察值，如果观察值包含已定义的代码
或缺失则为 0。否则，它包含从 1 到 10 的数字。
正数指示问题类型，并对应于 {cmd:icd9p check} 产生的列表。


{marker options_icd9p_clean}{...}
{title:icd9p clean 的选项}

{phang}
{opt dots} 指定最终格式中包括句点。
如果未指定 {opt dots}，则会移除所有句点。

{phang}
{opt pad} 指定 {cmd:icd9p clean} 在代码前后用空格填充，
以使（隐含的）句点在列表中垂直对齐。 指定
{opt pad} 使得生成的代码在与其他大多数
Stata 命令一起使用时看起来更好。


{marker options_icd9p_gen}{...}
{title:icd9p generate 的选项}

{phang}
{opt category}、{opt description} 和 {opt range(codelist)} 指定
{opt icd9p} {opt generate} 要创建的新变量的内容。
在使用 {opt icd9p} {opt generate} 之前，您无需
{opt icd9p} {opt clean} {it:varname}；它将接受任何支持的格式
或格式组合。

{phang2}
{opt category} 创建一个包含 ICD-9-CM 程序
类别代码的新变量。 结果变量可与其他 {cmd:icd9p}
子命令一起使用。 对于程序代码，类别代码是前两个字符。

{phang2}
{opt description} 创建 {newvar}，包含 ICD-9-CM
程序代码的描述。

{phang3}
{opt long} 适用于 {opt description}。 它指定代码
前置于描述代码的文本之前。

{phang3}
{opt end} 修改 {opt long}（指定 {opt end} 意味着 {opt long}）
并将代码放置在字符串的末尾。

{phang2}
{opt range(codelist)} 创建一个新指示变量，当
ICD-9-CM 程序代码在指定范围内时等于 1，
当 ICD-9-CM 程序代码不在范围内时等于 0，
而当 {it:varname} 缺失时则等于缺失。


{marker options_icd9p_search}{...}
{title:icd9p search 的选项}

{phang}
{opt or} 指定在使用 {opt icd9p} {opt search} 时搜索
包含与任何指定单词的描述的 ICD-9-CM 程序代码。 默认情况下
仅列出包含所有指定单词的描述。


{marker examples}{...}
{title:示例}

{pstd}查看自 {cmd:icd9p} 在 Stata 中实施以来对 ICD-9 代码列表所做的更改日志{p_end}
{phang2}{cmd:. icd9p query}{p_end}

{pstd}显示代码 526.4 的描述{p_end}
{phang2}{cmd:. icd9p lookup 526.4}{p_end}

{pstd}查找一系列代码{p_end}
{phang2}{cmd:. icd9p lookup 526/527}{p_end}

{pstd}搜索包含单词 jaw 和 disease 的代码{p_end}
{phang2}{cmd:. icd9p search jaw disease}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nhds2010}{p_end}

{pstd}清理 {cmd:pr1} 程序代码变量并添加句点{p_end}
{phang2}{cmd:. icd9p clean pr1, dots}{p_end}

{pstd}检查 {cmd:pr1} 是否包含有效程序代码（前提是 {cmd:pr1}
不缺失）{p_end}
{phang2}{cmd:. icd9p check pr1 if !missing(pr1)}{p_end}

{pstd}创建变量 {cmd:dp1}，包含 {cmd:pr1} 中代码的描述{p_end}
{phang2}{cmd:. icd9p generate dp1 = pr1, description}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:icd9p} {cmd:check} 将如下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(e}{it:#}{cmd:)}}类型为 {it:#} 的错误数量{p_end}
{synopt:{cmd:r(esum)}}错误总数{p_end}
{p2colreset}{...}

{pstd}
{cmd:icd9p} {cmd:clean} 将如下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}更改数量{p_end}
{p2colreset}{...}

{pstd}
{cmd:icd9p} {cmd:lookup} 将如下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}发现的代码数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <icd9p.sthlp>}