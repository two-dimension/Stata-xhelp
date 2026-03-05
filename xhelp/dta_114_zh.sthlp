{smcl}
{* *! version 1.0.8  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] sysuse" "help sysuse_zh"}{...}
{vieweralsosee "[D] webuse" "help webuse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 1.2.2 示例数据集" "help dta_contents_zh"}{...}
{viewerjumpto "语法" "dta_114_zh##syntax"}{...}
{viewerjumpto "备注" "dta_114_zh##remarks"}
{help dta_114:English Version}
{hline}{...}
{title:标题}

{p2colset 5 30 32 2}{...}
{p2col :{hi:[P] 文件格式 .dta} {hline 2}}.dta 文件格式 114 的描述{p_end}
{p2colreset}{...}

{pstd}
{bf:警告:}
下面的条目描述了旧版 Stata {cmd:.dta} 文件格式的内容。
新版本的 Stata 继续读取，甚至可能写入这种旧格式。接下来是该 {cmd:.dta} 文件格式的原始帮助文件，当时它是当前文件格式。

{title:技术说明}

{pstd}
格式 114 与格式 115 完全相同，唯一的区别是版本号。
新版本号是因为引入了新的 {cmd:%tb} {help datetime_business_calendars_zh:商业日期格式}。
较旧的 Stata 将不知道如何处理它们。将版本号从 114 更改为 115 防止较旧的 Stata 读取可能包含 {cmd:%tb} 格式的数据集。

{marker syntax}{...}
{title:语法}

{pstd}
此条目中包含的信息具有高度技术性，可能对您没有兴趣。
我们详细描述 Stata {cmd:.dta} 数据集的格式，供有意编写 C 或其他语言读取和写入它们的人使用。

{marker remarks}{...}
{title:备注}

{pstd}
备注按照以下标题呈现：

	{help dta_114##intro:1.  引言}
	{help dta_114##versions:2.  Stata 版本和类型}
	{help dta_114##strings:3.  字符串的表示}
	{help dta_114##numbers:4.  数字的表示}
 	{help dta_114##definition:5.  数据集格式定义}
	    {help dta_114##header:5.1  头部}
	    {help dta_114##descriptors:5.2  描述符}
	    {help dta_114##variable_labels:5.3  变量标签}
	    {help dta_114##expansion_fields:5.4  扩展字段}
	    {help dta_114##data:5.5  数据}
	    {help dta_114##value_labels:5.6  值标签}

{marker intro}{...}
{title:1.  引言}

{pstd}
Stata 格式的数据集以一种通用的方式记录数据，适用于不一致的数据记录方式的计算机。
因此，同一数据集可以在不同的计算机（Windows、Unix 和 Mac 计算机）上无须转换地使用。
根据计算机，数据集分为两类：本地格式和外来格式的数据集。Stata 采用以下两条规则：

{p 8 13 2}
    R1.  在任何计算机上，Stata 只知道如何写入本地格式的数据集。

{p 8 13 2}
    R2.  在所有计算机上，Stata 可以读取外来格式和本地格式的数据集。

{pstd}
规则 R1 和 R2 确保 Stata 用户无需关心数据集格式。
如果您正编写一个读取和写入 Stata 数据集的程序，您必须确定是想遵循相同的规则，还是限制您的程序仅操作本地格式的数据集。
由于 Stata 遵循规则 R1 和 R2，因此这种限制并不会太牵制。如果用户有一个外来格式的数据集，他或她可以进入 Stata，{help use_zh} 数据，然后再次 {help save_zh}。

{marker versions}{...}
{title:2.  Stata 版本和类型}

{pstd}
Stata 不断更新，这些更新有时需要对 Stata 记录 {cmd:.dta} 数据集的方式进行更改。
本文档记录了被称为 {hi:format-114} 的数据集，这是最现代的格式。
Stata 本身可以读取旧格式，但每当写入数据集时，它都会以 {hi:114} 格式写入。

{pstd}
目前有三种 Stata 类型可用：
{help stataic_zh:Stata/IC}、{help SpecialEdition:Stata/SE} 和 {help statamp_zh:Stata/MP}。同样的 {hi:114} 格式被所有类型使用。
不同之处在于某些类型的数据集可以更大。

{marker strings}{...}
{title:3.  字符串的表示}

{phang}
1.  Stata 中的字符串长度可以从 1 到 244 字节。

{phang}
2.  如果字符串的长度小于声明的最大长度，Stata 会使用后缀二进制 0 ({cmd:\0}) 分隔符记录字符串。
    如果字符串的长度为最大长度，则不包含分隔符。

{phang}
3.  前导和尾随空格是重要的。

{phang}
4.  字符串使用 ASCII 编码。

{marker numbers}{...}
{title:4.  数字的表示}

{phang}
1.  数字作为 1 字节、2 字节和 4 字节的整数，以及 4 字节和 8 字节的浮点数表示。
    在浮点数的情况下，使用 ANSI/IEEE 标准 754-1985 格式。

{phang}
2.  所有数字类型的字节顺序在不同计算机间可能会有所不同。
    字节有两种顺序：从最低有效位到最高有效位，称为 LOHI，或者从最高有效位到最低有效位，称为 HILO。
    例如，奔腾处理器使用 LOHI 编码，而基于 Sun SPARC 的计算机使用 HILO 编码。
    Itanium 处理器较有趣，因为它们可以依赖操作系统而呈现 LOHI 或 HILO。
    Windows 和 Linux 下的 Itanium 使用 LOHI 编码，而 HP-UX 下的 Itanium 使用 HILO 编码。

{phang}
3.  在 LOHI 机器上阅读 HILO 数字，或在 HILO 机器上阅读 LOHI 数字时，请在解读数字之前执行以下操作：

	    byte          无需翻译
	    2 字节整型    交换字节 0 和 1
	    4 字节整型    交换字节 0 和 3，1 和 2
	    4 字节浮点    交换字节 0 和 3，1 和 2
	    8 字节浮点    交换字节 0 和 7，1 和 6，2 和 5，3 和 4

{phang}
4.  在书面文档中，数字的书写顺序是先列出最高有效字节。
    因此，{cmd:0x0001} 指的是在所有机器上逻辑值为 1 的 2 字节整型。

{phang}
5.  Stata 有五种数字数据类型。它们分别是：

	    {cmd:byte}          1 字节有符号整数
	    {cmd:int}           2 字节有符号整数
	    {cmd:long}          4 字节有符号整数
	    {cmd:float}         4 字节 IEEE 浮点数
	    {cmd:double}        8 字节 IEEE 浮点数

{phang}
6.  每种类型允许 27 个 {help missing_zh:缺失值代码}，称为 {cmd:.}, {cmd:.a}, {cmd:.b}, ..., {cmd:.z}。
    对于每种类型，允许的非缺失值范围和缺失值代码如下：

	    {cmd:byte}
		最小非缺失值    -127   (0x80)
		最大非缺失值    +100   (0x64)
		{cmd:.}的代码          +101   (0x65)
		{cmd:.a}的代码         +102   (0x66)
		{cmd:.b}的代码         +103   (0x67)
		...
		{cmd:.z}的代码         +127   (0x7f)

	    {cmd:int}
		最小非缺失值    -32767 (0x8000)
		最大非缺失值    +32740 (0x7fe4)
		{cmd:.}的代码          +32741 (0x7fe5)
		{cmd:.a}的代码         +32742 (0x7fe6)
		{cmd:.b}的代码         +32743 (0x7fe7)
		...
		{cmd:.z}的代码         +32767 (0x7fff)

	    {cmd:long}
		最小非缺失值    -2,147,483,647  (0x80000000)
		最大非缺失值    +2,147,483,620  (0x7fffffe4)
		{cmd:.}的代码          +2,147,483,621  (0x7fffffe5)
		{cmd:.a}的代码         +2,147,483,622  (0x7fffffe6)
		{cmd:.b}的代码         +2,147,483,623  (0x7fffffe7)
		...
		{cmd:.z}的代码         +2,147,483,647  (0x7fffffff)

	    {cmd:float}
		最小非缺失值    -1.701e+38  (-1.fffffeX+7e)  {it:(sic)}
		最大非缺失值    +1.701e+38  (+1.fffffeX+7e)
		{cmd:.}的代码                        (+1.000000X+7f)
		{cmd:.a}的代码                       (+1.001000X+7f)
		{cmd:.b}的代码                       (+1.002000X+7f)
		...
		{cmd:.z}的代码                       (+1.01a000X+7f)

	    {cmd:double}
		最小非缺失值    -1.798e+308 (-1.fffffffffffffX+3ff)
		最大非缺失值    +8.988e+307 (+1.fffffffffffffX+3fe)
		{cmd:.}的代码                        (+1.0000000000000X+3ff)
		{cmd:.a}的代码                       (+1.0010000000000X+3ff)
		{cmd:.b}的代码                       (+1.0020000000000X+3ff)
		...
		{cmd:.z}的代码                       (+1.01a0000000000X+3ff)

{pmore}
请注意，对于 {cmd:float}，所有 {it:z}>1.fffffeX+7e，对于 {cmd:double}，所有 {it:z}>1.fffffffffffffX+3fe 被视为缺失值，
而且仅有一部分值被标记为 {cmd:.}, {cmd:.a}, {cmd:.b}, ..., {cmd:.z}。
例如，介于 {cmd:.a} 和 {cmd:.b} 之间的值仍然被视为缺失值，
特别是，所有介于 {cmd:.a} 和 {cmd:.b} 之间的值统称为 {cmd:.a_}。
然而，记录这些值应当被避免。

{pmore}
在上面的表格中，我们使用了
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
表示法。左侧的数字应被解释为基数 16 的数字（小数点因而是基数 16 的点），右侧的数字（同样以基数 16 记录）应被视为 2 的幂 {it:(sic)}。
例如，

	    1.01aX+3ff = (1.01a) * 2^(3ff)                        (base 16)
		       = (1 + 0/16 + 1/16^2 + 10/16^3) * 2^1023   (base 10)

{pmore}
该
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
表示法可以轻松转换为 IEEE 8 字节双精度：
{cmd:1} 是隐藏位，小数点右侧的数字是尾数位，指数是 IEEE 指数的带符号形式（去掉偏移）。
例如，π = 3.1415927... 为

					    8 字节 IEEE, HILO
					 {hline 23}
	    π = +1.921fb54442d18X+001 = 40 09 21 fb 54 44 2d 18

				       = 18 2d 44 54 fb 21 09 40
					 {hline 23}
					    8 字节 IEEE, LOHI

{pmore}
将
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
转换为 IEEE 4 字节浮点数更为复杂，但同样规则适用： {cmd:1} 是隐藏位，小数点右侧的数字是尾数位，指数是 IEEE 指数的带符号形式（去掉偏移）。
更为复杂的原因在于 IEEE 4 字节格式中的符号和指数占用了 9 位，这并不是 4 的倍数，因此一切都被向右移动了一位。在浮点数中：

				      4 字节 IEEE, HILO
					 {hline 11}
	    π = +1.921fb60000000X+001 = 40 49 0f db

				       = db of 49 40
					 {hline 11}
				      4 字节 IEEE, LOHI

{pmore}
获取上述结果的最简单方法是先将
+1.921fb60000000X+001 转换为 8 字节双精度，然后再将 8 字节双精度转换为 4 字节浮点数。

{pmore}
无论如何，相关数字是

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
Stata 格式的数据集包含五个组成部分，顺序为：

	1.  头部
	2.  描述符
	3.  变量标签
	4.  扩展字段
	5.  数据
	6.  值标签

{marker header}{...}
{title:5.1  头部}

{pstd}
头部定义为

	内容                长度    格式    注释
	{hline}
	{cmd:ds_format}                1    byte      包含 114 = 0x72
	{cmd:byteorder}                1    byte      0x01 -> HILO, 0x02 -> LOHI
	{cmd:filetype}                 1    byte      0x01
	未使用                   1    byte      0x00
	{cmd:nvar} (变量数)    2    int       按照 {cmd:byteorder} 编码
	{cmd:nobs} (观测数)     4    int       按照 {cmd:byteorder} 编码
	{cmd:data_label}              81    char      数据集标签，\0 终止
	{cmd:time_stamp}              18    char      保存的日期/时间，\0 终止
	{hline}
	合计                  109

{pstd}
{cmd:time_stamp[17]} 必须设置为二进制零。写入数据集时，您可以将时间戳记录为空 {cmd:time_stamp[0]}=\0)，但仍必须将 {cmd:time_stamp[17]} 设置为二进制零。如果您选择写入时间戳，其格式为：

	{it:dd Mon yyyy hh}{cmd::}{it:mm}

{pstd}
{it:dd} 和 {it:hh} 可以写有或没有前导零，但是如果省略前导零，则必须在其位置上替换为空值。

{marker descriptors}{...}
{title:5.2  描述符}

{pstd}
描述符定义为

	内容                长度    格式       注释
	{hline}
	{cmd:typlist}               {cmd:nvar}    byte array
	{cmd:varlist}            33*{cmd:nvar}    char array
	{cmd:srtlist}          2*({cmd:nvar}+1)   int array    按照 {cmd:byteorder} 编码
	{cmd:fmtlist}            49*{cmd:nvar}    char array
	{cmd:lbllist}            33*{cmd:nvar}    char array
	{hline}

{pstd}
{cmd:typlist} 存储每个变量的类型，1, ..., nvar。
类型的编码如下：

		类型          代码
		{hline 20}
		{cmd:str1}        1 = 0x01
		{cmd:str2}        2 = 0x02
		...
		{cmd:str244}    244 = 0xf4
		{cmd:byte}      251 = 0xfb {it:(sic)}
		{cmd:int}       252 = 0xfc
		{cmd:long}      253 = 0xfd
		{cmd:float}     254 = 0xfe
		{cmd:double}    255 = 0xff
		{hline 20}

{pstd}
Stata 存储五种数字类型： {cmd:double}、{cmd:float}、{cmd:long}、{cmd:int} 和 {cmd:byte}。
如果 {cmd:nvar}==4，则 {cmd:typlist} 为 0xfcfffdfe 表示变量 1 为 {cmd:int}，变量 2 为 {cmd:double}，变量 3 为 {cmd:long}，变量 4 为 {cmd:float}。类型高于 0x01 到 0xf4 用于表示字符串。例如，最大长度为 8 的字符串将有类型 {cmd:0x08}。如果将 {cmd:typlist} 读取到 C 数组 {cmd:char} {cmd:typlist[]} 中，则 {cmd:typlist[i-1]} 表示变量 {cmd:i} 的类型。

{pstd}
{cmd:varlist} 包含 Stata 变量 1, ..., {cmd:nvar} 的名称，每个长度最长为 32 个字符，并且每个以二进制零（\0）终止。
例如，如果 {cmd:nvar}==4，

	0       33        66          99
	|        |         |           |
	{cmd:vbl1\0...myvar\0...thisvar\0...lstvar\0...}

{pstd}
这表示变量 1 的名称为 {cmd:vbl1}，变量 2 名为 {cmd:myvar}，变量 3 为 {cmd:thisvar}，变量 4 为 {cmd:lstvar}。用句点表示的字节位置将包含随机数字（并且请注意我们省略了一些句点）。
如果将 {cmd:varlist} 读取到 C 数组 {cmd:char} {cmd:varlist[]} 中，则 {cmd:&varlist[(i-1)*33]} 指向第 {cmd:i} 个变量的名称。

{pstd}
{cmd:srtlist} 指定数据集的排序顺序，并以 (int) 0 终止。每 2 字节是 1 个 int，包含变量编号或零。零标记 {cmd:srtlist} 的结束，之后的数组位置包含随机垃圾。例如，如果数据未排序，第一个 int 将包含零，其后面的 int 将包含垃圾。如果 {cmd:nvar}==4，记录将呈现为

	{cmd:0000................}

{pstd}
如果数据按某个变量 {cmd:myvar} 排序，并且该变量在 {cmd:varlist} 中是第二个变量，则记录将呈现为

	{cmd:00020000............}  （如果 {cmd:byteorder}==HILO）
	{cmd:02000000............}  （如果 {cmd:byteorder}==LOHI）

{pstd}
如果数据集按 {cmd:myvar} 排序，并在 {cmd:myvar} 内按 {cmd:vbl1} 排序，并且 {cmd:vbl1} 是数据集中的第一个变量，记录将呈现为

	{cmd:000200010000........}  （如果 {cmd:byteorder}==HILO）
	{cmd:020001000000........}  （如果 {cmd:byteorder}==LOHI）

{pstd}
如果将 {cmd:srtlist} 读取到 C 数组 {cmd:short} {cmd:int} {cmd:srtlist[]} 中，则 {cmd:srtlist[0]} 将是第一个排序变量的编号，或者，如果数据未排序，则为零。如果该编号不为零，则 {cmd:srtlist[1]} 将是第二个排序变量的编号，或者，如果没有第二个排序变量，则为零，依此类推。

{pstd}
{cmd:fmtlist} 包含变量 1, ..., {cmd:nvar} 的格式。每个格式的长度为 49 字节，并包括一个二进制零末尾标记。举例来说，

	{cmd:%9.0f\0..........................................%8.2f\0......}
	{cmd:....................................%20.0g\0..................}
	{cmd:.......................%td\0..................................}
	{cmd:..........%tcDDmonCCYY_HH:MM:SS.sss\0......................}

{pstd}
表示变量 1 的格式为 {cmd:%9.0f}，变量 2 的格式为 {cmd:%8.2f}，变量 3 的格式为 {cmd:%20.0g} 等等。请注意，这些是 Stata 格式，而不是 C 格式。

{phang2}
1.  以 {cmd:%t} 或 {cmd:%-t} 开头的格式是 Stata 的日期和时间格式。

{phang2}
2.  Stata 有一种旧的 {cmd:%}{cmd:d} 格式符号，某些数据集仍然使用它们。
　　格式 {cmd:%}{cmd:d}... 相当于现代格式 {cmd:%td}...，而 {cmd:%}{cmd:-}{cmd:d}... 相当于 {cmd:%-td}...

{phang2}
3.  以 {cmd:gc} 或 {cmd:fc} 结尾的非日期格式与 C 的 {cmd:g} 和 {cmd:f} 格式相似，但带有逗号。大多数转换例程会忽略尾随的 {cmd:c}（将其更改为 {cmd:\0}）。

{phang2}
4.  格式可以包含逗号而不是小数点，例如 {cmd:%9,2f}，表示欧洲格式。

{pstd}
如果将 {cmd:fmtlist} 读取到 C 数组 {cmd:char} {cmd:fmtlist[]} 中，则 {cmd:&fmtlist[49*(i-1)]} 指向第 {cmd:i} 个变量格式的起始地址。

{pstd}
{cmd:lbllist} 包含与变量 1, ..., {cmd:nvar} 相关的值格式的名称。每个值格式名称长度为 33 字节，并包括一个二进制零末尾标记。例如，

	0   33        66   99
	|    |         |    |
	{cmd:\0...yesno\0...\0...yesno\0...}

{pstd}
表示变量 1 和 3 没有与之相关的值标签，而变量 2 和 4 都与名为 {cmd:yesno} 的值标签相关。如果将 {cmd:lbllist} 读取到 C 数组 {cmd:char} {cmd:lbllist[]} 中，则 {cmd:&lbllist[33*(i-1)]} 指向与第 {cmd:i} 个变量相关的标签名称起始位置。

{marker variable_labels}{...}
{title:5.3  变量标签}

{pstd}
变量标签记录如下：

	内容                长度    格式     注释
	{hline 54}
	变量 1 的标签      81    char       \0 终止
	变量 2 的标签      81    char       \0 终止
	...
	变量 {cmd:nvar} 的标签   81    char       \0 终止
	{hline 54}
	合计              81*{cmd:nvar}

{pstd}
如果变量没有标签，则其标签的第一个字符为 \0。

{marker expansion_fields}{...}
{title:5.4  扩展字段}

{pstd}
扩展字段记录如下：

	内容                长度    格式     注释
	{hline 68}
	数据类型                1    byte       编码，仅定义 0 和 1
	len                      4    int        按 {cmd:byteorder} 编码
	内容                   len    变动

	数据类型                1    byte       编码，仅定义 0 和 1
	len                      4    int        按 {cmd:byteorder} 编码
	内容                   len    变动

	数据类型                1    byte       代码 0 意味着结束
	len                      4    int        0 意味着结束
	{hline 68}

{pstd}
扩展字段以代码 0 和长度 0 结束；在终止标记之前，可以没有或多个单独的数据块。
扩展字段用于记录在 Stata 中独特且在其他数据管理包中没有等价物的信息。
在写入数据时，扩展字段始终是可选的，一般情况下，读取 Stata 数据集的程序将希望忽略扩展字段。
这种格式使其变得容易。在写入时，写入 5 个零字节作为该字段。读取时，读取 5 个字节；最后 4 个字节现在告知您下一个读取的大小，然后丢弃。然后继续这种方式，直到读取到 5 个零字节。

{pstd}
目前为止定义的唯一扩展字段是变量的类型 1 记录的 {help char_zh:特征}。
然而，设计允许在 Stata 的后续版本中包含新类型的扩展字段，而无需更改数据格式，因为未知的扩展类型可以简单地跳过。

{pstd}
对于关心的人，类型 1 记录的格式是在 0-32 字节中使用二进制零终止的变量名称，在 33-65 字节中使用二进制零终止的特征名称，以及在 66 字节到记录结束的二进制零终止字符串定义内容。

{marker data}{...}
{title:5.5  数据}

{pstd}
数据记录如下：

	内容                  长度         格式
	{hline 47}
	观测 1，变量 1         按 {cmd:typlist}    按 {cmd:typlist}
	观测 1，变量 2         按 {cmd:typlist}    按 {cmd:typlist}
	...
	观测 1，变量 {cmd:nvar}      按 {cmd:typlist}    按 {cmd:typlist}

	观测 2，变量 1         按 {cmd:typlist}    按 {cmd:typlist}
	观测 2，变量 2         按 {cmd:typlist}    按 {cmd:typlist}
	...
	观测 2，变量 {cmd:nvar}      按 {cmd:typlist}    按 {cmd:typlist}
	.
	.
	观测 {cmd:nobs}, 变量 1      按 {cmd:typlist}    按 {cmd:typlist}
	观测 {cmd:nobs}, 变量 2      按 {cmd:typlist}    按 {cmd:typlist}
	...
	观测 {cmd:nobs}, 变量 {cmd:nvar}   按 {cmd:typlist}    按 {cmd:typlist}
	{hline 47}

{pstd}
数据以第一观测的所有变量之后，接着是第二观测的所有数据，依此类推的方式写入。每个变量以其自身的内部格式写入，如 {cmd:typlist} 中所示。所有值按 {cmd:byteorder} 写入。如果字符串短于允许的空间，则以空终止，如果占满整个宽度，则不进行空终止。

{pstd}
此时可能发生文件结束。如果发生，则没有值标签可以读取。文件结束也可能发生在值标签之间。在文件结束时，所有数据已经处理完毕。

{marker value_labels}{...}
{title:5.6  值标签}

{pstd}
如果没有值标签，读取数据时会发生文件结束。如果有值标签，则每个值标签的写入方式为：

	内容               len   格式     注释
	{hline 67}
	{cmd:len}                     4   int        {cmd:value_label_table} 的长度
	{cmd:labname}                33   char       \0 终止
	填充                  3
	{cmd:value_label_table}      {cmd:len}              见下表
	{hline 67}

{pstd}
这将为文件中包含的每个值标签重复。
{cmd:value_label_table} 的格式为：

	内容               len   格式     注释
	{hline 58}
	{cmd:n}                        4   int        条目数
	{cmd:txtlen}                   4   int        {cmd:txt[]} 的长度
	{cmd:off[]}                  4*{cmd:n}   int array  {cmd:txt[]} 偏移表
	{cmd:val[]}                  4*{cmd:n}   int array  排序值表
	{cmd:txt[]}               {cmd:txtlen}   char       文本表
	{hline 58}

{pstd}
{cmd:len}、{cmd:n}、{cmd:txtlen}、{cmd:off[]} 和 {cmd:val[]} 依照 {cmd:byteorder} 编码。标签的 {cmd:txt[]} 最大长度为 32,000 个字符。Stata 对可能包含超出该限制的标签数据集保持 robustness；超出限制的标签（如有）将在 {help use_zh} 时被丢弃。

{pstd}
例如，对于 1<->yes 和 2<->no，{cmd:value_label_table} 以 HILO 格式表示如下：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 00   00 00 00 04
	      含义:        n = 2    txtlen = 7    off[0] = 0    off[1] = 4

	字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 01   00 00 00 02    y  e  s 00  n  o 00
	      含义:   val[0] = 1    val[1] = 2    txt --->

{pstd}
解释是存在 {cmd:n}=2 的值被映射。
被映射的值是 {cmd:val[0]}=1 和 {cmd:val[1]}=2。
对于 {cmd:val[0]} 的对应文本将在 {cmd:off[0]}=0（因此为 "{cmd:yes}"），
对于 {cmd:val[1]} 的对应文本将在 {cmd:off[1]}=4（因此为 "{cmd:no}"）。

{pstd}
在 C 中解释该表并不像看起来那么艰巨。让 {cmd:(char *) p} 指代读取的 {cmd:value_label_table} 的内存区域。假设您的编译器使用 4 字节的 {cmd:int}。
以下声明使解释表更容易：

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
现在情况是 {cmd:for(i=0; i < *Ptr_n(p); i++)}，值 {cmd:*Ptr_val(p,i)} 被映射到字符字符串 {cmd:Ptr_txt(p,i)}。

{pstd}
在为 {cmd:*p} 分配内存时，请记得表可能很大。限制为 {cmd:n}=65,536 的映射值，每个值最长可达 81 个字符（包括终止字节）。
这样的表将长达 5,823,712 字节。没有用户可能会达到该限制，无论如何，在读取表之前的 8 字节（{cmd:n} 和 {cmd:txtlen}），您可以计算剩余长度为
2*4*{cmd:n}+{cmd:txtlen} 并 {cmd:malloc()} 精确的数额。

{pstd}
构建该表更为复杂。最简单的方法是设置任意限制等于或小于 Stata 所允许的最大条目和总文本长度，并且简单地根据这些限制声明
三个部分 {cmd:off[]}、{cmd:val[]} 和 {cmd:txt[]}：

	{cmd}int off[MaxValueForN] ;
	int val[MaxValueForN] ;
	char txt[MaxValueForTxtlen] ;{txt}

{pstd}
Stata 的内部代码遵循更复杂的策略，始终保持表的压缩形式，并且有一个例程将“添加一个位置”到表中。这种方式较慢，但使内存需求保持与表的实际大小相一致。

{pstd}
无论如何，在将新条目添加到表时，请记得 {cmd:val[]} 必须按升序排列： {cmd:val[0]} < {cmd:val[1]} < ... < {cmd:val[n]}。

{pstd}
不要求 {cmd:off[]} 或 {cmd:txt[]} 保持升序。我们之前提供的例子是将 1<->yes 和 2<->no 映射的表：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 00   00 00 00 04
	      含义:        n = 2    txtlen = 7    off[0] = 0    off[1] = 4

	字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 01   00 00 00 02    y  e  s 00  n  o 00
	      含义:   val[0] = 1    val[1] = 2    txt --->

{pstd}
该表可以同样被记录为：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 03   00 00 00 00
	      含义:        n = 2    txtlen = 7    off[0] = 3    off[1] = 0

	字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 01   00 00 00 02    n  o 00  y  e  s 00
	      含义:   val[0] = 1    val[1] = 2    txt --->

{pstd}
但是不能被记录为：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 04   00 00 00 00
	      含义:        n = 2    txtlen = 7    off[0] = 4    off[1] = 0

	字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 02   00 00 00 01    y  e  s 00  n  o 00
	      含义:   val[0] = 2    val[1] = 1    txt --->

{pstd}
导致问题的不是 {cmd:off[]} 的无序值，而是 {cmd:val[]} 的无序值。在表构建方面，我们发现保持表的排序更容易。这样可以使用二分搜索例程迅速找到在 {cmd:val[]} 中的适当位置。

{pstd}
以下例程将查找适当的插槽。它使用我们之前定义的声明，因此假设表处于压缩形式，但这并不重要。更改声明的定义以指向单独区域也很简单。

	{cmd}/*
	    slot = vlfindval(char *baseptr, int val)

	    在 baseptr 位置查找值 val。
		如果找到：
			返回插槽编号：  0, 1, 2, ...
		如果未找到：
			返回 k<0 使得 val 将放在插槽 -(k+1)
				k== -1        将放在插槽 0。
				k== -2        将放在插槽 1。
				k== -3        将放在插槽 2。
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

		if (n==0) return(-1) ;  /* 未找到，插入 0 */

					/* 在下面，我们知道的结果在 [lb,ub] 内     */
					/* 否则，它不在表中      */
		lb = 0 ;
		ub = n - 1 ;
		while (1) {c -(}
			try = (lb + ub) / 2 ;
			curval = val[try] ;
			if (myval == curval) return(try) ;
			if (myval<curval) {c -(}
				ub = try - 1 ;
				if (ub<lb) return(-(try+1)) ;
				/* 因为想要在 try 之前插入，因此
			   	想要返回 try，然后变换为 -(W+1)。 */
			{c )-}
			else /* myval>curval */ {c -(}
				lb = try + 1 ;
				if (ub<lb) return(-(lb+1)) ;
				/* 因为想要在 try 之后插入，因此
			   	想要返回 try+1，并变换为 -(W+1) */
			{c )-}
		{c )-}
		/*未到达的*/
	{c )-}{txt}

{pstd}
有关早期文档，请参见 {help dta_113_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dta_114.sthlp>}