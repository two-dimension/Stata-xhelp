{smcl}
{* *! version 1.3.8  15oct2018}{...}
{viewerdialog search "search_d"}{...}
{vieweralsosee "[R] search" "mansection R search"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help_zh"}{...}
{vieweralsosee "[R] net search" "help net_zh"}{...}
{viewerjumpto "Syntax" "search_zh##syntax"}{...}
{viewerjumpto "Menu" "search_zh##menu"}{...}
{viewerjumpto "Description" "search_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "search_zh##linkspdf"}{...}
{viewerjumpto "Options for search" "search_zh##options"}{...}
{viewerjumpto "Option for set searchdefault" "search_zh##options_searchdefault"}{...}
{viewerjumpto "Examples" "search_zh##examples"}{...}
{viewerjumpto "Advice on using search" "search_zh##advice"}{...}
{viewerjumpto "Looking up error messages" "search_zh##error_msgs"}
{help search:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] search} {hline 2}}搜索 Stata 文档和其他资源{p_end}
{p2col:}({mansection R search:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:search}
{it:word}
[{it:word} {it:...}]
[{cmd:,}
{it:search_options}]

{p 8 11 2}
{cmd:set searchdefault}
{c -(}{opt all}|{opt local}|{opt net}{c )-}
[{cmd:,} {opt perm:anently}]

{synoptset 14}
{synopthdr:search_options}
{synoptline}
{synopt:{opt all}}在本地关键词数据库和
{opt net} 材料中进行搜索；默认值{p_end}
{synopt:{opt local}}仅使用 Stata 的关键词数据库进行搜索{p_end}
{synopt:{opt net}}在通过 Stata 的 {opt net} 命令可用的材料中进行搜索{p_end}

{synopt:{opt a:uthor}}按作者姓名搜索{p_end}
{synopt:{opt ent:ry}}按条目 ID 搜索{p_end}
{synopt:{opt ex:act}}在本地关键词数据库和
{opt net} 材料中进行搜索；防止按缩写匹配{p_end}
{synopt:{opt faq}}搜索 Stata 网站上发布的常见问题{p_end}
{synopt:{opt h:istorical}}仅搜索具有历史意义的条目{p_end}
{synopt:{opt or}}如果任何在 {opt search} 之后输入的单词与条目相关，则列出该条目{p_end}
{synopt:{opt man:ual}}搜索 Stata 文档中的条目{p_end}
{synopt:{opt sj}}搜索 Stata Journal 和 STB 中的条目{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:帮助 > 搜索...} 


{marker description}{...}
{title:描述}

{pstd}
{opt search} 在关键词数据库和互联网中搜索与您的查询相关的 Stata 材料。

{pstd}
在 {opt search} 之后的单词的大写字母不影响搜索结果，包括或排除诸如逗号和连字符等特殊字符都不影响搜索。

{pstd}
{opt set searchdefault} 影响 {opt search} 命令的默认行为。 {opt all} 是默认值。

{pstd}
{opt search, all} 是跨所有来源搜索信息的最佳方式，包括系统帮助、Stata 网站上的常见问题、{bf:Stata Journal} 和所有与 Stata 相关的互联网来源，包括社区贡献的附加内容。通过结果，您可以单击访问源或安装附加内容。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R searchQuickstart:快速入门}

        {mansection R searchRemarksandexamples:备注和示例}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:搜索选项}

{phang}
{opt all}，默认值（除非通过 {opt set searchdefault} 更改），指定在本地关键词数据库和 {opt net} 材料之间进行搜索。
使用 {opt all} 和不带其他选项执行的搜索结果将在 {help view_zh:Viewer} 中显示。

{phang}
{opt local} 指定仅使用 Stata 的关键词数据库进行搜索。 使用 {opt local} 和不带其他选项执行的搜索结果将在 {help view_zh:Viewer} 中显示。

{phang}
{opt net} 指定在通过 Stata 的 {opt net} 命令可用的材料中进行搜索。 使用
{opt search} {it:word} [{it:word} {it:...}]{opt , net} 相当于输入
{opt net search} {it:word} [{it:word} {it:...}]（不带选项）；请参见 
{manhelp net R}。 使用 {opt net} 和不带其他选项执行的搜索结果将在 {help view_zh:Viewer} 中显示。

{phang}
{opt author} 指定根据作者姓名进行搜索，而不是关键词。 使用 {opt author} 选项的搜索仅在本地关键词数据库中执行，并将结果显示在结果窗口中。

{phang}
{opt entry} 指定根据条目 ID 进行搜索，而不是关键词。 使用 {opt entry} 选项的搜索仅在本地关键词数据库中执行，并将结果显示在结果窗口中。

{phang}
{opt exact} 防止按缩写匹配。 使用 {opt exact} 选项的搜索在本地关键词数据库和 {opt net} 材料中执行，并将在结果窗口中显示结果。

{phang}
{opt faq} 将搜索限制为发布在 Stata 网站上的常见问题：{browse "https://www.stata.com"}。 使用 {opt faq} 选项的搜索仅在本地关键词数据库中执行，并将在结果窗口中显示结果。

{phang}
{opt historical} 将仅搜索具有历史意义的条目。 默认情况下，这些条目不会列出。如果过去的条目讨论了后来成为 Stata 官方部分的功能，则将其归类为历史条目。 历史条目的更新将始终找到，即使未指定 {opt historical} 选项。 使用 {opt historical} 选项的搜索仅在本地关键词数据库中执行，并将结果显示在结果窗口中。

{phang}
{opt or} 指定如果在 {opt search} 之后输入的任何单词与条目相关，则列出该条目。 默认值是仅在所有指定的单词与条目相关时列出该条目。 使用 {opt or} 选项的搜索仅在本地关键词数据库中执行，并将在结果窗口中显示结果。

{phang}
{opt manual} 将搜索限制为 Stata 文档中的条目；也就是说，搜索被限制为 {it:User's Guide} 和所有参考手册。 使用 {opt manual} 选项的搜索仅在本地关键词数据库中执行，并将在结果窗口中显示结果。

{phang}
{opt sj} 将搜索限制为 {it:Stata Journal} 及其前身 {it:Stata Technical Bulletin} 中的条目；请参见 {manhelp sj R}。 使用 {opt sj} 选项的搜索仅在本地关键词数据库中执行，并将在结果窗口中显示结果。


{marker options_searchdefault}{...}
{title:set searchdefault 选项}

{phang}
{opt permanently} 指定除了立即进行更改外，还将记住 {opt searchdefault} 设置，并在您调用 Stata 时成为默认设置。


{marker examples}{...}
{title:示例}

{phang}{cmd:. search kolmogorov-smirnov equality of distribution test}{p_end}
{phang}{cmd:. search normal distribution}{p_end}
{phang}{cmd:. search linear regression}{p_end}
{phang}{cmd:. search regression}{p_end}
{phang}{cmd:. search [R], entry}{p_end}
{phang}{cmd:. search STB-16, entry historical}{p_end}
{phang}{cmd:. search Salgado-Ugarte, author}


{marker advice}{...}
{title:使用搜索的建议}

{pstd}
请参见 {help searchadvice_zh} 以获取详细信息。


{marker error_msgs}{...}
{title:查找错误信息}

{pstd}
除了作为索引外，{cmd:search} 还知道 Stata 的返回码，并且可以提供比生成错误的命令更长的解释。例如，假设您使用 {cmd:test}，

	{cmd:. test} {it:...}
	{err:not possible with test}
	{search r(131):r(131);}

{pstd}
131 称为返回码。 要获得有关 131 的更多信息，请输入

	{cmd:. search rc 131}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <search.sthlp>}