{smcl}
{* *! version 3.1.4  19apr2019}{...}
{vieweralsosee "[P] 文件格式 .dta" "mansection P Fileformats.dta"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] sysuse" "help sysuse_zh"}{...}
{vieweralsosee "[D] webuse" "help webuse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 1.2.2 示例数据集" "help dta_contents_zh"}{...}
{viewerjumpto "描述" "dta_zh##description"}{...}
{viewerjumpto "备注" "dta_zh##remarks"}
{help dta:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[P] 文件格式 .dta} {hline 2}}.dta 文件格式的描述{p_end}
{p2col:}({mansection P Fileformats.dta:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
以下是 Stata {cmd:.dta} 数据集的格式描述。该描述高度技术性，旨在为需要编写 C 语言或其他语言读取和写入 Stata {cmd:.dta} 文件的程序员提供信息。

{pstd}
这里描述的格式自 Stata 14 起生效，称为 {cmd:.dta} 格式 118。它也是 Stata 15 和 16 使用的主要格式。对于具有超过 32,767 个变量的数据集，Stata 15 和 16 使用略有不同的格式，即 119。有关格式 119 的文档，请参阅 {help dta_119_zh}。有关早期文件格式的文档，参见 {help dta_117_zh}。

{pstd}
{error:我们将以红色突出显示 .dta 格式 117 和 118 之间的变化。}


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:.dta} 文件的格式随着时间而变化。Stata 16 生成被称为 {cmd:.dta} 格式-118 的文件，并且可以读取自发布以来的所有格式的文件。{cmd:.dta} 格式的近期历史如下：

	格式    当前日期
	{hline 39}
          {help dta_119_zh:119}     Stata 15 和 16（当数据集有超过 32,767 个变量时）
          118     Stata 14、15 和 16
	  {help dta_117_zh:117}     Stata 13 
	  116     内部；从未发布
	  {help dta_115_zh:115}     Stata 12
	  {help dta_114_zh:114}     Stata 10
	  {help dta_113_zh:113}     Stata  8
	{hline 39}

{marker f118}{...}
{pstd}
格式 118 的文档如下。

{pstd}
备注根据以下标题呈现：

	{help dta##intro:1.  介绍}
	{help dta##versions:2.  Stata 的版本和类型}
	{help dta##strings:3.  字符串的表示}
	{help dta##numbers:4.  数字的表示}
 	{help dta##definition:5.  数据集格式定义}
	    {help dta##header:5.1  头部}
                 {help dta##header_release:5.1.1  文件格式 ID}
                 {help dta##header_byteorder:5.1.2  字节顺序}
                 {help dta##header_K:5.1.3  K，变量数}
                 {help dta##header_N:5.1.4  N，观察数}
                 {help dta##header_label:5.1.5  数据集标签}
                 {help dta##header_timestamp:5.1.6  时间戳}
	    {help dta##map:5.2  映射}
	    {help dta##variabletypes:5.3  变量类型}
	    {help dta##variablenames:5.4  变量名}
	    {help dta##sortlist:5.5  观察的排序顺序}
	    {help dta##formats:5.6  显示格式}
	    {help dta##labelnames:5.7  值标签名}
	    {help dta##variablelabels:5.8  变量标签}
	    {help dta##characteristics:5.9  特性}
	    {help dta##data:5.10 数据}
            {help dta##strls:5.11 字符串列表}
	         {help dta##strls_vo:5.11.1 (v,o) 值}
	         {help dta##strls_gso:5.11.2 GSOs}
	         {help dta##strls_advw:5.11.3 编写 strLs 的建议}
	         {help dta##strls_advwb:5.11.4 编写 6 字节整数的建议}
	         {help dta##strls_advr:5.11.5 读取 strLs 的建议}
	         {help dta##strls_advrb:5.11.6 读取 6 字节整数的建议}
	    {help dta##value_labels:5.12 值标签}


{marker intro}{...}
{title:1.  介绍}

{pstd}
Stata 格式的数据集以一种通用的方式记录数据，以便在不同计算机上使用，尽管它们对数据的记录方式不同。因此，同一个数据集可以在 Windows、Unix 和 Mac 计算机上无须转换地使用。根据计算机的数据集可分为两类：原生格式和外来格式数据集。Stata 采用以下两条规则：

{p 8 13 2}
    R1.  在某一计算机上，Stata 仅能写入原生格式的数据集。

{p 8 13 2}
    R2.  尽管如此，Stata 能{it:读}所有数据集格式，无论是外来格式还是原生格式。

{pstd}
规则 R1 和 R2 确保 Stata 用户不必担心数据集格式。若您编写程序以读取和写入 Stata 数据集，则您必须确定是否想遵循相同的规则，还是仅限制您的程序仅操作原生格式数据集。由于 Stata 遵循规则 R1 和 R2，因此这样的限制不会太过苛刻。如果用户有一个外来格式的数据集，他或她可以进入 Stata，{help use_zh} 数据，然后再 {help save_zh} 它。

{marker versions}{...}
{title:2.  Stata 的版本和类型}

{pstd}
Stata 不断更新，这些更新有时需要对 Stata 记录 {cmd:.dta} 数据集的方式进行更改。本文件描述了被称为 {it:format-118} 的数据集，即当前格式。Stata 本身能够读取旧格式，但每当写入数据集时，它采用 118 格式。如果某数据集的变量超过 32,767，Stata 将采用 119 格式。

{pstd}
目前有三种类型的 Stata 可用：
{help stataic_zh:Stata/IC}、{help SpecialEdition:Stata/SE} 和 {help statamp_zh:Stata/MP}。所有类型均使用相同的 118 格式。不同之处在于某些类型的数据集可以更大。

{marker strings}{...}
{title:3.  字符串的表示}

{pstd}
{red:{bf:字符串在 Stata 中以 UTF-8 编码}}。我们是指所有字符串，无论是数据、变量名、显示格式等。

{pstd}
每个 UTF-8 字符消耗 1 到 4 字节的存储空间。因此，UTF-8 字符串的字节长度和字符长度不同。包含 5 个字符的字符串的字节长度可以在 5 到 20 之间。

{pstd}
Stata 一般在字符串末尾放置一个二进制 0（\0）。有一些例外情况，所以在涉及字符串的地方请仔细阅读 {cmd:.dta} 格式规范。

{pstd} 
变量名的记录是尾随 \0 的一个例子。Stata 允许最长为 32 个字符的变量名。这意味着必须为存储变量名分配 32*4+1 = 129 字节。

{pstd}
ASCII 是 UTF-8 的一个适当子集。UTF-8 字符串在 0x01 到 0x7e 之间包括的字符具有通常的 ASCII 解释。

{pstd}
现在让我们转向存储在数据中的字符串（变量和观察值）。

{phang}
1.  存储在数据中的字符串是以 UTF-8 编码的。

{phang}
2.  Stata 有两种字符串存储格式，用户称之为 {cmd:str}{it:#} 和 {cmd:strL}。{it:#} 记录了存储字符串所需的字节数。大部分字符串以 {cmd:str}{it:#} 格式记录，但这取决于用户。{cmd:strL} 存储格式允许更长的字符串，并允许二进制（通用）字符串。

{pmore}
顺便提一下，StataCorp 内部行话将 {cmd:str}{it:#} 字符串称为 "strfs"（发音为 {it:sturfs}），而将 {cmd:strLs} 称为 "strLs"（发音为 {it:sturls}）。{it:f} 在 strf 中表示固定分配长度，这是 strfs 在文件中的写入方式。

{phang}
3.  我们在第 {help dta##strls:5.11} 节中讨论 {cmd:strL} 格式字符串。

{phang}
4.  如果字符串的字节长度小于声明的最大长度，则 strfs 会以尾随的二进制零（\0）定界。如果字符串长度达到最大，则不记录定界。因此，{cmd:str40} 变量的观察值可以包含 0 到 40 字节长度的字符串。

{pmore}
为了更明晰，我们考虑一个 {cmd:str4} 变量。在第一观察中，变量的值可能是 "Mary"。"Mary" 将存储在 4 字节字段中，不带尾随的 \0。在第二观察中，值可能是 "Bob"。"Bob" 将储存为 "Bob\0"。

{phang}
5.  前导和尾随空格是重要的。



{marker numbers}{...}
{title:4.  数字的表示}

{phang}
1.  数字表示为 1 字节、2 字节和 4 字节整数以及 4 字节和 8 字节浮点数。在浮点数的情况下，使用 ANSI/IEEE 标准 754-1985 格式，对于这里考虑的二进制浮点数来说，相当于 IEEE 标准 754-2008。

{phang}
2.  所有数字类型的字节顺序在不同机器之间是变动的。字节按照最高有效字节到最低有效字节（称为 LSF）或最低有效字节到最高有效字节（称为 MSF）的顺序排列。例如，基于 Intel 的计算机大多使用 LSF 编码，而基于 Sun SPARC 的计算机则使用 MSF 编码。基于 Itanium 的计算机则很有趣，因为它们可以根据操作系统是 LSF 还是 MSF。Windows 和 Linux 上的 Itanium 使用 LSF 编码，而 HP-UX 则使用 MSF 编码。

{phang}
3.  在 LSF 机器上读取 MSF 数字或在 MSF 机器上读取 LSF 数字时，必须在解释数字之前进行如下操作：

	    字节          无需转换
	    2 字节整数    交换字节 0 和 1
	    4 字节整数    交换字节 0 和 3，1 和 2
	    4 字节浮点数  交换字节 0 和 3，1 和 2
	    8 字节浮点数  交换字节 0 和 7，1 和 6，2 和 5，3 和 4

{phang}
4.  出于书面文档的目的，数字是先列出最高有效字节。因此 {cmd:0x0001} 指的是取逻辑值 1 的 2 字节整数。

{phang}
5.  Stata 有五种数字数据类型。它们是

	    {cmd:byte}          1 字节有符号整数
	    {cmd:int}           2 字节有符号整数
	    {cmd:long}          4 字节有符号整数
	    {cmd:float}         4 字节 IEEE 浮点数
	    {cmd:double}        8 字节 IEEE 浮点数

{phang}
6.  每种类型都允许 27 个 {help missing_zh:缺失值代码}，标记为 {cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z}。
对于每种类型，允许的非缺失值范围和缺失值代码如下：

	    {cmd:byte}
		最小非缺失 -127   (0x80)
		最大非缺失 +100   (0x64)
		代码 {cmd:.}            +101   (0x65)
		代码 {cmd:.a}           +102   (0x66)
		代码 {cmd:.b}           +103   (0x67)
		...
		代码 {cmd:.z}           +127   (0x7f)

	    {cmd:int}
		最小非缺失 -32767 (0x8000)
		最大非缺失 +32740 (0x7fe4)
		代码 {cmd:.}            +32741 (0x7fe5)
		代码 {cmd:.a}           +32742 (0x7fe6)
		代码 {cmd:.b}           +32743 (0x7fe7)
		...
		代码 {cmd:.z}           +32767 (0x7fff)

	    {cmd:long}
		最小非缺失 -2,147,483,647  (0x80000000)
		最大非缺失 +2,147,483,620  (0x7fffffe4)
		代码 {cmd:.}            +2,147,483,621  (0x7fffffe5)
		代码 {cmd:.a}           +2,147,483,622  (0x7fffffe6)
		代码 {cmd:.b}           +2,147,483,623  (0x7fffffe7)
		...
		代码 {cmd:.z}           +2,147,483,647  (0x7fffffff)

	    {cmd:float}
		最小非缺失 -1.701e+38  (-1.fffffeX+7e)  {it:(sic)}
		最大非缺失 +1.701e+38  (+1.fffffeX+7e)
		代码 {cmd:.}                        (+1.000000X+7f)
		代码 {cmd:.a}                       (+1.001000X+7f)
		代码 {cmd:.b}                       (+1.002000X+7f)
		...
		代码 {cmd:.z}                       (+1.01a000X+7f)

	    {cmd:double}
		最小非缺失 -1.798e+308 (-1.fffffffffffffX+3ff)
		最大非缺失 +8.988e+307 (+1.fffffffffffffX+3fe)
		代码 {cmd:.}                        (+1.0000000000000X+3ff)
		代码 {cmd:.a}                       (+1.0010000000000X+3ff)
		代码 {cmd:.b}                       (+1.0020000000000X+3ff)
		...
		代码 {cmd:.z}                       (+1.01a0000000000X+3ff)

{pmore}
请注意，对于 {cmd:float}，所有 {it:z}>1.fffffeX+7e；对于 {cmd:double}，所有 {it:z}>1.fffffffffffffX+3fe 被视为缺失值，只有标记为 {cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z} 的值只是其中的一个子集。例如，在 {cmd:.a} 和 {cmd:.b} 之间的值仍然被视为缺失，尤其是 {cmd:.a} 和 {cmd:.b} 之间的所有值共同标识为 {cmd:.a_}。尽管如此，记录这些值应当避免。

{pmore}
在上表中，我们使用了
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
的表示法。这里的 {cmd:X} 左侧的数字应解释为以 16 为基数的数字（因此小数点是以 16 为基数的点），右侧的数字（也以 16 为记录）应解释为 2 的幂 {it:(sic)}。例如，

	    1.01aX+3ff = (1.01a) * 2^(3ff)                        (以 16 为基数)
		       = (1 + 0/16 + 1/16^2 + 10/16^3) * 2^1023   (以 10 为基数)

{pmore}
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
的表示法轻松转换为 IEEE 8 字节双精度：
{cmd:1} 是隐藏位，十六进制点右侧的数字是尾数位，指数是 IEEE 指数的符号（去掉偏移量）。
例如，π = 3.1415927... 是

					    8 字节 IEEE, MSF
					 {hline 23}
	    π = +1.921fb54442d18X+001 = 40 09 21 fb 54 44 2d 18

				       = 18 2d 44 54 fb 21 09 40
					 {hline 23}
					    8 字节 IEEE, LSF

{pmore}
转换
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
为 IEEE 4 字节浮点数要困难得多，但同样的规则适用：{cmd:1} 是隐藏位，十六进制点右侧的数字是尾数位，指数是 IEEE 指数的符号（去掉偏移量）。令其更困难的是，IEEE 4 字节格式中符号和指数共占 9 位，这无法被 4 整除，因此一切都偏移了一位。在浮点数中：

				      4 字节 IEEE, MSF
					 {hline 11}
	    π = +1.921fb60000000X+001 = 40 49 0f db

				       = db 49 40
					 {hline 11}
				      4 字节 IEEE, LSF

{pmore}
获得上述结果的最简单方法是先将 +1.921fb60000000X+001 转换为 8 字节双精度，然后将 8 字节双精度转换为 4 字节浮点数。

{pmore}
无论如何，相关的数字是

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
一个包含两个变量的 Stata 数据集，名为 {cmd:myfloat} 和 {cmd:myint} —— {cmd:myfloat} 是一个 Stata 4 字节 {cmd:float}，{cmd:myint} 是一个 Stata 2 字节 {cmd:int} —— 并且有一个观测值 {cmd:myfloat} = {cmd:myint} = 0，写入磁盘的时间为 2017 年 3 月 10 日 14:23，格式如下：

        {hline 40} {it:文件顶部} {hline 5}
	<stata_dta>

	    <header>
		<release>{red:118}</release>
		<byteorder>MSF</byteorder>
		<K>{rm:{it:0002}}</K>
		<N>{red:{rm:{it:0000000000000001}}}</N>
		<label>{red:{rm:{it:000b}}}示例数据</label>
		<timestamp>{rm:{it:11}}2017 年 3 月 10 日 14:23</timestamp>
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
                 {red:myfloat{rm:{it:00}}........................}
                 {red:myint{rm:{it:00}}..........................}
            </varnames>

            <sortlist>
                {rm:{it:000000000000}}
            </sortlist>

            <formats>
                {red:%9.0g{rm:{it:00}}...............................}
                {red:%8.0g{rm:{it:00}}...............................}
            </formats>

            <value_label_names>
		{red:{rm:{it:00}}................................}
		{red:{rm:{it:00}}................................}
            </value_label_names>

            <variable_labels>
		{red:{rm:{it:00}}................................................}
		{red:{rm:{it:00}}................................................}
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
        {hline 40} {it:文件末尾} {hline 5}

{pstd}
我们在排版时的空格处理上采取了一些自由。文件实际上是紧凑的，因此它更像这样，

        {hline 40} {it:文件顶部} {hline 5}
	<stata_dta><header><release>{red:118}</release><byteorder>MSF</byteorder><K>{rm:{it:0002}}</K><N>{red:{rm:{it:0000000000000001}}}</N><label>{red:{rm:{it:000b}}}示例数据</label><timestamp>{rm:{it:11}}2017 年 3 月 10 日 14:23</timestamp></header><map>{it:0000000000000000}{it:0000000000000099}{it:0000000000000141}{it:0000000000000139}{it:0000000000000190}{it:00000000000001ab}{it:0000000000000220}{it:000000000000034e}{it:0000000000000371}{it:0000000000000384}{it:0000000000000393}{it:00000000000003b0}{it:00000000000003bc}</map><variable_types>{rm:{it:fff7}}{rm:{it:fff9}}</variable_types><varnames>{red:myfloat{rm:{it:00}}.................}{red:...........................}{red:myint{rm:{it:00}}..........................}</varnames><sortlist>{rm:{it:000000000000}}</sortlist><formats>{red:%9.0g{rm:{it:00}}.................}{red:...................}{red:%8.0g{rm:{it:00}}...............................}</formats><value_label_names>{red:{rm:{it:00}}..............................}{red:{rm:{it:00}}................................}</value_label_names><variable_labels>{red:{rm:{it:00}}...........................................}{red:......{rm:{it:00}}................................................}</variable_labels><characteristics></characteristics><data>{rm:{it:000}}{rm:{it:000000000}}</data><strls></strls><value_labels></value_labels></stata_dta>{rm}
        {hline 40} {it:文件末尾} {hline 5}

{pstd}
我们以斜体显示二进制内容，并使用十六进制值表示。{it:00}，例如，表示 1 字节的二进制 0。<timestamp> 后面的 {it:11} 表示 1 字节的十六进制 11，相当于十进制的 17，值 17 是随后的日期戳的长度："2017 年 3 月 10 日 14:23"。
我们用一个句点表示可能包含随机值的字节——这些字节应该被忽略——我们省略了一些句点字节。例如，我们仅显示分配给变量名的 129 字节中的 32 字节。

{pstd}
一个 118 格式的 {cmd:.dta} 文件以 {cmd:<stata_dta>} 开头，以 {cmd:</stata_dta>} 结尾：

                         {cmd:<stata_dta>}..........{cmd:</stata_dta>}
                        /                                  \
                 {it:文件开始                        文件结束}

{pstd}
在这些标记之间出现

        头部             {cmd:<header>}..............{cmd:</header>}
	文件映射	      {cmd:<map>}.................{cmd:</map>}
        变量类型        {cmd:<variable_types>}......{cmd:</variable_types>}
        变量名          {cmd:<varnames>}............{cmd:</varnames>}
        排序顺序	    {cmd:<sortlist>}............{cmd:</sortlist>}
        变量 %fmts     {cmd:<formats>}.............{cmd:</formats>}
        值标签名       {cmd:<value_label_names>}...{cmd:</value_label_names>}
        变量标签       {cmd:<variable_labels>}.....{cmd:</variable_labels>}
        特性           {cmd:<characteristics>}.....{cmd:</characteristics>}
        数据           {cmd:<data>}................{cmd:</data>}
        字符串列表     {cmd:<strls>}...............{cmd:</strls>}
        值标签         {cmd:<value_labels>}........{cmd:</value_labels>}

{pstd}
每对标记必须出现，即使内容为空，并且标记对的顺序必须按所示顺序出现。



{marker header}{...}
{title:5.1  头部}

{pstd}
头部定义为

	{cmd:<header>}...{cmd:</header>}

{pstd}
在这些标记之间出现

        文件格式 ID      {cmd:<release>}...{cmd:</release>}
        字节顺序          {cmd:<byteorder>}...{cmd:</byteorder>}
        变量数量        {cmd:<K>}...{cmd:</K>}
        观察数量      {cmd:<N>}...{cmd:</N>}
        数据集标签      {cmd:<label>}...{cmd:</label>}
        时间戳          {cmd:<timestamp>}...{cmd:</timestamp>}

{pstd}
每个标记必须出现，且必须按照给定的顺序出现。


{marker header_release}{...}
{title:5.1.1  文件格式 ID}

{pstd}
{it:file_format_id} 被记录为

              {bf:<release>}{red:{bf:118}}{bf:</release>}


{marker header_byteorder}{...}
{title:5.1.2  字节顺序}

{pstd}
{it:byteorder} 被记录为 

              {cmd:<byteorder>}{it:byteorder}{cmd:</byteorder>}

{pstd}
其中 {it:byteorder} 可以是 {cmd:MSF} 或 {cmd:LSF}。

{pstd}
{cmd:MSF} 代表最高有效字节优先。在这种编码中，记录为 2 字节整数的数字 1 将是 {it:00} 后跟 {it:01}： {it:0001}。

{pstd}
{cmd:LSF} 代表最低有效字节优先。在这种编码中，记录为 2 字节整数的数字 1 将是 {it:01} 后跟 {it:00}： {it:0100}。


{marker header_K}{...}
{title:5.1.3  K，变量数量}

{pstd}
{it:K}，存储在数据集中的变量数量，被记录为 

              {cmd:<K>}{it:bb}{cmd:</K>}

{pstd}
其中 {it:K} = {it:bb} 是根据 {it:byteorder} 记录的 2 字节无符号整数字段。


{marker header_N}{...}
{title:5.1.4  N，观察数量}

{pstd}
{it:N}，存储在数据集中的观察数量，被记录为 

              {bf:<N>}{red:{it:bbbbbbbb}}{bf:</N>}

{pstd}
其中 {it:N} = {it:bbbbbbbb} 是根据 {it:byteorder} 记录的 8 字节无符号整数字段。
{red:在格式 117 中，N 是以 4 字节字段写入的。}



{marker header_label}{...}
{title:5.1.5  数据集标签}

{pstd}
数据集标签被记录为 
                             
              {bf:<label>}{red:{it:llccccc........c}}{bf:</label>}
                       |------------|
                          {it:ll 字节}

{pstd}
要求：

		ccc..c        最多 80 个 UTF-8 字符。
			      UTF-8 字符每个需要 1 到 4 字节。
                              {bf:不存在尾随的 \0。}

                ll            UTF-8 字符串的字节长度，
			      该长度以 2 字节无符号整数编码，按 {it:byteorder} 记录。

                              因为 {it:ccc..c} 允许最多包含 80 个字符，0 <= {it:ll} <= 4*80  
                              (4*80 = 320 = 0x140)。

{pstd} 
如果未记录任何字符（没有数据标签），则 {cmd:.dta} 文件包含

		<label>{it:0000}</label>

{pstd} 
其中 {it:0000} 表示 2 字节的 0。


{marker header_timestamp}{...}
{title:5.1.6  时间戳}

{pstd}
时间戳记录文件的写入日期和时间。
时间戳记录为 

              {cmd:<timestamp>}{it:lccccc........c}{cmd:</timestamp>}
                          |------------|
                           {it:l 字符}

{pstd}
{bf:不存在尾随的 \0}。

{pstd}
时间戳的长度 {it:l} 以 1 字节无符号整数记录，后跟日期-时间戳的字符。

{pstd}
{it:l} 必须为 0 或十进制 17。如果 {it:l}==0，则不记录时间戳。如果 {it:l}==(十进制) 17，时间戳以格式

                 ----+----1----+--
	         {it:dd Mon yyyy hh}{cmd::}{it:mm}
{pstd}
例如 
		 2017 年 3 月 10 日 14:23

{pstd}
如果 {it:dd}<10 或 {it:hh}<10，则元素将以前导空格或前导零记录：

		 2032 年 7 月 4 日 04:23
		  2017 年 3 月 4 日  4:23

{marker map}{...}
{title:5.2  映射}

{pstd}
映射涉及文件中的位置，而不是 Stata 数据本身。
映射记录为 

              {cmd:<map>}{it:filepositions}{cmd:</map>}

{pstd}
其中 {it:filepositions} 是从文件开始的 14 个 8 字节偏移的列表（数组），按 {it:byteorder} 记录。
将要记录的 14 个位置是

	         #        文件位置，数据集开始的
		{hline 47}
	         1.       {cmd:<stata_data>}，定义性 0
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
		14.       {it:文件末尾}
		{hline 47}

{pstd}
注意：

{p 8 12 2}
1.  文件位置是可以通过 C 函数 {cmd:lseek()} 获取和设置的。在写入上述标记之前，文件位置可以通过 {cmd:lseek(fd, 0, SEEK_CUR)} 获取，或者在 {it:end-of-file} 的情况下，在写入 {cmd:</stata_data>} 之后。

{p 8 12 2}
2.  如果您正在写入文件，我们建议在逐步写入时填充所以文件位置都为零，写入 {cmd:<map>}...{cmd:</map>}，并跟踪文件位置，使用如下结构：

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
    在写入相应的标记之前，记录文件位置。完成写入 {cmd:</stata_data>} 后，移动到 {cmd:map+5} 并重写文件位置。然后 {cmd:close()} 文件。

{p 8 12 2}
3.  请注意，文件位置长度为 8 字节，因为它们在 64 位计算机上。使用 32 位计算机时，您必须将高 4 字节设置为 0，并在低 4 字节中记录您 32 位的文件位置。如果您使用的是 {cmd:MSF} 计算机，您需要先写入 4 字节的 0，再写入 4 字节的文件位置。如果您使用的是 {cmd:LSF} 计算机，则应先写入 4 字节的文件位置，然后写入 4 字节的 0。


{marker variabletypes}{...}
{title:5.3  变量类型}

{pstd}
变量类型记录为 

              {cmd:<variable_types>}{it:typlist}{cmd:</variable_types>}

{pstd}
其中 {it:typlist} 是记录变量 1、2、...、{it:K} 类型的 {it:K} 个 2 字节无符号整数字段数组，按 {it:byteorder} 记录。

{pstd}
类型编码如下

                         Stata 
           typ          含义      描述
	{hline 58}
             1          str1         1 字节 strf
             2          str2         2 字节或更少的 strf
           ...          等等
          2045          str2045      2045 字节或更少的 strf

         32768          strL         任意长度的 strL 

         65526          double       8 字节浮点数
         65527          float        4 字节浮点数
         65528          long         4 字节有符号整数
         65529          int          2 字节有符号整数
         65530          byte         1 字节有符号整数
	{hline 58}


{marker variablenames}{...}
{title:5.4  变量名}

{pstd}
变量名记录为 

              {bf:<varnames>}{red:{it:varnamelist}}{bf:</varnames>}

{pstd}
其中 {it:varnamelist} 是记录 {it:K} 个 129 字节、以 \0 结尾的 UTF-8 变量名的数组。
每个名称最多可包含 1 到 32 个 UTF-8 字符。
因此，长度为 129 字节；129 = 32*4+1。

{pstd}
例如，如果 {it:K}==4，{it:varnamelist} 可能是

	{red:0       129       258         387}
	|        |         |           |
	{cmd:vbl1\0...myvar\0...thisvar\0...lstvar\0...}


{pstd}
上述表示变量 1 的名称为 {cmd:vbl1}，变量 2 为 {cmd:myvar}，变量 3 为 {cmd:thisvar}，变量 4 为 {cmd:lstvar}。用句点指示的字节位置将包含随机值（并注意我们省略了一些句点）。  

{pstd}
如果将 {it:varnamelist} 读入 C 数组 {cmd:char} {cmd:varnamelist[]}，则 {cmd:&varnamelist[(i-1)*129]} 指向第 {cmd:i} 个变量的名称，1 <= {cmd:i} <= {it:K}。 


{marker sortlist}{...}
{title:5.5  观察的排序顺序}

{pstd}
记录排列观察的分类顺序为

              {cmd:<sortlist>}{it:sortlist}{cmd:</sortlist>}

{pstd}
其中 {it:sortlist} 是根据 {it:byteorder} 记录的 {it:K}+1 个无符号 2 字节整数的序列（数组）。

{pstd}
{it:sortlist} 指定数据集的排序顺序，且以 2 字节零（{it:0000} 的十六进制）结束。每个 2 字节元素包含变量号或零。零标记 {it:sortlist} 的结束，且在其之后记录的值包含随机垃圾。例如，如果数据未排序，第一个 2 字节整数将包含零，之后的 2 字节整数将包含垃圾。如果 {cmd:nvar}==4，记录将如下所示

	{cmd:0000................}

{pstd}
如果数据集按某个变量排序，例如 {cmd:myvar}，且该变量在 {it:varnamelist} 中是第二个变量，记录将如下所示

	{cmd:00020000............}  （如果 {cmd:byteorder}==MSF）
	{cmd:02000000............}  （如果 {cmd:byteorder}==LSF）

{pstd}
如果数据集按 {cmd:myvar} 排序，且在 {cmd:myvar} 内部按 {cmd:vbl1} 排序，且 {cmd:vbl1} 是数据集中的第一个变量，记录将如下所示

	{cmd:000200010000........}  （如果 {cmd:byteorder}==MSF）
	{cmd:020001000000........}  （如果 {cmd:byteorder}==LSF）


{pstd}
如果将 {it:sortlist} 读入 C 数组 {cmd:short} {cmd:int}
{cmd:srtlist[]}，则 {cmd:srtlist[0]} 将是第一个排序变量的变量号，或如果数据未排序，则为 0。如果数字不为 0，则 {cmd:srtlist[1]} 将是第二个排序变量的变量号，或者如果没有第二个排序变量，亦为 0等等。


{marker formats}{...}
{title:5.6  显示格式}

{pstd}
与每个变量关联的显示格式记录为 

              {bf:<formats>}{red:{it:fmtlist}}{bf:</formats>}

{pstd}
其中 {it:fmtlist} 是记录数据中每个变量的 {it:K} 个 57 字节的格式，\0 结束，UTF-8 显示格式。
显示格式是与最大字符长度（字节长度 - 1）/4 的规则不同的一个例外。这是因为某些出现在显示格式中的字符，例如 "%"、数字、"." 等，必须在 UTF-8（ASCII）中占用 1 字节。因此，

{p 12 12 2}
没有单独的最大字符长度需要检查。  

{pstd}
检查格式的字节长度是否小于或等于 57。

{pstd}
以下是 {it:fmtlist} 的示例：

        {red:0       57       114       171    228                           285}
        |        |        |         |      |                             |
	{bf:%9.0f}\0..{bf:%8.2f}\0..{bf:%20.0g}\0..%td\0..{bf:%tcDDmonCCYY_HH:MM:SS.sss}\0...

{pstd}
{it:fmtlist} 指定变量 1 具有 {cmd:%9.0f} 格式，变量 2 具有 {cmd:%8.2f} 格式，变量 3 具有 {cmd:%20.0g} 格式，依此类推。请注意，这些是 Stata 格式，而不是 C 格式。

{phang2}
1.  以 {cmd:%t} 或 {cmd:%-t} 开头的格式是 Stata 的日期和时间格式。

{phang2}
2.  Stata 有一种旧的 {cmd:%}{cmd:d} 格式表示法，有些数据集中仍然存在它们。格式 {cmd:%}{cmd:d}...等同于现代格式 {cmd:%td}...，而 {cmd:%}{cmd:-}{cmd:d}...等同于 {cmd:%-td}... 

{phang2}
3.  非日期格式以 {cmd:gc} 或 {cmd:fc} 结尾，类似于 C 的 {cmd:g} 和 {cmd:f} 格式，但带有逗号。大多数从 Stata 中翻译而来的例程会忽略结尾的 {cmd:c}（将其更改为 {cmd:\0}）。

{phang2}
4.  格式中可以包含逗号而不是小数点，例如 {cmd:%9,2f}，表示欧洲格式。

{pstd}
如果将 {it:fmtlist} 读入 C 数组 {cmd:char} {cmd:fmtlist[]}，则 {cmd:&fmtlist[57*(i-1)]} 指向第 {cmd:i} 个变量的格式的起始地址。


{marker labelnames}{...}
{title:5.7  值标签名}

{pstd}
与每个变量关联的值标签名记录为 

              {bf:<value_label_names>}{red:{it:lbllist}}{bf:</value_label_names>}

{pstd}
其中 {it:lbllist} 是记录 {it:K} 个 129 字节，\0 终止的 UTF-8 标签名称的数组。
每个名称的长度最多为 32 个字符。

{pstd}
{it:lbllist} 包含与变量 1、...、{it:K} 关联的值格式的名称。例如， 

	{red:0   129      258   387}
	|    |         |    | 
	{cmd:\0...yesno\0...\0...yesno\0...}

{pstd}
表明变量 1 和 3 没有与其相关联的值标签，而变量 2 和 4 都与名为 {cmd:yesno} 的值标签相关联。  

{pstd}
如果将 {it:lbllist} 读入 C 数组 {cmd:char}
{cmd:lbllist[]}, 则 {cmd:&lbllist[129*(i-1)]} 指向与第 {cmd:i} 个变量关联的标签名称的起始地址。


{marker variablelabels}{...}
{title:5.8  变量标签}

{pstd}
与每个变量关联的变量标签记录为 

              {bf:<variable_labels>}{red:{it:varlbllist}}{bf:</variable_labels>}

{pstd}
其中 {it:varlbllist} 是记录 {it:K} 个 321 字节，\0 终止的变量标签字符串。
如果变量没有标签，则其标签的第一个字节为 \0。 


{marker characteristics}{...}
{title:5.9  特性}

{pstd}
特性用于记录 Stata 特有的信息，而在其他数据管理包中没有等效内容。
在写入数据时，我们建议写入 
	
              {cmd:<characteristics>}{cmd:</characteristics>}

{pstd}
这就留下读取可能包含特性的 데이터集 的问题。特性记录如下

             {cmd:<characteristics>}...{cmd:</characteristics>}

{pstd}
我们建议您跳过 {it:...} 部分。
但请不要仅仅往前扫描，直到遇到闭合标记，因为 ... 部分本身可能包含包含字符串 "{cmd:</characteristics>}" 的特性。

{pstd}
... 部分包含零个或多个单独的特性，每个特性呈现为 

               4 字节
                 |--|
             {cmd:<ch>}{it:llll}...............{cmd:</ch>}
                     |-------------|
                        {it:llll} 字节

{pstd}
其中 {it:llll} 是后续内容的长度，以 4 字节无符号整数字段记录，按 {it:byteorder} 解释。因此，在读取 {cmd:<ch>} 之后，要跳过一个单独的特性，请读取 4 字节 
({it:llll})，然后跳过 {it:llll} 字节。在此验证您接下来读取 {cmd:/ch}。之后的标记将是 {cmd:</characteristics>}，表示您完成了，或者 {cmd:<ch>}，表示还有另一个单独的特性需要跳过。

{pstd} 
对于希望读取和写入特性的人，... 部分包含正在定义的单独特性的相关信息，记录为



             {red:0           129              258       {it:l}-1}
             |             |                |        |
             {red:{it:varname}{bf:\0.....}{it:charname}{bf:\0}.......{it:contents}{bf:\0}}
             |---------------------------------------|
                            {it:llll} 字节

{pstd}
字节 0-129 包含一个以 \0 终止的 UTF-8 编码变量名称，字节 129-257 包含一个以 \0 终止的 UTF-8 编码特性名称，字节 258 到记录结尾的都是以二进制零终止的 UTF-8 特性内容 {it:varname}{cmd:[}{it:charname}{cmd:]}。

{pstd}
内容的最大允许字节长度，包括二进制 0，为 67,784。


{marker data}{...}
{title:5.10  数据}

{pstd}
数据记录为 

              {cmd:<data>}{it:data}{cmd:</data>}

{pstd}
其中 {it:data} 是观察值 1 后跟观察值 2，依此类推，直到观察值 {it:N}，

              {cmd:<data>}{it:obs1obs2obs3...obsN}{cmd:</data>}

{pstd} 
且每个观察值是变量 1 的值后跟变量 2 的值，依此类推，直到变量 {it:K} 的值，

              {cmd:<data>}{it:v11v12...v1Kv21v22...v2K......vN1vN2...VNK}{cmd:</data>}
                    |-------------||-------| .... |----------|
                    |    观察 1   || 观察 2| .... |  观察  {it:N}  |

{pstd}
每个 {it:vIJ} 按其内部格式记录，记由 {it:typlist} 指定，并在 {help dta##strings:3}（strfs）和 {help dta##numbers:4}（数值）中定义。
我们尚未解释 strLs 的写入方式；我们将在 {help dta##strls:5.11} 中进行解释。在此之前，让我们设想一个没有 strLs 的数据集。

{pstd}
所有值根据 {it:byteorder} 书写。若值的长度小于所允许的空间，则 strfs 以二进制零终止，但如果它们为全宽，则不进行终止。

{pstd}
例如，考虑一个数据集，其中 {it:V1} 是 {cmd:float}，{it:V2} 是 {cmd:byte}，{it:V3} 是 {cmd:double}，{it:V4} 是 {cmd:str6}：


        . {cmd:describe}

        包含的数据
          观察:             2                          
         变量:             4                          
         大小:            38                          
	{hline 64}
                      存储  显示     值
        变量名称   类型   格式      标签      变量标签
	{hline 64}
        V1              float  %9.0g                  
        V2              byte   %8.0g                  
        V3              double %10.0g                 
        V4              str6   %9s                    
	{hline 64}
        排序依据：  

        . {cmd:}list

             {c TLC}{hline 23}{c TRC}
             {c |} V1   V2   V3       V4 {c |}
             {c LT}{hline 23}{c RT}
          1. {c |}  0    1    2    first {c |}
          2. {c |}  1    2    3   second {c |}
             {c BLC}{hline 23}{c BRC}

{pstd}
对应的 {cmd:<data>}...{cmd:</data>} 将读取（假设 MSF 字节顺序），

        <data>{it:00000000014000000000000000}first{it:00}{it:3f800000024008000000000000}
	second</data>

{pstd}
变量和观察值的值是连在一起的，但如果我们添加无关的空白，便可以更容易地理解。 

	<data>
		 {it:00000000 01 4000000000000000} first{it:00}
		 {it:3f800000 02 4008000000000000} second
	</data>
		
{p 8 12 2}
1.  每个变量的值根据其变量类型写入。 

{p 12 12 2}
    {cmd:V1} 的值是 4 字节（8 个十六进制数字）长，因为 {cmd:V1} 是 {cmd:float} 类型。被写入的内容被解释为 4 字节 IEEE 浮点数。 

{p 12 12 2}
    {cmd:V2} 的值是 1 字节（2 个十六进制数字）长，因为 {cmd:V2} 是 {cmd:byte} 类型。被写入的内容被解释为 1 字节有符号整数。 

{p 12 12 2}
    {cmd:V3} 的值是 8 字节（16 个十六进制数字）长，因为 {cmd:V3} 是 {cmd:double} 类型。被写入的内容被解释为 8 字节 IEEE 浮点数。 

{p 8 12 2}
2.  仔细观察 {cmd:V4}，即一个 {cmd:str6} 类型，值为 "first" 和 "second"。值 "first" 是以 first\0 记录的，带有尾随的二进制零。值 "second" 则不带尾随的二进制零，因为 "second" 的长度为 6 字节，意味着满宽度的字符串。如果另一条观察值包含 "dog"，则将记录为 dog\0..—— 记录了一个二进制 0，然后写入两个随机字节，使得写入的长度达到所需的 6。

{p 12 12 2}
    一般规则是 {cmd:str#} 会在 # 字节的字段中写入。如果值的长度为 # 字节，则不带二进制零。如果值的长度小于 # 字节，则在字符串末尾添加一个二进制零。 

{p 12 12 2}
    空字符串总是以 \0 记录，如果有必要，则用随机字节填充以满足所需长度。


{marker strls}{...}
{title:5.11  字符串列表}

{pstd}
StrLs 是长字符串。在上述 {cmd:<data>}...{cmd:</data>} 的部分，我们看到每个 strf 的值——Stata 类型 {cmd:str1}、{cmd:str2}、...、{cmd:str2045}——被记录为固定长度的字符串。

{pstd}
StrLs 可以长达 20 亿字节，因此它们的记录方式不同。

{pstd}
如果数据中没有 strL 变量，{cmd:<strls>}...{cmd:</strls>} 被记录为

		{cmd:<strls></strls>}

{pstd}
在 {help dta##data:5.10} 节中，我们有一个示例，展示了包含四个变量和两个观察值的数据集的 {cmd:<data>}...{cmd:</data>} 内容。在那示例中没有 strLs，因此整个 {cmd:<data>}...{cmd:</data>} 和 {cmd:<strls>}...{cmd:</strls>} 将读取

        <data>{it:00000000014000000000000000}first{it:00}{it:3f800000024008000000000000}
	second</data><strl><strls>

{pstd}
或以更可读的格式表示，添加无关的空格， 

	<data>
		 {it:00000000 01 4000000000000000} first{it:00}
		 {it:3f800000 02 4008000000000000} second
	</data>
	<strls>
	</strls>

{pstd}
让我们在该示例的数据集中添加一个 strL 变量作为变量 {cmd:V5}：

        . {cmd:describe}

        包含的数据
          观察:             2                          
         变量:             5                          
         大小:            38                          
	{hline 64}
                      存储  显示     值
        变量名称   类型   格式      标签      变量标签
	{hline 64}
        V1              float  %9.0g                  
        V2              byte   %8.0g                  
        V3              double %10.0g                 
        V4              str6   %9s                    
        V5              strL   %9s                    
	{hline 64}
        排序依据：  


        . {cmd:list}
             {c TLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c TRC}
             {c |} V1   V2   V3       V4       V5 {c |}
             {c LT}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c RT}
          1. {c |}  0    1    2    first    third {c |}
          2. {c |}  1    2    3   second    fourth {c |}
             {c BLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c BRC}

{pstd}
strL 变量的数据被分为 {cmd:<data>}...{cmd:</data>} 和 {cmd:<strls>}...{cmd:</strls>}。
它们在 {cmd:.dta} 文件中紧随其后，看起来像这样，

	<data>{it:00000000014000000000000000}first{it:00}{red:{it:0005000000000001}}
	{it:3f800000024008000000000000}second{red:{it:0005000000000002}}</data>
        <strls>GSO{it:00050000000000018200000006}third{it:00}GSO{red:{it:000000000}}
	{red:{it:0000005}}{it:000000028200000007}fourth{it:00}</strls>

{pstd}
或在更可读的格式下，添加不重要的空格， 

	<data>
	    {it:00000000 01 4000000000000000} first{it:00} {red:{it:000500000000000001}}
	    {it:3f800000 02 4008000000000000} second  {red:{it:000500000000000002}}
	</data>
	<strls>
            GSO {it:00000005 {red:0000000000000001} 82 00000006} third{it:00}
            GSO {it:00000005 {red:0000000000000002} 82 00000007} fourth{it:00}
	</strls>

{pstd}
StrLs 分为两个部分记录：

{p 8 12 2}
1.  在 {cmd:<data>}...{cmd:</data>} 的可读显示中，我们将每个观察值放在单独的行上，并将不重要的空格放在变量之间。以下是 {bf:<data>}...{bf:</data>} 部分的再次展现：

	        <data>
	            {it:00000000 01 4000000000000000} first{it:00} {red:{it:000500000000000001}}
	            {it:3f800000 02 4008000000000000} second  {red:{it:000500000000000002}}
	        </data>

{p 12 12 2}
    StrL 变量是最后一个——红色的那个，但这并非其红色的原因。红色代表对以前 {cmd:.dta} 格式的变化。然而，两个 StrL 值被记录为 {it:000500000000000001} 和 {it:000500000000000002}。

{p 12 12 2}
    {it:000500000000000001} 和 {it:000500000000000002} 各表示一个 8 字节字段。将该 8 字节字段解释为一个 2 字节整数，后跟一个 6 字节整数：

                 {it:000500000000000001} = {it:0005 00000000000001} = 5, 1

                 {it:000500000000000002} = {it:0005 00000000000002} = 5, 2

{p 12 12 2}
    每个观察值中的两个值称为 ({it:v},{it:o}) 值。{it:v} 和 {it:o} 表示 "变量" 和 "观察"。它们指示变量 5，第 1 个观察值的 strL 存储在变量 5 和第 1 个观察值的 {bf:<strl>}...{bf:</strl>} 表中，变量 5 和第 2 个观察值的 strL 存储在变量 5 的 strL 表中，第 2 个观察值中。

{p 12 12 2}
    嗯，它们还会在哪里？事实上，如果两个 strLs 在观察之间甚至在变量之间相等，或者在变量和观察之间相等，那么 ({it:v},{it:o}) 值可以与在 {bf:<data>}...{bf:</data>} 中记录的变量和观察不同。
    它们可以交叉引用其他变量和观察，这样可以节省内存。通常情况下，({it:v},{it:o}) 等于在 {bf:<data>}...{bf:</data>} 中记录的变量和观察。

{p 12 12 2}
    在转到解释 {bf:<strl>}...{bf:</strl>} 表之前，我们先谈谈此 ({it:v},{it:o}) 在 {bf:<data>}...{bf:</data>} 中的 2 字节加 6 字节编码。

{p 12 12 2}
    使用 6 字节整数是非常奇怪的。在之前的 {cmd:.dta} 格式中，({it:v},{it:o}) 值以两个 4 字节的值写入。从那时起，Stata 学会了处理更多的观察，且 {it:o} 不再能仅用 4 字节存储。Stata 允许最多 281 TB 的观察，这意味着需要更大的整数来存储 {it:o}。8 字节整数是自然选择。但是，出于某种原因，我们需要将该字段仍保持为 8 字节。因此将其拆分为 2 字节和 6 字节，这对于我们的目的来说足够了。
请参阅 {help dta##strls_advwb:5.11.4} 和 {help dta##strls_advrb:5.11.6} 查看有关编写和阅读 6 字节整数的 C 代码。


{p 8 12 2}
2.  {cmd:<strls>}...{cmd:</strls>} 记录 ({it:v},{it:o}) 值与相应字符串的映射。对于 strLs，字符串被称为通用字符串对象（GSOs）。
让我们重述我们示例中可读的 {bf:<strls>}...{bf:</strls>} 形式：

	        <strls>
                    GSO {it:00000005 {red:0000000000000001} 82 00000006} third{it:00}
                    GSO {it:00000005 {red:0000000000000002} 82 00000007} fourth{it:00}
	        </strls>

{p 12 12 2}
在这个示例中，定义了两个 GSOs。
第一个是 ({it:v},{it:o}) = (5,1) 的 GSO，第二个是 ({it:v},{it:o}) = (5,2) 的 GSO。
这次，没有 2 字节、6 字节的麻烦。{it:v} 被记录为 4 字节整数，{it:o} 被记录为 8 字节整数。

{p 12 12 2}
({it:v},{it:o}) = (5,1) 对应于 "third"。

{p 12 12 2}
({it:v},{it:o}) = (5,2) 对应于 "fourth"。

{pstd}
显然，GSO 中记录的信息不仅仅是 ({it:v},{it:o}) 值及其对应的字符串，我们将逐步了解，但首先我们关注 ({it:v},{it:o}) 值。




{marker strls_vo}{...}
{title:5.11.1  (v,o) 值}

{pstd}
如果我们的数据集中包含变量 V5，其中两个观察值均为 "third"，


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
	    {it:00000000 01 4000000000000000} first{it:00} {red:{it:000500000000000001}}
	    {it:3f800000 02 4008000000000000} second  {red:{it:000500000000000002}}
	</data>
	<strls>
            GSO {it:00000005 {red:0000000000000001} 82 00000006} third{it:00}
            GSO {it:00000005 {red:0000000000000002} 82 00000006} third{it:00}
	</strls>
    
{pstd}
或者如下记录：

	<data>
	    {it:00000000 01 4000000000000000} first{it:00} {red:{it:000500000000000001}}
	    {it:3f800000 02 4008000000000000} second  {red:{it:000500000000000001}}
	</data>
	<strls>
            GSO {it:00000005 {red:0000000000000001} 82 00000006} third{it:00}
	</strls>

{pstd}
注意在第二种形式中，只有一个 GSO，并且两个观察值通过指定 ({it:v},{it:o}) 作为 (5,1) 在 {bf:<data>}...{bf:</data>} 中。这个被称为共享或交叉关联的 GSO。许多观察可以链接到同一 GSO。

{pstd}
顺便说一下，数据不可以这样登记：

	<data>
	    {it:00000000 01 4000000000000000} first{it:00} {red:{it:000500000000000002}}
	    {it:3f800000 02 4008000000000000} second  {red:{it:000500000000000002}}
	</data>
	<strls>
            GSO {it:00000005 {red:0000000000000002} 82 00000006} third{it:00}
	</strls>

{pstd}
第一次出现的 strL 必须在读取 {bf:<data>}...{bf:</data>} 表时从左到右进行定义。
在变量 {it:i}，观察 {it:j} 中，如果 ({it:v},{it:o}) ==
({it:i},{it:j})，则称此 strL 为在该位置定义。如果在该位置记录的字符串 "third"，则 {it:v} 和 {it:o} = (5,1)。
其后，您可以对已定义的 ({it:v},{it:o}) 值进行反向引用或定义新值。不允许进行正向引用。

{pstd}
({it:v},{it:o}) = (0,0) 是允许的特殊值，指向为您预定义的一个包含空字符串 ("") 的 GSO（您不能在 {bf:<strl>...</strl>} 表中重新定义它）。
如果第一个观察中的变量 V5 包含一个空字符串， 

        . {cmd:list}
             {c TLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c TRC}
             {c |} V1   V2   V3       V4       V5 {c |}
             {c LT}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c RT}
          1. {c |}  0    1    2    first          {c |}
          2. {c |}  1    2    3   second   fourth {c |}
             {c BLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c BRC}

{pstd}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dta.sthlp>}