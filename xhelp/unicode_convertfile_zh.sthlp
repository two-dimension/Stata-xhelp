{smcl}
{* *! version 1.0.3  19oct2017}{...}
{vieweralsosee "[D] unicode convertfile" "mansection D unicodeconvertfile"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] unicode" "help unicode_zh"}{...}
{vieweralsosee "[D] unicode translate" "help unicode translate"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}
{findalias asfrunicodeadvice}
{viewerjumpto "Syntax" "unicode_convertfile_zh##syntax"}{...}
{viewerjumpto "Description" "unicode_convertfile_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "unicode_convertfile_zh##linkspdf"}{...}
{viewerjumpto "Options" "unicode_convertfile_zh##options"}{...}
{viewerjumpto "Remarks" "unicode_convertfile_zh##remarks"}{...}
{viewerjumpto "Examples" "unicode_convertfile_zh##examples"}
{help unicode_convertfile:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[D] unicode convertfile} {hline 2}}低级文件编码转换{p_end}
{p2col:}({mansection D unicodeconvertfile:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:unicode}
{opt conv:ertfile}
{it:{help filename_zh:源文件名：srcfilename}}
{it:目标文件名：destfilename}
[{cmd:,} {it:选项}]

{phang}
{it:srcfilename} 是一个要从给定编码转换的文本文件，而 {it:destfilename} 是将使用不同编码的目标文本文件。


{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{cmdab:srcenc:oding}{cmd:(}[{it:{help strings_zh:string}}]{cmd:)}}源文件的编码； 
	如果未指定，则为UTF-8{p_end}
{synopt :{cmdab:dstenc:oding}{cmd:(}[{it:{help strings_zh:string}}]{cmd:)}}目标文件的编码； 
	如果未指定，则为UTF-8{p_end}
{synopt :{cmdab:srccall:back(}{it:{help unicode_convertfile##method:method}}{cmd:)}}如果源文件包含无效字节序列时采取的措施{p_end}
{synopt :{cmdab:dstcall:back(}{it:{help unicode_convertfile##method:method}}{cmd:)}}如果目标编码不支持源文件中的字符时采取的措施{p_end}
{synopt :{opt rep:lace}}如果目标文件存在，则替换它{p_end}
{synoptline}

{marker method}{...}
{synoptset 20}{...}
{synopthdr:方法}
{synoptline}
{synopt :{opt stop}}指定 {cmd:unicode convertfile} 在遇到无效字符时停止并报告错误； 默认行为{p_end}
{synopt :{opt skip}}指定 {cmd:unicode convertfile} 跳过无效字符{p_end}
{synopt :{opt sub:stitute}}指定 {cmd:unicode convertfile} 在转换过程中用目标编码的替代字符替换无效字符；
	对于Unicode编码，替代字符是 {bf:\ufffd}{p_end}
{synopt :{opt esc:ape}}指定 {cmd:unicode convertfile} 用Unicode代码点的十六进制值的转义字符串替换在目标编码中不支持的任何Unicode字符。 对于小于或等于 {bf:\uffff} 的代码点，该字符串采用4位十六进制形式 {bf:\uhhhh}。 对于大于 {bf:\uffff} 的代码点，该字符串采用8位十六进制形式 {bf:\Uhhhhhhhh}。
	{cmd:escape} 只能在从UTF-8等Unicode编码转换时指定。{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:unicode} {cmd:convertfile} 将文本文件从一种编码转换为另一种编码。 这是一个低级实用程序，对于那些使用过Unix命令 {cmd:iconv} 或基于国际组件的Unicode（ICU）的类似命令 {cmd:uconv} 的用户而言，应该会感到熟悉。 如果您需要转换Stata数据集（{cmd:.dta}）或Stata常用的文本文件，如do文件、ado文件、帮助文件和CSV（*{cmd:.csv}）文件，您应该使用 {cmd:unicode} {cmd:translate} 命令；请参见 {manhelp unicode_translate D:unicode translate}。 如果您希望转换数据集中单个字符串或字符串变量，请使用 {helpb ustrfrom()} 和 {helpb ustrto()} 函数。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D unicodeconvertfileRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:srcencoding}{cmd:(}[{it:{help strings_zh:string}}]{cmd:)}
指定源文件编码。请参见 {help encodings_zh:help encodings}，以获取常见编码的列表及选择编码的建议。

{phang}
{cmd:dstencoding}{cmd:(}[{it:{help strings_zh:string}}]{cmd:)}
指定目标文件编码。请参见 {help encodings_zh:help encodings}，以获取常见编码的列表及选择编码的建议。

{phang}
{cmd:srccallback(}{it:{help unicode_convertfile##method:method}}{cmd:)}
指定源文件中无法转换字符的处理方法。

{phang}
{cmd:dstcallback(}{it:{help unicode_convertfile##method:method}}{cmd:)}
指定不支持的目标编码字符的处理方法。

{phang}
{opt replace} 允许 {cmd:unicode convertfile} 覆盖现有目标文件。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

        {help unicode_convertfile##remarks1:编码之间的转换}
        {help unicode_convertfile##remarks2:无效和不支持的字符}


{marker remarks1}{...}
{title:编码之间的转换}

{pstd}
{cmd:unicode convertfile} 是一个可以将字符串从一种编码转换为另一种编码的实用程序。 编码是文本在计算机中存储的方式。它将字符映射到非负整数（称为代码点），然后将该整数映射到一个字节或一系列字节。 常见编码包括ASCII、UTF-8和UTF-16。 Stata使用UTF-8编码来存储文本。除非另有说明，Stata中的“Unicode字符串”和“Unicode字符”指的是UTF-8编码的Unicode字符串或字符。有关编码的更多信息，请参见 {findalias frencodings}。请参见 {help encodings_zh:help encodings}，以获取常见编码的列表，并查看 {manhelp unicode_encoding D:unicode encoding}，以查找所有可用编码的工具。

{pstd}
如果您使用 {cmd:unicode} {cmd:convertfile} 将文件转换为UTF-8格式，Stata使用的字符串编码，您只需指定源文件的编码。默认情况下，目标文件的编码选择为UTF-8。您还可以使用 {cmd:unicode} {cmd:convertfile} 将文件从UTF-8编码转换为另一种编码。虽然转到或从UTF-8的转换是最常见的用法，但您可以使用 {cmd:unicode} {cmd:convertfile} 在任何一对编码之间转换文件。

{pstd}
请注意，某些字符可能不会在编码之间共享。下一部分将解释有关处理不支持字符的选项。


{marker remarks2}{...}
{title:无效和不支持的字符}
 
{pstd}
不支持的字符通常以两种方式发生：源编码中用于编码字符的字节在目标编码（例如UTF-8）中无效（称为无效序列）；或者源编码中的字符在目标编码中不存在。

{pstd}
在从像UTF-8这样的Unicode编码转换为其他某种编码时，常常会遇到无法转换的字符。 UTF-8支持超过100,000个字符。根据您文件中的字符和您选择的目标编码，所有字符可能无法得到支持。 例如，ASCII仅支持128个字符，因此所有代码点大于127的Unicode字符在ASCII编码中都不受支持。


{marker examples}{...}
{title:示例}

{pstd}将文件从Latin1编码转换为UTF-8编码{p_end}
{phang2}{cmd:. unicode convertfile data.csv data_utf8.csv, srcencoding(ISO-8859-1)}

{pstd}将文件从UTF-32编码转换为UTF-16编码，跳过源文件中的任何无效序列{p_end}
{phang2}{cmd:. unicode convertfile utf32file.txt utf16file.txt, srcencoding(UTF-32) dstencoding(UTF-16) srccallback(skip)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unicode_convertfile.sthlp>}