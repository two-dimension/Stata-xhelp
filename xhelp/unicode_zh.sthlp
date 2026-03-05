{smcl}
{* *! version 1.0.2  19oct2017}{...}
{vieweralsosee "[D] unicode" "mansection D unicode"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] unicode collator" "help unicode collator"}{...}
{vieweralsosee "[D] unicode convertfile" "help unicode convertfile"}{...}
{vieweralsosee "[D] unicode encoding" "help unicode encoding"}{...}
{vieweralsosee "[D] unicode locale" "help unicode locale"}{...}
{vieweralsosee "[D] unicode translate" "help unicode translate"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}
{vieweralsosee "help encodings_zh" "help encodings_zh"}{...}
{viewerjumpto "Description" "unicode_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "unicode_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "unicode_zh##remarks"}
{help unicode:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] unicode} {hline 2}}Unicode 工具{p_end}
{p2col:}({mansection D unicode:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{p 8 9 9}
{it:[建议: 阅读} {findalias frunicode} {it:第一.}}


{marker description}{...}
{title:描述}

{pstd}
{cmd:unicode} 命令提供工具，帮助您处理数据中的 Unicode 字符串。如果您的数据中仅包含普通的 ASCII 字符（a-z, A-Z, 0-9 及典型的标点符号），那么您可以停止阅读。否则，请继续阅读下面的 {help unicode##remarks:备注}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection D unicodeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
我们建议您首先阅读一些概述性文件。首先，您应该阅读 {findalias frunicode}，它将解释 ASCII 和 Unicode 之间的区别，并提供有关在 Stata 中处理 Unicode 字符串的详细建议。在该部分中，您将学习到有关区域设置、编码、排序以及特定于 Unicode 的字符串函数。有关 Unicode 特定建议的总体概述，请参见 {help unicode_advice_zh:help unicode advice}。

{pstd}
其次，如果您有数据集、do 文件、ado 文件或其他您在 Stata 13 或更早版本中使用的文件，并且这些文件中包含除了普通 ASCII 之外的字符，如带重音符的字符、中文、日文或韩文（CJK）字符、 Cyrillic 字符等，则您应该阅读 {manhelp unicode_translate D:unicode translate}。

{pstd}
{cmd:unicode} 提供以下工具：

{p2colset 8 35 37 2}{...}
{p2col :{manhelp unicode_translate D:unicode translate}}将文件转换为 Unicode{p_end}
{p2col :{manhelp unicode_encoding D:unicode encoding}}Unicode 编码工具{p_end}
{p2col :{manhelp unicode_locale D:unicode locale}}Unicode 区域设置工具{p_end}
{p2col :{manhelp unicode_collator D:unicode collator}}特定语言的 Unicode 排序器{p_end}
{p2col :{manhelp unicode_convertfile D:unicode convertfile}}编码之间的低级文件转换{p_end}
{p2colreset}{...}

{pstd}
如果您在将字符串从扩展 ASCII 转换为 Unicode 时需要选择编码，您可能还会发现 {help encodings_zh:help encodings} 有用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unicode.sthlp>}