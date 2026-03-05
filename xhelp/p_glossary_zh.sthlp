{smcl}
{* *! version 1.0.3  12jun2019}{...}
{* 同样应用文本更改到 u_glossary 和 d_glossary。}{...}
{vieweralsosee "[P] 词汇表" "mansection P Glossary"}{...}
{viewerjumpto "描述" "p_glossary_zh##description"}{...}
{viewerjumpto "词汇表" "p_glossary_zh##glossary"}
{help p_glossary:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] 词汇表} {hline 2}}术语词汇表{p_end}
{p2col:}({mansection P Glossary:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}此处定义了常用术语。


{marker glossary}{...}
{title:词汇表}

{marker ascii}{...}
{phang}
{bf:ASCII}.  ASCII 代表美国标准信息交换编码（American Standard Code for Information Interchange）。这是一种在计算机中表示文本及其所包含字符的方式。它可以分为两个部分：普通 ASCII，或称为 {help p_glossary##plainascii:低级 ASCII}，其中包括数字、标点符号、没有变音符号的简单字母、空白字符（如空格和制表符）以及一些控制字符（如回车符）；和 {help p_glossary##extascii:扩展 ASCII}，其中包括带有变音符号的字母以及其他特殊字符。

{pmore}
在 Stata 14 之前，数据集、do 文件、ado 文件和其他 Stata 文件使用 ASCII 进行 {help p_glossary##encode:编码}。

{marker automation}{...}
{phang}
{bf:自动化}.  自动化，前称 OLE 自动化，是 Microsoft Windows 应用程序之间的一种通信机制，提供了一种基础设施，使 Windows 应用程序能够访问和操作在另一个应用程序中实现的功能和属性。在 Stata 中，自动化对象使用户能够直接访问 Stata 宏、标量、存储结果和数据集信息，除了通常的日志文件外，还可以以其他方式进行访问。

{marker bin0}{...}
{phang}
{bf:二进制 0}.  二进制 0，也称为空字符，通常用于指示字符串的结束，例如 ASCII 或 UTF-8 字符串。

{pmore}
二进制 0 通过使用 {cmd:char(0)} 获得，有时显示为 {cmd:\0}。有关更多信息，请参见 {findalias frstrlbin}。

{marker byte}{...}
{phang}
{bf:字节}。
正式来说，字节由八个二进制位（bits）组成，是记录计算机数据时使用的基本单位。每个字节也可以被认为表示从 0 到 255 的值。请勿将其与 Stata 的 {help data_types_zh:byte} 变量存储类型混淆，该类型允许值在 -127 到 100 之间存储。关于字符串，所有字符串都是由个别字符组成，这些字符使用一个或多个字节进行 {help p_glossary##encode:编码}。

{pmore}
例如，在 Stata 使用的 {help p_glossary##utf:UTF-8} 编码系统中，字节值 97 编码“a”。字节值 195 和 161 按顺序编码“á”。

{marker characteristics}{...}
{phang}
{bf:特征}。
特征是有关 Stata 数据集及其内每个变量的元数据的一种形式。它们通常在编程情境中使用。例如，xt 命令需要知道面板变量的名称以及可能的时间变量。这些变量名称存储在数据集中的特征中。有关概述，请参见 {findalias frchars}，有关技术描述，请参见 {manhelp char P}。

{marker class}{...}
{phang}
{bf:类}。类是 {help p_glossary##objectoriented:面向对象编程} 的一种实现。类是一组相关变量或函数，或两者结合在一起并用一个名称表示。Stata 有两个类实现，一个用于 ado 编程（见 {manhelp class P}），另一个用于 Mata（见 {manhelp class M-2}）。

{marker code_pages}{...}
{phang}
{bf:代码页}。
代码页将扩展 ASCII 值映射到一组字符，通常针对特定语言或多种语言。例如，最常用的代码页是 Windows-1252，它将扩展 ASCII 值映射到用于西欧语言的字符。代码页本质上是为 {help u_glossary##extascii:扩展 ASCII} 字符提供的编码。

{marker codep}{...}
{phang}
{bf:代码点}。
代码点是表示文本系统（如 ASCII 或 Unicode）中单个字符的数值或位置。最初的 {help p_glossary##ascii:ASCII} 编码系统仅包含 128 个代码点，因此只能表示 128 个字符。从历史上看，额外的 128 个字节的 {help p_glossary##extascii:扩展 ASCII} 以多种不同且不一致的方式编码，以提供额外的 128 个代码点。正式的 Unicode 规范有 1,114,112 个可能的代码点，其中大约 250,000 已被分配给实际字符。Stata 使用 {help p_glossary##utf:UTF-8} 编码处理 Unicode。请注意，UTF-8 编码的代码点与代码点本身没有相同的数值。

{marker dispcol}{...}
{phang}
{bf:显示列}。
显示列是显示一个典型字符所需的空间，在 Stata 的结果窗口和查看器中采用固定宽度显示。一些字符在一个显示列中太宽。每个字符在一个或两个显示列中显示。

{pmore}
所有 {help p_glossary##plainascii:普通 ASCII} 字符（例如“ M”和“9”）以及许多不属于普通 ASCII 的 {help p_glossary##utf:UTF-8} 字符（例如“é”）在使用固定宽度字体时占用的空间相同。也就是说，它们都占用一个显示列。

{pmore}
来自非拉丁字母表的字符，例如中文、西里尔文、日文和韩文，可能需要两个显示列。

{pmore}
有关更多信息，请参见 {findalias frdiunicode}。

{marker encode}{...}
{phang}
{bf:编码}。
编码是将字符表示为字节或一系列字节的一种方式。编码系统的例子包括 {help p_glossary##ascii:ASCII} 和 {help p_glossary##utf:UTF-8}。Stata 使用 UTF-8 编码。

{pmore}
有关更多信息，请参见 {findalias frencodings}。

{marker extascii}{...}
{phang}
{bf:扩展 ASCII}。
扩展 ASCII，也称为高等级 ASCII，是字节值 128 到 255，这些值未在原始 {help p_glossary##ascii:ASCII} 规范中定义。多年来，已经定义了各种 {help p_glossary##code_pages:代码页} 来将扩展 ASCII 字节值映射到原 ASCII 规范中不支持的许多字符，例如带有变音符号的拉丁字母，如“á”和“Á”；非拉丁字母，如中文、西里尔文、日文和韩文；在非英语语言中使用的标点符号，如“<”；复杂的数学符号，如“±”；等等。

{pmore}
尽管扩展 ASCII 字符以单字节形式存储于 ASCII {help p_glossary##encode:编码}中，UTF-8 在两个到四个字节中存储相同的字符。由于每个代码页对扩展 ASCII 值的映射不同，扩展 ASCII 字符的另一个显著特征是它们的含义可能根据字体和操作系统而改变。

{phang}
{bf:全局宏}。见 {help p_glossary##localmacro:{it:局部宏和全局宏}}。

{phang}
{bf:高等级 ASCII}。见 {help p_glossary##extascii:{it:扩展 ASCII}}。

{marker localmacro}{...}
{phang}
{bf:局部宏和全局宏}。局部宏是私有的，这意味着只有定义其的程序可以查看。全局宏是公共的，这意味着全局宏可供所有程序使用。参见 {findalias frlocal}、{findalias frglobal}、{findalias frdiffmacros} 和 {manhelp macro P}。另见 {help p_glossary##macro:{it:宏、宏名称和宏内容}}。

{marker locale}{...}
{phang}
{bf:区域设定}。
区域设定是一个代码，用于识别具有特定规则的社区，以确定其语言应如何书写。区域设定可以指代某种语言（例如，“en”表示英语），也可以指代特定国家的语言（例如，“en_HK”表示香港的英语）。

{pmore}
区域设定指定了一组规则， govern 如何书写语言。Stata 使用区域设定来确定如何执行某些特定语言的操作。有关更多信息，请参见 {findalias frlocales}。

{marker looping}{...}
{phang}
{bf:循环}。循环是指只要条件为真，就重复执行一段代码。在 Stata 中，{cmd:while}、{cmd:foreach} 和 {cmd:forvalues} 都是循环命令。见 {manhelp while P}、{manhelp foreach P} 和 {manhelp forvalues P}。另见 {manhelp for M-2}、{manhelp do M-2} 和 {manhelp while M-2}。

{phang}
{bf:低等级 ASCII}。见 {help p_glossary##plainascii:{it:普通 ASCII}}。

{marker macro}{...}
{phang}
{bf:宏、宏名称和宏内容}。宏是一个字符字符串，称为宏名称，代表另一个字符字符串，称为宏内容。当引用宏名称时，宏内容将替换宏名称。见 {findalias frmacros} 和 {manhelp macro P}。另见 {help p_glossary##localmacro:{it:局部宏和全局宏}}。

{marker macroexpansion}{...}
{phang}
{bf:宏扩展}。宏扩展是将宏内容替换为宏名称的过程。见 {manhelp macro P}。

{phang}
{bf:空终止符}。见 {help p_glossary##bin0:{it:二进制 0}}。

{marker numlist}{...}
{phang}
{bf:数字列表}。
数字列表是一系列数字。该列表可以是一或多个任意数字，或者可以使用某些简写表示范围，如 {cmd:5/9} 表示整数 5、6、7、8 和 9。范围可以是升序或降序，并且可以包括一个可选的增量或减量，例如 {cmd:10.5(-2)4.5} 表示 10.5、8.5、6.5 和 4.5。有关表示范围的简写列表，请参见 {findalias frnumlist}。

{marker objectoriented}{...}
{phang}
{bf:面向对象编程}。面向对象编程是一种编程风格，其中代码围绕对象构建，这些对象可能具有数据和可以操作这些数据的代码方法。一个对象是构造出来的，其他对象可以从该对象继承或在其基础上构建。例如，一个对象可以是一个点，而构建在其上的对象可以是一个直线，进一步构建的对象可以是多边形。Mata、C++ 和 Java 是支持面向对象编程的编程语言的例子。

{phang}
{bf:OLE 自动化}。见 {help p_glossary##automation:{it:自动化}}。

{marker plainascii}{...}
{phang}
{bf:普通 ASCII}。
我们使用普通 ASCII 作为一个非技术术语，指计算机程序员所称的低级 ASCII。这些是简单的拉丁字母 “a” 到 “z” 和 “A” 到 “Z”；数字 “0” 到 “9”；许多标点符号，如“！”；简单的数学符号，如 “+”；以及空白和控制字符，如空格（“ ”）、制表符和回车符。

{pmore}
每个普通 ASCII 字符以单字节形式存储，其值在 0 和 127 之间。另一个显著特征是用于 {help p_glossary##encode:编码} 普通 ASCII 字符的字节值在不同操作系统上是相同的，并且在 ASCII 和 {help p_glossary##utf:UTF-8} 间是通用的。

{pmore}
另见 {help p_glossary##ascii:{it:ASCII}} 和 {help p_glossary##encode:{it:编码}}。

{marker plugin}{...}
{phang}
{bf:插件}。插件是用另一种语言编写的一段软件，它为软件包增加功能。Stata 可以调用用 C/C++ 或 Java 编写的插件。当所需功能不在 Stata 的 ado 或 Mata 语言中可用时，或者所需的方法涉及速度且涉及大量循环、递归或其他计算量大的方法时，插件很有用。见 {manhelp plugin P}、{help java_intro_zh:[P] Java 简介} 和 {manhelp python P}。

{marker recursion}{...}
{phang}
{bf:递归}。递归是一种编程技术，通过一个函数重复调用自身以求解问题。每次调用的目的是解决原问题的一个较小部分。

{phang}
{bf:str1}, {bf:str2}, ..., {bf:str2045}。
见 {help p_glossary##strL:{it:strL}}。

{marker strL}{...}
{phang}
{bf:strL}。
{cmd:strL} 是字符串变量的存储类型。字符串存储类型的完整列表为 {cmd:str1}、{cmd:str2}、...、{cmd:str2045} 和 {cmd:strL}。

{pmore}
{cmd:str1}、{cmd:str2}、...、{cmd:str2045} 是固定长度存储类型。如果变量 {cmd:mystr} 是 {cmd:str8}，则每个观察值将分配 8 字节来存储 {cmd:mystr} 的值。如果您有 2000 个观察值，则总共将分配 16000 字节。

{pmore}
要区分存储长度和字符串长度。如果 {cmd:myvar} 是 {cmd:str8}，这并不意味着字符串在每个观察值中都是 8 个字符长。字符串的最大长度为 8 个字符。单个观察值可能具有长度为 0、1、...、8 的字符串。即便如此，每个字符串仍然需要 8 字节的存储。

{pmore}
您无需担心存储长度，因为字符串变量会自动提升。如果 {cmd:myvar} 是 {cmd:str8}，并且您将第 3 个观察值的内容更改为“超过 8 个字符”，则 {cmd:myvar} 将自动变为 {cmd:str13}。

{pmore}
如果您将第 3 个观察值的内容更改为超过 2045 个字符的字符串，{cmd:myvar} 将变为 {cmd:strL}。

{pmore}
{cmd:strL} 变量不一定比 2045 个字符长；它们可以长于或短于 2045 个字符。真正的区别在于 {cmd:strL} 变量是以可变长度存储的。假设 {cmd:myothervar} 是一个 {cmd:strL} 变量，其第三个观察值包含“this”。该观察值占用的总内存将是 64 + 4 + 1 = 69 字节。将有 64 字节的跟踪信息，4 字节的内容（有 4 个字符），以及 1 字节用于终止字符串。如果第五个观察值包含一个 2000000 字符的字符串，则需要 64 + 2000000 + 1 = 2000065 字节来存储它。

{pmore}
{cmd:str1}、{cmd:str2}、...、{cmd:str2045} 与 {cmd:strL} 之间的另一个区别在于，{cmd:str}{it:#} 存储类型只能存储 ASCII 字符串。{cmd:strL} 可以存储 ASCII 或二进制字符串。因此，{cmd:strL} 变量可以包含，例如，Word 文档的内容或 JPEG 图像或任何其他内容。

{pmore}
{cmd:strL} 发音为 sturl。

{marker titlecase}{...}
{phang}
{bf:标题大小写}、{bf:标题大小写字符串} 和 {bf:Unicode 标题大小写字符串}。在语法中，标题大小写是指在短语中关键字的大小写。在 Stata 中，标题大小写指 (a) 字符串中每个单词的首字母大写和 (b) 在非字母字符后的每个字母大写。字符串中单词的重要性或非字母字符后的字母是否属于同一个单词并不进行判断。例如，“it's” 的标题大小写是 “It'S”。

{pmore}
标题大小写字符串是应用上述规则的任何字符串。例如，如果我们使用 {helpb strproper()} 函数处理书名 {it:Zen and the Art of Motorcycle Maintenance}，Stata 将返回标题大小写字符串 {cmd:Zen And The Art Of Motorcycle Maintenance}。

{pmore}
Unicode 标题大小写字符串是对 Unicode 单词应用 Unicode 标题大小写规则的字符串。这几乎与将每个 Unicode 单词的首字母大写相同，但并不完全相同。像大写一样，标题大小写字母是依赖于区域设定的，这意味着同一个字母在不同的区域设定中可能会有不同的标题大小写形式。例如，在某些区域设定中，单词开头的大写字母不应该带有重音，即使那个大写字母本身会带有重音。

{pmore}
如果您没有超出普通 ASCII 的字符 且您的区域设定为英语，结果没有区别。例如，{cmd:ustrtitle()} 在使用英语 {help p_glossary##locale:区域设定} 的情况下也将返回标题大小写字符串 {cmd:Zen And The Art Of Motorcycle Maintenance}。

{pmore}
使用 {helpb ustrtitle()} 函数，应用适合您语言（区域设定）的大小写规则。

{marker token}{...}
{phang}
{bf:标记}。标记是文本字符串中的一个单独部分。标记通常由空白或特殊字符（如逗号、括号和圆括号）分隔。

{marker unicode}{...}
{phang}
{bf:Unicode}。
Unicode 是一种用于 {help p_glossary##encode:编码} 和处理几乎任何可想象的活或死语言的文本的标准。Unicode 指定了一组编码系统，旨在容纳（并且与扩展 ASCII 不同，保持分隔）用于不同语言的字符。Unicode 标准不仅定义了字符及其编码，还规定了如何对特定语言（区域设定）中的单词执行各种操作的规则，如大写和排序。最常用的 Unicode 编码是 mUTF-8、UTF-16 和 UTF-32。Stata 使用 {help p_glossary##utf:UTF-8}。

{marker unichar}{...}
{phang}
{bf:Unicode 字符}。从技术上讲，Unicode 字符是具有 Unicode {help p_glossary##encode:编码} 的任何字符。通俗来说，我们使用该术语指代除 {help p_glossary##plainascii:普通 ASCII} 字符以外的任何字符。

{phang}
{bf:Unicode 规范化}。
Unicode 规范化允许我们使用共通的表示方式，因此可以比较显示相同但可能有多种编码方式的 Unicode 字符串。这在实际中很少发生，但由于理论上是可能的，Stata 提供了 {helpb ustrnormalize()} 函数，当在不同规范化形式的同一字符串之间转换。

{pmore}
例如，假设我们希望搜索 “ñ”（西班牙字母上的波浪符号的小写 n）。这个字母可能已被使用单个 {help p_glossary##codep:代码点} U+00F1 进行 {help p_glossary##encode:编码}。但是，序列 U+006E（拉丁小写字母“ n ”）后跟 U+0303（波浪符号）被 Unicode 定义为与 U+00F1 等效。这种视觉上的同一性称为标准等效性。单一代码点形式称为规范化组合形式，而多代码点形式称为规范化分解形式。规范化将一个字符串修改为另一个字符串的相反规范等效形式，以便其底层字节序列匹配。如果我们有不同比例的字符串，我们希望在排序或搜索字符串或子字符串时使用这种规范化。

{pmore}
另一种 Unicode 规范化允许外观略有不同的字符赋予相同的含义或解释。例如，在排序或索引时，我们可能希望 {help p_glossary##codep:代码点} U+FB00（印刷排版连字“ f ”）与两个拉丁字母“ f ” 的序列的 {help p_glossary##encode:编码} 为 U+0066 U+0066 匹配。这称为兼容等效性。

{phang}
{bf:Unicode 标题大小写字符串}。见 {help p_glossary##titlecase:{it:标题大小写、标题大小写字符串和 Unicode 标题大小写字符串}}。

{marker utf}{...}
{phang}
{bf:UTF-8}.  UTF-8 代表 通用字符集 + 转换格式——8 位。它是一种为与 {help p_glossary##ascii:ASCII} 向后兼容而设计的 {help p_glossary##unicode:Unicode} {help p_glossary##encode:编码} 系统，并被 Stata 14 使用。

{marker version}{...}
{phang}
{bf:版本和版本控制}。版本是指 Stata 的命令解释器设置的内部编号。版本控制是在处理命令、do 文件或 ado 文件时指定 Stata 应使用的版本的过程。例如，如果您编写一个 Stata ado 文件，并在文件顶部放入 {cmd:version 15}，那么 Stata 将使用 Stata 15 支持的语法来解释您的 ado 文件，即使 Stata 的当前版本是 Stata 16 或 Stata 20。版本控制是 Stata 的一个重要特点，因为它确保了可重复性。见 {manhelp version P}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <p_glossary.sthlp>}