{smcl}
{* *! version 1.1.7  14may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] char" "help char_zh"}{...}
{viewerjumpto "语法" "jkstat_zh##syntax"}{...}
{viewerjumpto "描述" "jkstat_zh##description"}{...}
{viewerjumpto "选项" "jkstat_zh##options"}{...}
{viewerjumpto "备注" "jkstat_zh##remarks"}{...}
{viewerjumpto "存储结果" "jkstat_zh##results"}
{help jkstat:English Version}
{hline}{...}
{title:标题}

{p 4 18 2}
{hi:[SVY] jkstat} {hline 2} 报告杰克刀结果


{marker syntax}{...}
{title:语法}

{pin}
{cmd:jkstat}
	[{varlist}]
	{weight}
	{ifin}
	[{cmd:,} {it:options} ]

{pin}
{cmd:jkstat}
	[{it:namelist}]
	[{opt using} {it:filename}]
	{ifin}
	[{cmd:,} {it:options} ]


{p2colset 9 28 32 2}{...}
{p2col :{it:options}}描述{p_end}
{p2line}
{p2col :{opt notable}}抑制输出表{p_end}
{p2col :{opt noh:eader}}抑制表头{p_end}
{p2col :{opt nol:egend}}抑制表图例{p_end}
{p2col :{opt v:erbose}}显示完整的表图例{p_end}

{p2col :{opt l:evel(#)}}置信区间的置信水平{p_end}
{p2col :{opt ti:tle(text)}}杰克刀结果的标题{p_end}

{p2col :{opt s:tat(vector)}}观察值{p_end}
{p2col :{opt str:ata(varname)}}分层变量{p_end}
{p2col :{opt mse}}使用均方误差公式进行方差估计{p_end}

{synopt :{it:{help jkstat##display_options:display_options}}}控制列格式{p_end}
{p2line}

{pstd}
{cmd:fweight}s、{cmd:pweight}s 和 {cmd:iweight}s 可以与 {cmd:jkstat} 一起使用；请参阅 {help weight_zh}。

{phang}
{cmd:jkstat} 具有所有估计命令的特性，但不允许使用 {cmd:adjust}、{cmd:margins}、{cmd:predict} 和 {cmd:predictnl}；请参阅 {help estcom_zh}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:jkstat} 是一种程序员命令，可计算并显示来自杰克刀统计的估计结果。

{pstd}
{cmd:jkstat} 使用 {it:varlist} 中的变量计算方差-协方差矩阵，假设这些变量包含来自杰克刀程序的重复值。

{pstd}
如果给定 {opt using} 修饰符，{cmd:jkstat} 将使用 {it:filename} 中的数据进行计算，同时保留当前内存中的数据。默认情况下使用内存中的数据。

{pstd}
在回放来自 {cmd:jkstat} 的估计结果时，可以使用以下选项：

{pmore}
	{opt l:evel(#)}
	{opt notable}
	{opt noh:eader}
	{opt nol:egend}
	{opt v:erbose}
	{opt ti:tle(text)}
        {it:display_options}

{pstd}
对于所有其他选项（以及限定词 {opt using}、{cmd:if} 和 {cmd:in}），{cmd:jkstat} 要求一个数据集。


{marker options}{...}
{title:选项}

{phang}
{opt notable} 防止显示输出表。
此选项隐含 {opt noheader}。

{phang}
{opt noheader} 抑制表头的显示。
此选项隐含 {opt nolegend}。

{phang}
{opt nolegend} 抑制表图例的显示。表图例将表的行与其代表的表达式进行标识。

{phang}
{opt verbose} 请求显示完整的表图例。默认情况下，不显示系数和标准误差。

{phang}
{opt level(#)}；请参阅 {help estimation_options_zh}。

{phang}
{opt title(text)} 指定要显示在杰克刀结果表上方的标题；默认标题为“杰克刀统计”。

{phang}
{opt stat(vector)} 允许用户指定每个统计量的观察值（即，使用原始数据集的统计量的值）。

{phang}
{opt strata(varname)} 指定包含分层标识符的变量。

{phang}
{opt mse} 指定 {opt jkstat} 通过使用统计量在整个数据集上的观察值与重复值的偏差来计算方差。默认情况下，{opt jkstat} 通过使用伪值与其均值的偏差来计算方差。

{marker display_options}{...}
{phang}
{it:display_options}:
{opth cformat(%fmt)},
{opt pformat(%fmt)}和
{opt sformat(%fmt)}；
    请参阅 {helpb estimation options##display_options:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
虽然 {cmd:jkstat} 允许用户通过 {cmd:stat()} 和 {cmd:strata()} 选项指定每个杰克刀统计量的观察值和分层标识符，但程序员可能对在未提供这些选项时 {cmd:jkstat} 使用的内容感兴趣。

{pstd}
当处理杰克刀数据集时，{cmd:jkstat} 首先检查数据特征（请参见 {manhelp char P}）。以下是 {cmd:jkstat} 理解的特征列表：

{phang}
{cmd:_dta[jk_version]} 标识杰克刀数据集的版本。假设该特征为空（未定义）或 {cmd:1}；否则，{cmd:jkstat} 将表现得好像它是空的。该版本告知 {cmd:jkstat} 在杰克刀数据集中查找哪些其他特征。

{pmore}
{cmd:jkstat} 从版本 {cmd:1} 的杰克刀数据集中使用以下特征：

{pmore2}
{cmd:_dta[N]}{break}
{cmd:_dta[N_cluster]}{break}
{cmd:_dta[command]}{break}
{cmd:_dta[jk_svy]}{break}
{cmd:_dta[names]}{break}
{it:varname}{cmd:[observed]}{break}
{it:varname}{cmd:[expression]}

{pmore}
空的杰克刀数据集版本意味着该数据集不是由 {help jackknife_zh} 创建的。在这种情况下，{opt stat()} 选项是必需的。所有其他特征都将被忽略。

{phang}
{cmd:_dta[N]} 是观察数据集中的观察值数量。

{phang}
{cmd:_dta[N_cluster]} 是观察数据集中的簇数（对于非调查数据）。

{phang}
{cmd:_dta[command]} 是用于计算统计量观察值的命令。

{phang}
{cmd:_dta[jk_svy]} 指明杰克刀数据来自调查数据，当数据包含“{hi:svy}”时；否则，假设为非调查数据。当该特征被适当设置时，它会导致 {cmd:jkstat} 查找以下其他特征：

{pmore2}
{cmd:_dta[N_strata]}{break}
{cmd:_dta[N_psu]}{break}
{cmd:_dta[strata]}{break}
{cmd:_dta[jk_strata]}{break}
{cmd:_dta[jk_multiplier]}{break}
{cmd:_dta[psu]}
{cmd:_dta[wtype]}
{cmd:_dta[wexp]}
{cmd:_dta[rweights]}

{phang}
{cmd:_dta[names]} 标识包含杰克刀重复值的变量。

{phang}
{it:varname}{cmd:[observed]} 是由 {it:varname} 标识的统计量的观察值。此特征可能会通过指定 {cmd:stat()} 选项而被覆盖。

{phang}
{it:varname}{cmd:[expression]} 是描述由 {it:varname} 标识的统计量的表达式或标签。

{pstd}
以下特征仅在 {cmd:_dta[jk_svy]} 为“{hi:svy}”时可用：

{phang}
{cmd:_dta[N_strata]} 是观察数据集中的分层数。

{phang}
{cmd:_dta[N_psu]} 是观察数据集中的阶层单位数量。

{phang}
{cmd:_dta[strata]} 是来自原始数据集中标识层的变量名称。此特征通常将包含与 {cmd:_dta[jk_strata]} 相同的变量名称。

{phang}
{cmd:_dta[jk_strata]} 是标识分层的变量名称。此特征可以通过指定 {opt strata()} 选项而被覆盖。

{phang}
{cmd:_dta[jk_multiplier]} 是包含用于杰克刀方差公式的乘数值的变量名称。此特征可以通过指定 {it:weight} 而被覆盖。

{phang}
{cmd:_dta[psu]} 是来自原始数据集中标识主要抽样单位的变量名称。

{phang}
{cmd:_dta[wtype]}、
{cmd:_dta[wexp]} 和
{cmd:_dta[rweights]} 标识观察数据集中的权重类型、表达式和重复权重变量名称列表。  
{cmd:_dta[wtype]} 和 {cmd:_dta[wexp]} 也可以为非调查数据设置，但这仅在使用 {hi:fweight}s 时建议；请参阅 {help weights}。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:jkstat} 将以下内容存储在 {cmd:e()} 中：

{p2colset 9 24 28 2}{...}
{pstd}
标量

{p2col :{cmd:e(N)}}样本大小{p_end}
{p2col :{cmd:e(N_strata)}}分层数{p_end}
{p2col :{cmd:e(N_cluster)}}簇数（对于非调查数据）{p_end}
{p2col :{cmd:e(N_psu)}}阶层单位数量（对于调查数据）{p_end}
{p2col :{cmd:e(N_reps)}}请求的重复数量{p_end}

{pstd}
宏

{p2col :{cmd:e(cmd)}}{cmd:jackknife}{p_end}
{p2col :{cmd:e(command)}}{it:command} 来自 {hi:_dta[command]}{p_end}
{p2col :{cmd:e(exp}{it:#}{cmd:)}}第 {it:#} 个统计量的表达式{p_end}
{p2col :{cmd:e(strata)}}分层变量{p_end}
{p2col :{cmd:e(cluster)}}簇变量{p_end}
{p2col :{cmd:e(missing)}}"{hi:缺失}"
	如果发现缺失值，否则为空{p_end}
{p2col :{cmd:e(varlist)}}{it:varlist} 或 {it:namelist}{p_end}
{p2col :{cmd:e(vcetype)}}"{hi:Jackknife}" 或 "{hi:Jknife *}"{p_end}
{p2col :{cmd:e(vce)}}"{hi:jackknife}"{p_end}
{p2col :{cmd:e(mse)}}"{hi:mse}" 如果提供了 {opt mse} 选项{p_end}

{pstd}
矩阵

{p2col :{cmd:e(b)}}观察统计量{p_end}
{p2col :{cmd:e(V)}}杰克刀方差矩阵{p_end}
{p2col :{cmd:e(jk_b)}}杰克刀均值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <jkstat.sthlp>}