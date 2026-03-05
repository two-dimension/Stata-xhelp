{smcl}
{* *! version 1.0.3  19oct2017}{...}
{vieweralsosee "[D] unicode encoding" "mansection D unicodeencoding"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "help encodings_zh" "help encodings_zh"}{...}
{vieweralsosee "[D] unicode" "help unicode_zh"}{...}
{vieweralsosee "[D] unicode translate" "help unicode translate"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}
{findalias asfrencodings}
{viewerjumpto "Syntax" "unicode_encoding_zh##syntax"}{...}
{viewerjumpto "Description" "unicode_encoding_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "unicode_encoding_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "unicode_encoding_zh##remarks"}
{help unicode_encoding:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[D] unicode encoding} {hline 2}}Unicode 编码工具{p_end}
{p2col:}({mansection D unicodeencoding:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
列出编码

{p 8 16 2}
{cmd:unicode}
{opt enc:oding}
{cmd:list}
[{it:pattern}]


{phang}
列出编码的所有别名

{p 8 16 2}
{cmd:unicode}
{opt enc:oding}
{cmd:alias}
{it:name}


{phang}
为 {cmd:unicode translate} 设置编码

{p 8 16 2}
{cmd:unicode}
{opt enc:oding}
{cmd:set}
{it:name}


{phang}
{it:pattern} 是以下之一： {cmd:*}, {cmd:_all},
{cmd:*}{it:name}{cmd:*}, {cmd:*}{it:name}, 或 {it:name}{cmd:*}。指定
为空，{cmd:_all}，或 {cmd:*} 列出所有结果。指定
{cmd:*}{it:name}{cmd:*} 列出所有包含 {it:name} 的结果。指定
{cmd:*}{it:name} 列出所有以 {it:name} 结尾的结果。指定
{it:name}{cmd:*} 列出所有以 {it:name} 开头的结果。     


{marker description}{...}
{title:描述}

{pstd}
{cmd:unicode} {cmd:encoding} {cmd:list} 和 {cmd:unicode} {cmd:encoding}
{cmd:alias} 列出在 Stata 中可用的编码。请参见
{help encodings_zh:help encodings} 获取选择编码的建议及最常用编码的列表。 {cmd:unicode} {cmd:encoding} {cmd:list}
提供所有编码及其别名的列表或符合特定标准的编码。 {cmd:unicode} {cmd:encoding} {cmd:alias} 提供可以用来
指代特定编码的替代名称列表。

{pstd}
{cmd:unicode encoding set} 为
{cmd:unicode translate} 命令设置要使用的编码；参见
{manhelp unicode_translate D:unicode translate} 以获取 {cmd:unicode encoding set} 的文档。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D unicodeencodingRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
编码是文本在计算机中存储的方式。它将字符映射到一个非负整数，称为代码点，然后将该整数映射到一个字节或一串字节。常见的编码有 ASCII
（有多种变种）、UTF-8 和 UTF-16。Stata 使用
UTF-8 编码来存储文本，并在 Microsoft Windows 和 macOS 上使用 UTF-16 来编码 GUI。有关编码的更多信息，
请参见 {findalias frencodings}。

{pstd}
您需要指定编码的最常见原因是当
转换数据集、do 文件、ado 文件或其他与 Stata 13 或更早版本一起使用（不支持 Unicode）的文件以用于 Stata {ccl stata_version}。有关帮助，请参见
{manhelp unicode_translate D:unicode translate}，并查阅 {help encodings_zh:help encodings} 以获取选择编码的建议和常见编码的列表。

{pstd}
某些命令和函数要求您指定一个或多个编码。通常您只需使用常见的编码。然而，您可能不知道如何将其指定给 Stata。例如，假设
我们正在使用 {cmd:unicode translate} 将一个包含扩展 ASCII 字符的 Stata 13 的 do 文件转换
以在 Stata {ccl stata_version} 中使用。如果我们在 Windows 机器上工作，最可能的编码是 Windows-1252。如果我们想检查这是否是
在使用 {cmd:unicode translate} 时应指定的方式，我们可以输入

{phang2}
{cmd:. unicode encoding list Windows-1252}

{pstd}
Stata 返回所有编码名称或别名与 {cmd:Windows-1252} 完全匹配的编码。大小写无关紧要。

{pstd}
如果我们想搜索所有编码和别名中包含 {cmd:windows}
的名称，我们可以输入

{phang2}
{cmd:. unicode encoding list *windows*}

{pstd}
并查看一长串匹配结果。

{pstd}
如果有人告诉我们一个文本文件的编码是 {cmd:ibm-913_P100-2000}
而我们想看看该编码还有其他哪些名称（可能因为我们不想在使用
Stata 的需要编码的函数时输入这么长的字符串），我们可以使用

{phang2}
{cmd:. unicode encoding alias ibm-913_P100-2000}

{pstd}
我们会发现有很多同义词，包括一些更易于输入的。

{pstd}
您可能不知道所需的确切编码，并希望浏览所有可用编码的完整列表。要做到这一点，您只需输入
{cmd:unicode encoding list} 而不指定模式。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unicode_encoding.sthlp>}