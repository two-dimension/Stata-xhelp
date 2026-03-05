
{smcl}
{* *! version 1.1.11  10oct2017}{...}
{cmd:help mata moptimize()}{right:{help prdocumented_zh:previously documented}}
{hline}
{help moptimize_11:English Version}
{hline}
{* index optimization}{...}
{* index maximization}{...}
{* index minimization}{...}
{* index minimization}{...}
{* index Newton-Raphson method}{...}
{* index Davidon-Fletcher-Powell method}{...}
{* index Broyden-Fletcher-Goldfarb-Shanno method}{...}
{* index Berndt-Hall-Hall-Hausman method}{...}
{* index Nelder-Mead method}{...}
{* index Marquardt algorithm}{...}
{* index steepest descent (ascent)}{...}

{p 0 4 2}
{manlink M-5 moptimize()} {hline 2} 模型优化

{p 12 12 8}
{it}[与{bf:moptimize()}{bf:}的评估器类型相关的名称已在11版中改变。
本帮助文件记录了{cmd:moptimize()}的旧语法，因此可能对您没有兴趣。您不需要将旧do文件中的{cmd:moptimize()}调用转换为现代语法，因为Stata继续理解旧语法和新语法。 该帮助文件是为那些希望调试或理解旧代码的人提供的。点击{help mf_moptimize_zh:此处}查看现代{cmd:moptimize()}命令的帮助文件.]{rm}

{marker syntax}{...}
{title:语法}

{p 4 4 2}
{it}如果您是第一次阅读此条目，请跳到
{bf:{help moptimize_11##description:描述}}
和
{bf:{help moptimize_11##remarks:注释}}，特别是
{help moptimize_11##rem_math:数学问题的moptimize()陈述}
下的{bf:注释}.{rm}

{p 4 4 2}
语法分为以下标题:

	{help moptimize_11##syn_step1:步骤1：初始化}
	{help moptimize_11##syn_step2:步骤2：定义最大化或最小化问题}
	{help moptimize_11##syn_step3:步骤3：执行优化或执行一次函数评估}
	{help moptimize_11##syn_step4:步骤4：发布、显示或获取结果}

	{help moptimize_11##syn_stepall:可用于所有步骤的实用函数}

	{help moptimize_11##syn_M:定义M}
	{help moptimize_11##syn_sample:设置样本}
	{help moptimize_11##syn_dependent:指定因变量}
	{help moptimize_11##syn_independent:指定自变量}
	{help moptimize_11##syn_constraints:指定约束}
	{help moptimize_11##syn_weights:指定权重或调查数据}
	{help moptimize_11##syn_clusters:指定簇和面板}
	{help moptimize_11##syn_technique:指定优化技术}
	{help moptimize_11##syn_initial:指定初始值}
	{help moptimize_11##syn_one:执行一次目标函数的评估}
	{help moptimize_11##syn_opt:执行目标函数的优化}
	{help moptimize_11##syn_trace:跟踪优化}
	{help moptimize_11##syn_convergence:指定收敛标准}
	{help moptimize_11##syn_results:访问结果}
	{help moptimize_11##syn_ado_cleanup:Stata评估器}
	{help moptimize_11##syn_advanced:高级函数}

{p 4 4 2}
在语法图中，点击每个函数左侧的 [] 以了解更多关于该函数的信息。

{marker syn_step1}{...}
    {title:步骤1：初始化}

{col 6}{help moptimize_11##init:[]}{...}
{col 19}{...}
{it:{help moptimize_11##def_M:M}} {...}
{cmd:=} {...}
{cmd:moptimize_init()}

{marker syn_step2}{...}
    {title:步骤2：定义最大化或最小化问题}

{p 13 13 8}
{it}在每个函数中，最后一个参数是可选的。
如果指定，函数将设置该值并返回 {it:void}。
如果未指定，则不会进行任何变化，而是返回当前设置的值.{rm}

{col 6}{help moptimize_11##init_which:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_which(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{c -(}{cmd:"max"}|{cmd:"min"}{c )-}{cmd:)}

{col 6}{help moptimize_11##init_evaluator:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_evaluator(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{cmd:&}{it:functionname}{cmd:()}{cmd:)}

{col 6}{help moptimize_11##init_evaluator:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_evaluator(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{cmd:"}{it:programname}{cmd:"}{cmd:)}

{col 6}{help moptimize_11##init_evaluatortype:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_evaluatortype(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_evaluatortype:evaluatortype}}{cmd:)}

{col 6}{help moptimize_11##init_negH:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_negH(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}

{col 6}{help moptimize_11##init_touse:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_touse(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{cmd:"}{it:tousevarname}{cmd:")}

{col 6}{help moptimize_11##init_view:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_view(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{c -(}{cmd:"on"}|{cmd:"off"}{c )-}{cmd:)}

{col 6}{help moptimize_11##init_ndepvars:[]}{...}
{col 9}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_ndepvars(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_D:D}}{cmd:)}

{col 6}{help moptimize_11##init_depvar:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_depvar(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_j:j}}{cmd:,} {...}
{it:{help moptimize_11##def_y:y}}{cmd:)}

{col 6}{help moptimize_11##init_eq_n:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_eq_n(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_m:m}}{cmd:)}

{col 6}{help moptimize_11##syn_independent:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_eq_indepvars(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}{cmd:,} {...}
{it:{help moptimize_11##def_X:X}}{cmd:)}

{col 6}{help moptimize_11##syn_independent:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_eq_cons(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}{cmd:,} {...}
{c -(}{cmd:"on"}|{cmd:"off"}{c )-}{cmd:)}

{col 6}{help moptimize_11##syn_independent:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_eq_offset(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}{cmd:,} {...}
{it:{help moptimize_11##def_o:o}}{cmd:)}

{col 6}{help moptimize_11##syn_independent:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_eq_exposure(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}{cmd:,} {...}
{it:{help moptimize_11##def_t:t}}{cmd:)}

{col 6}{help moptimize_11##syn_independent:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_eq_name(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}{cmd:,} {...}
{it:{help moptimize_11##def_name:name}}{cmd:)}

{col 6}{help moptimize_11##syn_independent:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_eq_colnames(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}{cmd:,} {...}
{it:{help moptimize_11##def_names:names}}{cmd:)}

{col 6}{help moptimize_11##syn_initial:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_eq_coefs(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}{cmd:,} {...}
{it:{help moptimize_11##def_b0:b0}}{cmd:)}

{col 6}{help moptimize_11##syn_constraints:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_constraints(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_Cc:Cc}}{cmd:)}

{col 6}{help moptimize_11##init_search:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_search(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{c -(}{cmd:"on"}|{cmd:"off"}{c )-}{cmd:)}

{col 6}{help moptimize_11##init_search:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_search_random(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}

{col 6}{help moptimize_11##init_search:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_search_repeat(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_nr:nr}}{cmd:)}

{col 6}{help moptimize_11##init_search:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_search_bounds(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}{cmd:,} {...}
{it:{help moptimize_11##def_minmax:minmax}}{cmd:)} 

{col 6}{help moptimize_11##init_search:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_search_rescale(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{c -(}{cmd:"on"}|{cmd:"off"}{c )-}{cmd:)}

{col 6}{help moptimize_11##init_weight:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_weight(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_w:w}}{cmd:)}

{col 6}{help moptimize_11##init_weight:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_weighttype(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:weighttype}{cmd:)} 

{col 6}{help moptimize_11##init_cluster:[]}{...}
{col 9}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_cluster(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_c:c}}{cmd:)}

{col 6}{help moptimize_11##init_svy:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_svy(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}

{col 6}{help moptimize_11##init_by:[]}{...}
{col 9}{...}
{it:(可变)}{...}
{col 24}{...}
{cmd:moptimize_init_by(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:,} {...}
{it:{help moptimize_11##def_by:by}}{cmd:)} 

{marker syn_step3}{...}
    {title:步骤3：执行优化或执行一次函数评估}

{col 6}{help moptimize_11##syn_opt:[]}{...}
{col 9}{...}
{it:void}{...}
{col 24}{...}
{cmd:moptimize(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##syn_opt:[]}{...}
{col 9}{...}
{col 9}{...}
{it:real scalar}{...}
{col 23}{...}
{cmd:_moptimize(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##syn_one:[]}{...}
{col 9}{...}
{it:void}{...}
{col 24}{...}
{cmd:moptimize_evaluate(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##syn_one:[]}{...}
{col 9}{...}
{it:real scalar}{...}
{col 23}{...}
{cmd:_moptimize_evaluate(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}


{marker syn_step4}{...}
    {title:步骤4：发布、显示或获取结果}

{col 6}{help moptimize_11##result_post:[]}{...}
{col 9}{...}
{it:void}{...}
{col 24}{...}
{cmd:moptimize_result_post(}{...}
{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_vcetype:vcetype}}]{cmd:)}

{col 6}{help moptimize_11##result_display:[]}{...}
{col 9}{...}
{it:void}{...}
{col 24}{...}
{cmd:moptimize_result_display(}{...}
[{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_vcetype:vcetype}}]]{cmd:)}


{col 6}{help moptimize_11##result_value:[]}{...}
{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{cmd:moptimize_result_value(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##result_value0:[]}{...}
{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{cmd:moptimize_result_value0(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}


{col 6}{help moptimize_11##result_coefs:[]}{...}
{col 9}{...}
{it:real rowvector}{...}
{col 24}{...}
{cmd:moptimize_result_coefs(}{...}
{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}]{cmd:)}

{col 6}{help moptimize_11##result_colstripe:[]}{...}
{col 9}{...}
{it:string matrix}{...}
{col 24}{...}
{cmd:moptimize_result_colstripe(}{...}
{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}]{cmd:)}


{col 6}{help moptimize_11##result_scores:[]}{...}
{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{cmd:moptimize_result_scores(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##result_gradient:[]}{...}
{col 9}{...}
{it:real rowvector}{...}
{col 24}{...}
{cmd:moptimize_result_gradient(}{...}
{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}]{cmd:)}

{col 6}{help moptimize_11##result_Hessian:[]}{...}
{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{cmd:moptimize_result_Hessian(}{...}
{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}]{cmd:)}

{col 6}{help moptimize_11##result_V:[]}{...}
{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{cmd:moptimize_result_V(}{...}
{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}]{cmd:)}

{col 6}{help moptimize_11##result_Vtype:[]}{...}
{col 9}{...}
{it:string scalar}{...}
{col 24}{...}
{cmd:moptimize_result_Vtype(}{it:{help moptimize_11##def_M:M}}{cmd:)} 

{col 6}{help moptimize_11##result_V_oim:[]}{...}
{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{cmd:moptimize_result_V_oim(}{...}
{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}]{cmd:)}

{col 6}{help moptimize_11##result_V_opg:[]}{...}
{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{cmd:moptimize_result_V_opg(}{...}
{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}]{cmd:)}

{col 6}{help moptimize_11##result_V_robust:[]}{...}
{col 9}{...}
{it:real matrix}{...}
{col 24}{...}
{cmd:moptimize_result_V_robust(}{...}
{it:{help moptimize_11##def_M:M}} [{cmd:,} {...}
{it:{help moptimize_11##def_i:i}}]{cmd:)}



{col 6}{help moptimize_11##result_iterations:[]}{...}
{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{cmd:moptimize_result_iterations(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##result_converged:[]}{...}
{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{cmd:moptimize_result_converged(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##result_iterationlog:[]}{...}
{col 9}{...}
{it:real colvector}{...}
{col 24}{...}
{cmd:moptimize_result_iterationlog(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##result_evaluations:[]}{...}
{col 9}{...}
{it:real rowvector}{...}
{col 24}{...}
{cmd:moptimize_result_evaluations(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##result_errorcode:[]}{...}
{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{cmd:moptimize_result_errorcode(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{col 6}{help moptimize_11##result_errortext:[]}{...}
{col 9}{...}
{it:string scalar}{...}
{col 24}{...}
{cmd:moptimize_result_errortext(}{it:{help moptimize_11##def_M:M}}{cmd:)} 

{col 6}{help moptimize_11##result_returncode:[]}{...}
{col 9}{...}
{it:real scalar}{...}
{col 24}{...}
{cmd:moptimize_result_returncode(}{...}
{it:{help moptimize_11##def_M:M}}{cmd:)}

{pstd}
以下错误代码及其对应的Stata返回代码适用于{cmd:moptimize()}。
要查看其他错误代码及其对应的Stata返回代码，请查看 {help mf_optimize##error:{bf:[M-5] optimize}}。

           错误   返回
           代码    代码    错误文本
        {hline 70}
           400      1400   找不到可行值
           401      491    Stata程序评估器返回错误
           402      198    当评估器为Stata程序时需要视图
           403      198    Stata程序评估器需要一个touse变量
        {hline 70}

{marker syn_ado_cleanup}{...}
    {title:Stata评估器}

{p 4 4 2}
当您的评估器是一个Stata程序而不是Mata函数时，以下功能很有用。

{marker init_verbose}{...}
{p 8 12 2}
{cmd:moptimize_ado_cleanup(}{it:{help moptimize_11##def_M:M}}{cmd:)} 删除所有带有 {cmd:ML_} 前缀的全局宏。如果指定了权重变量，临时权重变量也会被删除。

{marker syn_advanced}{...}
    {title:高级函数}

{p 4 4 2}
这些函数其实并不算真正的高级函数，它们只是很少用到而已。

{marker init_verbose}{...}
{p 8 12 2}
{cmd:moptimize_init_verbose(}{it:{help moptimize_11##def_M:M}}{cmd:,} 
    {c -(}{cmd:"on"}|{cmd:"off"}{c )-}{cmd:)} 指定是否显示错误消息。默认是 {cmd:"on"}。
    
{marker init_evaluations}{...}
{p 8 12 2}
{cmd:moptimize_init_evaluations(}{it:{help moptimize_11##def_M:M}}{cmd:,} 
     {c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)} 指定是否统计评估器被调用的次数。默认是 {cmd:"off"}。

{marker result_evaluations}{...}
{p 8 12 2}
{cmd:moptimize_result_evaluations(}{it:{help moptimize_11##def_M:M}}{cmd:)}
    返回一个 1 {it:x} 3 的实数行向量，包含评估器被调用的次数，前提是
    {cmd:moptimize_init_evaluations()} 被设置为打开。
    内容是为了1) 计算目标函数，2) 计算目标函数及其一阶导数，3) 计算目标函数及其一阶和二阶导数而调用的次数。
    如果 {cmd:moptimize_init_evaluations()} 被关闭，则返回 (0,0,0)。

{marker def_evaluatortype}{...}
{marker syn_alleval}{...}
    {title:评估器的语法}

{p 8 8 2}
评估器是您编写的计算待优化函数的值的程序， 可选地计算该函数的一阶和二阶导数。您编写的评估器将由 {cmd:moptimize()} 函数调用。

{p 8 8 2}
评估器可以用五种风格编写，称为类型 {cmd:lf}、{cmd:d}、{cmd:e}、{cmd:v} 和 {cmd:q}。
{it:evaluatortype} 在 {cmd:moptimize_init_evaluatortype()} 中可选指定，指定您编写的评估器的风格。
允许的值如下：

{col 16}{it:evaluatortype}{col 32}描述
{col 16}{hline 60}
{col 16}{cmd:"lf"}{col 32}{it:function}{cmd:()} 返回 {it:N} {it:x} 1 列向量值

{col 16}{cmd:"d0"}{col 32}{it:function}{cmd:()} 返回标量值
{col 16}{cmd:"d1"}{col 32}同 {cmd:"d0"} 并返回梯度行向量
{col 16}{cmd:"d2"}{col 32}同 {cmd:"d1"} 并返回Hessian矩阵
{col 16}{cmd:"d1debug"}{col 32}同 {cmd:"d1"}但检查梯度
{col 16}{cmd:"d2debug"}{col 32}同 {cmd:"d2"}但检查梯度和Hessian

{col 16}{cmd:"e1"}{col 32}{it:function}{cmd:()} 返回标量值并返回
{col 32}           方程级得分矩阵
{col 16}{cmd:"e2"}{col 32}同 {cmd:"e1"} 并返回Hessian矩阵
{col 16}{cmd:"e1debug"}{col 32}同 {cmd:"e1"}但检查梯度
{col 16}{cmd:"e2debug"}{col 32}同 {cmd:"e2"}但检查梯度和Hessian

{col 16}{cmd:"v0"}{col 32}{it:function}{cmd:()} 返回 {it:N} {it:x} 1 列向量值
{col 16}{cmd:"v1"}{col 32}同 {cmd:"v0"} 并返回得分矩阵
{col 16}{cmd:"v2"}{col 32}同 {cmd:"v1"} 并返回Hessian矩阵
{col 16}{cmd:"v1debug"}{col 32}同 {cmd:"v1"}但检查梯度
{col 16}{cmd:"v2debug"}{col 32}同 {cmd:"v2"}但检查梯度和Hessian

{col 16}{cmd:"q0"}{col 32}{it:function}{cmd:()} 返回列向量值
{col 16}{cmd:"q1"}{col 32}同 {cmd:"q0"} 并返回得分矩阵
{col 16}{cmd:"q1debug"}{col 32}同 {cmd:"q1"}但检查梯度
{col 16}{hline 60}
{col 16}如果未设置，默认是 {cmd:"lf"}。
{col 16}{cmd:"q"} 评估器与技术 {cmd:"gn"} 一起使用。
返回的梯度是 {...}
1 {it:x} {...}
{it:{help moptimize_11##def_K:K}} {...}
行向量。
返回的Hessian是 {...}
{it:{help moptimize_11##def_K:K}} {...}
{it:x} {...}
{it:{help moptimize_11##def_K:K}} {...}
矩阵。

{p 8 8 2}
下面概述了每种评估器类型的示例。

{p 8 8 2}
您必须告诉 {cmd:moptimize()} 您评估器的身份和类型，您可以通过使用 {cmd:moptimize_init_evaluator()} 和 
{cmd:moptimize_init_evaluatortype()} 函数来实现。

{marker init_evaluator}{...}
{marker init_evaluatortype}{...}
{p 12 16 2}
{cmd:moptimize_init_evaluator(}{it:{help moptimize_11##def_M:M}}{cmd:,}
    {cmd:&}{it:functionname}{cmd:())}
    设置您在Mata中编写的评估器函数的身份。

{p 12 16 2}
{cmd:moptimize_init_evaluator(}{it:{help moptimize_11##def_M:M}}{cmd:,}
    {cmd:"}{it:programname}{cmd:")} 
    设置您在Stata中编写的评估程序的身份。

{p 12 16 2} 
{cmd:moptimize_init_evaluatortype(}{it:{help moptimize_11##def_M:M}}{cmd:,}
    {it:evaluatortype}{cmd:)} 通知
    {cmd:moptimize()} 您编写的评估器的风格。
    {it:evaluatortype} 是来自上表的字符串标量。默认是
    {cmd:"lf"}。

{marker init_negH}{...}
{p 12 16 2}
{cmd:moptimize_init_negH(}{it:{help moptimize_11##def_M:M}}{cmd:,} 
    {c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}
    设置您评估器返回 {it:H} 还是 -{it:H}，即Hessian或Hessian的负值， 如果它根本返回一个Hessian。这是为了与Stata的{bf:{help ml_zh:ml}}命令的前一个版本的向后兼容性。现代评估器返回 {it:H}。 默认是 {cmd:"off"}。

{marker syn_lf}{...}
    {title:类型lf评估器的语法}
{col 22}__
        {cmd:lfeval}{cmd:(}{it:{ul:M}}{cmd:,} {it:{ul:b}}{cmd:,} {it:fv}{cmd:)}:

		{it:输入}:
			{it:M}:    问题定义
			{it:b}:    系数向量
		{it:输出}:
		       {it:fv}:    {it:N x} 1, {it:N} = 观察数量

{p 8 8 2}
注意:

{p 12 16 2}
1.  目标函数是 {it:f}() = {cmd:colsum(}{it:fv}{cmd:)}。

{p 12 16 2}
2.
在目标函数为对数似然函数的情况下，对数似然值必须对观察值可求和。

{p 12 16 2}
3.
仅与除{cmd:gn}以外的任何{help moptimize_11##def_technique:技术}一起使用。

{p 12 16 2}
4.
可与稳健、聚类和调查一起使用。

{p 12 16 2}
5.
如果评估无法进行，返回 {it:fv} 会包含缺失值 ({it:fv}={cmd:.})。



{marker syn_dstar}{...}
    {title:类型d评估器的语法}
{col 27}__  _  _
	{cmd:deval}{cmd:(}{...}
{it:{ul:M}}{cmd:,} {...}
{it:{ul:todo}}{cmd:,} {...}
{it:{ul:b}}{cmd:,} {...}
{it:fv}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}:

		{it:inputs}:
			{it:M}:    问题定义
		     {it:todo}:    实数标量，包含0、1或2
			{it:b}:    系数向量
		{it:outputs}:
		       {it:fv}:    实数标量
			{it:g}:    1 {it:x K}，梯度，{it:K} = 系数数量
			{it:H}:    {it:K x K}，Hessian

{p 8 8 2}
注意:

{p 12 16 2}
1.  
目标函数是 {it:f}() = {it:fv}。

{p 12 16 2}
2.  适用于任何对数似然函数或任何函数。

{p 12 16 2}
3.
适用于除{cmd:gn}和{cmd:bhhh}以外的任何{help moptimize_11##def_technique:技术}。

{p 12 16 2}
4.
无法与稳健、聚类和调查一起使用。

{p 12 16 2}
5.  
{it:deval}{cmd:()} 必须始终填充 {it:fv}，并在 {it:todo}>=1 时填充 {it:g}，在 {it:todo}==2 时填充 {it:H}。
对于类型 {cmd:d0}， {it:todo} 将始终为 0。
对于类型 {cmd:d1} 和 {cmd:d1debug}， {it:todo} 将为 0 或 1。
对于类型 {cmd:d2} 和 {cmd:d2debug}， {it:todo} 将为 0、1 或 2。

{p 12 16 2}
6. 
如果评估无法进行，则返回 {it:fv}={cmd:.}。


{marker syn_estar}{...}
    {title:类型e评估器的语法}
{col 27}__  _  _
	{cmd:eeval}{cmd:(}{...}
{it:{ul:M}}{cmd:,} {...}
{it:{ul:todo}}{cmd:,} {...}
{it:{ul:b}}{cmd:,} {...}
{it:fv}{cmd:,} {it:S}{cmd:,} {it:H}{cmd:)}:

		{it:inputs}:
			{it:M}:    问题定义
		     {it:todo}:    实数标量，包含0、1或2
			{it:b}:    系数向量
		{it:outputs}:
		       {it:fv}:    实数标量
			{it:S}:    {it:N x m}，得分， {it:m} = 参数数量
			{it:H}:    {it:K x K}，Hessian，{it:K} = 系数数量


{p 8 8 2}
注意:

{p 12 16 2}
1.  
目标函数是 {it:f}() = {it:fv}。

{p 12 16 2}
2. 类型 {cmd:e} 是类型 {cmd:d} 的变体，允许稳健、聚类和调查。
尽管 {cmd:e} 可以与任意函数一起使用，但其设计是用于对数似然函数，
并且对数似然值可在观察值上求和。

{p 12 16 2}
3.
适用于除{cmd:gn}以外的任何{help moptimize_11##def_technique:技术}。

{p 12 16 2}
4.
可以与稳健、聚类和调查一起使用。

{p 12 16 2}
5. 
始终返回 {it:fv}，如果 {it:todo}>=1，则返回 {it:S}，如果 {it:todo}==2，则返回 {it:H}。
对于类型 {cmd:e1} 和 {cmd:e1debug}， {it:todo} 将为 0 或 1。
对于类型 {cmd:e2} 和 {cmd:e2debug}， {it:todo} 将为 0、1 或 2。
没有类型 {cmd:e0}。

{marker syn_vstar}{...}
    {title:类型v评估器的语法}
{col 27}__  _  _
	{cmd:veval}{cmd:(}{...}
{it:{ul:M}}{cmd:,} {...}
{it:{ul:todo}}{cmd:,} {...}
{it:{ul:b}}{cmd:,} {...}
{it:fv}{cmd:,} {it:S}{cmd:,} {it:H}{cmd:)}:

		{it:inputs}:
			{it:M}:    问题定义
		     {it:todo}:    实数标量，仅包含0或1
			{it:b}:    系数向量
		{it:outputs}:
			{it:fv}:    {it:L x 1}，值，{it:L} = 独立元素的数量
			{it:S}:    {it:L x K}，得分，{it:K} = 系数的数量
			{it:H}:    {it:K x K}，Hessian

{p 8 8 2}
注意:

{p 12 16 2}
1.  目标函数是 {it:f}() = {cmd:colsum(}{it:fv}{cmd:)}。

{p 12 16 2}
2. 类型 {cmd:v} 是类型 {cmd:e} 的变化形式，放宽了对数似然函数可在观察值上求和的要求。
因此，类型 {cmd:v} 可以与面板数据模型一起使用，并恢复稳健标准误、聚类和调查数据调整的特性。
然而，类型 {cmd:v} 评估器编写起来比类型 {cmd:e} 评估器更具挑战性。

{marker syn_qstar}{...}
{marker def_W}{...}
{marker def_L}{...}
    {title:类型q评估器的语法}
{col 27}_  _ 
	{cmd:qeval}{cmd:(}{...}
{it:{ul:M}}{cmd:,} {...}
{it:{ul:todo}}{cmd:,} {...}
{it:{ul:b}}{cmd:,} {...}
{it:r}{cmd:,} {it:S}{cmd:)}:

		{it:inputs}:
			{it:M}:    问题定义
		     {it:todo}:    实数标量，仅包含0或1
			{it:b}:    系数向量
		{it:outputs}:
			{it:r}:    {it:L x 1}的独立元素
			{it:S}:    {it:L x m}，得分，{it:m} = 参数数量

{p 8 8 2}
注意:

{p 12 16 2}
1.
类型 {cmd:q} 适用于二次优化。
您要么需要它，然后只有类型 {cmd:q} 有效，要么不需要它。

{p 12 16 2}
2.
始终返回 {it:r} 并且如果 {it:todo}==1 则返回 {it:S}。

{p 12 16 2}
3. 
类型 {cmd:q0} 将始终返回 0。
对于类型 {cmd:q1} 和 {cmd:q1debug}， {it:todo} 将为 0 或 1。
没有类型 {cmd:q2}。

{p 12 16 2}
4.
如果评估无法进行则返回 {it:r} 包含缺失值，或 {it:r}={cmd:.}。

{marker init_gnweightmatrix}{...}
{p 8 8 2}
在初始化期间使用 {cmd:moptimize_init_gnweightmatrix()} 来设置矩阵 {it:W}。

{p 12 16 2}
{cmd:moptimize_init_gnweightmatrix(}{it:{help moptimize_11##def_M:M}}{cmd:,}
    {it:{help moptimize_11##def_W:W}}{cmd:)}
    设置实数矩阵 {it:W}: {it:L} {it:x} {it:L}，只被类型 {cmd:q} 评估器使用。
    目标函数是 {it:r}'{it:W}{it:r}。
    如果未设置 {it:W}，并且如果使用
    {bf:{help moptimize_11##init_weight:moptimize_init_weight()} 避免使用观察权重}，则 {it:W} = diag({it:w})。
    如果未设置 {it:w}，则 {it:W} 是单位矩阵。

{p 16 16 2}
使用 {cmd:moptimize_init_gnweight()} 设置 {it:W} 时，{cmd:moptimize()} 不生成稳健的 VCE。


{marker def_l}{...}
{marker def_Z}{...}
{marker def_n_user}{...}
{marker syn_extra}{...}
{marker init_userinfo}{...}
    {title:将额外信息传递给评估器}

{p 4 4 2}
除了评估器接收的参数外，您可以安排发送额外的信息给评估器。通过使用 {cmd:moptimize_init_userinfo()} 指定要发送的额外信息。

{p 8 12 2}
{cmd:moptimize_init_userinfo(}{it:{help moptimize_11##def_M:M}}{cmd:,}
    {it:l}{cmd:,} {it:Z}{cmd:)} 指定第 {it:l} 个额外信息是 {it:Z}。{it:l} 是一个实数标量。
第一个额外信息应为 1；第二个额外信息应为 2；依此类推。
{it:Z} 可以是任何事物。没对{it:Z} 进行复制。

{p 8 12 2}
{cmd:moptimize_init_nuserinfo(}{it:{help moptimize_11##def_M:M}}{cmd:,}
    {it:n_user}{cmd:)} 指定要发送的额外信息的总数。设置 {it:n_user} 是可选的；
它将在您发出的 {cmd:moptimize_init_userinfo()} 调用中自动确定。

{p 4 4 2}
在评估器内部，您可以使用 {cmd:moptimize_util_userinfo()} 访问这些信息。

{p 8 12 2}
{cmd:moptimize_util_userinfo(}{it:{help moptimize_11##def_M:M}}{cmd:,}
    {it:l}{cmd:)} 返回由 {cmd:moptimize_init_userinfo()} 设置的 {it:Z}。

{marker syn_util}{...}
    {title:实用函数}

{p 4 4 2}
有多种实用函数在编写 {help moptimize_11##syn_alleval:评估器} 和处理 {bf:{help moptimize_11##syn_results:moptimize_result_*()}} 函数返回的结果时非常有用。

{marker util_depvar}{...}
{marker util_xb}{...}
{p 4 4 2}
第一组实用函数在编写评估器时非常有用，且返回所有评估器所需的结果。

{p 8 12 2}
{cmd:moptimize_util_depvar(}{it:{help moptimize_11##def_M:M}}{cmd:,}
    {it:{help moptimize_11##def_j:j}}{cmd:)}
    返回一个 {it:Nj} {it:x} 1 列向量，包含第 {it:j} 个因变量的值，这些值是由
    {cmd:moptimize_init_depvar(}{it:M}{cmd:,} {it:j}{cmd:,} ...{cmd:)} 设置的。

{p 8 12 2}
{cmd:moptimize_util_xb(}{it:{help moptimize_11##def_M:M}}{cmd:,} 
    {it:{help moptimize_11##def_b:b}}{cmd:,}
    {it:{help moptimize_11##def_i:i}}{cmd:)} 返回
    {it:Ni} {it:x} 1 列向量，包含第 {it:i} 个 {help moptimize_11##def_i:参数} 的值，
    通常为 
    {it:Xi*bi}' {cmd::+} {it:b0i}，但可能复杂为 
    {it:Xi*bi}' + {it:oi} + ln({it:ti}) {cmd::+} {it:b0i}。

{p 4 4 2}
处理完评估器的输入后，以下函数能帮助完成评估器所需的计算。

{marker util_sum}{...}
{p 8 12 2}
{cmd:moptimize_util_sum(}{it:{help moptimize_11##def_M:M}}{cmd:,} 
    {it:v}{cmd:)}
    返回列向量 {it:v} 的“总和”。
    此功能用于需要返回整体目标函数值而不是逐个观察结果的评估器。
    通常，
    {cmd:moptimize_util_sum()} 返回 {cmd:sum(}{it:v}{cmd:)}， 
    但在您通过 {bf:{help moptimize_11##init_weight:moptimize_init_weight()}} 指定权重 
    情况下，或由于使用了 
    {bf:{help moptimize_11##init_svy:moptimize_init_svy()} 的隐含权重}， 
    将返回相应加权总和。
    使用 {cmd:moptimize_util_sum()} 来对对数似然值进行求和。

{marker util_vecsum}{...}
{p 8 12 2}
{cmd:moptimize_util_vecsum(}{it:{help moptimize_11##def_M:M}}{cmd:,} 
    {it:{help moptimize_11##def_i:i}}{cmd:,}
    {it:s}{cmd:,} {it:value}{cmd:)}
    类似于 {cmd:moptimize_util_sum()}，但用于梯度。
    梯度被定义为目标函数相对于系数 {it:bi} 的偏导数向量。某些评估器类型要求您的评估器能够返回这个向量。
    尽管如此，
    通常编写评估器时使用参数而不是系数，此功能可处理从参数梯度到所需系数梯度的映射。

{p 12 12 2}
    输入 {it:s} 是包含 d{it:f}/d{it:pi} 的 {it:Ni} {it:x} 1 列向量。
    d{it:f}/d{it:pi} 是目标函数的偏导数，但相对于第 {it:i} 个参数而不是第 {it:i} 个系数集。
    {cmd:moptimize_util_vecsum()} 采用 {it:s} 并返回 
    1 {it:x} ({it:ki}+{it:ci}) 的和梯度。
    此外，如果有权重，它也被纳入计算中。

{p 12 12 2}
    如果您有多个方程，您将需要调用 {cmd:moptimize_util_vecsum()} {it:m} 次，每次针对每个方程，然后将单个结果连接成一个向量。

{p 12 12 2}
    {it:value} 在 {cmd:moptimize_util_vecsum()}'s 计算中没有作用。
    然而，{it:value} 应该指定为从 {cmd:moptimize_util_sum()} 获得的结果。如果那样不方便，可以将 {it:value} 的值设置为任何非缺失值。
    如果从参数空间到向量空间的计算无法执行，或者如果您原始参数空间的导数具有任何缺失值，则 {it:value} 将被更改为缺失值。31
    请记住，当无法进行计算时，评估器应返回目标函数的缺失值。
    因此将目标函数的值存储在 {it:value} 中可确保您的评估器在应返回缺失时将返回缺失值。

{marker util_matsum}{...}
{p 8 12 2}
{cmd:moptimize_util_matsum(}{it:{help moptimize_11##def_M:M}}{cmd:,}
{it:{help moptimize_11##def_i:i}}{cmd:,} 
{it:{help moptimize_11##def_i2:i2}}{cmd:,} 
{it:s}{cmd:,}
{it:value}{cmd:)}
    与 {cmd:moptimize_util_vecsum()} 类似，但用于 Hessians（第二导数矩阵）。

{p 12 12 2}
    输入 {it:s} 是包含 d^2{it:f}/d{it:pi}d{it:pi2} 的 {it:Ni} {it:x} 1 列向量。 
    {cmd:moptimize_util_matsum()} 返回 ({it:ki}+{it:ci}) {it:x} ({it:ki2}+{it:ci2}) 和 Hessian。此外，如果有权重，其也会被纳入计算。

{p 12 12 2}
    如果您有 {it:m}>1 的方程，您需要调用 
    {cmd:moptimize_util_matsum()} {it:m}*({it:m}+1)/2 次，然后将结果合并成一个对称矩阵。

{p 12 12 2}
    {it:value} 在计算中没有作用，且形式与其他辅助函数相同。
{marker util_matbysum}{...}
{p 8 12 2}
{cmd:moptimize_util_matbysum()} 是一种额外的辅助工具，用于在您拥有面板数据且对数似然函数的值只存在于面板级别的情况下进行 {cmd:moptimize_util_matsum()} 的计算。
{cmd:moptimize_util_matbysum(}{it:{help moptimize_11##def_M:M}}{cmd:,} 
    {it:{help moptimize_11##def_i:i}}{cmd:,} 
    {it:a}{cmd:,}
    {it:b}{cmd:,}
    {it:value}{cmd:)}
    用于创建对角计算，而 
    {cmd:moptimize_util_matbysum(}{it:{help moptimize_11##def_M:M}}{cmd:,} 
    {it:{help moptimize_11##def_i:i}}{cmd:,} 
    {it:{help moptimize_11##def_i:i2}}{cmd:,}
    {it:a}{cmd:,}
    {it:b}{cmd:,}
    {it:c}{cmd:)}
    用于创建非对角计算。

{p 12 12 2}
    这是一个高级主题；
    请参见 Gould、Pitblado 和 Sribney(2006, 117-119) 获取详细描述。
    在应用链式法则将结果从参数空间翻译到系数空间时，{cmd:moptimize_util_matsum()} 有助于某些计算，而 
    {cmd:moptimize_util_matbysum()} 可用于剩余计算。
    {it:value} 在其他辅助函数中的作用没有变化。
    {cmd:moptimize_util_matbysum()} 有时在 {it:by} 被设置的情况下使用， 通过 
    {cmd:moptimize_init_by(}{it:{help moptimize_11##def_M:M}}{cmd:,}
    {it:{help moptimize_11##def_by:by}}{cmd:)} 设置。
    {cmd:moptimize_util_matbysum()} 只有在设置 {it:by} 时才可用。

{marker _eq_indices}{...}
{p 4 4 2}
最后，还有一个实用函数可能在您感到困惑时有帮助：{cmd:moptimize_query()}。

{p 8 12 2}
{cmd:moptimize_query(}{it:{help moptimize_11##def_M:M}}{cmd:)}
    以可读的形式显示您已通过 
    {bf:{help moptimize_11##syn_step2:moptimize_init_}{it:*}{cmd:()}} 函数设置的所有内容，
    以及系统的状态。

{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:moptimize()} 函数寻找系数
({bf:b}1, {bf:b}2, ..., {bf:b}{it:m}) 最大化或最小化
{it:f}({bf:p}1, {bf:p}2, ..., {bf:p}{it:m})，其中
{bf:p}{it:i} = {bf:X}{it:i}*{bf:b}{it:i}'，是
{bf:b}{it:i} 和数据的线性组合。
{cmd:moptimize()} 的用户编写一个 Mata 函数或 Stata 程序来评估 
{it:f}({bf:p}1, {bf:p}2, ..., {bf:p}{it:m})。
数据可以在 Mata 矩阵中或是在当前内存中居住的 Stata 数据集中。 

{p 4 4 2}
{cmd:moptimize()} 在获得最大似然模型、最小卡方模型、最小平方残差模型等问题的解决方案时尤其有用。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help moptimize_11##rem_relation:moptimize()与Stata的ml及Mata的optimize()的关系}
	{help moptimize_11##rem_math:moptimize()问题的数学陈述}
	{help moptimize_11##rem_fill:从数学陈述填充moptimize()}
	{help moptimize_11##rem_lf:类型lf评估器}
	{help moptimize_11##rem_devq:类型d、e、v和q评估器}
	{help moptimize_11##rem_d:使用类型d的示例}
	{help moptimize_11##rem_e:使用类型e的示例}

{marker rem_relation}{...}
{title:moptimize()与Stata的ml和Mata的optimize()的关系}

{p 4 4 2}
{cmd:moptimize()} 是Mata和Stata的首选优化例程。
这是Stata中大多数官方基于优化的估计器所使用的例程。

{p 4 4 2}
注意，Stata的{cmd:ml}命令——请参见{bf:{help ml_zh:[R] ml}}——提供了Mata的{cmd:moptimize()}的
大多数功能，并且 {cmd:ml} 更容易使用。实际上，{cmd:ml} 使用 {cmd:moptimize()}
执行优化，而 {cmd:ml} 基本上只是提供一个更友好接口的外壳。如果您要拟合一个最大似然模型，建议您使用 {cmd:ml} 而不是 {cmd:moptimize()}。当您需要或希望在Mata环境中工作或希望实现一种特殊的拟合模型类别的系统时，请使用 {cmd:moptimize()}。

{p 4 4 2}
另请注意Mata的 {cmd:optimize()} 函数；请参见 {bf:{help mf_optimize_zh:[M-4] optimize()}}。
{cmd:moptimize()} 找到系数
({bf:b}1, {bf:b}2, ..., {bf:b}{it:m}) 最大化或最小化
{it:f}({bf:p}1, {bf:p}2, ..., {bf:p}{it:m})， 其中 {bf:p}{it:i} = 
{bf:X}{it:i}*{bf:b}{it:i}。
{cmd:optimize()} 处理问题的简化形式，即寻找常数 
({it:p}1, {it:p}2, ..., {it:p}{it:m}）来最大化或最小化
{it:f}()。{cmd:moptimize()} 是拟合Weibull模型的适当例程，但如果您只需估算Weibull分布某些总体的固定参数，{cmd:moptimize()} 就过于繁琐，{cmd:optimize()} 将更易于使用。

{p 4 4 2}
这三个例程都是相关的。Stata的 {cmd:ml} 使用 {cmd:moptimize()} 来执行数值工作。{cmd:moptimize()} 又利用 {cmd:optimize()} 执行某些计算，包括寻求参数。
没有任何一个例程劣于另一个，除了它无法有效处理参数由系数和数据的线性组合给定的模型。

{marker rem_math}{...}
{title:moptimize()问题的数学陈述}

{p 4 4 2}
我们在这里仅为个人需要次数之一而通过数学陈述并非仅仅是为了固定符号和简化交流，而是因为在数学符号与{cmd:moptimize}{it:*}{cmd:()}函数之间存在一对一的对应关系。只需用以下符号编写问题，即可明显得出您所需的{cmd:moptimize}{it:*}{cmd:()}函数及其参数应当什么样。

{p 4 4 2}
在接下来的部分中，我们将简化数学。例如，我们将提到
{bf:p}{it:i} = {bf:X}{it:i}*{bf:b}{it:i} {cmd::+} {it:c}{it:i}，
而在语法部分，您将看到
{bf:p}{it:i} = {bf:X}{it:i}*{bf:b}{it:i} + {bf:o}{it:i} + ln({bf:t}{it:i})
{cmd::+} {it:c}{it:i}。在此，我们省略{bf:o}{it:i}和ln({bf:t}{it:i}），
因为它们很少被使用。我们也会省略一些其他细节。在上述的 {bf:语法} 部分中，问题的完整和准确陈述会出现。
在语法部分，我们用意遵循编程约定以斜体字表示。在以下部分，我们将用粗体字表示矩阵和向量，斜体字表示标量，以便于您更轻松地跟随数学。因此在该部分中，我们将写{bf:b}{it:i}，
而在语法部分，我们将写 {it:bi}；无论字体，二者的含义均相同。

{p 4 4 2}
{cmd:moptimize()} 函数找到系数 

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
		     {bf:p}{it:m} = {bf:X}{it:m}*{bf:b}{it:m}' {cmd::+} {it:c}m
{col 55}{bf:X}{it:m}: {it:N}{it:m} {it:x} {it:k}{it:m}

{p 4 4 2}
以及 {bf:y}1，{bf:y}2，...，{bf:y}{it:D} 是任意维度。

{p 4 4 2}
通常， {it:N}1 = {it:N}2 = ... = {it:N}{it:m}，并且模型拟合在 {it:N} 观察数据上。
同样，列向量 {bf:y}1，{bf:y}2，...，{bf:y}{it:D} 通常称为依赖变量，每个也含有 {it:N} 观察数据。

{p 4 4 2}
例如，让我们用上述符号写出线性回归的最大似然估计器。我们首先像通常那样陈述问题但是用 Mata 风格表示：

{p 12 12 2}
给定数据 {bf:y}: {it:N} {it:x} 1 和 {bf:X}: {it:N x k}，
获取 
(({bf:b},{it:c}), {it:s}^2) 以拟合 

			{bf:y} = {bf:X}*{bf:b}' {cmd::+} {it:c} + {bf:u}

{p 12 12 2}
其中 {bf:u} 的元素分布 {it:N}(0, {it:s}^2)。
对数似然函数为

		lnL = Sum_j {cmd:ln(normalden(}{bf:y}_{it:j}-({bf:X}_{it:j}*{bf:b}'{cmd::+}{it:c}){cmd:,} 0{cmd:,} {cmd:sqrt(}{it:s}^2{cmd:)))}

{p 12 12 2}
其中 {cmd:normalden(}{it:x}{cmd:,} {it:mean}{cmd:,} {it:sd}{cmd:)} 
返回指定均值和标准差的高斯正态分布在 {it:x} 处的密度；参见 {bf:{help mf_normal_zh:[M-4] normal()}}。

{p 4 4 2}
上述是用{cmd:moptimize()}语法描述的一个二参数或等价二方程模型。
可能有许多系数，但似然函数可以用两个参数表示，即 {bf:p}1 = {bf:X}*{bf:b}1' {cmd::+} {it:c}1 和 
{bf:p}2 = {it:s}^2。以下是问题的 {cmd:moptimize()} 表示法：

{p 12 12 2}
找到系数

        	{bf:b} = (({bf:b}1,{it:c}1), ({bf:c}2))

{p 12 12 2}
其中

		     {bf:b}1: 1 {it:x} {it:k}
		     {it:c}1: 1 {it:x} 1,   {...}
{it:c}2: 1 {it:x} 1

{p 12 12 2}
最大化

		{it:f}({bf:p}1, {bf:p}2; {bf:y}) = {...}
  Sum {cmd:ln(normalden(}{bf:y}-{bf:p}1{cmd:,} 0{cmd:,} {cmd:sqrt(}{bf:p}2{cmd:))}

{p 12 12 2}
其中

		     {bf:p}1 = {bf:X}*{bf:b}1' {cmd::+} {it:c}1,{...}
{col 55}{bf:X}: {it:N} {it:x} {it:k}
		     {bf:p}2 = {it:c}2

{p 12 12 2}
以及 {it:y} 是 {it:N} {it:x} 1。

{p 4 4 2}
注意，在这种符号中，回归系数 ({bf:b}1, {it:c}1) 扮演了次要角色，也就是说，它们用来确定 {bf:p}1。
也就是说，需优化的函数 {it:f}()——这里是对数似然函数——是用 {bf:p}1 和 {bf:p}2 表示的。
您将编写的评估器程序将以 {bf:p}1 和 {bf:p}2 为基础，因此抽象化了拟合的特定回归模型。
无论回归是 mpg 与 weight 的关系，还是 log income 与 age、education 和 experience 的关系，
用于计算 {it:f}() 的程序将始终保持不变。
唯一会改变的是 {bf:y} 和 {bf:X} 的定义，您将分别将其通知给 
{cmd:moptimize()}。

{p 4 4 2}
这种安排还有另一个好处。我们可以轻松概括线性回归，而无需编写新代码。注意，方差 {it:s}^2 给出为 {bf:p}2，而我们当前有 {bf:p}2 = {it:c}2，即一个常数。
{cmd:moptimize()} 允许参数为常数，但也允许由线性组合给出。因此，与其定义 {bf:p}2 = {it:c}2，不如定义 {bf:p}2 = {bf:X}2*{bf:b}2' {cmd::+} {it:c}2。
如果我们这样做，我们就会有第二个线性方程，该方程使得方差可以逐个观察值变化。就 {cmd:moptimize()} 而言，该问题与原始问题相同。

{p 4 4 2}
这使得 {cmd:d0} 看起来明显比 {cmd:lf} 更优秀。类型 {cmd:d0} 可以处理类型 {cmd:lf} 可以处理的任何问题，而且它可以处理其他问题。两者可以处理时，使用类型 {cmd:d0} 的唯一额外工作是必须对我们产生的单个值进行求和，而这并不困难。
然而，类型 {cmd:lf} 具有其他优势。如果您编写类型 {cmd:lf} 的评估器，则无需编写另一行代码，您可以获得稳健标准误的估计，调整聚类、考虑调查设计的影响等等。
{cmd:moptimize()} 可以做到这一点，因为它具有逐个观察的计算结果。{cmd:moptimize()} 可以中断该逐个观察的结果的汇总并修改其方式，而 {cmd:moptimize()} 无法做到这一点。

{marker rem_fill}{...}
{title:从数学陈述填充moptimize()}

{p 4 4 2}
样本问题的数学陈述如下：

{p 12 12 2}
找到系数

        	{bf:b} = (({bf:b}1,{it:c}1), ({bf:c}2))

{p 12 12 2}
其中
		     {bf:b}1: 1 {it:x} {it:k}
		     {it:c}1: 1 {it:x} 1,   {...}
{it:c}2: 1 {it:x} 

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <moptimize_11.sthlp>}