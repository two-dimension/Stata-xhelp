{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] sysuse" "help sysuse_zh"}{...}
{vieweralsosee "[D] webuse" "help webuse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 1.2.2 示例数据集" "help dta_contents_zh"}{...}
{viewerjumpto "语法" "dta_113_zh##syntax"}{...}
{viewerjumpto "备注" "dta_113_zh##remarks"}
{help dta_113:English Version}
{hline}{...}
{title:标题}

{p2colset 5 44 46 2}{...}
{p2col :{hi:[P] 文件格式 .dta} (113版本) {hline 2}}.dta文件格式描述{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
此条目中包含的信息非常技术性，可能对您并不感兴趣。我们详细描述了Stata {cmd:.dta} 数据集的格式，以便那些有兴趣编写可以读写这些文件的C或其他语言程序的人。

{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

	{help dta_113##intro:1. 介绍}
	{help dta_113##versions:2. Stata的版本和类型}
	{help dta_113##strings:3. 字符串的表示}
	{help dta_113##numbers:4. 数字的表示}
 	{help dta_113##definition:5. 数据集格式定义}
	    {help dta_113##header:5.1  头部}
	    {help dta_113##descriptors:5.2  描述符}
	    {help dta_113##variable_labels:5.3  变量标签}
	    {help dta_113##expansion_fields:5.4  扩展字段}
	    {help dta_113##data:5.5  数据}
	    {help dta_113##value_labels:5.6  值标签}


{marker intro}{...}
{title:1.  介绍}

{pstd}
Stata格式的数据集以一种通用的方式记录数据，能够在不同的计算机之间使用，这些计算机对于数据的记录方式可能存在不一致。针对每一台计算机，数据集分为两类：本机格式和外部格式的数据集。Stata遵循以下两条规则：

{p 8 13 2}
    R1.  在任何计算机上，Stata只知道如何写入本机格式的数据集。

{p 8 13 2}
    R2.  在所有计算机上，Stata能够读取外部格式以及本机格式的数据集。

{pstd}
规则R1和R2确保了Stata用户不需要关注数据集的格式。如果您正在编写一个读取和写入Stata数据集的程序，您需要决定是否遵循相同的规则，或者仅限制程序仅处理本机格式的数据集。由于Stata遵循规则R1和R2，这样的限制并不会过于苛刻。如果用户拥有一个外部格式的数据集，他或她可以进入Stata，{help use_zh}数据，然后再{help save_zh}一次。

{marker versions}{...}
{title:2.  Stata的版本和类型}

{pstd}
Stata不断更新，这些更新有时需要对Stata记录 {cmd:.dta} 数据集的方式进行更改。本文档记录了被称为 {hi:format-113} 的数据集，这是最新的格式。Stata本身可以读取旧格式，但每当它写入数据集时，它都会使用 {hi:113} 格式。

{pstd}
目前有三种类型的Stata可用：{help stataic_zh:Stata/IC}、{help SpecialEdition:Stata/SE} 和 {help statamp_zh:Stata/MP}。所有类型都使用相同的 {hi:113} 格式。不同之处在于某些版本的数据集可以更大。

{marker strings}{...}
{title:3.  字符串的表示}

{phang}
1.  Stata中的字符串长度可以从1到244个字节不等。

{phang}
2.  如果字符串的长度小于最大声明长度，Stata会使用尾部二进制0 ({cmd:\0}) 分隔符来记录字符串。如果字符串的长度达到最大，则不带分隔符记录。

{phang}
3.  前导和尾随空格是重要的。

{phang}
4.  字符串使用ASCII编码。


{marker numbers}{...}
{title:4.  数字的表示}

{phang}
1.  数字以1字节、2字节和4字节整数及4字节和8字节浮点数表示。浮点数使用ANSI/IEEE标准754-1985格式。

{phang}
2.  所有数字类型的字节顺序在不同机器上各不相同。字节可以是小端到大端（LOHI），或大端到小端（HILO）。例如，Pentium使用LOHI编码，Sun SPARC计算机使用HILO编码。基于Itanium的计算机则根据操作系统的不同可能使用LOHI或HILO编码。在Itanium的Windows和Linux上使用LOHI编码，而在Itanium的HP-UX上使用HILO编码。

{phang}
3.  在小端机器上读取HILO数字，或在大端机器上读取LOHI数字之前，请执行以下操作以便正确解释数字：

	    字节          无需转换
	    2字节整数    交换字节0和1
	    4字节整数    交换字节0和3，1和2
	    4字节浮点数  交换字节0和3，1和2
	    8字节浮点数  交换字节0和7，1和6，2和5，3和4

{phang}
4.  在书面文档中，数字按最重要字节列出。因此，{cmd:0x0001} 指的是在所有机器上取值为1的2字节整数。

{phang}
5.  Stata有五种数值类型。它们是

	    {cmd:byte}          1字节有符号整数
	    {cmd:int}           2字节有符号整数
	    {cmd:long}          4字节有符号整数
	    {cmd:float}         4字节IEEE浮点数
	    {cmd:double}        8字节IEEE浮点数

{phang}
6.  每种类型允许27种 {help missing_zh:缺失值代码}，称为 {cmd:.}, {cmd:.a}, {cmd:.b}, ..., {cmd:.z}。对于每种类型，允许的非缺失值范围和缺失值代码如下：

	    {cmd:byte}
		最小非缺失值    -127   (0x80)
		最大非缺失值    +100   (0x64)
		{cmd:.}的代码            +101   (0x65)
		{cmd:.a}的代码           +102   (0x66)
		{cmd:.b}的代码           +103   (0x67)
		...
		{cmd:.z}的代码           +127   (0x7f)

	    {cmd:int}
		最小非缺失值    -32767 (0x8000)
		最大非缺失值    +32740 (0x7fe4)
		{cmd:.}的代码            +32741 (0x7fe5)
		{cmd:.a}的代码           +32742 (0x7fe6)
		{cmd:.b}的代码           +32743 (0x7fe7)
		...
		{cmd:.z}的代码           +32767 (0x7fff)

	    {cmd:long}
		最小非缺失值    -2,147,483,647  (0x80000000)
		最大非缺失值    +2,147,483,620  (0x7fffffe4)
		{cmd:.}的代码            +2,147,483,621  (0x7fffffe5)
		{cmd:.a}的代码           +2,147,483,622  (0x7fffffe6)
		{cmd:.b}的代码           +2,147,483,623  (0x7fffffe7)
		...
		{cmd:.z}的代码           +2,147,483,647  (0x7fffffff)

	    {cmd:float}
		最小非缺失值    -1.701e+38  (-1.fffffeX+7e)  {it:(同上)}
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
注意，对于 {cmd:float}，所有 {it:z}>1.fffffeX+7e，对于 {cmd:double}，所有 {it:z}>1.fffffffffffffX+3fe 都被视为缺失值，且只是 {cmd:.}, {cmd:.a}, {cmd:.b}, ..., {cmd:.z}中标记的一部分。例如，介于 {cmd:.a} 和 {cmd:.b} 之间的值仍被视为缺失，特别是 ،{cmd:.a} 和 {cmd:.b} 之间的所有值共同被称为 {cmd:.a_}。然而，记录这些值仍应避免。

{pmore}
在上表中，我们使用了 {c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>} 表示法。{cmd:X}左侧的数字应视为16进制数字（小数点为十六进制小数点），右侧的数字（也以16进制记录）应视为2的幂 {it:(同上)}。例如，

	    1.01aX+3ff = (1.01a) * 2^(3ff)                        (16进制)
		       = (1 + 0/16 + 1/16^2 + 10/16^3) * 2^1023   (10进制)

{pmore}
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>} 表示法可以方便地转换为IEEE 8字节双精度：
{cmd:1}是隐藏位，小数点右侧的数字是尾数位，指数是以有符号（去除偏移量）形式表示的IEEE指数。
例如，圆周率 π = 3.1415927... 表示为

					    8字节IEEE, HILO
					 {hline 23}
	    π = +1.921fb54442d18X+001 = 40 09 21 fb 54 44 2d 18

				       = 18 2d 44 54 fb 21 09 40
					 {hline 23}
					    8字节IEEE, LOHI

{pmore}
将 {c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>} 转换为IEEE 4字节浮点数则更复杂，但相同原则适用： {cmd:1} 是隐藏位，小数点右侧的数字是尾数位，指数是以有符号（去除偏移量）形式表示的IEEE指数。成功的困难点在于IEEE 4字节格式的符号位和指数占用9位，无法被四整除，因此所有位右移一位。在浮点数中：

				      4字节IEEE, HILO
					 {hline 11}
	    π = +1.921fb60000000X+001 = 40 49 0f db

				       = db 49 40
					 {hline 11}
				      4字节IEEE, LOHI

{pmore}
获得上述结果最简单的方法是首先将 +1.921fb60000000X+001 转换为8字节的双精度，然后将8字节的双精度转换为4字节的浮点数。

{pmore}
无论如何，相关数字为

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
Stata格式的数据集包含五个部分，依次为：

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
	{cmd:ds_format}                1    字节      包含 113 = 0x71
	{cmd:byteorder}                1    字节      0x01 -> HILO, 0x02 -> LOHI
	{cmd:filetype}                 1    字节      0x01
	未使用                   1    字节      0x01
	{cmd:nvar} (变量数量)    2    int       按照 {cmd:byteorder} 编码
	{cmd:nobs} (观察数量)     4    int       按照 {cmd:byteorder} 编码
	{cmd:data_label}              81    char      数据集标签，\0结束
	{cmd:time_stamp}              18    char      保存的日期/时间，\0结束
	{hline}
	总计                  109


{pstd}
{cmd:time_stamp[17]} 必须设置为二进制零。当写入数据集时，可以将时间戳记录为空 {cmd:time_stamp[0]}=\0)，但您仍然必须将 {cmd:time_stamp[17]} 设置为二进制零。如果选择写入时间戳，其格式为：

	{it:dd Mon yyyy hh}{cmd::}{it:mm}

{pstd}
{it:dd} 和 {it:hh} 可以带有或不带有前导零，但如果省略前导零，必须用空白替代。

{marker descriptors}{...}
{title:5.2  描述符}

{pstd}
描述符定义为

	内容                长度    格式       注释
	{hline}
	{cmd:typlist}               {cmd:nvar}    字节数组
	{cmd:varlist}            33*{cmd:nvar}    字符数组
	{cmd:srtlist}          2*({cmd:nvar}+1)   int数组    按照 {cmd:byteorder} 编码
	{cmd:fmtlist}            12*{cmd:nvar}    字符数组
	{cmd:lbllist}            33*{cmd:nvar}    字符数组
	{hline}


{pstd}
{cmd:typlist} 存储每个变量的类型，从1到 {cmd:nvar}。
类型的编码为：

		类型          代码
		{hline 20}
		{cmd:str1}        1 = 0x01
		{cmd:str2}        2 = 0x02
		...
		{cmd:str244}    244 = 0xf4
		{cmd:byte}      251 = 0xfb  {it:(同上)}
		{cmd:int}       252 = 0xfc
		{cmd:long}      253 = 0xfd
		{cmd:float}     254 = 0xfe
		{cmd:double}    255 = 0xff
		{hline 20}

{pstd}
Stata存储五种数值类型：{cmd:double}、{cmd:float}、{cmd:long}、{cmd:int}和{cmd:byte}。如果 {cmd:nvar}==4，{cmd:typlist}为0xfcfffdfe表示变量1是{cmd:int}，变量2是{cmd:double}，变量3是{cmd:long}，变量4是{cmd:float}。0x01到0xf4之间的类型用于表示字符串。例如，最大长度为8的字符串的类型为 {cmd:0x08}。如果 {cmd:typlist} 被读取到C数组 {cmd:char} {cmd:typlist[]} 中，则 {cmd:typlist[i-1]} 表示变量 {cmd:i} 的类型。

{pstd}
{cmd:varlist} 包含Stata变量1到 {cmd:nvar} 的名称，每个变量长度最多32个字符，且每个变量以二进制零 (\0) 结束。例如，如果 {cmd:nvar}==4，

	0       33        66          99
	|        |         |           |
	{cmd:vbl1\0...myvar\0...thisvar\0...lstvar\0...}


{pstd}
将表示变量1的名称为 {cmd:vbl1}，变量2为 {cmd:myvar}，变量3为 {cmd:thisvar}，变量4为 {cmd:lstvar}。由点表示的位置将包含随机数字（并且请注意我们省略了一些点）。如果 {cmd:varlist} 被读取到C数组 {cmd:char} {cmd:varlist[]} 中，则 {cmd:&varlist[(i-1)*33]} 指向第 {cmd:i} 个变量的名称。

{pstd}
{cmd:srtlist} 指定数据集的排序顺序，以(int)0结束。每2字节是1个int，包含一个变量编号或零。零表示 {cmd:srtlist} 的结束，之后的数组位置包含随机值。例如，如果数据未排序，则第一个int会包含零，之后的int会包含随机值。如果 {cmd:nvar}==4，记录会显现为

	{cmd:0000................}

{pstd}
如果数据集按变量 {cmd:myvar} 排序，且该变量在 {cmd:varlist} 的第二个位置，则记录显示如下：

	{cmd:00020000............}  (如果 {cmd:byteorder}==HILO)
	{cmd:02000000............}  (如果 {cmd:byteorder}==LOHI)

{pstd}
如果数据集按 {cmd:myvar} 排序，并在 {cmd:myvar} 内部按 {cmd:vbl1} 排序，且 {cmd:vbl1} 是数据集中的第一个变量，则记录显示如下：

	{cmd:000200010000........}  (如果 {cmd:byteorder}==HILO)
	{cmd:020001000000........}  (如果 {cmd:byteorder}==LOHI)


{pstd}
如果 {cmd:srtlist} 被读取到C数组 {cmd:short} {cmd:int} {cmd:srtlist[]} 中，则 {cmd:srtlist[0]} 将是第一个排序变量的编号，如果数据未排序则为0。如果编号不为零，则 {cmd:srtlist[1]} 将是第二个排序变量的编号，如果没有第二个排序变量则为0，以此类推。

{pstd}
{cmd:fmtlist} 包含变量1到 {cmd:nvar} 的格式。每个格式长度为12字节，并包含一个二进制零结束标记。例如，

	{cmd:%9.0f\0......%8.2f\0......%20.0g\0.....%d\0.........%dD_m_Y\0....}

{pstd}
表示变量1的格式为 {cmd:%9.0f}，变量2的格式为 {cmd:%8.2f}，变量3的格式为 {cmd:%20.0g} 等等。注意这些是Stata格式，而不是C格式。特别是，{cmd:%d}不是整数格式，而是Stata的默认日期格式。{cmd:%dD_m_Y}是详细的Stata日期格式。请注意，

{phang2}
1.  以 {cmd:%d}、{cmd:%-d}、{cmd:%t} 和 {cmd:%-t} 开头的格式是日期格式。

{phang2}
2.  非日期格式以 {cmd:gc} 或 {cmd:fc} 结尾的格式类似于C的 {cmd:g} 和 {cmd:f} 格式，但带有逗号。大多数转换例程会忽略结尾的 {cmd:c} （将其改变为 {cmd:\0}）。

{phang2}
3.  格式可以用逗号而不是小数点，例如 {cmd:%9,2f}，表示欧洲格式。

{pstd}
如果 {cmd:fmtlist} 被读取到C数组 {cmd:char} {cmd:fmtlist[]} 中，则 {cmd:&fmtlist[12*(i-1)]} 指向第 {cmd:i} 个变量格式的起始地址。

{pstd}
{cmd:lbllist} 包含与变量1到 {cmd:nvar} 相关的值格式名称。每个值格式名称的长度为33字节，并包含一个二进制零结束标记。例如，

	0   33        66   99
	|    |         |    |
	{cmd:\0...yesno\0...\0...yesno\0...}

{pstd}
表示变量1和变量3没有与之关联的值标签，而变量2和变量4都与名为 {cmd:yesno} 的值标签相关联。如果 {cmd:lbllist} 被读取到C数组 {cmd:char} {cmd:lbllist[]} 中，则 {cmd:&lbllist[33*(i-1)]} 指向第 {cmd:i} 个变量关联值标签名称的起始点。

{marker variable_labels}{...}
{title:5.3  变量标签}

{pstd}
变量标签记录为

	内容                长度    格式     注释
	{hline 54}
	变量1的标签      81    char       \0结束
	变量2的标签      81    char       \0结束
	...
	变量 {cmd:nvar} 的标签   81    char       \0结束
	{hline 54}
	总计              81*{cmd:nvar}

{pstd}
如果变量没有标签，则其标签的第一个字符为\0。

{marker expansion_fields}{...}
{title:5.4  扩展字段}

{pstd}
扩展字段记录为

	内容                长度    格式     注释
	{hline 68}
	数据类型                1    字节       编码，仅定义0和1
	长度                      4    int        按照 {cmd:byteorder} 编码
	内容                   len    变化

	数据类型                1    字节       编码，仅定义0和1
	长度                      4    int        按照 {cmd:byteorder} 编码
	内容                   len    变化

	数据类型                1    字节       代码0表示结束
	长度                      4    int        0表示结束
	{hline 68}

{pstd}
扩展字段以代码0和长度0结束；在终止标记之前，可以有多个独立的数据块。
扩展字段用于记录Stata特有的信息，而在其他数据管理软件中没有对应项。
写入数据时扩展字段始终是可选的，并且一般来说，读取Stata数据集的程序将希望忽略扩展字段。
这个格式使得这一点很简单。在写入时，对于这个字段写入5个字节的零。在读取时，读取五个字节；最后四个字节现在告诉您下一个读取的大小，您可以将其丢弃。然后继续这样操作，直到您读取到5个零字节。

{pstd}
目前定义的唯一扩展字段是变量的类型1记录{help char_zh:特性}。然而，设计允许可以在Stata后续版本中包括新的类型的扩展字段，而无须更改数据格式，因为未知扩展类型可以简单跳过。

{pstd}
对于关心的人来说，类型1记录的格式是二进制零结尾的变量名（字节0-32），二进制零结尾的特性名称（字节33-65），以及定义内容的二进制零结尾的字符串（字节66到记录结尾）。

{marker data}{...}
{title:5.5  数据}

{pstd}
数据记录为

	内容                      长度             格式
	{hline 47}
	观察1，变量1         按 {cmd:typlist}    按 {cmd:typlist}
	观察1，变量2         按 {cmd:typlist}    按 {cmd:typlist}
	...
	观察1，变量 {cmd:nvar}      按 {cmd:typlist}    按 {cmd:typlist}

	观察2，变量1         按 {cmd:typlist}    按 {cmd:typlist}
	观察2，变量2         按 {cmd:typlist}    按 {cmd:typlist}
	...
	观察2，变量 {cmd:nvar}      按 {cmd:typlist}    按 {cmd:typlist}
	.
	.
	观察 {cmd:nobs}，变量1      按 {cmd:typlist}    按 {cmd:typlist}
	观察 {cmd:nobs}，变量2      按 {cmd:typlist}    按 {cmd:typlist}
	...
	观察 {cmd:nobs}，变量 {cmd:nvar}   按 {cmd:typlist}    按 {cmd:typlist}
	{hline 47}

{pstd}
数据按照每个观察处理，首先写入第一观察的所有变量，接着是第二观察的数据，依此类推。每个变量以其自身的内部格式写入，如在 {cmd:typlist} 中所给出。所有值按 {cmd:byteorder} 写入。字符串在短于允许空间时以空字符结束，但如果占用完整宽度，则不会结束。

{pstd}
此时可能会遇到文件结束。如果发生这种情况，表示没有值标签可读取。值标签之间亦可能会出现文件结束。在文件结束时，所有数据都已经处理完毕。

{marker value_labels}{...}
{title:5.6  值标签}

{pstd}
如果没有值标签，则在读取数据时将会遇到文件结束。如果有值标签，每个值标签被写入为

	内容                 长度   格式      注释
	{hline 67}
	{cmd:len}                      4   int      {cmd:value_label_table}的长度
	{cmd:labname}                 33   char      \0结束
	填充                  3
	{cmd:value_label_table}      {cmd:len}              请参见下一个表
	{hline 67}

{pstd}
并且这将为文件中包含的每个值标签重复。
{cmd:value_label_table}的格式为

	内容                 长度   格式     注释
	{hline 58}
	{cmd:n}                        4   int       项数
	{cmd:txtlen}                   4   int       {cmd:txt[]}的长度
	{cmd:off[]}                  4*{cmd:n}   int数组  {cmd:txt[]}的偏移表
	{cmd:val[]}                  4*{cmd:n}   int数组  排序值表
	{cmd:txt[]}               {cmd:txtlen}   char       文本表
	{hline 58}

{pstd}
{cmd:len}、{cmd:n}、{cmd:txtlen}、{cmd:off[]} 和 {cmd:val[]} 是按照 {cmd:byteorder} 编码的。每个标签的 {cmd:txt[]} 的最大长度为32,000个字符。Stata对可能包含超过此限制标签的数据集是坚韧的；在 {help use_zh} 时，将丢弃超出限制的标签。

{pstd}
例如，值标签表为1<->yes和2<->no，以HILO格式表示，将是：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 00   00 00 00 04
	      意义:        n = 2    txtlen = 7    off[0] = 0    off[1] = 4

字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 01   00 00 00 02    y  e  s 00  n  o 00
	      意义:   val[0] = 1    val[1] = 2    txt --->

{pstd}
解释此表在C中并不像看起来的那么可怕。让 {cmd:(char *) p} 指代读取 {cmd:value_label_table} 的内存区域。假设编译器使用4字节 {cmd:int}。以下声明使得解释表变得更简单：

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
此时，{cmd:for(i=0; i < *Ptr_n(p); i++)}，值 {cmd:*Ptr_val(p,i)} 被映射到字符字符串 {cmd:Ptr_txt(p,i)}。

{pstd}
在为 {cmd:*p} 分配内存时，请记住，该表可能很大。限制为 {cmd:n}=65,536个映射值，每个值可长达81个字符（包括null终止字节）。这样的表将是5,823,712字节长。用户不太可能接近此限制，并且在读取表之前的8个字节（{cmd:n}和{cmd:txtlen}）后，您可以计算剩余长度为 2*4*{cmd:n}+{cmd:txtlen} 并使用 {cmd:malloc()} 申请确切的数量。

{pstd}
构造该表更为复杂。最简单的方法是设置小于或等于Stata允许的最大条目数和总文本长度的任意限制，并简单地根据这些限制声明三个数组 {cmd:off[]}、{cmd:val[]} 和 {cmd:txt[]}：

	{cmd}int off[MaxValueForN] ;
	int val[MaxValueForN] ;
	char txt[MaxValueForTxtlen] ;{txt}

{pstd}
Stata的内部代码遵循更复杂的策略，一直将表保存在压缩形式中，并且有一个例程将“添加一个位置”到表中。这种方法较慢，但保持内存需求与表的实际大小相同。

{pstd}
无论如何，在向表中添加新条目时，请记住 {cmd:val[]} 必须按升序排列： {cmd:val[0]} < {cmd:val[1]} < ... < {cmd:val[n]}。

{pstd}
并不是要求 {cmd:off[]} 或 {cmd:txt[]} 保持升序。我们先前提供的示例映射1<->yes和2<->no的表格：

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 00   00 00 00 04
	      意义:        n = 2    txtlen = 7    off[0] = 0    off[1] = 4

	字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 01   00 00 00 02    y  e  s 00  n  o 00
	      意义:   val[0] = 1    val[1] = 2    txt --->

{pstd}
这个表也可以记录为

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 03   00 00 00 00
	      意义:        n = 2    txtlen = 7    off[0] = 3    off[1] = 0

	字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 01   00 00 00 02    n  o 00  y  e  s 00
	      意义:   val[0] = 1    val[1] = 2    txt --->

{pstd}
但不能记录为

	字节位置:  00 01 02 03   04 05 06 07   08 09 10 11   12 13 14 15
	     内容:  00 00 00 02   00 00 00 07   00 00 00 04   00 00 00 00
	      意义:        n = 2    txtlen = 7    off[0] = 4    off[1] = 0

	字节位置:  16 17 18 19   20 21 22 23   24 25 26 27 28 29 30
	     内容:  00 00 00 02   00 00 00 01    y  e  s 00  n  o 00
	      意义:   val[0] = 2    val[1] = 1    txt --->

{pstd}
导致问题的不是 {cmd:off[]} 的无序值，而是 {cmd:val[]} 的无序值。就表的构造而言，我们发现保持排序表在增长时更容易。这样可以使用二分查找例程快速找到在 {cmd:val[]} 中的合适位置。

{pstd}
以下例程将找到适当的位置。它使用我们之前定义的声明，因此它假设表为压缩形式，但这并不重要。改变声明以指向不同区域也很简单。

	{cmd}/*
	    slot = vlfindval(char *baseptr, int val)

	    在baseptr处查找值val。
		如果找到：
			返回插槽编号：  0, 1, 2, ...
		如果未找到：
			返回 k<0，使得val将放入槽 -(k+1)
				k== -1        将放入槽0。
				k== -2        将放入槽1。
				k== -3        将放入槽2。
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

		if (n==0) return(-1) ;  /* 未找到，插入到0 */

					/* 在以下情况下，		   */
					/* 我们知道结果在 [lb,ub] 之间，   */
					/* 或者它不在表中			   */
		lb = 0 ;
		ub = n - 1 ;
		while (1) {c -(}
			try = (lb + ub) / 2 ;
			curval = val[try] ;
			if (myval == curval) return(try) ;
			if (myval<curval) {c -(}
				ub = try - 1 ;
				if (ub<lb) return(-(try+1)) ;
				/* 因为希望在try之前插入，因此，返回try，改变为 -(W+1) */
			{c )-}
			else /* myval>curval */ {c -(}
				lb = try + 1 ;
				if (ub<lb) return(-(lb+1)) ;
				/* 因为希望在try之后插入，因此，返回try+1，改变为 -(W+1) */
			{c )-}
		{c )-}
		/*未达到*/
	{c )-}{txt}

{pstd}
请参见 {help dta_zh} 以获取当前版本的格式。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dta_113.sthlp>}