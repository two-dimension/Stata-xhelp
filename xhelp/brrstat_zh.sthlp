{smcl}
{* *! version 1.1.4  14may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] char" "help char_zh"}{...}
{viewerjumpto "语法" "brrstat_zh##syntax"}{...}
{viewerjumpto "描述" "brrstat_zh##description"}{...}
{viewerjumpto "选项" "brrstat_zh##options"}{...}
{viewerjumpto "备注" "brrstat_zh##remarks"}{...}
{viewerjumpto "存储结果" "brrstat_zh##results"}
{help brrstat:English Version}
{hline}{...}
{title:标题}

{p 4 23 2}
{hi:[SVY] brrstat} {hline 2}
报告平衡重复复制（BRR）结果


{marker syntax}{...}
{title:语法}

{pin}
{cmd:brrstat}
	[{varlist}]
	{ifin}
	[{cmd:,} {it:options}]

{pin}
{cmd:brrstat}
	[{it:namelist}]
	[{opt using} {it:filename}]
	{ifin}
	[{cmd:,} {it:options}]

{synoptset 20}{...}
{p2col :{it:options}}描述{p_end}
{p2line}
{p2col :{opt notable}}抑制输出表{p_end}
{p2col :{opt noheader}}抑制表头{p_end}
{p2col :{opt nolegend}}抑制表图例{p_end}
{p2col :{opt verbose}}显示完整的表图例{p_end}

{p2col :{opt level(#)}}置信区间的置信水平{p_end}
{p2col :{opt title(text)}}BRR结果的标题{p_end}

{p2col :{opt stat(vector)}}观测值{p_end}
{p2col :{opt mse}}使用均方误差公式进行方差估计{p_end}
{p2line}
{p 4 6 2}
{cmd:brrstat} 具有所有估计命令的特点，除了不允许使用 {cmd:mfx}、{cmd:adjust}、{cmd:predict} 和 {cmd:predictnl}；见 {help estcom_zh}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:brrstat} 是一个程序员命令，用于计算和显示来自 BRR 统计的估计结果。

{pstd}
{cmd:brrstat} 使用 {it:varlist} 中的变量计算方差-协方差矩阵，假定该变量包含来自 BRR 程序的重复值。

{pstd}
如果给定 {opt using} 修饰符，{cmd:brrstat} 将使用 {it:filename} 中的数据进行计算，同时保留当前内存中的数据。默认情况下使用内存中的数据。

{pstd}
以下选项可用于重播 {cmd:brrstat} 的估计结果：

{pmore}
	{opt level(#)}
	{opt notable}
	{opt noheader}
	{opt nolegend}
	{opt verbose}
	{opt title(text)}

{pstd}
对于所有其他选项（包括 {opt using}、{cmd:if} 和 {cmd:in}），{cmd:brrstat} 需要数据集。


{marker options}{...}
{title:选项}

{phang}
{opt notable} 防止输出表的显示。

{phang}
{opt noheader} 抑制表头的显示。此选项意味着 {opt nolegend}。

{phang}
{opt nolegend} 抑制表图例的显示。表图例用于标识表的行及其所代表的表达式。

{phang}
{opt verbose} 请求显示完整的表图例。默认情况下，不显示系数和标准误差。

{phang}
{opt level(#)}；见 
{helpb estimation options:[R] 估计选项}。

{phang}
{opt title(text)} 指定在 BRR 结果表上方显示的标题；默认标题为 "BRR 统计"。

{phang}
{opt stat(vector)} 允许用户指定每个统计的观测值（即，使用原始数据集的统计值）。

{phang}
{opt mse} 指定 {opt brrstat} 使用复制值与基于整个数据集的统计观测值之间的偏差计算方差。默认情况下，{opt jkstat} 通过使用伪值与其均值之间的偏差来计算方差。


{marker remarks}{...}
{title:备注}

{pstd}
虽然 {cmd:brrstat} 允许用户通过 {cmd:stat()} 选项指定每个重复统计的观测值，但程序员可能会对未提供此选项时 {cmd:brrstat} 使用的内容感兴趣。

{pstd}
在处理 BRR 数据集时，{cmd:brrstat} 首先检查数据特征（见 {manhelp char P}）。以下是 {cmd:brrstat} 理解的特征列表：

{phang}
{cmd:_dta[brr_version]} 确定 BRR 数据集的版本。假定该特征为空（未定义）或 {cmd:1}；否则 {cmd:brrstat} 将表现得像空一样。此版本告知 {cmd:brrstat} 在 BRR 数据集中查找其他特征。

{pmore}
{cmd:brrstat} 从版本 {cmd:1} BRR 数据集中使用以下特征：

{pmore2}
{cmd:_dta[N]}{break}
{cmd:_dta[N_strata]}{break}
{cmd:_dta[N_psu]}{break}
{cmd:_dta[N_pop]}{break}
{cmd:_dta[strata]}{break}
{cmd:_dta[psu]}
{cmd:_dta[wtype]}
{cmd:_dta[wexp]}
{cmd:_dta[rweights]}
{cmd:_dta[command]}{break}
{cmd:_dta[names]}{break}
{it:varname}{cmd:[observed]}{break}
{it:varname}{cmd:[expression]}

{pmore}
空的 BRR 数据集版本意味着该数据集不是通过 {cmd:brr} 创建的。在这种情况下，{opt stat()} 选项是必需的。其他所有特征将被忽略。

{phang}
{cmd:_dta[N_strata]} 是观测数据集中分层的数量。

{phang}
{cmd:_dta[N_psu]} 是观测数据集中PSU的数量。

{phang}
{cmd:_dta[strata]} 是最初标识分层的变量的名称。

{phang}
{cmd:_dta[psu]} 是源数据集中标识主要抽样单位的变量的名称。

{phang}
{cmd:_dta[wtype]}、
{cmd:_dta[wexp]} 和
{cmd:_dta[rweights]} 确定观测数据集中的权重类型、表达式和重复权重变量名列表。

{phang}
{cmd:_dta[command]} 是用于计算统计观测值的命令。

{phang}
{cmd:_dta[names]} 确定包含切割复制的变量。

{phang}
{it:varname}{cmd:[observed]} 是由 {it:varname} 确定的统计的观测值。此特征可以通过指定 {cmd:stat()} 选项来覆盖。

{phang}
{it:varname}{cmd:[expression]} 是描述由 {it:varname} 确定的统计的表达式或标签。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:brrstat} 将以下内容存储在 {cmd:e()} 中：

{p2colset 9 24 28 2}{...}
{pstd}
标量{p_end}
{p2col :{cmd:e(N)}}样本大小{p_end}
{p2col :{cmd:e(N_strata)}}分层数量{p_end}
{p2col :{cmd:e(N_psu)}}PSU数量{p_end}
{p2col :{cmd:e(N_reps)}}请求的复制数量{p_end}

{pstd}
宏{p_end}
{p2col :{cmd:e(cmd)}}{cmd:brr}{p_end}
{p2col :{cmd:e(cmdline)}}输入的命令{p_end}
{p2col :{cmd:e(command)}}{it:command} 来自 {hi:_dta[command]}{p_end}
{p2col :{cmd:e(exp}{it:#}{cmd:)}}第 {it:#} 个统计的表达式{p_end}
{p2col :{cmd:e(strata)}}分层变量{p_end}
{p2col :{cmd:e(cluster)}}聚类变量{p_end}
{p2col :{cmd:e(missing)}}"{hi:missing}"
	如果发现缺失值，否则为空{p_end}
{p2col :{cmd:e(vcetype)}}"{hi:BRR}" 或 "{hi:BRR *}"{p_end}
{p2col :{cmd:e(vce)}}"{hi:brr}"{p_end}
{p2col :{cmd:e(mse)}}"{hi:mse}" 如果提供了 {opt mse} 选项{p_end}

{pstd}
矩阵{p_end}
{p2col :{cmd:e(b)}}观测统计{p_end}
{p2col :{cmd:e(V)}}BRR 方差矩阵{p_end}
{p2col :{cmd:e(brr_b)}}重复均值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <brrstat.sthlp>}