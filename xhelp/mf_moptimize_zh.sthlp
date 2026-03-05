{smcl}
{* *! version 1.3.7  11dec2018}{...}
{vieweralsosee "[M-5] moptimize()" "mansection M-5 moptimize()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] optimize()" "help mf_optimize_zh"}{...}
{vieweralsosee "[M-5] Quadrature()" "help mf_quadrature_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] set iter" "help set_iter_zh"}{...}
{viewerjumpto "Syntax" "mf_moptimize_zh##syntax"}{...}
{viewerjumpto "Description" "mf_moptimize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_moptimize_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_moptimize_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_moptimize_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_moptimize_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_moptimize_zh##source"}{...}
{viewerjumpto "Reference" "mf_moptimize_zh##reference"}
{help mf_moptimize:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] moptimize()} {hline 2}}模型优化
{p_end}
{p2col:}({mansection M-5 moptimize():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
{it}如果您第一次阅读此条目，请直接跳到 
{bf:{help mf_moptimize##description:描述}}
和 
{bf:{help mf_moptimize##remarks:备注}}，尤其是，
在{bf:备注}下的
{help mf_moptimize##rem_math: moptimize()问题的数学表述}。

{p 4 4 2}
语法分为以下几个部分：

	{help mf_moptimize##syn_step1:步骤 1：初始化}
	{help mf_moptimize##syn_step2:步骤 2：定义最大化或最小化问题}
	{help mf_moptimize##syn_step3:步骤 3：执行优化或进行单次函数评估}
	{help mf_moptimize##syn_step4:步骤 4：发布、显示或获取结果}

	{help mf_moptimize##syn_stepall:所有步骤中使用的实用函数}

	{help mf_moptimize##syn_M: M 的定义}
	{help mf_moptimize##syn_sample:设置样本}
	{help mf_moptimize##syn_dependent:指定因变量}
	{help mf_moptimize##syn_independent:指定自变量}
	{help mf_moptimize##syn_constraints:指定约束条件}
	{help mf_moptimize##syn_weights:指定权重或调查数据}
	{help mf_moptimize##syn_clusters:指定聚类和面板}
	{help mf_moptimize##syn_technique:指定优化技术}
	{help mf_moptimize##syn_initial:指定初始值}
	{help mf_moptimize##syn_one:进行目标函数的单次评估}
	{help mf_moptimize##syn_opt:优化目标函数}
	{help mf_moptimize##syn_trace:跟踪优化}
	{help mf_moptimize##syn_convergence:指定收敛标准}
	{help mf_moptimize##syn_results:访问结果}
	{help mf_moptimize##syn_ado_cleanup: Stata 评估器}
	{help mf_moptimize##syn_advanced:高级函数}

	{help mf_moptimize##syn_alleval:评估器语法}
	{help mf_moptimize##syn_lf: lf 评估器语法}
	{help mf_moptimize##syn_dstar: d 评估器语法}
	{help mf_moptimize##syn_lfstar: lf* 评估器语法}
	{help mf_moptimize##syn_gfstar: gf 评估器语法}
	{help mf_moptimize##syn_qstar: q 评估器语法}
	{help mf_moptimize##syn_extra: 传递额外信息给评估器}

	{help mf_moptimize##syn_util:实用函数}


{marker syn_step1}{...}
    {title:步骤 1：初始化}

{col 19}{...}
{it:{help mf_moptimize##def_M:M}} {...}
{cmd:=} {...}
{cmd:moptimize_init()}


{marker syn_step2}{...}
    {title:步骤 2：定义最大化或最小化问题}

{p 13 13 8}
{it}在每个函数中，最后一个参数是可选的。
如果指定，函数将设置该值并返回 {it:void}。
如果未指定，则不做更改，返回当前设置的值。

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_which:{bf:moptimize_init_which(}{it:M}{bf:,} {c -(}{bf:"max"}|{bf:"min"}{c )-}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_evaluator:{bf:moptimize_init_evaluator(}{it:M}{bf:,} {bf:&}{it:functionname}{bf:()}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_evaluator:{bf:moptimize_init_evaluator(}{it:M}{bf:,} {bf:"}{it:programname}{bf:")}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_evaluatortype:{bf:moptimize_init_evaluatortype(}{it:M}{bf:,} {it:evaluatortype}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_negH:{bf:moptimize_init_negH(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_touse:{bf:moptimize_init_touse(}{it:M}{bf:,} {bf:"}{it:tousevarname}{bf:")}}


{col 9}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_ndepvars:{bf:moptimize_init_ndepvars(}{it:M}{bf:,} {it:D}{bf:)}}

{col 9}{...}
{...}
{col 24}{...}
{help mf_moptimize##init_depvar:{bf:moptimize_init_depvar(}{it:M}{bf:,} {it:j}{bf:,} {it:y}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_eq_n:{bf:moptimize_init_eq_n(}{it:M}{bf:,} {it:m}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_independent:{bf:moptimize_init_eq_indepvars(}{it:M}{bf:,} {it:i}{bf:,} {it:X}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_independent:{bf:moptimize_init_eq_cons(}{it:M}{bf:,} {it:i}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_independent:{bf:moptimize_init_eq_offset(}{it:M}{bf:,} {it:i}{bf:,} {it:o}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_independent:{bf:moptimize_init_eq_exposure(}{it:M}{bf:,} {it:i}{bf:,} {it:t}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_independent:{bf:moptimize_init_eq_name(}{it:M}{bf:,} {it:i}{bf:,} {it:name}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_independent:{bf:moptimize_init_eq_colnames(}{it:M}{bf:,} {it:i}{bf:,} {it:names}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_independent:{bf:moptimize_init_eq_freeparm(}{it:M}{bf:,} {it:i}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_initial:{bf:moptimize_init_eq_coefs(}{it:M}{bf:,} {it:i}{bf:,} {it:b0}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_constraints:{bf:moptimize_init_constraints(}{it:M}{bf:,} {it:Cc}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_search:{bf:moptimize_init_search(}{it:M}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_search:{bf:moptimize_init_search_random(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_search:{bf:moptimize_init_search_repeat(}{it:M}{bf:,} {it:nr}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_search:{bf:moptimize_init_search_bounds(}{it:M}{bf:,} {it:i}{bf:,} {it:minmax}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_search:{bf:moptimize_init_search_rescale(}{it:M}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_weight:{bf:moptimize_init_weight(}{it:M}{bf:,} {it:w}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_weight:{bf:moptimize_init_weighttype(}{it:M}{bf:,} {it:weighttype}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_cluster:{bf:moptimize_init_cluster(}{it:M}{bf:,} {it:c}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_svy:{bf:moptimize_init_svy(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_by:{bf:moptimize_init_by(}{it:M}{bf:,} {it:by}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_userinfo:{bf:moptimize_init_nuserinfo(}{it:M}{bf:,} {it:n_user}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_userinfo:{bf:moptimize_init_userinfo(}{it:M}{bf:,} {it:l}{bf:,} {it:Z}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_technique:{bf:moptimize_init_technique(}{it:M}{bf:,} {it:technique}{bf:)}}
 
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_vcetype:{bf:moptimize_init_vcetype(}{it:M}{bf:,} {it:vcetype}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_nmsimplexdeltas:{bf:moptimize_init_nmsimplexdeltas(}{it:M}{bf:,} {it:delta}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_gnweightmatrix:{bf:moptimize_init_gnweightmatrix(}{it:M}{bf:,} {it:W}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##def_singularHmethod:{bf:moptimize_init_singularHmethod(}{it:M}{bf:,} {it:singularHmethod}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_convergence:{bf:moptimize_init_conv_maxiter(}{it:M}{bf:,} {it:maxiter}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{col 6}{help mf_moptimize##syn_convergence:{bf:moptimize_init_conv_warning(}{it:M}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_convergence:{bf:moptimize_init_conv_ptol(}{it:M}{bf:,} {it:ptol}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_convergence:{bf:moptimize_init_conv_vtol(}{it:M}{bf:,} {it:vtol}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_convergence:{bf:moptimize_init_conv_nrtol(}{it:M}{bf:,} {it:nrtol}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_convergence:{bf:moptimize_init_conv_ignorenrtol(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_iterid:{bf:moptimize_init_iterid(}{it:M}{bf:,} {it:id}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##init_valueid:{bf:moptimize_init_valueid(}{it:M}{bf:,} {it:id}{bf:)}}


{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_tracelevel(}{it:M}{bf:,} {it:tracelevel}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_trace_ado(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_trace_dots(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_trace_value(}{it:M}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_trace_tol(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_trace_step(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_trace_coefdiffs(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_trace_coefs(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_trace_gradient(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{help mf_moptimize##syn_trace:{bf:moptimize_init_trace_Hessian(}{it:M}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}


{marker syn_step3}{...}
    {title:步骤 3：执行优化或进行单次函数评估}

{col 9}{...}
{it:void}{...}
{col 24}{...}
{help mf_moptimize##syn_opt:{bf:moptimize(}{it:M}{bf:)}}

{col 9}{...}
{it:real scalar}{...}
{col 23}{...}
{help mf_moptimize##syn_opt:{bf:_moptimize(}{it:M}{bf:)}}

{col 9}{...}
{it:void}{...}
{col 24}{...}
{help mf_moptimize##syn_one:{bf:moptimize_evaluate(}{it:M}{bf:)}}

{col 9}{...}
{it:real scalar}{...}
{col 23}{...}
{help mf_moptimize##syn_one:{bf:_moptimize_evaluate(}{it:M}{bf:)}}


{marker syn_step4}{...}
    {title:步骤 4：发布、显示或获取结果}

{col 9}{...}
{it:void}{...}
{col 24}{...}
{help mf_moptimize##result_post:{bf:moptimize_result_post(}{it:M} [{bf:,} {it:vcetype}]{bf:)}}


{col 9}{...}
{it:void}{...}
{col 24}{...}
{help mf_moptimize##result_display:{bf:moptimize_result_display(}[{it:M} [{bf:,} {it:vcetype}]]{bf:)}}


{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{help mf_moptimize##result_value:{bf:moptimize_result_value(}{it:M}{bf:)}}

{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{help mf_moptimize##result_value0:{bf:moptimize_result_value0(}{it:M}{bf:)}}


{col 9}{...}
{it:real rowvector}{...}
{col 24}{...}
{help mf_moptimize##result_eq_coefs:{bf:moptimize_result_eq_coefs(}{it:M} [{bf:,} {it:i}]{bf:)}}

{col 9}{...}
{it:real rowvector}{...}
{col 24}{...}
{help mf_moptimize##result_coefs:{bf:moptimize_result_coefs(}{it:M}{bf:)}}

{col 9}{...}
{it:string matrix}{...}
{col 24}{...}
{help mf_moptimize##result_colstripe:{bf:moptimize_result_colstripe(}{it:M} [{bf:,} {it:i}]{bf:)}}


{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{help mf_moptimize##result_scores:{bf:moptimize_result_scores(}{it:M}{bf:)}}

{col 9}{...}
{it:real rowvector}{...}
{col 24}{...}
{help mf_moptimize##result_gradient:{bf:moptimize_result_gradient(}{it:M} [{bf:,} {it:i}]{bf:)}}


{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{help mf_moptimize##result_Hessian:{bf:moptimize_result_Hessian(}{it:M} [{bf:,} {it:i}]{bf:)}}

{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{help mf_moptimize##result_V:{bf:moptimize_result_V(}{it:M} [{bf:,} {it:i}]{bf:)}}

{col 9}{...}
{it:string scalar}{...}
{col 24}{...}
{help mf_moptimize##result_Vtype:{bf:moptimize_result_Vtype(}{it:M}{bf:)}}

{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{help mf_moptimize##result_V_oim:{bf:moptimize_result_V_oim(}{it:M} [{bf:,} {it:i}]{bf:)}}

{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{help mf_moptimize##result_V_opg:{bf:moptimize_result_V_opg(}{it:M} [{bf:,} {it:i}]{bf:)}}

{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{help mf_moptimize##result_V_robust:{bf:moptimize_result_V_robust(}{it:M} [{bf:,} {it:i}]{bf:)}}



{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{help mf_moptimize##result_iterations:{bf:moptimize_result_iterations(}{it:M}{bf:)}}

{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{help mf_moptimize##result_converged:{bf:moptimize_result_converged(}{it:M}{bf:)}}

{col 9}{...}
{it:real colvector}{...}
{col 24}{...}
{help mf_moptimize##result_iterationlog:{bf:moptimize_result_iterationlog(}{it:M}{bf:)}}

{col 9}{...}
{it:real rowvector}{...}
{col 24}{...}
{help mf_moptimize##result_evaluations:{bf:moptimize_result_evaluations(}{it:M}{bf:)}}

{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{help mf_moptimize##result_errorcode:{bf:moptimize_result_errorcode(}{it:M}{bf:)}}

{col 9}{...}
{it:string scalar}{...}
{col 24}{...}
{help mf_moptimize##result_errortext:{bf:moptimize_result_errortext(}{it:M}{bf:)}}

{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{help mf_moptimize##result_returncode:{bf:moptimize_result_returncode(}{it:M}{bf:)}}

{pstd}
以下错误代码及其对应的 Stata 返回代码仅适用于 {cmd:moptimize()}。要查看其他错误代码及其对应的 Stata 返回代码，请参阅 {help mf_optimize##error:{bf:[M-5] optimize}}。

           错误   返回
           代码    代码    错误文本
        {hline 70}
           400      1400   找不到可行值
           401      491    Stata 程序评估器返回了错误
           402      198    当评估器是 Stata 程序时需要视图
           403      198    Stata 程序评估器需要变量 touse
{hline 70}


{marker syn_ado_cleanup}{...}
    {title:Stata 评估器}

{p 4 4 2}
以下功能仅在您的评估器是 Stata 程序而不是 Mata 函数时才有用。

{marker init_verbose}{...}
{p 8 12 2}
{cmd:moptimize_ado_cleanup(}{it:{help mf_moptimize##def_M:M}}{cmd:)} 移除所有
以 {cmd:ML_} 为前缀的全局宏。如果指定了权重变量，临时权重变量也将被删除。


{marker syn_advanced}{...}
    {title:高级函数}

{p 4 4 2}
这些函数并不是真正的高级函数，只是很少使用而已。

{marker init_verbose}{...}
{p 8 12 2}
{cmd:moptimize_init_verbose(}{it:{help mf_moptimize##def_M:M}}{cmd:,} 
    {c -(}{cmd:"on"}|{cmd:"off"}{c )-}{cmd:)} 指定 
    是否显示错误消息。默认值为 {cmd:"on"}。
    
{marker init_evaluations}{...}
{p 8 12 2}
{cmd:moptimize_init_evaluations(}{it:{help mf_moptimize##def_M:M}}{cmd:,} 
     {c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)} 指定系统是否
     统计 {help mf_moptimize##syn_alleval:评估器}
     的调用次数。默认值为 {cmd:"off"}。

{marker result_evaluations}{...}
{p 8 12 2}
{cmd:moptimize_result_evaluations(}{it:{help mf_moptimize##def_M:M}}{cmd:)}
    返回一个 1 {it:x} 3 实数行向量，包含
    {help mf_moptimize##syn_alleval:评估器}被调用的次数，假设
    {cmd:moptimize_init_evaluations()} 被设置为开启。
    内容是为以下目的调用的次数：1) 计算目标函数，2) 计算目标函数及其一阶导数，3) 计算目标函数及其一阶和二阶导数。
    如果 {cmd:moptimize_init_evaluations()} 设置为关闭，返回值为 
    (0,0,0)。


{marker def_evaluatortype}{...}
{marker syn_alleval}{...}
    {title:评估器语法}

{p 8 8 2}
评估器是您编写的程序，用来计算被优化函数的值，并可选择地计算函数的第一和第二导数。您编写的评估器由
{cmd:moptimize()} 函数调用。

{p 8 8 2}
评估器可以以五种风格编写，称为类型 {cmd:lf}、{cmd:lf*}、{cmd:d}、{cmd:gf} 和 {cmd:q}。
{it:evaluatortype} 在 {cmd:moptimize_init_evaluatortype()} 中可选指定，指定您编写的评估器的样式。
允许的值为

{col 16}{it:evaluatortype}{col 32}描述
{col 16}{hline 60}
{col 16}{cmd:"lf"}{col 32}{it:function}{cmd:()} 返回 {it:N} {it:x} 1 列向量值

{col 16}{cmd:"d0"}{col 32}{it:function}{cmd:()} 返回标量值
{col 16}{cmd:"d1"}{col 32}与 {cmd:"d0"} 相同，并返回梯度行向量
{col 16}{cmd:"d2"}{col 32}与 {cmd:"d1"} 相同，并返回海森矩阵
{col 16}{cmd:"d1debug"}{col 32}与 {cmd:"d1"} 相同，但检查梯度
{col 16}{cmd:"d2debug"}{col 32}与 {cmd:"d2"} 相同，但检查梯度和海森矩阵

{col 16}{cmd:"lf0"}{col 32}{it:function}{cmd:()} 返回 {it:N} {it:x} 1 列向量值
{col 16}{cmd:"lf1"}{col 32}与 {cmd:"lf0"} 相同，并返回方程级得分矩阵
{col 16}{cmd:"lf2"}{col 32}与 {cmd:"lf1"} 相同，并返回海森矩阵
{col 16}{cmd:"lf1debug"}{col 32}与 {cmd:"lf1"} 相同，但检查梯度
{col 16}{cmd:"lf2debug"}{col 32}与 {cmd:"lf2"} 相同，但检查梯度和海森矩阵

{col 16}{cmd:"gf0"}{col 32}{it:function}{cmd:()} 返回 {it:N} {it:x} 1 列向量值
{col 16}{cmd:"gf1"}{col 32}与 {cmd:"gf0"} 相同，并返回得分矩阵
{col 16}{cmd:"gf2"}{col 32}与 {cmd:"gf1"} 相同，并返回海森矩阵
{col 16}{cmd:"gf1debug"}{col 32}与 {cmd:"gf1"} 相同，但检查梯度
{col 16}{cmd:"gf2debug"}{col 32}与 {cmd:"gf2"} 相同，但检查梯度和海森矩阵

{col 16}{cmd:"q0"}{col 32}{it:function}{cmd:()} 返回列向量值
{col 16}{cmd:"q1"}{col 32}与 {cmd:"q0"} 相同，并返回得分矩阵
{col 16}{cmd:"q1debug"}{col 32}与 {cmd:"q1"} 相同，但检查梯度
{col 16}{hline 60}
{col 16}如果未设置，默认值为 {cmd:"lf"}。
{col 16}{cmd:"q"} 评估器与技术 {cmd:"gn"} 一起使用。
{col 16}返回的梯度为 {...}
1 {it:x} {...}
{it:{help mf_moptimize##def_K:K}} {...}
行向量。
{col 16}返回的海森为 {...}
{it:{help mf_moptimize##def_K:K}} {...}
{it:x} {...}
{it:{help mf_moptimize##def_K:K}} {...}
矩阵。

{p 8 8 2}
每种评估器类型的示例如下所示。

{p 8 8 2}
您必须告诉 {cmd:moptimize()} 您评估器的标识和类型，您可以使用 {cmd:moptimize_init_evaluator()} 和 
{cmd:moptimize_init_evaluatortype()} 函数来实现。

{marker init_evaluator}{...}
{marker init_evaluatortype}{...}
{p 12 16 2}
{cmd:moptimize_init_evaluator(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {cmd:&}{it:functionname}{cmd:()}{cmd:)}
    设置您在 Mata 中编写的评估器函数的标识。

{p 12 16 2}
{cmd:moptimize_init_evaluator(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {cmd:"}{it:programname}{cmd:")}
    设置您在 Stata 中编写的评估器程序的标识。

{p 12 16 2} 
{cmd:moptimize_init_evaluatortype(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {it:evaluatortype}{cmd:)} 通知
    {cmd:moptimize()} 您编写的评估器的样式。
    {it:evaluatortype} 是上表中字符串标量。默认值为
    {cmd:"lf"}。

{marker init_negH}{...}
{p 12 16 2}
{cmd:moptimize_init_negH(}{it:{help mf_moptimize##def_M:M}}{cmd:,} 
    {c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}
    设置您编写的评估器是否返回 {it:H} 或 -{it:H}，海森或海森的负值（如果它根本返回海森）。
    这是为了与 Stata 的 {bf:{help ml_zh:ml}} 命令的早期版本兼容。现代评估器返回 {it:H}。默认值为 {cmd:"off"}。

{marker syn_lf}{...}
    {title:lf 评估器的语法}

        {cmd:lfeval}{cmd:(}{it:M}{cmd:,} {it:b}{cmd:,} {it:fv}{cmd:)}:

		{it:输入}:
			{it:M}:   问题定义
			{it:b}:   系数向量
		{it:输出}:
		       {it:fv}:   {it:N x} 1, {it:N} = 观测数量

{p 8 8 2}
注意：

{p 12 16 2}
1.  目标函数是 {it:f}() = {cmd:colsum(}{it:fv}{cmd:)}。

{p 12 16 2}
2.
在 {it:f}() 是对数似然函数的情况下，对数似然值必须在观测值之间进行求和。

{p 12 16 2}
3.
可与除 {cmd:gn} 以外的任何 {help mf_moptimize##def_technique:技术} 一起使用。

{p 12 16 2}
4.
可与稳健、聚类和调查一起使用。

{p 12 16 2}
5.
如果无法进行评估，则返回 {it:fv} 包含缺失值 ({it:fv}={cmd:.})。



{marker syn_dstar}{...}
    {title:d 评估器的语法}

	{cmd:deval}{cmd:(}{...}
{it:M}{cmd:,} {...}
{it:todo}{cmd:,} {...}
{it:b}{cmd:,} {...}
{it:fv}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}:

		{it:输入}:
			{it:M}:   问题定义
		     {it:todo}:   包含 0、1 或 2 的实数标量
			{it:b}:   系数向量
		{it:输出}:
		       {it:fv}:   实数标量
			{it:g}:   1 {it:x K}，梯度，{it:K} = 系数数量
			{it:H}:   {it:K x K}，海森

{p 8 8 2}
注意：

{p 12 16 2}
1.  
目标函数是 {it:f}() = {it:fv}。

{p 12 16 2}
2.  可与任何对数似然函数或任何函数一起使用。

{p 12 16 2}
3.
可与除 {cmd:gn} 和 {cmd:bhhh} 以外的任何 {help mf_moptimize##def_technique:技术} 一起使用。

{p 12 16 2}
4.
不能与稳健，聚类或调查一起使用。

{p 12 16 2}
5.  
{it:deval}{cmd:()} 必须始终填充 {it:fv}，如果 {it:todo}>=1，则填充 {it:g}，如果 {it:todo}==2，则填充 {it:H}。
对于类型 {cmd:d0}，{it:todo} 将始终为 0。
对于类型 {cmd:d1} 和 {cmd:d1debug}，{it:todo} 将是 0 或 1。
对于类型 {cmd:d2} 和 {cmd:d2debug}，{it:todo} 将是 0、1 或 2。

{p 12 16 2}
6.
如果无法进行评估，则返回 {it:fv}={cmd:.}。


{marker syn_lfstar}{...}
    {title:lf* 评估器的语法}

	{cmd:lfeval}{cmd:(}{...}
{it:M}{cmd:,} {...}
{it:todo}{cmd:,} {...}
{it:b}{cmd:,} {...}
{it:fv}{cmd:,} {it:S}{cmd:,} {it:H}{cmd:)}:

		{it:输入}:
			{it:M}:   问题定义
		     {it:todo}:   包含 0、1 或 2 的实数标量
			{it:b}:   系数向量
		{it:输出}:
		       {it:fv}:   {it:N x} 1，{it:N} = 观测数量
			{it:S}:   {it:N x m}，得分， {it:m} = 方程（参数）的数量
			{it:H}:   {it:K x K}，海森，{it:K} = 系数数量


{p 8 8 2}
注意：

{p 12 16 2}
1.  
目标函数是 {it:f}() = {cmd:colsum(}{it:fv}{cmd:)}。

{p 12 16 2}
2.
类型 {cmd:lf*} 是类型 {cmd:lf} 的变体，允许用户提供解析导数。
尽管 {cmd:lf*} 可以用于任意函数，但它旨在用于 {it:f}() 是对数似然函数且对数似然值在观测数之间可求和的情况。

{p 12 16 2}
3.
可与任何 {help mf_moptimize##def_technique:技术} 一起使用，除了 {cmd:gn}。

{p 12 16 2}
4.
可与稳健、聚类和调查一起使用。

{p 12 16 2}
5.  
始终返回 {it:fv}，如果 {it:todo}>=1，则返回 {it:S}，如果 {it:todo}==2，则返回 {it:H}。
对于类型 {cmd:lf0}，{it:todo} 将始终为 0。
对于类型 {cmd:lf1} 和 {cmd:lf1debug}，{it:todo} 将为 0 或 1。
对于类型 {cmd:lf2} 和 {cmd:lf2debug}，{it:todo} 将为 0、1 或 2。

{p 12 16 2}
6.
如果无法进行评估，则返回 {it:fv} 包含缺失值 ({it:fv}={cmd:.})。


{marker syn_gfstar}{...}
    {title:gf 评估器的语法}

	{cmd:gfeval}{cmd:(}{...}
{it:M}{cmd:,} {...}
{it:todo}{cmd:,} {...}
{it:b}{cmd:,} {...}
{it:fv}{cmd:,} {it:S}{cmd:,} {it:H}{cmd:)}:

		{it:输入}:
			{it:M}:   问题定义
		     {it:todo}:   包含 0、1 或 2 的实数标量
			{it:b}:   系数向量
		{it:输出}:
		       {it:fv}:   {it:L x 1} 的独立元素
			{it:S}:   {it:L x K}，得分，{it:K} = 系数数量
			{it:H}:   {it:K x K}，海森

{p 8 8 2}
注意：

{p 12 16 2}
1.  目标函数是 {it:f}() = {cmd:colsum(}{it:fv}{cmd:)}。

{p 12 16 2}
2.  类型 {cmd:gf} 是类型 {cmd:lf*} 的变体，放宽了对对数似然函数的要求，即必须在观测值上可求和。
因此，类型 {cmd:gf} 可以用于面板数据模型，并恢复稳健标准误差、聚类和调查数据调整的特性。
类型 {cmd:gf} 评估器的编写比类型 {cmd:lf*} 更困难。

{p 12 16 2}
3.  应仅与 {help mf_moptimize##def_technique:技术} {cmd:gn} 和 {cmd:nm} 一起使用。

{p 12 16 2}
4.  可与稳健、聚类和调查一起使用。

{marker syn_qstar}{...}
    {title:q 评估器的语法}

	{cmd:qeval}{cmd:(}{...}
{it:M}{cmd:,} {...}
{it:todo}{cmd:,} {...}
{it:b}{cmd:,} {...}
{it:r}{cmd:,} {it:S}{cmd:)}:

		{it:输入}:
			{it:M}:   问题定义
		     {it:todo}:   包含 0 或 1 的实数标量
			{it:b}:   系数向量
		{it:输出}:
			{it:r}:   {it:L x 1} 的独立元素
			{it:S}:   {it:L x K}，得分，{it:K} = 系数数量

{p 8 8 2}
注意：

{p 12 16 2}
1.  类型 {cmd:q} 适用于二次优化问题。
目标函数是 {it:f}() = {it:r'Wr}，其中 {it:r} 由 {it:qeval}{cmd:()} 返回，而
{it:W}
之前通过使用 
{cmd:moptimize_init_gnweightmatrix()} 进行设置。

{p 12 16 2}
2.  仅适用于 {help mf_moptimize##def_technique:技术} {cmd:gn} 和 {cmd:nm}。

{p 12 16 2}
3.  
始终返回 {it:r}，如果 {it:todo}==1，则返回 {it:S}。
对于类型 {cmd:q0}，{it:todo} 将始终为 0。
对于类型 {cmd:q1} 和 {cmd:q1debug}，{it:todo} 将为 0 或 1。
没有类型 {cmd:q2}。

{p 12 16 2}
4.  如果无法进行评估，则返回 {it:r} 包含缺失值，或 {it:r}={cmd:.}。

{marker init_gnweightmatrix}{...}
{p 8 8 2}
在初始化期间使用 {cmd:moptimize_init_gnweightmatrix()} 设置矩阵
{it:W}。

{p 12 16 2}
{cmd:moptimize_init_gnweightmatrix(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {it:{help mf_moptimize##def_W:W}}{cmd:)}
    设置实数矩阵 {it:W}： {it:L} {it:x} {it:L}，仅供类型
    {cmd:q} 评估器使用。目标函数
    是 {it:r}'{it:W}{it:r}。
    如果未设置 {it:W} 且通过使用 
    {bf:{help mf_moptimize##init_weight:moptimize_init_weight()}} 设置了观测权重 
    {it:w}，
    则 {it:W} = diag({it:w})。如果未设置 {it:w}，则 {it:W} 为
    单位矩阵。

{p 16 16 2}
{cmd:moptimize()} 在使用 {cmd:moptimize_init_gnweight()} 设置 {it:W} 时不会生成稳健的 VCE。


{marker def_l}{...}
{marker def_Z}{...}
{marker def_n_user}{...}
{marker syn_extra}{...}
{marker init_userinfo}{...}
    {title:向评估器传递额外信息}

{p 4 4 2}
除了评估器接收的参数之外，您还可以安排将额外信息发送给评估器。通过使用 {cmd:moptimize_init_userinfo()} 指定要发送的额外信息。

{p 8 12 2}
{cmd:moptimize_init_userinfo(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {it:l}{cmd:,} {it:Z}{cmd:)} 指定第 {it:l} 项 
    额外信息为 {it:Z}。 {it:l} 是实数标量。第 
    一项额外信息应为 1；第二项为 2；依此类推。 {it:Z} 可以是任何内容。不会制作 {it:Z} 的副本。  

{p 8 12 2}
{cmd:moptimize_init_nuserinfo(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {it:n_user}{cmd:)} 指定要发送的额外信息的总数量。设置 {it:n_user} 为可选；
    它将根据您发出的 {cmd:moptimize_init_userinfo()} 调用自动确定。

{p 4 4 2}
在评估器内部，您可以使用
{cmd:moptimize_util_userinfo()} 访问信息。

{p 8 12 2}
{cmd:moptimize_util_userinfo(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {it:l}{cmd:)} 返回由 {cmd:moptimize_init_userinfo()} 设置的 {it:Z}。


{marker syn_util}{...}
    {title:实用函数}

{p 4 4 2}
有各种实用函数，有助于编写 
{help mf_moptimize##syn_alleval:评估器} 和处理由 {bf:{help mf_moptimize##syn_results:moptimize_result_*()}} 函数返回的结果。

{marker util_depvar}{...}
{marker util_xb}{...}
{p 4 4 2}
第一组实用函数对编写评估器很有帮助，并且所有评估器都需要返回结果。

{p 8 12 2}
{cmd:moptimize_util_depvar(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {it:{help mf_moptimize##def_j:j}}{cmd:)}
    返回一个 {it:Nj} {it:x} 1 列向量，包含第 {it:j} 个因变量的值，
    该值由 {cmd:moptimize_init_depvar(}{it:M}{cmd:,}
    {it:j}{cmd:,} ...{cmd:)} 设置。

{p 8 12 2}
{cmd:moptimize_util_xb(}{it:{help mf_moptimize##def_M:M}}{cmd:,} 
    {it:{help mf_moptimize##def_b:b}}{cmd:,}
    {it:{help mf_moptimize##def_i:i}}{cmd:)} 返回 
    {it:Ni} {it:x} 1 列向量，包含 
    第 {it:i} 个 {help mf_moptimize##def_i:参数} 的值，通常为 
    {it:Xi*bi}' {cmd::+} {it:b0i}，但可能复杂得多
    {it:Xi*bi}' + {it:oi} + ln({it:ti}) {cmd::+} {it:b0i}。

{p 4 4 2}
一旦评估器的输入被处理，以下函数有助于进行评估器所需的计算。

{marker util_sum}{...}
{p 8 12 2}
{cmd:moptimize_util_sum(}{it:{help mf_moptimize##def_M:M}}{cmd:,} 
    {it:v}{cmd:)}
    返回列向量 {it:v} 的“总和”。
    此函数 
    用于评估器，要求您返回整体的目标函数值，而不是逐观测结果。
    通常，{cmd:moptimize_util_sum()} 返回 {cmd:sum(}{it:v}{cmd:)}, 
    但在您通过 
    {bf:{help mf_moptimize##init_weight:moptimize_init_weight()}} 设置权重时，
    或因使用 
    {bf:{help mf_moptimize##init_svy:moptimize_init_svy()}} 而有隐式 
    权重时，将返回适当加权的和。
    使用 {cmd:moptimize_util_sum()} 来对对数似然值进行求和。

{marker util_vecsum}{...}
{p 8 12 2}
{cmd:moptimize_util_vecsum(}{it:{help mf_moptimize##def_M:M}}{cmd:,} 
    {it:{help mf_moptimize##def_i:i}}{cmd:,}
    {it:s}{cmd:,} {it:value}{cmd:)}
    类似于 {cmd:moptimize_util_sum()}，但用于梯度。
    梯度定义为目标函数相对于系数 {it:bi} 的偏导数向量。某些评估器类型要求
    您的评估器能够返回此向量。
    但是，
    通常以参数而不是系数来编写评估器更容易，此函数处理
    参数梯度到所需系数梯度的映射。

{p 12 12 2}
    输入 {it:s} 是一个 
    {it:Ni} {it:x} 1 列向量，包含对于每个观测值的 d{it:f}/d{it:pi}。
    d{it:f}/d{it:pi} 是目标函数的偏导数，但相对于第 {it:i} 个参数，而不是第 {it:i} 个系数组。
    {cmd:moptimize_util_vecsum()} 将 {it:s} 传递并返回 
    1 {it:x} ({it:ki}+{it:ci}) 汇总梯度。
    此外，权重（如果有的话）也会被考虑在计算中。

{p 12 12 2}
    如果您有多个方程，您需要调用 
    {cmd:moptimize_util_vecsum()} {it:m} 次，每次针对每个 
    方程，然后将每个结果的总和拼接成一个向量。

{p 12 12 2}
    {it:value} 在 {cmd:moptimize_util_vecsum()}'s 计算中没有角色。
    然而，{it:value} 应该被指定为从 
    {cmd:moptimize_util_sum()} 获得的结果。如果这不方便，可以 
    将 {it:value} 设为任何非缺失值。如果从
    参数空间到向量空间的计算无法进行，或者如果您
    原始参数空间导数有任何缺失值，{it:value} 将被更改为缺失。
    请记住，当无法进行计算时，评估器必须返回
    目标函数的缺失值。因此将目标函数的值存储在 {it:value} 中 
    可确保您的评估器将在应当返回的地方返回缺失值。

{marker util_matsum}{...}
{p 8 12 2}
{cmd:moptimize_util_matsum(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
{it:{help mf_moptimize##def_i:i}}{cmd:,} 
{it:{help mf_moptimize##def_i2:i2}}{cmd:,} 
{it:s}{cmd:,}
{it:value}{cmd:)}
    与 {cmd:moptimize_util_vecsum()} 相似，但用于 
    海森（第二导数矩阵）。

{p 12 12 2}
    输入 {it:s} 是一个 {it:Ni} {it:x} 1 列向量，包含 
    d^2{it:f}/d{it:pi}d{it:pi2} 对于每个观测值。  
    {cmd:moptimize_util_matsum()} 返回 
    ({it:ki}+{it:ci}) {it:x} ({it:ki2}+{it:ci2}) 汇总海森。同时 
    权重（如果有的话）也是考虑在计算中的。

{p 12 12 2}
    如果您有 {it:m}>1 个方程，您将需要调用 
    {cmd:moptimize_util_matsum()} {it:m}*({it:m}+1)/2 次并 
    将结果组合成一个对称矩阵。

{p 12 12 2}
    {it:value} 在计算中没有角色，与在 
    {cmd:moptimize_util_vecsum()} 中的作用相同。

{marker util_matbysum}{...}
{p 8 12 2}
{cmd:moptimize_util_matbysum()} 是用于进行 
{cmd:moptimize_util_matsum()} 计算的额外助手，
在您拥有面板数据且只有在面板级别存在对数似然函数值的情况下。
{cmd:moptimize_util_matbysum(}{it:{help mf_moptimize##def_M:M}}{cmd:,} 
    {it:{help mf_moptimize##def_i:i}}{cmd:,} 
    {it:a}{cmd:,}
    {it:b}{cmd:,}
    {it:value}{cmd:)}
    用于进行对角计算， 
    {cmd:moptimize_util_matbysum(}{it:{help mf_moptimize##def_M:M}}{cmd:,} 
    {it:{help mf_moptimize##def_i:i}}{cmd:,} 
    {it:{help mf_moptimize##def_i:i2}}{cmd:,}
    {it:a}{cmd:,}
    {it:b}{cmd:,}
    {it:c}{cmd:,}
    {it:value}{cmd:)}
    用于进行非对角计算。

{p 12 12 2}
    这是一个高级主题；
    请参阅 {help mf_moptimize##GPP2010:Gould, Pitblado, and Poi (2010, 136-138)}
    的完整描述。
    在对参数空间到系数空间的结果翻译应用链规则时，{cmd:moptimize_util_matsum()} 
    可用于进行某些计算，而 
    {cmd:moptimize_util_matbysum()} 可用于完成其余的计算。
    {it:value} 无角色，与其在其他助手函数中的作用相同。
    {cmd:moptimize_util_matbysum()} 仅在设置 {it:by} 的情况下使用，
    这是通过 
    {cmd:moptimize_init_by(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {it:{help mf_moptimize##def_by:by}}{cmd:)} 实现的。  
    {cmd:moptimize_util_matbysum()} 只有在设置了 {it:by} 后才需要。
{* 在手册条目中放置 ML 书中第 118 页的公式 *}

{marker util_by}{...}
{p 8 12 2}
{cmd:moptimize_util_by()} 返回指向使用 {cmd:moptimize_init_by()} 设置的组标识符向量的指针。此向量可用于
{help mf_panelsetup_zh:panelsetup()} 进行面板级计算。

{marker _eq_indices}{...}
{p 4 4 2}
其他实用函数在评估器内部或外部都很有用。
其中一个更有用的是 {cmd:moptimize_util_eq_indices()}，它允许两个或三个参数。

{p 8 12 2}
{cmd:moptimize_util_eq_indices(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {it:{help mf_moptimize##def_i:i}}{cmd:)}
    返回一个 1 {it:x} 2 向量，可以与 
    {help m2_subscripts_zh:范围下标}
    一起使用，从任何 1 {it:x} {it:{help mf_moptimize##def_K:K}} 向量中提取 
    与第 {it:i} 个方程相关的部分，也就是说，
    从任何与
    {help mf_moptimize##def_K:完整系数向量} 兼容的向量中提取。

{p 8 12 2}
{cmd:moptimize_util_eq_indices(}{it:{help mf_moptimize##def_M:M}}{cmd:,}
    {it:{help mf_moptimize##def_i:i}}{cmd:,} 
    {it:{help mf_moptimize##def_i2:i2}}{cmd:)}
    返回一个 2 {it:x} 2 矩阵，可以与 
    {help m2_subscripts_zh:范围下标}
    一起使用，从任何 
    {it:{help mf_moptimize##def_K:K}} 
    {it:x}
    {it:{help mf_moptimize##def_K:K}} 
    矩阵中提取与第 {it:i} 和第 {it:i2} 个方程相关的部分，
    即从任何行和列与
    完整方差矩阵兼容的矩阵中提取。

{p 4 4 2}
例如，让 
{cmd:b} 是 1 {it:x} {it:K} 的完整系数向量，可能是通过传递给评估器获得的，
或者从 
{cmd:b} = {cmd:moptimize_result_coefs(}{it:M}{cmd:)} 获得。
然后 
{cmd:b[|moptimize_util_eq_indices(}{it:M}{cmd:,} {it:i}{cmd:)|]}
是第 {it:i} 个方程的 1 {it:x} ({it:ki}+{it:ci}) 系数向量。

{p 4 4 2}
让 {cmd:V} 是通过 
{cmd:V} = {cmd:moptimize_result_V(}{it:M}{cmd:)} 获得的 {it:K} {it:x} {it:K} 完整方差矩阵。
然后 
{cmd:V[|moptimize_util_eq_indices(}{it:M}{cmd:,} {it:i}{cmd:,} {it:i}{cmd:)|]}
是第 {it:i} 个方程的 ({it:ki}+{it:ci}) {it:x} ({it:ki}+{it:ci}) 方差矩阵。
{cmd:V[|moptimize_util_eq_indices(}{it:M}{cmd:,} {it:i}{cmd:,} {it:j}{cmd:)|]}
是第 {it:i} 个和第 {it:j} 个方程之间的 ({it:ki}+{it:ci}) {it:x} ({it:kj}+{it:cj}) 协方差矩阵。

{marker _query}{...}
{p 4 4 2}
最后，还有一个实用函数可以在您感到困惑时提供帮助： {cmd:moptimize_query()}。

{p 8 12 2}
{cmd:moptimize_query(}{it:{help mf_moptimize##def_M:M}}{cmd:)}
    以可读的形式显示您通过 {bf:{help mf_moptimize##syn_step2:moptimize_init_}{it:*}{cmd:()}} 函数设置的所有内容，
    以及系统的状态。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:moptimize()} 函数寻找系数
({bf:b}1, {bf:b}2, ..., {bf:b}{it:m})，以最大化或最小化 
{it:f}({bf:p}1, {bf:p}2, ..., {bf:p}{it:m})，其中 
{bf:p}{it:i} = {bf:X}{it:i}*{bf:b}{it:i}'，是 {bf:b}{it:i} 和数据的线性组合。
{cmd:moptimize()} 的用户编写 Mata 函数或 Stata 程序来评估 
{it:f}({bf:p}1, {bf:p}2, ..., {bf:p}{it:m})。
数据可以是 Mata 矩阵或当前存储在内存中的 Stata 数据集。

{p 4 4 2}
{cmd:moptimize()} 特别适用于获取最大似然模型、最小卡方模型、最小平方残差模型等的解。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 moptimize()Remarksandexamples:备忘和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按照以下标题进行排列：

	{help mf_moptimize##rem_relation:moptimize() 与 Stata 的 ml 及 Mata 的 optimize() 的关系}
	{help mf_moptimize##rem_math:moptimize() 问题的数学表述}
	{help mf_moptimize##rem_fill:从数学表述填充 moptimize()}
	{help mf_moptimize##rem_lf:类型 lf 评估器}
	{help mf_moptimize##rem_dlfgfq:类型 d、lf*、gf 和 q 评估器}
	{help mf_moptimize##rem_d:使用类型 d 的示例}
	{help mf_moptimize##rem_e:使用类型 lf* 的示例}


{marker rem_relation}{...}
{title:moptimize() 与 Stata 的 ml 及 Mata 的 optimize() 的关系}

{p 4 4 2}
{cmd:moptimize()} 是 Mata 和 Stata 的主要优化例程。  
这是 Stata 中大多数官方基于优化的估计器使用的例程。

{p 4 4 2}
尽管如此，Stata 的 {cmd:ml} 命令 -- 请参阅 {bf:{help ml_zh:[R] ml}} --
提供了大多数 Mata 的 {cmd:moptimize()} 的功能，而 {cmd:ml} 更易于使用。实际上，{cmd:ml}
使用 {cmd:moptimize()} 进行优化，而 {cmd:ml} 基本上只是提供一个更友好的接口的外壳。如果您有一个希望拟合的最大似然模型，
我们建议使用 {cmd:ml} 而不是 {cmd:moptimize()}。当您需要或希望在 Mata 环境下工作，或者希望实现适合某一类模型的专用系统时，
请使用 {cmd:moptimize()}。

{p 4 4 2}
还要注意 Mata 的 {cmd:optimize()} 函数；请参阅 
{bf:{help mf_optimize_zh:[M-5] optimize()}}。  {cmd:moptimize()} 找到系数
({bf:b}1, {bf:b}2, ..., {bf:b}{it:m})，最大化或最小化
{it:f}({bf:p}1, {bf:p}2, ..., {bf:p}{it:m})，其中 {bf:p}{it:i} =
{bf:X}{it:i}*{bf:b}{it:i}。
{cmd:optimize()} 处理问题的简化形式，即，找到常数 
({it:p}1, {it:p}2, ..., {it:p}{it:m})，最大化或最小化
{it:f}()。 {cmd:moptimize()}
是适合拟合 Weibull 模型的例程，但如果您只需要 
估计某些人群的 Weibull 分布的固定参数，使用 {cmd:moptimize()} 显得过度，使用 {cmd:optimize()} 将更方便。

{p 4 4 2}
这三个例程都是相关的。  Stata 的 {cmd:ml} 使用 {cmd:moptimize()}
执行数值工作。  {cmd:moptimize()} 又使用 {cmd:optimize()} 
执行某些计算，包括参数搜索。 
{cmd:optimize()} 并没有比其他功能差，只是它无法有效处理
参数由系数和数据的线性组合给定的模型。


{marker rem_math}{...}
{title:moptimize() 问题的数学表述}

{p 4 4 2}
我们以数学方式描述 {cmd:moptimize()} 所解决的问题
不仅仅是为了修复符号和简化交流，也是因为数学符号与 
{cmd:moptimize}{it:*}{cmd:()} 函数之间存在一一对应关系。只需使用以下符号书写您的问题，就可以明显看出您需要的 {cmd:moptimize}{it:*}{cmd:()} 函数及其参数。

{p 4 4 2}
在接下来的内容中，我们将简化数学。 例如，我们将声称 
{bf:p}{it:i} = {bf:X}{it:i}*{bf:b}{it:i} {cmd::+} {it:c}{it:i}，
而在语法部分，您将看到 
{bf:p}{it:i} = {bf:X}{it:i}*{bf:b}{it:i} + {bf:o}{it:i} + ln({bf:t}{it:i})
{cmd::+} {it:c}{it:i}。  在这里，我们省略了 {bf:o}{it:i} 和 ln({bf:t}{it:i})，因为
它们很少使用。 我们还将省略一些其他细节。
在之前的 
{it:{help mf_moptimize##syntax:语法}} 中的描述，则是全面且准确的描述。
我们还会稍微改变字体类型。 在语法部分，我们根据编程约定使用斜体。在以下部分中，我们将使用粗体表示矩阵和向量，使用斜体表示标量，以便您更容易理解数学。因此在本节中，我们将写
{bf:b}{it:i}，而在语法部分我们将写 {it:bi}；无论字体如何，它们的含义都是相同的。

{p 4 4 2}
{cmd:moptimize()} 查找系数 

        	{bf:b} = (({bf:b}1,{it:c}1), ({bf:b}2,{it:c}2) ..., ({bf:b}{it:m},{it:cm})) 

{p 4 4 2}
其中

		     {bf:b}1: 1 {it:x} {it:k}1,  {...}
{bf:b}2: 1 {it:x} {it:k}2,  {...}
...,   {...}
{bf:b}{it:m}: 1 {it:x} {it:km}
		     {it:c}1: 1 {it:x} 1,   {...}
{it:c}2: 1 {it:x} 1,   {...}
...,   {...}
{it:c}{it:m}: 1 {it:x} 1

{p 4 4 2}
最大化或最小化函数 

		{it:f}({bf:p}1, {bf:p}2; {bf:y}1, {bf:y}2, ..., {bf:y}{it:D})

{p 4 4 2}
其中

		     {bf:p}1 = {bf:X}1*{bf:b}1' {cmd::+} {it:c}1,{...}
{col 55}{bf:X}1: {it:N}1 {it:x} {it:k}1
		     {bf:p}2 = {bf:X}2*{bf:b}2' {cmd::+} {it:c}2,{...}
{col 55}{bf:X}2: {it:N}2 {it:x} {it:k}2
		     .
		     .
		     {bf:p}{it:m} = {bf:X}{it:m}*{bf:b}{it:m}' {cmd::+} {it:c}{it:m}

{p 4 4 2}
而 {bf:y}1, {bf:y}2, ..., {bf:y}{it:D} 的维度任意。

{p 4 4 2}
通常，{it:N}1 = {it:N}2 = ... = {it:N}{it:m}，并且模型在 {it:N} 个观测值的数据上进行拟合。类似地，列向量 {bf:y}1,
{bf:y}2, ..., {bf:y}{it:D} 通常被称为因变量，每个也有 {it:N} 个观测值。

{p 4 4 2}
作为例子，让我们以上述符号书写线性

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_moptimize.sthlp>}