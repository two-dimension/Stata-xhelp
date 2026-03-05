{smcl}
{* *! version 1.0.8  01mar2018}{...}
{vieweralsosee "[D] unicode locale" "mansection D unicodelocale"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] unicode" "help unicode_zh"}{...}
{vieweralsosee "[P] set locale_functions" "help set locale_functions"}{...}
{vieweralsosee "[P] set locale_ui" "help set locale_ui"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}
{findalias asfrlocales}
{viewerjumpto "语法" "unicode_locale_zh##syntax"}{...}
{viewerjumpto "描述" "unicode_locale_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "unicode_locale_zh##linkspdf"}{...}
{viewerjumpto "备注" "unicode_locale_zh##remarks"}
{help unicode_locale:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[D] unicode locale} {hline 2}}Unicode 区域设置工具{p_end}
{p2col:}({mansection D unicodelocale:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
列出区域设置 

{p 8 16 2}
{cmd:unicode}
{opt loc:ale}
{cmd:list}
[{it:pattern}]


{phang}
列出用户界面 (UI) 本地化包 

{p 8 16 2}
{cmd:unicode}
{opt ui:package}
{cmd:list}


{phang}
{it:pattern} 是 {cmd:_all}、{cmd:*}、{cmd:*}{it:name}{cmd:*}、{cmd:*}{it:name} 或 {it:name}{cmd:*} 之一。如果您不指定任何内容，{cmd:_all} 或 {cmd:*}，则将列出所有结果。{cmd:*}{it:name}{cmd:*} 列出所有包含 {it:name} 的结果；{cmd:*}{it:name} 列出所有以 {it:name} 结尾的结果；而 {it:name}{cmd:*} 列出所有以 {it:name} 开头的结果。


{marker description}{...}
{title:描述}

{pstd}
{cmd:unicode locale list} 列出所有可用的区域设置或符合指定条件的区域设置。任何这些区域设置代码可以在接受区域设置作为参数的 Stata 或 Mata 函数中指定，例如 {helpb ustrcompare()} 和 {helpb ustrupper()}，或在 {helpb set locale_functions:set locale_functions} 设置中使用。

{pstd}
{cmd:unicode uipackage list} 列出所有可供图形用户界面 (GUI) 使用的本地化包。列表中的任何区域设置可以在 {helpb set locale_ui:set locale_ui} 设置中指定，以更改在 GUI 元素（如菜单和对话框）中显示的文本语言。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D unicodelocaleRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注根据以下标题展示：

        {help unicode_locale##remarks1:概述}
        {help unicode_locale##remarks2:默认区域设置和区域设置回退}

	
{marker remarks1}{...}
{title:概述}

{pstd}
区域设置标识一个用户社区，其偏好特定的语言书写方式；请参见 {findalias frlocales}。区域设置可以像某种语言一样一般（例如，"en" 表示英语），也可以更具体到某个国家或地区（例如，"en_US" 表示美国英语或 "en_HK" 表示香港英语）。 Stata 使用国际组件 Unicode（ICU）的区域设置格式。有关 ICU 的完整信息，请查看
{browse "http://userguide.icu-project.org/locale"}。请注意，ICU 与 Linux 系统使用的 POSIX 区域设置标识符不同。

{pstd}
区域设置使用标签来定义它们对语言变体的特定程度。
一个 ICU 区域设置可以包含最多五个子标签，顺序为：语言、脚本、国家、变体和关键字。通常情况下，语言是必需的，其他标签是可选的。在大多数情况下，Stata 仅使用语言和国家标签。例如，"en_US" 指定语言为英语，国家为美国。

{pstd}
许多特定于语言的操作需要区域设置来执行其任务。这类操作称为区域设置敏感。例如，在英语中，拉丁小写字母 "i" 的大写字母是拉丁大写字母 "I"。然而，在土耳其语中，大写字母是 "İ"，上面有一个点（Unicode {bf:\u0130}）；因此，字母大小写的映射是区域设置敏感的。

{pstd}
以下函数是区域设置敏感的：{cmd:ustrupper()}、{cmd:ustrlower()}、{cmd:ustrtitle()}、{cmd:ustrword()}、{cmd:ustrwordcount()}、{cmd:ustrcompare()}、{cmd:ustrcompareex()}、{cmd:ustrsortkey()} 和 {cmd:ustrsortkeyex()}。

{pstd}
虽然 Stata 通常仅使用语言和国家标签，但在函数 {cmd:ustrcompare()} 和 {cmd:ustrsortkey()} 中也可以使用排序关键字来影响 Unicode 字符串的排序。排序关键字会影响区域设置的字符串排序顺序。例如，中文中的 "拼音" 和 "笔画" 生成不同的字符串排序顺序。在大多数情况下，无需指定排序关键字；默认的比较器（无论是 Stata 还是该语言）提供了足够的控制。然而，一些程序员可能希望指定特定的值。如果您不知道排序关键字的值，您可以在以下网址以 XML 格式获得有效排序值及其含义：
{browse "http://unicode.org/repos/cldr/trunk/common/bcp47/collation.xml"}。


{marker remarks2}{...}
{title:默认区域设置和区域设置回退}

{pstd}
由于区域设置仅仅是用于定位特定服务资源的标识符，因此不对区域设置进行验证。例如，在调用 {cmd:ustrcompare()} 或上述其他函数时，指定 "klingon" 与指定 "en" 是同样有效的。如果找到了 "klingon" 区域设置的排序数据，则该区域设置会被填充；否则，会开始一个回退搜索过程。

{pstd}
回退过程如下：

{p 8 12 2}1. 如果存在变体，则移除该变体。{p_end}
{p 8 12 2}2. 如果存在国家，则移除该国家。{p_end}
{p 8 12 2}3. 如果存在脚本，则移除该脚本。{p_end}
{p 8 12 2}4. 在默认区域设置上重复步骤 1-3。{p_end}
{p 8 12 2}5. 如果在遵循前述步骤后找不到区域设置，则使用 ICU "Root" 或内置回退区域设置。{p_end}

{pstd}
如果在任何时刻找到所需的信息，过程将停止。ICU 默认区域设置通常是机器上的系统区域设置，您可以更改此设置。请注意，在 macOS 上，ICU 默认区域设置通常是 "en_US_posix"，即使您在操作系统的 "语言" 设置中更改系统区域设置，它也不会更改。要查看 ICU 默认区域设置，您可以输入

{phang2}
{cmd:. display c(locale_icudflt)}

{pstd}
您还可以在 {cmd:Unicode settings} 中找到它，在 {cmd:creturn list} 的输出中和另外两个与区域设置相关的设置一起：{cmd:locale_ui} 和 {cmd:locale_functions}。有关详细信息，请参见 {helpb set locale_ui:set locale_ui} 和
{helpb set locale_functions:set locale_functions}。

{pstd}
{cmd:set locale_functions} 会影响函数 {cmd:ustrupper()}、{cmd:ustrlower()}、{cmd:ustrtitle()}、{cmd:ustrword()}、{cmd:ustrwordcount()}、{cmd:ustrcompare()}、{cmd:ustrcompareex()}、{cmd:ustrsortkey()} 和 {cmd:ustrsortkeyex()}，当未指定区域设置时。如果没有设置 {cmd:locale_functions}，则使用默认的 ICU 区域设置 {cmd:c(locale_icudflt)}。

{pstd}
例如，如果您的操作系统是 Microsoft Windows 英文版本，则系统区域设置很可能为 "en"。如果您在安装操作系统时选择的国家为美国，则为 "en_US"。如果未设置 {cmd:locale_functions} 或将其设置为 {cmd:default}，则 {cmd:ustrupper("istanbul")} 相当于 
{cmd:ustrupper("istanbul", "en_US")}，其返回值为 {bf:ISTANBUL}。

{pstd}
但是，如果将 {cmd:locale_functions} 设置为 {bf:tr}（表示土耳其语），则 {cmd:ustrupper("istanbul")} 相当于 
{cmd:ustrupper("istanbul", "tr")}，返回值为 {bf:İSTANBUL}，大写字母 I 上面带有一个点。尽管 ICU 不验证区域设置，Stata 验证 {cmd:locale_functions} 设置的语言子标签是否为有效的 ISO-639-2 语言代码。 （请参见 ISO-639-2 列表： 
{browse "http://www.loc.gov/standards/iso639-2/"}。）因此，{cmd:set locale_functions klingon} 将产生错误。

{pstd}
按照回退规则，有效区域设置可能与您指定的区域设置非常不同，具体取决于正在执行的操作。目前，使用 ICU 的单词拆分迭代器服务的 {cmd:ustrword()} 和 {cmd:ustrwordcount()}，以及使用 ICU 的排序服务的 {cmd:ustrcompare()}、{cmd:ustrcompareex()}、{cmd:ustrsortkey()} 和 {cmd:ustrsortkeyex()} 受到影响。您可以使用函数 {helpb wordbreaklocale():wordbreaklocale()} 和 {helpb collatorlocale():collatorlocale()} 找到请求的区域设置中有效的区域设置。  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unicode_locale.sthlp>}