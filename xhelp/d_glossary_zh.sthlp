{smcl}
{* *! version 1.0.0  03may2019}{...}
{* 也将文本更改应用于 u_glossary 和 p_glossary。}{...}
{vieweralsosee "[D] 词汇表" "mansection D Glossary"}{...}
{viewerjumpto "描述" "d_glossary_zh##description"}{...}
{viewerjumpto "词汇表" "d_glossary_zh##glossary"}
{help d_glossary:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] 词汇表} {hline 2}}术语词汇表{p_end}
{p2col:}({mansection D Glossary:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}这里定义了常用术语。


{marker glossary}{...}
{title:词汇表}

{marker ascii}{...}
{phang}
{bf:ASCII}。ASCII 代表美国标准信息交换码。它是一种在计算机中表示文本及构成文本的字符的方式。它可以分为两个部分：普通的或 {help d_glossary##plainascii:低 ASCII}，其中包括数字、标点符号、没有变音符号的普通字母、空白字符如空格和制表符，以及一些控制字符如回车；以及 {help d_glossary##extascii:扩展 ASCII}，其中包括带有变音符号的字母以及其他特殊字符。

{pmore}
在 Stata 14 之前，数据集、命令文件、ado 文件以及其他 Stata 文件都是以 ASCII 格式 {help d_glossary##encode:编码} 的。

{marker bin0}{...}
{phang}
{bf:二进制 0}。二进制 0，也称为空字符，传统上用于指示字符串的结束，比如 ASCII 或 UTF-8 字符串。

{pmore}
二进制 0 是通过使用 {cmd:char(0)} 获得的，有时显示为 {cmd:\0}。有关更多信息，请参见 {findalias frstrlbin}。

{phang}
{bf:二进制字符串}。
从技术上讲，二进制字符串是指任何不包含文本的字符串。然而，在 Stata 中，只有在字符串包含 {help d_glossary##bin0:二进制 0}，或者包含使用 {helpb fileread()} 函数读取的文件的内容，或者是包含已标记为二进制的字符串的字符串表达式的结果时，字符串才被标记为二进制。

{pmore}
在 Stata 中，{cmd:strL} 变量、字符串标量和 Mata 字符串可以存储二进制字符串。

{pmore}
有关更多信息，请参见 {findalias frstrlbin}。

{marker byte}{...}
{phang}
{bf:字节}。
正式来说，字节是八个二进制数字（比特），这是记录计算机数据的单位。每个字节也可以被视为表示从 0 到 255 的值。不要将此与 Stata 的 {help data_types_zh:字节} 变量存储类型混淆，后者允许从 -127 到 100 的值存储。关于字符串，所有字符串都是由各个字符组成，这些字符是使用一个字节或多个字节 {help d_glossary##encode:编码} 的以表示每个字符。

{pmore}
例如，在 {help d_glossary##utf:UTF-8} 中，即 Stata 使用的编码系统，字节值 97 编码为 "a"。字节值 195 和 161 连续编码 "á"。

{marker characteristics}{...}
{phang}
{bf:特征}。
特征是关于 Stata 数据集以及数据集内每个变量的元数据的一种形式。它们通常用于编程场景。例如，xt 命令需要知道面板变量的名称和可能的时间变量。这些变量名存储在数据集内的特征中。有关概述，请参见 {findalias frchars}，关于技术描述请参见 {manhelp char P}。

{marker code_pages}{...}
{phang}
{bf:代码页}。
代码页将扩展 ASCII 值映射到一组字符，通常用于特定语言或语言集。例如，使用最广泛的代码页是 Windows-1252，它将扩展 ASCII 值映射到西欧语言中使用的字符。代码页本质上是 {help u_glossary##extascii:扩展 ASCII} 字符的编码。

{marker codep}{...}
{phang}
{bf:编码点}。
编码点是代表文本系统（如 ASCII 或 Unicode）中单个字符的数值或位置。原始的 {help d_glossary##ascii:ASCII} 编码系统包含的仅有 128 个编码点，因此只能表示 128 个字符。从历史上看，额外的 128 字节的 {help d_glossary##extascii:扩展 ASCII} 已被编码为许多不同且不一致的方式，以提供额外的 128 个编码点。正式的 Unicode 规范有 1,114,112 个可能的编码点，其中大约 250,000 已分配给实际字符。Stata 使用 {help d_glossary##utf:UTF-8} 编码 Unicode。请注意，编码点的 UTF-8 编码版本与编码点本身的数值不相同。

{marker dispcol}{...}
{phang}
{bf:显示列}。
显示列是 Stata 的结果窗口和查看器中使用的固定宽度显示中显示一个典型字符所需的空间。有些字符的宽度超过一个显示列。每个字符在一个或两个显示列中显示。

{pmore}
所有 {help d_glossary##plainascii:普通 ASCII} 字符（例如，“M”和“9”）以及许多不属于普通 ASCII 的 {help d_glossary##utf:UTF-8} 字符（例如，“é”）在使用固定宽度字体时需要相同的空间。也就是说，它们都需要占用一个显示列。

{pmore}
来自非拉丁字母的字符，例如中文、西里尔字母、日语和韩语，可能需要两个显示列。

{pmore}
有关更多信息，请参见 {findalias frdiunicode}。

{marker displayfmt}{...}
{phang}
{bf:显示格式}。
变量的显示格式指定 Stata 如何显示该变量。对于数值变量，显示格式将指示 Stata 应显示多少位数字，显示多少个小数位，是否包含逗号，以及是否以指数格式显示。数值变量也可以格式化为日期。对于字符串，显示格式指示变量在显示时应左对齐或右对齐，以及显示多少个字符。显示格式可以通过 {help format_zh} 命令指定。显示格式也可以与单独的数值或字符串值一起使用，以控制它们的显示方式。区分显示格式和 {help d_glossary##storagetypes:存储类型}。

{marker encode}{...}
{phang}
{bf:编码}。
编码是以字节或字节序列表示字符的一种方式。编码系统的示例包括 {help d_glossary##ascii:ASCII} 和 {help d_glossary##utf:UTF-8}。Stata 使用 UTF-8 编码。

{pmore}
有关更多信息，请参见 {findalias frencodings}。

{marker extascii}{...}
{phang}
{bf:扩展 ASCII}。
扩展 ASCII，也称为高 ASCII，是字节值 128 至 255，这些值未被定义为原始 {help d_glossary##ascii:ASCII} 规范的一部分。多年来定义了各种 {help d_glossary##code_pages:代码页}，将扩展 ASCII 字节值映射到许多原 ASCII 规范中未支持的字符，例如带有变音符号的拉丁字母，例如 "á" 和 "Á"；非拉丁字母，例如中文、西里尔字母、日语和韩语；在非英语语言中使用的标点符号，例如 "<"，复杂数学符号如 "±" 等等。

{pmore}
尽管扩展 ASCII 字符在 ASCII {help d_glossary##encode:编码} 中存储为一个字节，但 UTF-8 以两个到四个字节存储相同的字符。由于每个代码页以不同的方式映射扩展 ASCII 值，扩展 ASCII 字符的另一个显著特征是它们的含义在不同字体和操作系统中可能会有所不同。

INCLUDE help glossary_frames

{marker hexadecimal}{...}
{phang}
{bf:十六进制}。十六进制数系统，或简单地称为 hex，是一种以 0 到 9 和 A 到 F 字母表示的基于 16 的数系统。

{phang}
{bf:高 ASCII}。
见 {help d_glossary##extascii:{it:扩展 ASCII}}。

{marker locale}{...}
{phang}
{bf:语言环境}。
语言环境是一个代码，用于标识一个社区，其对于语言书写的某些规则有所规定。语言环境可以指一整个语言（例如，“en”代表英语），或指特定国家的某种语言（例如，“en_HK”代表香港的英语）。

{pmore}
语言环境指定了一套规定，用于管理语言的书写方式。Stata 使用语言环境来确定如何执行某些特定于语言的操作。有关更多信息，请参见 {findalias frlocales}。

{marker longwideformat}{...}
{phang}
{bf:长格式和宽格式}。可以把数据集视为具有一个 ID 变量 i 和一个变量 j，其值表示子观察。例如，某人可能是 i 变量，而某一年可能是 j 变量，因此您拥有有关一组人在几个年份的信息。如果这些信息的组织方式是明确指定 j 变量，则数据为长格式；否则，它们是宽格式。例如，

{cmd}         id    year   income
               1    1980    10000
               1    1981    12000
               1    1982    11000
               2    1980    15000
               2    1981    14000
               2    1982    17000{txt}

{pmore}
这些数据是长格式，因为 j 变量 {cmd:year} 被明确指定。以下数据为宽格式：

{cmd}         id  income1980   income1981   income1982
               1       10000       12000         11000
               2       15000       14000         17000{txt}

{pmore}
有关如何在长格式和宽格式之间转换，请参见 {manhelp reshape D}。

{phang}
{bf:低 ASCII}。
见 {help d_glossary##plainascii:{it:普通 ASCII}}。

{phang}
{bf:空终止符}。
见 {help d_glossary##bin0:{it:二进制 0}}。

{marker numlist}{...}
{phang}
{bf:数字列表}。
数字列表是数字的一个列表。该列表可以是一个或多个任意数字，也可以使用某些简写表示范围，例如 {cmd:5/9} 表示整数 5、6、7、8 和 9。范围可以是升序或降序，并且可以包含可选的增量或减量，例如 {cmd:10.5(-2)4.5} 表示 10.5、8.5、6.5 和 4.5。有关表示范围的简写列表，请参见 {findalias frnumlist}。

{marker plainascii}{...}
{phang}
{bf:普通 ASCII}。
我们将普通 ASCII 用作一个非技术术语，以指代计算机程序员所称的低 ASCII。这些字符为普通拉丁字母 "a" 到 "z" 和 "A" 到 "Z"；数字 "0" 到 "9"；许多标点符号，例如 "!"；简单的数学符号，例如 "+"；以及空白字符和控制字符例如空格（" "）、制表符和回车符。

{pmore}
每个普通 ASCII 字符存储为一个值在 0 到 127 之间的单字节。另一个显著特征是，用于 {help d_glossary##encode:编码} 普通 ASCII 字符的字节值在不同的操作系统中是相同的，并且在 ASCII 和 {help d_glossary##utf:UTF-8} 之间是通用的。

{pmore}
另见 {help d_glossary##ascii:{it:ASCII}} 和 {help d_glossary##encode:{it:编码}}。

{marker prefixcmd}{...}
{phang}
{bf:前缀命令}。前缀命令是 Stata 中一个以其他 Stata 命令为前缀的命令。例如，{cmd:by} {it:varlist}{cmd::}。命令 {cmd:by} {cmd:region:} {cmd:summarize} {cmd:marriage_rate} {cmd:divorce_rate} 会分别汇总 {cmd:marriage_rate} 和 {cmd:divorce_rate}。请参见 {findalias frprefix}。

{marker storagetypes}{...}
{phang}
{bf:存储类型}。存储类型是 Stata 存储变量的方式。Stata 中的数值存储类型包括 {cmd:byte}、{cmd:int}、{cmd:long}、{cmd:float} 和 {cmd:double}。还有一个 {cmd:string} 存储类型。创建变量时，在变量名称之前指定存储类型。请参见 {findalias frnumtypes}、{findalias frstr} 和 {helpb data types:[D] 数据类型}。区分存储类型和 {help d_glossary##displayfmt:显示格式}。

{phang}
{bf:str1}、{bf:str2}、...、{bf:str2045}。
     见 {help d_glossary##strL:{it:strL}}。

{marker strL}{...}
{phang}
{bf:strL}。
    {cmd:strL} 是字符串变量的存储类型。
    字符串存储类型的完整列表为 {cmd:str1}、{cmd:str2}、...、{cmd:str2045} 和 {cmd:strL}。

{pmore}
    {cmd:str1}、{cmd:str2}、...、{cmd:str2045} 是固定长度的存储类型。如果变量 {cmd:mystr} 是 {cmd:str8}，则在每个观察中分配 8 字节存储 {cmd:mystr} 的值。如果有 2,000 个观察，则总共分配 16,000 字节。

{pmore}
    区分存储长度和字符串长度。如果 {cmd:myvar} 是 {cmd:str8}，这并不意味着每个观察中的字符串都长 8 个字符。字符串的最大长度是 8 个字符。单个观察可能具有长度为 0、1、...、8 的字符串。即便如此，每个字符串都需要 8 字节的存储。

{pmore}
    您无需担心存储长度，因为字符串变量会自动提升。如果 {cmd:myvar} 是 {cmd:str8}，而您在第三个观察中将 {cmd:myvar} 的内容更改为 "长于 8"，那么 {cmd:myvar} 会自动变为 {cmd:str13}。

{pmore}
    如果您在第三个观察中将 {cmd:myvar} 的内容更改为一个超过 2,045 个字符的字符串，{cmd:myvar} 将变为 {cmd:strL}。

{pmore}
    {cmd:strL} 变量不一定比 2,045 个字符长；它们可以长于或短于 2,045 个字符。真正的区别在于 {cmd:strL} 变量以变长方式存储。假设 {cmd:myothervar} 是 {cmd:strL}，它的第三个观察包含 "this"。观察消耗的总内存将是 64 + 4 + 1 = 69 字节。这将有 64 字节的跟踪信息、4 字节的内容（有 4 个字符），以及 1 字节用于终止字符串。如果第五个观察包含一个 2,000,000 字符的字符串，则将使用 64 + 2,000,000 + 1 = 2,000,069 字节来存储它。

{pmore}
    {cmd:str1}、{cmd:str2}、...、{cmd:str2045} 和 {cmd:strL} 的另一个不同之处在于 {cmd:str}{it:#} 存储类型只能存储 ASCII 字符串。{cmd:strL} 可以存储 ASCII 或二进制字符串。因此，{cmd:strL} 变量可以包含，例如，Word 文档或 JPEG 图像或其他任何东西。

{pmore}
    {cmd:strL} 发音为 sturl。

{marker titlecase}{...}
{phang}
{bf:标题格式}、{bf:标题格式字符串} 和 {bf:Unicode 标题格式字符串}。
在语法中，标题格式指的是短语中关键词的大小写。在 Stata 中，标题格式指的是 (a) 字符串中每个单词的首字母大写，以及 (b) 非字母字符后每个字母的大写。在字符串中，没有对单词的重要性或非字母字符后字母是否属于同一个单词进行判断。例如，"it's" 的标题格式为 "It'S"。

{pmore}
一个标题格式字符串是经过上述规则处理的任何字符串。例如，如果我们使用 {helpb strproper()} 函数处理书名 {it:禅与摩托车维修艺术}，Stata 将返回标题格式字符串 {cmd:Zen And The Art Of Motorcycle Maintenance}。

{pmore}
Unicode 标题格式字符串是在 Unicode 单词上应用 Unicode 标题格式规则的字符串。这几乎、但不完全等同于对每个 Unicode 单词的首字母大写。像大写一样，标题格式化字母是依赖语言环境的，这意味着同一个字母在不同语言环境中的标题格式形式可能不同。例如，在某些语言环境中，单词开头的大写字母不应具有重音符号，即使单个大写字母本身会带有重音符号。

{pmore}
如果您没有超出普通 ASCII 的字符，并且您的语言环境是英语，则结果没有区别。例如，使用英语 {help d_glossary##locale:语言环境} 语言环境的 {cmd:ustrtitle()} 也将返回标题格式字符串 {cmd:Zen And The Art Of Motorcycle Maintenance}。

{pmore}
使用 {helpb ustrtitle()} 函数应用适合您语言（语言环境）的大小写规则。

{marker unicode}{...}
{phang}
{bf:Unicode}。
Unicode 是一种用于 {help d_glossary##encode:编码} 和处理几乎所有可以设想的任何生存或消亡的语言书写文本的标准。Unicode 指定了一组编码系统，旨在容纳（并且，不像扩展 ASCII，保持字符之间的分离）用于不同语言的字符。Unicode 标准不仅定义了字符和它们的编码，还规定了如何对特定语言（语言环境）中的单词执行各种操作（如大写和排序）的规则。最常见的 Unicode 编码包括 mUTF-8、UTF-16 和 UTF-32。Stata 使用 {help d_glossary##utf:UTF-8}。

{marker unichar}{...}
{phang}
{bf:Unicode 字符}。从技术上讲，Unicode 字符是任何具有 Unicode {help d_glossary##encode:编码} 的字符。口语上，我们使用这个术语来指任何不是 {help d_glossary##plainascii:普通 ASCII} 字符的字符。

{phang}
{bf:Unicode 规范化}。
Unicode 规范化允许我们使用一种共同表示法，因此可以比较看起来相同但可能有多种编码方式的 Unicode 字符串。这在实践中很少出现，但由于在理论上是可能的，Stata 提供了 {helpb ustrnormalize()} 函数，以便在不同规范化形式的同一字符串之间转换。

{pmore}
例如，假设我们希望搜索 "ñ"（西班牙字母上方有波浪符的小写 n）。这个字母可能已使用单个 {help d_glossary##codep:编码点} U+00F1 编码。然而，序列 U+006E（拉丁小写 "n"）后跟 U+0303（波浪符）在 Unicode 中被定义为等同于 U+00F1。这种视觉上的相同被称为典范等价。单一编码点的形式称为典范复合形式，而多个编码点的形式称为典范分解形式。规范化将其中一个字符串修改为相对的典范等价形式，以使底层字节序列匹配。如果我们有以混合形式存在的字符串，我们希望在排序时或搜索字符串或子字符串时使用这种规范化。

{pmore}
另一种 Unicode 规范化形式允许看似略有不同的字符具有相同的意义或解释。例如，在排序或索引时，我们可能希望编码点 U+FB00（排版连字 "f"）与两个拉丁字母 "f" 的序列 {help d_glossary##encode:编码} 等同于 U+0066 U+0066。这被称为兼容等价。

{phang}
{bf:Unicode 标题格式字符串}。见 {help d_glossary##titlecase:{it:标题格式、标题格式字符串和 Unicode 标题格式字符串}}。

{marker utf}{...}
{phang}
{bf:UTF-8}。UTF-8 代表通用字符集 + 转换格式 -- 8 位。它是一种 {help d_glossary##unicode:Unicode} {help d_glossary##encode:编码} 系统，设计用于与 {help d_glossary##ascii:ASCII} 向后兼容，并且 Stata 14 使用了这个编码。

{marker valuelabel}{...}
{phang}
{bf:值标签}。值标签定义数字数据与描述这些数字值所代表的单词之间的映射。因此，变量疾病可能具有一个值标签状态与之关联，将 1 映射为阳性，0 映射为阴性。见 {findalias frvallab}。

{marker varlist}{...}
{phang}
{bf:变量列表}。变量列表是一组遵循某些约定的变量：变量名称可以缩写；可以使用星号表示法作为快捷方式引用一组变量，如 {cmd:income*} 或 {cmd:*1995}，分别指代所有以 {cmd:income} 开头或以 {cmd:1995} 结尾的变量名称；以及可以使用破折号来表示存储在两个列出变量之间的所有变量，例如 {cmd:mpg-weight}。见 {findalias frvarlists}。

{phang}
{bf:宽格式}。见 {help d_glossary##longwideformat:{it:长格式和宽格式}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <d_glossary.sthlp>}