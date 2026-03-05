{smcl}
{* *! version 1.0.0  20apr2019}{...}
{viewerdialog "import spss" "dialog import_spss_dlg"}{...}
{vieweralsosee "[D] import spss" "mansection D importspss"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "import_spss_zh##syntax"}{...}
{viewerjumpto "Menu" "import_spss_zh##menu"}{...}
{viewerjumpto "Description" "import_spss_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_spss_zh##linkspdf"}{...}
{viewerjumpto "Options" "import_spss_zh##options"}{...}
{viewerjumpto "Examples" "import_spss_zh##examples"}{...}
{viewerjumpto "Stored results" "import_spss_zh##results"}
{help import_spss:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[D] import spss} {hline 2}}导入 SPSS 文件{p_end}
{p2col:}({mansection D importspss:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
加载 IBM SPSS Statistics 文件 (*.sav)

{p 8 16 2}
{cmd:import spss}
[{cmd:using}] {it:{help filename_zh}}
[{cmd:,} {it:options}]


{phang}
加载压缩的 IBM SPSS Statistics 文件 (*.zsav)

{p 8 16 2}
{cmd:import spss}
[{cmd:using}] {it:{help filename_zh}}{cmd:, zsav}
[{it:options}]


{phang}
加载 IBM SPSS Statistics 文件 (*.sav) 的子集

{p 8 16 2}
{cmd:import spss}
[{help import spss##namelist:{it:namelist}}] 
{ifin}
{cmd:using} {it:{help filename_zh}}
[{cmd:,} {it:options}]


{phang}
加载压缩的 IBM SPSS Statistics 文件 (*.zsav) 的子集

{p 8 16 2}
{cmd:import spss}
[{help import spss##namelist:{it:namelist}}]
{ifin}
{cmd:using} {it:{help filename_zh}}{cmd:, zsav}
[{it:options}]


{phang}
如果指定的 {it:{help filename_zh}} 没有扩展名，默认假定为 {cmd:.sav}，除非你指定了 {cmd:zsav} 选项，这种情况下会假定扩展名为 {cmd:.zsav}。如果 {it:filename} 包含空格，请将其括在双引号中。

{marker namelist}{...}
{phang}
{it:namelist} 指定要导入的 SPSS 变量名称。

{marker import_spss_options}{...}
{synoptset 26}{...}
{synopthdr :选项}
{synoptline}
{synopt :{cmd:case(}{cmdab:l:ower}{c |}{cmdab:u:pper}{c |}{cmdab:pre:serve)}}以小写或大写读取变量名称；默认情况下保持原样{p_end}
{synopt :{opt clear}}替换内存中的数据{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导入 > SPSS 数据 (*.sav)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:import spss} 将版本 16 或更高的 IBM SPSS Statistics ({cmd:.sav}) 文件或版本 21 或更高的压缩 IBM SPSS Statistics ({cmd:.zsav}) 文件读入内存。{cmd:import spss} 一次最多可以导入 32,766 个变量（在 Stata/IC 中为 2,048 个）。如果你的 SPSS 文件包含超过这个数量的变量，你可以将 SPSS 文件拆分成多个 Stata 数据集。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D importspssQuickstart:快速入门}

        {mansection D importspssRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:zsav} 指示要加载的文件为压缩的 IBM SPSS Statistics 文件。

{phang}
{cmd:case(lower}{c |}{cmd:upper}{c |}{cmd:preserve)} 指定导入后变量名称的大小写。默认值为 {cmd:case(preserve)}。

{phang}
{cmd:clear}
    指定可以替换内存中的数据，即使当前数据尚未保存到磁盘。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. copy https://www.stata.com/sampledata/auto.sav auto.sav}

{pstd}将整个 {cmd:auto.sav} 文件加载到 Stata 中{p_end}
{phang2}{cmd:. import spss auto}

{pstd}仅加载包括 {cmd:make} 和 {cmd:weight} 的数据子集{p_end}
{phang2}{cmd:. import spss make weight using auto, clear}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:import spss} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(N)}}导入的观察数量{p_end}
{synopt :{cmd:r(k)}}导入的变量数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_spss.sthlp>}