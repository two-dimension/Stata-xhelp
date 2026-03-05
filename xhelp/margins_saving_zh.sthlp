{smcl}
{* *! version 1.2.0  11dec2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{viewerjumpto "语法" "margins_saving_zh##syntax"}{...}
{viewerjumpto "描述" "margins_saving_zh##description"}{...}
{viewerjumpto "备注" "margins_saving_zh##remarks"}
{help margins_saving:English Version}
{hline}{...}
{title:标题}

{p2colset 4 26 28 2}{...}
{p2col:{hi:[R] margins, saving()}}{hline 2} 将边际结果保存到数据集
{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:margins} [{it:{help fvvarlist_zh:marginlist}}] 
{ifin} {weight}
[{cmd:,} 
{help prefix_saving_option_zh:{bf:{ul:sav}ing(}{it:filename}{bf:, ...)}}
{it:{help margins##response_options:response_options}}
{it:{help margins##options:options}}] 


{marker description}{...}
{title:描述}

{pstd}
{cmd:margins,} {opt saving()} 保存一个包含输出中报告的统计信息的数据集。


{marker remarks}{...}
{title:备注}

{pstd}
在 {cmd:margins,} {opt saving()} 数据集中，每个观测值对应输出表中的一行。

{pstd}
以下变量始终存在：

{phang2}
{cmd:_deriv} 标识边际值的微分所依据的变量。
{cmd:_deriv} 中的值用 {opt dydx()} 选项指定的自变量标签；否则，{cmd:_deriv} 包含所有缺失值。
对于因子变量，因子水平包含在标签中。

{phang2}
{cmd:_term} 标识参与与估计的边际值相关的 {it:marginlist} 项的因子变量。
{cmd:_term} 中的值用在 {it:marginlist} 中指定的项中存在的因子变量名称列表标记；总边际标记为 "_cons"。

{phang2}
{cmd:_predict} 标识与估计的边际值相关的 {opt predict()} 选项。
{cmd:_predict} 中的值用 {opt predict()} 选项标记。
当指定 {cmd:expression()} 选项时，{cmd:_predict} 包含缺失值。

{pmore2}
{cmd:_dta[k_predict]} 特征标识指定或隐含的 {opt predict()} 选项的数量。当指定 {opt expression()} 选项且表达式包含的不仅仅是对等效 {opt predict()} 选项的引用时，此特征为空。

{phang2}
{cmd:_margin} 包含估计的边际值。

{phang2}
{cmd:_se_margin} 包含估计边际值的标准误差。

{phang2}
{cmd:_statistic} 包含用于检验边际值是否为零的 {it:z}（或 {it:t}）统计量的值。

{phang2}
{cmd:_pvalue} 包含对边际值是否为零的双边检验的观察显著性水平。

{phang2}
{cmd:_ci_lb} 和 {cmd:_ci_ub} 包含边际值的置信区间限制。

{pstd}
每个在 {it:marginlist} 中指定的唯一因子变量都有一个 {cmd:_m} 前缀的变量。

{phang2}
{cmd:_m}{it:#} 包含在 {it:marginlist} 中第 {it:#} 个唯一因子变量的水平，标识与估计的边际值相对应的水平。
如果关联的因子变量不在与给定估计边际值相关的因子变量列表中，{cmd:_m}{it:#} 为缺失。

{pmore2}
{cmd:_m}{it:#}{cmd:[varname]} 特征标识 {cmd:_m}{it:#} 所对应的因子变量。

{pmore2}
{cmd:_dta[margin_vars]} 特征包含与 {cmd:_m}{it:#} 变量相关的因子变量的名称。

{pstd}
当一个或多个自变量由于 {opt atmeans}、{opt asbalanced} 或 {opt at()} 选项而被固定时，每个唯一自变量都有一个 {cmd:_at} 前缀的变量。

{phang2}
{cmd:_at}{it:#} 包含第 {it:#} 个自变量固定的值。
对于因子变量，如果将因子变量视为平衡，{cmd:_at}{it:#} 包含 {cmd:.b} 缺失值。
如果变量保持为观测值，{cmd:_at}{it:#} 包含 {cmd:.o} 缺失值。

{pmore2}
{cmd:_at}{it:#}{cmd:[varname]} 特征标识 {cmd:_at}{it:#} 所对应的自变量。
{cmd:_at}{it:#}{cmd:[stats]} 特征标识变量被设置的统计量；每个 {opt at()} 选项有一个统计量。
除了 {helpb margins##atspec:at()} 选项中记录的统计量，当 {opt at()} 选项中指定一个或多个值时，使用以下标识符：
	{opt value} 和
	{opt values}。

{pmore2}
{cmd:_dta[at_vars]} 特征包含与 {cmd:_at}{it:#} 变量相关的自变量的名称。

{pmore2}
{cmd:_dta[k_at]} 特征标识指定/隐含的 {opt at()} 选项的数量。
{cmd:_dta[atopt}{it:#}{cmd:]} 特征标识第 {it:#} 个 {opt at()} 选项的规格。
{cmd:_dta[atstats}{it:#}{cmd:]} 特征标识与第 {it:#} 个 {opt at()} 选项中的变量相关的规格。

{phang2}
还将有一个 {cmd:_at} 变量，用于标识与 {cmd:_at}{it:#} 变量中的模式相关的边际值组，以及一个 {cmd:_atopt} 变量，用于标识与每个 {opt at()} 选项相关的边际值组。

{pstd}
每个在 {opt over()} 和 {opt within()} 选项中指定的变量都有一个 {cmd:_by} 前缀的变量。

{phang2}
{cmd:_by}{it:#} 标识与估计的边际值相关的第 {it:#} 个分组变量的组级别。

{pmore2}
{cmd:_by}{it:#}{cmd:[varname]} 特征标识 {cmd:_by}{it:#} 所对应的分组变量。

{pmore2}
{cmd:_dta[by_vars]} 特征包含与 {cmd:_by}{it:#} 变量相关的分组变量的名称。
{cmd:_dta[over]} 特征标识 {opt over()} 变量，而 {cmd:_dta[within]} 特征标识 {opt within()} 变量。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <margins_saving.sthlp>}