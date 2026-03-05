{smcl}
{* *! version 2.0.13  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] sysuse" "help sysuse_zh"}{...}
{vieweralsosee "[D] webuse" "help webuse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 1.2.2 示例数据集" "help dta_contents_zh"}{...}
{viewerjumpto "描述" "dta_117_zh##description"}{...}
{viewerjumpto "备注" "dta_117_zh##remarks"}
{help dta_117:English Version}
{hline}{...}
{title:标题}

{p2colset 5 30 32 2}{...}
{p2col :{hi:[P] 文件格式 .dta} {hline 2}}描述 .dta 文件格式 117{p_end}
{p2colreset}{...}


{pstd}
{bf:警告:}
下面的条目描述了旧版 Stata {cmd:.dta} 文件格式的内容。
新版 Stata 仍然能够读取，甚至可能写入这种旧格式。
以下是当 {cmd:.dta} 文件格式还是当前文件格式时的原始帮助文件。


{marker description}{...}
{title:描述}

{pstd}
下面描述了 Stata {cmd:.dta} 数据集的格式。
该描述高度技术化，旨在满足需要用 C 或其他语言编写程序以读取和写入这些数据集的用户。

{pstd}
这里描述的格式自 Stata 13 起生效。
有关早期文件格式的文档，请参见 {help dta_115_zh}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:.dta} 文件的格式随着时间而变化。 Stata 13 写入
被称为 {cmd:.dta} 格式-117 文件并能够读取所有已发布文件的格式。
{cmd:.dta} 格式的最近历史如下：

	格式        当前版本
	{hline 39}
	  117         Stata 13 
	  116         内部；从未发布
	  {help dta_115_zh:115}         Stata 12
	  {help dta_114_zh:114}         Stata 10
	  {help dta_113_zh:113}         Stata  8
	{hline 39}

{marker f117}{...}
{pstd}
格式 117 在下文中有说明。

{pstd}
备注按以下标题呈现：

	{help dta_117##intro:1.  介绍}
	{help dta_117##versions:2.  Stata 的版本和种类}
	{help dta_117##strings:3.  字符串的表示}
	{help dta_117##numbers:4.  数字的表示}
 	{help dta_117##definition:5.  数据集格式定义}
	    {help dta_117##header:5.1  头部}
                 {help dta_117##header_release:5.1.1  文件格式 ID}
                 {help dta_117##header_byteorder:5.1.2  字节顺序}
                 {help dta_117##header_K:5.1.3  K，变量数量}
                 {help dta_117##header_N:5.1.4  N，观察数量}
                 {help dta_117##header_label:5.1.5  数据集标签}
                 {help dta_117##header_timestamp:5.1.6  日期时间戳}
	    {help dta_117##map:5.2  映射}
	    {help dta_117##variabletypes:5.3  变量类型}
	    {help dta_117##variablenames:5.4  变量名称}
	    {help dta_117##sortlist:5.5  观察排序顺序}
	    {help dta_117##formats:5.6  显示格式}
	    {help dta_117##labelnames:5.7  值标签名称}
	    {help dta_117##variablelabels:5.8  变量标签}
	    {help dta_117##characteristics:5.9  特征}
	    {help dta_117##data:5.10 数据}
            {help dta_117##strls:5.11 StrLs}
	         {help dta_117##strls_vo:5.11.1 (v,o) 值}
	         {help dta_117##strls_gso:5.11.2 GSOs}
	         {help dta_117##strls_advw:5.11.3 写入 strLs 的建议}
	         {help dta_117##strls_advr:5.11.4 读取 strLs 的建议}
	    {help dta_117##value_labels:5.12 值标签}


{marker intro}{...}
{title:1.  介绍}

{pstd}
Stata 格式的数据集以一种适用于跨越不一致记录数据的计算机而通用的方式记录数据。 因此，同一数据集可以在 Windows、Unix 和 Mac 计算机上使用，无需翻译。 考虑到计算机，数据集被分为两类：本地格式和外部格式数据集。 Stata 使用以下两条规则：

{p 8 13 2}
    R1.  在某台计算机上，Stata 只知道如何写入本地格式数据集。

{p 8 13 2}
    R2.  即便如此，Stata 仍能 {it:read} 所有数据集格式，无论是外部格式还是本地格式。

{pstd}
规则 R1 和 R2 确保 Stata 用户无需关心数据集格式。如果您正在编写一个读取和写入 Stata 数据集的程序，您将不得不确定是否希望遵循相同的规则，或者仅限于操作本地格式数据集。 由于 Stata 遵循规则 R1 和 R2，因此此类限制并不会过于严苛。如果用户拥有外部格式数据集，他或她可以进入 Stata，{help use_zh} 数据，然后再次 {help save_zh} 它。

{marker versions}{...}
{title:2.  Stata 的版本和种类}

{pstd}
Stata 不断更新，这些更新有时要求改变 Stata 记录 {cmd:.dta} 数据集的方式。 本文档描述了被称为 {it:format-117} 数据集，这是当前的最新格式。 Stata 本身能够读取旧格式，但每当它写入数据集时，它都会使用 117 格式。

{pstd}
当前可用的 Stata 版本有三种：
{help stataic_zh:Stata/IC}、{help SpecialEdition:Stata/SE} 和 
{help statamp_zh:Stata/MP}。 所有版本都使用相同的 117 格式。
不同之处在于某些版本中的数据集可以更大。

{marker strings}{...}
{title:3.  字符串的表示}

{phang}
1.  Stata 有两种字符串格式，用户称之为 {cmd:str}{it:#} 和 {cmd:strL}。 大多数字符串以 {cmd:str}{it:#} 格式记录，但这取决于用户的选择。
    {cmd:strL} 格式允许更长的字符串，并同时支持二进制和 ASCII 字符串。  {cmd:str}{it:#} 字符串只能是 ASCII。

{p 8 8 2}
    顺便提一下，StataCorp 内部术语将 {cmd:str}{it:#} 字符串称为 "strfs"（发音为 {it:sturfs}），而将 {cmd:strL} 称为 "strLs"（发音为 {it:sturls}）。  strf 中的 {it:f} 代表固定分配长度，这是写入文件的方式。

{phang}
2.  我们在第 {help dta_117##strls:5.11} 节讨论了 {cmd:strL} 格式字符串。

{phang}
3.  strfs 的长度可以是 1 到 2045 字节。

{phang}
4.  如果字符串的长度小于声明的最大长度，strfs 以包含一个尾随的二进制零 ({cmd:\0}) 分隔符形式记录。 如果字符串的长度达到了最大长度，则不记录分隔符。

{phang}
5.  前导和尾随空格是有意义的。

{phang}
6.  strfs 使用 ASCII 编码。


{marker numbers}{...}
{title:4.  数字的表示}

{phang}
1.  数字表示为 1 字节、2 字节和 4 字节整数以及 4 字节和 8 字节浮点数。 对于浮点数，使用 ANSI/IEEE 标准 754-1985 格式，这在此处所考虑的二进制浮点数中等同于 IEEE 标准 754-2008。

{phang}
2.  所有数字类型的字节顺序在不同机器上可能不同。 字节按照从最低有效位到最高有效位（称为 LSF）或从最高有效位到最低有效位（称为 MSF）的顺序排列。例如，基于 Intel 的计算机大多使用 LSF 编码。基于 Sun SPARC 的计算机使用 MSF 编码。基于 Itanium 的计算机有趣的是，它们可以根据操作系统使用 LSF 或 MSF。 Windows 和 Linux 在 Itanium 上使用 LSF 编码。 HP-UX 在 Itanium 上使用 MSF 编码。

{phang}
3.  在 LSF 机器上读取 MSF 数字或在 MSF 机器上读取 LSF 数字时，请在解释数字之前执行以下操作：

	    字节          不需转换
	    2 字节整数    交换字节 0 和 1
	    4 字节整数    交换字节 0 和 3，1 和 2
	    4 字节浮点  交换字节 0 和 3，1 和 2
	    8 字节浮点  交换字节 0 和 7，1 和 6，2 和 5，3 和 4

{phang}
4.  在书面文档中，数字以最高有效字节在前的方式书写。 因此， {cmd:0x0001} 指代一个逻辑值为 1 的 2 字节整数。

{phang}
5.  Stata 有五种数字数据类型。 它们是：

	    {cmd:byte}          1 字节有符号整数
	    {cmd:int}           2 字节有符号整数
	    {cmd:long}          4 字节有符号整数
	    {cmd:float}         4 字节 IEEE 浮点数
	    {cmd:double}        8 字节 IEEE 浮点数

{phang}
6.  每种类型有 27 个 {help missing_zh:缺失值代码}，称为 {cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z}。
    对于每种类型，允许的非缺失值范围和缺失值代码为：

	    {cmd:byte}
		最小非缺失值   -127   (0x80)
		最大非缺失值   +100   (0x64)
		{cmd:.} 的代码        +101   (0x65)
		{cmd:.a} 的代码       +102   (0x66)
		{cmd:.b} 的代码       +103   (0x67)
		...
		{cmd:.z} 的代码       +127   (0x7f)

	    {cmd:int}
		最小非缺失值   -32767 (0x8000)
		最大非缺失值   +32740 (0x7fe4)
		{cmd:.} 的代码        +32741 (0x7fe5)
		{cmd:.a} 的代码       +32742 (0x7fe6)
		{cmd:.b} 的代码       +32743 (0x7fe7)
		...
		{cmd:.z} 的代码       +32767 (0x7fff)

	    {cmd:long}
		最小非缺失值   -2,147,483,647  (0x80000000)
		最大非缺失值   +2,147,483,620  (0x7fffffe4)
		{cmd:.} 的代码        +2,147,483,621  (0x7fffffe5)
		{cmd:.a} 的代码       +2,147,483,622  (0x7fffffe6)
		{cmd:.b} 的代码       +2,147,483,623  (0x7fffffe7)
		...
		{cmd:.z} 的代码       +2,147,483,647  (0x7fffffff)

	    {cmd:float}
		最小非缺失值   -1.701e+38  (-1.fffffeX+7e)  {it:(sic)}
		最大非缺失值   +1.701e+38  (+1.fffffeX+7e)
		{cmd:.} 的代码                        (+1.000000X+7f)
		{cmd:.a} 的代码                       (+1.001000X+7f)
		{cmd:.b} 的代码                       (+1.002000X+7f)
		...
		{cmd:.z} 的代码                       (+1.01a000X+7f)

	    {cmd:double}
		最小非缺失值   -1.798e+308 (-1.fffffffffffffX+3ff)
		最大非缺失值   +8.988e+307 (+1.fffffffffffffX+3fe)
		{cmd:.} 的代码                        (+1.0000000000000X+3ff)
		{cmd:.a} 的代码                       (+1.0010000000000X+3ff)
		{cmd:.b} 的代码                       (+1.0020000000000X+3ff)
		...
		{cmd:.z} 的代码                       (+1.01a0000000000X+3ff)

{pmore}
注意，对 {cmd:float} 来说，所有 {it:z}>1.fffffeX+7e，对 {cmd:double} 来说，所有 {it:z}>1.fffffffffffffX+3fe 被视为缺失值，只有一部分值被标识为 {cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z}。 例如，位于 {cmd:.a} 和 {cmd:.b} 之间的值仍被视为缺失，特别的是，位于 {cmd:.a} 和 {cmd:.b} 之间的所有值统称为 {cmd:.a_}。 然而，记录这些值是应该避免的。

{pmore}
在上面的表中，我们使用了
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
的表示法。 处于 {cmd:X} 左侧的数字应被解释为十六进制数字（因此小数点是十六进制点），右侧的数字（同样也以十六进制记录）应被解释为 2 的幂 {it:(sic)}。 例如，

	    1.01aX+3ff = (1.01a) * 2^(3ff)                        (十六进制)
		       = (1 + 0/16 + 1/16^2 + 10/16^3) * 2^1023   (十进制)

{pmore}
此
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
的表示法很容易转换为 IEEE 8 字节双精度：
{cmd:1} 是隐藏位，十六进制点右侧的数字是尾数位，指数组是以带符号（移除偏移量的形式）记录的 IEEE 指数。
例如，pi = 3.1415927... 是

					    8 字节 IEEE, MSF
					 {hline 23}
	    pi = +1.921fb54442d18X+001 = 40 09 21 fb 54 44 2d 18

				       = 18 2d 44 54 fb 21 09 40
					 {hline 23}
					    8 字节 IEEE, LSF

{pmore}
将
{c -(}{cmd:+}|{cmd:-}{c )-}{cmd:1.}{it:<digits>}{cmd:X}{c -(}{cmd:+}|{cmd:-}{c )-}{it:<digits>}
转换为 IEEE 4 字节浮点数会更困难，但同样的规则适用： {cmd:1} 是隐藏位，十六进制点右侧的数字是尾数位，指数组是以带符号（移除偏移量的形式）记录的 IEEE 指数。 使其更难的原因是，IEEE 4 字节格式的符号和指数占用 9 位，这不能被 4 整除，因此一切都向右偏移了一个位。 在浮点数中：

				      4 字节 IEEE, MSF
					 {hline 11}
	    pi = +1.921fb60000000X+001 = 40 49 0f db

				       = db of 49 40
					 {hline 11}
				      4 字节 IEEE, LSF

{pmore}
获得上面结果的最简单方法是先将
+1.921fb60000000X+001 转换为 8 字节双精度，然后将 8 字节双精度转换为 4 字节浮点数。

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
一个 Stata 数据集包含两个变量，名称为 {cmd:myfloat} 和 
{cmd:myint} -- {cmd:myfloat} 为 Stata 4 字节 {cmd:float}，{cmd:myint}
为 Stata 2 字节 {cmd:int} -- 以及一个观测值，其中 
{cmd:myfloat} = {cmd:myint} = 0，写入磁盘的 
数据集记录于 2013 年 7 月 10 日下午 2:23，如下所示：

        {hline 40} {it:文件顶部} {hline 5}
	<stata_dta>

	    <header>
		<release>117</release>
		<byteorder>MSF</byteorder>
		<K>{rm:{it:0002}}</K>
		<N>{rm:{it:00000001}}</N>
		<label>{rm:{it:00}}</label>
		<timestamp>{rm:{it:11}}2013 年 7 月 10 日 14:23</timestamp>
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
                {rm:{it:000000000000}}
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
        {hline 40} {it:文件结尾} {hline 5}

{pstd}
我们在演示中对排版进行了自由处理。 实际上，文件是合并在一起的，因此看起来更像这样，

        {hline 40} {it:文件顶部} {hline 5}
        <stata_dta><header><release>117</release><byteorder>MSF</by
        teorder><K>{rm:{it:0002}}</K><N>{rm:{it:00000001}}</N><label>{rm:{it:00}}</label><timesta
        mp>{rm:{it:11}}2013 年 7 月 10 日 14:23</timestamp></header><map>{it:00000000000}
	{it:00000}{it:0000000000000099}{it:0000000000000141}{it:0000000000000139}{it:000000}
	{it:0000000190}{it:00000000000001ab}{it:0000000000000220}{it:000000000000034e}{it:0}
	{it:000000000000371}{it:0000000000000384}{it:0000000000000393}{it:000000000000}
	{it:03b0}{it:00000000000003bc}</map><variable_types>{rm:{it:fff7}}</variable_ty
	pes><varnames>myfloat{it:00}........................ myint{it:00}....
	......................</varnames><sortlist>{it:000000000000}</so
	rtlist><formats>%9.0g{it:00}...............................%8.0g
	{it:00}...............................</formats><value_label_nam
	es>{it:00}................................{it:00}....................
	.............</value_label_names><variable_labels>{it:00}.......
	...........................................................
	..............{it:00}...........................................
	.....................................</variable_labels><cha
	racteristics></characteristics><data>{rm:{it:000000000000}}</data><st
	rls></strls><value_labels></value_labels></stata_dta>
	{hline 40} {it:文件结尾} {hline 5}

{pstd}
我们使用十六进制值以斜体展示二进制内容。
例如，{it:00} 代表 1 字节的二进制零。 {it:11} 紧随 <timestamp> 的含义是录入十六进制 11，相当于
十进制的 17，而 17 是后面的日期时间戳的长度：“2013 年 7 月 10 日 14:23”。
我们使用句点展示可能包含随机值的字节 -- 这些值应该被忽略。

{pstd}
117 格式的 {cmd:.dta} 文件以 {cmd:<stata_dta>} 开头 
并以 {cmd:</stata_dta>} 结束：

                         {cmd:<stata_dta>}..........{cmd:</stata_dta>}
                        /                                  \
                 {it:文件开始                        文件结束}

{pstd}
在这些标记之间出现：

        头部             {cmd:<header>}..............{cmd:</header>}
	文件映射	   {cmd:<map>}.................{cmd:</map>}
        变量类型     {cmd:<variable_types>}......{cmd:</variable_types>}
        变量名称     {cmd:<varnames>}............{cmd:</varnames>}
        排序顺序         {cmd:<sortlist>}............{cmd:</sortlist>}
        变量 %fmts     {cmd:<formats>}.............{cmd:</formats>}
        值标签名称  {cmd:<value_label_names>}...{cmd:</value_label_names>}
        变量标签    {cmd:<variable_labels>}.....{cmd:</variable_labels>}
        特征    {cmd:<characteristics>}.....{cmd:</characteristics>}
        数据本身    {cmd:<data>}................{cmd:</data>}
        strLs              {cmd:<strls>}...............{cmd:</strls>}
        值标签       {cmd:<value_labels>}........{cmd:</value_labels>}

{pstd}
每对标记必须出现，即使内容为空，并且
标记对的出现顺序必须如上所示。



{marker header}{...}
{title:5.1  头部}

{pstd}
头部定义为

	{cmd:<header>}...{cmd:</header>}

{pstd}
在这些标记之间出现：

        文件格式 ID     {cmd:<release>}...{cmd:</release>}
        字节顺序          {cmd:<byteorder>}...{cmd:</byteorder>}
        变量数量     {cmd:<K>}...{cmd:</K>}
        观察数量  {cmd:<N>}...{cmd:</N>}
        数据集标签      {cmd:<label>}...{cmd:</label>}
        日期时间戳     {cmd:<timestamp>}...{cmd:</timestamp>}

{pstd}
每个标记都必须出现，并且必须按照所示顺序出现。


{marker header_release}{...}
{title:5.1.1  文件格式 ID}

{pstd}
{it:file_format_id} 被记录为 

              {cmd:<release>}{cmd:117}{cmd:</release>}


{marker header_byteorder}{...}
{title:5.1.2  字节顺序}

{pstd}
{it:byteorder} 被记录为 

              {cmd:<byteorder>}{it:byteorder}{cmd:</byteorder>}

{pstd}
其中 {it:byteorder} 可能是 {cmd:MSF} 或 {cmd:LSF}。

{pstd}
{cmd:MSF} 代表最高有效字节优先。 
在这种编码中，数字 1 作为 2 字节整数记录时
将为 {it:00} 后跟 {it:01}：  {it:0001}。

{pstd}
{cmd:LSF} 代表最低有效字节优先。 
在这种编码中，数字 1 作为 2 字节整数记录时
将为 {it:01} 后跟 {it:00}：  {it:0100}。


{marker header_K}{...}
{title:5.1.3  K，变量数量}

{pstd}
{it:K}，存储在数据集中的变量数量，记录为 

              {cmd:<K>}{it:bb}{cmd:</K>}

{pstd}
其中 {it:K} = {it:bb} 是一个按照 {it:byteorder} 记录的 2 字节无符号整数字段。


{marker header_N}{...}
{title:5.1.4  N，观察数量}

{pstd}
{it:N}，存储在数据集中的观察数量，记录为 

              {cmd:<N>}{it:bbbb}{cmd:</N>}

{pstd}
其中 {it:N} = {it:bbbb} 是一个 4 字节无符号整数字段，按照 {it:byteorder} 记录。



{marker header_label}{...}
{title:5.1.5  数据集标签}

{pstd}
数据集标签记录为 
                             
              {cmd:<label>}{it:lccccc........c}{cmd:</label>}
                      |------------|
                       {it:l 字符}

{pstd}
首先记录的是数据集标签的长度 {it:l}，不包括终止的二进制 0。  {it:l} 是一个 1 字节的无符号整数字段，要求 0 <= {it:l} <= 十进制 80 （十六进制 50）。  之后是 {it:l} 的 ASCII 字符。


{marker header_timestamp}{...}
{title:5.1.6  日期时间戳}

{pstd}
日期时间戳记录了文件写入的日期和时间。
日期时间戳记录为 

              {cmd:<timestamp>}{it:lccccc........c}{cmd:</timestamp>}
                          |------------|
                           {it:l 字符}

{pstd}
首先记录的是日期时间戳的长度 {it:l}，不包括终止的二进制 0（如有）。  {it:l} 是一个 1 字节的无符号整数字段。
{it:l} 的 ASCII 字符随后出现。

{pstd}
{it:l} 要求为 0 或十进制 17。 如果 {it:l}==0，则不记录日期时间戳。 如果 {it:l}==(十进制) 17，则以格式记录日期时间戳

                 ----+----1----+--
	         {it:dd Mon yyyy hh}{cmd::}{it:mm}
{pstd}
例如 
{p_end}
		 10 Jul 2013 14:23

{pstd}
如果 {it:dd}<10 或 {it:hh}<10，则元素会以
前缀空格或前导零记录：

		 04 Jul 2032 04:23
		  4 Jul 2013  4:23

{marker map}{...}
{title:5.2  映射}

{pstd}
映射与文件中的位置有关，而非 Stata 数据本身。
映射记录为 

              {cmd:<map>}{it:filepositions}{cmd:</map>}

{pstd}
其中 {it:filepositions} 是从文件开始位置以字节为单位的 14 个 
8 字节偏移量的列表（向量），按照 {it:byteorder} 书写。
要记录的 14 个位置为：

	         #        文件开始位置
		{hline 47}
	         1.       {cmd:<stata_data>}，定义上是 0
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
		14.       {it:文件结束}
		{hline 47}

{pstd}
注意事项：

{p 8 12 2}
1.  文件位置是可以通过 C 函数 {cmd:lseek()} 获取和设置的值。 在写入上面列出的标记之前，通过 {cmd:lseek(fd, 0, SEEK_CUR)} 获取文件位置，或在 {it:文件结束} 的情况下，在写入 {cmd:</stata_data>} 之后获取文件位置。

{p 8 12 2}
2.  如果您正在写入文件，我们建议在您继续顺序写入时写入
    {cmd:<map>}...{cmd:</map>}，并用零填充所有文件位置，并在如 

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
    在相应标记写入之前，在结构中记录文件位置。 一旦您写入了 {cmd:</stata_data>}，就寻求 {cmd:map+5} 并重写文件位置。 然后关闭文件 {cmd:close()}。

{p 8 12 2}
3.  请注意，文件位置为 8 字节长度，因为在 64 位计算机上的情况也是如此。 如果您在 32 位计算机上，则必须将最高 4 字节设置为 0，并在最低 4 字节中记录您的 32 位文件位置。 如果您在 {cmd:MSF} 计算机上，则写入每个文件位置时，首先写入 4 字节 0，然后写入 4 字节文件位置。
    如果您在 {cmd:LSF} 计算机上，则写入每个文件位置时，先写入 4 字节文件位置，然后写入 4 字节 0。


{marker variabletypes}{...}
{title:5.3  变量类型}

{pstd}
变量类型以以下方式记录：

              {cmd:<variable_types>}{it:typlist}{cmd:</variable_types>}

{pstd}
其中 {it:typlist} 是记录变量 1、2、...、{it:K} 的 {it:K} 个 2 字节无符号整数字段的序列（向量），按照 {it:byteorder} 书写。

{pstd}
类型编码如下：

                         Stata 
           typ          含义      描述
	{hline 58}
             1          str1         1 个字符 strf
             2          str2         2 个或更少字符 strf
           ...          等等
          2045          str2045      2045 个或更少字符 strf

         32768          strL         变长 strL 

         65526          double       8 字节浮点数
         65527          float        4 字节浮点数
         65528          long         4 字节有符号整数
         65529          int          2 字节有符号整数
         65530          byte         1 字节有符号整数
	{hline 58}


{marker variablenames}{...}
{title:5.4  变量名称}

{pstd}
变量名称以以下方式记录：

              {cmd:<varnames>}{it:varnamelist}{cmd:</varnames>}

{pstd}
其中 {it:varnamelist} 是记录变量 1、...、{it:K} 的序列（向量），每个名称为 33 个字符，后面跟一个二进制零终止符。

{pstd}
{it:varnamelist} 包含 Stata 变量 1、...、{it:K} 的名称，
每个名称的长度不超过 32 个字符，并且每个名称以二进制零（\0）终止。 例如，如果 {it:K}==4，{it:varnamelist} 会是：

	0       33        66          99
	|        |         |           |
	{cmd:vbl1\0...myvar\0...thisvar\0...lstvar\0...}


{pstd}
以上表示
第一个变量名为 {cmd:vbl1}，第二个变量名为 {cmd:myvar}，第三个变量名为 {cmd:thisvar}，第四个变量名为 {cmd:lstvar}。  用点表示的字节位置将包含随机值（请注意，我们省略了一些点）。 如果 {it:varnamelist} 被读取到 C 数组 {cmd:char} {cmd:varnamelist[]} 中，则 {cmd:&varnamelist[(i-1)*33]} 指向第 {cmd:i} 个变量的名称，其中 1 <= {cmd:i} <= {it:K}。


{marker sortlist}{...}
{title:5.5  观察排序顺序}

{pstd}
观察将被随后记录的排序顺序记录为：

              {cmd:<sortlist>}{it:sortlist}{cmd:</sortlist>}

{pstd}
其中 {it:sortlist} 是记录 {it:K}+1 个无符号 2 字节整数的序列（数组），按照 {it:byteorder} 书写。

{pstd}
{it:sortlist} 指定数据集的排序顺序，并以 2 字节零 ({it:0000} 以十六进制) 为终止。 每个 2 字节元素包含一个变量编号或零。 零标记 {it:sortlist} 的结束，之后记录的元素将包含随机的垃圾。例如，如果数据未排序，第一个 2 字节整数将包含零，之后的 2 字节整数将包含垃圾。 如果 {cmd:nvar}==4，记录将如下所示：

	{cmd:0000................}

{pstd}
如果数据集按一个变量排序，比如 {cmd:myvar}，并且该变量是 {it:varnamelist} 中的第二个变量，记录将如下所示：

	{cmd:00020000............}  (如果 {cmd:byteorder}==MSF)
	{cmd:02000000............}  (如果 {cmd:byteorder}==LSF)

{pstd}
如果数据集按照 {cmd:myvar} 排序，并且在 {cmd:myvar} 中按照 {cmd:vbl1} 排序，并且如果 {cmd:vbl1} 是数据集中的第一个变量，记录将如下所示：

	{cmd:000200010000........}  (如果 {cmd:byteorder}==MSF)
	{cmd:020001000000........}  (如果 {cmd:byteorder}==LSF)


{pstd}
如果 {it:sortlist} 被读取到 C 数组 {cmd:short} {cmd:int}
{cmd:srtlist[]} 中，则 {cmd:srtlist[0]} 将是第一个排序变量的变量编号，或者，如果数据未排序，则为 0。 如果编号不为 0，则 {cmd:srtlist[1]} 将是第二个排序变量的变量编号，或者如果没有第二个排序变量，则为 0，以此类推。


{marker formats}{...}
{title:5.6  显示格式}

{pstd}
与每个变量相关联的显示格式被记录为：

              {cmd:<formats>}{it:fmtlist}{cmd:</formats>}

{pstd}
{it:fmtlist} 包含变量 1、...、{it:K} 的格式。 每个格式为 49 字节长，并包括一个二进制零的字符串结束标记。 例如，

	{cmd:%9.0f\0..........................................%8.2f\0......}
	{cmd:....................................%20.0g\0..................}
	{cmd:.......................%td\0..................................}
	{cmd:..........%tcDDmonCCYY_HH:MM:SS.sss\0......................}

{pstd}
指示第一个变量的格式为 {cmd:%9.0f}，第二个变量的格式为 {cmd:%8.2f}，第三个变量为 {cmd:%20.0g}，依此类推。 请注意这些都是 Stata 格式，而不是 C 格式。

{phang2}
1.  以 {cmd:%t} 或 {cmd:%-t} 开头的格式是 Stata 的日期和时间格式。

{phang2}
2.  Stata 有一种旧的 {cmd:%}{cmd:d} 格式表示法，某些数据集中仍然存在该格式。 格式 {cmd:%}{cmd:d}... 等同于现代格式 {cmd:%td}... 而 {cmd:%}{cmd:-}{cmd:d}... 则等同于 {cmd:%-td}...

{phang2}
3.  非日期格式以 {cmd:gc} 或 {cmd:fc} 结尾，类似于 C 的 {cmd:g} 和 {cmd:f} 格式，但带有逗号。 大多数转换例程会忽略最后的 {cmd:c} （将其更改为 {cmd:\0}）。

{phang2}
4.  格式中可以包含逗号而非句点，例如 {cmd:%9,2f}，指示欧洲格式。

{pstd}
如果 {it:fmtlist} 被读取到 C 数组 {cmd:char} {cmd:fmtlist[]} 中，则
{cmd:&fmtlist[49*(i-1)]} 指向第 {cmd:i} 个变量格式的起始地址。


{marker labelnames}{...}
{title:5.7  值标签名称}

{pstd}
与每个变量相关联的值标签名称被记录为 

              {cmd:<value_label_names>}{it:lbllist}{cmd:</value_label_names>}

{pstd}
其中 {it:lbllist} 是记录 {it:K} 个 33 字符、二进制零终止的字符串的数组（序列）。

{pstd}
{it:lbllist} 包含与变量 1、...、{it:K} 相关联的值格式的名称。 每个值格式名称为 33 字节长，并包括一个二进制零的字符串结束标记。 例如，

	0   33        66   99
	|    |         |    |
	{cmd:\0...yesno\0...\0...yesno\0...}

{pstd}
表示变量 1 和 3 没有与之关联的值标签，而变量 2 和 4 都与名为 {cmd:yesno} 的值标签相关联。 如果 {it:lbllist} 被读取到 C 数组 {cmd:char} 
{cmd:lbllist[]} 中，则 {cmd:&lbllist[33*(i-1)]} 指向与第 {cmd:i} 个变量相关联的标签名称的开始。


{marker variablelabels}{...}
{title:5.8  变量标签}

{pstd}
与每个变量相关联的变量标签被记录为 

              {cmd:<variable_labels>}{it:varlbllist}{cmd:</variable_labels>}

{pstd}
其中 {it:varlbllist} 是记录 {it:K} 个 81 字符，二进制零终止的字符串的数组（序列）。 如果变量没有标签，则其标签的第一个字符为 \0。 


{marker characteristics}{...}
{title:5.9  特征}

{pstd}
特征用于记录 Stata 特有的信息，这些信息在其他数据管理包中没有等效项。
在写入数据时，我们建议您写入 
	
              {cmd:<characteristics>}{cmd:</characteristics>}

{pstd}
这留下了一个问题，即读取可能包含特征的数据集。 特征记录为

             {cmd:<characteristics>}...{cmd:</characteristics>}

{pstd}
我们建议您跳过 {it:...} 部分。
但是，不要仅仅提前扫描，直到遇到关闭标记，因为 ... 部分
本身可能包含一个特征，其中包含字符串 "{cmd:</characteristics>}".

{pstd}
... 部分包含零个或多个单独特征，每个特征的形式为 

             {cmd:<ch>}{it:llll}...............{cmd:</ch>}
                     |-------------|
                         {it:llll} 字节

{pstd}
其中 {it:llll} 是后续内容的长度，以 4 字节的无符号整数字段记录，依照 {it:byteorder} 解释。 因此，读取 {cmd:<ch>} 后，要跳过 {it:llll} 字节。
然后验证您是否下一个读取到 {cmd:/ch}。 之后的标记将是 {cmd:</characteristics>}，表示您已经完成，或者 {cmd:<ch>}，表示您还有另一个单独的特征需要跳过。

{pstd} 
对于想要读取和写入特征的人来说，... 部分包含正在定义的单个特征的信息，记录为

             0            33               66       {it:l}-1
             |             |                |        |
             {it:varname}{cmd:\0.....}{it:charname}{cmd:\0}.......{it:contents}{cmd:\0}
             |---------------------------------------|
                            {it:llll} 字节

{pstd}
字节 0-32 包含一个以二进制零终止的变量名称，字节 33-65 包含一个以二进制零终止的特征名称，字节 60 到记录的末尾包含以二进制零终止的字符特征 {it:varname}{cmd:[}{it:charname}{cmd:]} 的内容。


{marker data}{...}
{title:5.10  数据}

{pstd}
数据被记录为 

              {cmd:<data>}{it:data}{cmd:</data>}

{pstd}
其中 {it:data} 是观测 1 后跟观测 2，后面紧跟观测 {it:N}，

              {cmd:<data>}{it:obs1obs2obs3...obsN}{cmd:</data>}

{pstd} 
每个观测为变量 1 的值后跟 
变量 2 的值，依此类推，直到变量 {it:K} 的值， 

              {cmd:<data>}{it:v11v12...v1Kv21v22...v2K......vN1vN2...VNK}{cmd:</data>}

{pstd}
每个 {it:vIJ} 按其内部格式记录，
如 {it:typlist} 所示，并在第 {help dta_117##strings:3} 节说明（strfs）和
第 {help dta_117##numbers:4} 节中说明（数字值）。 
我们尚未解释 strLs 如何写入；待会我们会在第 {help dta_117##strls:5.11} 节中进行解释。  同时，假设一个没有 strLs 的数据集。

{pstd}
所有值都是按照 {it:byteorder} 书写的。 如果 strfs 短于允许的空间，则会以二进制零终止，但如果达到了全宽度，则不终止。 

{pstd}
例如，考虑一个数据集，其中 {it:V1} 为 {cmd:float}， {it:V2} 为
{cmd:byte}， {it:V3} 为 {cmd:double}，{it:V4} 为 {cmd:str6}：


        . {cmd:describe}

        包含数据
          obs:             2                          
         vars:             4                          
         size:            38                          
	{hline 64}
                      storage  display     value
        variable name   type   format      label      variable label
	{hline 64}
        V1              float  %9.0g                  
        V2              byte   %8.0g                  
        V3              double %10.0g                 
        V4              str6   %9s                    
	{hline 64}
        排序方式：  

        . {cmd:}list

             {c TLC}{hline 23}{c TRC}
             {c |} V1   V2   V3       V4 {c |}
             {c LT}{hline 23}{c RT}
          1. {c |}  0    1    2    first {c |}
          2. {c |}  1    2    3   second {c |}
             {c BLC}{hline 23}{c BRC}

{pstd}
相应的 {cmd:<data>}...{cmd:</data>} 将写为（假设 MSF
字节顺序），

        <data>{it:00000000014000000000000000}first{it:00}{it:3f800000024008000000000000}
	second</data>

{pstd}
变量和值会被合并在一起，但 
如果我们添加不显著的空白，可以更容易地理解这些

	<data>
		 {it:00000000 01 4000000000000000} first{it:00}
		 {it:3f800000 02 4008000000000000} second
	</data>
		
{p 8 12 2}
1.  每个变量的值都根据其变量类型进行记录。 

{p 12 12 2}
    {cmd:V1} 的值为 4 字节（8 个十六进制数字）
    因为 {cmd:V1} 是 {cmd:float} 类型。  记录的是以 4 字节 IEEE 浮点数的形式。

{p 12 12 2}
    {cmd:V2} 的值为 1 字节（2 个十六进制数字）长
    因为 {cmd:V2} 是 {cmd:byte} 类型。  记录的是以 1 字节有符号整数的形式。

{p 12 12 2}
    {cmd:V3} 的值为 8 字节（16 个十六进制数字）长
    因为 {cmd:V3} 是 {cmd:double} 类型。  记录的是以 8 字节 IEEE 浮点数的形式。

{p 8 12 2}
2.  仔细查看 {cmd:V4}，它是 {cmd:str6} 类型，取值为 
    "first" 和 "second"。  值 "first" 作为 first\0 记录 
    --- 带有尾随的二进制 0。 值 
    "second" 由于长度为 6 个字符而不带尾随的二进制 0
    记录，因为它达到了全长。
    如果另一个观察包含 "dog"，则会写为 dog\0.. -- 尾随的二进制 0 将被写入，然后写入两个随机字节，以确保写入内容的长度为 6。

{p 12 12 2}
    一般规则是 {cmd:str#} 在 # 字节的字段中写入。 如果长度为 # 字节，则不附加二进制 0。 如果长度小于 # 字节，则在字符串末尾附加二进制 0。 

{p 12 12 2}
    空字符串总是写为 \0，并且在必要时填写随机字节以填满所需长度。


{marker strls}{...}
{title:5.11  StrLs}

{pstd}
StrLs 是长字符串。 在上面的 {cmd:<data>}...{cmd:</data>} 部分，我们看到每个 strf 的值 -- Stata 类型 {cmd:str1}、{cmd:str2}、...、{cmd:str2045} -- 按固定长度的字符串记录。

{pstd}
StrLs 长度最多为 2,000,000,000 个字符，因此它们的记录方式有所不同。

{pstd}
如果数据中没有 strL 变量，{cmd:<strls>}...{cmd:</strls>} 将被记录为

		{cmd:<strls></strls>}

{pstd}
在第 {help dta_117##data:5.10} 节中，我们进行了一个示例，展示了
包含四个变量和两个观察的 {cmd:<data>}...{cmd:</data>} 的内容。 该示例中没有 strLs，因此整个 {cmd:<data>}...{cmd:</data>} 和
{cmd:<strls>}...{cmd:</strls>} 将被记录为

        <data>{it:00000000014000000000000000}first{it:00}{it:3f800000024008000000000000}
	second</data><strl><strls>

{pstd}
或，使用更可读的、不显著的空格，

	<data>
		 {it:00000000 01 4000000000000000} first{it:00}
		 {it:3f800000 02 4008000000000000} second
	</data>
	<strls>
	</strls>

{pstd}
让我们将该示例的数据集添加一个并且将其作为变量 {cmd:V5}： 

        . {cmd:describe}

        包含数据
          obs:             2                          
         vars:             5                          
         size:            38                          
	{hline 64}
                      storage  display     value
        variable name   type   format      label      variable label
	{hline 64}
        V1              float  %9.0g                  
        V2              byte   %8.0g                  
        V3              double %10.0g                 
        V4              str6   %9s                    
        V5              strL   %9s                    
	{hline 64}
        排序方式：  


        . {cmd:list}
             {c TLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c TRC}
             {c |} V1   V2   V3       V4       V5 {c |}
             {c LT}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c RT}
          1. {c |}  0    1    2    first    third {c |}
          2. {c |}  1    2    3   second   fourth {c |}
             {c BLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c BRC}

{pstd}
StrL 变量的数据在 
{cmd:<data>}...{cmd:</data>} 和 {cmd:<strls>}...{cmd:</strls>} 之间分配。
在 {cmd:.dta} 文件中的合并后，它看起来像这样，

	<data>{it:00000000014000000000000000}first{it:00}{it:0000000500000001}
	{it:3f800000024008000000000000}second{it:0000000500000002}</data>
        <strls>GSO{it:00000005000000018200000006}third{it:00}GSO{it:000000050}
        {it:0000002 82 00000007}第四{it:00}</strls>

{pstd}
或，使用更可读的、不显著的空格，

	<data>
		 {it:00000000 01 4000000000000000} first{it:00} {it:0000000500000001}
		 {it:3f800000 02 4008000000000000} second  {it:0000000500000002}
	</data>
	<strls>
                 GSO {it:0000000500000001 82 00000006}third{it:00}
                 GSO {it:0000000500000002 82 00000007}fourth{it:00}
	</strls>

{pstd}
StrLs 以两部分记录：

{p 8 12 2}
1.  在 {cmd:<data>}...{cmd:</data>} 中，每个 strL 记录为一个 8 字节
    （16 个十六进制数字）值。 这些值应被解释为 2 个 4 字节字段，被称为（{it:v},{it:o}）值。

{p 12 12 2}
    在第一个观察中，strL 记录为（十六进制）
    {it:0000000500000001}，这是 2 个 4 字节值，即， 
    （十六进制） {it:00000005} 和 {it:00000001}，对应于
    ({it:v},{it:o}) = (5,1)。

{p 12 12 2}
    在第二个观察中，({it:v},{it:o}) 值为 (5,2)。 

{p 8 12 2}
2.  {cmd:<strls>}...{cmd:</strls>} 负责将 
    ({it:v},{it:o}) 值映射到相应字符串。 
    在 strLs 的情况下，字符串被称为 
    通用字符串对象（GSOs）。 

{p 12 12 2}
    在这个示例中，定义了两个 GSOs。 
    第一个是对于 ({it:v},{it:o})=(5,1) 的 GSO，第二个是 
    对于 (5,2) 的 GSO。 

{p 12 12 2}
    ({it:v},{it:o})=(5,1) 对应于 "第三"。

{p 12 12 2}
    ({it:v},{it:o})=(5,2) 对应于 "第四"。 

{pstd}
显然，GSOs 中记录了比単纯的 ({it:v},{it:o}) 值及其对应的字符串更多的信息，我们稍后将对此进行解释，但让我们首先关注 ({it:v},{it:o}) 值。 


{marker strls_vo}{...}
{title:5.11.1  (v,o) 值}

{pstd}
如果我们的数据集包含变量 V5，在两次观察中都等于 "第三"，


        . {cmd:list}
             {c TLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c TRC}
             {c |} V1   V2   V3       V4       V5 {c |}
             {c LT}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c RT}
          1. {c |}  0    1    2    first    third {c |}
          2. {c |}  1    2    3   second    third {c |}
             {c BLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c BRC}


{pstd}
它们可以记录为： 
    
	<data>
		 00000000 01 4000000000000000 first{it:00} {it:0000000500000001}
		 3f800000 02 4008000000000000 second  {it:0000000500000002}
	</data>
	<strls>
                 GSO {it:0000000500000001 82 00000006}third{it:00}
                 GSO {it:0000000500000002 82 00000006}third{it:00}
	</strls>

{pstd}
或者如下：

	<data>
		 00000000 01 4000000000000000 first{it:00} {it:0000000500000001}
		 3f800000 02 4008000000000000 second  {it:0000000500000001}
	</data>
	<strls>
                 GSO {it:0000000500000001 82 00000006}third{it:00}
	</strls>

{pstd}
请注意，只有一条 GSO，并且两个观察都通过指定 ({it:v},{it:o}) 作为 (5,1) 来引用它。这被称为共享或交叉链接的 GSO。 许多观察可以链接到相同的 GSO。 顺便说一句，数据不能记录为以下内容：

	<data>
		 00000000 01 4000000000000000 first{it:00} {it:0000000500000002}
		 3f800000 02 4008000000000000 second  {it:0000000500000002}
	</data>
	<strls>
                 GSO {it:0000000500000002 82 00000006}third{it:00}
	</strls>

{pstd}
在这个错误的示例中，({it:v},{it:o}) 是 (5,2)，而不是 (5,1)。  这被称为前向引用，这是不允许的。  
你可能已经猜到，({it:v},{it:o}) 值之所以如此命名是因为它们以某种方式引用变量和观察编号。 在 {cmd:<data>}...{cmd:</data>} 中，
({it:v},{it:o}) 值对于变量 {it:i} 和观察 {it:j} 要求等于 {it:i},{it:j}，或者在其之前，也就是说，{it:o}<{it:j}，或者，如果 {it:o}=={it:j}，则 {it:v}<={it:i}。

{pstd}
(0,0) 是一个特殊的 ({it:v},{it:o}) 值，指的是一个包含 (ascii) "" 的 GSO，而你不需要定义这个 GSO（并且你可能无法定义）。  
如果变量 V5 在第一项观察中包含 (ascii) ""， 

        . {cmd:list}
             {c TLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c TRC}
             {c |} V1   V2   V3       V4       V5 {c |}
             {c LT}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c RT}
          1. {c |}  0    1    2    first          {c |}
          2. {c |}  1    2    3   second   fourth {c |}
             {c BLC}{hline 4}{c -}{hline 4}{c -}{hline 4}{c -}{hline 8}{c -}{hline 8}{c BRC}

{pstd}
数据可以记录如下：


	<data>
		 00000000 01 4000000000000000 first{it:00} {it:0000000500000001}
		 3f800000 02 4008000000000000 second  {it:0000000500000002}
	</data>
	<strls>
                 GSO {it:0000000500000001 82 00000001}{it:00}
                 GSO {it:0000000500000002 82 00000007}fourth{it:00}
	</strls>

{pstd}
但是，这被认为是坏风格，因为它导致 Stata 浪费一些内存。  记录数据的正确方式是 

	<data>
		 00000000 01 4000000000000000 first{it:00} {it:0000000000000000}
		 3f800000 02 4008000000000000 second  {it:0000000500000002}
	</data>
	<strls>
                 GSO {it:0000000500000002 82 00000007}fourth{it:00}
	</strls>

{pstd}
在上面，注意在第一项观察中，({it:v},{it:o}) = (0,0)。  顺便说一句，如果变量 V5 的两个观察都包含 (ascii) ""，数据将记录为

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
1.  在 {cmd:<data>}...{cmd:</data>} 中，strLs 以 ({it:v},{it:o}) 值记录。 这意味着在每个观察中的每个 strL 变量都需要指定一个 ({it:v},{it:o}) 值。

{p 8 12 2}
2.  ({it:v},{it:o}) 值以 8 字节字段形式记录，并按 {it:byteorder} 解释为 2 个 4 字节无符号整数值。

{p 8 12 2}
3.  对于变量 {it:i}，观察 {it:j}，如果 {it:i},{it:j} 包含 (ascii) ""，则 ({it:v},{it:o}) = (0,0)。 

{p 8 12 2}
4.  对于变量 {it:i}，观察 {it:j}，如果 ({it:v},{it:o}) != (0,0)，则 {it:o}<{it:j}，或者，如果 {it:o}=={it:j}，则 {it:v}<={it:i}。 也就是说，变量 {it:i}，观察 {it:j} 要么链接到自身的 ({it:v},{it:o}) = ({it:i},{it:j})，要么链接到在 {cmd:<data>}...{cmd:</data>} 中以前的变量和观察的 ({it:v},{it:o}) 值。

{p 8 12 2}
5.  通常情况是 ({it:v},{it:o}) = ({it:i},{it:j})。

{p 8 12 2}
6.  编写 {cmd:.dta} 文件的程序不需要在字符串内容相同的情况下生成交叉链接的 ({it:v},{it:o}) 值。 

{p 8 12 2}
7.  读取 {cmd:.dta} 文件的程序必须能够处理交叉链接的 ({it:v},{it:o}) 值。


{marker strls_gso}{...}
{title:5.11.2  GSOs}

{pstd}
标记 {cmd:<strls>}....{cmd:</strls>} 包含零个或多个 GSO 的定义：

		{cmd:<strls>}{it:GSOdef}{it:GSOdef}...{it:GSOdef}{cmd:</strls>}

{pstd}
每个 GSO 可以包含 
ASCII 字符串或二进制字符串。 我们使用以下定义：

{p 12 12 8}
        一个字符串是 {it:ascii-like}，如果它不包含二进制零，并且它的最后一个显著字符后包含一个二进制零。

{p 12 12 8}
        一个字符串是 {it:ascii}，如果它是 ASCII-like 且使用 ASCII 字符编码。

{p 12 12 8}
	不是 ASCII 的字符串为 {it:binary}。

{pstd}
GSO 记录的格式为 

		     o           len
                      \         /        contents
                       ---- ----         /
		{cmd:GSO}vvvvooootllllxxxxxxxxxxxxxxx...x
                   ----    -   (---- len 字节 ----)
		  /        |
                 v       type


	    name    length          contents
	    {hline 59}
	                 3          {cmd:GSO}（固定字符串）
            {it:v}            4          无符号 4 字节整数， {...}
{it:v} 的 ({it:v},{it:o})
            {it:o}            4          无符号 4 字节整数， {...}
{it:o} 的 ({it:v},{it:o})
            {it:t}            1          无符号 1 字节整数
            {it:len}          4          无符号 4 字节整数
            {it:contents   len}          strL 的内容
            {hline 59}
	    {it:v}、{it:o} 和 {it:len} 按照 {it:byteorder} 记录。

	    {it:t} 的编码：
	        129（十进制）        二进制
	        130（十进制）        ASCII
	    如果 {it:t}==129，
		{it:contents} 包含字符串原样。
		{it:len} 包含 {it:contents} 的长度。
	    如果 {it:t}==130， 
		{it:contents} 必须包含尾随的 \0。
		{it:len} 包含包括 \0 的字符串长度。
		如果使用 C，则 {it:len} = strlen(string) + 1。
	   

{pstd}
注意事项：

{p 8 12 2}
1.  {it:v} 和 {it:o} 是在 {cmd:<data>}...{cmd:</data>} 中定义的 ({it:v},{it:o}) 值。  {it:v} 和 {it:o} 必须遵循之前给出的 {help dta_117##vo_rules:规则} 的规定。 

{p 8 12 2}
2.  变量 {it:v} 必须是 {cmd:strL} 类型。 

{p 8 12 2}
3.  GSO 必须以 ({it:v},{it:o}) 的 "递增" 顺序出现。
    递增顺序定义为它们在 {cmd:<data>}...{cmd:</data>} 中出现的顺序：对于 {it:o}==1 按照 {it:v} 递增，然后对于 {it:o}==2 按照 {it:v} 递增，...

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dta_117.sthlp>}