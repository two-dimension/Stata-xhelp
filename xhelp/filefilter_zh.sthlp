{smcl}
{* *! version 1.2.10  19oct2017}{...}
{vieweralsosee "[D] filefilter" "mansection D filefilter"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] file" "help file_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] changeeol" "help changeeol_zh"}{...}
{vieweralsosee "[D] hexdump" "help hexdump_zh"}{...}
{viewerjumpto "语法" "filefilter_zh##syntax"}{...}
{viewerjumpto "描述" "filefilter_zh##description"}{...}
{viewerjumpto "PDF文档链接" "filefilter_zh##linkspdf"}{...}
{viewerjumpto "选项" "filefilter_zh##options"}{...}
{viewerjumpto "技术说明" "filefilter_zh##technote"}{...}
{viewerjumpto "示例" "filefilter_zh##examples"}{...}
{viewerjumpto "存储结果" "filefilter_zh##results"}
{help filefilter:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[D] filefilter} {hline 2}}转换文件中的 ASCII 或二进制模式{p_end}
{p2col:}({mansection D filefilter:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}
{opt filef:ilter}
{it:oldfile}
{it:newfile}
{cmd:,}{break}
{c -(}
{opt f:rom(oldpattern)}
{opt t:o(newpattern)}{break}
{space 2}|
{opt ascii2ebcdic}
|
{opt ebcdic2ascii}
{c )-}
[{it:{help filefilter##options_table:选项}}]

{p 4 4 2}
其中 {it:oldpattern} 和 {it:newpattern} 表示 ASCII 字符

{p 13 42 2}{cmd:"}{it:string}{cmd:"} 或 {cmd:}{it:string}{cmd:}

{p2colset 25 40 42 2}{...}
{p2col 14 40 42 2 :{it:string}{space 2}{cmd::=} {cmd:[}{it:char}{cmd:[}{it:char}{cmd:[}{it:char}{cmd:[}{it:...}{cmd:]]]]}}{p_end}
{p2col 14 40 42 2 :{it:char}{space 4}{cmd::=} {it:regchar}{cmd: | }{it:code}}{p_end}
{p2col 14 40 42 2 :{it:regchar} {cmd::=} ASCII 32-91, 93-127, 或}{p_end}
{p2col :扩展 ASCII 128, 161-255; 不包括 '\'}{p_end}
{p2col 14 40 42 2 :{it:code}{space 4}{cmd::=} {cmd:\BS}}反斜杠{p_end}
{p2col :{cmd:\r}}回车{p_end}
{p2col :{cmd:\n}}换行{p_end}
{p2col :{cmd:\t}}制表符{p_end}
{p2col :{cmd:\M}}经典 Mac EOL，或 \r{p_end}
{p2col :{cmd:\W}}Windows EOL，或 \r\n{p_end}
{p2col :{cmd:\U}}Unix 或 Mac EOL，或 \n{p_end}
{p2col :{cmd:\LQ}}左单引号， `{p_end}
{p2col :{cmd:\RQ}}右单引号， '{p_end}
{p2col :{cmd:\Q}}双引号， "{p_end}
{p2col :{cmd:\$}}美元符号， ${p_end}
{p2col :{cmd:\}{it:###}{cmd:d}}3位数的 [0-9] 十进制 ASCII{p_end}
{p2col :{cmd:\}{it:##}{cmd:h}}2位数的 [0-9,A-F] 十六进制 ASCII{p_end}
{p2colreset}{...}

{synoptset 20 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{p2coldent :* {opt f:rom(oldpattern)}}查找要替换的 {it:oldpattern}{p_end}
{p2coldent :* {opt t:o(newpattern)}}使用 {it:newpattern} 替换 {opt from()} 的出现情况{p_end}
{p2coldent :* {opt ascii2ebcdic}}将文件从 ASCII 转换为 EBCDIC{p_end}
{p2coldent :* {opt ebcdic2ascii}}将文件从 EBCDIC 转换为 ASCII{p_end}
{synopt :{opt r:eplace}}如果 {it:newfile} 已存在，则替换它{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 必须同时提供 {opt from(oldpattern)} 和 {opt to(newpattern)}，或者需要 {opt ascii2ebcdic} 或 {opt ebcdic2ascii}。{p_end}


{marker description}{...}
{title:描述}

{pstd}
{opt filefilter} 读取输入文件，搜索 {it:oldpattern}。
每当找到匹配的模式时，它会被替换为 {it:newpattern}。
所有结果数据，无论是匹配还是不匹配，都会写入新文件中。

{pstd}
由于 {opt filefilter} 的缓冲设计，可以快速转换任意大的文件。
当传统编辑器无法编辑文件时，如涉及不可打印的 ASCII 字符时，{opt filefilter} 也很有用。
实际上，使用 EOL 代码在 Macintosh、Windows 和 Unix 之间转换行结束符非常方便。

{pstd}
虽然不直接支持 Unicode，但在某些情况下可以通过使用字节序列方法对 UTF-8 编码的文件进行操作。

{pstd}
尽管不是强制性的，你可能希望使用引号来界定模式，以保护模式不受 Stata 解析例程的影响。
包含空格的模式必须用引号包围。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D filefilterQuickstart:快速入门}

        {mansection D filefilterRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{opt from(oldpattern)} 指定要查找并替换的模式。除非指定 {opt ascii2ebcdic} 或 {opt ebcdic2ascii}，否则该选项是必需的。

{phang}{opt to(newpattern)} 指定用于替换 {opt from()} 出现的模式。除非指定 {opt ascii2ebcdic} 或 {opt ebcdic2ascii}，否则该选项是必需的。

{phang}{opt ascii2ebcdic} 指定将文件中的字符从 ASCII 编码转换为 EBCDIC 编码。与 {opt ascii2ebcdic} 不允许一起使用 {opt from()},{opt to()} 和 {opt ebcdic2ascii}。

{phang}{opt ebcdic2ascii} 指定将文件中的字符从 EBCDIC 编码转换为 ASCII 编码。与 {opt ebcdic2ascii} 不允许一起使用 {opt from()},{opt to()} 和 {opt ascii2ebcdic}。

{phang}{opt replace} 指定如果 {it:newfile} 已存在则替换它。


{marker technote}{...}
{title:技术说明}

{pstd}
Unicode 不直接支持，但你可以尝试通过操作 UTF-8 编码的 Unicode 文件的字节序列表示来进行处理。
例如，Unicode 字符 {bf:é}，带有重音符号的拉丁小写字母 "e"（Unicode 代码点 {bf:\u00e9}），其字节序列表示为 (195,169)。
你可以通过使用 {help f_tobytes_zh:tobytes("é")} 获取字节序列。
尽管你可以在 {it:regchar} 和 {it:code} 中使用 195 和 169，但它们会被视为两个独立的字节，而不是一个字符 {bf:é}（195 后接 169）。
简而言之，这超出了命令的原始设计，并且在技术上不被支持。如果你尝试以这种方式使用 {opt filefilter}，可能会遇到问题。


{marker examples}{...}
{title:示例}

{pstd}将经典 Mac 风格的 EOL 字符转换为 Windows 风格{p_end}
{phang2}{cmd:. filefilter macfile.txt winfile.txt, from(\M) to(\W) replace}

{pstd}将左引号 (`) 字符转换为字符串 "left quote"{p_end}
{phang2}{cmd:. filefilter auto1.csv auto2.csv, from(\LQ) to("left quote")}

{pstd}将十六进制代码为 60 的字符转换为字符串 "left quote"{p_end}
{phang2}{cmd:. filefilter auto1.csv auto2.csv, from(\60h) to("left quote")}

{pstd}将十进制代码为 96 的字符转换为字符串 "left quote"{p_end}
{phang2}{cmd:. filefilter auto1.csv auto2.csv, from(\096d) to("left quote")}

{pstd}将以十六进制代码 6B 开头后接 "Text" 再后接十进制字符 100 和 "Text" 的字符串转换为空字符串（从文件中移除它们）{p_end}
{phang2}{cmd:. filefilter file1.txt file2.txt, from("\6BhText\100dText") to("")}

{pstd}将文件从 EBCDIC 转换为 ASCII 编码{p_end}
{phang2}{cmd:. filefilter ebcdicfile.txt asciifile.txt, ebcdic2ascii}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:filefilter} 将以下内容存储在 {cmd:r()}中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(occurrences)}}找到的 {it:oldpattern} 的数量{p_end}
{synopt:{cmd:r(bytes_from)}}由 {it:oldpattern} 表示的字节数{p_end}
{synopt:{cmd:r(bytes_to)}}由 {it:newpattern} 表示的字节数{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <filefilter.sthlp>}