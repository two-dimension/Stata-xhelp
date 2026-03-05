
{smcl}
{* *! version 1.2.7  10oct2017}{...}
{cmd:help mata optimize()}{right:{help prdocumented_zh:之前已文档化}}
{hline}
{help optimize_11:English Version}
{hline}
{* 索引 优化}{...}
{* 索引 最大化}{...}
{* 索引 最小化}{...}
{* 索引 最小化}{...}
{* 索引 optimize_init_*() 函数}{...}
{* 索引 optimize()}{...}
{* 索引 _optimize()}{...}
{* 索引 optimize_evaluate()}{...}
{* 索引 _optimize_evaluate()}{...}
{* 索引 optimize_result_*() 函数}{...}
{* 索引 optimize_query()}{...}
{* 索引 牛顿-拉夫森法}{...}
{* 索引 大卫-弗莱彻-鲍威尔法}{...}
{* 索引 布罗伊登-弗莱切尔-戈德法-香农法}{...}
{* 索引 伯恩德-霍尔-霍尔-豪斯曼法}{...}
{* 索引 内尔德-梅德法}{...}
{* 马奎特算法}{...}
{* 最陡下降法（上升）}{...}

{p 0 4 2}
{manlink M-5 optimize()} {hline 2} 函数优化

{p 12 12 8}
{it}[与 {bf:optimize() } 相关的评估器类型的名称在版本 11 中已更改。
本帮助文件记录了 {cmd:optimize()} 的旧语法，因此可能与您无关。您无需将旧的 do 文件中对 {cmd:optimize()} 的调用翻译为现代语法，因为 Stata 
继续理解旧语法和新语法。此帮助文件是为希望调试或理解旧代码的人提供的。
点击 {help mf_optimize_zh:这里} 查看现代 {cmd:optimize()} 命令的帮助文件。]{rm}

{title:语法}

{pstd}
在语法图中，单击函数左侧的 [] 以了解更多信息。

{p 6 25 2}
{help optimize_11##i_:[]}{...}
{bind:          }
{it:S} 
{cmd:=}
{cmd:optimize_init()}


{p 6 25 1}
{help optimize_11##i_which:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_which(}{it:S} [{cmd:,}
{c -(}{cmd:"max"} | {cmd:"min"}{c )-}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_evaluator:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_evaluator(}{it:S} [{cmd:,}
{cmd:&}{it:function}{cmd:()}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_evaluator:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_evaluatortype(}{it:S} [{cmd:,}
{it:evaluatortype}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_negH:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_negH(}{it:S}{cmd:,} {...}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}

{p 6 25 2}
{help optimize_11##i_params:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_params(}{it:S} [{cmd:,}
{it:real rowvector initialvalues}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_nmdeltas:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_nmsimplexdeltas(}{it:S} [{cmd:,}
{it:real rowvector delta}]{cmd:)}

{p 6 25 1}
{help optimize_11##i_argument:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_argument(}{it:S}{cmd:,}
{it:real scalar k} [{cmd:,}
{it:X}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_argument:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_narguments(}{it:S} [{cmd:,}
{it:real scalar K}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_cluster:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_cluster(}{it:S}{cmd:,} {it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##i_colstripe:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_colstripe(}{it:S} [{cmd:,} {cmd:stripe}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_technique:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_technique(}{it:S} [{cmd:,}
{it:technique}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_gnweightmatrix:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_gnweightmatrix(}{it:S}{cmd:,} {...}
{it:{help mf_moptimize##def_W:W}}{cmd:)}

{p 6 25 2}
{help optimize_11##i_singularH:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_singularHmethod(}{it:S} [{cmd:,}
{it:singularHmethod}]{cmd:)}

{p 6 25 1}
{help optimize_11##i_maxiter:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_conv_maxiter(}{it:S} [{cmd:,}
{it:real scalar max}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_warning:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_conv_warning(}{it:S}{cmd:,} {...}
{c -(}{cmd:"on"}|{cmd:"off"}{c )-}{cmd:)}

{p 6 25 2}
{help optimize_11##i_ptol:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_conv_ptol(}{it:S} [{cmd:,}
{it:real scalar ptol}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_ptol:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_conv_vtol(}{it:S} [{cmd:,}
{it:real scalar vtol}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_ptol:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_conv_nrtol(}{it:S} [{cmd:,}
{it:real scalar nrtol}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_ignore:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_conv_ignorenrtol(}{it:S}{cmd:,} {...}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}

{p 6 25 2}
{help optimize_11##i_iterid:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_iterid(}{it:S}{cmd:,}
{it:string scalar id}]{cmd:)}

{p 6 25 2}
{help optimize_11##i_valueid:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_valueid(}{it:S}{cmd:,}
{it:string scalar id}{cmd:)}

{p 6 25 2}
{help optimize_11##i_tracelevel:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_tracelevel(}{it:S}{cmd:,}
{it:string scalar tracelevel}{cmd:)}

{p 6 25 2}
{help optimize_11##i_trace:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_trace_dots(}{it:S}{cmd:,}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}
{p 6 25 2}
{help optimize_11##i_trace:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_trace_value(}{it:S}{cmd:,}
{c -(}{cmd:"on"}|{cmd:"off"}{c )-}{cmd:)}
{p 6 25 2}
{help optimize_11##i_trace:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_trace_tol(}{it:S}{cmd:,}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}
{p 6 25 2}
{help optimize_11##i_trace:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_trace_params(}{it:S}{cmd:,}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}
{p 6 25 2}
{help optimize_11##i_trace:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_trace_step(}{it:S}{cmd:,}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}
{p 6 25 2}
{help optimize_11##i_trace:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_trace_gradient(}{it:S}{cmd:,}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}
{p 6 25 2}
{help optimize_11##i_trace:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_trace_Hessian(}{it:S}{cmd:,}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}

{p 6 25 2}
{help optimize_11##i_evaluations:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_evaluations(}{it:S}{cmd:,}
{c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}
{p 6 25 2}
{help optimize_11##i_constr:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_constraints(}{it:S}{cmd:,}
{it:real matrix Cc}{cmd:)}

{p 6 25 2}
{help optimize_11##i_verbose:[]}{...}
{it:(变化)}{bind:      }
{cmd:optimize_init_verbose(}{it:S}{cmd:,}
{it:real scalar verbose}{cmd:)}


{p 6 25 2}
{help optimize_11##optimize:[]}{...}
{it:real rowvector}
{cmd:optimize(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##_optimize:[]}{...}
{it:real scalar}{bind:  }
{cmd:_optimize(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##eval:[]}{...}
{it:void}{bind:          }
{cmd:optimize_evaluate(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##_eval:[]}{...}
{it:real scalar}{bind:  }
{cmd:_optimize_evaluate(}{it:S}{cmd:)}


{p 6 25 2}
{help optimize_11##r_params:[]}{...}
{it:real rowvector}
{cmd:optimize_result_params(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_value:[]}{...}
{it:real scalar}{bind:   }
{cmd:optimize_result_value(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_value:[]}{...}
{it:real scalar}{bind:   }
{cmd:optimize_result_value0(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_gradient:[]}{...}
{it:real rowvector}
{cmd:optimize_result_gradient(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_scores:[]}{...}
{it:real matrix}{bind:   }
{cmd:optimize_result_scores(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_hessian:[]}{...}
{it:real matrix}{bind:   }
{cmd:optimize_result_Hessian(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_v:[]}{...}
{it:real matrix}{bind:   }
{cmd:optimize_result_V(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_v:[]}{...}
{it:string scalar}{bind: }
{cmd:optimize_result_Vtype(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_v_all:[]}{...}
{it:real matrix}{bind:   }
{cmd:optimize_result_V_oim(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_v_all:[]}{...}
{it:real matrix}{bind:   }
{cmd:optimize_result_V_opg(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_v_all:[]}{...}
{it:real matrix}{bind:   }
{cmd:optimize_result_V_robust(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_iterations:[]}{...}
{it:real scalar}{bind:   }
{cmd:optimize_result_iterations(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_converged:[]}{...}
{it:real scalar}{bind:   }
{cmd:optimize_result_converged(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_ilog:[]}{...}
{it:real colvector}
{cmd:optimize_result_iterationlog(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_evaluations:[]}{...}
{it:real rowvector}{...}
{cmd:optimize_result_evaluations(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_error:[]}{...}
{it:real scalar}{bind:   }
{cmd:optimize_result_errorcode(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_error:[]}{...}
{it:string scalar}{bind: }
{cmd:optimize_result_errortext(}{it:S}{cmd:)}

{p 6 25 2}
{help optimize_11##r_error:[]}{...}
{it:real scalar}{bind:   }
{cmd:optimize_result_returncode(}{it:S}{cmd:)}


{p 6 25 2}
{help optimize_11##query:[]}{...}
{it:void}{bind:          }
{cmd:optimize_query(}{it:S}{cmd:)}


{p 4 4 2}
其中 {it:S} ，如果已声明，则应声明

		{cmd:transmorphic} {it:S}


{p 4 4 2}
而 {it:evaluatortype} 是在 
{cmd:optimize_init_evaluatortype()} 中可选指定的

{col 16}{it:evaluatortype}{col 32}描述
{col 16}{hline 60}
{col 16}{cmd:"d0"}{col 32}{it:function}{cmd:()} 返回 {it:scalar} 值
{col 16}{cmd:"d1"}{col 32}与 {cmd:"d0"} 相同，返回梯度 {it:rowvector}
{col 16}{cmd:"d2"}{col 32}与 {cmd:"d1"} 相同，返回 Hessian {it:matrix}

{col 16}{cmd:"d1debug"}{col 32}与 {cmd:"d1"} 相同，但检查梯度
{col 16}{cmd:"d2debug"}{col 32}与 {cmd:"d2"} 相同，但检查梯度和 Hessian

{col 16}{cmd:"v0"}{col 32}{it:function}{cmd:()} 返回 {it:colvector} 值
{col 16}{cmd:"v1"}{col 32}与 {cmd:"v0"} 相同，返回得分 {it:matrix}
{col 16}{cmd:"v2"}{col 32}与 {cmd:"v1"} 相同，返回 Hessian {it:matrix}

{col 16}{cmd:"v1debug"}{col 32}与 {cmd:"v1"} 相同，但检查梯度
{col 16}{cmd:"v2debug"}{col 32}与 {cmd:"v2"} 相同，但检查梯度和 Hessian
{col 16}{hline 60}
{col 16}如果未设置，则默认值为 {cmd:"d0"}。


{p 4 4 2}
而 
{it:technique} 是在 {cmd:optimize_init_technique()} 中可选指定的

{col 16}{it:technique}{col 32}描述
{col 16}{hline 54}
{col 16}{cmd:"nr"}{col 32}修改后的牛顿-拉夫森法
{col 16}{cmd:"dfp"}{col 32}大卫-弗莱彻-鲍威尔法
{col 16}{cmd:"bfgs"}{col 32}布罗伊登-弗莱切尔-戈德法-香农法
{col 16}{cmd:"bhhh"}{col 32}伯恩德-霍尔-霍尔-豪斯曼法
{col 16}{cmd:"nm"}{col 32}内尔德-梅德法
{col 16}{cmd:"gn"}{col 32}高斯-牛顿法（二次优化）
{col 16}{hline 54}
{col 16}如果未设置，则默认值为 {cmd:"nr"}。


{p 4 4 2}
而 
{it:singularHmethod} 是在 
{cmd:optimize_init_singularHmethod()} 中可选指定的

{col 16}{it:singularHmethod}{col 32}描述
{col 16}{hline 54}
{col 16}{cmd:"m-marquardt"}{col 32}修改后的马奎特算法
{col 16}{cmd:"hybrid"}{col 32}最陡下降法和牛顿法的混合
{col 16}{hline 54}
{col 16}如果未设置，则默认值为 {cmd:"m-marquardt"}；
{col 16}{cmd:"hybrid"} 等同于 {cmd:ml} 的 {cmd:difficult} 选项；参见 {bf:{help ml_zh:[R] ml}}。 


{p 4 4 2}
而 
{it:tracelevel} 是在 
{cmd:optimize_init_tracelevel()} 中可选指定的

{col 16}{it:tracelevel}{col 32}在每次迭代中显示
{col 16}{hline 54}
{col 16}{cmd:"none"}{col 32}不显示任何内容
{col 16}{cmd:"value"}{col 32}函数值
{col 16}{cmd:"tolerance"}{col 32}以前 + 收敛值
{col 16}{cmd:"params"}{col 32}以前 + 参数值
{col 16}{cmd:"step"}{col 32}以前 + 步进信息
{col 16}{cmd:"gradient"}{col 32}以前 + 梯度向量
{col 16}{cmd:"hessian"}{col 32}以前 + Hessian 矩阵
{col 16}{hline 54}
{col 16}如果未设置，则默认值为 {cmd:"value"}。


{title:描述}

{p 4 4 2}
这些函数寻找参数向量或标量 {it:p}，使得函数 {it:f}({it:p}) 达到最大值或最小值。

{p 4 4 2}
{cmd:optimize_init()} 开始定义一个问题，并返回 {it:S}，一个包含默认值的问题描述句柄。

{p 4 4 2}
随后 {cmd:optimize_init_}{it:*}{cmd:(}{it:S}{cmd:,} ...{cmd:)} 函数允许您修改这些默认值。您可以使用这些函数来描述特定问题：设置您希望最大化或最小化的条件，设置函数 {it:f}() 的身份，设置初始值等。

{p 4 4 2}
{cmd:optimize(}{it:S}{cmd:)} 然后执行优化。 
{cmd:optimize()} 返回 {it:real rowvector p}，包含产生最大或最小值的参数值。

{p 4 4 2}
然后可以使用 {cmd:optimize_result_}{it:*}{cmd:(}{it:S}{cmd:)} 函数访问与解决方案相关的其他值。

{p 4 4 2}
通常情况下，您会停止在此。 在其他情况下，您可以使用结果参数向量作为新的初始值重新启动优化，更改优化技术，并重新启动优化：

		{cmd:optimize_init_param(}{it:S}{cmd:,} {cmd:optimize_result_param(}{it:S}{cmd:))}
		{cmd:optimize_init_technique(}{it:S}{cmd:,} {cmd:"dfp")}
		{cmd:optimize(}{it:S}{cmd:)}

{p 4 4 2}
旁白：

{p 4 4 2}
{cmd:optimize_init_}{it:*}{cmd:(}{it:S}{cmd:,} ...{cmd:)} 函数有两种操作模式。每种模式都有一个可选的参数，您可以指定以设置值，而省略则查询值。
例如，{cmd:optimize_init_params()} 的完整语法是

		{it:void} {cmd:optimize_init_params(}{it:S}{cmd:,} {it:real rowvector initialvalues}{cmd:)}

		{it:real rowvector} {cmd:optimize_init_params(}{it:S}{cmd:)}

{p 4 4 2}
第一种语法设置初始值并不返回任何内容。
第二种语法返回先前设置（如果未设置即为默认）的初始值。

{p 4 4 2} 所有 {cmd:optimize_init_}{it:*}{cmd:(}{it:S}{cmd:,}
...{cmd:)} 函数都以相同方式工作。


{title:备注}

{p 4 4 2}
备注按以下标题列出：

	{help optimize_11##example1:第一个示例}
	{help optimize_11##notation:符号}
	{help optimize_11##typed:类型 d 评估器}
	{help optimize_11##example2:d0, d1 和 d2 示例}
	{help optimize_11##debug:d1debug 和 d2debug}
	{help optimize_11##typev:类型 v 评估器}
	{help optimize_11##example3:v0, v1 和 v2 示例}

	{help optimize_11##functions:函数}
	    {help optimize_11##i_:optimize_init()}
	    {help optimize_11##i_which:optimize_init_which()}
	    {help optimize_11##i_evaluator:optimize_init_evaluator() 和 optimize_init_evaluatortype()}
	    {help optimize_11##i_negH:optimize_init_negH()}
	    {help optimize_11##i_params:optimize_init_params()}
	    {help optimize_11##i_nmdeltas:optimize_init_nmsimplexdeltas()}
	    {help optimize_11##i_argument:optimize_init_argument() 和 optimize_init_narguments()}
	    {help optimize_11##i_cluster:optimize_init_cluster()}
	    {help optimize_11##i_colstripe:optimize_init_colstripe()}
	    {help optimize_11##i_technique:optimize_init_technique()}
	    {help optimize_11##i_gnweightmatrix:optimize_init_gnweightmatrix()}
	    {help optimize_11##i_singularH:optimize_init_singularHmethod()}
	    {help optimize_11##i_maxiter:optimize_init_conv_maxiter()}
	    {help optimize_11##i_warning:optimize_init_conv_warning()}
	    {help optimize_11##i_ptol:optimize_init_conv_ptol(), ..._vtol(), ..._nrtol()}
	    {help optimize_11##i_ignore:optimize_init_conv_ignorenrtol()}
	    {help optimize_11##i_iterid:optimize_init_iterid()}
	    {help optimize_11##i_valueid:optimize_init_valueid()}
	    {help optimize_11##i_tracelevel:optimize_init_tracelevel()}
{p 12 16 2}{help optimize_11##i_trace:optimize_init_trace_dots(), ..._value(), ..._tol(), ..._step(), ..._gradient(), ..._Hessian()}{p_end}
	    {help optimize_11##i_evaluations:optimize_init_evaluations()}
	    {help optimize_11##i_constr:optimize_init_constraints()}
	    {help optimize_11##i_verbose:optimize_init_verbose()}

	    {help optimize_11##optimize:optimize()}
	    {help optimize_11##_optimize:_optimize()}
	    {help optimize_11##eval:optimize_evaluate()}
	    {help optimize_11##_eval:_optimize_evaluate()}

	    {help optimize_11##r_params:optimize_result_params()}
	    {help optimize_11##r_value:optimize_result_value() 和 optimize_result_value0()}
	    {help optimize_11##r_gradient:optimize_result_gradient()}
	    {help optimize_11##r_scores:optimize_result_scores()}
	    {help optimize_11##r_hessian:optimize_result_Hessian()}
	    {help optimize_11##r_v:optimize_result_V() 和 optimize_result_Vtype()}
	    {help optimize_11##r_v_all:optimize_result_V_oim(), ..._opg(), ..._robust()}
	    {help optimize_11##r_iterations:optimize_result_iterations()}
	    {help optimize_11##r_converged:optimize_result_converged()}
	    {help optimize_11##r_ilog:optimize_result_iterationlog()}
	    {help optimize_11##r_evaluations:optimize_result_evaluations()}
	    {help optimize_11##r_error:optimize_result_errorcode(), ..._errortext(), 和 ..._returncode()}

	    {help optimize_11##query:optimize_query()}


{marker example1}{...}
{title:第一个示例}

{p 4 4 2}
优化函数可以交互使用。

{p 4 4 2}
下面我们使用这些函数找出使得 
{it:y} = exp(-{it:x}^2+{it:x}-3) 最大的 {it:x} 值：

{* junk1.smcl from optimize.do}{...}
	: {cmd:void myeval(todo, x,  y, g, H)}
	> {cmd:{c -(}}
	>         {cmd:y = exp(-x^2 + x - 3)}
	> {cmd:{c )-}}
	注意：参数 todo 未使用
	注意：参数 g 未使用
	注意：参数 H 未使用

	: {cmd:S = optimize_init()}

	: {cmd:optimize_init_evaluator(S, &myeval())}

	: {cmd:optimize_init_params(S, 0)}

	: {cmd:x = optimize(S)}
	迭代 0:  f(p) = .04978707
	迭代 1:  f(p) = .04978708
	迭代 2:  f(p) = .06381186
	迭代 3:  f(p) = .06392786
	迭代 4:  f(p) = .06392786

	: {cmd:x}
	  .5


{marker notation}{...}
{title:符号}

{p 4 4 2}
我们以数学家思维方式写下上述内容，也就是优化 {it:y}={it:f}({it:x})。另一方面，统计学家则认为是优化 {it:s}={it:f}({it:b})。为了避免偏见，我们将写作 {it:v}={it:f}({it:p}) 并以以下符号写下这个一般问题：

{p 8 8 2}
最大化或最小化 {it:v} = {it:f}({it:p}),

		{it:v}:  一个标量 

		{it:p}:  1 {it:x} {it:np}

{p 8 8 2}
受约束 {it:C}{it:p'} = {it:c}， 

		{it:C}:  {it:nc x np}       ({it:nc}=0 如果没有约束)
		{it:c}:  {it:nc x} 1

{p 8 8 2}
其中 gradient 向量 {it:g} 为 
{it:g} = {it:f'}({it:p}) = d{it:f}/d{it:p}， 

		{it:g}:  1 {it:x} {it:np}

{p 8 8 2}
而 Hessian 矩阵 {it:H} 为 
{it:H} = {it:f''}({it:p}) = d^2{it:f}/d{it:p}d{it:p}'

		{it:H}:  {it:np} {it:x} {it:np}


{marker typed}{...}
{title:类型 d 评估器}

{p 4 4 2}
在您能够使用优化函数之前，您必须编写一个评估器函数来计算 {it:f}()。我们上面展示的示例是所谓类型 {cmd:d} 评估器的示例。我们将继续使用这个。

{p 4 4 2}
我们编写的评估器函数是 

	{cmd:void myeval(todo, x, y, g, H)}
	{cmd:{c -(}}
	        {cmd:y = exp(-x^2 + x - 3)}
	{cmd:{c )-}}

{p 4 4 2}
所有类型 {cmd:d} 评估器的打开方式都是相同的，

	{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:x}{cmd:,}  {it:y}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
尽管您命名参数的方式是您自己决定的。我们以数学家的思维命名参数，尽管我们同样可以按照统计学家的思维命名它们：

	{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:b}{cmd:,}  {it:s}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
为了避免偏见，我们将它们记作 

	{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:p}{cmd:,}  {it:v}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
也就是说，我们将以优化 
{it:v}={it:f}({it:p}) 为考虑标准。


{p 4 4 2}
以下是类型 {cmd:d} 评估器的完整定义：

	{hline 62}
	{it:void} {it:evaluator}{cmd:(}{it:real scalar todo}{cmd:,} {...}
{it:real rowvector p}{cmd:,}  {it:v}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

	其中 {it:v}、{it:g} 和 {it:H} 是返回的值：

		{it:v}:  {it:real scalar}
		{it:g}:  {it:real rowvector}
		{it:H}:  {it:real matrix}

	{it:evaluator}{cmd:()} 旨在填充 {it:v}，给定 {it:p} 的值，并根据 {it:todo} 的值选择性填充 {it:g} 和 {it:H}：

		{it:todo}         {it:evaluator}{cmd:()} 要求的操作
		{hline 52}
		  0          计算 {it:v}={it:f}({it:p}) 并存储在 {it:v}

                  1          计算 {it:v}={it:f}({it:p}) 并 {...}
{it:g}={it:f'}({it:p}) 并存储在 {it:v} 和 {it:g}

                  2          计算 {it:v}={it:f}({it:p})、 {...}
{it:g}={it:f'}({it:p}) 和 {it:H}={it:f''}({it:p})
                             并将它们存储在 {it:v}、{it:g} 和 {it:H}
		{hline 52}

	{it:evaluator}{cmd:()} 可以返回 {it:v}={cmd:.}，如果 {it:f}() 在 {it:p} 处无法评估。
	那么即使请求，也不需要填充 {it:g} 和 {it:H}。
	{hline 62}

{p 4 4 2}
评估器不需要能够做到所有这些。在第一个示例中，{cmd:myeval()} 仅能处理 {it:todo}=0。
类型 {cmd:d} 评估器有三种：

		{cmd:d} 类型       对 {it:evaluator}{cmd:()} 预期的能力
		{hline 58}
		  {cmd:d0}         可以计算 {it:v}={it:f}({it:p})

		  {cmd:d1}         可以计算 {it:v}={it:f}({it:p}) {...}
并且 {it:g}={it:f'}({it:p})

		  {cmd:d2}         可以计算 {it:v}={it:f}({it:p}) {...}
并且 {it:g}={it:f'}({it:p}) 和 {it:H}={it:f''}({it:p})
		{hline 58}

{p 4 4 2}
{cmd:myeval()} 是类型 {cmd:d0} 评估器。
类型 {cmd:d0} 评估器从不被要求计算 {it:g} 或 {it:H}。类型 
{cmd:d0} 是默认类型，但如果我们担心它不是，我们可以通过编码

		{cmd:optimize_init_evaluatortype(S, "d0")}

{p 4 4 2}
以下是三种评估器的代码大纲：

	{hline 50}
	{it:void} {it:d0_evaluator}{cmd:(}{cmd:todo,} {cmd:p,}  {...}
{cmd:v,} {cmd:g,} {cmd:H)}
	{cmd:{c -(}}
		{cmd:v =} ...
	{cmd:{c )-}}
	{hline 50}

	{hline 50}
	{it:void} {it:d1_evaluator}{cmd:(}{cmd:todo,} {cmd:p,}  {...}
{cmd:v,} {cmd:g,} {cmd:H)}
	{cmd:{c -(}}
		{cmd:v =} ...
		{cmd:if (todo>=1) {c -(}}
			{cmd:g =} ...
		{cmd:{c )-}}
	{cmd:{c )-}}
	{hline 50}

	{hline 50}
	{it:void} {it:d2_evaluator}{cmd:(}{cmd:todo,} {cmd:p,}  {...}
{cmd:v,} {cmd:g,} {cmd:H)}
	{cmd:{c -(}}
		{cmd:v =} ...
		{cmd:if (todo>=1) {c -(}}
			{cmd:g =} ...
			{cmd:if (todo==2) {c -(}}
				{cmd:H =} ...
			{cmd:{c )-}}
		{cmd:{c )-}}
	{cmd:{c )-}}
	{hline 50}


{marker example2}{...}
{title:d0, d1 和 d2 示例}

{p 4 4 2}
我们希望找到与最大值对应的 {it:p}_1 和 {it:p}_2 

                          2     2
		{it:v} = exp(-{it:p}  -  {it:p}  -  {it:p p}  +  {it:p}  -  {it:p}  -  3)
                          1     2     1 2     1     2

{p 4 4 2} 
对于问题而言，{cmd:d0} 的解决方案为

{* junk2.smcl from optimize.do}{...}
	: {cmd:void eval0(todo, p, v, g, H)}
	> {cmd:{c -(}}
	>         {cmd:v = exp(-p[1]^2 - p[2]^2 - p[1]*p[2] + p[1] - p[2] - 3)}
	> {cmd:{c )-}}
	{txt}注意：参数 todo 未使用
	注意：参数 g 未使用
	注意：参数 h 未使用

	: {cmd:S = optimize_init()}

	: {cmd:optimize_init_evaluator(S, &eval0())}

	: {cmd:optimize_init_params(S, (0,0))}

	: {cmd:p = optimize(S)}
	迭代 0:  f(p) = {txt: .04978707}  (不凹)
	迭代 1:  f(p) = {txt: .12513024}
	迭代 2:  f(p) = {txt: .13495886}
	迭代 3:  f(p) = {txt: .13533527}
	迭代 4:  f(p) = {txt: .13533528}

	: {cmd:p}
	{txt}       {txt} 1    2
            {c TLC}{hline 11}{c TRC}
          1 {c |}  {txt} 1   -1{txt}  {c |}
            {c BLC}{hline 11}{c BRC}

{p 4 4 2}
类型 {cmd:d1} 的解决方案为

{* junk3.smcl from optimize.do}{...}
	: {cmd:void eval1(todo, p, v, g, H)}
	> {cmd:{c -(}}
	>         {cmd:v = exp(-p[1]^2 - p[2]^2 - p[1]*p[2] + p[1] - p[2] - 3)}
	>         {cmd:if (todo==1) {c -(}}
	>                 {cmd:g[1] = (-2*p[1] - p[2] + 1)*v}
	>                 {cmd:g[2] = (-2*p[2] - p[1] - 1)*v}
	>         {cmd:{c )-}}
	> {cmd:{c )-}}
	{txt}注意：参数 H 未使用

	: {cmd:S = optimize_init()}

	: {cmd:optimize_init_evaluator(S, &eval1())}

	: {cmd:optimize_init_evaluatortype(S, "d1")}{right:// <- 重要        }

	: {cmd:optimize_init_params(S, (0,0))}

	: {cmd:p = optimize(S)}
	{txt}{txt}迭代 0:  f(p) = {txt: .04978707}  (不凹)
	迭代 1:  f(p) = {txt: .12513026}
	迭代 2:  f(p) = {txt: .13496887}
	迭代 3:  f(p) = {txt: .13533527}
	迭代 4:  f(p) = {txt: .13533528}

	: {cmd:p}
	{txt}       {txt} 1    2
	    {c TLC}{hline 11}{c TRC}
	  1 {c |}  {res} 1   -1{txt}  {c |}
	    {c BLC}{hline 11}{c BRC}

{p 4 4 2}
{cmd:d1} 的解决方案优于 {cmd:d0} 的解决方案，因为它运行更快，通常更准确。然而，类型 {cmd:d1} 的评估器需要更多的代码，并且在某些情况下，推导解析导数并不总是可行。

{p 4 4 2}
类型 {cmd:d2} 的解决方案为

{* junk4.smcl from optimize.do}{...}
	: {cmd:void eval2(todo, p, v, g, H)}
	> {cmd:{c -(}}
	>         {cmd:v = exp(-p[1]^2 - p[2]^2 - p[1]*p[2] + p[1] - p[2] - 3)}
	>         {cmd:if (todo>=1) {c -(}}
	>                 {cmd:g[1] = (-2*p[1] - p[2] + 1)*v}
	>                 {cmd:g[2] = (-2*p[2] - p[1] - 1)*v}
	>                 {cmd:if (todo==2) {c -(}}
	>                         {cmd:H[1,1] = -2*v + (-2*p[1]-p[2]+1)*g[1]}
	>                         {cmd:H[2,1] = -1*v + (-2*p[2]-p[1]-1)*g[1]}
	>                         {cmd:H[2,2] = -2*v + (-2*p[2]-p[1]-1)*g[2]}
	>                         {cmd:_makesymmetric(H)}
	>                 {cmd:{c )-}}
	>         {cmd:{c )-}}
	> {cmd:{c )-}}

	: {cmd:S = optimize_init()}

	: {cmd:optimize_init_evaluator(S, &eval2())}

	: {cmd:optimize_init_evaluatortype(S, "d2")}{right:// <- 重要        }

	: {cmd:optimize_init_params(S, (0,0))}

	: {cmd:p = optimize(S)}
	{txt}{txt}迭代 0:  f(p) = {txt: .04978707}  (不凹)
	迭代 1:  f(p) = {txt: .12513026}
	迭代 2:  f(p) = {txt: .13496887}
	迭代 3:  f(p) = {txt: .13533527}
	迭代 4:  f(p) = {txt: .13533528}

	: {cmd:p}
	{txt}       {txt} 1    2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {txt} 1   -1{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}

{p 4 4 2}
{cmd:d2} 解决方案最佳，因为其运行速度最快且通常最准确。类型 {cmd:d2} 评估器需要的代码最多，并且推导解析导数并不总是可行。

{p 4 4 2}
在 {cmd:d2} 评估器 {cmd:eval2()} 中，请注意我们使用了 {cmd:_makesymmetric()}。类型 {cmd:d2} 评估器需要返回 {it:H} 作为 
对称矩阵；仅填充下三角或上三角是不够的。完成此任务的最简单方法是填充下三角，然后使用 {cmd:_makesymmetric()}
反射下三角的非对角元素；
参见 {bf:{help mf_makesymmetric_zh:[M-5] makesymmetric()}}。


{marker debug}{...}
{title:d1debug 和 d2debug}

{p 4 4 2}
除了在 {cmd:optimize_init_evaluatortype(}{it:S}{cmd:,}
{it:evaluatortype}{cmd:)} 中指定的评估器类型 {cmd:"d0"}、{cmd:"d1"} 和 {cmd:"d2"}，还有两个额外的类型：{cmd:"d1debug"} 和 
{cmd:"d2debug"}。它们有助于编写 {cmd:d1} 和 {cmd:d2} 评估器。

{p 4 4 2}
在 {it:{help optimize_11##example2:d0, d1 和 d2 示例}} 中 
我们承认在您看到函数 {cmd:eval1()} 和 {cmd:eval2()} 之前，我们并没有正确编码它们。在这两种情况下，出现问题是因为我们 
错误地计算了导数。问题不在我们的代码，而在我们的数学。 {cmd:d1debug} 和 {cmd:d2debug} 帮助我们找到了 
问题。

{p 4 4 2}
{cmd:d1debug} 是 {cmd:d1} 的替代方案。当您编码 
{cmd:optimize_init_evaluatortype(}{it:S}{cmd:,} {cmd:"d1debug") 时，
您计算的导数不被认真对待。相反，{cmd:optimize()} 
计算它自己的数值导数并使用这些导数。但是，每次 
{cmd:optimize()} 这样做时，都会将您的导数与它计算的导数进行比较，并给您报告它们的差异。如果您编码正确，它们的差异应不会太大。

{p 4 4 2}
{cmd:d2debug} 也执行相同的操作，但针对 {cmd:d2} 评估器。当您编码 
{cmd:optimize_init_evaluatortype(}{it:S}{cmd:,} {cmd:"d2debug")} 时， 
{cmd:optimize()} 使用数值导数，但每次都 
向您报告您的结果与数值计算结果的梯度和 Hessian 差异程度。

{p 4 4 2}
对于每次比较，{cmd:optimize()} 只报告一个数字： 您的结果和数值结果之间的 {bf:{help mf_reldif_zh:mreldif()}}。
当您正确完成时，梯度向量之间的差异约为 1e-12 或更少，Hessian 的差异为 1e-7 或更少。

{p 4 4 2}
当差异很大时，您不仅需要查看摘要比较，还需要查看完整的向量和矩阵，以便逐元素比较您的结果和数值计算结果。 有时 
错误仅出现在一个元素中，而不是其他元素中。
为此，在发出 {cmd:optimize()} 之前，请设置跟踪级别为 
{cmd:optimize_init_tracelevel(}{it:S}{cmd:,} {it:tracelevel}{cmd:)}。编码 
{cmd:optimize_init_tracelevel(}{it:S}{cmd:,} {cmd:"gradient")} 
以获取梯度比较的完整报告，或设置 
{cmd:optimize_init_tracelevel(}{it:S}{cmd:,} {cmd:"hessian")} 
以获取梯度比较和 Hessian 
比较的完整报告。


{marker typev}{...}
{title:类型 v 评估器}

{p 4 4 2}
在一些统计应用中，您会发现 {cmd:v0}、{cmd:v1} 和 
{cmd:v2} 编码比 {cmd:d0}、{cmd:d1} 和 {cmd:d2} 更方便。 
v 代表向量。

{p 4 4 2}
在统计应用中，人们往往会将数据集视为以矩阵 {it:X} 排列的值，行是观测值。可以为每一行单独计算函数 
{bind:{it:h}({it:p}, {it:X}{cmd:[}{it:i}{cmd:,.]})}，而生成值的总和构成要最大化或最小化的函数 {it:f(}{it:p})。

{p 4 4 2}
{cmd:v0}、{cmd:v1} 和 {cmd:v2} 方法正是为这种情况而设。

{p 4 4 2}
在类型 {cmd:d0} 评估器中，您返回标量 {it:v}={it:f}({it:p})。

{p 4 4 2}
在类型 {cmd:v0} 评估器中，您返回列向量 
{it:v}，使得 {cmd:colsum(}{it:v}{cmd:)}={it:f}({it:p})。

{p 4 4 2}
在类型 {cmd:d1} 评估器中，您返回 {it:v}={it:f}({it:p}) 
并返回行向量 {bind:{it:g}={it:f'}({it:p})}。

{p 4 4 2}
在类型 {cmd:v1} 评估器中，您返回 {it:v} 
使得 {cmd:colsum(}{it:v}{cmd:)}={it:f}({it:p})，并返回 
矩阵 {it:g}，使得 
{cmd:colsum(}{it:g}{cmd:)}={it:f'}({it:p})。

{p 4 4 2}
在类型 {cmd:d2} 评估器中，您返回 {it:v}={it:f}({it:p})， 
{bind:{it:g}={it:f'}({it:p})}， 
并返回 
{bind:{it:H}={it:f''}({it:p})}。

{p 4 4 2}
在类型 {cmd:v2} 评估器中，您返回 {it:v} 
使得 {cmd:colsum(}{it:v}{cmd:)}={it:f}({it:p})， 
{it:g} 使得 {cmd:colsum(}{it:g}{cmd:)}={it:f'}({it:p})， 
并返回 
{bind:{it:H}={it:f''}({it:p})}。 这是与 {cmd:d2} 返回的相同 {it:H}。 

{p 4 4 2}
类型 {cmd:v} 评估器的代码大纲与 {cmd:d} 评估器相同。 
例如，类型 {cmd:v2} 评估器的轮廓为 

	{hline 50}
	{it:void} {it:v2_evaluator}{cmd:(}{cmd:todo,} {cmd:p,}  {...}
{cmd:v,} {cmd:g,} {cmd:H)}
	{cmd:{c -(}}
		{cmd:v =} ...
		{cmd:if (todo>=1) {c -(}}
			{cmd:g =} ...
			{cmd:if (todo==2) {c -(}}
				{cmd:H =} ...
			{cmd:{c )-}}
		{cmd:{c )-}}
	{cmd:{c )-}}
	{hline 50}

{p 4 4 2}
上述代码与类型 {cmd:d2} 评估器的轮廓相同。唯一的区别在于 {it:v} 和 {it:g}，在 {cmd:d2} 中它们分别是 {it:real scalar} 和 
{it:real rowvector}，而在 {cmd:v2} 中它们是 {it:real colvector} 和 {it:real matrix}。 
同样适用于 {cmd:v1} 和 {cmd:v0}。

{p 4 4 2}
类型 {cmd:v} 的评估器出现在统计应用中，在这种应用中，存在数据；也就是说，单靠 {it:p} 
并不足以计算 {it:v}、{it:g} 和 {it:H}。
实际上，在编码类型 {cmd:d} 评估器时，同样的问题也可能出现。

{p 4 4 2}
您可以将额外的参数传递给评估器，无论它们是 {cmd:d0}、{cmd:d1} 或 {cmd:d2}，还是 {cmd:v0}、{cmd:v1} 或 {cmd:v2}。所有评估器的第一行，样式无论如何，都是 

		{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:p}{cmd:,}{...}
  {it:v}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
如果您编码 

	{cmd:optimize_init_argument(}{it:S}{cmd:,} {cmd:1,} {it:X}{cmd:)} 

{p 4 4 2}
第一行变为 
而如果您编码

	{cmd:optimize_init_argument(}{it:S}{cmd:,} {cmd:1,} {it:X}{cmd:)} 
	{cmd:optimize_init_argument(}{it:S}{cmd:,} {cmd:2,} {it:Y}{cmd:)} 

{p 4 4 2}
第一行变为 

		{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:p}{cmd:,}  {it:X}{cmd:,} {it:Y}{cmd:,}{...}
  {it:v}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
依此类推，最多可以有九个额外参数。 
也就是说，您可以指定要传递给 
您的函数的额外参数。


{marker example3}{...}
{title:v0, v1 和 v2 示例}

{p 4 4 2}
您有以下数据：

{* junk5.smcl from optimize.do}{...}
	: {cmd:x}
	{txt}        {txt}  1
	     {c TLC}{hline 7}{c TRC}
	   1 {c |}  {txt}.35{txt}  {c |}
	   2 {c |}  {txt}.29{txt}  {c |}
	   3 {c |}  {txt} .3{txt}  {c |}
	   4 {c |}  {txt} .3{txt}  {c |}
	   5 {c |}  {txt}.65{txt}  {c |}
	   6 {c |}  {txt}.56{txt}  {c |}
	   7 {c |}  {txt}.37{txt}  {c |}
	   8 {c |}  {txt}.16{txt}  {c |}
	   9 {c |}  {txt}.26{txt}  {c |}
	  10 {c |}  {txt}.19{txt}  {c |}
	     {c BLC}{hline 7}{c BRC}

{p 4 4 2}
您认为这些数据是固定参数 alpha 和 beta 的 beta 分布过程的结果，并希望获得 alpha 和 beta 的最大似然估计（在后文中分别为 {it:a} 和 {it:b}）。 Beta 分布的密度公式为

			            Γ({it:a}+{it:b})      {it:a}-1      {it:b}-1
		density({it:x}) =   -----------------   {it:x}    (1-{it:x})
			       Γ({it:a}) Γ({it:b})

{p 4 4 2}
此问题的 v0 解决方案为

{* junk6.smcl from optimize.do}{...}
	: {cmd:void lnbetaden0(todo, p,  x,  lnf, S, H)}
	> {cmd:{c -(}}
	>         {cmd:a   = p[1]}
	>         {cmd:b   = p[2]}
	>         {cmd:lnf = lngamma(a+b) :- lngamma(a) :- lngamma(b) :+}
	>               {cmd:(a-1)*log(x) :+ (b-1)*log(1:-x)}
	> {cmd:{c )-}}
	{txt}注意：参数 todo 未使用
	注意：参数 S 未使用
	注意：参数 H 未使用

	: {cmd:S = optimize_init()}

	: {cmd:optimize_init_evaluator(S, &lnbetaden0())}

	: {cmd:optimize_init_evaluatortype(S, "v0")}

	: {cmd:optimize_init_params(S, (1,1))}

	: {cmd:optimize_init_argument(S, 1, x)}{right:// <- 重要        }

	: {cmd:p = optimize(S)}
	{txt}{txt}迭代 0:  f(p) = {txt:         0}
	迭代 1:  f(p) = {txt: 5.7294728}
	迭代 2:  f(p) = {txt: 5.7646641}
	迭代 3:  f(p) = {txt: 5.7647122}
	迭代 4:  f(p) = {txt: 5.7647122}

	: {cmd:p}
	{txt}       {txt}          1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {res}3.714209592   7.014926315{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}

{p 4 4 2}
请注意以下几点：

{p 8 12 2}
1.  我们并没有将返回的值命名为 {cmd:v}，而是将其命名为 {cmd:lnf}。您可以随意命名参数。

{p 8 12 2}
2.  我们安排通过编码 {cmd:optimize_init_argument(S,} {cmd:1,} {cmd:x)} 来传递额外参数。额外参数是向量 {cmd:x}，我们之前已经列出过给您。
在我们的函数中，我们将参数称为 {cmd:x}，但我们本可以使用不同的名称，就像我们使用 {cmd:lnf} 而不是 {cmd:v} 一样。

{p 8 12 2}
3.  我们将评估器类型设置为 {cmd:"v0"}。

{p 4 4 2}
鉴于这是一个统计问题，我们不仅应该对估计值 {cmd:p} 感兴趣，还应该对它们的方差感兴趣。我们可以通过负 Hessian 的逆获得这个值，即观察信息矩阵：

{* junk7.smcl from optimize.do}{...}
	: {cmd:optimize_result_V_oim(S)}
	{res}{txt}[对称]
	                 1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {res}2.556301184              {txt}  {c |}
	  2 {c |}  {res}4.498194785   9.716647065{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}

{p 4 4 2}
此问题的 v1 解决方案为

{* junk8.smcl from optimize.do}{...}
	: {cmd:void lnbetaden1(todo, p,  x,  lnf, S, H)}
	> {cmd:{c -(}}
	>         {cmd:a   = p[1]}
	>         {cmd:b   = p[2]}
	>         {cmd:lnf = lngamma(a+b) :- lngamma(a) :- lngamma(b) :+}
	>               {cmd:(a-1)*log(x) :+ (b-1)*log(1:-x) }
	>         {cmd:if (todo >= 1) {c -(}}
	>                 {cmd:S       = J(rows(x), 2, .)}
	>                 {cmd:S[.,1]  = log(x) :+ digamma(a+b) :- digamma(a)}
	>                 {cmd:S[.,2]  = log(1:-x) :+ digamma(a+b) :- digamma(b)}
	>         {cmd:{c )-}}
	> {cmd:{c )-}}
	{txt}注意：参数 H 未使用

	: {cmd:S = optimize_init()}

	: {cmd:optimize_init_evaluator(S, &lnbetaden1())}

	: {cmd:optimize_init_evaluatortype(S, "v1")}

	: {cmd:optimize_init_params(S, (1,1))}

	: {cmd:optimize_init_argument(S, 1, x)}

	: {cmd:p = optimize(S)}
	{txt}{txt}迭代 0:  f(p) = {txt:         0}
	迭代 1:  f(p) = {txt: 5.7297061}
	迭代 2:  f(p) = {txt: 5.7641349}
	迭代 3:  f(p) = {txt: 5.7647121}
	迭代 4:  f(p) = {txt: 5.7647122}

	: {cmd:p}
	{txt}       {txt}          1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {txt}3.714209343   7.014925751{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}

	: {cmd:optimize_result_V_oim(S)}
	{txt}{txt}[对称]
                 1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {txt}2.556299425              {txt}  {c |}
	  2 {c |}  {txt} 4.49819212   9.716643068{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}

{p 4 4 2}
请注意以下几点：

{p 8 12 2}
1.  我们将 {cmd:S} 列为次末参数，而不是 {cmd:g}，这是为了遵循标准统计术语。返回的其实是观察水平的得分，这个得分的和等于梯度矢量。

{p 8 12 2}
2.  尽管我们将次末参数称为 {cmd:S}，但是该名称与程序外部的 {cmd:S} 冲突，在程序外面 {cmd:S} 是问题句柄。我们或许应该对外部的 {cmd:S} 进行重命名，但在 Mato 中并不存在歧义。

{p 8 12 2}
3.  在我们的程序中，我们自行为 {it:S} 分配内存：{cmd:S} = {cmd:J(rows(x),} {cmd:2,} {cmd:.)}。 
将此与 
{cmd:d1} 示例进行比较是有意义的，在那里我们不需要为 {cmd:g} 进行分配。 
在类型 {cmd:d1} 中，{cmd:optimize()} 为我们预先分配了 {cmd:g}。
在类型 {cmd:v1} 中，{cmd:optimize()} 无法做到这一点，因为它不知道我们有多少“观测值”。


{p 4 4 2}
此问题的 v2 解决方案为

{* junk9.smcl from optimize.do}{...}
	: {cmd:void lnbetaden2(todo, p,  x,  lnf, S, H)}
	> {cmd:{c -(}}
	>         {cmd:a   = p[1]}
	>         {cmd:b   = p[2]}
	>         {cmd:lnf = lngamma(a+b) :- lngamma(a) :- lngamma(b) :+}
	>               {cmd:(a-1)*log(x) :+ (b-1)*log(1:-x) }
	>         {cmd:if (todo >= 1) {c -(}}
	>                 {cmd:S       = J(rows(x), 2, .)}
	>                 {cmd:S[.,1]  = log(x) :+ digamma(a+b) :- digamma(a)}
	>                 {cmd:S[.,2]  = log(1:-x) :+ digamma(a+b) :- digamma(b)}
	>                 {cmd:if (todo==2) {c -(}}
	>                         {cmd:n = rows(x)}
	>                         {cmd:H[1,1] = n*(trigamma(a+b) - trigamma(a))}
	>                         {cmd:H[2,1] = n*(trigamma(a+b))}
	>                         {cmd:H[2,2] = n*(trigamma(a+b) - trigamma(b))}
	>                         {cmd:_makesymmetric(H)}
	>                 {cmd:{c )-}}
	>         {cmd:{c )-}}
	> {cmd:{c )-}}

	: {cmd:S = optimize_init()}

	: {cmd:optimize_init_evaluator(S, &lnbetaden2())}

	: {cmd:optimize_init_evaluatortype(S, "v2")}

	: {cmd:optimize_init_params(S, (1,1))}

	: {cmd:optimize_init_argument(S, 1, x)}

	: {cmd:p = optimize(S)}
	{txt}{txt}迭代 0:  f(p) = {txt:         0}
	迭代 1:  f(p) = {txt: 5.7297061}
	迭代 2:  f(p) = {txt: 5.7641349}
	迭代 3:  f(p) = {txt: 5.7647121}
	迭代 4:  f(p) = {txt: 5.7647122}

	: {cmd:p}
	{res}       {txt}          1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {txt}3.714209343   7.014925751{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}

	: {cmd:optimize_result_V_oim(S)}}
	{txt}{txt}[对称]
	                 1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {txt}2.556299574              {txt}  {c |}
	  2 {c |}  {txt}4.498192412   9.716643651{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}


{marker functions}{...}
{title:函数}

{marker i_}{...}
{title:optimize_init()}

{p 8 12 2}
{it:transmorphic} 
{cmd:optimize_init()}

{p 4 4 2}
{cmd:optimize_init()} 用于开始一个优化问题。将返回结果存储在您选择的变量名称中；在本文件中，我们使用 
{it:S}。您将 {it:S} 作为第一个参数传递给其他 {cmd:optimize}{it:*}{cmd:()} 函数。

{p 4 4 2}
{cmd:optimize_init()} 将所有 {cmd:optimize_init_}{it:*}{cmd:()} 值设置为默认值。您可以使用 {cmd:optimize_init_}{it:*}{cmd:()} 的查询形式来确定单个默认值，或者可以使用 {cmd:optimize_query()} 查看所有默认值。

{p 4 4 2}
{cmd:optimize_init_}{it:*}{cmd:()} 的查询形式可以在 {cmd:optimize()} 执行之前或之后使用。


{marker i_which}{...}
{title:optimize_init_which()}

{p 8 12 2}
{it:void}{bind:         }
{cmd:optimize_init_which(}{it:S}{cmd:,}
{c -(}{cmd:"max"} | {cmd:"min"}{c )-} {cmd:)}

{p 8 12 2}
{it:string scalar}
{cmd:optimize_init_which(}{it:S}{cmd:)}

{p 4 4 2}
{cmd:optimize_init_which(}{it:S}{cmd:,}
{it:which}{cmd:)}
指定 {cmd:optimize()} 是否进行最大化或 
最小化。如果未调用此函数，则默认情况下为最大化。

{p 4 4 2}
{cmd:optimize_init_which(}{it:S}{cmd:)}
返回 {cmd:"max"} 或 {cmd:"min"}，具体根据当前设置返回。


{marker i_evaluator}{...}
{title:optimize_init_evaluator() 和 optimize_init_evaluatortype()}

{p 8 12 2}
{it:void}
{cmd:optimize_init_evaluator(}{it:S}{cmd:,}
{it:pointer(real function) scalar fptr}{cmd:)}

{p 8 25 2}
{it:void}
{cmd:optimize_init_evaluatortype(}{it:S}{cmd:,}
{it:evaluatortype}{cmd:)}


{p 8 12 2}
{it:pointer(real function) scalar}
{cmd:optimize_init_evaluator(}{it:S}{cmd:)}

{p 8 25 2}
{it:string scalar}{bind:                }
{cmd:optimize_init_evaluatortype(}{it:S}{cmd:)}


{p 4 4 2}
{cmd:optimize_init_evaluator(}{it:S}{cmd:,}
{it:fptr}{cmd:)} 指定要调用的函数来评估 
{it:f}({it:p})。此函数的使用是必需的。
如果您的函数名为 {cmd:myfcn()}，则可以编码 
{cmd:optimize_init_evaluator(}{it:S}{cmd:,} {cmd:&myfcn())}。

{p 4 4 2}
{cmd:optimize_init_evaluatortype(}{it:S}{cmd:,}
{it:evaluatortype}{cmd:)}
指定使用 {cmd:optimize_init_evaluator()} 设置的函数的能力。
{it:e

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <optimize_11.sthlp>}