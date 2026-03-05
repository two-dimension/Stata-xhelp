{smcl}
{* *! version 1.1.15  19oct2017}{...}
{viewerdialog "fcast compute" "dialog fcast_compute"}{...}
{vieweralsosee "[TS] fcast compute" "mansection TS fcastcompute"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] fcast graph" "help fcast_graph_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "语法" "fcast compute##syntax"}{...}
{viewerjumpto "菜单" "fcast compute##menu"}{...}
{viewerjumpto "描述" "fcast compute##description"}{...}
{viewerjumpto "PDF文档链接" "fcast_compute_zh##linkspdf"}{...}
{viewerjumpto "选项" "fcast compute##options"}{...}
{viewerjumpto "示例" "fcast compute##examples"}
{help fcast_compute:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[TS] fcast compute} {hline 2}}计算 var、svar 或 vec 之后的动态预测{p_end}
{p2col:}({mansection TS fcastcompute:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
在 {opt var} 和 {opt svar} 之后

{p 8 17 2}
{cmd:fcast}
{opt c:ompute}
{it:prefix}
[{cmd:,}
{it:{help fcast_compute##options1:选项1}}]


{pstd}
在 {opt vec} 之后

{p 8 17 2}
{cmd:fcast}
{opt c:ompute}
{it:prefix}
[{cmd:,}
{it:{help fcast_compute##options2:选项2}}]


{pstd}
{it:prefix} 是附加到因变量名称上的前缀，用于创建保存动态预测的变量名称。

{synoptset 29 tabbed}{...}
{marker options1}{...}
{synopthdr:选项1}
{synoptline}
{syntab:主要}
{synopt:{opt st:ep(#)}}设定预测的 {it:#} 个周期；默认值为 {cmd:step(1)}{p_end}
{synopt:{opt d:ynamic(time_constant)}}在 {it:time_constant} 开始动态预测{p_end}
{synopt:{opt est:imate(estname)}}使用先前存储的结果 {it:estname}；默认值是使用活动结果{p_end}
{synopt:{opt replace}}替换具有相同前缀的现有预测变量{p_end}

{syntab:标准错误}
{synopt:{opt nose}}抑制渐进标准误差{p_end}
{synopt:{opt bs}}使用基于引导残差的标准误差{p_end}
{synopt:{opt bsp}}使用参数引导获取标准误差{p_end}
{synopt:{opt bsc:entile}}通过使用引导数据集的百分位数估计边界{p_end}
{synopt:{opt r:eps(#)}}执行 {it:#} 次引导重采样；默认值为 {cmd:reps(200)}
{p_end}
{synopt:{opt nodo:ts}}抑制在每次引导重采样后显示的常见点{p_end}
{synopt:{cmdab:sa:ving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}保存引导结果为 {it:filename}；使用 {opt replace} 以覆盖现有的 {it:filename}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}

{marker options2}{...}
{synopthdr:选项2}
{synoptline}
{syntab:主要}
{synopt:{opt st:ep(#)}}设定预测的 {it:#} 个周期；默认值为 {cmd:step(1)}{p_end}
{synopt:{opt d:ynamic(time_constant)}}在 {it:time_constant} 开始动态预测{p_end}
{synopt:{opt est:imate(estname)}}使用先前存储的结果 {it:estname}；默认值是使用活动结果{p_end}
{synopt:{opt replace}}替换具有相同前缀的现有预测变量{p_end}
{synopt:{opt di:fferences}}保存一阶差分变量的动态预测{p_end}

{syntab:标准错误}
{synopt:{opt nose}}抑制渐进标准误差{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
如果未指定选项，默认会使用渐进标准误差。
{p_end}
{p 4 6 2}
{opt fcast compute} 只能在 {opt var}、{opt svar} 和 {opt vec} 之后使用；参见 {help var_zh:[TS] var}、{help svar_zh:[TS] var svar} 和 {help vec_zh:[TS] vec}。
{p_end}
{p 4 6 2}
在使用 {opt fcast compute} 之前，必须 {opt tsset} 数据；参见 {manhelp tsset TS}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > VEC/VAR预测 > 计算预测（图形所需）}


{marker description}{...}
{title:描述}

{pstd}
{opt fcast compute} 生成之前通过 {opt var}、{opt svar} 或 {opt vec} 拟合的模型中因变量的动态预测。
{opt fcast compute} 创建新变量，并在必要时扩展数据集的时间范围以包含预测视野。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS fcastcomputeQuickstart:快速开始}

        {mansection TS fcastcomputeRemarksandexamples:注意事项和示例}

        {mansection TS fcastcomputeMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt step(#)} 指定要预测的周期数。
   默认值为 {cmd:step(1)}。

{phang}
{opt dynamic(time_constant)} 指定开始动态预测的时间点。默认值为估计样本中最后观察值之后的时间点。 {opt dynamic()} 选项可以接受返回整数的 Stata 日期函数或与当前 {opt tsset} 格式对应的整数。 {opt dynamic()} 必须指定一个时间点，在估计样本中，即至少两个时间段到估计样本结束后的一个周期。

{phang}
{opt estimates(estname)} 指定 {opt fcast compute} 使用存储为 {it:estname} 的估计结果。默认情况下，{cmd:fcast compute} 使用活动估计结果。有关操作估计结果的更多信息，请参见 {manhelp estimates R}。

{phang}
{opt replace} 会导致 {opt fcast compute} 用指定的预测替换内存中的变量。

{phang}
{opt differences} 指定 {opt fcast compute} 还保存一阶差分变量的动态预测。 {opt differences} 只能与 {opt vec} 估计结果一起指定。

{dlgtab:标准错误}

{phang}
{opt nose} 指定不计算预测水平的渐进标准误差，因此也不计算水平的渐进置信区间。默认情况下，计算预测水平的渐进标准误差和渐进置信区间。

{phang}
{opt bs} 指定 {opt fcast compute} 使用基于引导残差的仿真方法估计的置信区间。

{phang}
{opt bsp} 指定 {opt fcast compute} 使用从多元正态分布中抽取的创新进行仿真以估计置信区间。

{phang}
{opt bscentile} 指定 {opt fcast compute} 使用引导数据集的百分位数来估计置信区间的边界。默认情况下，{opt fcast compute} 使用估计的标准误差和由 {opt level()} 确定的标准正态分布的分位数。

{phang}
{opt reps(#)} 给出仿真中使用的重复次数。默认值为 {cmd:reps(200)}。

{phang}
{opt nodots} 指定在获取基于仿真的标准误差时不显示点。默认情况下，对于每次重采样，都会显示一个点。

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)} 指定保存包含引导重采样的数据集的文件名。 {opt replace} 选项会覆盖任何具有该名称的文件。

{pmore}
   {opt replace} 指定如果 {it:filename} 已存在，则覆盖它。此选项在对话框中未显示。

{dlgtab:报告}

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置的值。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合限制在指定期的 VAR 模型{p_end}
{phang2}{cmd:. var dln_inc dln_consump dln_inv if qtr<tq(1979q1)}

{pstd}计算 8 步动态预测{p_end}
{phang2}{cmd:. fcast compute m2_, step(8)}{p_end}

{pstd}计算从 1978 年第一季度开始的 8 步动态预测{p_end}
{phang2}{cmd:. fcast compute m3_, step(8) dynamic(tq(1978q1))}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fcast_compute.sthlp>}