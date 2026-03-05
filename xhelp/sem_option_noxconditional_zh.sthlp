{smcl}
{* *! version 1.0.6  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem option noxconditional" "mansection SEM semoptionnoxconditional"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{viewerjumpto "Syntax" "sem_option_noxconditional_zh##syntax"}{...}
{viewerjumpto "Description" "sem_option_noxconditional_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_option_noxconditional_zh##linkspdf"}{...}
{viewerjumpto "Option" "sem_option_noxconditional_zh##option"}{...}
{viewerjumpto "Remarks" "sem_option_noxconditional_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_option_noxconditional_zh##examples"}
{help sem_option_noxconditional:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[SEM] sem option noxconditional} {hline 2}}计算
观察到的外生变量的均值等{p_end}
{p2col:}({mansection SEM semoptionnoxconditional:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} ... [{cmd:,} ... {opt noxconditional} ...]


{marker description}{...}
{title:描述}

{pstd}
{cmd:sem} 有一个很少需要指定的 {opt noxconditional} 选项。该选项如下所述。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM semoptionnoxconditionalRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt noxconditional} 表示您希望将观察到的外生变量的均值、方差和协方差包含在 {cmd:sem} 要估计的参数中。


{marker remarks}{...}
{title:备注}

{pstd}
在许多情况下，{cmd:sem} 不包括观察到的外生变量的均值、方差和协方差作为要估计的参数。当 {cmd:sem} 省略它们时，模型的估计量被称为 x 条件。{cmd:sem} 使用单独计算的观察值而不是估计均值、方差和协方差的值。{cmd:sem} 这样做是为了节省时间和内存。

{pstd}
当不适用时，{cmd:sem} 不使用 x 条件计算。

{pstd}
{opt noxconditional} 选项阻止 {cmd:sem} 使用 x 条件计算。您可以在 {cmd:sem} 命令中指定 {opt noxconditional}：

{phang2}{cmd:. sem ..., ... noxconditional}{p_end}

{pstd}
请不要将 x 条件计算与在 {manlink SEM Intro 4} 中讨论的条件正态性假设混淆。即使条件正态性假设不适用，x 条件计算也是合适的。

{pstd}
有关更多信息，请参见

{phang2}
{mansection SEM semoptionnoxconditionalRemarksandexamplesWhentospecifynoxconditional:何时指定 noxconditional}{p_end}
{phang2}
{mansection SEM semoptionnoxconditionalRemarksandexamplesOptionforcexconditional(atechnicalnote):选项 forcexconditional（技术说明）}{p_end}


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_sm1}{p_end}

{pstd}使用默认的 x 条件计算拟合模型{p_end}
{phang2}{cmd:. sem (r_occasp <- f_occasp r_intel r_ses f_ses)}{break}
	{cmd: (f_occasp <- r_occasp f_intel f_ses r_ses),}{break}
	{cmd: cov(e.r_occasp*e.f_occasp)}{p_end}

{pstd}拟合观察到的外生变量的均值、方差和协方差{p_end}
{phang2}{cmd:. sem (r_occasp <- f_occasp r_intel r_ses f_ses)}{break}
	{cmd: (f_occasp <- r_occasp f_intel f_ses r_ses),}{break}
	{cmd: cov(e.r_occasp*e.f_occasp) noxconditional}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_option_noxconditional.sthlp>}