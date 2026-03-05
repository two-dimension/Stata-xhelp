{smcl}
{* *! version 1.1.7  11may2018}{...}
{vieweralsosee "[M-1] How" "mansection M-1 How"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Intro" "help m1_intro_zh"}{...}
{viewerjumpto "Description" "m1_how_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m1_how_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m1_how_zh##remarks"}{...}
{viewerjumpto "Reference" "m1_how_zh##reference"}
{help m1_how:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-1] How} {hline 2}}Mata 的工作原理
{p_end}
{p2col:}({mansection M-1 How:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{p 4 4 2}
下面我们将揭开一些神秘，向您展示 Mata 的工作原理。我们猜想，所有人都会觉得这很有趣，而高级用户将发现这些描述对预测 Mata 在面对特殊情况时的表现很有帮助。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-1 HowRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按照以下标题呈现：

	{help m1_how##remarks1:定义程序时发生什么}
	{help m1_how##remarks2:交互式工作时发生什么}
	{help m1_how##remarks3:输入 mata 环境命令时发生什么}
	{help m1_how##remarks4:处理对象代码 I：.mo 文件}
	{help m1_how##remarks5:处理对象代码 II：.mlib 库}
	{help m1_how##remarks6:Mata 环境}

{pstd}如果您按照建议的顺序阅读条目，
{bf:{help mata_zh:[M-0] Intro}}，请接着查看
{bf:{help m1_intro_zh:[M-1] Intro}}，以获取您感兴趣的部分，然后
参见 {bf:{help m2_syntax_zh:[M-2] Syntax}}。


{marker remarks1}{...}
{title:定义程序时发生什么}

{p 4 4 2}
假设你启动 Mata 并输入 

	: {cmd:function tryit()}
	> {cmd:{c -(}}
	>         {cmd:real scalar i}
	>
	>         {cmd:for (i=1; i<=10; i++) i}
	> {cmd:{c )-}}

{p 4 4 2}
Mata 编译程序：它读取您输入的内容并生成二进制代码
，告诉 Mata 在执行程序时该做什么。实际上，给定上述程序，Mata 生成的二进制代码为

	00b4 3608 4000 0000 0100 0000 2000 0000 
	0000 0000 ffff ffff 0300 0000 0000 0000 
	0100 7472 7969 7400 1700 0100 1f00 0700 
	0000 0800 0000 0200 0100 0800 2a00 0300 
	1e00 0300 

{p 4 4 2}
这些看起来对你我而言毫无意义，但 Mata 知道应该如何处理它。程序的编译版本称为对象代码，而 Mata 存储在内存中的就是对象代码，而不是原始源代码。
实际上，一旦对象代码被存储，原始源代码就会被丢弃。

{p 4 4 2}
正是这个编译步骤 —— 将文本转换为对象代码 —— 使 Mata 能够如此快速地执行程序。

{p 4 4 2}
稍后，当要执行程序时，Stata 跟随之前记录的指令：

	: {cmd:tryit()}
	  1
	  2
	  3
	  4
	  5
	  6
	  7
	  8
	  9
	  10


{marker remarks2}{...}
{title:交互式工作时发生什么}

{p 4 4 2}
假设你输入 

	: {bf:x = 3}

{p 4 4 2}
在 Mata 的术语中，这称为一个 {it:istmt} —— 交互语句。显然，Mata 将 3 存储在 {cmd:x} 中，但它是如何做到的呢？

{p 4 4 2}
Mata 首先编译这单个语句，并将生成的对象代码存储在名字为 {cmd:<istmt>} 的位置。结果就如同你输入了  

	: {cmd:function <istmt>()}
	> {cmd:{c -(}}
	>         {cmd:x = 3}
	> {cmd:{c )-}}

{p 4 4 2}
当然，你不能定义一个名为 {cmd:<istmt>} 的程序，因为这个名称无效。Mata 有办法绕过这个问题。

{p 4 4 2} 
此时，Mata 已经丢弃了源代码 {cmd:x=3} 并存储了相应的对象代码。接下来，Mata 执行 {cmd:<istmt>}。结果就如同你输入了 

	: {cmd:<istmt>()}

{p 4 4 2}
完成后，只剩下一件事情要做，就是丢弃对象代码。结果就如同输入了 

	: {cmd:mata drop <istmt>()}

{p 4 4 2}
所以就是这样：你输入了 

	: {cmd:x = 3}

{p 4 4 2} 
而 Mata 执行的是

	: {cmd:function <istmt>()}
	> {cmd:{c -(}}
	>         {cmd:x = 3}
	> {cmd:{c )-}}

	: {cmd:<istmt>()}

	: {cmd:mata drop <istmt>()}


    {hline}
    {it:技术说明:}

{p 8 8 2}
上述故事并不完全准确，因为如上所述，变量 {cmd:x} 
将局限于函数 {cmd:<istmt>()} 内，因此，当 {cmd:<istmt>()} 
完成执行时，变量 {cmd:x} 将被丢弃。为了防止这种情况的发生，Mata 会将 {cmd:<istmt>()} 定义的所有变量设为全局变量。因此你可以输入 

		: {cmd:x = 3}

{p 8 8 2}
然后再输入 

		: {cmd:y = x + 2}

{p 8 8 2}
一切都如你预期的那样运行：{cmd:y} 被设置为 5。
{p_end}
    {hline}


{marker remarks3}{...}
{title:输入 mata 环境命令时发生的事情}

{p 4 4 2}
当您在冒号提示符下输入以 {cmd:mata} 开头的内容，例如 

	: {cmd:mata describe}

{p 4 4 2}
或

	: {cmd:mata clear}


{p 4 4 2}
会发生完全不同的事情：Mata 
冻结自身，并
暂时将控制权转移到类似 Stata 的命令解释器上。命令解释器访问 Mata 的环境并报告或更改它。一旦完成，解释器返回 Mata，Mata 恢复活动，并发布新的冒号提示符：

	: {cmd:_}

{p 4 4 2}
一旦在提示符下输入了内容，Mata 将检查它以确定 
是否以 {cmd:mata} 开头（在这种情况下，解释过程会重复），或者它是否是函数定义的开始（在这种情况下，程序将被编译但不执行），或其他任何内容（在这种情况下，Mata 将尝试将其编译并执行为 {cmd:<istmt>()}）。


{marker remarks4}{...}
{title:处理对象代码 I：.mo 文件}

{p 4 4 2}
一切都依赖于 Mata 生成的对象代码，如果你愿意，可以将对象代码保存在磁盘上。这样做的好处是，在未来某个时间，您的程序可以在不编译的情况下执行，从而节省时间。如果您将对象代码发送给其他人，他们可以在不查看源代码的情况下使用您的程序。

{p 4 4 2}
假设您输入了 

	: {cmd:function tryit()}
	> {cmd:{c -(}}
	>         {cmd:real scalar i}
	>
	>         {cmd:for (i=1; i<=10; i++) i}
	> {cmd:{c )-}}

{p 4 4 2}
Mata 创建了对象代码并丢弃了源代码。如果您现在输入

	: {cmd:mata mosave tryit()}

{p 4 4 2}
Mata 解释器将在当前目录中创建文件 {cmd:tryit.mo}；
请参见 {bf:{help mata_mosave_zh:[M-3] mata mosave}}。
新文件将包含对象代码。 

{p 4 4 2}
在未来有一天，如果您输入 

	: {cmd:tryit()}

{p 4 4 2}
而未事先定义程序，Mata 将在 ado 路径中查找名为 {cmd:tryit.mo} 的文件（参见帮助 {helpb adopath} 和 {findalias fradolook}）。找到文件后，Mata 加载它（因此 Mata 现在拥有对象代码并以通常的方式执行它）。


{* index .mlib library files}{...}
{* index libraries}{...}
{marker remarks5}{...}
{title:处理对象代码 II：.mlib 库}

{p 4 4 2}
对象代码可以保存在 {cmd:.mlib} 库（文件）中，而不是 {cmd:.mo}
文件。 {cmd:.mo} 文件包含一个程序的对象代码。 {cmd:.mlib}
文件包含一组文件的对象代码。  

{p 4 4 2}
第一步是选择一个名称（我们选择 {cmd:lmylib}——库名要求以小写字母 {it:l} 开头）并
创建一个空库：

	: {cmd:mata mlib create lmylib}

{p 4 4 2}
创建后，可以将新函数添加到库中：

	: {cmd:mata mlib add lmylib tryit()}

{p 4 4 2}
新函数可以随时添加，无论是在创建后立即还是在之后——甚至是很久之后；
请参见 {bf:{help mata_mlib_zh:[M-3] mata mlib}}。

{p 4 4 2}
我们提到，当 Mata 需要执行一个它在内存中找不到的函数时，Mata 会查找同名的 {cmd:.mo} 文件。在此之前，Mata 会浏览其库，以查看是否可以在其中找到该函数。


{marker remarks6}{...}
{title:Mata 环境}

{p 4 4 2}
Mata 的某些设置会影响其行为。您可以通过在 Mata 提示符下输入 {cmd:mata query} 来查看这些设置：

	: {cmd:mata query}
	{txt}{hline}
	    Mata 设置
	{col 18}set matastrict{col 36}{res}off
	{txt}{col 18}set matalnum{col 36}{res}off
	{txt}{col 18}set mataoptimize{col 36}{res}on
	{txt}{col 18}set matafavor{col 36}{res}space{txt}{col 49}可以是 {res:space} 或 {res:speed}
	{col 18}set matacache{col 36}{res}2000{txt}{col 49}千字节
	{col 18}set matalibs{col 36}{res}lmatabase;lmatapss;lmatapostest;lmataerm;
	>lmatapath;lmatagsem;lmataopt;lmatasem;lmataado;lmatafc;lmatasp;
	>lmatamcmc;lmatamixlog{txt}
	{col 18}set matamofirst{col 36}{res}off{txt}

	: _

{p 4 4 2}
您可以使用 {cmd:mata set} 更改这些设置；
请参见 {bf:{help mata_set_zh:[M-3] mata set}}。
我们推荐默认设置，除了我们承认我们偏爱 
{cmd:mata set matastrict on}。
{p_end}


{marker reference}{...}
{title:参考}

{phang}
Gould, W. W. 2006.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0025":Mata 重要性：精确性}。
{it:Stata Journal} 6: 550-560。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_how.sthlp>}