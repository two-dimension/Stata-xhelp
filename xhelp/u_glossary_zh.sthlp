{smcl}
{* *! version 1.0.0  03may2019}{...}
{* 同样将文本更改应用于 p_glossary 和 d_glossary。}{...}
{vieweralsosee "[U] Glossary" "mansection U Glossary"}{...}
{viewerjumpto "描述" "u_glossary_zh##description"}{...}
{viewerjumpto "词汇表" "u_glossary_zh##glossary"}
{help u_glossary:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[U] 词汇表} {hline 2}}术语词汇表{p_end}
{p2col:}({mansection U Glossary:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}常用术语在此定义。


{marker glossary}{...}
{title:词汇表}

{marker ascii}{...}
{phang}
{bf:ASCII}.  ASCII 代表美国标准信息交换代码。它用于在计算机中表示文本及构成文本的字符。它可以分为两个部分：普通的或{help u_glossary##plainascii:低 ASCII}，包括数字、标点符号、没有变音符号的普通字母、空格字符（如空格和制表符），以及一些控制字符（如换行符）；和{help u_glossary##extascii:扩展 ASCII}，包括带变音符号的字母以及其他特殊字符。

{pmore}
在 Stata 14 之前，数据集、do 文件、ado 文件和其他 Stata 文件使用 ASCII 进行{help u_glossary##encode:编码}。

{marker bin0}{...}
{phang}
{bf:binary 0}.  二进制 0，也称为空字符，通常用于表示字符串的结束，例如 ASCII 或 UTF-8 字符串。

{pmore}
二进制 0 是通过使用 {cmd:char(0)} 获得的，有时显示为 {cmd:\0}。有关更多信息，请参见 {findalias frstrlbin}。

{phang}
{bf:binary string}.  二进制字符串，从技术上讲，是指不包含文本的任何字符串。然而，在 Stata 中，只有在字符串包含{help u_glossary##bin0:binary 0}，或者包含通过 {helpb fileread()} 函数读取的文件内容，或者是已标记为二进制的字符串表达式的结果时，才将其标记为二进制。

{pmore}
在 Stata 中，{cmd:strL} 变量、字符串标量和 Mata 字符串可以存储二进制字符串。

{pmore}
有关更多信息，请参见 {findalias frstrlbin}。

{phang}
{bf:BLOB}. BLOB 是数据库术语，表示二进制大对象。在 Stata 中，BLOB 可以存储在 {cmd:strL} 中。因此，{cmd:strL} 可以包含 BLOB，如 Word 文档、JPEG 图像或其他任何东西。请参见 {help u_glossary##strL:{it:strL}}。

{marker byte}{...}
{phang}
{bf:byte}.  从正式上讲，一个字节是八个二进制位（位），用于记录计算机数据。每个字节还可以视为表示从 0 到 255 的值。不要将此与 Stata 的 {help data_types_zh:byte} 变量存储类型混淆，该类型允许存储从 -127 到 100 的值。关于字符串，所有字符串由各个字符组成，这些字符使用一个字节或多个字节进行{help u_glossary##encode:编码}。

{pmore}
例如，在 {help u_glossary##utf:UTF-8} 中，Stata 使用的编码系统，字节值 97 编码为 "a"。字节值 195 和 161 的顺序编码为 "á"。

{marker characteristics}{...}
{phang}
{bf:characteristics}.  特征是有关 Stata 数据集及数据集中每个变量的一种元数据。它们通常用于编程场景。例如，xt 命令需要知道面板变量的名称以及可能的时间变量。这些变量名称存储在数据集中的特征中。有关概述，请参见 {findalias frchars}，有关技术描述，请参见 {manhelp char P}。

{marker code_pages}{...}
{phang}
{bf:code pages}.  代码页将扩展 ASCII 值映射到一组字符，通常用于特定语言或语言集。例如，最常用的代码页是 Windows-1252，它将扩展 ASCII 值映射到用于西欧语言的字符。代码页本质上是{help u_glossary##extascii:扩展 ASCII} 字符的编码。

{marker codep}{...}
{phang}
{bf:code point}.  代码点是表示文本系统（如 ASCII 或 Unicode）中单个字符的数值或位置。原始的 {help u_glossary##ascii:ASCII} 编码系统仅包含 128 个代码点，因此只能表示 128 个字符。历史上，这 128 个额外字节的 {help u_glossary##extascii:扩展 ASCII} 已通过多种不同且不一致的方式编码，以提供另外 128 个代码点。正式的 Unicode 规范有 1,114,112 个可能的代码点，其中大约 250,000 已分配给实际字符。Stata 使用 {help u_glossary##utf:UTF-8} 编码来处理 Unicode。请注意，UTF-8 编码的代码点与代码点本身的数值不同。

{marker disambig}{...}
{phang}
{bf:disambiguation: characters, and bytes, and display columns}.  字符是您想要表示的字母或符号——字母 "a"，标点符号 "."，或中文字形。字节或字节序列是计算机中存储该字符的方式。而显示列是用于在 Stata 的结果窗口和查看器中固定宽度显示每个典型字符所需的空间。有些字符的宽度超过一个显示列的宽度。每个字符在一个或两个显示列中显示。

{pmore}
对于 {help u_glossary##plainascii:普通 ASCII} 字符，字符的数量始终等于字节的数量，并等于显示列的数量。

{pmore}
对于 {help u_glossary##utf:UTF-8} 字符（非普通 ASCII 字符），通常每个字符占用两个字节，但有时也可能占用三个或四个字节，例如对于中文、日文和韩文（CJK）字符。那些不能容纳在一个显示列中的字符（例如 CJK 字符）在两个显示列中显示。

{pmore}
一般来说，{help u_glossary##unichar:Unicode 字符}之间的字符数量和字节数量、字符数量和显示列数量之间的关系更加模糊。所有字符都可以存储在四个或更少的字节中，并在 Stata 中使用两个或更少的显示列显示。

{pmore}
有关如何在代码中处理字符、字节和显示列之间的区别，请参见 {findalias frunicodefuncs} 和 {findalias frdiunicode}。

{marker dispcol}{...}
{phang}
{bf:display column}.  显示列是用于在 Stata 的结果窗口和查看器中固定宽度显示每个典型字符所需的空间。某些字符的宽度超过一个显示列的宽度。每个字符在一个或两个显示列中显示。

{pmore}
所有 {help u_glossary##plainascii:普通 ASCII} 字符（例如，"M" 和 "9"）以及很多非普通 ASCII 的 {help u_glossary##utf:UTF-8} 字符（例如，"é"）在使用固定宽度字体时需要相同的空间。也就是说，它们都需要一个显示列。

{pmore}
来自非拉丁字母表的字符，例如中文、西里尔字母、日文和韩文，可能需要两个显示列。

{pmore}
有关更多信息，请参见 {findalias frdiunicode}。

{marker displayfmt}{...}
{phang}
{bf:display format}.  变量的显示格式指定 Stata 如何显示该变量。对于数值变量，显示格式将指示 Stata 显示多少位数字、显示多少位小数、是否包含逗号，以及是否以指数格式进行显示。数值变量也可以格式化为日期。对于字符串，显示格式指示变量在显示中应左对齐还是右对齐，以及显示多少个字符。显示格式可以通过 {help format_zh} 命令指定。显示格式还可以与单个数值或字符串值结合使用，以控制它们的显示方式。将显示格式与 {help u_glossary##storagetypes:存储类型}区分开。

{marker encode}{...}
{phang}
{bf:encodings}.  编码是一种将字符表示为字节或字节序列的方式。编码系统的示例包括 {help u_glossary##ascii:ASCII} 和 {help u_glossary##utf:UTF-8}。Stata 使用 UTF-8 编码。

{pmore}
有关更多信息，请参见 {findalias frencodings}。

{marker extascii}{...}
{phang}
{bf:extended ASCII}. 扩展 ASCII，也称为高 ASCII，是字节值 128 到 255，这些值并未定义为原始的 {help u_glossary##ascii:ASCII} 规范的一部分。多年来，已定义各种 {help u_glossary##code_pages:代码页}，以将扩展 ASCII 字节值映射到原始 ASCII 规格中不支持的许多字符，例如带变音符号的拉丁字母，如 "á" 和 "Á"；非拉丁字母，如中文、西里尔字母、日文和韩文；用于非英语语言的标点符号，如 "<"，复杂的数学符号如 "±" 等等。

{pmore}
尽管扩展 ASCII 字符在 ASCII {help u_glossary##encode:编码} 中以单个字节存储，UTF-8 将相同的字符存储在两个到四个字节中。因为每个代码页以不同的方式映射扩展 ASCII 值，扩展 ASCII 字符的另一个区别特征是它们在不同字体和操作系统中的含义可能会有所不同。

包含帮助词汇表框架

{phang}
{bf:高 ASCII}.  见 {help u_glossary##extascii:{it:扩展 ASCII}}。

{marker immedcmd}{...}
{phang}
{bf:immediate command}.  立即命令是指从不是存储在内存中的数据中获取数据的命令，而是从作为参数输入的数字获取。立即命令不会干扰内存中的数据。有关概述，请参见 {findalias frimmediate}。

{marker locale}{...}
{phang}
{bf:locale}.  语言环境是一种代码，用于识别某个社区及其语言书写规则。语言环境可以指整个语言（例如，“en”代表英语）或一个特定国家的语言（例如，“en_HK”代表在香港的英语）。

{pmore}
语言环境指定了一系列规则，规范语言应如何书写。Stata 使用语言环境来确定如何执行某些特定于语言的操作。有关更多信息，请参见 {findalias frlocales}。

{phang}
{bf:低 ASCII}.  见 {help u_glossary##plainascii:{it:普通 ASCII}}。

{phang}
{bf:空终止符}.  见 {help u_glossary##bin0:{it:二进制 0}}。

{marker numlist}{...}
{phang}
{bf:numlist}.  数字列表是一个数字的列表。该列表可以是一个或多个任意数字，也可以使用某些简写表示范围，例如使用 {cmd:5/9} 表示整数 5、6、7、8 和 9。范围可以是升序或降序，并且可以包括可选的增量或递减量，例如 {cmd:10.5(-2)4.5} 表示 10.5、8.5、6.5 和 4.5。有关表示范围的简写列表，请参见 {findalias frnumlist}。

{marker option}{...}
{phang}
{bf:option}.  Stata 选项是 Stata 命令的修饰符，指示命令的附加规范。例如，{help summarize_zh} 的 {cmd:detail} 选项要求 Stata 指定附加统计信息。选项总是在 Stata 命令后通过逗号进行指定。请参见 {findalias frsyntaxop}。

{marker plainascii}{...}
{phang}
{bf:plain ASCII}.  我们使用普通 ASCII 作为非技术术语来指代计算机程序员称之为低 ASCII 的内容。这些是普通拉丁字母 "a" 到 "z" 和 "A" 到 "Z"；数字 "0" 到 "9"；许多标点符号，如 "!"；简单的数学符号，如 "+"；以及空格和控制字符，例如空格（" "）、制表符和换行符。

{pmore}
每个普通 ASCII 字符以单个字节存储，其值在 0 到 127 之间。另一个区别特征是，用于 {help u_glossary##encode:编码} 普通 ASCII 字符的字节值在不同操作系统中是相同的，并且在 ASCII 和 {help u_glossary##utf:UTF-8} 之间是通用的。

{pmore}
另请参见 {help u_glossary##ascii:{it:ASCII}} 和 {help u_glossary##encode:{it:编码}}。

{marker prefixcmd}{...}
{phang}
{bf:prefix command}.  前缀命令是在 Stata 中为其他 Stata 命令添加前缀的命令。例如，{cmd:by} {it:varlist}{cmd::}。命令 {cmd:by} {cmd:region:} {cmd:summarize} {cmd:marriage_rate} {cmd:divorce_rate} 将分别为每个地区汇总 {cmd:marriage_rate} 和 {cmd:divorce_rate}。请参见 {findalias frprefix}。

{marker storagetypes}{...}
{phang}
{bf:storage types}.  存储类型是 Stata 存储变量的方式。Stata 中的数值存储类型有 {cmd:byte}、{cmd:int}、{cmd:long}、{cmd:float} 和 {cmd:double}。还有一个 {cmd:string} 存储类型。创建变量时，存储类型在变量名称之前指定。请参见 {findalias frnumtypes}、{findalias frstr} 和 {helpb data types:[D] 数据类型}。将存储类型与 {help u_glossary##displayfmt:显示格式} 区分开。

{phang}
{bf:str1}、{bf:str2}、...、{bf:str2045}.  请参见 {help u_glossary##strL:{it:strL}}。

{marker strL}{...}
{phang}
{bf:strL}.  {cmd:strL} 是字符串变量的一种存储类型。字符串存储类型的完整列表是 {cmd:str1}、{cmd:str2}、...、{cmd:str2045} 和 {cmd:strL}。

{pmore}
{cmd:str1}、{cmd:str2}、...、{cmd:str2045} 是固定长度的存储类型。如果变量 {cmd:mystr} 是 {cmd:str8}，则每个观察值在存储 {cmd:mystr} 的值时分配 8 字节。如果有 2,000 个观察值，则总共分配 16,000 字节。

{pmore}
区分存储长度和字符串长度。如果 {cmd:myvar} 是 {cmd:str8}，并不意味着每个观察值中的字符串长度都是 8 个字符。字符串的最大长度是 8 个字符。单个观察值可以包含长度为 0、1、...、8 的字符串。即便如此，每个字符串仍需 8 字节的存储空间。

{pmore}
您无需担心存储长度，因为字符串变量会自动提升。如果 {cmd:myvar} 是 {cmd:str8}，并且您在第三个观察值中将 {cmd:myvar} 的内容更改为 "Longer than 8"，那么 {cmd:myvar} 将自动变为 {cmd:str13}。

{pmore}
如果您在第三个观察值中将 {cmd:myvar} 的内容更改为长度超过 2,045 字符的字符串，{cmd:myvar} 将变为 {cmd:strL}。

{pmore}
{cmd:strL} 变量不一定比 2,045 字符长；它们可以长于或短于 2,045 字符。真正的区别在于 {cmd:strL} 变量以可变长度存储。假设 {cmd:myothervar} 是 {cmd:strL}，其第三个观察值包含 "this"。该观察值消耗的总内存将为 64 + 4 + 1 = 69 字节。其中，64 字节用于跟踪信息，4 字节用于内容（共 4 个字符），1 字节用于终止字符串。如果第五个观察值包含 2,000,000 个字符的字符串，那么将使用 64 + 2,000,000 + 1 = 2,000,069 字节来存储它。

{pmore}
{cmd:str1}、{cmd:str2}、...、{cmd:str2045} 和 {cmd:strL} 之间的另一个区别是，{cmd:str}{it:#} 存储类型只能存储 ASCII 字符串。{cmd:strL} 可以存储 ASCII 或二进制字符串。因此，{cmd:strL} 变量可以包含例如 Word 文档或 JPEG 图像或其他任何内容。

{pmore}
{cmd:strL} 的发音是 sturl。

{marker titlecase}{...}
{phang}
{bf:titlecase}、{bf:title-cased string} 和 {bf:Unicode title-cased string}.  在语法中，titlecase 指的是短语中关键字的首字母大写。在 Stata 中，titlecase 指的是（a）字符串中每个单词的首字母大写，以及（b）非字母字符后每个字母的首字母大写。对此短语中单词的重要性或在非字母字符后大写的字母是否属于同一单词不做判断。例如，"it's" 的标题格式是 "It'S"。

{pmore}
标题格式字符串是符合上述规则的任何字符串。例如，如果我们使用 {helpb strproper()} 函数处理书名 {it:Zen and the Art of Motorcycle Maintenance}，Stata 将返回标题格式字符串 {cmd:Zen And The Art Of Motorcycle Maintenance}。

{pmore}
Unicode 标题格式字符串是指应用 Unicode 标题格式规则的 Unicode 单词。这几乎，但不完全，类似于将每个 Unicode 单词的首字母大写。与大写形式相似，标题格式字母是区域依赖的，这意味着相同字母在不同区域中可能具有不同的标题格式形式。例如，在某些语言环境中，单词开头的大写字母不应带有重音，即使该大写字母单独存在时会带有重音。

{pmore}
如果您没有超出普通 ASCII 的字符，并且您的语言环境为英语，则结果没有区别。例如，{cmd:ustrtitle()} 在英文 {help u_glossary##locale:语言环境}下，也会返回标题格式字符串 {cmd:Zen And The Art Of Motorcycle Maintenance}。

{pmore}
使用 {helpb ustrtitle()} 函数应用适合您语言（区域）所需的正确大写规则。

{marker unicode}{...}
{phang}
{bf:Unicode}.  Unicode 是一种用于 {help u_glossary##encode:编码} 和处理几乎所有可能的现存或已灭绝语言中书写的文本的标准。Unicode 指定了一组编码系统，旨在保存（并且，与扩展 ASCII 不同，保持分离）用于不同语言的字符。Unicode 标准不仅定义字符及其编码，还定义了关于如何对特定语言（区域）中的单词执行各种操作（如大写和排序）的规则。最常见的 Unicode 编码是 mUTF-8、UTF-16 和 UTF-32。Stata 使用 {help u_glossary##utf:UTF-8}。

{marker unichar}{...}
{phang}
{bf:Unicode character}.  从技术上讲，Unicode 字符是具有 Unicode {help u_glossary##encode:编码} 的任何字符。通俗地说，我们使用该术语指代除 {help u_glossary##plainascii:普通 ASCII} 字符之外的任何字符。

{phang}
{bf:Unicode normalization}.  Unicode 规范化使我们能够使用一种通用表示形式，因此比较看似相同但可能以多种方式编码的 Unicode 字符串。这种情况在实践中很少发生，但因为理论上可能存在，因此 Stata 提供了 {helpb ustrnormalize()} 函数，用于在相同字符串的不同规范化形式之间进行转换。

{pmore}
例如，假设我们希望搜索 "ñ"（西班牙字母中的带波浪符的 n）。该字母可能已被 {help u_glossary##encode:编码} 为单一 {help u_glossary##codep:代码点} U+00F1。然而，序列 U+006E（拉丁小写字母 "n"）后接 U+0303（波浪线）被 Unicode 定义为等同于 U+00F1。这种视觉上的相同被称为规范等价性。单代码点形式被称为规范复合形式，而多个代码点形式被称为规范分解形式。规范化会将一个字符串修改为对方的规范等价形式，以便底层字节序列匹配。如果我们有混合形式的字符串，我们希望在排序或搜索字符串或子字符串时使用这种规范化。

{pmore}
另一种形式的 Unicode 规范化允许看似有些不同的字符具有相同的含义或解释。例如，在排序或索引时，我们可能希望 {help u_glossary##codep:代码点} U+FB00（排版连字 "f"）与作为 U+0066 U+0066 编码的两个拉丁 "f" 字母相匹配。这被称为兼容等价性。

{phang}
{bf:Unicode title-cased string}.  见 {help u_glossary##titlecase:{it:标题格式、标题格式字符串和 Unicode 标题格式字符串}}。

{marker utf}{...}
{phang}
{bf:UTF-8}.  UTF-8 代表通用字符集 + 转换格式——8位。它是一种 {help u_glossary##unicode:Unicode} {help u_glossary##encode:编码} 系统，旨在与 {help u_glossary##ascii:ASCII} 向后兼容，并且被 Stata 14 使用。

{marker valuelabel}{...}
{phang}
{bf:value label}.  值标签定义数字数据与用于描述这些数字值所代表的单词之间的映射。因此，变量 disease 可能与值标签 status 关联，该标签将 1 映射为 positive，将 0 映射为 negative。有关更多信息，请参见 {findalias frvallab}。

{marker varlist}{...}
{phang}
{bf:varlist}.  变量列表是遵循某些约定的变量列表：变量名称可以缩写；星号表示法可用作引用变量组的快捷方式，例如 {cmd:income*} 或 {cmd:*1995}，分别引用所有以 {cmd:income} 开头或以 {cmd:1995} 结尾的变量名称；而破折号可用于指示两个列出的变量之间存储的所有变量，例如 {cmd:mpg-weight}。有关更多信息，请参见 {findalias frvarlists}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <u_glossary.sthlp>}