{smcl}
{* *! version 1.1.13  08jun2019}{...}
{viewerdialog "label language" "dialog label_language"}{...}
{vieweralsosee "[D] label language" "mansection D labellanguage"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] label" "help label_zh"}{...}
{vieweralsosee "[D] labelbook" "help labelbook_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{viewerjumpto "Syntax" "label_language_zh##syntax"}{...}
{viewerjumpto "Menu" "label_language_zh##menu"}{...}
{viewerjumpto "Description" "label_language_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "label_language_zh##linkspdf"}{...}
{viewerjumpto "Option" "label_language_zh##option"}{...}
{viewerjumpto "Examples" "label_language_zh##examples"}{...}
{viewerjumpto "Stored results" "label_language_zh##results"}
{help label_language:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[D] label language} {hline 2}}多个语言的变量和数值标签{p_end}
{p2col:}({mansection D labellanguage:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}列出已定义的语言

{p 8 15 2}
{opt la:bel} {opt lang:uage}


{phang}将标签更改为指定的语言名称

{p 8 15 2}
{opt la:bel} {opt lang:uage} {it:languagename}


{phang}以指定的语言名称创建新的标签集

{p 8 15 2}
{opt la:bel} {opt lang:uage} {it:languagename}{cmd:,} {...}
{cmd:new} [{cmd:copy}]


{phang}重命名当前标签集

{p 8 15 2}
{opt la:bel} {opt lang:uage} {it:languagename}{cmd:,} {opt ren:ame}


{phang}删除指定标签集

{p 8 15 2}
{opt la:bel} {opt lang:uage} {it:languagename}{cmd:,} {cmd:delete}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 数据工具 > 标签工具 > 设置标签语言}


{marker description}{...}
{title:描述}

{pstd}
{cmd:label} {cmd:language} 允许您创建和使用包含不同数据集的集，其中包含不同的变量和数值标签。一个数据集可能包含一组英语标签，另一组德语标签，以及一组三个西班牙语标签。一个数据集可以包含多达 100 组标签。

{pstd}
我们将以不同的书写方式来描述不同的标签集，仿佛它们反映不同的口语语言，但您无需以这种方式使用多个集合。您可以创建一个包含一组长标签和另一组短标签的数据集。

{pstd}
在任何时刻，只有一组标签在使用，但一个数据集可以包含多个集合。您可以通过输入

{phang2}. {cmd:label language} {it:languagename}

{pstd}
当其他 Stata 命令生成输出时（例如 {cmd:describe} 和 {cmd:tabulate}），它们使用当前设置的语言。当您通过使用其他 {cmd:label} 命令（见 {manhelp label D}）定义或修改标签时，您修改的是当前集合。

{phang2}
{cmd:label} {cmd:language}（不带参数）{break}
    列出可用的语言以及当前语言的名称。
    当前语言指您在使用例如 {cmd:describe} 或 {cmd:tabulate} 时会看到的标签。可用语言指其他先前创建的标签的名称。例如，您可能当前正在使用 {cmd:en}（英语）中的标签，但 {cmd:de}（德语）和 {cmd:es}（西班牙语）中的标签也可能是可用的。

{phang2}
{cmd:label} {cmd:language} {it:languagename}{break}
     将标签更改为指定语言的标签。例如，如果 {cmd:label} {cmd:language} 显示 {cmd:en}、{cmd:de} 和 {cmd:es} 可用，输入 {cmd:label language de} 将当前语言更改为德语。

{phang2}
{cmd:label} {cmd:language} {it:languagename}{cmd:,} {cmd:new}{break}
     允许您创建一组新的标签并统一命名为 {it:languagename}。您可以根据需要命名该集合，只要名称不超过 24 个字符。如果标签对应于口语语言，我们建议您使用该语言的 ISO 639-1 两个字母代码，例如 {cmd:en} 表示英语，{cmd:de} 表示德语，{cmd:es} 表示西班牙语。有关代码的完整列表，请参见 
     {browse "https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes"}。

{phang2}
{cmd:label} {cmd:language} {it:languagename}{cmd:,} {cmd:rename}{break}
    更改当前正在使用的标签集的名称。如果正在使用的标签集名为 {cmd:default}，而现在想将其更改为 {cmd:en}，则可以输入 {cmd:label} {cmd:language} {cmd:en,} {cmd:rename}。

{pmore2}
    我们选择 {cmd:default} 这个名称并非偶然。
    如果您尚未使用 {cmd:label} {cmd:language} 创建新语言，则数据集将仅有一种语言，名为 {cmd:default}。

{phang2}
{cmd:label} {cmd:language} {it:languagename}{cmd:,} {cmd:delete}{break}
    删除指定的标签集。如果 {it:languagename} 也是当前语言，则其他可用语言之一将成为当前语言。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D labellanguageQuickstart:快速入门}

        {mansection D labellanguageRemarksandexamples:备注和示例}

        {mansection D labellanguageMethodsandformulas:方法和公式}

{pstd}
上述章节不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt copy} 与 {cmd:label language, new} 一起使用，将当前语言中的标签复制到新语言中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse autom}

{pstd}列出已定义的语言{p_end}
{phang2}{cmd:. label language}

{pstd}将标签更改为 {cmd:es}{p_end}
{phang2}{cmd:. label language es}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}将当前标签集重命名为西班牙语{p_end}
{phang2}{cmd:. label language Spanish, rename}


{marker results}{...}
{title:存储结果}

{pstd}
不带参数的 {cmd:label language} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(k)}}已定义的语言数{p_end}


{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(languages)}}语言列表，依次列出{p_end}
{synopt:{cmd:r(language)}}当前语言的名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <label_language.sthlp>}