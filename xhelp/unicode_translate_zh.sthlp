{smcl}
{* *! version 1.0.9  19sep2018}{...}
{vieweralsosee "[D] unicode translate" "mansection D unicodetranslate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] unicode" "help unicode_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}
{findalias asfrunicodeadvice}
{viewerjumpto "Syntax" "unicode_translate_zh##syntax"}{...}
{viewerjumpto "Description" "unicode_translate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "unicode_translate_zh##linkspdf"}{...}
{viewerjumpto "Options" "unicode_translate_zh##options"}{...}
{viewerjumpto "Remarks" "unicode_translate_zh##remarks"}
{help unicode_translate:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[D] unicode translate} {hline 2}}将文件翻译为 Unicode{p_end}
{p2col:}({mansection D unicodetranslate:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
分析待翻译的文件

{p 8 16 2}
{cmd:unicode analyze} {it:{help unicode_translate##filespec:filespec}} 
[, 
{cmdab:re:do} 
{cmd:nodata}]


{pstd}
设置翻译过程中使用的编码

{p 8 16 2}
{cmd:unicode} {cmdab:en:coding} {cmd:set} 
[{cmd:"}]{it:编码}[{cmd:"}]


{pstd}
翻译或重新翻译文件

{p 8 40 2}
{cmd:unicode} {cmdab:tr:anslate}{bind:   }{it:{help unicode_translate##filespec:filespec}} 
[{cmd:,}
{cmd:invalid}[{cmd:(}{cmd:escape}|{cmd:mark}|{cmd:ignore}{cmd:)}]
{cmd:transutf8} 
{cmd:nodata}
]

{p 8 40 2}
{cmd:unicode} {cmdab:retr:anslate} {it:{help unicode_translate##filespec:filespec}} 
[{cmd:,}
{cmd:invalid}[{cmd:(}{cmd:escape}|{cmd:mark}|{cmd:ignore}{cmd:)}]
{cmd:transutf8} 
{cmd:replace}
{cmd:nodata}
]


{pstd}
恢复翻译文件的备份

{p 8 16 2}
{cmd:unicode} {cmd:restore} {it:{help unicode_translate##filespec:filespec}}  
[{cmd:,}
{cmd:replace} ]


{pstd}
删除翻译文件的备份

{p 8 16 2}
{cmd:unicode} {cmd:erasebackups, badidea}


{marker filespec}{...}
{phang}
{it:filespec} 是一个单一文件名或包含 {cmd:*} 和 {cmd:?} 的文件规范
，指定一个或多个文件，例如

{col 30}{cmd:*.dta}
{col 30}{cmd:*.do}
{col 30}{cmd:*.*}
{col 30}{cmd:*}
{col 30}{cmd:myfile.*} 
{col 30}{cmd:year??data.dta} 

{pstd}
{cmd:unicode} 分析和翻译 {cmd:.dta} 文件与文本文件。它
假定后缀为 {cmd:.dta} 的文件包含 Stata 数据集，所有
其他后缀包含文本。
其他后缀包括 
{cmd:.ado}, 
{cmd:.do}, 
{cmd:.mata}, 
{cmd:.txt}, 
{cmd:.csv}, 
{cmd:.sthlp},
{cmd:.class},
{cmd:.dlg}, 
{cmd:.idlg}, 
{cmd:.ihlp}, 
{cmd:.smcl}, 
和 {cmd:.stbcal}。

{pstd}
具有其他后缀的文件将会被忽略。
因此 "*.*" 将会忽略任何 .docx 文件或具有其他后缀的文件。
如果这些文件包含文本，它们可以通过显式指定后缀来分析和翻译，例如 info.README 和 *.README。


{marker description}{...}
{title:描述}

{pstd}
{cmd:unicode} {cmd:translate} 将包含扩展 ASCII 的文件翻译为 Unicode (UTF-8)。

{pstd}
扩展 ASCII 是人们用于获取重音拉丁字符的方式 
例如 "{c a'}" 和 "{c a'g}"，并在 Unicode 出现之前或，
在这个上下文中，Stata 开始支持 Unicode 之前获取其他语言的字符
例如 "Я"、"θ" 和 "わたし"。

        {c TLC}{hline 54}{c TRC}
        {c |} 如果您拥有来自 Stata 13 或更早版本的 do 文件、ado 文件、{cmd:.dta} 文件等， 
        {c |} 并且这些文件          {c |}
        {c |} 包含扩展 ASCII -- 您需要使用            {c |}
        {c |} {cmd:unicode} {cmd:translate} 命令将文件从扩展 ASCII 翻译为 Unicode。 {c |}
        {c BLC}{hline 54}{c BRC}

{pstd} 
{cmd:unicode} {cmd:translate} 命令在您有包含扩展 ASCII 的文本文件时也很有用，您希望将其读入 Stata。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D unicodetranslateRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:redo}
     允许与 {cmd:unicode analyze} 一起使用。 {cmd:unicode analyze}
     记住一次运行到下次运行的结果，以便不会重复
     对已分析且确定不需要翻译的文件的结果。因此 {cmd:unicode} {cmd:analyze} 的输出集中于
     仍需翻译的文件。 {cmd:redo} 指定 {cmd:unicode} {cmd:analyze} 显示所有指定文件的分析。

{phang} 
{cmd:nodata} 
     与 {cmd:unicode} {cmd:analyze}、{cmd:translate} 和 
     {cmd:retranslate} 一起使用。它指定 {cmd:.dta} 文件中 
     的 {cmd:str}{it:#} 和 {cmd:strL} 变量的内容不需要翻译。
     变量的内容将保持不变。
     默认行为是必要时进行翻译。

{pmore}
     如果指定了选项 {cmd:nodata}，则仅分析和可能翻译元数据 --
     变量名、数据集标签、变量标签、值标签和特征。

{pmore}
      此选项提供了两个原因。

{pmore}
     {cmd:nodata} 是为那些不信任自动软件修改其数据集最重要部分的人而包含的，
     数据本身。我们强调对那些用户，{cmd:unicode} 会备份文件，因此翻译后的文件
     很容易恢复到原始状态。

{pmore}
     另一个原因是 {cmd:nodata} 包含在包含字符串变量的数据集中，其中某些变量
     （观察）使用一种编码，其他变量（观察）使用另一种编码。这种数据集
     很少见，称为混合编码数据集。如果数据集 {cmd:result.dta} 是合并
     {cmd:input1.dta} 和 {cmd:input2.dta} 的结果，而 {cmd:input1.dta} 使用 ISO-8859-1 编码其
     字符串变量，而 {cmd:input2.dta} 使用 JIS-X-0208 编码。 这样的数据集很少见，因为如果发生这种情况，您就会在生成 {cmd:result.dta} 时注意到。两个扩展
     ASCII 编码根本不兼容，某一组或另一组字符会显示不正确。

{marker invalid}{...}
{phang}
{cmd:invalid} 和 {cmd:invalid()} 
    被允许与 {cmd:unicode} {cmd:translate} 和 
    {cmd:retranslate} 一起使用。它们指定如何处理无效字符。无效字符不应出现，当它们出现时，这意味着您设置了错误的扩展 ASCII 编码。因此假设您确实设置了正确的 
    编码，但依然出现一个或几个无效字符。
    关于这可能发生的故事是漫长和技术性的，所有这些故事都涉及您玩复杂的字体游戏，或者涉及您使用不再可用的专有扩展 ASCII 编码，因此您正在使用接近实际编码的编码。

{pmore}
    默认情况下，{cmd:unicode} 不会翻译包含
    无效字符的文件。{cmd:unicode} 会警告您，以便您可以指定正确的扩展 ASCII 编码。 

{pmore}
    {cmd:invalid} 指定无效字符将通过转义序列显示。如果字符串包含 "A@B"，其中 @ 表示无效字符，则在翻译后，该字符串可能包含 "A%XCDB"，也就是说，
    %XCD 被替换为 @。通常，无效字符用 {cmd:%X}{it:##} 替换，其中 {it:##}
    是无效字符的十六进制值。这种替换无疑是丑陋的，但它确保不同字符串保持不同，这在使用数据时如果字符串作为标识符是重要的。

{pmore}
    {cmd:invalid(escape)} 是 {cmd:invalid} 的同义词。 

{pmore} 
    {cmd:invalid(mark)} 指定用官方的 Unicode 替代字符替换无效字符。该官方字符在 Unicode 语言中是 {bf:\ufffd}，其外观在不同操作系统下有所不同。在 Windows 上，Unicode 替代字符看起来像一个方块；在 Mac 和 Unix 上，它看起来像六角形中的问号。

{pmore}
    {cmd:invalid(ignore)} 表示无效字符 
    仅被删除。"A@B" 变为 "AB"。 

{phang}
{cmd:transutf8} 
    允许与 {cmd:unicode} {cmd:translate} 和
    {cmd:retranslate} 一起使用。{cmd:transutf8} 指定看起来像 UTF-8 的字符 
    应该根据扩展 ASCII 编码进行翻译。除非 {cmd:unicode} 在您未指定该选项时建议您这样做，否则请勿指定该选项，即便如此，仅在您检查了翻译文件并确认同意后才指定该选项。

{pmore}
    对我们大多数人来说，这个问题出现在两个扩展 ASCII 
    字符相邻时，例如包含 "{c u:}{c ss}" 的德语单词，或包含 "{c a'g}{c o:}" 的法语单词。
    即使扩展 ASCII 字符是相邻的，也不一定足以模拟有效的 UTF-8 字符，但某些
    组合确实会模仿 UTF-8。

{pmore}
    在使用 CJK 扩展 ASCII 编码时，相邻的 UTF-8 字符模仿 UTF-8 字符的可能性实际是很高的。
    CJK 代表中文、日文和韩文。 
   
{pmore}
     无论如何，如果 {cmd:unicode} {cmd:analyze} 报告
     有效的 UTF-8 字符串出现，并且如果文件需要翻译
     因为它不是所有的 ASCII 加 UTF-8，则在翻译文件时您可能需要指定 
     {cmd:transutf8}。
     如果您不确定，请先翻译文件而不指定 
     {cmd:transutf8}，检查结果，必要时再翻译。 

{phang}
{cmd:replace} 
    与翻译无关，并且允许与 {cmd:unicode} {cmd:retranslate} 和 
    {cmd:restore} 一起使用。它与从 {cmd:unicode} {cmd:translate} 
    和 {cmd:retranslate} 创建的备份中恢复原始未翻译文件有关。除非 {cmd:unicode} 建议这样做，否则不应指定选项 {cmd:replace}。  

{pmore}
    {cmd:unicode} 会保存您的原始备份。当您恢复
    原始文件或重新翻译文件（这涉及恢复
    原始文件）时，{cmd:unicode} 检查上次 {cmd:unicode} 翻译它时翻译后的文件是否未发生变化。 
    这样做是因为如果您在翻译后修改了翻译文件，那么这些更改可能对您很重要，而且如果
    {cmd:unicode} 从备份中恢复了原始文件，您将会失去这些更改。{cmd:replace} 指定即使
    已经更改也可以修改先前翻译的文件。

{phang}
{cmd:badidea} 
    与 {cmd:unicode erasebackups} 一起使用，并且是必选项。
    删除原始文件的备份通常是个坏主意。我们
    建议您保留六个月左右。然而，最终，您将想要删除备份。
    您必须指定选项 {cmd:badidea} 以表明您意识到删除备份如果做得太早是个坏主意。


{marker remarks}{...}
{title:备注}

{pstd}
备注按如下标题呈现：

{phang2}{help unicode_translate##about:这是什么内容?}{p_end}
{phang2}{help unicode_translate##need:我需要翻译我的文件吗?}{p_end}
{phang2}{help unicode_translate##process:流程概述}{p_end}
{phang2}{help unicode_translate##encoding:如何确定扩展 ASCII 编码}{p_end}
{phang2}{help unicode_translate##analyze:使用 unicode analyze}{p_end}
{phang2}{help unicode_translate##overview:使用 unicode translate: 概述}{p_end}
{phang2}{help unicode_translate##backups:使用 unicode translate: 备份相关说明}{p_end}
{phang2}{help unicode_translate##output:使用 unicode translate: 输出}{p_end}
{phang2}{help unicode_translate##binary:翻译二进制 strLs}{p_end}


{marker about}{...}
{title:这是什么内容?}

{pstd}
Stata 14 及以上版本使用 UTF-8 一种 Unicode 形式来编码字符串。
Stata 13 及更早版本使用 ASCII。数据集、do 文件、ado 文件、帮助
文件等可能需要翻译以在 Stata {ccl stata_version} 中正确显示。

{pstd}
仅包含纯 ASCII 字符的文件不需要翻译。
纯 ASCII 提供以下字符：

	          拉丁字母:  A - Z, a - z
	                 数字:  0 - 9
                        符号:  ! " # $ % & ' ( ) * + , - . /
				  : ; < = > ? @ [ \ ] ^ _ ` 
                                  {c -(} | {c )-} ~

{pstd}
如果您的 {cmd:.dta} 文件中的变量名、变量标签、值标签和字符串
变量以及您的 do 文件、ado 文件和其他 Stata 文本文件中的行仅包含上述字符，
您无需采取任何行动。

{pstd}
另一方面，如果您的 {cmd:.dta} 文件、do 文件、ado 文件等，
包含带重音的字符，例如

{p 35 35 2}
{c a'} {c e'g} {c o^} {c u:}  {c y'}  ...

{pstd}
或者符号，例如 

{p 35 35 2}
{c L-} {c Y=} ...

{pstd}
或来自其他字母表的字符，例如 

{p 35 35 2} 
знать{break}
こんにちは

{pstd}
那么这些文件确实需要翻译，以确保字符正确显示。

{pstd} 
{cmd:unicode} {cmd:analyze} 将告诉您是否有这样的文件，而 {cmd:unicode} {cmd:translate} 将翻译它们。

{pstd}
您首先使用 {cmd:unicode} {cmd:analyze}。可能最后会发现
没有文件需要翻译，在这种情况下您就完成了。

{pstd} 
如果您确实有需要翻译的文件，您将使用 {cmd:unicode}
{cmd:translate}。{cmd:unicode} {cmd:translate} 会在翻译之前备份您的文件。

{pstd}
如果您确实有需要翻译的文件，{cmd:unicode} {cmd:translate} 将翻译它们。在您可以使用 {cmd:unicode} {cmd:translate} 之前，您必须
设置文件使用的扩展 ASCII 编码。您通过
{cmd:unicode} {cmd:encoding} {cmd:set} 来实现。编码以名称命名，例如
ISO-8859-1、Windows-1252、Big5、ISO-2022-KR 以及大约一千个其他名称。
不过，实际上只有 231 种编码。大部分名称都是别名（同义词）。例如，ISO-8859-1 也被称为 ISO-Latin1、Latin1和其他名称。

{pstd}
有关编码的更多信息，请参见 {help encodings_zh:help encodings}。
某些用户将立即找到适当的编码名称。
其他用户将仅能够缩小选择的范围。
即便如此，所有也并未丢失。{cmd:unicode} {cmd:translate} 可以反复翻译直到您找到
最佳的编码。一旦找到该编码，您可以高概率地认为所有文件均使用相同编码。


{marker need}{...}
{title:我需要翻译我的文件吗?}

{pstd}
{it:我可以忽略这个问题吗?} 

{p 8 8 2}
如果您在问是否可以闭眼忽略这个问题，答案可能是可以，也可能不行。  

{p 8 8 2}
如果您拥有使用扩展
ASCII 的文件，它们将无法在 Stata {ccl stata_version} 中正确显示。我们认为
这会是一个重大问题，但假设这对您不构成担忧。如果
您对变量名使用了扩展 ASCII，您可能会发现难以或无法输入未翻译的名称。这会是一个问题。除此之外，您可能没问题，或者更确切地说，我们想不出任何问题，即使我们已经努力思考过。我们之所以努力，是因为如果我们能够想到问题，我们会去修复它。Stata 的数据管理例程已被修改并认证为与 UTF-8 一起工作。如果它们接收到扩展 ASCII，它们可能会严重混乱所显示的内容，但除此之外，它们应该产生与之前的 Stata 产生的结果等效的结果。

{p 8 8 2}
我们的建议是，为了安全起见，不要忽略这个问题。

{p 8 8 2}
不过，您无需今天分析和翻译所有文件。
有一天，您将 {cmd:use} 一个数据集，当您 {cmd:describe} 或 {cmd:list} 数据时，结果看起来会很奇怪。您会看到不可打印的字符，可能也会自己咕哝一些不可打印的词，但发现了问题后，您就可以使用 {cmd:unicode} {cmd:analyze} 和 {cmd:unicode} {cmd:translate} 来解决它。

{p 8 8 2}
然而，我们建议您今天学习使用 {cmd:unicode} {cmd:translate}。
拿一些您正在处理的文件，确定是否有问题，如果有就修复它们。

{pstd}
{it:我的文件需要翻译吗?} 

{p 8 8 2}
如果您在询问是否有包含扩展 ASCII 的文件，希望自己没有，以下是我们的回答：

{p 8 8 2}
如果您生活和工作在一个讲英语的国家，您可能 
没有包含扩展 ASCII 的文件。 

{p 8 8 2}
如果您生活和工作在一个非英语国家，但您仅限于
单纯的拉丁字母，您可能没有包含扩展 ASCII 的文件。 

{p 8 8 2}
否则，您可能确实有包含扩展 ASCII 的文件。 

{pstd}
{it:我怎么知道该怎么做?} 

{p 8 8 2}
{cmd:unicode analyze} 将告诉您是否有文件 
包含扩展 ASCII。
{cmd:unicode} {cmd:analyze} 可以查看单个文件，也可以查看
目录中的所有文件。如果您确实有包含 
扩展 ASCII 的文件，{cmd:unicode} {cmd:translate} 将修复这些文件。 


{marker process}{...}
{title:流程概述}

{pstd}
您将分析您的文件，并在必要时翻译
它们。您可以通过输入以下内容逐个文件进行此操作：

	. {cmd:unicode analyze myfile.dta}

	. {cmd:unicode encoding set} {it:encoding}

	. {cmd:unicode translate myfile.dta}

{pstd} 
或者，您可以通过输入以下内容一次性处理所有文件：

	. {cmd:unicode analyze *}

	. {cmd:unicode encoding set} {it:encoding}

	. {cmd:unicode translate *}

{pstd} 
令人震惊的是，我们将建议您一次性分析甚至翻译
所有文件是完全安全的！原因如下：

{p 8 12 2}
1.  {cmd:unicode} {cmd:analyze} 默认情况下会忽略非
     Stata 相关的文件。 

{p 8 12 2}
2.  {cmd:unicode} {cmd:analyze} 会读取您的文件并报告
    它们；它不会更改它们。 

{p 8 12 2}
3.  {cmd:unicode} {cmd:analyze} 可能会报告无文件需要翻译。在这种情况下，您就完成了。 

{p 8 12 2} 
4.  如果您确实有需要翻译的文件，在使用
    {cmd:unicode} {cmd:translate} 之前，您必须设置扩展 ASCII
    编码。如何确定编码是下一节的主题。

{p 8 12 2} 
5.  {cmd:unicode} {cmd:translate} 与 {cmd:unicode} {cmd:analyze} 一样，
    默认情况下忽略非 Stata 相关的文件。  
    输入 {cmd:unicode} {cmd:translate} {cmd:*} 是安全的。

{p 8 12 2} 
6.  {cmd:unicode} {cmd:translate} 不会修改不需要 
    翻译的文件。这并不取决于您是否运行了 
    {cmd:unicode} {cmd:analyze}。
    输入 {cmd:unicode} {cmd:translate} {cmd:*} 是安全的。

{p 8 12 2} 
7.   {cmd:unicode} {cmd:translate} 不会修改翻译效果不佳的文件；它会丢弃翻译。 
    输入 {cmd:unicode} {cmd:translate} {cmd:*} 是安全的。

{p 8 12 2}
8.  {cmd:unicode} {cmd:translate} 会备份任何成功翻译的文件的原始版本。随时可以输入

{p 16 16 2}
. {cmd:unicode restore *} 

{p 12 12 2}
    您目录中的文件将恢复到您开始时的状态。
    输入 {cmd:unicode} {cmd:translate} {cmd:*} 是安全的。

{pstd}
在本手册条目的其余部分中，我们可以讨论运行 {cmd:unicode} {cmd:analyze} 和 {cmd:unicode} {cmd:translate} 时可能发生的情况，并提供有关您可以采取的措施的建议。

{pstd}
不过，{cmd:unicode} {cmd:analyze} 和 {cmd:unicode} {cmd:translate} 产生大量输出，特别是当您在一组
文件上运行它们时。该输出是根据您的文件和您的情况量身定制的。该
输出会说明发生了什么，并提供建议。阅读它。


{marker encoding}{...}
{title:如何确定扩展 ASCII 编码}

{pstd} 
我们走得有点超前，因为我们尚未确定
任何文件是否需要翻译。无论是否需要翻译
都可以在不知道扩展 ASCII 编码的情况下判断。

{pstd}
确定编码可能比您希望的更困难。
早期专家在尝试使扩展
ASCII 解决方案工作时，其中最聪明的专家花了很多努力
来隐藏编码，使您不容易了解，他们做得很好。

{pstd}
当您准备输入

	. {cmd:unicode encoding set} {it:encoding}

{pstd} 
请参见 {help encodings_zh:help encodings}。我们有建议。
在此之前，请允许我们预测此过程将如何进行：

{pstd} 
您中的一些人将无法确定文件使用的编码，
但您将能够进行猜测并将选项缩小到几个。
然后，您将进行实验以查看哪个工作最佳。我们说“查看”，因为
这正是您将要做的。您将猜测，您将
翻译，然后您将查看结果。然后，您将使用不同的编码重复此过程。
{cmd:unicode} 命令将使翻译和重新翻译部分变得简单。

{pstd}
许多人将发现仅有的可以用于所有文件的单一编码。一些人将发现一种编码适用于大多数文件，但由于其他文件，您必须使用一两种其他编码。

{pstd}
然后就是混合 UTF-8 和扩展 ASCII 的问题。 这只会影响您中的几个人。

{p 8 12 2} 
1.  {cmd:unicode translate} 在文件是 UTF-8 和
    扩展 ASCII 的混合时会警告您。它警告您是因为 (1) 该文件可能正如它所显示的那样，实际上是编码的混合， 
    或者 (2) 文件完全是扩展 ASCII，少数扩展 ASCII 
    字符串仅在表面上伪装成 UTF-8。 

{p 8 12 2} 
2.  默认情况下，{cmd:unicode} {cmd:translate} 假设文件 
    确实是混合的。它不会翻译 
    UTF-8 字符；仅翻译扩展 ASCII 字符。  

{p 12 12 2}
    {it:技术说明:} 这如何工作。一种看似 UTF-8 的变量标签
    不会被翻译，而包含扩展 ASCII 的另一个
    变量标签即使其中的部分看似 UTF-8 也会被翻译。 {cmd:unicode} {cmd:translate}
    假定每个变量标签遵循单一编码。这同样的逻辑适用于 {cmd:str}{it:#} 和 {cmd:strL} 变量
    数据中。假定该变量在所有观察中使用相同编码。

{p 8 12 2} 
3.  默认假设可能是错误的；文件可能完全是 
    扩展 ASCII。 在 CJK 的情况下，默认假设更可能是
    错误的。您可以通过检查
    翻译后的文件来确定默认假设是否正确。如果其中某些部分看起来像内存垃圾，
    则使用 {cmd:unicode} {cmd:retranslate,} {cmd:transutf8} 重新翻译文件，如果您不喜欢该结果， 
    则可以使用 {cmd:unicode} {cmd:retranslate} 不带 {cmd:transutf8} 
    返回到先前的结果。或者，您可以使用 {cmd:unicode} 
    {cmd:restore} 返回到原始文件并重新开始，
    可能会使用不同的编码。 

{p 12 12 2}
    {it:技术说明:} 使用 
    {cmd:unicode} {cmd:restore} 然后使用 {cmd:unicode} {cmd:translate}
    与使用 {cmd:unicode} {cmd:retranslate} 之间没有区别。 因此，如果您想尝试不同的编码，您可以恢复，设置新的编码，
    然后翻译，也可以设置新的编码和重新翻译。 


{marker analyze}{...}
{title:使用 unicode analyze} 

{pstd}
如果您要检查的文件不在当前 
目录中，请切换到适当的目录：

	    . {cmd:cd} {it:目录路径}

{pstd}
{cmd:unicode analyze} 和本条目中描述的所有其他 {cmd:unicode} 命令
仅查看当前目录中的文件，而不是其他文件。
{cmd:unicode} 甚至不会查看当前目录的子目录。

{pstd} 
分析文件。  

	    . {cmd:unicode analyze myfile.dta}

{pstd} 
{cmd:unicode analyze} 将报告文件是否需要翻译，并提供其他信息。输出看起来像：

	    . {cmd:unicode analyze myfile.dta}

	    文件摘要（开始前）:
	          1   文件已指定 
                  1   文件需检查...

	    文件 {cmd:myfile.dta}（Stata 数据集）
                   {hline 40}
		   文件无需翻译

            文件摘要：
                所有文件正常

{pstd}
或者输出可能如下所示： 

	    . {cmd:unicode analyze myfile.dta}

	    文件摘要（开始前）:
	          1   文件已指定 
                  1   文件需检查...

	    文件 {cmd:myfile.dta}（Stata 数据集）
                  3 个变量名需要翻译
                  2 个变量标签需要翻译 
                  1 个 str# 变量需要翻译 
                   {hline 40}
		   {err:文件需要翻译。} 
                   使用 {cmd:unicode translate} 对该文件进行翻译

            文件摘要：
                1 个文件需要翻译 

{pstd}
如果您现在在文件不需要翻译时重新运行分析，您将看到像这样的内容：

	    . {cmd:unicode analyze myfile.dta}

	    文件摘要（开始前）:
	          1   文件已指定 
                  1   文件在之前的运行中已知为 ASCII
                  0   文件需检查 ...
            （无事可做） 

{pstd} 
如果您想查看详细输出，请输入 
{cmd:unicode} {cmd:analyze} {cmd:myfile.dta,} {cmd:redo}. 

{pstd}
{cmd:unicode} {cmd:analyze} 的主要目的在于将
不需要翻译的文件排除在外。
{cmd:unicode} {cmd:analyze} 不会更改文件；它只是
消除那些不需要进一步处理的文件。

{pstd}
您可以在多个文件上运行 {cmd:unicode} {cmd:analyze}，我们
建议您这样做。

	    . {cmd:unicode analyze *}
	         30   文件已指定 
	          6   文件不属于 Stata 
                  1   文件在之前运行中已知为 ASCII
                  1   文件在之前运行中已知为 UTF-8
                 22   文件需检查

{pstd} 
输出还有更多，但是在我们查看之前，请注意 
{cmd:unicode} {cmd:analyze} 报告有 6 个文件不是 
Stata。 {cmd:unicode} {cmd:analyze} 和 {cmd:unicode} {cmd:translate}
会忽略非 Stata 文件，除非您明确指定它们，例如输入 
{cmd:unicode} {cmd:analyze} {cmd:README} 或 
{cmd:unicode} {cmd:analyze} {cmd:*.README}。

{pstd} 
现在让我们回到剩余的文件输出 
{cmd:unicode} {cmd:analyze} {cmd:*}:

	    文件 {it:filename} ({it:filetype})
                  {it:关于需要翻译的元素的备注}
                  {hline 40}
                  {it:建议} 
 
	    文件 {it:filename} ({it:filetype})
                  {it:关于需要翻译的元素的备注}
                  {hline 40}
                  {it:建议} 

            .
            .

	    文件 {it:filename} ({it:filetype})
                  {it:关于需要翻译的元素的备注}
                  {hline 40}
                  {it:建议} 

            符合 * 的需要翻译的文件：
                  {it:文件列表} 

            文件摘要: 
                  2   个文件被跳过（在之前的运行中已知正常） 
                  8   个文件需要翻译
              

{pstd}
{cmd:unicode} {cmd:analyze} 产生了大量输出。如果您和我们一样，您将想要一份输出日志，可能还希望在
查看器中查看它。现在还不算太晚，请记得指定 {cmd:redo}
选项：

	. {cmd:log using output} 

	. {cmd:unicode analyze *, redo} 
	  {it:(输出省略)}

	. {cmd:log close}

	. {cmd:view output.smcl} 

{pstd} 
如果您真的和我们一样，您将更想要一个可以 
在 Stata 的 Do 文件编辑器中编辑的文件：

	. {cmd:log using output.log} 

	. {cmd:unicode analyze *, redo} 
	  {it:(输出省略)}

	. {cmd:log close}

	. {cmd:doedit output.log}

{pstd}
现在，您可以编辑输出以制作待办事项列表。
我们查看输出并删除我们同意的部分，例如下列内容：

	文件 myfile.do（文本文件） 
                40 行文件
          {hline 60} 
          文件无需翻译。 

{pstd} 
然而，输出中可能隐藏着如下内容： 

	文件 {cmd:german.dta}（Stata 数据集）
          {hline 50} 
          文件无需翻译，除非 ...
          该文件似乎已经是 UTF-8。 有时，需要翻译的文件
          可能看起来像 UTF-8。 请查看这些示例：
              变量名称 "länge"
              变量标签 "Kofferraumvolumen (Kubikfuß)"
              值标签内容 "Ausländisch"
              str# 变量 marke 的内容
          它们看起来还好吗？
          如果没有，该文件需要翻译或使用
          {cmd:transutf8} 选项重新翻译。 输入
              . {cmd:unicode   translate "bill_utf8.dta", transutf8}
              . {cmd:unicode retranslate "bill_utf8.dta", transutf8}

{pstd} 
该文件也被标记为不需翻译，我们根据所提供的证据同意，但是我们可能不同意。假设该文件名为 {cmd:japan.dta}，而示例看起来并不像日文，而是像内存垃圾。我们会想将该文件添加到翻译列表中，并提醒自己在翻译时指定选项 {cmd:transutf8}。

{pstd}
几乎没有任何文件是 {cmd:unicode} {cmd:analyze} 
报告仅为 UTF-8 需要翻译，除非文件很短，此时必须查看以确定该文件是否是 UTF-8。 

{pstd} 
这里有一个不同的示例。根据 {cmd:unicode} 
{cmd:analyze}，该文件需要翻译，但它也包含 UTF-8：

	文件 filter.do（文本文件）
                40 行文件
                33 行 ASCII
                 1 行 UTF-8
                 6 行需要翻译
          {hline 60} 
          文件需要翻译。请在该文件上使用 {cmd:unicode translate}。  
            有三种可能性。 
            (1) 该文件正如它所表现的那样，实际上是扩展 ASCII 和 UTF-8 的混合。使用 {cmd:unicode translate}。
	    (2) UTF-8 行是伪装成 UTF-8 的扩展 ASCII。
	    使用 {cmd:unicode translate, transutf8}。
	    (3) 该文件是带有一些无效字符的 UTF-8。将编码设置为 {cmd:utf8}，然后使用 {cmd:unicode translate, invalid()}。

{pstd}
{cmd:unicode} {cmd:analyze} 认为该文件需要翻译，并对此如何翻译做出推测。请阅读输出。
可能性 (3) 甚至没有出现在我们脑海中。即便如此，即使不查看文件，我们也更倾向于可能性 (2) ，因为只有一行是 UTF-8，而有 6 行已知需要翻译。

{pstd} 
您将了解到，运行 {cmd:unicode} {cmd:analyze} 是可选的。
运行 {cmd:unicode} {cmd:analyze} 的好处在于它提供建议。 

{pstd}
您可以反复分析文件。如果您输入 {cmd:unicode} {cmd:analyze}
而不带 {cmd:redo} 选项，输出将重复出现，但是 {cmd:unicode} {cmd:analyze} 将跳过之前确定为不需要翻译的文件。
输入 {cmd:redo}，您将看到所有文件。

{pstd}
{cmd:unicode} {cmd:analyze} 会记住以前运行的结果。
五年后，{cmd:unicode analyze} 将记住它已检查的文件，并确定不需要翻译，还会知道在过去的五年里文件是否经历了变化，因此需要重新检查。

{pstd}
{cmd:unicode} {cmd:analyze} 通过创建一个名为 bak.stunicode 的目录来记住，从而记录其笔记。
忽略此目录及其子目录。当我们告诉您关于 {cmd:unicode} {cmd:translate} 的信息时，您将了解到 bak.stunicode 也是存储未修改原始文件备份的地方。 现在您知道这一点，您可能会想通过复制文件来从备份中恢复原件。不要这样做，因为这会让 {cmd:unicode} 感到困惑。请使用 {cmd:unicode} {cmd:restore} 来恢复原件。我们会提到这一点。

{pstd} 
{cmd:unicode} {cmd:analyze} 的目的是消除所有没有问题的文件，这样您就可以专注于那些有问题的文件。当您稍后使用 {cmd:unicode} {cmd:translate} 时，它也会跳过不需要翻译的文件。使用 {cmd:unicode} {cmd:analyze} 是可选的，即使您不使用，它也不会翻译不需要的文件；{cmd:unicode}
{cmd:translate} 会在需要时秘密运行 {cmd:unicode} {cmd:analyze}。


{marker overview}{...}
{title:使用 unicode translate: 概述}

{pstd} 
假设我们使用了 {cmd:unicode} {cmd:analyze} 并得知以下文件需要翻译：

	    {cmd:myfile.dta}
	    {cmd:anotherfile.do}

{pstd}
在我们翻译文件之前，必须设置扩展 ASCII
编码。请在翻译文件时参见 {help encodings_zh:help encodings}。

{pstd}
我们先假设我们知道文件的编码是
ISO-8859-1，然后我们将假设我们是错的，并向您展示如何应对这种情况。

{pstd}
步骤 1.  通过输入以下内容告知 {cmd:unicode} 编码：

	    . {cmd:unicode encoding set ISO-8859-1}


{pstd}
步骤 2.  逐个翻译文件，通过输入以下内容：

	    . {cmd:unicode translate myfile.dta} 

	    . {cmd:unicode translate anotherfile.do} 

{pstd} 
或者通过输入以下命令同时翻译两个文件：

	    . {cmd:unicode translate *} 

{pstd} 
指定 {cmd:*} 或 {cmd:*.*} 或 {cmd:*.dta} 或 {cmd:m*.*} 或任何其他文件规范都是完全安全的。
{cmd:unicode} {cmd:translate} 像 {cmd:unicode} {cmd:analyze} 一样忽略无关文件。{cmd:unicode} {cmd:translate} 也会忽略不需要翻译的文件，并忽略已经翻译的文件。{cmd:unicode} {cmd:translate} 不依赖于您之前是否运行 {cmd:unicode} {cmd:analyze}。 

{pstd}
{cmd:unicode} {cmd:translate} 还有另一个好处：它会自动备份所修改的文件。如果在翻译后，您决定
不喜欢翻译，可以通过输入以下命令恢复原始文件：

	    . {cmd:unicode restore myfile.dta}

{pstd} 
您甚至可以输入 

            . {cmd:unicode restore *}
 
{pstd} 
如果您希望恢复所有文件。 

{pstd} 
您无需恢复原件以重新翻译。
请使用 {cmd:unicode} {cmd:retranslate}：

	    . {cmd:unicode retranslate myfile.dta} 

            . {cmd:unicode retranslate *}

{pstd} 
然而，运行 {cmd:unicode} {cmd:retranslate} 的唯一原因是
您希望指定不同的选项或尝试不同的编码：

	    . {cmd:unicode encoding set} {it:some_other_encoding}

	    . {cmd:unicode retranslate *} 

{pstd} 
如果您不喜欢该结果，您仍可以使用 {cmd:unicode}
{cmd:restore}。


{marker backups}{...}
{title:使用 unicode translate: 备份相关说明} 

{pstd}
{cmd:unicode} {cmd:translate} 和 {cmd:retranslate} 在修改文件时会自动创建备份，并且在备份不存在时创建备份。
{cmd:unicode} 会计算并跟踪在原始文件和翻译文件上计算的校验和，因此它知道文件是否在此后的更改中被修改。{cmd:unicode} 已进行了彻底测试。可能出错的事情是什么呢？

{pstd} 
如果您和我们一样，您对文件没有信任。
我们甚至不信任自己。相信我们。在使用 {cmd:unicode} {cmd:translate} 之前，请您自行备份 
以任意形式来确保保留一个完整目录。我们建议将其压缩成文件，至少复制文件到一个新的、不显眼的目录。我们预测您不需要这些副本，但谁也不能百分之百确定。

{pstd}
即使 {cmd:unicode} 完美无瑕，后续备份的有效性仍然取决于 bak.stunicode 子目录没有受到其他进程或您自身的损坏。 我们多次匆忙期间损坏了文件。 

{pstd}
在翻译完文件后，请保留备份一段时间。
最终，将会有一天备份不再需要。 删除您原始文件备份的命令是 

	    . {cmd:unicode erasebackups, badidea}

{pstd} 
您必须指定选项 {cmd:badidea}。将 {cmd:badidea} 看作 {cmd:badideaifdonetoosoon} 的缩写：您指定该选项是表明这不是太早。 


{marker output}{...}
{title:使用 unicode translate: 输出}

{pstd}
{cmd:unicode translate} 的输出看起来与 {cmd:unicode} 
{cmd:analyze} 的输出类似，除了内容不同：

	    . {cmd:unicode translate *}
	         30   文件已指定 
	          6   文件不是 Stata 
                  6   文件在之前的运行中已知为 ASCII
                  4   文件在之前的运行中已知为 UTF-8
                 14   文件需检查

	    文件 {it:filename} ({it:filetype})
                  {it:关于翻译的说明}
                  {hline 40}
                  {it:结果消息} 
 
	    文件 badfile.ado（文本文件） 
                  40 行文件
                  16 行 ASCII 
		   2 行翻译成功 
                  22 行无效字符未翻译
                  {hline 40}
		  {err:文件未翻译，因为它包含无法翻译的}
		  {err:字符;}
                         您需要指定不同的编码，或者，如果您
                         确信您具有正确的编码，请使用
                         {cmd:unicode translate} 搭配 {cmd:invalid()} 选项
            .
            .

	    文件 {it:filename} ({it:filetype})
                  {it:关于翻译的说明}
                  {it:关于需要翻译的元素的说明}
                  {hline 40}
                  {it:结果消息} 

            匹配 * 的仍需翻译的文件：
                  badfile.ado

            文件摘要: 
                 10   个文件被跳过（在之前的运行中已知正常） 
                 13   个文件成功翻译
                 {err: 1   个文件未翻译，因为它们包含}
                      {err:无法翻译字符}
                         您需要指定不同的编码，或者，如果您
                         确信您具有正确的编码，请使用
                         {cmd:unicode translate} 搭配 {cmd:invalid()} 选项

{pstd}
根据输出，仍有一个文件需要翻译。文件怎么可能仍需翻译？ 输出给出了解释。我们有无效字符。输出甚至说明该如何处理。我们应该指定不同的编码 -- 事实证明我们使用了错误的编码 -- 或者我们接受文件中有无效字符，并告诉 {cmd:unicode} {cmd:translate} 如何处理它们。检查 badfile.ado 的详细输出可以帮助我们做决策：

	    文件 badfile.ado（文本文件） 
                  40 行文件
                  16 行 ASCII 
		   2 行翻译成功 
                  22 行无效字符未翻译
                  {hline 40}
		  {err:文件未翻译，因为它包含无法翻译的}
		  {err:字符;}
                      您需要指定不同的编码，或者，如果您
                      确信您具有正确的编码，请使用
                      {cmd:unicode translate} 搭配 {cmd:invalid()} 选项

{pstd}
您可以在 {helpb unicode_translate##invalid:invalid()} 选项下阅读关于
{cmd:invalid()} 的信息，但这看起来像是需要不同编码的情况； 以当前编码翻译的 2 行，22 行未翻译。
如果我们相反看到 22 行翻译成功，而 2 行无效字符未翻译，我们会对需要不同编码的要求不那么肯定。
假设输出是 

	    文件 badfile.ado（文本文件） 
                  40 行文件
                  38 行 ASCII 
                   2 行无效字符未翻译
                  {hline 40}
		  {err:文件未翻译，因为它包含无法翻译的}
		  {err:字符;}
                      您需要指定不同的编码，或者，如果您
                      确信您具有正确的编码，请使用
                      {cmd:unicode translate} 搭配 {cmd:invalid()} 选项

{pstd} 
一个 ado 文件主要是 ASCII 并不会让我们感到惊讶。没有一行可以翻译（根据编码），这一情况则非常显著。
我们需要不同编码。 

{pstd}
我们的绝大多数文件都已翻译。对于成功的翻译，{cmd:.dta} 文件的详细输出可能如下：

            文件 {cmd:trees.dta}（Stata 数据集）
                   9 个变量名正常，ASCII
                   3 个变量名翻译成功
                 所有数据标签正常，ASCII
                   8 个变量标签正常，ASCII
                   4 个变量标签翻译成功
                 所有值标签名正常，ASCII
                 所有值标签内容翻译成功
                 所有特征名正常，ASCII
                 所有特征内容正常，ASCII
                 所有 str# 变量正常，ASCII
                 {hline 50}
                 文件成功翻译

{pstd}
文本文件的详细输出可能如下：

	    文件 runjob.do（文本文件） 
                120 行文件
                101 行 ASCII 
                 19 行翻译成功
                 {hline 50}
                 文件成功翻译

{pstd}
以下是一个成功翻译但输出量大的文件示例：

            文件 {cmd:northwest.dta}（Stata 数据集）
                所有变量名正常，ASCII
                所有数据标签正常，ASCII
                所有变量标签正常，ASCII
                所有值标签名正常，ASCII
                所有值标签内容正常，ASCII
                所有特征名正常，ASCII
                所有特征内容正常，ASCII
                  1 个 strL 变量正常，ASCII
                  1 个 strL 变量包含二进制值
                       这个与 strL 变量 diagnotes 相关。
                       包含二进制值的 strL 变量在任何观察中都不会被翻译。修改
                       二进制值是不适当的。然而，少数情况下，“二进制”值只是在文本或变量在某些观察中包含
                       二进制值而在其他观察中包含非二进制值。您可以使用 {cmd:generate}
                       或 {cmd:replace} 来翻译此类变量；请参见 {help unicode_translate##binary:翻译二进制 strLs}。  
                  1 个 strL 变量翻译成功 
                  2 个 str# 变量正常，ASCII 
                  1 个 str# 变量翻译成功 
                 {hline 50}
                 文件成功翻译

{pstd}
额外的输出涉及未翻译的 strL 变量。 
输出指出该变量是二进制，翻译二进制 strLs 是不适当的，但可能并非如此。 
这是下一节的主题。


{marker binary}{...}
{title:翻译二进制 strLs}

{pstd}
{cmd:unicode} {cmd:translate} 不会翻译二进制 strLs。  
这可能是一个正确的决定。
strLs 有时在 Stata 中用于记录文档、图像和其他
二进制文件，修改二进制文件从来都不是一件好事。 

{pstd}
Stata 根据观察逐个标记 strL 变量为二进制。
至于 {cmd:unicode} {cmd:translate}，如果在其中一个观察中 strL 被标记为二进制，
它会将所有观察视为二进制，并不翻译它们。考虑的原因是变量持有同一种类型的不同实现，如果在一个观察中 strL 是二进制，
那在所有观察中可能真的都是二进制。

{pstd}
也许您在具体应用中有不同的想法，希望翻译变量的非二进制观察或
所有观察。用以下方式来实现。

{pstd}
您使用字符串函数 {cmd:ustrfrom()} 来获得已翻译的字符串。
假设现有的 strL 变量名为 {cmd:myvar}，你可以输入 

	. {cmd:generate strL} {it:newvar} {cmd:= ustrfrom(myvar, "}{it:encoding}{cmd:", }{it:#}{cmd:)}

{pstd}
如同使用 
	{cmd:unicode} {cmd:encoding} {cmd:set} {it:encoding} 一样指定编码。
{it:encoding} 可以是 ISO-8859-1、Windows-1252、Big5、ISO-2022-KR 或任何其他扩展 ASCII 编码。 不管您为 {it:encoding} 指定的字符串是什么，请确保其有效且拼写正确。
测试字符串与 
{cmd:unicode encoding set} 是确保其有效的一种方法。 

{pstd}
{it:#} 可指定为 1、2、3 或 4，并决定如何处理无效
字符。四个值中有三个与 {cmd:unicode} 的 {cmd:invalid()} 选项相对应：

		1  相当于 {cmd:invalid(mark)}
        	2  相当于 {cmd:invalid(ignore)}
		4  相当于 {cmd:invalid(escape)}

{pstd} 
剩下的代码 3 指定该函数如果遇到无效字符则返回 ""。

{pstd}
因此翻译 {cmd:myvar} 的所有值的一个方法是：

	. {cmd:generate strL try = ustrfrom(myvar, "ISO-8859-1", 1)}

	. {cmd:browse newvar}         // 查看结果 

	. {cmd:replace newvar = try}

	. {cmd:drop try}

{pstd}
如果您只想翻译 {cmd:myvar} 的非二进制值，您可以输入：

{p 8 16 2}
. {cmd:gen strL try = ustrfrom(myvar, "ISO-8859-1", 1) if !_strisbinary(myvar)}
{p_end}
{p 8 16 2}
. {cmd:replace try = myvar if _strisbinary(myvar)}
{p_end}

{pstd}
这将使用 Stata 的二进制定义，这一点难以解释。
另一个良好的二进制定义是字符串不包含
二进制 0：

{p 8 16 2}
. {cmd:gen strL try = ustrfrom(myvar, "ISO-8859-1", 1) if !strpos(myvar, char(0))}
{p_end}
{p 8 16 2}
. {cmd:replace try = myvar if strpos(myvar, char(0))}
{p_end}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unicode_translate.sthlp>}