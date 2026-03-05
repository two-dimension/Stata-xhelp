{smcl}
{* *! version 1.2.9  23jan2019}{...}
{viewerdialog rolling "dialog rolling"}{...}
{vieweralsosee "[TS] rolling" "mansection TS rolling"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] statsby" "help statsby_zh"}{...}
{vieweralsosee "[R] Stored results" "help stored results"}{...}
{viewerjumpto "Syntax" "rolling_zh##syntax"}{...}
{viewerjumpto "Menu" "rolling_zh##menu"}{...}
{viewerjumpto "Description" "rolling_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rolling_zh##linkspdf"}{...}
{viewerjumpto "Options" "rolling_zh##options"}{...}
{viewerjumpto "Examples" "rolling_zh##examples"}{...}
{viewerjumpto "Stored results" "rolling_zh##results"}
{help rolling:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] rolling} {hline 2}}滚动窗口和递归估计
{p_end}
{p2col:}({mansection TS rolling:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:rolling}
	[{it:{help exp_list_zh}}]
	{ifin}
	{cmd:,} {opt w:indow(#)} [{it:options}]
	{cmd::}
	{it:command}


{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{p2coldent:* {opt w:indow(#)}}每个样本中的连续数据点数{p_end}
{synopt:{opt r:ecursive}}使用递归样本{p_end}
{synopt:{opt rr:ecursive}}使用反向递归样本{p_end}

{syntab:Options}
{synopt:{opt clear}}用结果替换内存中的数据{p_end}
{synopt:{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}将结果保存到 {it:filename}；以双精度保存统计数据；每 {it:#} 次复现将结果保存到 {it:filename}{p_end}
{synopt:{opt step:size(#)}}每次推进窗口的周期数{p_end}
{synopt:{opt st:art(time_constant)}}开始滚动的周期{p_end}
{synopt:{opt e:nd(time_constant)}}结束滚动的周期{p_end}
{synopt:{cmdab:k:eep(}{varname}[{cmd:,} {opt start}]{cmd:)}}随结果保存 {it:varname}；可选，使用窗口左边缘的值{p_end}

{syntab:Reporting}
{synopt:{opt nodots}}抑制复现点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次复现显示点{p_end}
{synopt:{opt noi:sily}}显示 {it:command} 的任何输出{p_end}
{synopt:{opt tr:ace}}跟踪 {it:command} 的执行{p_end}

{syntab:Advanced}
{synopt:{opth reject:(exp_list:exp)}}识别无效结果{p_end}
{synoptline}
{p 4 6 2}
* {opt window(#)} 是必需的.{p_end}
{p 4 6 2}
您必须在使用 {opt rolling} 之前 {cmd:tsset} 数据；请参见 
{help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}
{it:command} 是任何遵循标准 Stata 语法并允许 {cmd:if} 限定符的命令。{cmd:by} 前缀不能是 {it:command} 的一部分.{p_end}
{p 4 6 2}
如果 {it:command} 接受 {cmd:aweight}，则允许在 {it:command} 中使用 {opt aweight}；请参见 {help weight_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 滚动窗口和递归估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:rolling} 在一系列观测窗口上执行命令并存储结果。 {cmd:rolling} 可以执行通常称为滚动回归、递归回归和反向递归回归的操作。然而，{cmd:rolling} 不仅限于线性回归分析：任何在 {cmd:e()} 或 {cmd:r()} 中存储结果的命令都可以与 {cmd:rolling} 一起使用。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection TS rollingQuickstart:快速开始}

        {mansection TS rollingRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:Main}

{phang}
{opt window(#)} 定义每次执行 {it:command} 时使用的窗口大小。窗口大小是指日历周期，而不是观察次数。如果存在缺失数据（例如，由于周末），则 {it:command} 使用的实际观察数可能少于 {opt window(#)}。 {opt window(#)} 是必需的。

{phang}
{opt recursive} 指定进行递归分析。起始时期保持固定，终止时期向前推进，窗口大小增加。

{phang}
{opt rrecursive} 指定进行反向递归分析。在这里，终止时期保持固定，起始时期向前推进，窗口大小减小。

{dlgtab:Options}

{phang}
{opt clear} 指定 Stata 用收集的统计数据替换内存中的数据，即使当前内存中的数据尚未保存到磁盘。

INCLUDE help prefix_saving_option

{phang2}
   {opt double} 指定每次复现的结果保存为 {opt double}，即 8 字节实数。默认情况下，它们保存为 {opt float}，即 4 字节实数。

{phang2}
   {opt every(#)} 指定每 {it:#} 次复现将结果写入磁盘。只有在 {it:command} 每次复现耗时较长时，才应将 {opt every()} 与 {opt saving()} 一起指定。这将允许您在计算机崩溃时恢复部分结果。请参见 {help post_zh:[P] postfile}。

{phang}
{opt stepsize(#)} 指定每次执行 {it:command} 时窗口向前推进的周期数。

{phang}
{opt start(time_constant)} 指定 {opt rolling} 开始的日期。 {opt start()} 可以指定为整数或日期文字。

{phang}
{opt end(time_constant)} 指定 {opt rolling} 结束的日期。 {opt end()} 可以指定为整数或日期文字。

{phang}
{opt keep}{cmd:(}{varname}[{cmd:, start}]{cmd:)} 指定一个变量与结果一起发布。发布的值是与窗口右边缘对应的值。指定 {opt start()} 选项请求发布与窗口左边缘对应的值。此选项通常用于记录日历日期。

{dlgtab:Reporting}

{phang}
{opt nodots} 和 {opt dots(#)} 指定是否显示复现点。默认情况下，每个窗口显示一个点字符。如果 {it:command} 返回错误或 {it:exp_list} 中的任何值缺失，则显示一个红色 `x`。您还可以使用 {helpb set dots} 控制点的打印。

{phang2}
{opt nodots} 抑制在执行 {it:command} 的每个窗口上显示复现点。

{phang2}
{opt dots(#)} 每 {it:#} 次复现显示点。 {cmd:dots(0)} 是 {cmd:nodots} 的同义词。

{phang}
{opt noisily} 使每次执行 {it:command} 时都显示其输出。此选项隐含 {opt nodots} 选项。

{phang}
{opt trace} 使得显示 {it:command} 执行的跟踪。此选项隐含 {opt noisily} 和 {opt nodots} 选项。

{dlgtab:Advanced}

{phang}
{opth reject(exp)} 识别指示何时应拒绝结果的表达式。当 {it:exp} 为真时，保存的统计数据设置为缺失值。


{marker examples}{...}
{title:示例：收集系数}

{phang2}{cmd:. webuse lutkepohl2}{p_end}
{phang2}{cmd:. tsset qtr}{p_end}
{phang2}{cmd:. rolling _b, window(30): regress dln_inv dln_inc dln_consump}
{p_end}

{pstd}同上，{cmd:_b} 是 e 类命令的默认值{p_end}
{phang2}{cmd:. webuse lutkepohl2, clear}{p_end}
{phang2}{cmd:. tsset qtr}{p_end}
{phang2}{cmd:. rolling, window(30): regress dln_inv dln_inc dln_consump}
{p_end}
{phang2}{cmd:. list in 1/10, abbrev(14)}


{title:示例：收集标准误}

{phang2}{cmd:. webuse lutkepohl2, clear}{p_end}
{phang2}{cmd:. tsset qtr}{p_end}
{phang2}{cmd:. rolling _se, window(10): regress dln_inv dln_inc dln_consump}
{p_end}
{phang2}{cmd:. list in 1/10, abbrev(14)}


{title:示例：收集存储结果}

{phang2}{cmd:. webuse lutkepohl2, clear}{p_end}
{phang2}{cmd:. tsset qtr}{p_end}
{phang2}{cmd:. rolling mean=r(mean) median=r(p50), window(10): summarize inc,}
                {cmd:detail}{p_end}
{phang2}{cmd:. list in 1/10}

{phang2}{cmd:. webuse lutkepohl2, clear}{p_end}
{phang2}{cmd:. tsset qtr}{p_end}
{phang2}{cmd:. rolling ratio=(r(mean)/r(p50)), window(10): summarize inc,}
                {cmd:detail}{p_end}
{phang2}{cmd:. list in 1/10}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:rolling} 不设置 r- 或 e- 类宏。根据使用的最后一个数据窗口，使用 {cmd:rolling} 的命令的结果在 {cmd:rolling} 完成后可用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rolling.sthlp>}