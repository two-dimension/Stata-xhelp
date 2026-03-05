{smcl}
{* *! version 1.0.7  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem ssd options" "mansection SEM semssdoptions"}{...}
{vieweralsosee "[SEM] Intro 11" "mansection SEM Intro11"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] ssd" "help ssd_zh"}{...}
{viewerjumpto "Syntax" "sem_ssd_options_zh##syntax"}{...}
{viewerjumpto "Description" "sem_ssd_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_ssd_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_ssd_options_zh##options"}{...}
{viewerjumpto "Remarks" "sem_ssd_options_zh##remarks"}
{help sem_ssd_options:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[SEM] sem ssd options} {hline 2}}摘要统计数据使用的选项{p_end}
{p2col:}({mansection SEM semssdoptions:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} {it:paths} ...{cmd:,} ... {it:ssd_options}


{synoptset 24}{...}
{synopthdr:ssd_options}
{synoptline}
{synopt :{opt sel:ect()}}SSD的替代 {opt if} {it:exp} {p_end}
{synopt :{opt forcecor:relations}}允许SSD相关性的分组和合并{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
数据有时仅以摘要统计的形式提供。这些摘要统计包括均值、标准差或方差，以及相关性或协方差。这些摘要统计可以被{cmd:sem}使用，以替代底层的原始数据。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM semssdoptionsRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt select()} 是使用摘要统计数据（SSD）时的替代 {cmd:if} {it:exp}。通常你可能会输入

{phang2}{cmd: . sem ... if agegrp==1 | agegrp==3 | agegrp==5, ...}{p_end}

{p 8 8 2}
在SSD已加载的情况下，你应该输入

{phang2}{cmd:. sem ..., ... select(1 3 5)}{p_end}

{p 8 8 2}
详细信息请见 {helpb sem option select:[SEM] sem option select()} 和 {manlink SEM Intro 11}。

{phang}
{opt forcecorrelations} 告诉{cmd:sem}，它可以进行通常认为可疑的计算，这些计算涉及只包含部分均值、方差（标准差）和协方差（相关性）的SSD。在你了解我们即将讨论的统计问题之前，不要指定此选项。{opt forcecorrelations} 主要在两种情况下相关。

{p 8 8 2}
第一种情况是，如果一个或多个（通常是全部）组仅定义了相关性，{cmd:sem} 不愿意生成 {opt group()} 估计。你可以通过指定 {opt forcecorrelations} 来覆盖这一点，{cmd:sem} 将假设仅有相关性的组的方差为单位方差。除非你确保方差确实为1，否则不可这样做。

{p 8 8 2}
第二种情况是，{cmd:sem} 不愿意在未提供均值和协方差（或均值和相关性及标准差或方差）的情况下在组间进行合并。如果在需要合并时缺少该信息，{cmd:sem} 将发出错误信息。{opt forcecorrelations} 选项指定 {cmd:sem} 忽略其规则，合并相关矩阵，将相关性视为协方差（在方差未定义时），并将均值视为0（在均值未定义时）。以这种方式进行计算的唯一理由是方差确实为1且均值确实为0。

{p 8 8 2}
请理解，使用纯相关数据或没有均值的协方差数据并没有问题，只要你为各组拟合模型。在组间进行任何操作基本要求 {cmd:sem} 拥有协方差和均值的信息。


{marker remarks}{...}
{title:备注}

{pstd}
详见 {manlink SEM Intro 11}。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_ssd_options.sthlp>}