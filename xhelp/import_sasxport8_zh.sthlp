{smcl}
{* *! version 1.0.0  20apr2019}{...}
{viewerdialog "import sasxport8" "dialog import_sasxport8"}{...}
{viewerdialog "export sasxport8" "dialog export_sasxport8"}{...}
{vieweralsosee "[D] import sasxport8" "mansection D importsasxport8"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import sas" "help import sas"}{...}
{vieweralsosee "[D] import sasxport5" "help import sasxport5"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "import_sasxport8_zh##syntax"}{...}
{viewerjumpto "Menu" "import_sasxport8_zh##menu"}{...}
{viewerjumpto "Description" "import_sasxport8_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_sasxport8_zh##linkspdf"}{...}
{viewerjumpto "Options for import sasxport8" "import_sasxport8_zh##options_import"}{...}
{viewerjumpto "Options for export sasxport8" "import_sasxport8_zh##options_export"}{...}
{viewerjumpto "Examples" "import_sasxport8_zh##examples"}{...}
{viewerjumpto "Stored results" "import_sasxport8_zh##results"}
{help import_sasxport8:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[D] import sasxport8} {hline 2}}导入和导出SAS XPORT版本8格式的数据{p_end}
{p2col:}({mansection D importsasxport8:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将SAS XPORT版本8传输文件导入Stata

{p 8 16 2}
{cmd:import sasxport8}
{it:{help filename_zh}}
[{cmd:,} {it:{help import_sasxport8##import_options:导入选项}}]


{phang}
将内存中的数据导出到SAS XPORT版本8传输文件

{p 8 16 2}
{cmd:export sasxport8}
{it:{help filename_zh}}
{ifin}
[{cmd:,} {it:{help import_sasxport8##export_options:导出选项}}]

{p 8 16 2}
{cmd:export sasxport8}
{varlist}
{cmd:using} {it:{help filename_zh}}
{ifin}
[{cmd:,} {it:{help import_sasxport8##export_options:导出选项}}]


{phang}
如果{it:{help filename_zh}}未指定扩展名，则默认为{cmd:.v8xpt}。如果{it:filename}包含空格，请用双引号括起来。


{synoptset 26}{...}
{marker import_options}{...}
{synopthdr :导入选项}
{synoptline}
{synopt :{cmd:case(}{cmdab:l:ower}{c |}{cmdab:u:pper}{c |}{cmdab:pre:serve)}}将变量名称读取为小写或大写；默认保留大小写{p_end}
{synopt :{opt clear}}替换内存中的数据{p_end}
{synoptline}

{synoptset 26 tabbed}{...}
{marker export_options}{...}
{synopthdr :导出选项}
{synoptline}
{syntab:主}
{synopt :{opt replace}}如果文件已存在，覆盖文件{p_end}
{synopt :{opt vall:abfile}}将值标签保存在SAS命令文件中{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

    {title:import sasxport8}

{phang2}
{bf:文件 > 导入 > SAS XPORT版本8 (*.v8xpt)}

    {title:export sasxport8}

{phang2}
{bf:文件 > 导出 > SAS XPORT版本8 (*.v8xpt)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:import sasxport8}和{cmd:export sasxport8}从SAS XPORT版本8传输格式导入和导出数据。

{pstd}
要从SAS XPORT版本5传输格式导入和导出数据，请参见{help import_sasxport5_zh:[D] import sasxport5}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D importsasxport8Quickstart:快速开始}

        {mansection D importsasxport8Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_import}{...}
{title:导入sasxport8的选项}

{phang}
{cmd:case(lower}{c |}{cmd:upper}{c |}{cmd:preserve)}指定导入后变量名称的大小写。默认值为{cmd:case(preserve)}。

{phang}
{cmd:clear}指定可以替换内存中的数据，即使当前数据尚未保存到磁盘。


{marker options_export}{...}
{title:导出sasxport8的选项}

{dlgtab:主}

{phang}
{opt replace}允许{cmd:export sasxport8}覆盖现有的{it:{help filename_zh}}{cmd:.v8xpt}。

{phang}
{cmd:vallabfile}指定值标签写入SAS命令文件{it:filename}{cmd:.sas}中，该文件包含SAS{cmd:proc format}及相关命令。因此，{cmd:export sasxport8}创建两个文件：
{it:filename}{cmd:.v8xpt}，包含数据，以及{it:filename}{cmd:.sas}，包含值标签。SAS用户可能希望编辑生成的{it:filename}{cmd:.sas}文件，以更改顶部的“libname datapath”和“libname xptfile xport”行，以对应到他们所需的位置。{cmd:export sasxport8}将位置设置为发出{cmd:export sasxport8}时的当前工作目录。如果没有值标签，则不会生成{cmd:.sas}文件。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse auto}

{pstd}将这些数据导出到名为{cmd:auto.v8xpt}的SAS V8XPORT中{p_end}
{phang2}{cmd:. export sasxport8 auto}

{pstd}将包括{cmd:make}、{cmd:mpg}和{cmd:weight}的子集数据导出到{cmd:auto_sub.v8xpt}{p_end}
{phang2}{cmd:. export sasxport8 make mpg weight using auto_sub}

{pstd}
从{cmd:auto_sub.v8xpt}读取数据{p_end}
{phang2}{cmd:. import sasxport8 auto_sub, clear}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:import sasxport8}将在{cmd:r()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(N)}}导入的观察值数量{p_end}
{synopt :{cmd:r(k)}}导入的变量数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_sasxport8.sthlp>}