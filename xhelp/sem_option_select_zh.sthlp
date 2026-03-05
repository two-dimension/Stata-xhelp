{smcl}
{* *! version 1.0.5  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem option select()" "mansection SEM semoptionselect()"}{...}
{vieweralsosee "[SEM] Intro 11" "mansection SEM Intro11"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{viewerjumpto "Syntax" "sem_option_select_zh##syntax"}{...}
{viewerjumpto "Description" "sem_option_select_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_option_select_zh##linkspdf"}{...}
{viewerjumpto "Option" "sem_option_select_zh##option"}{...}
{viewerjumpto "Remarks" "sem_option_select_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_option_select_zh##examples"}
{help sem_option_select:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[SEM] sem option select()} {hline 2}}使用 sem 和汇总统计数据{p_end}
{p2col:}({mansection SEM semoptionselect():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} ... [{cmd:,} ... {cmd:select(}{it:#} [{it:#} ...]{cmd:)} ...]


{marker description}{...}
{title:描述}

{pstd}
{cmd:sem} 可用于汇总统计数据（SSD），即仅包含均值、标准差或方差，以及基础原始数据的相关性和协方差的汇总统计数据。

{pstd}
您可以通过 {cmd:ssd} 命令输入 SSD；参见 {help ssd_zh:[SEM] ssd}。

{pstd}
要用 {cmd:sem} 适配模型，您只需在通常指定 {cmd:if} {it:{help exp_zh}} 的地方指定 {opt select()} 选项，无需额外操作。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semoptionselect()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt select(# [# ...])}
仅在您有 SSD 在内存中时允许使用。它指定应使用哪些组。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {manlink SEM Intro 11}。

{pstd}
{cmd:sem} 选项 {opt select()} 是 SSD 中 {cmd:if} {it:exp} 的替代选项，如果您只在内存中拥有基础原始数据。基于原始数据，您通常会输入

{phang2}{cmd:. sem ... if agegrp==1 | agegrp==3, ...}{p_end}

{pstd}
而在 SSD 在内存中时，您会输入

{phang2}{cmd:. sem ..., ... select(1 3)}{p_end}

{pstd}
您只能选择在汇总统计数据集中记录了单独汇总统计数据的组；{cmd:ssd describe} 命令会列出组变量（如果有）。请参见 {help ssd_zh:[SEM] ssd}。

{pstd}
顺便说一句，{opt select()} 可以与 {cmd:sem} 选项 {opt group()} 结合使用。您通常输入

{phang2}{cmd:. sem ... if agegrp==1 | agegrp==3, ... group(agegrp)}{p_end}

{pstd}
而可以输入

{phang2}{cmd:. sem ..., ... select(1 3) group(agegrp)}{p_end}

{pstd}
上述限制 {cmd:sem} 仅对年龄组 1 和 3，因此结果将是对年龄组 1 和 3 的联合模型进行估计，一些系数允许在组间变化，而其他系数则被约束为在组间相等。请参见 {helpb sem_group options:[SEM] sem group options}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmmby}{p_end}
{phang2}{cmd:. ssd describe}{p_end}

{pstd}带有组的双因子测量模型{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
	{cmd: (Par -> parrel1 parrel2 parrel3 parrel4), group(grade)}{p_end}

{pstd}使用选项 {opt select()} 仅对组 1 进行分析{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
	{cmd: (Par -> parrel1 parrel2 parrel3 parrel4), group(grade) select(1)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_option_select.sthlp>}