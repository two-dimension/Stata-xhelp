{smcl}
{* *! version 1.0.5  19apr2019}{...}
{vieweralsosee "[P] 文件格式 .dta" "mansection P Fileformats.dta"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] sysuse" "help sysuse_zh"}{...}
{vieweralsosee "[D] webuse" "help webuse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 1.2.2 示例数据集" "help dta_contents_zh"}{...}
{viewerjumpto "描述" "dta_119_zh##description"}{...}
{viewerjumpto "备注" "dta_119_zh##remarks"}
{help dta_119:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[P] 文件格式 .dta} {hline 2}}.dta 文件格式的描述{p_end}
{p2col:}({mansection P Fileformats.dta:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
下面描述的是 Stata {cmd:.dta} 数据集的格式。
该描述高度技术化，旨在为需要编写 C 或其他语言程序以读写它们的人提供帮助。

{pstd}
这里描述的格式自 Stata 15 起生效，称为 {cmd:.dta} 格式 119。仅用于拥有超过 32,767 个变量的数据集。Stata 15 和 16 使用的主要格式，适用于包含 32,767 个变量或更少的数据集，为 118，这也是 Stata 14 使用的格式。有关格式 118 的文档，请参见 {help dta_zh}。有关早期文件格式的文档，请参见 {help dta_117_zh}。

{pstd}
{error:我们将在格式 118 与 119 之间的变化处用红色突出显示。}


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:.dta} 文件的格式随着时间的推移而变化。Stata 16 写入的文件被称为 {cmd:.dta} 格式-118 和格式-119，并可以读取曾经发布的所有格式文件。{cmd:.dta} 格式的最新历史如下：

	格式        截至当前版本
	{hline 39}
          119     Stata 15 和 16（当数据集有超过 32,767 个变量时）
          {help dta_zh:118}     Stata 14, 15 和 16
	  {help dta_117_zh:117}     Stata 13 
	  116     内部; 从未发布
	  {help dta_115_zh:115}     Stata 12
	  {help dta_114_zh:114}     Stata 10
	  {help dta_113_zh:113}     Stata  8
	{hline 39}

{marker f119}{...}
{pstd}
格式 119 的详细信息在下面列出。

{pstd}
备注在以下标题下进行介绍：

	{help dta_119##intro:1.  介绍}
	{help dta_119##versions:2.  Stata 的版本和类型}
	{help dta_119##strings:3.  字符串的表示}
	{help dta_119##numbers:4.  数字的表示}
 	{help dta_119##definition:5.  数据集格式定义}
	    {help dta_119##header:5.1  头部}
                 {help dta_119##header_release:5.1.1  文件格式 ID}
                 {help dta_119##header_byteorder:5.1.2  字节顺序}
                 {help dta_119##header_K:5.1.3  K, 变量数量}
                 {help dta_119##header_N:5.1.4  N, 观察数量}
                 {help dta_119##header_label:5.1.5  数据集标签}
                 {help dta_119##header_timestamp:5.1.6  时间戳}
	    {help dta_119##map:5.2  映射}
	    {help dta_119##variabletypes:5.3  变量类型}
	    {help dta_119##variablenames:5.4  变量名称}
	    {help dta_119##sortlist:5.5  观察排序}
	    {help dta_119##formats:5.6  显示格式}
	    {help dta_119##labelnames:5.7  值标签名称}
	    {help dta_119##variablelabels:5.8  变量标签}
	    {help dta_119##characteristics:5.9  特征}
	    {help dta_119##data:5.10 数据}
            {help dta_119##strls:5.11 字符串长度}
	         {help dta_119##strls_vo:5.11.1 (v,o) 值}
	         {help dta_119##strls_gso:5.11.2 GSOs}
	         {help dta_119##strls_advw:5.11.3 写 strLs 的建议}
	         {help dta_119##strls_advwb:5.11.4 写 3 和 5 字节整数的建议}
	         {help dta_119##strls_advr:5.11.5 读取 strLs 的建议}
	         {help dta_119##strls_advrb:5.11.6 读取 6 字节整数的建议}
	    {help dta_119##value_labels:5.12 值标签}


{marker intro}{...}
{title:1.  介绍}

{pstd}
Stata 格式数据集以一种通用的方式记录数据，以在不同计算机之间进行数据传输。这样，同一数据集可以在 Windows、Unix 和 Mac 计算机上使用，无需转换。根据计算机，数据集分为两类：本地格式和外部格式数据集。Stata 遵循以下两个规则：

{p 8 13 2}
    R1.  在特定计算机上，Stata 仅能写入本地格式
	 数据集。

{p 8 13 2}
    R2.  尽管如此，Stata 可以 {it:read} 所有数据集格式，无论是 
         外部格式还是本地格式。 

{pstd}
规则 R1 和 R2 确保 Stata 用户无需担心数据集格式。如果你正在编写一个程序来读写 Stata 数据集，你将需要确定是否想遵循相同的规则，或者限制你的程序仅操作本地格式数据集。由于 Stata 遵循规则 R1 和 R2，这样的限制不会太苛刻。如果用户有一个外部格式的数据集，他或她可以进入 Stata， {help use_zh} 数据，然后再 {help save_zh} 它。

{marker versions}{...}
{title:2.  Stata 的版本和类型}

{pstd}
Stata 不断进行更新，这些更新有时需要对 Stata 记录 {cmd:.dta} 数据集的方式进行更改。本文档描述了被称为 {it:format-119} 的数据集，这是两种现代格式之一。Stata 本身可以读取较旧的格式，但每当它写入数据集时，它会以格式 118（如果有 32,767 个变量或更少）或格式 119（如果有超过 32,767 个变量）写入数据集。

{pstd}
目前有三种 Stata 的版本可用：
{help stataic_zh:Stata/IC}、{help SpecialEdition:Stata/SE} 和
{help statamp_zh:Stata/MP}。它们都使用 118 格式，如果有超过 32,767 个变量，则 Stata/MP 使用 119 格式。

{marker strings}{...}
{title:3.  字符串的表示}

{pstd}
{bf:字符串在 Stata 中以 UTF-8 编码}。我们指的是所有
字符串，无论是数据、变量名称、显示格式等。

{pstd}
每个 UTF-8 字符消耗 1 到 4 字节的存储空间。因此，UTF-8 字符串的字节长度和字符长度是不同的。包含 5 个字符的字符串的字节长度可以在 5 到 20 之间变化。

{pstd}
Stata 通常在字符串的末尾放置一个二进制零（\0）。
有一些例外，因此在涉及字符串时，请仔细阅读 {cmd:.dta} 格式规范。

{pstd} 
变量名称的记录是尾随 \0 的示例。Stata 允许长度最多为 32 个字符的变量名称。
这意味着必须为存储变量名称分配 32*4+1 = 129 字节。

{pstd}
ASCII 是 UTF-8 的适当子集。0x01 到 0x7e 之间的 UTF-8 字符具有通常的 ASCII 解释。

{pstd}
现在让我们转向存储在数据中的字符串（变量和观察值）。

{phang}
1.  存储在数据中的字符串是 UTF-8 编码的。

{phang}
2.  Stata 有两种字符串存储格式，用户称之为 
    {cmd:str}{it:#} 
    和 {cmd:strL}。{it:#} 记录存储字符串所需的字节数。大多数字符串以 {cmd:str}{it:#}
    格式记录，但这取决于用户。{cmd:strL} 存储格式
    允许更长的字符串，并允许通用（二进制）字符串。

{pmore}
    顺便说一下，StataCorp 的内部行话是将 {cmd:str}{it:#} 
    字符串称为 "strfs"（发音为 {it:sturfs}），将 {cmd:strLs}
    称为 "strLs"（发音为 {it:sturls}）。strf 中的 {it:f} 
    代表固定分配长度，这就是 strfs 在文件中书写的方式。

{phang}
3.  我们在第 {help dta_119##strls:5.11} 节讨论 {cmd:strL} 格式字符串。

{phang}
4.  如果字符串的字节长度小于声明的最大长度，则 strfs 用尾随的二进制零（\0）分隔。
如果字符串的长度达到最大值，则记录该字符串时不会添加分隔符。因此，{cmd:str40}
    变量的观察值可以包含长度为 0 到 40 字节的字符串。

{pmore}
    为清楚起见，我们将考虑一个 {cmd:str4} 变量。
    在第一观察值中，变量的值可能是 "Mary"。
    "Mary" 将存储在 4 字节字段中，而无需尾随 \0。
    在第二观察值中，该值可能为 "Bob"。 "Bob" 将被存储为 "Bob\0"。

{phang}
5.  前导和尾随空格是重要的。

{marker numbers}{...}
{title:4.  数字的表示}

{phang}
1.  数字表示为 1、2 和 4 字节整数，以及 4 和 8 字节浮点数。如果是浮点数，则使用 ANSI/IEEE 标准 754-1985 格式， 在此处考虑的二进制浮点数相当于 IEEE 标准 754-2008。

{phang}
2.  所有数字类型的字节顺序因计算机而异。字节的顺序为最低有效字节到最高有效字节，称为 LSF，或最高有效字节到最低有效字节，称为 MSF。例如，基于 Intel 的计算机主要使用 LSF 编码，基于 Sun SPARC 的计算机使用 MSF 编码，Itanium 基于的计算机则有趣，它们可以是 LSF 或 MSF，这取决于操作系统。Windows 和 Linux 在 Itanium 上使用 LSF 编码，而 HP-UX 在 Itanium 上使用 MSF 编码。

{phang}
3.  在 LSF 机器上读取 MSF 数字或在 MSF 机器上读取 LSF 数字时，请在解释数字之前执行以下操作：

	    字节          无需转换
	    2 字节整数    交换字节 0 和 1
	    4 字节整数    交换字节 0 和 3，1 和 2
	    4 字节浮点数  交换字节 0 和 3，1 和 2
	    8 字节浮点数  交换字节 0 和 7，1 和 6，2 和 5，3 和 4

{phang}
4.  在书面文档中，数字的书写方式是最有效字节首先列出。因此，{cmd:0x0001} 指的是
    一个 2 字节整数获取逻辑值 1。

{phang}
5.  Stata 有五种数字数据类型。它们是

	    {cmd:byte}          1 字节有符号整数
	    {cmd:int}           2 字节有符号整数
	    {cmd:long}          4 字节有符号整数
	    {cmd:float}         4 字节 IEEE 浮点数
	    {cmd:double}        8 字节 IEEE 浮点数

{phang}
6.  每种类型允许 27 {help missing_zh:缺失值代码}，称为 
    {cmd:.}, {cmd:.a}, {cmd:.b}, ..., {cmd:.z}。
    对于每种类型，允许的非缺失值范围和缺失值代码如下所示：

	    {cmd:byte}
		最小非缺失值    -127   (0x80)
		最大非缺失值    +100   (0x64)
		代码为 {cmd:.}            +101   (0x65)
		代码为 {cmd:.a}           +102   (0x66)
		代码为 {cmd:.b}           +103   (0x67)
		...
		代码为 {cmd:.z}           +127   (0x7f)

	    {cmd:int}
		最小非缺失值    -32767 (0x8000)
		最大非缺失值    +32740 (0x7fe4)
		代码为 {cmd:.}            +32741 (0x7fe5)
		代码为 {cmd:.a}           +32742 (0x7fe6)
		代码为 {cmd:.b}           +32743 (0x7fe7)
		...
		代码为 {cmd:.z}           +32767 (0x7fff)

	    {cmd:long}
		最小非缺失值    -2,147,483,647  (0x80000000)
		最大非缺失值    +2,147,483,620  (0x7fffffe4)
		代码为 {cmd:.}            +2,147,483,621  (0x7fffffe5)
		代码为 {cmd:.a}           +2,147,483,622  (0x7fffffe6)
		代码为 {cmd:.b}           +2,147,483,623  (0x7fffffe7)
		...
		代码为 {cmd:.z}           +2,147,483,647  (0x7fffffff)

	    {cmd:float}
		最小非缺失值    -1.701e+38  (-1.fffffeX+7e)  {it:(sic)}
		最大非缺失值    +1.701e+38  (+1.fffffeX+7e)
		代码为 {cmd:.}                        (+1.000000X+7f)
		代码为 {cmd:.a}                       (+1.001000X+7f)
		代码为 {cmd:.b}                       (+1.002000X+7f)
		...
		代码为 {cmd:.z}                       (+1.01a000X+7f)

	    {cmd:double}
		最小非缺失值    -1.798e+308 (-1.fffffffffffffX+3ff)
		最大非缺失值    +8.988e+307 (+1.fffffffffffffX+3fe)
		代码为 {cmd:.}                        (+1.0000000000000X+3ff)
		代码为 {cmd:.a}                       (+1.0010000000000X+3ff)
		代码为 {cmd:.b}                       (+1.0020000000000X+3ff)
		...
		代码为 {cmd:.z}                       (+1.01a0000000000X+3ff)

{pmore}
注意，对于 {cmd:float}，所有 {it:z}>1.fffffeX+7e，对于 {cmd:double}，所有 {it:z}>1.fffffffffffffX+3fe 被视为缺失值，并且仅是标记为 {cmd:.}, {cmd:.a}, {cmd:.b},
..., {cmd:.z} 值的一部分。例如，介于 {cmd:.a} 和 {cmd:.b} 之间的值仍被认为是缺失的，特别是 {cmd:.a} 和 {cmd:.b} 之间的所有值统称为 {cmd:.a_}。然而，应该避免记录这些值。

{pmore}
在上表中，我们使用了
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
表示法。{cmd:X} 左侧的数字应被解释为基于 16 的数字（小数点因此是基于 16 的点），右侧的数字（也以基于 16 的格式记录）则应被解释为 2 的指数 {it:(sic)}。例如，

	    1.01aX+3ff = (1.01a) * 2^(3ff)                        (基于 16)
		       = (1 + 0/16 + 1/16^2 + 10/16^3) * 2^1023   (基于 10)

{pmore}
此表示法易于转换为 IEEE 8 字节的双精度浮点数：
{cmd:1} 是隐藏位，十六进制点右侧的数字是尾数位，指数是 IEEE 指数的带符号（去掉偏移）形式。
例如，pi = 3.1415927...  为

					    8 字节 IEEE，MSF
					 {hline 23}
	    pi = +1.921fb54442d18X+001 = 40 09 21 fb 54 44 2d 18

				       = 18 2d 44 54 fb 21 09 40
					 {hline 23}
					    8 字节 IEEE，LSF

{pmore}
将
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
转换为 IEEE 4 字节浮点数会更困难，但同样的规则适用：{cmd:1} 是隐藏位，十六进制点右侧的数字是尾数位，指数是 IEEE 指数的带符号（去掉偏移）形式。使其更困难的是，IEEE 4 字节格式的符号和指数占用 9 位，这不是四的倍数，因此所有内容都偏移了一位。在浮点数中：

				      4 字节 IEEE，MSF
					 {hline 11}
	    pi = +1.921fb60000000X+001 = 40 49 0f db

				       = db of 49 40
					 {hline 11}
				      4 字节 IEEE，LSF

{pmore}
获得上述结果的最简单方法是首先将 +1.921fb60000000X+001 转换为 8 字节双精度浮点数，然后将 8 字节双精度浮点数转换为 4 字节浮点数。

{pmore}
无论如何，相关数字是

	    V            值                MSF              LSF
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
包含两个变量的 Stata 数据集，一个名为 {cmd:myfloat} 和 
{cmd:myint} -- {cmd:myfloat} 是 Stata 4 字节 {cmd:float} 类型，{cmd:myint}
是 Stata 2 字节 {cmd:int} 类型 -- 并且包含一条观察，
{cmd:myfloat} = {cmd:myint} = 0，于 2017年3月10日下午2:23 写入硬盘，数据集的样子如下：

        {hline 40} {it:文件开始} {hline 5}
	<stata_dta>

	    <header>
		<release>{red:119}</release>
		<byteorder>MSF</byteorder>
		<K>{rm:{red:{it:00000002}}}</K>
		<N>{rm:{it:0000000000000001}}</N>
		<label>{rm:{it:000b}}示例数据</label>
		<timestamp>{rm:{it:11}}2017年3月10日 14:23</timestamp>
	    </header>

	    <map>
		{it:0000000000000000}
		{it:0000000000000099}
		{it:0000000000000141}
		{it:0000000000000139}
		{it:0000000000000190}
		{it:00000000000001ab}
		{it:0000000000000220}
		{it:000000000000034e}
		{it:0000000000000371}
		{it:0000000000000384}
		{it:0000000000000393}
		{it:00000000000003b0}
		{it:00000000000003bc}
	    </map>

	    <variable_types>
            {rm:{it:fff7}}
	    {rm:{it:fff9}}
            </variable_types>

	    <varnames>
                 myfloat{rm:{it:00}}........................
                 myint{rm:{it:00}}..........................
            </varnames>

            <sortlist>
                {rm:{it:00000000}}
            </sortlist>

            <formats>
                %9.0g{rm:{it:00}}...............................
                %8.0g{rm:{it:00}}...............................
            </formats>

            <value_label_names>
		{rm:{it:00}}................................
		{rm:{it:00}}................................
            </value_label_names>

            <variable_labels>
		{rm:{it:00}}................................................
		{rm:{it:00}}................................................
            </variable_labels>

            <characteristics>
            </characteristics>

            <data>
		{rm:{it:000000000000}}
            </data>

	    <strls>
	    </strls>

	    <value_labels>
	    </value_labels>

	</stata_dta>{rm}
        {hline 40} {it:文件结束} {hline 5}

{pstd}
我们在演示中对间距进行了自由处理。文件实际上是连在一起的，因而看起来更像这样，

        {hline 40} {it:文件开始} {hline 5}
	<stata_dta><header><release>{red:119}</release><byteorder>MSF</byteorder><K>{red:{rm:{it:00000002}}}</K><N>{rm:{it:0000000000000001}}</N><label>{rm:{it:000b}}示例数据</label><timestamp>{rm:{it:11}}2017年3月10日 14:23</timestamp></header><map>{it:0000000000000000}{it:0000000000000099}{it:0000000000000141}{it:0000000000000139}{it:0000000000000190}{it:00000000000001ab}{it:0000000000000220}{it:000000000000034e}{it:0000000000000371}{it:0000000000000384}{it:0000000000000393}{it:00000000000003b0}{it:00000000000003bc}</map><variable_types>{rm:{it:fff7}}{rm:{it:fff9}}</variable_types><varnames>myfloat{rm:{it:00}}............................myint{rm:{it:00}}..........................</varnames><sortlist>{rm:{it:00000000}}</sortlist><formats>%9.0g{rm:{it:00}}...............................%8.0g{rm:{it:00}}...............................</formats><value_label_names>{rm:{it:00}}................................{rm:..{it:0}}{rm:{it:0}}................................</value_label_names><variable_labels>{rm:{it:00}}................................................{rm:{it:00}}................................................</variable_labels><characteristics></characteristics><data>{rm:{it:000000000000}}</data><strls></strls><value_labels></value_labels></stata_dta>{rm}
        {hline 40} {it:文件结束} {hline 5}

{pstd}
我们使用十六进制值以斜体显示二进制内容。
{it:00} 例如，表示 1 字节的二进制零。<timestamp> 后面的 {it:11} 表示记录十六进制 11 的 1 字节，相当于
十进制 17，而 17 是随后记录的日期戳的长度："2017年3月10日 14:23"。
我们显示可能包含随机值的字节--它们应该被忽略--使用句点。我们省略了一些句点字节。
例如，我们仅显示了为变量名称分配的 129 字节中的 32 字节。

{pstd}
119 格式的 {cmd:.dta} 文件以 {cmd:<stata_dta>} 开始，并以 {cmd:</stata_dta>} 结束：

                         {cmd:<stata_dta>}..........{cmd:</stata_dta>}
                        /                                  \
                 {it:文件开始                        文件结束}

{pstd}
在那些标记之间出现

        头部             {cmd:<header>}..............{cmd:</header>}
	文件映射         {cmd:<map>}.................{cmd:</map>}
        变量类型         {cmd:<variable_types>}......{cmd:</variable_types>}
        变量名称         {cmd:<varnames>}............{cmd:</varnames>}
        排序顺序         {cmd:<sortlist>}............{cmd:</sortlist>}
        变量 %fmt      {cmd:<formats>}.............{cmd:</formats>}
        值标签名称      {cmd:<value_label_names>}...{cmd:</value_label_names>}
        变量标签         {cmd:<variable_labels>}.....{cmd:</variable_labels>}
        特征             {cmd:<characteristics>}.....{cmd:</characteristics>}
        数据本身         {cmd:<data>}................{cmd:</data>}
        strLs             {cmd:<strls>}...............{cmd:</strls>}
        值标签          {cmd:<value_labels>}........{cmd:</value_labels>}

{pstd}
每对标记必须出现，即使内容为空，并且必须按所示顺序出现。



{marker header}{...}
{title:5.1  头部}

{pstd}
头部定义为

	{cmd:<header>}...{cmd:</header>}

{pstd}
在这些标记之间出现

        文件格式 ID     {cmd:<release>}...{cmd:</release>}
        字节顺序        {cmd:<byteorder>}...{cmd:</byteorder>}
        变量数量       {cmd:<K>}...{cmd:</K>}
        观察数量      {cmd:<N>}...{cmd:</N>}
        数据集标签      {cmd:<label>}...{cmd:</label>}
        时间戳        {cmd:<timestamp>}...{cmd:</timestamp>}

{pstd}
每个标记必须出现，并且必须按照所示顺序出现。


{marker header_release}{...}
{title:5.1.1  文件格式 ID}

{pstd}
{it:文件格式 ID} 记录为

              {bf:<release>}{red:{bf:119}}{bf:</release>}


{marker header_byteorder}{...}
{title:5.1.2  字节顺序}

{pstd}
{it:字节顺序} 记录为 

              {cmd:<byteorder>}{it:byteorder}{cmd:</byteorder>}

{pstd}
其中 {it:byteorder} 为 {cmd:MSF} 或 {cmd:LSF}。

{pstd}
{cmd:MSF} 代表最高有效字节优先。例如，记录为 2 字节整数的数字 1 将是 {it:00} 后跟 {it:01}：{it:0001}。

{pstd}
{cmd:LSF} 代表最低有效字节优先。例如，记录为 2 字节整数的数字 1 将是 {it:01} 后跟 {it:00}：{it:0100}。

{marker header_K}{...}
{title:5.1.3  K, 变量数量}

{pstd}
{it:K}，存储在数据集中的变量数量，记录为 

              {cmd:<K>}{red:{it:bbbb}}{cmd:</K>}

{pstd}
其中 {it:K} = {it:bbbb} 是 4 字节无符号整数字段，按照 {it:byteorder} 记录。
{red:在格式 118 中，K 在 2 字节字段中记录。}


{marker header_N}{...}
{title:5.1.4  N, 观察数量}

{pstd}
{it:N}，存储在数据集中的观察数量，记录为 

              {bf:<N>}{it:bbbbbbbb}{bf:</N>}

{pstd}
其中 {it:N} = {it:bbbbbbbb} 是 8 字节无符号整数字段，按照 {it:byteorder} 记录。


{marker header_label}{...}
{title:5.1.5  数据集标签}

{pstd}
数据集标签记录为 
                             
              {bf:<label>}{it:llccccc........c}{bf:</label>}
                       |------------|
                          {it:ll 字节}

{pstd}
要求：

		ccc..c        允许最多 80 个 UTF-8 字符。
			      UTF-8 字符每个占用 1 到 4 字节。
                              {bf:不写入尾随 \0。}

                ll            UTF-8 字符的字节长度， 
			      其长度记录为 2 字节无符号 
                              整数，按照 {it:byteorder} 编码。

                              由于允许 {it:ccc..c} 包含最多 80 个字符，因此 0 <= {it:ll} <= 4*80  
                              (4*80 = 320 = 0x140)。

{pstd} 
如果没有记录字符（即没有数据标签），{cmd:.dta} 文件包含

		<label>{it:0000}</label>

{pstd} 
其中 {it:0000} 表示 2 字节的 0。


{marker header_timestamp}{...}
{title:5.1.6  时间戳}

{pstd}
时间戳记录文件写入的日期和时间。
时间戳记录为 

              {cmd:<timestamp>}{it:lccccc........c}{cmd:</timestamp>}
                          |------------|
                           {it:l 字符}

{pstd}
{bf:不写入尾随 \0}。

{pstd}
长度 {it:l} 的时间戳记录为 1 字节无符号整数，后跟日期-时间戳的字符。 

{pstd}
{it:l} 必须为 0 或十进制 17。如果 {it:l}==0，则不记录时间戳。如果 {it:l}==(十进制) 17，则在下面的格式中记录时间戳

                 ----+----1----+--
	         {it:dd Mon yyyy hh}{cmd::}{it:mm}
{pstd}
例如 
{p_end}
		 10 Mar 2017 14:23

{pstd}
如果 {it:dd}<10 或 {it:hh}<10，则记录元素时会加上空格或前导零：

		 04 Jul 2032 04:23
		  4 Mar 2017  4:23

{marker map}{...}
{title:5.2  映射}

{pstd}
映射与文件中的位置有关，而不是与 Stata 数据自身有关。
映射记录为 

              {cmd:<map>}{it:filepositions}{cmd:</map>}

{pstd}
其中 {it:filepositions} 是从文件开始起 14 个 8 字节偏移量的列表（数组），按照 {it:byteorder} 写入。
将记录的 14 个位置是

	         #        文件位置，开始
		{hline 47}
	         1.       {cmd:<stata_data>}，定义上为 0
	         2.       {cmd:<map>}
		 3.       {cmd:<variable_types>}
		 4.       {cmd:<varnames>}
		 5.       {cmd:<sortlist>}
		 6.       {cmd:<formats>}
		 7.       {cmd:<value_label_names>}
		 8.       {cmd:<variable_labels>}
		 9.       {cmd:<characteristics>}
		10.       {cmd:<data>}
		11.       {cmd:<strls>}
		12.       {cmd:<value_labels>}
		13.       {cmd:</stata_data>}
		14.       {it:end-of-file}
		{hline 47}

{pstd}
注意事项：

{p 8 12 2}
1.  文件位置是可以从 C 函数 {cmd:lseek()} 中获得并设置的。文件位置通过 
    {cmd:lseek(fd, 0, SEEK_CUR)} 在写入上面列出的标记之前获得，或在 {it:end-of-file} 的情况中，正好在写入 {cmd:</stata_data>} 之后。

{p 8 12 2}
2.  如果你正在写入文件，建议在按照顺序进行并跟踪  
    文件位置的结构时，写入 {cmd:<map>}...{cmd:</map>}，并将所有文件位置填充为零，如下所示：

                {cmd:struct mapdef {c -(}}
                        {cmd:off_t  hdr ;}
                        {cmd:off_t  map ;  }
                        {cmd:off_t  types ; }
                        {cmd:off_t  varnames ;}
                        {cmd:off_t  srtlist ;}
                        {cmd:off_t  fmts ;}
                        {cmd:off_t  vlblnames ;}
                        {cmd:off_t  varlabs ;}
                        {cmd:off_t  chars ;}
                        {cmd:off_t  data ;}
                        {cmd:off_t  strls ; }
                        {cmd:off_t  vallabs ;}
                        {cmd:off_t  tlr ;}
                        {cmd:off_t  bot ;}
                {cmd:{c )-} ;}

{p 12 12 2}
    在写入相应的标记之前记录文件位置。在写入 {cmd:</stata_data>} 之后，再次寻址到 {cmd:map+5} 并重写文件位置。然后关闭文件。

{p 8 12 2}
3.  请注意，文件位置为 8 字节长，就像在 64 位计算机上一样。如果你在 32 位 
    计算机上，则必须将最高有效的 4 字节设置为 0，并在最低有效的 4 字节中记录 32 位文件位置。
    如果你在 {cmd:MSF} 计算机上，首先写入 4 字节的 0，然后写入 4 字节的文件位置。
    如果你在 {cmd:LSF} 计算机上，首先写入 4 字节文件位置，然后写入 4 字节的 0。


{marker variabletypes}{...}
{title:5.3  变量类型}

{pstd}
变量类型记录为 

              {cmd:<variable_types>}{it:typlist}{cmd:</variable_types>}

{pstd}
其中 {it:typlist} 是 2 字节无符号整数字段的序列（数组），按 {it:byteorder} 写入，记录
变量 1, 2, ..., {it:K} 的类型。

{pstd}
这些类型的编码

                         Stata 
           typ          意义      描述
	{hline 58}
             1          str1         1 字节 strf
             2          str2         2 个或更少字节 strf
           ...          等等
          2045          str2045      2,045 个或更少字节 strf

         32768          strL         任意长度的 strL 

         65526          double       8 字节浮点数
         65527          float        4 字节浮点数
         65528          long         4 字节有符号整数
         65529          int          2 字节有符号整数
         65530          byte         1 字节有符号整数
	{hline 58}


{marker variablenames}{...}
{title:5.4  变量名称}

{pstd}
变量名称记录为 

              {bf:<varnames>}{it:varnamelist}{bf:</varnames>}

{pstd}
其中 {it:varnamelist} 是 {it:K} 个 129 字节的 \0 终止的 UTF-8 变量名称的序列（数组）。
每个名称可以是 1 到 32 个 UTF-8 字符。
因此，长度为 129 字节；129 = 32*4+1。

{pstd}
例如，如果 {it:K}==4,{it:varnamelist} 可能为

	0       129       258         387
	|        |         |           |
	{cmd:vbl1\0...myvar\0...thisvar\0...lstvar\0...}


{pstd}
上述状态表明变量 1 名为 {cmd:vbl1}，变量 2 名为 {cmd:myvar}，变量 3 名为 {cmd:thisvar}，变量 4 名为 {cmd:lstvar}。 用句点表示的字节位置将包含随机值（注意，我们省略了一些句点）。

{pstd}
如果 {it:varnamelist} 被读入 C 数组 {cmd:char} {cmd:varnamelist[]}, 那么 {cmd:&varnamelist[(i-1)*129]}
指向 {cmd:i}th 变量的名称，其中 1 <= {cmd:i} <= {it:K}。


{marker sortlist}{...}
{title:5.5  观察排序}

{pstd}
将要随后的观察记录的排序顺序记录为

              {cmd:<sortlist>}{it:sortlist}{cmd:</sortlist>}

{pstd}
其中 {it:sortlist} 是无符号 {red:4 字节} 整数的序列（数组），按 {it:byteorder} 记录。

{pstd}
{it:sortlist} 指定数据集的排序顺序，并用一个 {red:4 字节} 的零（{red:{it:00000000}}，以十六进制）终止。每个 {red:4 字节} 元素包含变量编号或零。零标记 {it:sortlist} 的结束，之后记录的元素包含随机垃圾。
例如，如果数据未排序，则第一个 {cmd:4 字节} 整数将包含零，之后的 {cmd:4 字节} 整数将包含垃圾。
如果 {cmd:nvar}==4, 则记录将如下所示

	{red:{cmd:00000000................}}

{pstd}
如果数据集按一个变量排序，比如 {cmd:myvar}，并且如果该变量在 {it:varnamelist} 中是第二个变量，则记录将如下所示：

	{red:{cmd:0000000200000000............}}  （如果 {cmd:byteorder}==MSF）
	{red:{cmd:0200000000000000............}}  （如果 {cmd:byteorder}==LSF）

{pstd}
如果数据集按 {cmd:myvar} 排序，并在 {cmd:myvar} 内部按 {cmd:vbl1} 排序，并且如果 {cmd:vbl1} 是数据集中的第一个变量，则记录将如下所示：

	{red:{cmd:000000020000000100000000........}}  （如果 {cmd:byteorder}==MSF）
	{red:{cmd:020000000100000000000000........}}  （如果 {cmd:byteorder}==LSF）


{pstd}
如果 {it:sortlist} 被读入 C 数组 {red:{cmd:int}} {cmd:srtlist[]}, 则 {cmd:srtlist[0]} 将是第一个排序变量的变量编号，或者如果数据未排序则为 0。如果该数字不为零，则 {cmd:srtlist[1]} 将是第二个排序变量的变量编号，或者如果没有第二个排序变量则为 0，依此类推。


{marker formats}{...}
{title:5.6  显示格式}

{pstd}
与每个变量相关联的显示格式记录为 

              {bf:<formats>}{it:fmtlist}{bf:</formats>}

{pstd}
其中 {it:fmtlist} 是每个数据变量的 {it:K} 个 57 字节，\0 终止的 UTF-8 显示格式的序列（数组）。
显示格式是最大字符数为 (bytelen-1)/4 的规则的例外。这是因为显示格式中出现的某些字符，如 "%"、数字、"." 等，必须在 UTF-8 中为 1 字节长（ASCII）。因此，

{p 12 12 2}
没有需要检查的单独最大字符长度。  

{pstd}
仅检查格式的字节长度是否小于或等于 57 即可。

{pstd}
以下是 {it:fmtlist} 的示例：

        0       57       114       171    228                           285
        |        |        |         |      |                             |
	{bf:%9.0f}\0..{bf:%8.2f}\0..{bf:%20.0g}\0..%td\0..{bf:%tcDDmonCCYY_HH:MM:SS.sss}\0...

{pstd}
{it:fmtlist} 指定变量 1 具有 {cmd:%9.0f} 格式，变量 2 具有 {cmd:%8.2f}
格式，变量 3 具有 {cmd:%20.0g} 格式，依此类推。请注意，这些是 Stata 格式，而不是 C 格式。

{phang2}
1.  以 {cmd:%t} 或 {cmd:%-t} 开头的格式是 Stata 的日期和时间格式。

{phang2}
2.  Stata 有一种旧的 {cmd:%}{cmd:d} 格式表示法，一些数据集中仍然有所用格式 {cmd:%}{cmd:d}... 等同于现代格式 {cmd:%td}... 和 {cmd:%}{cmd:-}{cmd:d}... 等同于 {cmd:%-td}...

{phang2}
3.  非日期格式以 {cmd:gc} 或 {cmd:fc} 结尾，类似于 C 的 {cmd:g} 和 {cmd:f} 格式，但带有逗号。大多数从 Stata 转换出的例程将忽略结尾的 {cmd:c}（将其更改为 {cmd:\0}）。

{phang2}
4.  格式可以包含逗号而不是句点，例如 {cmd:%9,2f}，表示欧洲格式。

{pstd}
如果 {it:fmtlist} 被读入 C 数组 {cmd:char} {cmd:fmtlist[]}, 则
{cmd:&fmtlist[57*(i-1)]} 指向 {cmd:i}th 变量的格式的起始地址。


{marker labelnames}{...}
{title:5.7  值标签名称}

{pstd}
与每个变量相关联的值标签名称记录为 

              {bf:<value_label_names>}{it:lbllist}{bf:</value_label_names>}

{pstd}
其中 {it:lbllist} 是 {it:K} 个 129 字节的 \0 终止的 UTF-8 标签名称的序列（数组）。
每个名称可以是最多 32 个字符长度。

{pstd}
{it:lbllist} 包含与变量 1, ..., {it:K} 相关联的值格式的名称。例如，

	0   129      258   387
	|    |         |    | 
	{cmd:\0...yesno\0...\0...yesno\0...}

{pstd}
这表明变量 1 和 3 没有值标签与之关联，而变量 2 和 4 都与名为 {cmd:yesno} 的值标签关联。

{pstd}
如果 {it:lbllist} 被读入 C 数组 {cmd:char}
{cmd:lbllist[]}, 则 {cmd:&lbllist[129*(i-1)]} 指向与第 {cmd:i} 个变量相关联的标签名称的开始。


{marker variablelabels}{...}
{title:5.8  变量标签}

{pstd}
与每个变量相关联的变量标签记录为 

              {bf:<variable_labels>}{it:varlbllist}{bf:</variable_labels>}

{pstd}
其中 {it:varlbllist} 是 {it:K} 个 321 字节的 \0 终止的变量标签字符串的序列（数组）。
如果变量没有标签，则其标签的第一个字节为 \0。 


{marker characteristics}{...}
{title:5.9  特征}

{pstd}
特征用于记录在 Stata 中独有且在其他数据管理软件中没有等效项的信息。
在写入数据时，建议您写入 
	
              {cmd:<characteristics>}{cmd:</characteristics>}

{pstd}
这留下了读取可能包含特征的数据集的问题。特征记录为

             {cmd:<characteristics>}...{cmd:</characteristics>}

{pstd}
建议您跳过 {it:...} 部分。
但是，不要仅仅扫描直到遇到关闭标记，因为 ... 部分本身可能包含包含字符串 "{cmd:</characteristics>}" 的特征。

{pstd}
... 部分包含零个或更多单独特征，每个特征的形式如下：

               4 字节
                 |--|
             {cmd:<ch>}{it:llll}...............{cmd:</ch>}
                     |-------------|
                        {it:llll 字节}

{pstd}
其中 {it:llll} 是后续内容的长度，以 4 字节无符号整数字段记录，按照 {it:byteorder} 解释。因此，在读取 {cmd:<ch>} 后跳过单个特征时，读取 4 字节 
({it:llll}) ，然后在文件中跳过 {it:llll} 字节。
然后验证下一个读取的是 {cmd:/ch}。在那之后的标记将是 {cmd:</characteristics>}，表示结束，或者 {cmd:<ch>}，表示您还有另一个单独的特征要跳过。

{pstd} 
对于想要读取和写入特征的人，... 部分包含正在定义的单个特征的信息，如下所示：

             0           129              258       {it:l}-1
             |             |                |        |
             {it:varname}{bf:\0.....}{it:charname}{bf:\0}.......{it:contents}{bf:\0}
             |---------------------------------------|
                            {it:llll} 字节

{pstd}
字节 0-129 包含一个 \0 终止的 UTF-8 编码变量名称，字节 129-257 包含一个 \0 终止的 UTF-8 编码特征名称，而字节 258 到记录末尾包含二进制零终止的 UTF-8 特征 {it:varname}{cmd:[}{it:charname}{cmd:]}的内容。

{pstd}
内容的最大字节长度，包括二进制 0，为 67,784.


{marker data}{...}
{title:5.10  数据}

{pstd}
数据记录为 

              {cmd:<data>}{it:data}{cmd:</data>}

{pstd}
其中 {it:data} 是观察 1、观察 2、...，直到观察 {it:N}，

              {cmd:<data>}{it:obs1obs2obs3...obsN}{cmd:</data>}

{pstd} 
每个观察都是变量 1 的值，后跟变量 2 的值 ...，再后跟变量 {it:K} 的值， 

              {cmd:<data>}{it:v11v12...v1Kv21v22...v2K......vN1vN2...VNK}{cmd:</data>}
                    |-------------||-------| .... |----------|
                    |    obs. 1   || obs. 2| .... |  obs. {it:N}  |

{pstd}
每个 {it:vIJ} 以其内部格式记录，
如 {it:typlist} 所指示的，在第 {help dta_119##strings:3} 节（strfs）和 @help dta_119##numbers:4（数字值）中定义。我们尚未解释 strLs 是如何写入的；我们将在第 {help dta_119##strls:5.11} 节中处理这个问题。在此期间，让我们设想一个不包含 strLs 的数据集。

{pstd}
所有值都按照 {it:byteorder} 写入。短字符串如果小于允许的空间则为二进制零终止，但如果达到最大宽度则不终止。

{pstd}
例如，考虑一个数据集，其中 {it:V1} 是 {cmd:float}，{it:V2} 是 {cmd:byte}，{it:V3} 是 {cmd:double}，{it:V4} 是 {cmd:str6}：

        . {cmd:describe}

        包含数据
          obs:             2                          
         vars:             4                          
         size:            38                          
	{hline 64}
                      存储  显示     值
        变量名称   类型   格式      标签      变量标签
	{hline 64}
        V1              float  %9.0g                  
        V2              byte   %8.0g                  
        V3              double %10.0g                 
        V4              str6   %9s                    
	{hline 64}
        已排序：  

        . {cmd:}list

             {c TLC}{hline 23}{c TRC}
             {c |} V1   V2   V3       V4 {c |}
             {c LT}{hline 23}{c RT}
          1. {c |}  0    1    2    first {c |}
          2. {c |}  1    2    3   second {c |}
             {c BLC}{hline 23}{c BRC}

{pstd}
相应的 {cmd:<data>}...{cmd:</data>} 将读取（假设 MSF 字节顺序），

        <data>{it:00000000014000000000000000}first{it:00}{it:3f800000024008000000000000}
	second</data>

{pstd}
变量和观察值的值是连在一起的，但如果我们添加不重要的空格，则更易于理解

	<data>
		 {it:00000000 01 4000000000000000} first{it:00}
		 {it:3f800000 02 4008000000000000} second
	</data>
		
{p 8 12 2}
1.  每个变量的值根据其变量类型写入。 

{p 12 12 2}
    {cmd:V1} 的值是 4 字节（8 个十六进制数字）长
    因为 {cmd:V1} 是 {cmd:float} 类型。写入的内容
    被解释为 4 字节 IEEE 浮点数。

{p 12 12 2}
    {cmd:V2} 的值是 1 字节（2 个十六进制数字）长
    因为 {cmd:V2} 是 {cmd:byte} 类型。写入的内容
    被解释为 1 字节有符号整数。 

{p 12 12 2}
    {cmd:V3} 的值是 8 字节（16 个十六进制数字）长
    因为 {cmd:V3} 是 {cmd:double} 类型。写入的内容
    被解释为 8 字节 IEEE 浮点数。 

{p 8 12 2}
2.  仔细查看 {cmd:V4}，一个 {cmd:str6} 取值为 
    "first" 和 "second"。"first" 记录为 first\0 -- 有尾随的二进制 0。
    "second" 的写入则没有尾随的二进制 0，因为 
    "second" 是 6 字节长，即达到最大长度。
    如果另一个观察值包含 "dog"，则记录为 dog\0.. -- 会写入二进制 0，然后写入两个随机字节，以保证所写内容的长度达到要求的 6。

{p 12 12 2}
    一般规则是 {cmd:str#} 在 # 字节的字段中写入。如果值的长度为 # 字节，则不加二进制 0 的后缀。如果值小于 # 字节，则在字符串的末尾添加一个二进制 0 的后缀。

{p 12 12 2}
    空字符串始终写为 \0，如果需要，随后会填充随机字节以填充所需的长度。

{marker strls}{...}
{title:5.11  字符串长度}

{pstd}
字符串长度是长字符串。在上述节中的 {cmd:<data>}...{cmd:</data>} 中，我们看到每个 strf 的值 --
Stata 类型 {cmd:str1}、{cmd:str2}、..., {cmd:str2045} -- 作为固定长度的字符串记录。

{pstd}
strLs 可以长达 20 亿字节，因此它们的记录方式有所不同。

{pstd}
如果数据中没有 strL 变量，则 {cmd:<strls>}...{cmd:</strls>} 记录为

		{cmd:<strls></strls>}

{pstd}
在第 {help dta_119##data:5.10} 节中，有一个示例显示了包含四个变量和两个观察值的数据集的 {cmd:<data>}...{cmd:</data>} 的内容。该示例中没有 strLs，因此整个 {cmd:<data>}...{cmd:</data>} 和 {cmd:<strls>}...{cmd:</strls>} 将如上所示

        <data>{it:00000000014000000000000000}first{it:00}{it:3f800000024008000000000000}
	second</data><strl><strls>

{pstd}
或者，使用更可读的、不重要的空格， 

	<data>
		 {it:00000000 01 4000000000000000} first{it:00}
		 {it:3f800000 02 4008000000000000} second
	</data>
	<strls>
	</strls>

{pstd}
strLs 以两部分记录：

{p 8 12 2}
1.  在表示 {cmd:<data>}...{cmd:</data>} 的可读显示中，
    我们将每个观察值放在单独的 
    行，并在变量之间放置不重要的空格。
    再次展示 {bf:<data>}...{bf:</data>} 部分：

	        <data>
	            {it:00000000 01 4000000000000000} first{it:00} {red:{it:000005000000000001}}
	            {it:3f800000 02 4008000000000000} second  {red:{it:000005000000000002}}
	        </data>

{p 12 12 2}
    strL 变量是最后一个 -- 也就是红色的那个，但这并不是它变成红色的原因。
    红色表示与前一个 {cmd:.dta} 格式的变化。
    无论如何，两个 strL 值记录为 {it:000005000000000001} 和 {it:000005000000000002}。

{p 12 12 2}
    {it:000005000000000001} 和 {it:000005000000000002} 各自代表一个 8 字节
    字段。将该 8 字节字段解释为 3 字节整数后跟 5 字节整数：

                 {it:000005000000000001} = {it:000005 000000000001} = 5, 1

                 {it:000500000000000002} = {it:000005 000000000002} = 5, 2

{p 12 12 2}
    每个观察值中的两个值称为 ({it:v},{it:o}) 值。
    {it:v} 和 {it:o} 代表“变量”和“观察”。
    它们表明变量 5、观察 1 的 strL 存储于变量 5 和观察 1 的 {bf:<strl>}...{bf:</strl>} 表中，而变量 5 和观察 2 的 strL 存储于变量 5 的 strL 表中，观察 2。

{p 12 12 2}
    好吧，它们还会在哪里呢？事实上，如果两个 strLs 相等，无论是在观察之间，甚至是在变量之间或跨变量和观察之间，那么 ({it:v},{it:o}) 值可能与所记录的变量和观察不同。
    它们可以交叉引用其他变量和观察，这样可以节省内存。通常，然而，({it:v},{it:o)} 等于所记录的结构中的变量和观察。

{p 12 12 2}
    在转到 {bf:<strl>}...{bf:</strl>} 表的说明之前，我们将稍微谈谈在 {bf:<data>}...{bf:</data>}
    中的 ({it:v},{it:o}) 的 3 字节加 5 字节编码。

{p 12 12 2}
    使用 5 字节整数是非常奇怪的。在之前的 117 {cmd:.dta}
    格式中，({it:v},{it:o}) 值作为两个 4 字节值记录。这样做是为了适应当时 Stata 最大数量为大约 32,000 个变量和大约 2,000,000,000 个观察值。

{p 12 12 2}
    在以现代 Stata 使用的格式 118 中，当变量超过 32,767 时，({it:v},{it:o}) 值被记录为一个 2 字节值后跟 6 字节值，以允许更多观察值。

{p 12 12 2}
    自那以来，Stata 已学会处理更多变量，{it:v} 在 119 格式中不再可以仅用 2 字节存储。
    Stata 允许最多 100,000 个变量和高达 1 TB 观察值。此数字组合可以在 3 字节整数和 5 字节整数中存储。

{p 12 12 2}
    4 字节整数后跟 8 字节整数本应是自然选择。但是，出于我们自己的原因，我们需要这个字段仍然保持 8 字节的长度。因此，我们将其分为 3 字节加 5 字节，这对我们的目的来说是足够的。
请查看 {help dta_119##strls_advwb:5.11.4} 
和 {help dta_119##strls_advrb:5.11.6} 
以获取写入和读取 3 字节和 5 字节整数的 C 代码。


{p 8 12 2}
2.  {cmd:<strls>}...{cmd:</strls>} 记录 ({it:v},{it:o}) 值与相应字符串之间的映射。
对于 strLs，字符串称为通用字符串对象 (GSO)。
让我们重复我们示例中 {bf:<strls>}...{bf:</strls>} 的可读形式：

	        <strls>
                    GSO {it:00000005 0000000000000001 82 00000006} third{it:00}
                    GSO {it:00000005 0000000000000002 82 00000007} fourth{it:00}
	        </strls>

{p 12 12 2}
在此示例中，定义了两个 GSOs。
第一个是 ({it:v},{it:o})=(5,1) 的 GSO，第二个是 ({it:v},{it:o})=(5,2) 的 GSO。
这次没有 3 字节、5 字节的麻烦。{it:v} 记录为 4 字节整数，{it:o} 记录为 8 字节整数。

{p 12 12 2}
({it:v},{it:o})=(5,1) 对应于“第三”。

{p 12 12 2}
({it:v},{it:o})=(5,2) 对应于“第四”。

{pstd}
显然，GSO 中记录的不仅仅是 ({it:v},{it:o}) 值和相应字符串，还有更多的信息，我们将得到该信息，但我们首先关注 ({it:v},{it:o}) 值。 


{marker strls_vo}{...}
{title:5.11.1  (v,o) 值}

{pstd}
如果我们的数据集中变量 V5 在两个观察中都是 "third"，

        . {cmd:list}
             {c TLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c TRC}
             {c |} V1   V2   V3       V4       V5 {c |}
             {c LT}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c RT}
          1. {c |}  0    1    2    first          {c |}
          2. {c |}  1    2    3   second   fourth {c |}
             {c BLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c BRC}

{pstd}
它们可以记录为两个单独的 strLs， 

	<data>
	    {it:00000000 01 4000000000000000} first{it:00} {red:{it:000005000000000001}}
	    {it:3f800000 02 4008000000000000} second  {red:{it:000005000000000002}}
	</data>
	<strls>
            GSO {it:00000005 0000000000000001 82 00000006} third{it:00}
            GSO {it:00000005 0000000000000002 82 00000006} third{it:00}
	</strls>
    
{pstd}
或者像这样：

	<data>
	    {it:00000000 01 4000000000000000} first{it:00} {red:{it:000005000000000001}}
	    {it:3f800000 02 4008000000000000} second  {red:{it:000005000000000001}}
	</data>
	<strls>
            GSO {it:00000005 0000000000000001 82 00000006} third{it:00}
	</strls>

{pstd}
请注意，在第二种形式中仅有一个 GSO，而两个观察通过在 {bf:<data>}...{bf:</data>} 中指定 ({it:v},{it:o})=(5,1) 引用它。这称为共享或交叉连接 GSO。许多观察可以链接到同一个 GSO。

{pstd}
顺便提一句，数据不能像这样记录：

	<data>
	    {it:00000000 01 4000000000000000} first{it:00} {red:{it:000005000000000002}}
	    {it:3f800000 02 4008000000000000} second  {red:{it:000005000000000002}}
	</data>
	<strls>
            GSO {it:00000005 0000000000000002 82 00000006} third{it:00}
	</strls>

{pstd}
strL 必须在您从 {bf:<data>}...{bf:</data>} 表读取时左到右、然后下来第一次出现时进行定义。
字符串 "third" 首次出现在变量 5、观察 1中。
如果其相等，则说某 strL 在变量 {it:i}、观察 {it:j} 中被定义，如果其 ({it:v},{it:o}) == ({it:i},{it:j})。
在此之后，您可以对已定义的 ({it:v},{it:o}) 值进行反向引用或定义新的值。前向引用是禁止的。

{pstd}
({it:v},{it:o}) = (0,0) 是一个特殊的允许值，指代一个包含空字符串 ("") 的 GSO，该 GSO 为您预定义（并且您不应在 {bf:<strl>}...{bf:</strl>} 表中重新定义它）。
如果第一个观察中的变量 V5 为一个空字符串，

        . {cmd:list}
             {c TLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c TRC}
             {c |} V1   V2   V3       V4       V5 {c |}
             {c LT}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c RT}
          1. {c |}  0    1    2    first          {c |}
          2. {c |}  1    2    3   second   fourth {c |}
             {c BLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c BRC}

{pstd}
数据可以记录为

	<data>
		 00000000 01 4000000000000000 first{it:00} {it:0000050000000001}
		 3f800000 02 4008000000000000 second  {it:0000050000000002}
	</data>
	<strls>
                 GSO {it:00000005 0000000000000001 82 00000001}{it:00}
                 GSO {it:00000005 0000000000000002 82 00000007}fourth{it:00}
	</strls>

{pstd}
但这被认为是坏风格，因为这会导致 Stata 浪费一点内存。正确记录数据的方法是 

	<data>
		 00000000 01 4000000000000000 first{it:00} {it:0000000000000000}
		 3f800000 02 4008000000000000 second  {it:0000050000000002}
	</data>
	<strls>
                 GSO {it:00000005 0000000000000002 82 00000007}fourth{it:00}
	</strls>

{pstd}
在此，({it:v},{it:o}) = (0,0) 是第一个观察值。顺便提一句，如果变量 V5 的两个观察值都包含空字符串，将记录为

	<data>
		 00000000 01 4000000000000000 first{it:00} {it:0000000000000000}
		 3f800000 02 4008000000000000 second  {it:0000000000000000}
	</data>
	<strls>
	</strls>

{marker vo_rules}{...}
{pstd} 
指定 ({it:v},{it:o}) 值的规则如下：

{p 8 12 2}
1.  在 {cmd:<data>}...{cmd:</data>} 中，strLs 作为 ({it:v},{it:o}) 值记录。这意味着每个 strL 变量在每条观察中都有一个 ({it:v},{it:o}) 值。

{p 8 12 2}
2.  ({it:v},{it:o}) 值在 8 字节字段中记录，并且是 
    {red:解释为 3 字节无符号整数后跟}
    {red:一个 5 字节无符号整数}。

{p 8 12 2}
3.  对于

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dta_119.sthlp>}