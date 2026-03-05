{smcl}
{* *! version 1.0.6  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] _robust" "help _robust_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{viewerjumpto "Syntax" "mf_robust_zh##syntax"}{...}
{viewerjumpto "Description" "mf_robust_zh##description"}{...}
{viewerjumpto "Remarks" "mf_robust_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_robust_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_robust_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_robust_zh##source"}
{help mf_robust:English Version}
{hline}{...}
{title:标题}

{phang}
{bf:[M-5] robust()} {hline 2} 鲁棒方差估计


{marker syntax}{...}
{title:语法}

{pstd}
{it:初始化}

{p 19 8 2}
{it:R} 
{cmd:=}
{cmd:robust_init()}


{pstd}
{it:估计样本和子样本规范}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_touse(}{it:R}{cmd:,} {it:touse}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_subpop(}{it:R}{cmd:,} {it:subpop}{cmd:)}


{pstd}
{it:模型规范}

{pmore}
注意：在所有以下的 {cmd:robust_init_}{it:*}{cmd:()} 函数中，最后一个参数是可选的。不指定此参数将导致返回当前未更改的设置。

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_scores(}{it:R}{cmd:,} {it:S}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_covmat(}{it:R}{cmd:,} {it:D}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_eq_n(}{it:R}{cmd:,} {it:neq}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_eq_indepvars(}{it:R}{cmd:,} {it:i}{cmd:,} {it:X}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_eq_cons(}{it:R}{cmd:,} {it:i}{cmd:,}
{c -(} {cmd:"on"} | {cmd:"off"} {c )-} {cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_minus(}{it:R}{cmd:,} {it:m}{cmd:)}


{pstd}
{it:采样设计规范}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_svyset(}{it:R}{cmd:,}
{c -(} {cmd:"off"} | {cmd:"on"} {c )-} {cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_nstages(}{it:R}{cmd:,} {it:K}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_stage_units(}{it:R}{cmd:,}
{it:k}{cmd:,} {it:units}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_stage_strata(}{it:R}{cmd:,}
{it:k}{cmd:,} {it:strata}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_stage_fpc(}{it:R}{cmd:,}
{it:k}{cmd:,} {it:fpc}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_weight(}{it:R}{cmd:,} {it:w}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_weighttype(}{it:R}{cmd:,}
{c -(}
	{cmd:""} |
	{cmd:"pweight"} |{break}
	{cmd:"fweight"} |
	{cmd:"aweight"}
{c )-} {cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_poststrata(}{it:R}{cmd:,} {it:P}{cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_singleunit(}{it:R}{cmd:,} {it:singleunit}{cmd:)}


{pstd}
{it:其他设置}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_V_srs(}{it:R}{cmd:,}
{c -(} {cmd:"off"} | {cmd:"on"} {c )-} {cmd:)}

{p 8 25 2}
{it:(变化)}{bind:      }
{cmd:robust_init_verbose(}{it:R}{cmd:,}
{c -(} {cmd:"on"} | {cmd:"off"} {c )-} {cmd:)}


{pstd}
{it:方差计算}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:  }
{cmd:_robust(}{it:R}{cmd:)}


{pstd}
{it:结果}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_V(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_V_srs(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_V_srssub(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_V_srswr(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_V_srswrsub(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_stage_strata(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_stage_certain(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_stage_single(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_postsize(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数矩阵}{bind:   }
{cmd:robust_result_postsum(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_N(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_sum_w(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_N_sub(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_sum_wsub(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_N_clust(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_N_strata(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_N_strata_omit(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_census(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_singleton(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_errorcode(}{it:R}{cmd:)}

{p 8 25 2}
{it:字符串标量}{bind: }
{cmd:robust_result_errortext(}{it:R}{cmd:)}

{p 8 25 2}
{it:实数标量}{bind:   }
{cmd:robust_result_returncode(}{it:R}{cmd:)}


{pstd}
{it:查询鲁棒规范的状态}

{p 8 25 2}
{it:void}{bind:          }
{cmd:robust_query(}{it:R}{cmd:)}


{pstd}
其中 {it:R}，如果已声明，应声明为

		{cmd:transmorphic} {it:R}


{pstd}
而 {it:singleunit}，可选地在 {cmd:robust_init_singleunit()} 中指定，定义为

{p2colset 16 32 34 2}{...}
{p2col :{it:singleunit}}描述{p_end}
{p2line}
{p2col :{cmd:"missing"}}返回
	如果存在仅有一个采样单元的层则返回一组零的鲁棒矩阵{p_end}
{p2col :{cmd:"certainty"}}将
	只有一个采样单元的层视为确定单元{p_end}
{p2col :{cmd:"scaled"}}使用一个 {cmd:"certainty"} 的缩放版本{p_end}
{p2col :{cmd:"centered"}}将只具有一个采样单元的层居中于总体均值{p_end}
{p2line}
{p 16 32 2}
默认值为 {cmd:"missing"}。
{p2colreset}{...}


{pstd}
参数
{it:S},
{it:X},
{it:touse},
{it:units},
{it:strata},
{it:fpc},
{it:w}，和
{it:P} 被假设为适当维度的实数矩阵（或视图）或识别 Stata 变量的 {it:string scalar}。当这些参数识别 Stata 变量时，会生成一个视图矩阵。由 {it:touse} 设置（如果指定了一个）所识别的 Stata 变量用于自动生成视图。

{pstd}
{it:subpop} 参数被假设为具有正确行数的列向量或识别子人口观察的 {it:string scalar}，该观察依据 {opt subpop()} 选项的 {help svy_zh} 前缀命令。

{pstd}
对 {cmd:robust_init_}{it:*}{cmd:()} 函数的矩阵参数没有进行复制；而是存储一个指针在 {it:R} 中，因此对指定矩阵的任何更改都将在 {cmd:robust()} 和 {cmd:robust_result_}*{cmd:()} 函数中反映。

{marker description}{...}
{title:描述}

{pstd}
这些函数根据方程级分数、协方差矩阵和抽样设计计算鲁棒方差估计。方程级分数在指定方程级预测变量时根据链式法则进行扩展。覆盖的抽样设计包括带和不带替换的简单随机抽样、聚类抽样、分层抽样，以及由多阶段聚类抽样和在任何阶段的分层构成的复杂调查设计。

{pstd}
{cmd:robust_init()} 开始定义鲁棒问题并返回 {it:R}，这是一个包含默认值的问题描述句柄。

{pstd}
{cmd:robust_init_}{it:*}{cmd:(}{it:R}{cmd:,} ...{cmd:)} 函数允许你修改这些默认值。你使用这些函数来描述你的特定问题：
设置方程，设置方程级分数，指定协方差矩阵，指定抽样设计等。

{pstd}
{cmd:robust}{cmd:(}{it:R}{cmd:)} 然后执行鲁棒方差计算。

{pstd}
接下来可以使用 {cmd:robust_result_}{it:*}{cmd:(}{it:R}{cmd:)} 函数访问计算的结果。

{pstd}
通常你会就此停止。在其他情况下，你可以使用不同的抽样设计来计算方差估计。

{pstd}
附注：

{pstd}
{cmd:robust_init_}{it:*}{cmd:(}{it:R}{cmd:,} ...{cmd:)} 函数具有两种操作模式。每种都有一个可选参数，你可以指定以设置值，也可以省略以查询值。
例如，{cmd:robust_init_scores()} 的完整语法是

		{it:void}        {cmd:robust_init_scores(}{it:R}{cmd:,} {it:S}{cmd:)}

		{it:real matrix} {cmd:robust_init_scores(}{it:R}{cmd:)}

{pstd}
第一种语法设置方程级分数并不返回任何内容。
第二种语法返回包含指定方程级分数的实数矩阵。

{pstd} 所有 {cmd:robust_init_}{it:*}{cmd:(}{it:R}{cmd:,}
...{cmd:)} 函数的工作方式相同。


{marker remarks}{...}
{title:备注}

{pstd}
备注根据以下标题呈现：

	{help mf_robust##example1:示例}

	{help mf_robust##functions:函数}
	    {help mf_robust##i_:robust_init()}
	    {help mf_robust##i_touse:robust_init_touse()}
	    {help mf_robust##i_subpop:robust_init_subpop()}
	    {help mf_robust##i_scores:robust_init_scores()}
	    {help mf_robust##i_covmat:robust_init_covmat()}
	    {help mf_robust##i_eq:robust_init_eq_n()}
	    {help mf_robust##i_eq:robust_init_eq_indepvars()}
	    {help mf_robust##i_eq:robust_init_eq_cons()}
	    {help mf_robust##i_minus:robust_init_minus()}
	    {help mf_robust##i_svyset:robust_init_svyset()}
		{help mf_robust##i_stages:robust_init_nstages()}
		{help mf_robust##i_stage:robust_init_stage_units()}
		{help mf_robust##i_stage:robust_init_stage_strata()}
		{help mf_robust##i_stage:robust_init_stage_fpc()}
		{help mf_robust##i_weights:robust_init_weight()}
		{help mf_robust##i_weights:robust_init_weighttype()}
		{help mf_robust##i_post:robust_init_poststrata()}
		{help mf_robust##i_single:robust_init_singleunit()}
	    {help mf_robust##i_V_srs:robust_init_V_srs()}
	    {help mf_robust##i_verbose:robust_init_verbose()}

	    {help mf_robust##robust:robust()}
	   {help mf_robust##_robust:_robust()}

	    {help mf_robust##r_V:robust_result_V()}
	    {help mf_robust##r_V_srs:robust_result_V_srs()}
	    {help mf_robust##r_V_srs:robust_result_V_srssub()}
	    {help mf_robust##r_V_srs:robust_result_V_srswr()}
	    {help mf_robust##r_V_srs:robust_result_V_srswrsub()}
	    {help mf_robust##r__N_strata:robust_result_stage_strata()}
	    {help mf_robust##r__N_strata:robust_result_stage_certain()}
	    {help mf_robust##r__N_strata:robust_result_stage_single()}
	    {help mf_robust##r__N_post:robust_result_postsize()}
	    {help mf_robust##r__N_post:robust_result_postsum()}
	    {help mf_robust##r_N:robust_result_N()}
	    {help mf_robust##r_N:robust_result_sum_w()}
	    {help mf_robust##r_N:robust_result_N_sub()}
	    {help mf_robust##r_N:robust_result_sum_wsub()}
	    {help mf_robust##r_N:robust_result_N_clust()}
	    {help mf_robust##r_N:robust_result_N_strata()}
	    {help mf_robust##r_N:robust_result_N_strata_omit()}
	    {help mf_robust##r_census:robust_result_census()}
	    {help mf_robust##r_singleton:robust_result_singleton()}
	    {help mf_robust##r_error:robust_result_errorcode()}
	    {help mf_robust##r_error:robust_result_errortext()}
	    {help mf_robust##r_error:robust_result_returncode()}

	    {help mf_robust##query:robust_query()}


{marker example1}{...}
{title:示例}

{pstd}
鲁棒方差函数可以互动使用。

{pstd}
让我们开始从 auto 数据集中提取一些变量到 Mata 中：

	{cmd:: stata("sysuse auto")}
	
	{cmd:: st_view(y=., ., "price")}

	{cmd:: st_view(X=., ., "mpg")}

	{cmd:: st_view(strata=., ., "foreign")}

{pstd}
在 Mata 中，我们对 {cmd:y} ({cmd:price}) 与 {cmd:X} ({cmd:mpg}) 进行线性回归模型拟合，并使用 {cmd:robust()} 计算方差，假设汽车是使用分层简单随机抽样采样的，其中 {cmd:strata} ({cmd:foreign}) 识别我们的层。

	{cmd:: D = invsym(cross(X, 1, X, 1))}

	{cmd:: b = D*cross(X, 1, y, 0)}

	{cmd:: e = y - X*b[1] :- b[2]}

	{cmd:: R = robust_init()}

	{cmd:: robust_init_scores(R, e)}

	{cmd:: robust_init_covmat(R, D)}

	{cmd:: robust_init_eq_indepvars(R, 1, X)}

	{cmd:: robust_init_stage_strata(R, 1, strata)}

	{cmd:: V = robust(R)}

	{cmd:: b, sqrt(diagonal(V))}
	{res}       {txt}           1              2
	    {c TLC}{hline 31}{c TRC}
	  1 {c |}  {res}-238.8943456    57.13929874{txt}  {c |}
	  2 {c |}  {res} 11253.06066     1375.65857{txt}  {c |}
	    {c BLC}{hline 31}{c BRC}

{pstd}
这里是使用 Stata 变量的等效示例：

	{it:Stata}

	{cmd:. regress price mpg, mse1}
	  ({it:输出省略})

	{cmd:. gen byte touse = e(sample)}

	{cmd:. predict double score, score}

	{it:Mata}

	{cmd:: b = st_matrix("e(b)")'}

	{cmd:: R = robust_init()}

	{cmd:: robust_init_touse(R, "touse")}

	{cmd:: robust_init_scores(R, "score")}

	{cmd:: robust_init_eq_indepvars(R, 1, "mpg")}

	{cmd:: robust_init_stage_strata(R, 1, "foreign")}

	{cmd:: robust_init_covmat(R, st_matrix("e(V)"))}

	{cmd:: V = robust(R)}

	{cmd:: b, sqrt(diagonal(V))}
	       {txt}           1              2
	    {c TLC}{hline 31}{c TRC}
	  1 {c |}  {res}-238.8943456    57.13929874{txt}  {c |}
	  2 {c |}  {res} 11253.06066     1375.65857{txt}  {c |}
	    {c BLC}{hline 31}{c BRC}


{marker functions}{...}
{title:函数}

{marker i_}{...}
{title:robust_init()}

{p 8 30 2}
{it:transmorphic} 
{cmd:robust_init()}

{pstd}
{cmd:robust_init()} 用于开始一个鲁棒方差问题。将返回的结果存储在你选择的变量名中；我们在此文档中使用 {it:R}。你将 {it:R} 
作为其他 {cmd:robust_}{it:*}{cmd:()} 函数的第一个参数。

{pstd}
{cmd:robust_init()} 将所有 {cmd:robust_init_}{it:*}{cmd:()} 值设置为其默认值。你可以使用 {cmd:robust_init_}{it:*}{cmd:()} 的查询形式来确定个别默认值，或使用 {cmd:robust_query()} 查看所有默认值。

{pstd}
{cmd:robust_init_}{it:*}{cmd:()} 的查询形式可以在调用 {cmd:robust()} 之前或之后使用。


{marker i_touse}{...}
{title:robust_init_touse()}

{p 8 30 2}
{it:void}{bind:          }
{cmd:robust_init_touse(}{it:R}{cmd:,}
{it:touse}{cmd:)}

{p 8 30 2}
{it:real colvector}
{cmd:robust_init_touse(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_touse(}{it:R}{cmd:,} {it:touse}{cmd:)} 指定识别估计样本的列向量或 Stata 变量。如果 {it:touse} 是一个列向量，则被假定为 1 的向量。
{cmd:robust()} 将重置 {it:touse} 的值为 0 用于任何被省略的层内部的观察。

{pmore}
技术注：如果 {it:touse} 识别一个 Stata 变量，则将用于生成所有指定的 Stata 变量的视图。

{pstd}
{cmd:robust_init_touse(}{it:R}{cmd:)} 返回识别估计样本的向量。
如果没有指定，则返回一个 0 {it:x} 1 矩阵。


{marker i_subpop}{...}
{title:robust_init_subpop()}

{p 8 30 2}
{it:void}{bind:          }
{cmd:robust_init_subpop(}{it:R}{cmd:,}
{it:subpop}{cmd:)}

{p 8 30 2}
{it:real colvector}
{cmd:robust_init_subpop(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_subpop(}{it:R}{cmd:,} {it:subpop}{cmd:)} 指定 {it:subpop} 识别子人口样本。

{pmore}
技术注：如果 {it:subpop} 是一个字符串，则将按 {cmd:subpop()} 选项的方式解释为 {help svy_zh} 前缀命令。在这里，应该设置 {cmd:robust_init_svyset()} 为 {cmd:"on"}，或使用 Stata 变量设置第一阶段设计设置。

{pstd}
{cmd:robust_init_subpop(}{it:R}{cmd:)} 返回识别子人口样本的向量。
如果没有指定，则返回一个 0 {it:x} 1 矩阵。


{marker i_scores}{...}
{title:robust_init_scores()}

{p 8 30 2}
{it:void}{bind:          }
{cmd:robust_init_scores(}{it:R}{cmd:,} {it:S}{cmd:)}

{p 8 30 2}
{it:real matrix}{bind:   }
{cmd:robust_init_scores(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_scores(}{it:R}{cmd:,} {it:S}{cmd:)} 指定方程级分数包含在 {it:S} 中。
{it:S} 的每一列对应于一个方程。

{pmore}
	{cmd:robust()} 使用链式法则将方程级分数扩展到参数级分数。若要指定参数级分数，而不设置独立变量，请使用
	{cmd:robust_init_eq_n(}{it:R}{cmd:,} {it:dim}{cmd:)}；这里 {it:dim} 是分数矩阵中的列数。

{pstd}
{cmd:robust_init_scores(}{it:R}{cmd:)} 返回指定的分数矩阵。
如果没有指定，则返回一个 0 {it:x} 0 矩阵。


{marker i_covmat}{...}
{title:robust_init_covmat()}

{p 8 30 2}
{it:void}{bind:       }
{cmd:robust_init_covmat(}{it:R}{cmd:,} {it:real matrix D}{cmd:)}

{p 8 30 2}
{it:real matrix}
{cmd:robust_init_covmat(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_covmat(}{it:R}{cmd:,} {it:D}{cmd:)} 设置用于鲁棒方差计算的协方差矩阵。

{pstd}
{cmd:robust_init_covmat(}{it:R}{cmd:)} 返回指定的协方差矩阵。
如果没有指定，则返回一个 0 {it:x} 0 矩阵。


{marker i_eq}{...}
{title:robust_init_eq_n()}
{title:robust_init_eq_indepvars()}
{title:robust_init_eq_cons()}

{p 8 30 2}
{it:void}{bind:         }
{cmd:robust_init_eq_n(}{it:R}{cmd:,}
{it:neq}{cmd:)}

{p 8 30 2}
{it:void}{bind:         }
{cmd:robust_init_eq_indepvars(}{it:R}{cmd:,}
{it:i}{cmd:,}
{it:X}{cmd:)}

{p 8 30 2}
{it:void}{bind:         }
{cmd:robust_init_eq_cons(}{it:R}{cmd:,}
{it:i}{cmd:,}
{c -(} {cmd:"on"} | {cmd:"off"} {c )-} {cmd:)}

{p 8 30 2}
{it:real scalar}{bind:  }
{cmd:robust_init_eq_n(}{it:R}{cmd:)}

{p 8 30 2}
{it:real matrix}{bind:  }
{cmd:robust_init_eq_indepvars(}{it:R}{cmd:,}
{it:i}{cmd:)}

{p 8 30 2}
{it:string scalar}
{cmd:robust_init_eq_cons(}{it:R}{cmd:,}
{it:i}{cmd:)}

{pstd}
{cmd:robust_init_eq_n(}{it:R}{cmd:,} {it:neq}{cmd:)} 设置线性方程的数量。此函数实际上不是必需的，因为通过使用上述函数设置时，线性方程的数量会自动更新；然而，{cmd:robust_init_eq_}{it:*}{cmd:()} 函数在提前设置方程数量时性能更高。

{pstd}
{cmd:robust_init_eq_indepvars(}{it:R}{cmd:,} {it:i}{cmd:,} {it:X}{cmd:)} 指定第 {it:i} 个方程的独立变量包含在 {it:X} 中。

{pstd}
{cmd:robust_init_eq_cons(}{it:R}{cmd:,} {it:i}{cmd:,} {it:cons}{cmd:)} 指定第 {it:i} 个方程是否有一个常数项。
{it:cons}={cmd:"on"} 表示常数项存在；{cmd:"off"} 表示没有常数项。{it:cons}={cmd:"on"} 是默认值。

{pstd}
{cmd:robust_init_eq_n(}{it:R}{cmd:)} 返回指定的方程数量。严格来说，这是 {it:neq} 和用于指定方程的最大 {it:i} 中的最大值。

{pstd}
{cmd:robust_init_eq_indepvars(}{it:R}{cmd:,} {it:i}{cmd:)} 指定第 {it:i} 个方程的独立变量矩阵。如果没有指定，则返回一个 0 {it:x} 0 矩阵。

{pstd}
{cmd:robust_init_eq_cons(}{it:R}{cmd:,} {it:i}{cmd:)} 返回第 {it:i} 个方程的常数项是否为 {cmd:"on"} 或 {cmd:"off"}。


{marker i_minus}{...}
{title:robust_init_minus()}

{p 8 30 2}
{it:void}{bind:       }
{cmd:robust_init_minus(}{it:R}{cmd:,} {it:m}{cmd:)}

{p 8 30 2}
{it:real scalar}
{cmd:robust_init_minus(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_minus(}{it:R}{cmd:,} {it:m}{cmd:)} 指定在鲁棒方差估计器的乘数 {it:n}/({it:n}-{it:m}) 中使用的值（这里 {it:n} 是样本大小）。默认值为 {it:m}=1。

{pstd}
{cmd:robust_init_minus(}{it:R}{cmd:)} 返回当前 {it:m} 的值。


{marker i_svyset}{...}
{title:robust_init_svyset()}

{p 8 30 2}
{it:void}{bind:         }
{cmd:robust_init_svyset(}{it:R}{cmd:,}
{c -(} {cmd:"off"} | {cmd:"on"} {c )-} {cmd:)}

{p 8 30 2}
{it:string scalar}
{cmd:robust_init_svyset(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_svyset(}{it:R}{cmd:,} {it:svyset}{cmd:)} 指定是否要从 {help svyset_zh} 中获取调查设计设置。
{it:svyset}={cmd:"on"} 表示从 {cmd:svyset} 中获取调查设计设置；{cmd:"off"} 表示不获取。默认值为 {it:svyset}={cmd:"off"}。指定 {cmd:"on"} 将导致 {cmd:robust()} 用来自 {cmd:svyset} 命令的调查设计设置替代。

{pstd}
{cmd:robust_init_svyset(}{it:R}{cmd:)} 返回当前设置，以获取来自 {cmd:svyset} 的调查设计设置。


{marker i_stages}{...}
{title:robust_init_nstages()}

{p 8 30 2}
{it:void}{bind:       }
{cmd:robust_init_nstages(}{it:R}{cmd:,} {it:K}{cmd:)}

{p 8 30 2}
{it:real scalar}
{cmd:robust_init_nstages(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_nstages(}{it:R}{cmd:,} {it:K}{cmd:)} 设置抽样设计中的阶段数量。此函数实际上不是必需的，因为在使用 {cmd:robust_init_stage_}{it:*}{cmd:()} 函数时，阶段数量会自动更新；然而，{cmd:robust_init_stage_}{it:*}{cmd:()} 函数在提前设置抽样阶段数量时性能更高。

{pstd}
{cmd:robust_init_nstages(}{it:R}{cmd:)} 返回抽样阶段的数量。严格来说，这是 {it:K} 和用于指定阶段的最大 {it:k} 中的最大值。


{marker i_stage}{...}
{title:robust_init_stage_units()}
{title:robust_init_stage_strata()}
{title:robust_init_stage_fpc()}

{p 8 30 2}
{it:void}{bind:          }
{cmd:robust_init_stage_units(}{it:R}{cmd:,} {it:k}{cmd:,}
{it:units}{cmd:)}

{p 8 30 2}
{it:void}{bind:          }
{cmd:robust_init_stage_strata(}{it:R}{cmd:,} {it:k}{cmd:,}
{it:strata}{cmd:)}

{p 8 30 2}
{it:void}{bind:          }
{cmd:robust_init_stage_fpc(}{it:R}{cmd:,} {it:k}{cmd:,}
{it:fpc}{cmd:)}

{p 8 30 2}
{it:real colvector}
{cmd:robust_init_stage_units(}{it:R}{cmd:,} {it:k}{cmd:)}

{p 8 30 2}
{it:real colvector}
{cmd:robust_init_stage_strata(}{it:R}{cmd:,} {it:k}{cmd:)}

{p 8 30 2}
{it:real colvector}
{cmd:robust_init_stage_fpc(}{it:R}{cmd:,} {it:k}{cmd:)}

{pstd}
{cmd:robust_init_stage_units(}{it:R}{cmd:,} {it:k}{cmd:,} {it:units}{cmd:)} 指定 {it:units} 识别第 {it:k} 个阶段中的采样单元。

{pstd}
{cmd:robust_init_stage_strata(}{it:R}{cmd:,} {it:k}{cmd:,} {it:strata}{cmd:)} 指定 {it:strata} 识别第 {it:k} 个阶段中的层。

{pstd}
{cmd:robust_init_stage_fpc(}{it:R}{cmd:,} {it:k}{cmd:,} {it:fpc}{cmd:)} 指定 {it:fpc} 包含第 {it:k} 个阶段的有限总体修正 (FPC) 信息。

{pstd}
{cmd:robust_init_stage_units(}{it:R}{cmd:,} {it:k}{cmd:)} 返回识别第 {it:k} 个阶段中的采样单元的向量。如果没有指定，则返回一个 0 {it:x} 1 矩阵。

{pstd}
{cmd:robust_init_stage_strata(}{it:R}{cmd:,} {it:k}{cmd:)} 返回识别第 {it:k} 个阶段中的层的向量。如果没有指定，则返回一个 0 {it:x} 1 矩阵。

{pstd}
{cmd:robust_init_stage_fpc(}{it:R}{cmd:,} {it:k}{cmd:)} 返回包含第 {it:k} 个阶段的 FPC 信息的向量。如果没有指定，则返回一个 0 {it:x} 1 矩阵。


{marker i_weights}{...}
{title:robust_init_weight()}
{title:robust_init_weighttype()}

{p 8 30 2}
{it:void}{bind:          }
{cmd:robust_init_weight(}{it:R}{cmd:,}
{it:w}{cmd:)}

{p 8 30 2}
{it:void}{bind:          }
{cmd:robust_init_weighttype(}{it:R}{cmd:,}
{c -(}
	{cmd:""} |
	{cmd:"pweight"} |{break}
	{cmd:"fweight"} |
	{cmd:"aweight"}
{c )-} {cmd:)}

{p 8 30 2}
{it:real colvector}
{cmd:robust_init_weight(}{it:R}{cmd:)}

{p 8 30 2}
{it:string scalar}{bind: }
{cmd:robust_init_weighttype(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_weight(}{it:R}{cmd:,} {it:w}{cmd:)} 指定 {it:w} 包含用于模型拟合的权重，这些权重产生了分数。

{pstd}
{cmd:robust_init_weighttype(}{it:R}{cmd:,} {it:wtype}{cmd:)} 设置权重类型。
{it:wtype}={cmd:"pweight"} 是默认值。

{pstd}
{cmd:robust_init_weight(}{it:R}{cmd:)} 返回权重向量。
如果没有指定，则返回一个 0 {it:x} 1 矩阵。

{pstd}
{cmd:robust_init_weighttype(}{it:R}{cmd:)} 返回权重类型。


{marker i_post}{...}
{title:robust_init_poststrata()}

{p 8 30 2}
{it:void}{bind:       }
{cmd:robust_init_poststrata(}{it:R}{cmd:,}
{it:P}{cmd:)}

{p 8 30 2}
{it:real matrix}
{cmd:robust_init_poststrata(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_poststrata(}{it:R}{cmd:,} {it:P}{cmd:)} 设置后分层信息。假设 {it:P} 有 2 列或指定 2 个 Stata 变量：第一列识别后层，第二列包含后层权重。

{pmore}
注意：后层权重必须在后层内保持不变。

{pstd}
{cmd:robust_init_poststrata(}{it:R}{cmd:)} 返回一个包含后分层信息的矩阵。
如果没有指定，则返回一个 0 {it:x} 2 矩阵。


{marker i_single}{...}
{title:robust_init_singleunit()}

{p 8 30 2}
{it:void}{bind:         }
{cmd:robust_init_singleunit(}{it:R}{cmd:,}
{it:singleunit}{cmd:)}

{p 8 30 2}
{it:string scalar}
{cmd:robust_init_singleunit(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_singleunit(}{it:R}{cmd:,} {it:singleunit}{cmd:)} 指定如何处理只有一个采样单元的层。

{phang2}
{it:singleunit}={cmd:"missing"}
表示返回一个零方差矩阵，在 Stata 中 {cmd:ereturn} {cmd:post} 时将导致缺失标准误。这是默认行为。

{phang2}
{it:singleunit}={cmd:"certainty"}
表示将这些层视为确定单元。

{phang2}
{it:singleunit}={cmd:"scaled"}
表示使用一个缩放版本的方差矩阵，这些层视为确定单元。

{phang2}
{it:singleunit}={cmd:"centered"}
表示将这些层居中于总体均值，而不是相应的层均值。

{pstd}
{cmd:robust_init_singleunit(}{it:R}{cmd:)} 返回当前 {it:singleunit} 的设置。


{marker i_V_srs}{...}
{title:robust_init_V_srs()}

{p 8 30 2}
{it:void}{bind:       }
{cmd:robust_init_V_srs(}{it:R}{cmd:,}
{c -(} {cmd:"off"} | {cmd:"on"} {c )-} {cmd:)}

{p 8 30 2}
{it:real scalar}
{cmd:robust_init_V_srs(}{it:R}{cmd:)}

{pstd}
{cmd:robust_init_V_srs(}{it:R}{cmd:,} {it:vsrs}{cmd:)} 设置是否执行额外的方差计算，假设简单随机抽样。 {it:vsrs}={cmd:"on"} 表示执行额外的方差计算；{cmd:"off"} 表示不执行。默认值为 {it:vsrs}={cmd:"off"}。

{pstd}
{cmd:robust_init_V_srs(}{it:R}{cmd:)} 返回当前 {it:vsrs} 的设置。


{marker i_verbose}{...}
{title:robust_init_verbose()}

{p 8 25 2}
{it:void}{bind:        }
{cmd:robust_init_verbose(}{it:S}{cmd:,}
{c -(} {cmd:"on"} | {cmd:"off"} {c )-} {cmd:)}

{p 8 25 2}
{it:real scalar}{bind: }
{cmd:robust_init_verbose(}{it:S}{cmd:)}

{p 4 4 2}
{cmd:robust_init_verbose(}{it:S}{cmd:,} {it:verbose}{cmd:)} 设置在执行 {cmd:robust()} 或 {cmd:_robust()} 时是否显示错误信息。{it:verbose}={cmd:"on"} 表示显示；{cmd:"off"} 表示不显示。默认值为 {cmd:"on"}。将 {it:verbose} 设置为 {cmd:"off"} 仅对使用 {cmd:_robust()} 的用户有兴趣。

{p 4 4 2}
{cmd:robust_init_verbose(}{it:S}{cmd:)} 返回 1 如果 {it:verbose} 为 {cmd:"on"}，并且返回 0 如果为 {cmd:"off"}。


{marker robust}{...}
{title:robust()}

{p 8 30 2}
{it:real matrix}
{cmd:robust(}{it:R}{cmd:)}

{pstd}
{cmd:robust(}{it:R}{cmd:)} 调用鲁棒方差计算并返回结果方差矩阵。如果出现问题，{cmd:robust()} 中止并报错。

{pstd}
在调用 {cmd:robust()} 之前，必须设置方程级分数和相应的方程。

		{it:R} {cmd:= robust_init()}
		{cmd:robust_init_scores(}{it:R}{cmd:,} {it:scores}{cmd:)}
		{cmd:robust_init_eq_n(}{it:R}{cmd:, 1)}
		{cmd:robust_init_eq_indepvars(}{it:R}{cmd:,} {it:X1}{cmd:)}

{pstd}
你可能已经编码了其他 {cmd:robust_init_}{it:*}{cmd:(}{it:R}{cmd:)} 函数，例如指定比默认设计更复杂的抽样设计（带替换的简单随机抽样）。

{pstd}
一旦 {cmd:robust()} 完成，你可以使用 {cmd:robust_result_}{it:*}{cmd:(}{it:R}{cmd:)} 函数。你还可以继续使用 {cmd:robust_init_}{it:*}{cmd:(}{it:R}{cmd:)} 函数来访问初始设置，或者如果愿意，可以更改设置并重新调用 {cmd:robust()}。


{marker _robust}{...}
{title:_robust()}

{p 8 30 2}
{it:real scalar}
{cmd:_robust(}{it:R}{cmd:)}

{pstd}
{cmd:_robust(}{it:R}{cmd:)} 执行与 {cmd:robust(}{it:R}{cmd:)} 相同的操作，唯一不同的是，{cmd:_robust()} 返回一个实数标量，而不是返回结果方差矩阵，并且当出现数值问题时，{cmd:_robust()} 返回非零值。{cmd:_robust()} 在一切正常时返回 0。返回的值称为错误代码。

{pstd}
{cmd:robust()} 返回鲁棒方差矩阵。它可以这样工作是因为鲁棒计算必须是成功的。如果没有成功，{cmd:robust()} 将终止执行。

{pstd}
{cmd:_robust()} 返回一个错误代码。如果为 0，鲁棒计算成功，你可以通过使用 {bf:{help mf_robust##r_V:robust_result_V()}} 获得结果方差矩阵。
如果计算未成功，你可以通过错误代码诊断出问题并采取适当措施。

{p 4 4 2}
实现高级系统的程序员将希望使用 {cmd:_robust()} 而不是 {cmd:robust()}。其他人应该使用 {cmd:robust()}。

{p 4 4 2}
使用 {cmd:_robust()} 的程序员还会对以下函数感兴趣
{helpb mf_robust##i_verbose:robust_init_verbose()}, 
{helpb mf_robust##r_error:robust_result_errorcode()}, 
{helpb mf_robust##r_error:robust_result_errortext()},
和
{helpb mf_robust##r_error:robust_result_returncode()}。


{marker r_V}{...}
{title:robust_result_V()}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_V(}{it:R}{cmd:)}

{pstd}
{cmd:robust_result_V(}{it:R}{cmd:)} 返回鲁棒方差矩阵。


{marker r_V_srs}{...}
{title:robust_result_V_srs()}
{title:robust_result_V_srssub()}
{title:robust_result_V_srswr()}
{title:robust_result_V_srswrsub()}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_V_srs(}{it:R}{cmd:)}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_V_srssub(}{it:R}{cmd:)}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_V_srswr(}{it:R}{cmd:)}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_V_srswrsub(}{it:R}{cmd:)}

{pstd}
{cmd:robust_result_V_srs}{it:*}{cmd:()} 函数根据 {cmd:robust_init_V_srs(}{it:R}{cmd:, "on")} 预先请求的额外方差估计返回结果。如果没有指定 {cmd:robust_init_V_srs(}{it:R}{cmd:, "on")}，这些函数将返回填充缺失值的矩阵。

{pstd}
{cmd:robust_result_V_srs(}{it:R}{cmd:)} 返回方差矩阵，假设数据是使用不带替换的简单随机样本设计收集的。抽样权重的总和应等于总体大小，以使该函数的结果有意义。

{pstd}
{cmd:robust_result_V_srssub(}{it:R}{cmd:)} 返回子人口方差矩阵，假设子人口观察是使用不带替换的简单随机样本设计收集的。子人口样本内的抽样权重应总和为子人口大小，以使该函数的结果有意义。

{pstd}
{cmd:robust_result_V_srswr(}{it:R}{cmd:)} 返回方差矩阵，假设数据是使用带替换的简单随机样本设计收集的。

{pstd}
{cmd:robust_result_V_srswrsub(}{it:R}{cmd:)} 返回子人口方差矩阵，假设数据是使用带替换的简单随机样本设计收集的。


{marker r__N_strata}{...}
{title:robust_result_stage_strata()}
{title:robust_result_stage_certain()}
{title:robust_result_stage_single()}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_stage_strata(}{it:R}{cmd:)}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_stage_certain(}{it:R}{cmd:)}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_stage_single(}{it:R}{cmd:)}

{pstd}
{cmd:robust_result_stage_strata(}{it:R}{cmd:)} 返回一个行向量，包含每个阶段内的层数。

{pstd}
{cmd:robust_result_stage_certain(}{it:R}{cmd:)} 返回一个行向量，包含每个阶段内的确定层数。

{pstd}
{cmd:robust_result_stage_single(}{it:R}{cmd:)} 返回一个行向量，包含每个阶段内的单元层数。


{marker r__N_post}{...}
{title:robust_result_postsize()}
{title:robust_result_postsum()}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_postsize(}{it:R}{cmd:)}

{p 8 30 2}
{it:real matrix}
{cmd:robust_result_postsum(}{it:R}{cmd:)}

{pstd}
{cmd:robust_result_postsize(}{it:R}{cmd:)} 返回后层大小的行向量（属于每个后层的个体数量）。

{pstd}
{cmd:robust_result_postsum(}{it:R}{cmd:)} 返回每个后层内未调整抽样权重的总和的行向量。


{marker r_N}{...}
{title:robust_result_N()}
{title:robust_result_sum_w()}
{title:robust_result_N_sub()}
{title:robust_result_sum_wsub()}
{title:robust_result_N_clust()}
{title:robust_result_N_strata()}
{title:robust_result_N_strata_omit()}

{p 8 30 2}
{it:real scalar}
{cmd:robust_result_N(}{it:R}{cmd:)}

{p 8 30 2}
{it:real scalar}
{cmd:robust_result_sum_w(}{it:R}{cmd:)}

{p 8 30 2}
{it:real scalar}
{cmd:robust_result_N_sub(}{it:R}{cmd:)}

{p 8 30 2}
{it:real scalar}
{cmd:robust_result_sum_wsub(}{it:R}{cmd:)}

{p 8 30 2}
{it:real scalar}
{cmd:robust_result_N_clust(}{it:R}{cmd:)}

{p 8 30 2}
{it:real scalar}
{cmd:robust_result_N_strata(}{it:R}{cmd:)}

{p 8 30 2}
{it:real scalar}
{cmd:robust_result_N_strata_omit(}{it:R}{cmd:)}

{pstd}
{cmd:robust_result_N(}{it:R}{cmd:)} 返回样本大小。

{pstd}
{cmd:robust_result_sum_w(}{it:R}{cmd:)} 返回抽样权重的总和。此值通常用于估计总体大小。

{pstd}
{cmd:robust_result_N_sub(}{it:R}{cmd:)} 返回子人口样本大小。

{pstd}
{cmd:robust_result_sum_wsub(}{it:R}{cmd:)} 返回子人口观察内的抽样权重总和。此值通常用于估计子人口的大小。

{pstd}
{cmd:robust_result_N_clust(}{it:R}{cmd:)} 返回第一阶段采样单元的数量，也称为聚类或主要采样单元。

{pstd}
{cmd:robust_result_N_strata(}{it:R}{cmd:)} 返回第一阶段层的数量。

{pstd}
{cmd:robust_result_N_strata_omit(}{it:R}{cmd:)} 返回由于不与子人口交集而被省略的第一阶段层的数量。


{marker r_census}{...}
{title:robust_result_census()}

{p 8 30 2}
{it:real scalar}
{cmd:robust_result_census(}{it:R}{cmd:)}

{pstd}
{cmd:robust_result_census(}{it:R}{cmd:)} 返回一个指示符（0 或 1 值），用于表示第一阶段采样单元是否代表一个普查。这是一个特殊情况，其中全部为零的鲁棒方差矩阵被解释为确实没有变化。


{marker r_singleton}{...}
{title:robust_result_singleton()}

{p 8 30 2}
{it:real scalar}
{cmd:robust_result_singleton(}{it:R}{cmd:)}

{pstd}
{cmd:robust_result_singleton(}{it:R}{cmd:)} 返回一个指示符（0 或 1 值），用于表示在任何抽样阶段是否有层只有一个采样单元。


{marker r_error}{...}
{title:robust_result_errorcode()}
{title:robust_result_errortext()}
{title:robust_result_returncode()}

{p 8 25 2}
{it:real scalar}{bind:  }
{cmd:robust_result_errorcode(}{it:R}{cmd:)}

{p 8 25 2}
{it:string scalar}
{cmd:robust_result_errortext(}{it:R}{cmd:)}

{p 8 25 2}
{it:real scalar}{bind:  }
{cmd:robust_result_returncode(}{it:R}{cmd:)}

{p 4 4 2}
这些函数在 {cmd:_robust()} 之后使用。

{p 4 4 2}
{cmd:robust_result_errorcode(}{it:R}{cmd:)} 返回 {cmd:_robust()} 的错误代码。
如果没有错误，则值为零。
可能的错误代码如下所示。

{p 4 4 2}
{cmd:robust_result_errortext(}{it:R}{cmd:)} 返回一个字符串，包含与错误代码对应的错误消息。
如果错误代码为零，则字符串将是 {cmd:""}。

{p 4 4 2}
{cmd:robust_result_returncode(}{it:R}{cmd:)} 返回与错误代码对应的 Stata 返回代码。
对应关系直接列在下方。

{p 4 4 2}
在高级代码中，这些函数可能如下使用：

		{cmd:robust_init_verbose(R, 0)}
		{cmd:(void) _robust(R)}
		...
		{cmd:if (ec = robust_result_errorcode(R)) {c -(}}
			{cmd:errprintf("{c -(}p{c )-}\n")}
			{cmd:errprintf("%s\n", robust_result_errortext(R))}
			{cmd:errprintf("{c -(}p_end{c )-}\n")}
			{cmd:exit(robust_result_returncode(R))}
			{cmd:/*NOTREACHED*/}
		{cmd:{c )-}}

{p 4 4 2}
错误代码及其对应的 Stata 返回代码列在下表中。

	   错误   返回
	   代码     代码   错误文本
	{hline 70}
	     1      2000   没有观察值

	     2      3498   一致性错误

	     3       100   未指定方程

	     4       198   权重类型无效

	     5       465   后分层权重必须 >= 0

	     6       464   后分层权重在后层内必须是常数

	     7       460   FPC 必须 >= 0

	     8       461   每个层内所有观察的 FPC 必须相同

	     9       462   FPC 如果是比率，必须 <= 1；如果是单位总数，则每层的样本单位数量 >= 
	{hline 70}


{marker query}{...}
{title:robust_query()}

{p 8 25 2}
{it:void}
{cmd:robust_query(}{it:R}{cmd:)}

{pstd}
{cmd:robust_query(}{it:R}{cmd:)} 显示当前 {cmd:robust_init_}{it:*}{cmd:()} 值的报告。
{cmd:robust_query(}{it:R}{cmd:)} 可以在 {cmd:robust()} 之前或之后使用，对交互式使用 {cmd:robust()} 或调试调用 {cmd:robust()} 或 {cmd:_robust()} 的程序很有用。


{marker conformability}{...}
{title:一致性}

{pstd}
所有函数都具有 1 {it:x} 1 输入并具有 1 {it:x} 1 或 {it:void} 输出，除了以下情况：

    {cmd:robust_init_touse(}{it:R}{cmd:,} {it:touse}{cmd:)}:
		{it:R}:  {it:transmorphic}
	    {it:touse}:  1 {it:x} 1 ({it:string})
		    {it:N x} 1 ({it:real})
	   {it:result}:  {it:void}

    {cmd:robust_init_touse(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:N x} 1

    {cmd:robust_init_subpop(}{it:R}{cmd:,} {it:subpop}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:subpop}:  1 {it:x} 1 ({it:string})
		    {it:N x} 1 ({it:real})
	   {it:result}:  {it:void}

    {cmd:robust_init_subpop(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:N x} 1

    {cmd:robust_init_scores(}{it:R}{cmd:,} {it:S}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:S}:  1 {it:x} 1   ({it:string})
		    {it:N x neq} ({it:real})
	   {it:result}:  {it:void}

    {cmd:robust_init_scores(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:N x neq}

    {cmd:robust_init_covmat(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:np x np}

    {cmd:robust_init_eq_indepvars(}{it:R}{cmd:,} {it:i}{cmd:,} {it:X}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:i}:  1 {it:x} 1
		{it:X}:  1 {it:x} 1   ({it:string})
		    {it:N x k_i} ({it:real})
	   {it:result}:  {it:void}

    {cmd:robust_init_eq_indepvars(}{it:R}{cmd:,} {it:i}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:i}:  1 {it:x} 1
	   {it:result}:  {it:N x k_i}

    {cmd:robust_init_stage_units(}{it:R}{cmd:,} {it:k}{cmd:,} {it:units}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:k}:  1 {it:x} 1
	    {it:units}:  1 {it:x} 1 ({it:string})
		    {it:N x} 1 ({it:real})
	   {it:result}:  {it:void}

    {cmd:robust_init_stage_units(}{it:R}{cmd:,} {it:k}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:k}:  1 {it:x} 1
	   {it:result}:  {it:N x} 1

    {cmd:robust_init_stage_strata(}{it:R}{cmd:,} {it:k}{cmd:,} {it:strata}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:k}:  1 {it:x} 1
	   {it:strata}:  1 {it:x} 1 ({it:string})
		    {it:N x} 1 ({it:real})
	   {it:result}:  {it:void}

    {cmd:robust_init_stage_strata(}{it:R}{cmd:,} {it:k}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:k}:  1 {it:x} 1
	   {it:result}:  {it:N x} 1

    {cmd:robust_init_stage_fpc(}{it:R}{cmd:,} {it:k}{cmd:,} {it:fpc}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:k}:  1 {it:x} 1
	      {it:fpc}:  1 {it:x} 1 ({it:string})
		    {it:N x} 1 ({it:real})
	   {it:result}:  {it:void}

    {cmd:robust_init_stage_fpc(}{it:R}{cmd:,} {it:k}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:k}:  1 {it:x} 1
	   {it:result}:  {it:N x} 1

    {cmd:robust_init_weight(}{it:R}{cmd:,} {it:w}{cmd:)}:
		{it:R}:  {it:transmorphic}
		{it:k}:  1 {it:x} 1
	        {it:w}:  1 {it:x} 1 ({it:string})
		    {it:N x} 1 ({it:real})
	   {it:result}:  {it:void}

    {cmd:robust_init_weight(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:N x} 1

    {cmd:robust_init_poststrata(}{it:R}{cmd:,} {it:P}{cmd:)}:
		{it:R}:  {it:transmorphic}
	        {it:P}:  1 {it:x} 1 ({it:string})
		    {it:N x} 2 ({it:real})
	   {it:result}:  {it:void}

    {cmd:robust_init_poststrata(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:N x} 2

    {cmd:robust(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:np x np}

    {cmd:robust_result_V(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:np x np}

    {cmd:robust_result_V_srs(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:np x np}

    {cmd:robust_result_V_srssub(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:np x np}

    {cmd:robust_result_V_srswr(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:np x np}

    {cmd:robust_result_V_srswrsub(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  {it:np x np}

    {cmd:robust_result_stage_strata(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  1 {it:x K}

    {cmd:robust_result_stage_certain(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  1 {it:x K}

    {cmd:robust_result_stage_single(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  1 {it:x K}

    {cmd:robust_result_postsize(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  1 {it:x npost}

    {cmd:robust_result_postsum(}{it:R}{cmd:)}:
		{it:R}:  {it:transmorphic}
	   {it:result}:  1 {it:x npost}


{marker diagnostics}{...}
{title:诊断}

{pstd}
所有函数在不正确使用时都会中止并报错。

{pstd}
如果 {cmd:robust()} 遇到数值困难，将中止并报错。


{marker source}{...}
{title:源代码}

{pstd}
{view robust.mata, adopath asis:robust.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_robust.sthlp>}