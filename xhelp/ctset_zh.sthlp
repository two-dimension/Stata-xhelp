{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog ctset "dialog ctset"}{...}
{vieweralsosee "[ST] ctset" "mansection ST ctset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] ct" "help ct_zh"}{...}
{vieweralsosee "[ST] cttost" "help cttost_zh"}{...}
{viewerjumpto "语法" "ctset_zh##syntax"}{...}
{viewerjumpto "菜单" "ctset_zh##menu"}{...}
{viewerjumpto "描述" "ctset_zh##description"}{...}
{viewerjumpto "PDF文档链接" "ctset_zh##linkspdf"}{...}
{viewerjumpto "选项" "ctset_zh##options"}{...}
{viewerjumpto "备注" "ctset_zh##remarks"}{...}
{viewerjumpto "示例" "ctset_zh##examples"}
{help ctset:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[ST] ctset} {hline 2}}声明数据为计时数据{p_end}
{p2col:}({mansection ST ctset:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将内存中的数据声明为计时数据，并对数据进行检查

{p 8 14 2}{cmd:ctset} {it:timevar} {it:nfailvar} [{it:ncensvar} [{it:nentvar}]]
	[{cmd:,} {opth by(varlist)} {opt nos:how} ]


{phang}
指定是否显示关键计时变量的身份

{p 8 14 2}{cmd:ctset,} {{opt s:how} | {opt nos:how}}


{phang}
清除计时设置

{p 8 14 2}{cmd:ctset, clear}


{phang}
显示关键计时变量的身份并重新检查数据

{p 8 14 2}{{cmd:ctset} | {cmd:ct}}


{pstd}其中 {it:timevar} 指的是故障、删失或进入的时间。
它应包含时间 >= 0。

{pstd}{it:nfailvar} 记录在时间 {it:timevar} 失败人数。

{pstd}{it:ncensvar} 记录在时间 {it:timevar} 的删失人数。

{pstd}{it:nentvar} 记录在时间 {it:timevar} 进入的人数。

{pstd}Stata 将在时间 {it:timevar} 进行事件排序，如下所示：

{p 13 32 2}在 {it:timevar} {space 7} 发生了 {it:nfailvar} 次失败,{p_end}
{p 8 32 2}然后在 {it:timevar}+0 {space 5} 发生了 {it:ncensvar} 次删失,{p_end}
{p 5 32 2}最后在 {it:timevar}+0+0 {space 4} 有 {it:nentvar} 名受试者进入数据。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 设置与工具 >}
     {bf:声明数据为计时数据}


{marker description}{...}
{title:描述}

{pstd}
ct 指的是计时数据，在这里和 {help ct_zh} 中描述。请勿将计时数据与计数过程数据混淆，后者可以使用 st 命令进行分析；请参见 {manhelp st ST}。

{pstd}
在指定 {it:timevar} 和 {it:nfailvar} 时，{cmd:ctset} 将内存中的数据声明为计时数据。当您使用 {cmd:ctset} 声明数据时，{cmd:ctset} 还会检查您所声明的内容是否合理。

{pstd}
{cmd:ctset,} {cmd:noshow} 将在其他计时命令的输出之前抑制关键计时变量的身份显示。默认情况下，会显示该信息。如果您输入 {cmd:ctset,} {cmd:noshow} 然后希望恢复默认行为，请输入 {cmd:ctset,} {cmd:show}。

{pstd}
{cmd:ctset,} {cmd:clear} 主要供程序员使用，使 Stata 不再将数据视为计时数据。数据集本身保持不变。在进行另一个 {cmd:ctset} 之前，不需要输入 {cmd:ctset,} {cmd:clear}。

{pstd}
未带参数输入的 {cmd:ctset} -- 可以缩写为 {cmd:ct} -- 显示关键计时变量的身份并重新检查您的数据。因此 {cmd:ct} 可以提醒您曾经使用 {cmd:ctset} （特别是如果您使用过 {cmd:ctset,} {cmd:noshow}），并在您对数据进行更改时重新验证您的数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST ctsetQuickstart:快速入门}

        {mansection ST ctsetRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth by(varlist)} 表示按组提供计数。例如，考虑包含如下记录的数据

	  t    fail   cens    sex    agecat
	  5      10      2      0         1
	  5       6      1      1         1
	  5      12      0      0         2

{pmore}
这些数据表示在类别 {cmd:sex}=0 和 {cmd:agecat}=1 时，在时间 5 发生了 10 次失败和 2 次删失；对于 {cmd:sex}=1，在时间 5 发生了 1 次删失和 6 次失败；以此类推。

{pmore}
上述数据将被声明为

{pmore2}{cmd:. ctset t fail cens, by(sex agecat)}

{pmore}
记录的顺序并不重要，且每个组的每个时间点不必都有记录，也不须对每个时间和组只有一个记录。然而，数据必须包含完整的事件表。

{phang}
{opt show} 和 {opt noshow} 指定是否在每个计时命令开始时显示关键计时变量的身份。一些用户发现该报告令人安心；另一些用户则觉得其重复。无论如何，您可以设置和取消设置 {opt show}，并且您总可以输入 {cmd:ct} 来查看摘要。

{phang}
{opt clear} 使 Stata 不再视为计时数据。


{marker remarks}{...}
{title:备注}

{pstd}
在计时数据集中，观察记录事件发生的次数：

{pstd}
更常见的是，数据集中还包含分类变量：

	sex      t    failed   censored
	 1      10      2          1

{pstd}
该观察记录在组 sex==1 中，有 2 次失败和 1 次在时间 10 时被删失。这些数据将通过输入 {cmd:ctset} 来声明：

{phang2}{cmd:. ctset t failed censored, by(sex)}

{pstd}
可以有多个分类变量。我们的数据可能是

	agegrp    sex      t    failed   censored
	   2       1      10      2          1

{pstd}
这样，10 和 2 指的是类别 agegrp==2 和 sex==1。这些数据将通过输入 {cmd:ctset} 来声明：

{phang2}{cmd:. ctset t failed censored, by(sex agegrp)}{p_end}
    或
{phang2}{cmd:. ctset t failed censored, by(agegrp sex)}

{pstd}
指定分类变量的顺序并不重要。

{pstd}
一旦我们的数据被 {cmd:ctset}，我们可以将其转换为生存时间数据：

	{cmd:. cttost}

{pstd}
您可以查看 {manhelp cttost ST}，但这并不是必需的。一旦数据被转换为 st，您可以使用任何 st 命令进行分析；请参见 {manhelp st ST}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ctset1}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}{cmd:ctset} 简单的计时数据{p_end}
{phang2}{cmd:. ctset failtime fail}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ctset2}

{pstd}列出数据{p_end}
{phang2}{cmd:. list, sepby(bearings)}

{pstd}{cmd:ctset} 简单的计时数据，但按组提供计数{p_end}
{phang2}{cmd:. ctset failtime fail, by(bearings)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ctset3}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}{cmd:ctset} 包含删失的计时数据{p_end}
{phang2}{cmd:. ctset failtime fail censored, by(bearings)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ctset.sthlp>}