{smcl}
{* *! version 1.2.14  23jan2019}{...}
{viewerdialog statsby "dialog statsby"}{...}
{vieweralsosee "[D] statsby" "mansection D statsby"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[D] by" "help by_zh"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{vieweralsosee "[R] permute" "help permute_zh"}{...}
{vieweralsosee "[P] postfile" "help postfile"}{...}
{viewerjumpto "Syntax" "statsby_zh##syntax"}{...}
{viewerjumpto "Menu" "statsby_zh##menu"}{...}
{viewerjumpto "Description" "statsby_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "statsby_zh##linkspdf"}{...}
{viewerjumpto "Options" "statsby_zh##options"}{...}
{viewerjumpto "Examples" "statsby_zh##examples"}
{help statsby:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] statsby} {hline 2}}在按列表中收集命令的统计数据{p_end}
{p2col:}({mansection D statsby:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:statsby}
	[{it:{help exp_list_zh}}]
	[{cmd:,} {it:options} ]{cmd::}
	{it:command}

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{p2coldent :* {cmd:by(}{help varlist_zh:{it:varlist}} [{cmd:,} {cmdab:mis:sing}]{cmd:)}}相当于交互式使用的 {cmd:by} {it:varlist}{cmd::}{p_end}

{syntab :选项}
{synopt :{opt clear}}用结果替换内存中的数据{p_end}
{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}保存结果到 {it:filename}; 以双精度保存统计数据; 每 {it:#} 次复制保存结果到 {it:filename}{p_end}
{synopt :{opt t:otal}}包括整个数据集的结果{p_end}
{synopt :{opt s:ubsets}}包括组的所有组合子集{p_end}

{syntab :报告}
{synopt :{opt nodots}}抑制复制点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次复制时显示点{p_end}
{synopt :{opt noi:sily}}显示来自 {it:command} 的任何输出{p_end}
{synopt :{opt tr:ace}}跟踪 {it:command}{p_end}
{synopt :{opt nol:egend}}抑制表格图例{p_end}
{synopt :{opt v:erbose}}显示完整的表格图例{p_end}

{syntab :高级}
{synopt :{opt base:pop}{cmd:(}{it:{help exp_zh}}{cmd:)}}将初始化样本限制为 {it:exp}; 很少使用{p_end}
{synopt :{opt force}}不检查 {cmd:svy} 命令; 很少使用{p_end}
{synopt :{opt forcedrop}}仅在调用 {it:command} 时保留按组观察值; 很少使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt by()} 在对话框中是必需的，因为 {cmd:statsby} 仅在使用 {opt by()} 时对交互用户有用。{p_end}
{p 4 6 2}所有由 {it:command} 支持的权重类型都是允许的，除了 {cmd:pweight}s；请参阅 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 其他 > 在按列表中收集命令的统计数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:statsby} 从 {it:command} 中按列表收集统计数据。 输入

{phang2}
{cmd:. statsby} {it:exp_list} {cmd:,} {opt by(varname)}{cmd::} {it:command}

{pstd}
对每个由 {it:varname} 确定的组执行 {it:command}，构建来自 {it:exp_list} 中表达式的相关值的数据集。 生成的数据集将取代当前数据集，除非提供了 {cmd:saving()} 选项。 {it:varname} 可以指数字或字符串变量。

{pstd}
{it:command} 定义要执行的统计命令。 只要遵循 {help language_zh:标准 Stata 语法} 并允许 {bf:{help if_zh}} 限定词，大多数 Stata 命令和用户编写的程序都可以与 {cmd:statsby} 一起使用。 {cmd:by} 前缀不能是 {it:command} 的一部分。

{pstd}
{it:exp_list} 指定从 {it:command} 执行中收集的统计数据。 {it:exp_list} 中的表达式遵循 {it:{help exp_list_zh}} 中给出的语法。 如果未给出表达式，则 {it:exp_list} 根据 {it:command} 是否更改 {cmd:e()} 和 {cmd:r()} 中的结果假定默认值。 如果 {it:command} 更改 {cmd:e()} 中的结果，则默认值为 {cmd:_b}。 如果 {it:command} 更改 {cmd:r()} 中的结果（但不改变 {cmd:e()}），则默认值为所有发布到 {cmd:r()} 的标量。 否则不指定 {it:exp_list} 中的表达式是错误的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D statsbyQuickstart:快速入门}

        {mansection D statsbyRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:by(}{help varlist_zh:{it:varlist}} [{cmd:, missing}]{cmd:)} 指定一个现有变量的列表，如果您以交互方式发布命令，这些变量通常会出现在命令的 {cmd:by} {it:varlist}{cmd::} 部分。 默认情况下，{cmd:statsby} 忽略缺失一个或多个 {cmd:by()} 变量的组。 另外，{opt missing} 会将缺失值视为按组中的任何其他值，并使用 {opt subsets} 选项包括整个数据集的结果。 如果未指定 {cmd:by()}，则 {it:command} 将在整个数据集上运行。 {it:varlist} 可以包含数字和字符串变量。

{dlgtab:选项}

{phang}
{opt clear} 指定可以替换内存中的数据，即使当前数据尚未保存到磁盘。

包含帮助 prefix_saving_option

{pmore}
有关 {it:suboptions} 的详细信息，请参见帮助 {it:{help prefix_saving_option_zh}}。

{phang}
{opt total} 指定 {it:command} 在整个数据集上运行，除了在 {opt by()} 选项中指定的组。

{phang}
{opt subsets} 指定 {it:command} 对由 {opt by()} 选项中变量的任何组合定义的每个组运行。

{dlgtab:报告}

{phang}
{opt nodots} 和 {opt dots(#)} 指定是否显示复制点。 默认情况下，每个按组显示一个点字符。 如果 {it:command} 返回错误，或者 {it:exp_list} 中的任何值缺失，则显示红色的 `x'。 您还可以使用 {helpb set dots} 控制是否打印点。

{phang2}
{opt nodots} 抑制复制点的显示。 默认情况下，显示一个 

{phang2}
{opt dots(#)} 每 {it:#} 次复制显示点。 {cmd:dots(0)} 是 {cmd:nodots} 的同义词。

{phang}
{opt noisily} 使 {it:command} 的输出对每个按组显示。 此选项隐含 {opt nodots} 选项。

{phang}
{opt trace} 导致显示 {it:command} 执行的跟踪。 此选项隐含 {opt noisily} 选项。

{phang}
{opt nolegend} 抑制表格图例的显示，图例识别表格的行及其所代表的表达式。

{phang}
{opt verbose} 请求显示完整的表格图例。 默认情况下，不显示系数和标准误差。

{dlgtab:高级}

{phang}
{opt basepop}{cmd:(}{it:{help exp_zh}}{cmd:)} 指定 {cmd:statsby} 用于评估 {it:command} 和收集统计数据的基本人口。 默认基本人口是整个数据集，或者是由在 {it:command} 上指定的任何 {bf:{help if_zh}} 或 {bf:{help in_zh}} 条件指定的数据集。

{pmore}
{cmd:basepop()} 有一个有用的情况是，在面板数据集的面板上收集统计数据，使用对时间序列有效但对面板数据无效的估计量，例如，

{phang3}
	{cmd:. statsby, by(mypanels) basepop(mypanels==2): arima} {it:...}

{phang}
{opt force} 抑制 {it:command} 不能为 {cmd:svy} 命令的限制。 {cmd:statsby} 不会对调查数据进行亚群体估计，因此不应与 {cmd:svy} 一起使用。 如果未指定 {cmd:force} 选项，{cmd:statsby} 在遇到 {cmd:svy} 时会报告错误。 此选项很少使用，因此仅在您知道自己在做什么时使用。

{phang}
{opt forcedrop} 强制 {cmd:statsby} 在每个按组调用 {it:command} 之前删除所有观察值。 这允许 {cmd:statsby} 与完全忽略 {bf:{help if_zh}} 和 {bf:{help in_zh}} 的用户编写的程序一起使用，但在指定时不会返回错误。 {cmd:forcedrop} 很少使用。


{marker examples}{...}
{title:示例：收集系数}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. statsby, by(foreign): regress mpg gear turn}{p_end}


{title:示例：使用时间序列估计器与面板数据收集系数和标准误差}

{phang}{cmd:. webuse grunfeld, clear}{p_end}
{phang}{cmd:. tsset company year}{p_end}
{phang}{cmd:. statsby _b _se, basepop(company==1) by(company):}
              {cmd:arima invest mvalue kstock, ar(1)}


{title:示例：收集存储在 r类宏中的结果}

{phang}{cmd:. sysuse auto, clear}{p_end}
{phang}{cmd:. statsby mean=r(mean) sd=r(sd) size=r(N), by(rep78):}
              {cmd:summarize mpg}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <statsby.sthlp>}