{smcl}
{* *! version 1.3.3  15may2018}{...}
{vieweralsosee "[M-1] Ado" "mansection M-1 Ado"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] version" "help m2_version_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Intro" "help m1_intro_zh"}{...}
{viewerjumpto "Description" "m1_ado_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m1_ado_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m1_ado_zh##remarks"}
{help m1_ado:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-1] Ado} {hline 2}}在 ado 文件中使用 Mata
{p_end}
{p2col:}({mansection M-1 Ado:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
本节为 ado 文件程序员提供有关如何有效和高效地使用 Mata 的建议。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-1 AdoRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
对于那些有兴趣通过添加新命令来扩展 Stata 的用户，Mata 并不是 ado 文件的替代品。正确的使用 Mata 的方式是创建被你的 ado 文件使用的子例程。以下是我们将讨论的几个主题：

	{help m1_ado##remarks1:第一个示例}
	{help m1_ado##remarks2:存储 Mata 函数的位置}
	{help m1_ado##remarks3:将参数传递给 Mata 函数}
	{help m1_ado##remarks4:将结果返回给 ado 代码}
	{help m1_ado##remarks5:建议：使用 matastrict}
	{help m1_ado##remarks6:建议：一些有用的 Mata 函数}


{marker remarks1}{...}
{title:第一个示例}

{pstd}
我们假设 Stata 不能计算总和，而我们想为 Stata 编写一个新命令，以报告一个变量的总和。以下是我们可能这样做的初步尝试：

	{hline 43} begin varsum.ado {hline 6}
	{cmd}program varsum
		version {ccl stata_version}
		syntax varname [if] [in]
		marksample touse
		mata: calcsum("`varlist'", "`touse'")
		display as txt "  sum = " as res r(sum)
	end

	version {ccl stata_version}
	mata:
	void calcsum(string scalar varname, string scalar touse)
	{
		real colvector  x

		st_view(x, ., varname, touse)
		st_numscalar("r(sum)", colsum(x))
	}
	end{txt}
	{hline 43} end varsum.ado {hline 8}

{pstd}
从 Stata 运行此程序会产生以下输出：

	. {cmd:varsum mpg}
	  sum = 1576

{pstd}
请注意以下几点：

{phang2}
    1.  ado 文件中同时包含 ado 代码和 Mata 代码。

{phang2}
    2.  ado 代码处理了解析和识别要使用的数据子样本的所有问题。

{phang2}
    3.  ado 代码调用 Mata 函数以执行计算。

{phang2}
    4.  Mata 函数接收作为参数的两个变量的名称：要进行计算的变量和标识要使用的数据子样本的变量。

{phang2}
    5.  Mata 函数将结果返回到 {cmd:r()}，从那里 ado 代码可以访问它。

{pstd}
我们上面展示的轮廓是一个很好的起点，尽管我们将向你展示一些更好的替代方案，针对某些问题更为有效。


{marker remarks2}{...}
{title:存储 Mata 函数的位置}

{pstd}
我们的 ado 文件中包含了一个 Mata 函数。你有三种选择来存放 Mata 函数：

{phang2}
    1.  可以将 Mata 函数的代码放在 ado 文件中，正如我们所做的。为了工作，你的 {cmd:.ado} 文件必须放在 Stata 可以找到的地方。

{phang2}
    2.  可以在 ado 文件中省略 Mata 函数的代码，单独编译 Mata 函数，并将编译的代码（目标代码）存储在一个名为 {cmd:.mo} 的单独文件中。你需要把 {cmd:.ado} 文件和 {cmd:.mo} 文件都放在 Stata 可以找到的地方。

{phang2}
    3.  你也可以在 ado 文件中省略 Mata 函数的代码，单独编译 Mata 函数，并将编译的代码存储在一个 {cmd:.mlib} 库中。在这里，你需要将 {cmd:.ado} 文件和 {cmd:.mlib} 库都放在 Stata 可以找到的地方。

{pstd}
我们将展示如何处理每种替代方案，但在此之前，让我们考虑每种方法的优缺点：

{phang2}
    1. 将 Mata 源代码直接放在 ado 文件中是最简单的，当然也非常方便。缺点是 Mata 必须将源代码编译成目标代码，这会降低执行速度。成本很小，因为这发生得不频繁；Mata 在加载 ado 文件时编译代码，只要 ado 文件不从内存中删除，Stata 和 Mata 将反复使用相同的编译代码。

{phang2}
    2. 将你的 Mata 代码保存为 {cmd:.mo} 文件可以节省 Mata 编译它们的时间。源代码仅在你创建 {cmd:.mo} 文件时编译一次，此后 Stata 和 Mata 将使用已经编译的副本。

{pmore2}
        还有第二个优点：与其让 Mata 函数（此处为 {cmd:calcsum()}）仅限于 ado 文件，你将能够在其他 ado 文件中使用 {cmd:calcsum()}。{cmd:calcsum()} 将成为你始终可以使用的工具。也许 {cmd:calcsum()} 不值得拥有这个荣誉。

{phang2}
    3. 将你的 Mata 代码保存在 {cmd:.mlib} 库中与（2）有相同的优缺点；唯一的区别在于我们以不同的方式保存预编译代码。{cmd:.mo}/{cmd:.mlib} 的选择对于那些打算将其 ado 文件分发给其他人的人来说更为重要。{cmd:.mlib} 库允许你将多个 Mata 函数（你的 ado 文件的子例程）放入一个文件中，因此分发更为简单。

{pstd}
让我们重构我们的 ado 文件，将 {cmd:calcsum()} 保存到 {cmd:.mo} 文件中。首先，我们简单地从 ado 文件中删除 {cmd:calcsum()}，使其现在如下所示：

	{hline 43} begin varsum.ado {hline 6}
	{cmd}program varsum
		version {ccl stata_version}
		syntax varname [if] [in]
		marksample touse
		mata: calcsum("`varlist'", "`touse'")
		display as txt "  sum = " as res r(sum)
	end{txt}
	{hline 43} end varsum.ado {hline 8}

{pstd}
接下来，我们进入 Mata，输入我们的 {cmd:calcsum()} 程序，并保存目标代码：

	: {cmd:void calcsum(string scalar varname, string scalar touse)}
	> {cmd:{c -(}}
	>        {cmd:real colvector  x}
	>
	>        {cmd:st_view(x, ., varname, touse)}
	>        {cmd:st_numscalar("r(sum)", colsum(x))}
	> {cmd:{c )-}}

	: {cmd:mata mosave calcsum(), dir(PERSONAL)}

{pstd}
这一步我们只需要做一次。{cmd:mata} {cmd:mosave} 命令创建了存储在我们 {cmd:PERSONAL} sysdir 目录中的文件 {cmd:calcsum.mo}；有关更多细节，请参见
{bf:{help mata_mosave_zh:[M-3] mata mosave}} 和
{bf:{help sysdir_zh:[P] sysdir}}。
我们将 {cmd:calcsum.mo} 文件放在 {cmd:PERSONAL} 目录中，以便 Stata 和 Mata 能够找到它，就像你可能对 {cmd:varsum.ado} ado 文件所做的那样。

{pstd}
交互式输入 {cmd:calcsum()} 程序容易出错，因此相反我们可以创建一个 do 文件来执行该步骤，然后运行该 do 文件一次：


	{hline 44} begin varsum.do {hline 6}
	{cmd:version {ccl stata_version}}
	{cmd:mata:}
	{cmd:void calcsum(string scalar varname, string scalar touse)}
	{cmd:{c -(}}
	       {cmd:real colvector  x}

	       {cmd:st_view(x, ., varname, touse)}
	       {cmd:st_numscalar("r(sum)", colsum(x))}
	{cmd:{c )-}}

	{cmd:mata mosave calcsum(), dir(PERSONAL) replace}
	{cmd:end}
	{hline 44} end varsum.do {hline 8}

{pstd}
我们将 do 文件保存在某个安全的地方，以防将来需要修改代码，无论是修复错误还是添加功能。出于同样的原因，我们在创建 {cmd:.mo} 文件的命令上添加了 {cmd:replace} 选项，以便我们可以反复运行 do 文件。

{pstd}
要遵循第三种组织方式——将我们的 {cmd:calcsum()} 子程序放在库中——只是修改 {cmd:varsum.do} 以执行 {cmd:mata} {cmd:mlib} {cmd:add} 而不是 {cmd:mata} {cmd:mosave}。见 {bf:{help mata_mlib_zh:[M-3] mata mlib}}；有一些重要细节涉及到你如何管理你将放入库的不同函数，但这些与我们在这里的问题无关。

{pstd}
你存储 Mata 子程序的位置和方式与 Mata 子程序的功能或使用方式无关。


{marker remarks3}{...}
{title:将参数传递给 Mata 函数}

{pstd}
在设计子例程时，你主要关注两个方面：如何将数据传入子例程以及如何将结果返回。你通过作为参数传递的值来获取数据。对于 {cmd:calcsum()}，我们通过编码

	{cmd:mata: calcsum("`varlist'", "`touse'")}

{pstd}
在宏扩展后，该行变成类似于

	{cmd:mata: calcsum("mpg", "__0001dc")}

{pstd}
{cmd:__0001dc} 变量是之前在 ado 文件中通过 {helpb marksample} 命令创建的临时变量。
{cmd:mpg} 是用户指定的变量。
扩展后，
参数无非是字符串，这些字符串被传递给 {cmd:calcsum()}。

{pstd}
宏替换是将值传递给 Mata 子例程的最常见方式。如果我们有一个 Mata 函数 {cmd:add(}{it:a}{cmd:,} 
{it:b}{cmd:)}, 也许可以增加数字，我们可能在 ado 文件中编码为 

	{cmd:mata: add(`x', `y')}

{pstd}
如果宏 {cmd:`x'} 包含 2，宏 {cmd:`y'} 包含 3，
Mata 会看到 

	{cmd:mata: add(2, 3)}
 
{pstd} 
值 2 和 3 将被传递给子例程。

{pstd}
当你思考编写 Mata 子例程时，你的 ado 文件发现方便传递、Mata 也方便使用的参数是

{phang2}
    1.  数字，Mata 称之为实数标量，如 2 和 3
       （{cmd:`x'} 和 {cmd:`y'}），和

{phang2}
    2.  变量名、宏、标量、矩阵等，Mata 称之为字符串标量， 
	如 {cmd:"mpg"} 和 {cmd:"__0001dc"} 
	（{cmd:"`varlist'"} 和 
        {cmd:"`touse'"}）， 

{pstd}
要接收类型（1）的参数，在函数声明中将 {cmd:real scalar} 作为参数的类型编码，然后在你的 Mata 代码中使用实数标量变量。

{pstd}
要接收类型（2）的参数，在函数声明中将 {cmd:string scalar} 作为参数的类型编码，然后你可以使用 Stata 接口函数之一
（在 {bf:{help m4_stata_zh:[M-4] Stata}} 中）
将名称转换为内容。
如果你接收到的是变量名称，特别想要了解关于 
{cmd:st_data()} 和 {cmd:st_view()} 
的函数（见 {bf:{help mf_st_data_zh:[M-5] st_data()}} 和 
{bf:{help mf_st_view_zh:[M-5] st_view()}}），尽管有许多其他处理变量名称的实用工具。
如果你正在处理局部或全局宏、标量或矩阵，
你想要查看
{bf:{help mf_st_local_zh:[M-5] st_local()}}, 
{bf:{help mf_st_global_zh:[M-5] st_global()}}, 
{bf:{help mf_st_numscalar_zh:[M-5] st_numscalar()}},
和
{bf:{help mf_st_matrix_zh:[M-5] st_matrix()}}。


{marker remarks4}{...}
{title:将结果返回给 ado 代码}

{pstd}
你有很多方式将结果从 Mata 函数返回到调用的 ado 代码中。

{phang2}
    1.  可以将结果返回到 {cmd:r()}——正如我们在示例中所做的——或到 {cmd:e()} 或 {cmd:s()}。

{phang2}
    2.  可以将结果返回到宏、标量、矩阵等，其名称作为参数传递给你的 Mata 子例程。

{phang2}
    3.  你可以直接访问调用的 ado 文件，并将结果返回到名称由你自己指定的宏、标量、矩阵等中。

{pstd}
在所有情况下，请参见 {bf:{help mf_st_global_zh:[M-5] st_global()}}。
{cmd:st_global()} 可能不是你将使用的函数，但在
{it:{help mf_st_global##remarks:备注}} 部分有一张特别有用的表，
它将告诉你确切应该使用哪个函数。

{pstd} 
同样请参见所有其他 Stata 接口函数在
{bf:{help m4_stata_zh:[M-4] Stata}}。 

{pstd} 
如果你想修改内存中的 Stata 数据集，见 
{bf:{help mf_st_store_zh:[M-5] st_store()}} 和
{bf:{help mf_st_view_zh:[M-5] st_view()}}。


{marker remarks5}{...}
{title:建议：使用 matastrict}

{* index matastrict tt}{...}
{pstd}
设置 {cmd:matastrict} 
决定是否可以省略声明 
（请参见 {bf:{help m2_declarations_zh:[M-2] 声明}}）；默认情况下，你可以。也就是说，{cmd:matastrict} 设为 {cmd:off}，但你可以通过输入 {cmd:mata} {cmd:set} {cmd:matastrict} {cmd:on} 来开启；请参见 {bf:{help mata_set_zh:[M-3] mata set}}。
一些用户会使用，另一些用户则不会。

{pstd}
现在，考虑当你将 Mata 源代码直接包含在 ado 文件中时会发生什么。当 ado 文件被加载时，{cmd:matastrict} 是设置为 {cmd:on}，还是设置为 {cmd:off}？答案是，它是 {cmd:off}，因为当你将 Mata 源代码包含在 ado 文件中时，即使运行 ado 文件的用户之前已经将其设置为开启，{cmd:matastrict} 在加载 ado 文件时会暂时关闭。

{pstd}
例如， {cmd:varsum.ado} 可以写成：

	{hline 43} begin varsum.ado {hline 6}
	{cmd}program varsum
		version {ccl stata_version}
		syntax varname [if] [in]
		marksample touse
		mata: calcsum("`varlist'", "`touse'")
		display as txt "  sum = " as res r(sum)
	end

	version {ccl stata_version}
	mata:
	void calcsum(varname, touse)
	{c -(}{col 50}{txt:(缺少声明的注意)}
		st_view(x, ., varname, touse)
		st_numscalar("r(sum)", colsum(x))
	}
	end{txt}
	{hline 43} end varsum.ado {hline 8}

{pstd}
即使在那些 {cmd:set} {cmd:matastrict} 
{cmd:on} 的用户运行时，它也会正常工作。

{pstd}
同样，在 ado 文件中，你可以 {cmd:set} {cmd:matastrict} {cmd:on}，这将不会影响 ado 文件加载后的设置，因此 {cmd:varsum.ado} 可以写成：

	{hline 43} begin varsum.ado {hline 6}
	{cmd}program varsum
		version {ccl stata_version}
		syntax varname [if] [in]
		marksample touse
		mata: calcsum("`varlist'", "`touse'")
		display as txt "  sum = " as res r(sum)
	end

	version {ccl stata_version}
	mata:
	mata set matastrict on

	void calcsum(string scalar varname, string scalar touse)
	{
		real colvector  x

		st_view(x, ., varname, touse)
		st_numscalar("r(sum)", colsum(x))
	}
	end{txt}
	{hline 43} end varsum.ado {hline 8}

{pstd}
这样不仅会正常工作，运行 {cmd:varsum} 也不会更改用户的 {cmd:matastrict} 设置。

{pstd}
这种保存和恢复 {cmd:matastrict} 的操作仅在 ado 文件加载时执行。


{marker remarks6}{...}
{title:建议：一些有用的 Mata 函数}

{pstd}
在 {cmd:calcsum()} 子例程中，我们使用了 {cmd:colsum()} 函数——请参见 {bf:{help mf_sum_zh:[M-5] sum()}} —以获取总和：

	{cmd}void calcsum(string scalar varname, string scalar touse)
	{
		real colvector  x

		st_view(x, ., varname, touse)
		st_numscalar("r(sum)", colsum(x))
	}{txt}

{pstd} 
我们也可以编码为 

	{cmd}void calcsum(string scalar varname, string scalar touse)
	{
		real colvector  x
		real scalar     i, sum

		st_view(x, ., varname, touse)
		sum = 0 
		for (i=1; i<=rows(x); i++) sum = sum + x[i]

		st_numscalar("r(sum)", sum)
	}{txt}

{pstd}
第一种方式是首选的。与其构建显式循环，不如在存在这样的函数时调用计算期望结果的函数。不过，与 ado 代码不同，当不存在这样的函数时，你可以编写显式循环，并仍然获得良好的性能。

{pstd}
另一些我们推荐的函数在 
{bf:{help mf_cross_zh:[M-5] cross()}}, 
{bf:{help mf_crossdev_zh:[M-5] crossdev()}}, 
和 
{bf:{help mf_quadcross_zh:[M-5] quadcross()}} 中有文档。

{pstd}
{cmd:cross()} 进行以下形式的计算

		{it:X}'{it:X} 
		{it:X}'{it:Z} 
		{it:X}{cmd:'diag(}{it:w}{cmd:)}{it:X}
		{it:X}{cmd:'diag(}{it:w}{cmd:)}{it:Z}


{pstd}
{cmd:crossdev()} 进行以下形式的计算

		({it:X}:-{it:x})'({it:X}:-{it:x})
		({it:X}:-{it:x})'({it:Z}:-{it:z})
		({it:X}:-{it:x})'{cmd:diag(}{it:w})({it:X}:-{it:x})
		({it:X}:-{it:x})'{cmd:diag(}{it:w})({it:Z}:-{it:z})

{pstd}
这两个函数可能会很容易引起你的注意，因为这些矩阵表达式非常简单地在 Mata 中书写。然而，这些函数更快，占用更少的内存，有时更精确。
此外，还有这些函数的四重精度版本； 
{bf:{help mf_quadcross_zh:[M-5] quadcross()}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_ado.sthlp>}