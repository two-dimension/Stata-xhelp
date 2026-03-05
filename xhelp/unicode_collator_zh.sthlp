{smcl}
{* *! version 1.0.4  19oct2017}{...}
{vieweralsosee "[D] unicode collator" "mansection D unicodecollator"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] unicode" "help unicode_zh"}{...}
{vieweralsosee "[D] unicode locale" "help unicode locale"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}
{findalias asfrunicodesort}
{viewerjumpto "Syntax" "unicode_collator_zh##syntax"}{...}
{viewerjumpto "Description" "unicode_collator_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "unicode_collator_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "unicode_collator_zh##remarks"}
{help unicode_collator:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[D] unicode collator} {hline 2}}语言特定的 Unicode 排序器{p_end}
{p2col:}({mansection D unicodecollator:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:unicode}
{opt coll:ator}
{cmd:list}
[{it:pattern}]

{phang}
{it:pattern} 为 {cmd:_all}、{cmd:*}、{cmd:*}{it:name}{cmd:*}、{cmd:*}{it:name} 或 {it:name}{cmd:*} 之一。如果您什么都不指定，{cmd:_all} 或 {cmd:*}，则将列出所有结果。{cmd:*}{it:name}{cmd:*} 列出所有包含 {it:name} 的结果；{cmd:*}{it:name} 列出所有以 {it:name} 结尾的结果；而 {it:name}{cmd:*} 列出所有以 {it:name} 开头的结果。  


{marker description}{...}
{title:描述}

{pstd}
{cmd:unicode collator list} 列出具有语言特定排序器的 Unicode 字符串比较函数的区域设置子集：{cmd:ustrcompare()}、{cmd:ustrcompareex()}、{cmd:ustrsortkey()} 和 {cmd:ustrsortkeyex()}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D unicodecollatorRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个部分：

        {help unicode_collator##remarks1:排序概述}
        {help unicode_collator##remarks2:区域设置在排序中的作用}
        {help unicode_collator##remarks3:进一步控制排序}


{marker remarks1}{...}
{title:排序概述}

{pstd}
排序是将 Unicode 字符串进行比较和排序的过程，就像人类可能会逻辑地对其进行排序。我们称这种排序为以语言敏感的方式排序字符串。为此，Stata 使用一种称为 Unicode 排序算法（UCA）的 Unicode 工具。

{pstd} 
要执行语言敏感的字符串排序，您必须将 {helpb ustrsortkey()} 或 {helpb ustrsortkeyex()} 与 {help sort_zh} 结合使用。这是一个复杂的过程，有几个问题需要您注意。有关详细信息，请参见 {findalias frunicodesort}。要执行语言敏感的字符串比较，可以使用 {helpb ustrcompare()} 或 {helpb ustrcompareex()}。

{pstd} 
有关 UCA 的详细信息，请参见 {browse "http://www.unicode.org/reports/tr10/"}。


{marker remarks2}{...}
{title:区域设置在排序中的作用}

{pstd}
在排序过程中，Stata 可以使用默认的排序器，或者可以执行需要知识的语言敏感的字符串比较或排序的区域设置。

{pstd}
区域设置标识一个社区，其对语言书写的某些偏好；请参见 {findalias frlocales}。例如，在英语中，拉丁小写字母“i”的大写字母是拉丁大写字母“I”。但是，在土耳其语中，大写字母是带点的“I”（Unicode {bf:\u0130}）；因此，大小写映射是区域敏感的。

{pstd}
Stata 中的排序涉及区域敏感的函数 {cmd:ustrcompare()}、{cmd:ustrcompareex()}、{cmd:ustrsortkey()} 和 {cmd:ustrsortkeyex()}。如果您在其中一个函数中指定了区域设置，或者如果您在全局设置了区域设置（请参见 {helpb set locale_functions}），则可能使用语言特定的排序器进行排序。

{pstd}
因为区域设置只是一个查找特定服务资源的标识符，所以对区域设置没有验证。例如，调用 {cmd:ustrcompare()} 或本文讨论的其他函数时，指定“klingon”与指定“en”一样有效。如果找到“klingon”区域设置的排序数据，则该区域设置将被填充；否则，将遵循回退规则。有关更多信息，请参见 {help unicode_locale##remarks2:{it:默认区域设置和区域设置回退}} 在 {bf:[D] unicode locale} 中。

{pstd}
Stata 支持数百个区域设置，但只有大约 100 个具有语言特定排序器。{cmd:unicode collator list} 让您确定您的区域设置（或语言）是否有自己的排序器。例如，Stata 支持两种 Zulul 语言的区域设置：{cmd:zu} 是通用区域设置，而 {cmd:zu_ZA} 是特定于南非的祖鲁语。只有 {cmd:zu} 拥有语言特定的排序器。


{marker remarks3}{...}
{title:进一步控制排序}

{pstd}
{cmd:ustrcompare()} 和 {cmd:ustrsort()} 使用区域设置的默认排序算法。然而，您可以在使用 {cmd:ustrcompareex()} 或 {cmd:ustrsortkeyex()} 时对排序算法进行更精细的控制。

{pstd}
一个国际 Unicode 组件（ICU）区域设置可以包含最多五个子标签，顺序为：语言、脚本、国家、变体和关键字。Stata 通常只使用语言和国家标签。然而，排序关键字可以在 {cmd:ustrcompareex()} 和 {cmd:ustrsortkeyex()} 函数中使用。

{pstd}
排序关键字指定区域设置的字符串排序顺序。例如，“拼音”和“笔画”对中文产生不同的字符串排序顺序。在大多数情况下，不需要指定排序关键字；默认的排序器（无论是 Stata 还是该语言的默认排序器）都提供了足够的控制。然而，一些程序员可能希望指定特定的值。如果您不知道排序关键字的值，可以在 {browse "http://unicode.org/repos/cldr/trunk/common/bcp47/collation.xml"} 以 XML 格式获得有效排序值及其含义的列表。

{pstd}
如果您正在比较或排序来自不同数据源的 Unicode 字符串，则可能需要在排序之前先对字符串进行标准化。有关标准化的详细信息，请参见 {helpb ustrnormalize()}，并注意 {helpb ustrcompareex()} 和 {helpb ustrsortkeyex()} 中的 {it:norm} 参数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unicode_collator.sthlp>}