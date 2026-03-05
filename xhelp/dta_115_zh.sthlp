{smcl}
{* *! version 1.2.9  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] sysuse" "help sysuse_zh"}{...}
{vieweralsosee "[D] webuse" "help webuse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 1.2.2 示例数据集" "help dta_contents_zh"}{...}
{viewerjumpto "语法" "dta_115_zh##syntax"}{...}
{viewerjumpto "备注" "dta_115_zh##remarks"}
{help dta_115:English Version}
{hline}{...}
{title:标题}

{p2colset 5 30 32 2}{...}
{p2col :{hi:[P] 文件格式 .dta} {hline 2}}.dta 文件格式 115 的描述{p_end}
{p2colreset}{...}


{pstd}
{bf:警告:}
下面的条目描述了旧版 Stata {cmd:.dta} 文件格式的内容。
较新版本的 Stata 仍然可以读取并可能还会写入这种旧格式。
以下内容是 {cmd:.dta} 文件格式的原始帮助文件，当时它是当前的文件格式。


{marker syntax}{...}
{title:语法}

{pstd}
该条目中的信息非常技术性，可能不符合您的兴趣。我们详细描述
Stata {cmd:.dta} 数据集的格式，以供那些对编写读取和写入它们的 C
或其他语言程序感兴趣的人参考。


{marker remarks}{...}
{title:备注}

{pstd}
备注如下划分：

	{help dta_115##intro:1.  介绍}
	{help dta_115##versions:2.  Stata 的版本和种类}
	{help dta_115##strings:3.  字符串的表示}
	{help dta_115##numbers:4   数字的表示}
 	{help dta_115##definition:5.  数据集格式定义}
	    {help dta_115##header:5.1  头部}
	    {help dta_115##descriptors:5.2  描述符}
	    {help dta_115##variable_labels:5.3  变量标签}
	    {help dta_115##expansion_fields:5.4  扩展字段}
	    {help dta_115##data:5.5  数据}
	    {help dta_115##value_labels:5.6  值标签}


{marker intro}{...}
{title:1.  介绍}

{pstd}
Stata 格式的数据集以一种通用的方式记录数据，适用于不一致
的数据记录格式。因此相同的数据集可以在不同的计算机之间（Windows、Unix
以及 Mac 计算机）使用，无需翻译。根据电脑的数据集分为两类：本地格式和
外部格式。Stata 使用以下两条规则：

{p 8 13 2}
    R1.  在任何计算机上，Stata 知道如何仅写入本地格式数据集。

{p 8 13 2}
    R2.  在所有计算机上，Stata 可以读取外部格式和本地格式数据集。

{pstd}
规则 R1 和 R2 确保了 Stata 用户无需担心数据集格式。如果您正在编写程序来读取
和写入 Stata 数据集，您需要决定是否想遵循相同的规则，或者仅限于处理本地
格式数据集。由于 Stata 遵循规则 R1 和 R2，因此这样的限制不会太
苛刻。如果用户有一个外部格式的数据集，他或她可以进入 Stata，{help use_zh}
数据，然后再 {help save_zh} 它。


{marker versions}{...}
{title:2.  Stata 的版本和种类}

{pstd}
Stata 不断更新，这些更新有时需要更改 Stata 记录 {cmd:.dta} 数据集的
方式。此文档记录了所谓的 {hi:format-115} 数据集。Stata 本身可以读取旧
格式，但每当它写入数据集时，它都会以 {hi:115} 格式写入。

{pstd}
当前 Stata 有三种版本可用：
{help stataic_zh:Stata/IC}、{help SpecialEdition:Stata/SE} 和
{help statamp_zh:Stata/MP}。所有版本都使用相同的 {hi:115} 格式。
不同之处在于某些版本的数据集可以更大。


{marker strings}{...}
{title:3.  字符串的表示}

{phang}
1.  Stata 中的字符串长度可以从 1 到 244 字节。

{phang}
2.  如果字符串的长度小于最大声明长度，Stata 会在字符串末尾记录一个尾随的二进制 0
({cmd:\0}) 分隔符。如果字符串达到最大长度，则不会记录该分隔符。

{phang}
3.  前导和尾随空格是重要的。

{phang}
4.  字符串使用 ASCII 编码。


{marker numbers}{...}
{title:4.  数字的表示}

{phang}
1.  数字以 1、2 和 4 字节整数以及 4 和 8 字节浮点数形式表示。
   浮点数的情况下，采用 ANSI/IEEE 标准 754-1985 格式。

{phang}
2.  所有数字类型的字节顺序在不同机器上可能会有所不同。字节可以按最
低有效字节到最高有效字节排序，称为 LOHI，或最高有效字节到最低有效字节
排序，称为 HILO。例如，Pentium 处理器使用 LOHI 编码，而基于 Sun SPARC 的计算机使用 HILO 编码。
基于 Itanium 的计算机因操作系统可以是 LOHI 或 HILO。Windows 和 Linux
在 Itanium 上使用 LOHI 编码，而 HP-UX 在 Itanium 上使用 HILO 编码。

{phang}
3.  在 LOHI 机器上读取 HILO 数字或在 HILO 机器上读取 LOHI 数字时，在解释该数字之前，需执行以下操作：

	    字节          无需翻译
	    2 字节整数    交换字节 0 和 1
	    4 字节整数    交换字节 0 和 3、1 和 2
	    4 字节浮点数  交换字节 0 和 3、1 和 2
	    8 字节浮点数  交换字节 0 和 7、1 和 6、2 和 5、3 和 4

{phang}
4.  在书面文档中，数字首先以最高有效字节方式书写。因此， {cmd:0x0001}
表示在所有机器上以逻辑值 1 的 2 字节整数。

{phang}
5.  Stata 有五种数字数据类型。包括：

	    {cmd:byte}          1 字节带符号整数
	    {cmd:int}           2 字节带符号整数
	    {cmd:long}          4 字节带符号整数
	    {cmd:float}         4 字节 IEEE 浮点数
	    {cmd:double}        8 字节 IEEE 浮点数

{phang}
6.  每种类型都允许 27 种 {help missing_zh:缺失值代码}，称为 {cmd:.}、{cmd:.a}、{cmd:.b}、
{cmd:.z}。对于每种类型，允许的非缺失值范围和缺失值代码如下所示：

	    {cmd:byte}
		最小非缺失值    -127   (0x80)
		最大非缺失值    +100   (0x64)
		代码 {cmd:.}            +101   (0x65)
		代码 {cmd:.a}           +102   (0x66)
		代码 {cmd:.b}           +103   (0x67)
		...
		代码 {cmd:.z}           +127   (0x7f)

	    {cmd:int}
		最小非缺失值    -32767 (0x8000)
		最大非缺失值    +32740 (0x7fe4)
		代码 {cmd:.}            +32741 (0x7fe5)
		代码 {cmd:.a}           +32742 (0x7fe6)
		代码 {cmd:.b}           +32743 (0x7fe7)
		...
		代码 {cmd:.z}           +32767 (0x7fff)

	    {cmd:long}
		最小非缺失值    -2,147,483,647  (0x80000000)
		最大非缺失值    +2,147,483,620  (0x7fffffe4)
		代码 {cmd:.}            +2,147,483,621  (0x7fffffe5)
		代码 {cmd:.a}           +2,147,483,622  (0x7fffffe6)
		代码 {cmd:.b}           +2,147,483,623  (0x7fffffe7)
		...
		代码 {cmd:.z}           +2,147,483,647  (0x7fffffff)

	    {cmd:float}
		最小非缺失值    -1.701e+38  (-1.fffffeX+7e)  {it:(sic)}
		最大非缺失值    +1.701e+38  (+1.fffffeX+7e)
		代码 {cmd:.}                        (+1.000000X+7f)
		代码 {cmd:.a}                       (+1.001000X+7f)
		代码 {cmd:.b}                       (+1.002000X+7f)
		...
		代码 {cmd:.z}                       (+1.01a000X+7f)

	    {cmd:double}
		最小非缺失值    -1.798e+308 (-1.fffffffffffffX+3ff)
		最大非缺失值    +8.988e+307 (+1.fffffffffffffX+3fe)
		代码 {cmd:.}                        (+1.0000000000000X+3ff)
		代码 {cmd:.a}                       (+1.0010000000000X+3ff)
		代码 {cmd:.b}                       (+1.0020000000000X+3ff)
		...
		代码 {cmd:.z}                       (+1.01a0000000000X+3ff)

{pmore}
请注意，对于 {cmd:float}，所有 {it:z}>1.fffffeX+7e，对于 {cmd:double}，所有
{it:z}>1.fffffffffffffX+3fe 会被视为缺失值，仅部分值被标记为 {cmd:.}、{cmd:.a}、
{cmd:.b}、..., {cmd:.z}。例如，值在 {cmd:.a} 和 {cmd:.b} 之间仍被视为缺失值，特别
是，{cmd:.a} 和 {cmd:.b} 之间的所有值被统称为 {cmd:.a_}。然而，应避免记录这些值。

{pmore}
在上述表格中，我们使用了
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
表示法。左侧的数字被解释为以 16 为基数的数字（因此，加号处为 16 进制小数点），右侧的数字（同样以
16 为基数存储）被解释为 2 的幂 {it:(sic)}。例如，

	    1.01aX+3ff = (1.01a) * 2^(3ff)                        (十进制)
		       = (1 + 0/16 + 1/16^2 + 10/16^3) * 2^1023   (十进制)

{pmore}
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
表示法很容易转换为 IEEE 8 字节双精度浮点数：
{cmd:1} 是隐藏位，十六进制点右侧的数字是尾数位，指数是 IEEE 指数的带符号（去掉偏移）形式。
例如，圆周率 pi = 3.1415927... 为：

					    8 字节 IEEE, HILO
					 {hline 23}
	    pi = +1.921fb54442d18X+001 = 40 09 21 fb 54 44 2d 18

				       = 18 2d 44 54 fb 21 09 40
					 {hline 23}
					    8 字节 IEEE, LOHI

{pmore}
将
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
转换为 IEEE 4 字节浮点数则更加困难，但同样的规则适用：{cmd:1} 是隐藏位，
十六进制点右侧的数字是尾数位，指数是 IEEE 指数的带符号（去掉偏移）形式。
更困难的是，IEEE 4 字节格式中的符号位和指数占 9 位，这不是4的倍数，因此一切都向右
移动了一位。在浮点数中：

				      4 字节 IEEE, HILO
					 {hline 11}
	    pi = +1.921fb60000000X+001 = 40 49 0f db

				       = db 的 49 40
					 {hline 11}
				      4 字节 IEEE, LOHI

{pmore}
获得上述结果的最简单方法是先将 +1.921fb60000000X+001 转换为 8 字节双精度浮点数
然后再将 8 字节双精度浮点数转换为 4 字节浮点数。

{pmore}
无论如何，相关数字如下所示：

	    V            值                HILO             LOHI
	    {hline 63}
	    m    -1.fffffffffffffX+3ff   ffefffffffffffff  ffffffffffffefff
	    M    +1.fffffffffffffX+3fe   7fdfffffffffffff  ffffffffffffdf7f
	    {cmd:.}    +1.0000000000000X+3ff   7fe0000000000000  000000000000e07f
	    {cmd:.a}   +1.0010000000000X+3ff   7fe0010000000000  000000000001e07f
	    {cmd:.b}   +1.0020000000000X+3ff   7fe0020000000000  000000000002e07f
	    {cmd:.z}   +1.01a0000000000X+3ff   7fe01a0000000000  00000000001ae07f

	    m    -1.fffffeX+7e           feffffff          fffffffe
	    M    +1.fffffeX+7e           7effffff          ffffff7e
	    {cmd:.}    +1.000000X+7f           7f000000          0000007f
	    {cmd:.a}   +1.001000X+7f           7f000800          0008007f
	    {cmd:.b}   +1.002000X+7f           7f001000          0010007f
	    {cmd:.z}   +1.01a000X+7f           7f00d000          00d0007f
	    {hline 63}


{marker definition}{...}
{title:5.  数据集格式定义}

{pstd}
Stata 格式的数据集包含五个组成部分，依次为：

	1.  头部
	2.  描述符
	3.  变量标签
	4.  扩展字段
	5.  数据
	6.  值标签


{marker header}{...}
{title:5.1  头部}

{pstd}
头部定义如下：

	内容                长度      格式        注释
	{hline}
	{cmd:ds_format}                1    字节      包含 115 = 0x73
	{cmd:byteorder}                1    字节      0x01 -> HILO, 0x02 -> LOHI
	{cmd:filetype}                 1    字节      0x01
	未使用                   1    字节      0x00
	{cmd:nvar} (变量数量)    2    int       按照 {cmd:byteorder} 编码
	{cmd:nobs} (观察数量)     4    int       按照 {cmd:byteorder} 编码
	{cmd:data_label}              81    char      数据集标签，\0 终止
	{cmd:time_stamp}              18    char      保存的日期/时间，\0 终止
	{hline}
	总计                  109


{pstd}
{cmd:time_stamp[17]} 必须设置为二进制零。当写入数据集时，您
可以将时间戳记录为空白 {cmd:time_stamp[0]}=\0)，但仍必须将
{cmd:time_stamp[17]} 设置为二进制零。如果您选择写入时间戳，其格式为：

	{it:dd Mon yyyy hh}{cmd::}{it:mm}

{pstd}
{it:dd} 和 {it:hh} 可以写成带或不带前导零，但如果抑制前导零，必须在其位置
替换为一个空白。

{marker descriptors}{...}
{title:5.2  描述符}

{pstd}
描述符定义如下：

	内容                长度      格式       注释
	{hline}
	{cmd:typlist}               {cmd:nvar}    字节数组
	{cmd:varlist}            33*{cmd:nvar}    char 数组
	{cmd:srtlist}          2*({cmd:nvar}+1)   int 数组    按照 {cmd:byteorder} 编码
	{cmd:fmtlist}            49*{cmd:nvar}    char 数组
	{cmd:lbllist}            33*{cmd:nvar}    char 数组
	{hline}


{pstd}
{cmd:typlist} 存储每个变量的类型，1, ..., nvar。
类型编码如下：

		类型          代码
		{hline 20}
		{cmd:str1}        1 = 0x01
		{cmd:str2}        2 = 0x02
		...
		{cmd:str244}    244 = 0xf4
		{cmd:byte}      251 = 0xfb  {it:(sic)}
		{cmd:int}       252 = 0xfc
		{cmd:long}      253 = 0xfd
		{cmd:float}     254 = 0xfe
		{cmd:double}    255 = 0xff
		{hline 20}

{pstd}
Stata 存储五种数字类型： {cmd:double}、{cmd:float}、{cmd:long}、
{cmd:int} 和 {cmd:byte}。如果 {cmd:nvar}==4，则 {cmd:typlist} 为 0xfcfffdfe
表示变量 1 是 {cmd:int}，变量 2 是 {cmd:double}，变量 3 是 {cmd:long}，
变量 4 是 {cmd:float}。代码高于 0x01 至 0xf4 用于表示字符串。例如，
最大长度为 8 的字符串将具有类型 {cmd:0x08}。如果将 {cmd:typlist} 读入 C 数组
{cmd:char} {cmd:typlist[]}，则 {cmd:typlist[i-1]} 表示变量 {cmd:i} 的类型。

{pstd}
{cmd:varlist} 包含 Stata 变量 1, ..., {cmd:nvar} 的名称，
每个名称最多 32 个字符，且每个名称以二进制零 (\0) 终止。例如，如果
{cmd:nvar}==4，

	0       33        66          99
	|        |         |           |
	{cmd:vbl1\0...myvar\0...thisvar\0...lstvar\0...}


{pstd}
表示变量 1 命名为 {cmd:vbl1}，变量 2 命名为 {cmd:myvar}，变量 3 命名为
{cmd:thisvar}，变量 4 命名为 {cmd:lstvar}。由圆点表示的字节位置将包含随机数（请注意我们省略了其中的一些点）。
如果将 {cmd:varlist} 读入 C 数组 {cmd:char} {cmd:varlist[]}，则 {cmd:&varlist[(i-1)*33]}
指向变量 {cmd:i} 的名称。

{pstd}
{cmd:srtlist} 指定数据集的排序顺序，并以 (int) 0 终止。每 2 个字节是 1 个 int
，包含一个变量编号或零。零标志着 {cmd:srtlist} 的结束，其后的数组位置
包含随机垃圾。例如，如果数据未排序，第一个 int 将包含零，之后的 int 将
包含垃圾。如果 {cmd:nvar}==4，记录将显示为

	{cmd:0000................}

{pstd}
如果数据按变量 {cmd:myvar} 排序，并且该变量是 {cmd:varlist} 中的第二个变量，
记录将显示为

	{cmd:00020000............}  (如果 {cmd:byteorder}==HILO)
	{cmd:02000000............}  (如果 {cmd:byteorder}==LOHI)

{pstd}
如果数据按 {cmd:myvar} 排序，并且在 {cmd:myvar} 中按 {cmd:vbl1} 排序，并且
{cmd:vbl1} 是数据集中的第一个变量，记录将显示为：

	{cmd:000200010000........}  (如果 {cmd:byteorder}==HILO)
	{cmd:020001000000........}  (如果 {cmd:byteorder}==LOHI)


{pstd}
如果将 {cmd:srtlist} 读入 C 数组 {cmd:short} {cmd:int} {cmd:srtlist[]}，则
{cmd:srtlist[0]} 将是第一个排序变量的编号，或者，如果数据未排序，则为 0。
如果该数字不为零，{cmd:srtlist[1]} 将是第二个排序变量的编号，或者，如果
没有第二个排序变量，则为 0，以此类推。

{pstd}
{cmd:fmtlist} 包含变量 1, ..., {cmd:nvar} 的格式。每个格式有 49 字节长，并包含一个
二进制零字符串结束标记。例如，

	{cmd:%9.0f\0..........................................%8.2f\0......}
	{cmd:....................................%20.0g\0..................}
	{cmd:.......................%td\0..................................}
	{cmd:..........%tcDDmonCCYY_HH:MM:SS.sss\0......................}

{pstd}
表示变量 1 的格式为 {cmd:%9.0f}，变量 2 的格式为 {cmd:%8.2f}，变量 3 的格式为
{cmd:%20.0g}，等等。请注意，这些是 Stata 格式，而不是 C 格式。

{phang2}
1.  以 {cmd:%t} 或 {cmd:%-t} 开头的格式是 Stata 的日期和时间格式。

{phang2}
2.  Stata 具有旧的 {cmd:%}{cmd:d} 格式标记，某些数据集仍然使用这些格式。
格式 {cmd:%}{cmd:d}... 等价于现代格式 {cmd:%td}... 和 {cmd:%}{cmd:-}{cmd:d}...
等价于 {cmd:%-td}...

{phang2}
3.  非日期格式以 {cmd:gc} 或 {cmd:fc} 结尾，与 C 的 {cmd:g} 和 {cmd:f} 格式类似，但带有逗号。
大多数转换例程将忽略结尾的 {cmd:c}（将其替换为 {cmd:\0}）。

{phang2}
4.  格式可以包含逗号而不是小数点，例如 {cmd:%9,2f}，
表示欧洲格式。

{pstd}
如果将 {cmd:fmtlist} 读入 C 数组 {cmd:char} {cmd:fmtlist[]}，那么
{cmd:&fmtlist[49*(i-1)]} 指向格式的起始地址，适用于第 {cmd:i} 个变量。

{pstd}
{cmd:lbllist} 包含与变量 1, ..., {cmd:nvar} 相关联的值格式名称。
每个值格式名称长 33 字节，并包括一个二进制零字符串结束标记。例如，

	0   33        66   99
	|    |         |    |
	{cmd:\0...yesno\0...\0...yesno\0...}

{pstd}
表示变量 1 和 3 没有关联值标签，而变量 2 和 4 都与名为 {cmd:yesno} 的值标签
相关联。如果将 {cmd:lbllist} 读入 C 数组 {cmd:char} {cmd:lbllist[]}，则
{cmd:&lbllist[33*(i-1)]} 指向与第 {cmd:i} 个变量相关联的标签名称的起始位置。


{marker variable_labels}{...}
{title:5.3  变量标签}

{pstd}
变量标签记录如下：

	内容                长度      格式     注释
	{hline 54}
	变量 1 的标签      81    char       \0 终止
	变量 2 的标签      81    char       \0 终止
	...
	变量 {cmd:nvar} 的标签   81    char       \0 终止
	{hline 54}
	总计              81*{cmd:nvar}

{pstd}
如果变量没有标签，则其标签的第一个字符为 \0。


{marker expansion_fields}{...}
{title:5.4  扩展字段}

{pstd}
扩展字段记录如下：

	内容                长度      格式     注释
	{hline 68}
	数据类型                1    字节       编码，仅定义 0 和 1
	长度                      4    int        按照 {cmd:byteorder} 编码
	内容                   len    变化

	数据类型                1    字节       编码，仅定义 0 和 1
	长度                      4    int        按照 {cmd:byteorder} 编码
	内容                   len    变化

	数据类型                1    字节       代码 0 表示结束
	长度                      4    int        0表示结束
	{hline 68}

{pstd}
扩展字段以代码 0 和长度 0 结束；在结束标记之前，可能有一个或多个独立的
数据块。扩展字段用于记录 Stata 独有且在其他数据管理软件中没有等价物的信息。
在写入数据时，扩展字段始终是可选的，通常读取 Stata 数据集的程序将希望忽略扩展字段。
这种格式使得这一过程变得简单。写入时，为该字段写入 5 字节的零；读取时，读取五个字节；
最后四个字节将告知下一个读取的大小，而您对此进行丢弃。然后继续这个过程，直到读取到5个零字节。

{pstd}
目前唯一定义的扩展字段是变量 {help char_zh:特征} 的类型 1 记录。
但是，该设计允许在 Stata 后续版本中包含新的扩展字段类型，而无需更改数据格式，因为未知的扩展类型可以简单跳过。

{pstd}
对于关心此格式的人，类型 1 记录的格式是：字节 0-32 处是以二进制零终止的变量名称，字节 33-65 处是以二进制零终止的特征名称，而字节 66 及之后的部分是定义内容的以二进制零终止的字符串。


{marker data}{...}
{title:5.5  数据}

{pstd}
数据按如下方式记录：

	内容                    长度             格式
	{hline 47}
	obs 1, var 1         按照 {cmd:typlist}    按照 {cmd:typlist}
	obs 1, var 2         按照 {cmd:typlist}    按照 {cmd:typlist}
	...
	obs 1, var {cmd:nvar}      按照 {cmd:typlist}    按照 {cmd:typlist}

	obs 2, var 1         按照 {cmd:typlist}    按照 {cmd:typlist}
	obs 2, var 2         按照 {cmd:typlist}    按照 {cmd:typlist}
	...
	obs 2, var {cmd:nvar}      按照 {cmd:typlist}    按照 {cmd:typlist}
	.
	.
	obs {cmd:nobs}, var 1      按照 {cmd:typlist}    按照 {cmd:typlist}
	obs {cmd:nobs}, var 2      按照 {cmd:typlist}    按照 {cmd:typlist}
	...
	obs {cmd:nobs}, var {cmd:nvar}   按照 {cmd:typlist}    按照 {cmd:typlist}
	{hline 47}

{pstd}
数据按第一观察的所有变量写入，然后是第二观察的所有数据，依此类推。
每个变量以其在 {cmd:typlist} 中定义的内部格式写入。所有值都按照 {cmd:byteorder} 写入。若字符串小于允许的空间，则以零结束，
若占满整个宽度则不以零结束。

{pstd}
此时可能会发生文件结束。如果发生此情况，则没有值标签可以读取。文件结束也可能出现在值标签之间。在文件结束时，所有数据都已处理。


{marker value_labels}{...}
{title:5.6  值标签}

{pstd}
如果没有值标签，则在读取数据时发生文件结束。如果存在值标签，则每个值标签以如下格式写入：

	内容                  长度   格式     注释
	{hline 67}
	{cmd:len}                      4   int        {cmd:value_label_table} 的长度
	{cmd:labname}                 33   char       \0 终止
	填充                  3
	{cmd:value_label_table}      {cmd:len}              见下一表
	{hline 67}

{pstd}
这将为文件中包含的每个值标签重复该操作。
{cmd:value_label_table} 的格式为：

	内容                  长度   格式     注释
	{hline 58}
	{cmd:n}                        4   int        条目数
	{cmd:txtlen}                   4   int        {cmd:txt[]} 的长度
	{cmd:off[]}                  4*{cmd:n}   int 数组  {cmd:txt[]} 偏移表
	{cmd:val[]}                  4*{cmd:n}   int 数组  排序值表
	{cmd:txt[]}               {cmd:txtlen}   char       文本表
	{hline 58}

{pstd}
{cmd:len}、{cmd:n}、{cmd:txtlen}、{cmd:off[]} 和 {cmd:val[]} 均按 {cmd:byteorder} 编码。{cmd:txt[]} 的最大标签长度为 32,000 个字符。Stata 
对可能包含超过该限制的标签的数据集在处理时是健壮的；超过限制的标签将在 {help use_zh} 过程中被丢弃。

{pstd}
例如，值标签表 {cmd:value_label_table} 对于 1<->yes 和 2<->no，在 HILO 格式下显现为：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 00   00 00 00 04
	      含义:        n = 2    txtlen = 7    off[0] = 0    off[1] = 4

字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 01   00 00 00 02    y  e  s 00  n  o 00
	      含义:   val[0] = 1    val[1] = 2    txt --->

{pstd}
解释是有 {cmd:n}=2 个值被映射。
被映射的值是 {cmd:val[0]}=1 和 {cmd:val[1]}=2。
对于 {cmd:val[0]} 对应的文本地址为 {cmd:off[0]}=0
（所以为 "{cmd:yes}"），而对于 {cmd:val[1]} 对应的文本地址为
{cmd:off[1]}=4（所以为 "{cmd:no}"）。

{pstd}
在 C 中解释此表格并不像看上去那样令人生畏。让 {cmd:(char *) p}
指代 {cmd:value_label_table} 所读取的内存区域。假设您的编译器使用 4 字节
{cmd:int}。以下清单使得解释表格变得更简单：

	{cmd}#define SZInt               4
	#define Off_n               0
	#define Off_nxtoff          SZInt
	#define Off_off             (SZInt+SZInt)
	#define Off_val(n)          (SZInt+SZInt+n*SZInt)
	#define Off_txt(n)          (Off_val(n) + n*SZInt)
	#define Len_table(n,nxtoff) (Off_txt(n) + nxtoff)

	#define Ptr_n(p)            ( (int *) ( ((char *) p) + Off_n ) )
	#define Ptr_nxtoff(p)       ( (int *) ( ((char *) p) + Off_nxtoff ) )
	#define Ptr_off(p)          ( (int *) ( ((char *) p) + Off_off ) )
	#define Ptr_val(p,n)        ( (int *) ( ((char *) p) + Off_val(n) ) )
	#define Ptr_txt(p,n)        ( (char *) ( ((char *) p) + Off_txt(n) ) ){txt}

{pstd}
现在您可以通过 {cmd:for(i=0; i < *Ptr_n(p); i++)} 来解读值 {cmd:*Ptr_val(p,i)}
与字符字符串 {cmd:Ptr_txt(p,i)} 映射之间的关系。

{pstd}
在分配内存给 {cmd:*p} 时，请记住表格可能会很大。限制为 {cmd:n}=65,536 个映射值，
每个值最大为 81 个字符（包括结束的零字节）。这样的表格将长达 5,823,712 字节。
没有用户可能会接近该限制，并且在任何情况下，在读取表格前的 8 个字节
（{cmd:n} 和 {cmd:txtlen}），您可以计算剩余长度为 2*4*{cmd:n}+{cmd:txtlen} 并
使用 {cmd:malloc()} 确定确切的大小。

{pstd}
构建表格则更棘手。最简单的方法是设定比 Stata 限制更小或相同的任意限制
来作为最大条数和总文本长度的上限，并简单地根据这些限制声明这三部分：
{cmd:off[]}、{cmd:val[]} 和 {cmd:txt[]}：

	{cmd}int off[MaxValueForN] ;
	int val[MaxValueForN] ;
	char txt[MaxValueForTxtlen] ;{txt}

{pstd}
Stata 的内部代码遵循更复杂的策略，总是将表格保持在压缩形式，并拥有
一个可以“添加一个位置”的例程。这较慢，但使内存需求不超过实际的表格大小。

{pstd}
无论如何，在添加新的条目到表格时，请记住 {cmd:val[]} 必须按升序排列：
{cmd:val[0]} < {cmd:val[1]} < ... < {cmd:val[n]}。

{pstd}
不要求 {cmd:off[]} 或 {cmd:txt[]} 必须按升序排列。我们之前提供的
1<->yes 和 2<->no 的表格示例：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 00   00 00 00 04
	      含义:        n = 2    txtlen = 7    off[0] = 0    off[1] = 4

字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 01   00 00 00 02    y  e  s 00  n  o 00
	      含义:   val[0] = 1    val[1] = 2    txt --->

{pstd}
这个表格也可以用以下方式记录：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 03   00 00 00 00
	      含义:        n = 2    txtlen = 7    off[0] = 3    off[1] = 0

字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 01   00 00 00 02    n  o 00  y  e  s 00
	      含义:   val[0] = 1    val[1] = 2    txt --->

{pstd}
但不能这样记录：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 04   00 00 00 00
	      含义:        n = 2    txtlen = 7    off[0] = 4    off[1] = 0

字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 02   00 00 00 01    y  e  s 00  n  o 00
	      含义:   val[0] = 2    val[1] = 1    txt --->

{pstd}
{cmd:off[]} 中值的无序并不会造成问题；无序的 {cmd:val[]} 值才会造成问题。
就构建表格而言，我们发现保持表格在增长时的有序性更加容易。这样可以高效地使用二分搜索例程来快速找到 {cmd:val[]} 中的适当位置。

{pstd}
以下例程将找到适当的插槽。它使用我们之前定义的清单，因此假定表格是压缩形式，
但这并不重要。将清单的定义更改为指向不同区域也很容易。

	{cmd}/*
	    slot = vlfindval(char *baseptr, int val)

	    在 baseptr 处查找值 val。
		如果找到：
			返回插槽号：  0, 1, 2, ...
		如果未找到：
			返回 k<0，使得 val 将进入插槽 -(k+1)
				k== -1        将进入插槽 0。
				k== -2        将进入插槽 1。
				k== -3        将进入插槽 2。
		*/

	int vlfindval(char *baseptr, int myval)
	{c -(}
		int	n ;
		int	lb, ub, try ;
		int	*val ;
		char    *txt ;
		int	*off ;
		int	curval ;

		n   = *Ptr_n(baseptr) ;
		val =  Ptr_val(baseptr, n) ;

		if (n==0) return(-1) ;  /* not found, insert into 0 */

					/* in what follows,		   */
					/* we know result between [lb,ub   */
					/* or it is not in the table	   */
		lb = 0 ;
		ub = n - 1 ;
		while (1) {c -(}
			try = (lb + ub) / 2 ;
			curval = val[try] ;
			if (myval == curval) return(try) ;
			if (myval<curval) {c -(}
				ub = try - 1 ;
				if (ub<lb) return(-(try+1)) ;
				/* because want to insert before try, ergo,
			   	want to return try, and transform is -(W+1). */
			{c )-}
			else /* myval>curval */ {c -(}
				lb = try + 1 ;
				if (ub<lb) return(-(lb+1)) ;
				/* because want to insert after try, ergo,
			   	want to return try+1 and transform is -(W+1) */
			{c )-}
		{c )-}
		/*NOTREACHED*/
	{c )-}{txt}


{pstd}
有关早期文档，请参见 {help dta_114_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dta_115.sthlp>}