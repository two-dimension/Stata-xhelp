{smcl}
{* *! version 1.0.0  25mar2015}{...}
{vieweralsosee "[U] 12.4.2.3 编码" "mansection U 12.4.2.3Encodings"}{...}
{vieweralsosee "[D] unicode 编码" "mansection D unicodeencoding"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] unicode" "help unicode_zh"}{...}
{vieweralsosee "[D] unicode translate" "help unicode translate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 12.4.2 处理 Unicode 字符串" "mansection U 12.4.2HandlingUnicodestrings"}{...}
{viewerjumpto "描述" "encodings_zh##description"}{...}
{viewerjumpto "编码" "encodings_zh##encodings"}
{help encodings:English Version}
{hline}{...}
{title:标题}

{pstd}
关于选择编码的建议
{p_end}


{marker description}{...}
{title:描述}

{pstd}
您在这里是因为您需要选择记录您的扩展 ASCII 数据的编码。

{pstd}
选择正确的编码可能会让人感到困惑。大约有 230 种编码和超过 1,000 个别名。我们有建议。

{pstd}
如果您有常用的拉丁字母字符，那么它们可能是 {cmd:ISO-8859-1}，也称为 {cmd:Latin1}，或者是 {cmd:Windows-1252}。{cmd:Windows-1252} 与 {cmd:ISO-8859-1} 几乎相同。如果您的数据来自 Windows 计算机，它们可能是 {cmd:Windows-1252}。如果它们来自互联网，则它们可能是 {cmd:ISO-8859-1}。

{pstd}
如果您有日文扩展 ASCII 字符，它们可能是 {cmd:Shift_JIS} 或 {cmd:Windows-932}，或者（不太可能）是 {cmd:EUC-JP}。

{pstd}
尝试每种编码。查看 Stata 的数据编辑器中的结果；对变量使用 {cmd:describe}、{cmd:codebook} 和 {cmd:tabulate} 来查看您是否对结果满意。如果不满意，请尝试另一种编码。

{pstd}
如果您没有拉丁或日文字符，或者以上编码都无法工作，请选择另一种编码。

{pstd}
有两种搜索方式。第一种是在此帮助文件中。使用查看器的编辑 > 查找功能在此帮助文件中搜索文本。根据您对字符的了解进行搜索。它们是西里尔文字吗？搜索该文件中的“Cyrillic”。它们包含日文吗？搜索“Japan”。使您的搜索简单：搜索“Japan”，而不是“Japanese characters”。

{pstd}
第二种方式是使用 {help unicode_encoding_zh:unicode encoding list} 命令。首先在互联网上搜索关于您数据可能包含的编码的建议。维基百科的 {browse "http://en.wikipedia.org/wiki/Character_encoding#Common_character_encodings":常见字符编码} 列表是一个很好的起点。

{pstd}
假设您的数据包含希腊字符。您发现 {cmd:ISO 8859-7} 和 {cmd:Windows-1253} 是常用于希腊的编码。如何在 Stata 中指定这些编码？使用 {cmd:unicode} {cmd:encoding} {cmd:list} 搜索 Stata 的编码及其别名。指定您希望搜索的编码的最小唯一部分。不要搜索 "{cmd:Windows-1253}"，而是简单地搜索 "{cmd:1253}"：

{p 8 8 2}
{cmd:. unicode encoding list *1253*}

{pstd}
您会发现有两个编码以 "{cmd:windows-1253}" 作为别名。您可以在任何接受编码作为参数的 Stata 函数中使用这两个编码名称或它们的任何别名，也可以与 {help unicode_translate_zh:unicode encoding set} 一起使用。

{pstd}
对 {cmd:ISO 8859-7} 进行类似的搜索：

{p 8 8 2}
{cmd:. unicode encoding list *8859-7*}


{marker encodings}{...}
{title:编码}

INCLUDE help enc_list

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <encodings.sthlp>}