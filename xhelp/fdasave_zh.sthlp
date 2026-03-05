
{smcl}
{* *! version 2.0.0  05may2011}{...}
{cmd:help fdasave}, {cmd:help fdause},{right:dialogs:  {dialog fdasave}  {dialog fdause}}
{cmd:help fdadescribe}
{help fdasave:English Version}
{hline}
{hline}
{pstd}
{cmd:fdasave} 已更名为 {cmd:export sasxport}。 
{cmd:fdause} 已更名为 {cmd:import sasxport}。  
{cmd:fdadescribe} 已更名为 {cmd:import sasxport, describe}。  
请参见 {helpb import sasxport:[D] import sasxport}。
{cmd:fdasave}、{cmd:fdause} 和 {cmd:fdadescribe} 被视为同义词。 这是原始帮助文件，我们将不再更新，所以某些链接可能不再有效。


{title:标题}

{p2colset 5 20 22 2}{...}
{p2col :{bf:[D] fdasave} {hline 2}}保存和使用 FDA (SAS XPORT) 格式的数据集{p_end}
{p2colreset}{...}


{title:语法}

{phang}
以 FDA 格式保存内存中的数据

{p 8 32 2}
{opt fdasav:e}
{it:filename}
{ifin}
[{cmd:,} {it:{help fdasave##fdasave_options:fdasave_options}}]

{p 8 32 2}
{opt fdasav:e}
{varlist}
{help using_zh}
{it:filename}
{ifin}
[{cmd:,} {it:{help fdasave##fdasave_options:fdasave_options}}]


{phang}
将 SAS XPORT 文件读取到 Stata

{p 8 31 2}
{cmd:fdause}
{it:filename}
[{cmd:,} {it:{help fdasave##fdause_options:fdause_options}}]


{phang}
描述 SAS XPORT 传输文件的内容

{p 8 31}
{opt fdades:cribe}
{it:filename}
[{cmd:,} {opt m:ember(mbrname)}]


{synoptset 23 tabbed}{...}
{marker fdasave_options}{...}
{synopthdr :fdasave_options}
{synoptline}
{syntab :主要}
{synopt :{opt ren:ame}}重命名变量和数值标签以满足 SAS XPORT 限制{p_end}
{synopt :{opt replace}}如果文件已存在，则覆盖文件{p_end}
{synopt :{cmdab:val:labfile:(xpf)}}将数值标签保存到 {opt formats.xpf}{p_end}
{synopt :{cmdab:val:labfile:(}{cmdab:sas:code)}}将数值标签保存到 SAS 命令文件{p_end}
{synopt :{cmdab:val:labfile:(both)}}将数值标签同时保存到 {opt formats.xpf} 和 SAS 命令文件{p_end}
{synopt :{cmdab:val:labfile:(none)}}不保存数值标签{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{marker fdause_options}{...}
{synopthdr :fdause_options}
{synoptline}
{synopt :{opt clear}}替换内存中的数据{p_end}
{synopt :{opt noval:labels}}如果存在，则忽略随附的 {opt formats.xpf} 文件{p_end}
{synopt :{opt m:ember(mbrname)}}要使用的成员；很少使用{p_end}
{synoptline}
{p2colreset}{...}


{title:菜单}

    {title:fdasave}

{phang2}
{bf:文件 > 导出 > FDA 数据 (SAS XPORT)}

    {title:fdause}

{phang2}
{bf:文件 > 导入 > FDA 数据 (SAS XPORT)}


{title:描述}

{pstd}
{opt fdasave}、{opt fdause} 和 {opt fdadescribe} 在美国食品与药物管理局 (FDA) 格式（新药和新设备申请 - NDA）和 SAS XPORT 传输格式之间转换数据集。这些命令的主要目的是协助进行向 FDA 提交材料的人员，但这些命令足够通用，可以用于在 SAS 和 Stata 之间转移数据。

{pstd}
要以 FDA 格式保存内存中的数据，请输入

	{cmd:. fdasave} {it:filename}

{pstd}
尽管有时您需要输入

	{cmd:. fdasave} {it:filename}{cmd:, rename}

{pstd}
指定 {opt rename} 选项是没有坏处的。 无论如何，Stata 会创建 {it:filename}{opt .xpt} 作为包含数据的 XPORT 文件，并且（如果需要）还会创建 {opt formats.xpf} - 另一个包含数值标签定义的 XPORT 文件。这些文件可以很容易地读取到 SAS 中。

{pstd}
要将 SAS XPORT 传输文件读取到 Stata 中，请输入

	{cmd:. fdause} {it:filename}

{pstd}
Stata 会将文件 {it:filename}{opt .xpt} 中包含的数据读取到内存中，并且（如果可用）还会读取存储在 {opt formats.xpf} 或 {opt FORMATS.xpf} 中的数值标签定义。

{pstd}
{opt fdadescribe} 描述 SAS XPORT 传输文件的内容。 显示类似于 {help describe_zh} 产生的内容，语法相似：

	{cmd:. fdadescribe} {it:filename}

{pstd}
如果 {it:filename} 被指定而没有扩展名，则假定 {opt .xpt}。


{title:fdasave 的选项}

{dlgtab:主要}

{phang}
{opt rename} 指定 {opt fdasave} 可以重命名变量和数值标签以满足 SAS XPORT 限制，即名称不得超过八个字符且不区分大小写。

{pmore}
    我们建议指定 {opt rename} 选项。 如果指定此选项，则任何违反限制的名称会在文件中更改为不同但相关的名称。 变更的名称会列出。 新名称仅在文件中使用；内存中的变量和数值标签名称保持不变。

{pmore}
如果未指定 {opt rename}，且一个或多个名称违反 XPORT 限制，则会发出错误消息，并且不会保存任何文件。 您可以使用 {help rename_zh} 命令自己重命名变量：

{pin2}{cmd:. rename mylongvariablename myname}

{pmore}
请参见 {manhelp rename D}。 自行重命名数值标签更困难。 重命名数值标签的最简单方法是使用 {helpb label save}，编辑结果文件以更改名称，使用 {help do_zh} 执行文件，并通过使用 {opt label values} 将新值标签重新分配给相应的变量：

{pin2}{cmd:. label save mylongvaluelabel using myfile.do}{p_end}
            {cmd:. doedit myfile.do}{right:(将 mylongvaluelabel 更改为，例如 mlvlab)  }
{pin2}{cmd:. do myfile.do}{p_end}
{pin2}{cmd:. label values myvar mlvlab}{p_end}

{pmore}
请参见 {manhelp label D} 和 {manhelp do R} 以获取有关重命名数值标签的更多信息。

{phang}
{opt replace}
允许 {opt fdasave} 覆盖现有的 {it:filename}{opt .xpt}、{opt formats.xpf} 和 {it:filename}{opt .sas} 文件。

{phang}
{cmd:vallabfile(xpf}|{cmd:sascode}|{cmd:both}|{cmd:none)}
指定数值标签的存储方式。 SAS XPORT 传输文件实际上没有数值标签。 在准备提交给 FDA 的数据集时，应该以以下两种方式之一提供数值标签定义：

{phang2}
1.  在包含数值标签定义的额外 SAS XPORT 传输文件中

{phang2}
2.  在将创建数值标签的 SAS 命令文件中

{pmore}
{opt fdasave} 可以创建其中一个或两个文件。

{pmore}
{cmd:vallabfile(xpf)}，默认情况下，
指定将数值标签写入名为 {opt formats.xpf} 的单独 SAS XPORT 传输文件。 因此 {opt fdasave}
会创建两个文件： {it:filename}{opt .xpt}，包含数据，
以及 {opt formats.xpf}，包含数值标签。 如果没有数值标签，则不会创建 {opt formats.xpf} 文件。

{pmore}
	SAS 用户可以轻松使用生成的 {opt .xpt} 和 {opt .xpf} XPORT 文件。 详细信息请参见
	{browse "http://www.sas.com/govedu/fda/macro.html"}，其中提供了用于读取 XPORT 文件的 SAS 提供的宏。 SAS 宏 {opt fromexp()}
	将 XPORT 文件读取到 SAS 中。 SAS 宏 {opt toexp()} 创建 XPORT 文件。 取得这些宏时，请记得将它们保存在 SAS 的网页上，作为纯文本文件，并删除底部的示例。

{pmore}
如果 SAS 宏文件保存在 {cmd:C:\project\macros.mac}
文件，并且由 {opt fdasave} 创建的文件 {opt mydat.xpt} 和 {opt formats.xpf} 位于 {cmd:C:\project\} 中，则以下 SAS 命令将创建相应的 SAS 数据集和格式库并列出数据：

		{c TLC}{hline 19} SAS 命令 {hline 20}{c TRC}
		{c |} {cmd:%include "C:\project\macros.mac" ;}{space 18}{c |}
		{c |} {cmd:%fromexp(C:\project, C:\project) ;}{space 18}{c |}
		{c |} {cmd:libname library 'C:\project' ;}{space 22}{c |}
		{c |} {cmd:data _null_ ; set library.mydat ; put _all_ ; run ;} {c |}
		{c |} {cmd:proc print data = library.mydat ;}{space 19}{c |}
		{c |} {cmd:quit ;}{space 46}{c |}
		{c BLC}{hline 53}{c BRC}

{pmore}
{cmd:vallabfile(sascode)}
指定将数值标签写入 SAS 命令文件 {it:filename}{opt .sas}，该文件包含 SAS {cmd:proc format} 和相关命令。 因此 {opt fdasave} 创建两个文件：
{it:filename}{opt .xpt}，包含数据，以及
{it:filename}{opt .sas}，包含数值标签。 SAS 用户可能希望编辑生成的 {it:filename}{opt .sas} 文件以更改顶部的“libname datapath”和“libname xptfile xport”行，以使其对应其希望的位置。 {opt fdasave} 将位置设置为发出 {opt fdasave} 时的当前工作目录。如果没有数值标签，将不会创建 {opt .sas} 文件。

{pmore}
{cmd:vallabfile(both)}
指定同时执行上述两个操作，并创建三个文件： {it:filename}{opt .xpt}，包含数据；
{opt formats.xpf}，包含 XPORT 格式的数值标签；
以及 {it:filename}{opt .sas}，包含 SAS 命令文件格式的数值标签。

{pmore}
{cmd:vallabfile(none)}
指定不保存数值标签定义。 只创建一个文件： {it:filename}{opt .xpt}，该文件包含数据。


{title:fdause 的选项}

{phang}
{opt clear}
允许载入数据，即使内存中已有数据集，并且该数据集自上次保存数据后已被更改。

{phang}
{opt novallabels}
指定不查找或加载存储在 {opt formats.xpf} 或 {opt FORMATS.xpf} 中的数值标签定义。 默认情况下，如果变量在 {it:filename}{opt .xpt} 中带标签，则 {opt fdause} 会查找 {opt formats.xpf} 以获得和加载数值标签定义。如果未找到该文件，则 Stata 将查找 {opt FORMATS.xpf}。 如果未找到该文件，则会发出警告消息。

{pmore}
{opt fdause} 只能使用 {opt formats.xpf} 或
{opt FORMATS.xpf} 文件来获取数值标签定义。
{opt fdause} 无法理解来自 SAS 命令文件的数值标签定义。

{phang}
{opt member(mbrname)}
是一个很少指定的选项，用于指示要加载的 {opt .xpt} 文件的哪个成员。 该选项现在不太常用，但原始 XPORT 定义允许将多个数据集放在一个文件中。 
{opt member()} 选项允许您读取这些旧文件。 您可以使用 {opt fdadescribe} 获取成员名称列表。 如果未指定 {opt member()} 选项——通常也不指定——{opt fdause} 会读取第一个（通常也是唯一的）成员。


{title:fdadescribe 的选项}

{phang}
{opt member(mbrname)}
是一个很少指定的选项，用于指示要描述的 {opt .xpt} 文件的哪个成员。 请查看上述 {opt fdause} 中 {opt member()} 选项的描述。 如果未指定 {opt member()}，则所有成员将依次进行描述。 XPORT 文件中很少有多个成员。


{title:备注}

{pstd}
SAS XPORT 传输格式已被美国食品和药物管理局 (FDA) 采用，用于提交支持新药和设备申请的数据集。 有关 FDA 提交指南文件，请参见
{browse "http://www.fda.gov/cder/guidance/2867fnl.pdf"}。

{p 4 4 2}
当然，所有用户都可以使用这些命令在 SAS 和 Stata 之间转移数据，但 SAS XPORT 传输格式存在一些限制，例如变量名称的八个字符限制（指定 {opt fdasave} 的 {opt rename} 选项可规避）。 有关 SAS XPORT 传输格式的完整限制和问题列表，以及 {opt fdasave} 和 {opt fdause} 如何绕过这些限制的解释，请参见 {bind:{bf:[D] fdasave}} 中的技术附录。 对于非 FDA 应用，您可能会发现使用翻译包（例如 Stat/Transfer）更方便；请参见
{browse "http://www.stata.com/products/transfer.html"}。

{pstd}
备注部分按以下标题呈现：

        {help fdasave##remarks1:保存 XPORT 文件以传输到 SAS}
        {help fdasave##remarks2:确定从 SAS 接收的 XPORT 文件的内容}
        {help fdasave##remarks3:使用从 SAS 接收的 XPORT 文件}


{marker remarks1}{...}
{title:保存 XPORT 文件以传输到 SAS}

{pstd}
要将当前数据集保存为 {cmd:clindata.xpt}，并将数值标签保存为 {cmd:formats.xpf}，请键入

	{cmd:. fdasave clindata}

{pstd}
要如上所述保存数据，但自动处理重命名过长或区分大小写的变量名称和数值标签，请键入

	{cmd:. fdasave clindata, rename}

{pstd}
要允许替换任何现有文件，请键入

	{cmd:. fdasave clindata, rename replace}

{pstd}
要将当前数据集保存为 {cmd:clindata.xpt}，并将数值标签保存到 SAS 命令文件 {cmd:clindata.sas}，并自动处理重命名变量和数值标签名称：

	{cmd:. fdasave clindata, rename vallab(sas)}

{pstd}
要如上所述保存数据，但将数值标签分别保存在 {cmd:formats.xpf} 和 {cmd:clindata.sas}，请键入

	{cmd:. fdasave clindata, rename vallab(both)}

{pstd}
要完全不保存数值标签，从而仅创建 {cmd:clindata.xpt}，请键入

	{cmd:. fdasave clindata, rename vallab(none)}


{marker remarks2}{...}
{title:确定从 SAS 接收的 XPORT 文件的内容}

{pstd}
要确定 {cmd:drugdata.xpt} 的内容，您可以输入

	{cmd:. fdadescribe drugdata}


{marker remarks3}{...}
{title:使用从 SAS 接收的 XPORT 文件}

{pstd}
要从 {cmd:drugdata.xpt} 读取数据并从 {cmd:formats.xpf}（或 {cmd:FORMATS.xpf}）中获取数值标签（如果文件存在），请输入

	{cmd:. fdause drugdata}

{pstd}
要如上所述读取数据并丢弃内存中的任何数据，请输入

	{cmd:. fdause drugdata, clear}


{title:保存的结果}

{pstd}
{cmd:fdadescribe} 在 {cmd:r()} 中保存以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(k)}}变量数量{p_end}
{synopt:{cmd:r(size)}}数据大小{p_end}
{synopt:{cmd:r(n_members)}}成员数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(members)}}成员名称{p_end}
{p2colreset}{...}


{title:另见}

{psee}
手册:  {help prdocumented_zh:先前文档}

{psee}
{space 2}帮助:  {manhelp describe D},
{manhelp infiling D},
{manhelp odbc D},
{manhelp outfile D},
{manhelp save D}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fdasave.sthlp>}