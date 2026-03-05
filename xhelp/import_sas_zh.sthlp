{smcl}
{* *! version 1.0.0  20apr2019}{...}
{viewerdialog "import sas" "dialog import_sas_dlg"}{...}
{vieweralsosee "[D] import sas" "mansection D importsas"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import sasxport5" "help import sasxport5"}{...}
{vieweralsosee "[D] import sasxport8" "help import sasxport8"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "import_sas_zh##syntax"}{...}
{viewerjumpto "Menu" "import_sas_zh##menu"}{...}
{viewerjumpto "Description" "import_sas_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_sas_zh##linkspdf"}{...}
{viewerjumpto "Options" "import_sas_zh##options"}{...}
{viewerjumpto "Examples" "import_sas_zh##examples"}{...}
{viewerjumpto "Stored results" "import_sas_zh##results"}
{help import_sas:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[D] import sas} {hline 2}}导入 SAS 文件{p_end}
{p2col:}({mansection D importsasxport8:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
加载一个 SAS 文件 (*.sas7bdat)

{p 8 16 2}
{cmd:import sas}
[{cmd:using}] {it:{help filename_zh}}
[{cmd:,} {it:options}]


{phang}
加载一个 SAS 文件 (*.sas7bdat) 的子集

{p 8 16 2}
{cmd:import sas}
[{help import sas##namelist:{it:namelist}}]
{ifin}
{cmd:using} {it:{help filename_zh}}
[{cmd:,} {it:options}]


{phang}
如果指定了 {it:{help filename_zh}} 而没有扩展名，将假定为 {cmd:.sas7bdat}。 如果 {it:filename} 包含嵌入空格，则用双引号括起来。

{marker namelist}{...}
{phang}
{it:namelist} 指定要导入的 SAS 变量名称。

{synoptset 26}{...}
{marker import_sas_options}{...}
{synopthdr}
{synoptline}
{synopt :{opt bcat(filename_vl)}}将 {it:filename_vl} 中定义的值标签加载到内存{p_end}
{synopt :{cmd:case(}{cmdab:low:er}{c |}{cmdab:u:pper}{c |}{cmdab:pre:serve)}}以小写或大写读取变量名；默认情况下保持原样{p_end}
{synopt :{opt clear}}替换内存中的数据{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导入 > SAS 数据 (*.sas7bdat)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:import sas} 将版本 7 或更高的 SAS {cmd:(.sas7bdat)} 文件读入内存。 也可以从 {cmd:.sas7bcat} 文件导入 SAS 值标签。 {cmd:import sas} 最多可以一次导入 32,766 个变量（在 Stata/IC 中最多 2,048 个变量）。 如果你的 SAS 文件包含超过此数量的变量，可以将 SAS 文件分解为多个 Stata 数据集。 也可以从 {cmd:.sas7bcat} 文件导入 SAS 值标签。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D importsasQuickstart:快速开始}

        {mansection D importsasRemarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt bcat(filename_vl)} 指定将与数据集一起加载的 {it:filename_vl} 中定义的值标签。 如果 {it:filename_vl} 没有扩展名，则假定为 {cmd:.sas7bcat}。 如果 {it:filename_vl} 包含嵌入空格，则用双引号括起来。

{pmore}
SAS 不会为变量分配值标签；因此，在导入后，必须使用 {helpb label values} 命令将值标签分配给特定变量。

{phang}
{cmd:case(lower}{c |}{cmd:upper}{c |}{cmd:preserve)} 指定导入后变量名称的大小写。 默认值为 {cmd:case(preserve)}。

{phang}
{cmd:clear} 指定可以替换内存中的数据，即使当前数据尚未保存到磁盘。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata.com/sampledata/auto.sas7bdat auto.sas7bdat}{p_end}
{phang2}{cmd:. copy https://www.stata.com/sampledata/formats.sas7bcat formats.sas7bcat}

{pstd}将整个 {cmd:auto.sas7bdat} 文件加载到 Stata 中{p_end}
{phang2}{cmd:. import sas auto.sas7bdat}

{pstd}仅加载包含 {cmd:make}、{cmd:weight} 和 {cmd:foreign} 的数据子集{p_end}
{phang2}{cmd:. import sas make weight foreign using auto, clear}

{pstd}与上述相同，但还加载在 {cmd:format.sas7bcat} 中定义的值标签{p_end}
{phang2}{cmd:. import sas make weight foreign using auto, bcat(formats) clear}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:import sas} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(N)}}导入的观察数量{p_end}
{synopt :{cmd:r(k)}}导入的变量数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_sas.sthlp>}