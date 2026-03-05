{smcl}
{* *! version 1.0.0  20apr2019}{...}
{viewerdialog "import sasxport5" "dialog import_sasxport5"}{...}
{viewerdialog "export sasxport5" "dialog export_sasxport5"}{...}
{vieweralsosee "[D] import sasxport5" "mansection D importsasxport5"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import sas" "help import sas"}{...}
{vieweralsosee "[D] import sasxport8" "help import sasxport8"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "import_sasxport5_zh##syntax"}{...}
{viewerjumpto "Menu" "import_sasxport5_zh##menu"}{...}
{viewerjumpto "Description" "import_sasxport5_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_sasxport5_zh##linkspdf"}{...}
{viewerjumpto "Options for import sasxport5" "import_sasxport5_zh##options_import"}{...}
{viewerjumpto "Options for export sasxport5" "import_sasxport5_zh##options_export"}{...}
{viewerjumpto "Examples" "import_sasxport5_zh##examples"}{...}
{viewerjumpto "Stored results" "import_sasxport5_zh##results"}
{help import_sasxport5:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[D] import sasxport5} {hline 2}}导入和导出SAS XPORT版本5格式的数据{p_end}
{p2col:}({mansection D importsasxport5:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将SAS XPORT版本5传输文件导入Stata

{p 8 16 2}
{cmd:import sasxport5}
{it:{help filename_zh}}
[{cmd:,} {it:{help import_sasxport5##import_options:导入选项}}]


{phang}
描述SAS XPORT版本5传输文件的内容

{p 8 16 2}
{cmd:import sasxport5}
{it:{help filename_zh}}{cmd:,}
{opt d:escribe}
[{opt m:ember(mbrname)}]


{phang}
将内存中的数据导出到SAS XPORT版本5传输文件

{p 8 16 2}
{cmd:export sasxport5}
{it:{help filename_zh}}
{ifin}
[{cmd:,} {it:{help import_sasxport5##export_options:导出选项}}]

{p 8 16 2}
{cmd:export sasxport5}
{varlist}
{cmd:using} {it:{help filename_zh}}
{ifin}
[{cmd:,} {it:{help import_sasxport5##export_options:导出选项}}]


{phang}
如果指定了{it:{help filename_zh}}而没有扩展名，则假定为{cmd:.xpt}。如果{it:filename}包含嵌入空格，请用双引号括起来。


{synoptset 23}{...}
{marker import_options}{...}
{synopthdr :导入选项}
{synoptline}
{synopt :{opt clear}}替换内存中的数据{p_end}
{synopt :{opt noval:labels}}如果存在，则忽略附带的{cmd:formats.xpf}文件{p_end}
{synopt :{opt m:ember(mbrname)}}要使用的成员；很少使用{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23 tabbed}{...}
{marker export_options}{...}
{synopthdr :导出选项}
{synoptline}
{syntab:主选项}
{synopt :{opt rename}}重命名变量和数值标签以符合SAS XPORT限制{p_end}
{synopt :{opt replace}}如果文件已存在则覆盖文件{p_end}
{synopt :{cmdab:val:labfile(}{cmd:xpf)}}将数值标签保存到{cmd:formats.xpf}{p_end}
{synopt :{cmdab:val:labfile(}{cmdab:sas:code)}}将数值标签保存到SAS命令文件{p_end}
{synopt :{cmdab:val:labfile(}{cmd:both)}}将数值标签保存到{cmd:formats.xpf}和SAS命令文件中{p_end}
{synopt :{cmdab:val:labfile(}{cmd:none)}}不保存数值标签{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:import sasxport5}

{phang2}
{bf:文件 > 导入 > SAS XPORT版本5 (*.xpt)}

    {title:export sasxport5}

{phang2}
{bf:文件 > 导出 > SAS XPORT版本5 (*.xpt)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:import sasxport5}和{cmd:export sasxport5}将数据从SAS XPORT版本5传输格式转换为Stata格式。美国食品和药物管理局使用这种SAS XPORT传输格式作为新药和新设备申请（NDA）提交的数据集格式。

{pstd}
{cmd:export sasxport5}将内存中的数据保存为SAS XPORT传输（{cmd:.xpt}）文件。如果需要，该命令还会创建{cmd:formats.xpf}——一个附加的XPORT文件——包含数值标签定义。这些文件可以很容易地导入到SAS中。

{pstd}
{cmd:import sasxport5}从SAS XPORT传输（{cmd:.xpt}）文件中读取数据到内存中。当可用时，该命令还读取存储在{cmd:formats.xpf}或{cmd:FORMATS.xpf}中的数值标签定义。

{pstd}
{cmd:import sasxport5, describe}描述SAS XPORT版本5传输文件的内容。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D importsasxport5Quickstart:快速开始}

        {mansection D importsasxport5Remarksandexamples:备注和示例}

        {mansection D importsasxport5Technicalappendix:技术附录}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_import}{...}
{title:导入sasxport5的选项}

{phang}
{cmd:describe}描述SAS XPORT版本5传输文件的内容。此选项只能与{cmd:member()}结合使用。

{phang}
{cmd:clear}指定可以替换内存中的数据，即使当前数据尚未保存到磁盘。

{phang}
{cmd:novallabels}
    指定不查找或加载存储在{cmd:formats.xpf}或{cmd:FORMATS.xpf}中的数值标签定义。默认情况下，如果{it:{help filename_zh}}{cmd:.xpt}中的变量被标记，则{cmd:import sasxport5}会查找{cmd:formats.xpf}以获取并加载数值标签定义。如果未找到文件，Stata会查找{cmd:FORMATS.xpf}。如果该文件未找到，则会发出警告消息。

{pmore}
    {cmd:import sasxport5}只能使用{cmd:formats.xpf}或{cmd:FORMATS.xpf}文件来获取数值标签定义。
    {cmd:import sasxport5}不能理解来自SAS命令文件的数值标签定义。

{phang}
{opt member(mbrname)}
    指定{cmd:.xpt}文件的一个成员。尽管不再常用，但最初的XPORT定义允许多个数据集放在一个文件中。{cmd:member()}选项允许您读取这些旧文件，仅选择特定的数据集（成员）供{cmd:import sasxport5}使用。您可以使用{cmd:import sasxport5, describe}获取成员名称列表。默认情况下，只有第一个成员被使用，除非指定了{cmd:describe}，在这种情况下将描述所有成员。因为XPORT文件很少有多个成员，所以此选项很少使用。


{marker options_export}{...}
{title:导出sasxport5的选项}

{dlgtab:主选项}

{phang}
{cmd:rename}指定{cmd:export sasxport5}可以重命名变量和数值标签，以试图满足SAS XPORT的限制，即名称不得超过八个字节，并且大小写字母之间无区别。请注意，{cmd:rename}不会删除超出正常ASCII范围的字符，如大多数Unicode字符和所有扩展ASCII字符。SAS可能支持或不支持变量标签和数值标签中的这些字符。

{pmore}
    我们推荐指定{cmd:rename}选项。如果指定该选项，任何违反限制的名称都将更改为文件中的其他相关名称。名称更改将被列出。新名称仅在文件中使用；内存中的变量和数值标签的名称保持不变。

{pmore}
    如果未指定{cmd:rename}并且一个或多个名称违反了XPORT限制，将发出错误消息，并且不会保存任何文件。{cmd:rename}选项的替代方法是您可以使用{cmd:rename}命令自行重命名变量：

            {cmd:. rename mylongvariablename myname}

{pmore}
    请参阅{manhelp rename D}。自行重命名数值标签更为复杂。重命名数值标签最简单的方法是使用{cmd:label save}，编辑结果文件以更改名称，通过{cmd:do}执行该文件，并使用{cmd:label values}将新数值标签分配给适当的变量：

            {cmd:. label save mylongvaluelabel using myfile.do}
            {cmd:. doedit myfile.do}   （将{cmd:mylongvaluelabel}更改为，例如，{cmd:mlvlab}）
            {cmd:. do myfile.do}
            {cmd:. label values myvar mlvlab}

{pmore}
    有关重命名数值标签的更多信息，请参见{manhelp label D}和{manhelp do R}。

{phang}
{cmd:replace}
    允许{cmd:export sasxport5}覆盖现有的{it:{help filename_zh}}{cmd:.xpt}、{cmd:formats.xpf}和{it:filename}{cmd:.sas}文件。

{phang}
{cmd:vallabfile(xpf}{c |}{cmd:sascode}{c |}{cmd:both}{c |}{cmd:none)}
    指定如何存储数值标签。SAS XPORT传输文件实际上没有数值标签。可以通过两种方式保留数值标签定义：

{phang2}
1.  在一个额外的SAS XPORT版本5传输文件中，该文件的数据包含数值标签定义

{phang2}
2.  在SAS命令文件中，该文件将创建数值标签

{pmore}
    {cmd:export sasxport5}可以创建其中一个或两个文件。

{pmore}
    {cmd:vallabfile(xpf)}，默认情况下，
    指定将数值标签写入一个名为{cmd:formats.xpf}的单独SAS XPORT传输文件。因此，
    {cmd:export sasxport5}创建两个文件：
    {it:{help filename_zh}}{cmd:.xpt}，包含数据，和
    {cmd:formats.xpf}，包含数值标签。如果没有数值标签，则不会创建{cmd:formats.xpf}文件。

{pmore}
    SAS用户可以轻松使用生成的{cmd:.xpt}和
    {cmd:.xpf} XPORT文件。
    参见
    {browse "https://www.sas.com/govedu/fda/macro.html"}，点击
    {bf:FDA提交标准}标签。然后，点击
    {bf:处理数据集代码}标签，其出现在“FDA和SAS技术”文本下方，获取SAS提供的读取XPORT文件的宏。SAS宏{cmd:fromexp()}将XPORT文件读取到SAS中。SAS宏{cmd:toexp()}创建XPORT文件。在获取宏时，请务必将宏保存为纯文本文件，并删除底部的示例。

{pmore}
    如果SAS宏文件保存为 
    {cmd:C:\project\macros.mac}，并且由{cmd:export sasxport5}创建的文件{cmd:mydat.xpt}和
    {cmd:formats.xpf}位于{cmd:C:\project\}中，则以下SAS命令将创建
    相应的SAS数据集和格式库，并列出
    数据：

        {c TLC}{hline 19} SAS命令 {hline 20}{c TRC}
        {c |} {cmd:%include "C:\project\macros.mac" ;}{space 18}{c |}
        {c |} {cmd:%fromexp(C:\project, C:\project) ;}{space 18}{c |}
        {c |} {cmd:libname library 'C:\project' ;}{space 22}{c |}
        {c |} {cmd:data _null_ ; set library.mydat ; put _all_ ; run ;} {c |}
        {c |} {cmd:proc print data = library.mydat ;}{space 19}{c |}
        {c |} {cmd:quit ;}{space 46}{c |}
        {c BLC}{hline 53}{c BRC}

{pmore}
    {cmd:vallabfile(sascode)}指定将数值标签写入SAS命令文件{it:filename}{cmd:.sas}，该文件包含SAS {cmd:proc format}和相关命令。因此，
    {cmd:export sasxport5}创建两个文件：{it:filename}{cmd:.xpt}，包含数据，以及{it:filename}{cmd:.sas}，包含数值标签。SAS用户可能希望编辑生成的{it:filename}{cmd:.sas}文件，以更改顶部的“libname datapath”和“libname xptfile xport”行，以对应他们想要的位置。{cmd:export sasxport5}将位置设置为发出{cmd:export sasxport5}时的当前工作目录。如果没有数值标签，则不会创建{cmd:.sas}文件。

{pmore}
    {cmd:vallabfile(both)}
    指定同时采取上述两种操作，并创建三个文件：{it:filename}{cmd:.xpt}，包含数据；
    {cmd:formats.xpf}，包含XPORT格式的数值标签；以及{it:filename}{cmd:.sas}，包含SAS命令文件格式的数值标签。

{pmore}
    {cmd:vallabfile(none)}
    指定不保存数值标签定义。只创建一个文件：{it:filename}{cmd:.xpt}，包含数据。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse auto}

{pstd}仅在{cmd:auto_sub.xpt}中保存变量{cmd:make}、{cmd:mpg}和{cmd:weight}{p_end}
{phang2}{cmd:. export sasxport5 make mpg weight using auto_sub}

{pstd}
将数据中的所有变量保存到{cmd:auto.xpt}并将数值标签保存到{cmd:formats.xpf}，重命名长度过长或区分大小写的变量名和数值标签{p_end}
{phang2}{cmd:. export sasxport5 auto, rename}

{pstd}
与上述相同，但还将数值标签保存到SAS命令文件{cmd:auto.sas}{p_end}
{phang2}{cmd:. export sasxport5 auto, rename replace vallabfile(both)}

{pstd}
显示{cmd:auto.xpt}文件的内容{p_end}
{phang2}{cmd:. import sasxport5 auto, describe}

{pstd}
从{cmd:auto.xpt}读取数据，并从{cmd:formats.xpf}获取数值标签{p_end}
{phang2}{cmd:. import sasxport5 auto, clear}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:import sasxport5, describe}在{cmd:r()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观察值的数量{p_end}
{synopt :{cmd:r(k)}}变量的数量{p_end}
{synopt :{cmd:r(size)}}数据的大小{p_end}
{synopt :{cmd:r(n_members)}}成员的数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(members)}}成员名称{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_sasxport5.sthlp>}