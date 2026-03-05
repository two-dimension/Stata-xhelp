{smcl}
{* *! version 1.3.20  11dec2018}{...}
{vieweralsosee "[M-5] optimize()" "mansection M-5 optimize()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] moptimize()" "help mf_moptimize_zh"}{...}
{vieweralsosee "[M-5] Quadrature()" "help mf_quadrature_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] set iter" "help set_iter_zh"}{...}
{viewerjumpto "Syntax" "mf_optimize_zh##syntax"}{...}
{viewerjumpto "Description" "mf_optimize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_optimize_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_optimize_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_optimize_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_optimize_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_optimize_zh##source"}
{help mf_optimize:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] optimize()} {hline 2}}函数优化
{p_end}
{p2col:}({mansection M-5 optimize():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 22 28 2}
{it:{help mf_optimize##S:S}} 
{cmd:=}
{cmd:optimize_init()}


{p 6 25 1}
{it:(变化)}{bind:      }
{help mf_optimize##i_which:{bf:optimize_init_which(}{it:S} [{bf:,} {c -(}{bf:"max"} | {bf:"min"}{c )-}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_evaluator:{bf:optimize_init_evaluator(}{it:S} [{bf:,} {bf:&}{it:function}{bf:()}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_evaluator:{bf:optimize_init_evaluatortype(}{it:S} [{bf:,} {it:evaluatortype}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_negH:{bf:optimize_init_negH(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_params:{bf:optimize_init_params(}{it:S} [{bf:,} {it:real rowvector initialvalues}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_nmdeltas:{bf:optimize_init_nmsimplexdeltas(}{it:S} [{bf:,} {it:real rowvector delta}]{bf:)}}

{p 6 25 1}
{it:(变化)}{bind:      }
{help mf_optimize##i_argument:{bf:optimize_init_argument(}{it:S}{bf:,} {it:real scalar k} [{bf:,} {it:X}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_argument:{bf:optimize_init_narguments(}{it:S} [{bf:,} {it:real scalar K}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_cluster:{bf:optimize_init_cluster(}{it:S}{bf:,} {it:c}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_colstripe:{bf:optimize_init_colstripe(}{it:S} [{bf:,} {bf:stripe}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_technique:{bf:optimize_init_technique(}{it:S} [{bf:,} {it:technique}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_singularH:{bf:optimize_init_singularHmethod(}{it:S} [{bf:,} {it:singularHmethod}]{bf:)}}

{p 6 25 1}
{it:(变化)}{bind:      }
{help mf_optimize##i_maxiter:{bf:optimize_init_conv_maxiter(}{it:S} [{bf:,} {it:real scalar maxiter}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_warning:{bf:optimize_init_conv_warning(}{it:S}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_ptol:{bf:optimize_init_conv_ptol(}{it:S} [{bf:,} {it:real scalar ptol}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_ptol:{bf:optimize_init_conv_vtol(}{it:S} [{bf:,} {it:real scalar vtol}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_ptol:{bf:optimize_init_conv_nrtol(}{it:S} [{bf:,} {it:real scalar nrtol}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_ignore:{bf:optimize_init_conv_ignorenrtol(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_iterid:{bf:optimize_init_iterid(}{it:S} [{bf:,} {it:string scalar id}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_valueid:{bf:optimize_init_valueid(}{it:S} [{bf:,} {it:string scalar id}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_tracelevel:{bf:optimize_init_tracelevel(}{it:S} [{bf:,} {it:tracelevel}]{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_trace:{bf:optimize_init_trace_dots(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_trace:{bf:optimize_init_trace_value(}{it:S}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_trace:{bf:optimize_init_trace_tol(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_trace:{bf:optimize_init_trace_step(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_trace:{bf:optimize_init_trace_paramdiffs(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_trace:{bf:optimize_init_trace_params(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_trace:{bf:optimize_init_trace_gradient(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_trace:{bf:optimize_init_trace_Hessian(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{p 6 25 2}
{it:(变化)}{bind:      }
{help mf_optimize##i_trace:{bf:optimize_init_trace_evaluations(}{it:S}{bf:,} {c -(}{bf:"off"}|{bf:"on"}{c )-}{bf:)}}

{marker S}{...}
{p 4 4 2}
其中 {it:S} 如果被声明，应该被声明为

		{cmd:transmorphic} {it:S}

{marker evaluatortype}{...}
{p 4 4 2}
并且 {it:evaluatortype} 可以选择性地在 
{cmd:optimize_init_evaluatortype()} 中指定为

{col 16}{it:evaluatortype}{col 32}描述
{col 16}{hline 60}
{col 16}{cmd:"d0"}{col 32}{it:function}{cmd:()} 返回 {it:scalar} 值
{col 16}{cmd:"d1"}{col 32}同 {cmd:"d0"}，并返回梯度 {it:rowvector}
{col 16}{cmd:"d2"}{col 32}同 {cmd:"d1"}，并返回 Hessian {it:matrix}

{col 16}{cmd:"d1debug"}{col 32}同 {cmd:"d1"} 但是检查梯度
{col 16}{cmd:"d2debug"}{col 32}同 {cmd:"d2"} 但是检查梯度和 Hessian

{col 16}{cmd:"gf0"}{col 32}{it:function}{cmd:()} 返回 {it:colvector} 值
{col 16}{cmd:"gf1"}{col 32}同 {cmd:"gf0"}，并返回评分 {it:matrix}
{col 16}{cmd:"gf2"}{col 32}同 {cmd:"gf1"}，并返回 Hessian {it:matrix}

{col 16}{cmd:"gf1debug"}{col 32}同 {cmd:"gf1"}，但是检查梯度
{col 16}{cmd:"gf2debug"}{col 32}同 {cmd:"gf2"}，但是检查梯度和 Hessian
{col 16}{hline 60}
{col 16}如果未设置，默认为 {cmd:"d0"}。

{marker technique}{...}
{p 4 4 2}
并且 
{it:technique} 可选择地在 {cmd:optimize_init_technique()} 中指定为

{col 16}{it:technique}{col 32}描述
{col 16}{hline 54}
{col 16}{cmd:"nr"}{col 32}改良牛顿-拉夫森法
{col 16}{cmd:"dfp"}{col 32}Davidon-Fletcher-Powell
{col 16}{cmd:"bfgs"}{col 32}Broyden-Fletcher-Goldfarb-Shanno
{col 16}{cmd:"bhhh"}{col 32}Berndt-Hall-Hall-Hausman
{col 16}{cmd:"nm"}{col 32}Nelder-Mead
{col 16}{hline 54}
{col 16}如果未设置，默认为 {cmd:"nr"}。

{marker singularHmethod}{...}
{p 4 4 2}
并且
{it:singularHmethod} 可选择地在 
{cmd:optimize_init_singularHmethod()} 中指定为

{col 16}{it:singularHmethod}{col 32}描述
{col 16}{hline 54}
{col 16}{cmd:"m-marquardt"}{col 32}改良的 Marquardt 算法
{col 16}{cmd:"hybrid"}{col 32}最速下降法与牛顿法的混合
{col 16}{hline 54}
{col 16}如果未设定，默认为 {cmd:"m-marquardt"}；
{col 16}{cmd:"hybrid"} 等价于 {cmd:ml} 的 {cmd:difficult} 选项；参见 {bf:{help ml_zh:[R] ml}}。

{marker tracelevel}{...}
{p 4 4 2}
并且 
{it:tracelevel} 可以选择地在 
{cmd:optimize_init_tracelevel()} 中指定为

{col 16}{it:tracelevel}{col 32}将在每次迭代中显示
{col 16}{hline 57}
{col 16}{cmd:"none"}{col 32}不显示任何内容
{col 16}{cmd:"value"}{col 32}函数值
{col 16}{cmd:"tolerance"}{col 32}以前的 + 收敛值
{col 16}{cmd:"step"}{col 32}以前的 + 步长信息
{col 16}{cmd:"paramdiffs"}{col 32}以前的 + 参数相对差异
{col 16}{cmd:"params"}{col 32}以前的 + 参数值
{col 16}{cmd:"gradient"}{col 32}以前的 + 梯度向量
{col 16}{cmd:"hessian"}{col 32}以前的 + Hessian 矩阵
{col 16}{hline 57}
包含帮助 traceleveldefault


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数找到参数向量或标量 {it:p}，使得函数
{it:f}({it:p}) 达到最大值或最小值。

{p 4 4 2}
{cmd:optimize_init()} 开始定义一个问题并返回 
{it:S}，一个用于描述问题的句柄，初始时包含默认值。

{p 4 4 2}
随后 
{cmd:optimize_init_}{it:*}{cmd:(}{it:S}{cmd:,} ...{cmd:)} 函数允许
您修改这些默认值。您可以使用这些函数来描述您的 
特定问题：设置是希望最大化还是最小化，
设置函数 {it:f}() 的标识，
设置初始值等等。

{p 4 4 2}
{cmd:optimize(}{it:S}{cmd:)} 随后执行优化。
{cmd:optimize()}
返回 {it:real rowvector p}，包含产生最大值或最小值的参数值。

{p 4 4 2}
然后可以使用 {cmd:optimize_result_}{it:*}{cmd:(}{it:S}{cmd:)} 函数
访问与解相关的其他值。

{p 4 4 2}
通常情况下，您会在此停止。如果在其他情况下，您可以使用
结果的参数向量作为新的初始值，改变优化技术，然后重新开始优化：

		{cmd:optimize_init_params(}{it:S}{cmd:,} {cmd:optimize_result_params(}{it:S}{cmd:))}
		{cmd:optimize_init_technique(}{it:S}{cmd:,} {cmd:"dfp")}
		{cmd:optimize(}{it:S}{cmd:)}

{p 4 4 2}
旁注：

{p 4 4 2}
{cmd:optimize_init_}{it:*}{cmd:(}{it:S}{cmd:,} ...{cmd:)} 函数
有两种操作模式。每种都有一个可选参数，您可以指定来设置
该值，您可以省略以查询该值。
例如，{cmd:optimize_init_params()} 的完整语法是

		{it:void} {cmd:optimize_init_params(}{it:S}{cmd:,} {it:real rowvector initialvalues}{cmd:)}

		{it:real rowvector} {cmd:optimize_init_params(}{it:S}{cmd:)}

{p 4 4 2}
第一种语法设置初始值并不返回任何内容。
第二种语法返回先前设置的（或默认的，如果未设置）初始值。

{p 4 4 2} 所有 {cmd:optimize_init_}{it:*}{cmd:(}{it:S}{cmd:,}
...{cmd:)} 函数以相同的方式工作。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 optimize()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注根据以下标题呈现：

	{help mf_optimize##example1:第一个示例}
	{help mf_optimize##notation:符号}
	{help mf_optimize##typed:类型 d 的评估器}
	{help mf_optimize##example2:d0，d1 和 d2 的示例}
	{help mf_optimize##debug:d1debug 和 d2debug}
	{help mf_optimize##typegf:类型 gf 的评估器}
	{help mf_optimize##example3:gf0，gf1 和 gf2 的示例}

	{help mf_optimize##functions:功能}
	    {help mf_optimize##i_:optimize_init()}
	    {help mf_optimize##i_which:optimize_init_which()}
	    {help mf_optimize##i_evaluator:optimize_init_evaluator() 和 optimize_init_evaluatortype()}
	    {help mf_optimize##i_negH:optimize_init_negH()}
	    {help mf_optimize##i_params:optimize_init_params()}
	    {help mf_optimize##i_nmdeltas:optimize_init_nmsimplexdeltas()}
	    {help mf_optimize##i_argument:optimize_init_argument() 和 optimize_init_narguments()}
	    {help mf_optimize##i_cluster:optimize_init_cluster()}
	    {help mf_optimize##i_colstripe:optimize_init_colstripe()}
	    {help mf_optimize##i_technique:optimize_init_technique()}
	    {help mf_optimize##i_singularH:optimize_init_singularHmethod()}
	    {help mf_optimize##i_maxiter:optimize_init_conv_maxiter()}
	    {help mf_optimize##i_warning:optimize_init_conv_warning()}
	    {help mf_optimize##i_ptol:optimize_init_conv_ptol(), ..._vtol(), ..._nrtol()}
	    {help mf_optimize##i_ignore:optimize_init_conv_ignorenrtol()}
	    {help mf_optimize##i_iterid:optimize_init_iterid()}
	    {help mf_optimize##i_valueid:optimize_init_valueid()}
	    {help mf_optimize##i_tracelevel:optimize_init_tracelevel()}
{p 12 16 2}{help mf_optimize##i_trace:optimize_init_trace_dots(), ..._value(), ..._tol(), ..._step(), ..._paramdiffs(), ..._params(), ..._gradient(), ..._Hessian()}{p_end}
	    {help mf_optimize##i_evaluations:optimize_init_evaluations()}
	    {help mf_optimize##i_constr:optimize_init_constraints()}
	    {help mf_optimize##i_verbose:optimize_init_verbose()}

	    {help mf_optimize##optimize:optimize()}
	    {help mf_optimize##_optimize:_optimize()}
	    {help mf_optimize##eval:optimize_evaluate()}
	    {help mf_optimize##_eval:_optimize_evaluate()}

	    {help mf_optimize##r_params:optimize_result_params()}
	    {help mf_optimize##r_value:optimize_result_value() 和 optimize_result_value0()}
	    {help mf_optimize##r_gradient:optimize_result_gradient()}
	    {help mf_optimize##r_scores:optimize_result_scores()}
	    {help mf_optimize##r_hessian:optimize_result_Hessian()}
	    {help mf_optimize##r_v:optimize_result_V() 和 optimize_result_Vtype()}
	    {help mf_optimize##r_v_all:optimize_result_V_oim(), ..._opg(), ..._robust()}
	    {help mf_optimize##r_iterations:optimize_result_iterations()}
	    {help mf_optimize##r_converged:optimize_result_converged()}
	    {help mf_optimize##r_ilog:optimize_result_iterationlog()}
	    {help mf_optimize##r_evaluations:optimize_result_evaluations()}
	    {help mf_optimize##r_error:optimize_result_errorcode(), ..._errortext(), 和 ..._returncode()}

	    {help mf_optimize##query:optimize_query()}


{marker example1}{...}
{title:第一个示例}

{p 4 4 2}
可以交互地使用优化函数。

{p 4 4 2}
下面我们使用函数来 
找到最大化以下函数的 {it:x} 的值：
{it:y} = exp(-{it:x}^2+{it:x}-3):

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
我们以数学家思考的方式书写上述内容，即， 
优化 {it:y}={it:f}({it:x})。  而统计学家则通常
会考虑优化 {it:s}={it:f}({it:b})。  为避免
偏袒，我们将改写为 {it:v}={it:f}({it:p})，并用以下符号表示
一般问题：

{p 8 8 2}
最大化或最小化 {it:v} = {it:f}({it:p}),

		{it:v}:  一个标量 

		{it:p}:  1 {it:x} {it:np}

{p 8 8 2}
并且考虑约束条件 {it:C}{it:p'} = {it:c}, 

		{it:C}:  {it:nc x np}       ({it:nc}=0 如果没有约束)
		{it:c}:  {it:nc x} 1

{p 8 8 2}
其中 {it:g} 为梯度向量，定义为 
{it:g} = {it:f'}({it:p}) = d{it:f}/d{it:p}, 

		{it:g}:  1 {it:x} {it:np}

{p 8 8 2}
而 {it:H} 为 Hessian 矩阵，定义为 
{it:H} = {it:f''}({it:p}) = d^2{it:f}/d{it:p}d{it:p}'。

		{it:H}:  {it:np} {it:x} {it:np}


{marker typed}{...}
{title:类型 d 的评估器}

{p 4 4 2}
在您可以使用优化函数之前，必须编写一个评估器函数来计算 {it:f}()。上述示例是 
称为类型 {cmd:d} 评估器的示例。我们将继续使用这个示例。

{p 4 4 2}
我们编写的评估器函数是 

	{cmd:void myeval(todo, x,  y, g, H)}
	{cmd:{c -(}}
	        {cmd:y = exp(-x^2 + x - 3)}
	{cmd:{c )-}}

{p 4 4 2}
所有类型 {cmd:d} 的评估器的开头都相同， 

	{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:x}{cmd:,}  {it:y}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
尽管您对参数命名可以自由选择。 我们以数学家的方式命名参数，
但我们也可以像统计学家那样命名它们：

	{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:b}{cmd:,}  {it:s}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
为了避免偏袒，我们将以以下方式编写

	{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:p}{cmd:,}  {it:v}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
也就是说，我们将考虑优化 
{it:v}={it:f}({it:p})。


{p 4 4 2}
这里是类型 {cmd:d} 评估器的完整定义：

	{hline 62}
	{it:void} {it:evaluator}{cmd:(}{it:real scalar todo}{cmd:,} {...}
{it:real rowvector p}{cmd:,}  {it:v}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

	where {it:v}, {it:g}, 和 {it:H} 是要返回的值：

		{it:v}:  {it:real scalar}
		{it:g}:  {it:real rowvector}
		{it:H}:  {it:real matrix}

	{it:evaluator}{cmd:()} 通过给定的 {it:p} 值填充 {it:v}，并可选地填充 {it:g} 和 {it:H}，具体取决于 
	{it:todo} 的值：

		{it:todo}         {it:evaluator}{cmd:()} 的所需操作
		{hline 52}
		  0          计算 {it:v}={it:f}({it:p}) 并将结果存储在 {it:v}

                  1          计算 {it:v}={it:f}({it:p}) 并 {...}
{it:g}={it:f'}({it:p}) 并 
                             在 {it:v} 和 {it:g} 中存储结果

                  2          计算 {it:v}={it:f}({it:p}), {...}
{it:g}={it:f'}({it:p}), 和 {it:H}={it:f''}({it:p})
                             并在 {it:v}、{it:g} 和 {it:H} 中存储结果
		{hline 52}

	{it:evaluator}{cmd:()} 可能返回 {it:v}={cmd:.} 如果 {it:f}() 在 {it:p} 处无法被评估。
	在这种情况下，即使请求，也无需填充 {it:g} 和 {it:H}。
	{hline 62}

{p 4 4 2}
评估器不必能够执行所有操作。在
第一个示例中，{cmd:myeval()} 只能处理 {it:todo}=0。
有三种类型的类型 {cmd:d} 评估器：

		{cmd:d} 类型       对 {it:evaluator}{cmd:()} 的预期能力
		{hline 58}
		  {cmd:d0}         能够计算 {it:v}={it:f}({it:p})

		  {cmd:d1}         能够计算 {it:v}={it:f}({it:p}) {...}
并且 {it:g}={it:f'}({it:p})

		  {cmd:d2}         能够计算 {it:v}={it:f}({it:p}) {...}
并且 {it:g}={it:f'}({it:p}) 和 {it:H}={it:f''}({it:p})
		{hline 58}

{p 4 4 2}
{cmd:myeval()} 是类型 {cmd:d0} 评估器。
类型 {cmd:d0} 评估器从不被要求计算 {it:g} 或 {it:H}。 类型
{cmd:d0} 是默认类型，但如果我们担心参数类型，它不够，我们可以
在调用 {cmd:optimize()} 之前设置评估器类型，代码为

		{cmd:optimize_init_evaluatortype(S, "d0")}

{p 4 4 2}
以下是三种评估器类型的代码大纲：

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

{p 4 4 2}
这里是具有三个额外用户参数的评估器的代码大纲：

	{hline 50}
	{it:void} {it:d0_user3_eval}{cmd:(}{cmd:todo,} {cmd:p,} {cmd:u1,} {...}
{cmd:u2,} {cmd:u3,} {cmd:v,} {cmd:g,} {cmd:H)}
	{cmd:{c -(}}
		{cmd:v =} ...
	{cmd:{c )-}}
	{hline 50}


{marker example2}{...}
{title:d0、d1 和 d2 的示例}

{p 4 4 2}
我们希望找到与以下公式最大值相对应的 {it:p}_1 和 {it:p}_2 

                          2     2
		{it:v} = exp(-{it:p}  -  {it:p}  -  {it:p p}  +  {it:p}  -  {it:p}  -  3)
                          1     2     1 2     1     2

{p 4 4 2} 
一个 {cmd:d0} 的问题解决方案如下

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
	迭代 0:  f(p) = {txt: .04978707}  (未凹)
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
一个 d1 的问题解决方案如下

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

	: {cmd:optimize_init_evaluatortype(S, "d1")}{右侧:// <- 重要        }

	: {cmd:optimize_init_params(S, (0,0))}

	: {cmd:p = optimize(S)}
	{txt}{txt}迭代 0:  f(p) = {txt: .04978707}  (未凹)
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
{cmd:d1} 的解决方案优于 {cmd:d0} 的解决方案，因为它运行更快， 
通常更准确。然而，类型 d1 评估器需要更多代码， 
派生解析导数并不总是可能的。

{p 4 4 2}
一个 {cmd:d2} 的问题解决方案如下

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

	: {cmd:optimize_init_evaluatortype(S, "d2")}{右侧:// <- 重要        }

	: {cmd:optimize_init_params(S, (0,0))}

	: {cmd:p = optimize(S)}
	{txt}{txt}迭代 0:  f(p) = {txt: .04978707}  (未凹)
	迭代 1:  f(p) = {txt: .12513026}
	迭代 2:  f(p) = {txt: .13496887}
	迭代 3:  f(p) = {txt: .13533527}
	迭代 4:  f(p) = {txt: .13533528}

	: {cmd:p}
	{res}       {txt}  1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {txt}  3.714209343   7.014925751{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}

{p 4 4 2}
{cmd:d2} 的解决方案是最佳的，因为它运行速度最快，通常最
准确。类型 {cmd:d2} 的评估器需要最多的代码， 
派生解析导数并不总是可能。

{p 4 4 2}
在 {cmd:d2} 评估器 {cmd:eval2()} 中，请注意我们使用 {cmd:_makesymmetric()}。
类型 {cmd:d2} 的评估器必须返回 {it:H} 作为对称矩阵；仅填充
下三角或上三角是不够的。 
做到这一点的最简单方法是填充下三角，然后使用 {cmd:_makesymmetric()}
反映下三角的离对角元素；
参见 {bf:{help mf_makesymmetric_zh:[M-5] makesymmetric()}}。


{marker debug}{...}
{title:d1debug 和 d2debug}

{p 4 4 2}
除了在 {cmd:optimize_init_evaluatortype(}{it:S}{cmd:,}
{it:evaluatortype}{cmd:)} 中指定的评估器类型 {cmd:"d0"}、{cmd:"d1"} 和 {cmd:"d2"} 外，
还有两个类型：{cmd:"d1debug"} 和 
"{cmd:d2debug}"。它们有助于编码 {cmd:d1} 和 {cmd:d2} 评估器。

{p 4 4 2}
在上述 {it:{help mf_optimize##example2:类型 d0、d1 和 d2 的示例}} 中，我们承认我们在 
您看到的之前并未正确编码函数 {cmd:eval1()} 和
{cmd:eval2()}。在两种情况下， 
问题出在我们
不正确的导数。 问题不在于我们的代码，而在于我们的数学。 
{cmd:d1debug} 和 {cmd:d2debug} 帮助我们找到
问题。

{p 4 4 2}
{cmd:d1debug} 是 {cmd:d1} 的替代方法。当您编码
{cmd:optimize_init_evaluatortype(}{it:S}{cmd:,} {cmd:"d1debug")}时，
您计算的导数不会被认真对待。相反，{cmd:optimize()}
计算自己的数值导数并使用这些导数。每当{cmd:optimize()} 做到这一点时，它会将您的导数与它计算的导数进行比较，并向您报告它们的差异。如果您编码正确，这些差异应该不会很大。

{p 4 4 2}
{cmd:d2debug} 做同样的事情，但针对 {cmd:d2} 评估器。当您编码
{cmd:optimize_init_evaluatortype(}{it:S}{cmd:,} {cmd:"d2debug")}时，
{cmd:optimize()} 使用数值导数，但是每次都会 
{cmd:optimize()} 向您报告您的
梯度和 Hessian 的结果 
与数值计算的结果之间的差别。

{p 4 4 2}
对于每次比较，{cmd:optimize()} 仅报告一个数字： 
{bf:{help mf_reldif_zh:mreldif()}} 
您结果和数值结果之间的相对差异。 
当您做对时，梯度向量的差异约为 
1e-12 或更小，Hessian的差异为 
1e-7 或更小。

{p 4 4 2}
当差异很大时，您将希望不仅看到总结报告，还希望看到完整的向量和矩阵，以便逐元素地与数值计算的结果进行比较。有时 错误仅存在于一个元素中，而不是其他元素中。 
要做到这一点，请在发布 {cmd:optimize()} 之前设置
跟踪级别，使用
{cmd:optimize_init_tracelevel(}{it:S}{cmd:,} {it:tracelevel}{cmd:)}。
代码 
{cmd:optimize_init_tracelevel(}{it:S}{cmd:,} {cmd:"gradient")} 
以便获取梯度比较的完整报告，或者设定 
{cmd:optimize_init_tracelevel(}{it:S}{cmd:,} {cmd:"hessian")} 
以便获取梯度比较和 Hessian 的完整报告。


{marker typegf}{...}
{title:类型 gf 的评估器}

{p 4 4 2}
在某些统计应用程序中，您会发现 {cmd:gf0}、{cmd:gf1} 和
{cmd:gf2} 比 {cmd:d0}、{cmd:d1} 和 {cmd:d2} 更易于编码。 
gf 代表通用形式。

{p 4 4 2}
在统计应用程序中，人们往往会将数据集视为
存放在矩阵 {it:X} 中的值，行即为观察值。可以
单独为每一行计算一个函数
{bind:{it:h}({it:p}, {it:X}{cmd:[}{it:i}{cmd:,.]})}
，并将这些结果值的总和形成函数 {it:f(}{it:p})，并用于最大化或最小化。

{p 4 4 2}
{cmd:gf0}、{cmd:gf1} 和 {cmd:gf2} 方法即用于这种情况。

{p 4 4 2}
在类型 {cmd:d0} 的评估器中，您返回标量 {it:v}={it:f}({it:p})。

{p 4 4 2}
在类型 {cmd:gf0} 的评估器中，您返回列向量 
{it:v}，使得 {cmd:colsum(}{it:v}{cmd:)}={it:f}({it:p})。

{p 4 4 2}
在类型 {cmd:d1} 的评估器中，您返回 {it:v}={it:f}({it:p})
并返回行向量 {bind:{it:g}={it:f'}({it:p})}。

{p 4 4 2}
在类型 {cmd:gf1} 的评估器中，您返回 {it:v} 
使得 {cmd:colsum(}{it:v}{cmd:)}={it:f}({it:p})，并
返回矩阵 {it:g}，使得 
{cmd:colsum(}{it:g}{cmd:)}={it:f'}({it:p})。

{p 4 4 2}
在类型 {cmd:d2} 的评估器中，您返回 {it:v}={it:f}({it:p})， 
{bind:{it:g}={it:f'}({it:p})}， 
并返回 
{bind:{it:H}={it:f''}({it:p})}。

{p 4 4 2}
在类型 {cmd:gf2} 的评估器中，您返回 {it:v} 
使得 {cmd:colsum(}{it:v}{cmd:)}={it:f}({it:p})， 
{it:g} 使得 {cmd:colsum(}{it:g}{cmd:)}={it:f'}({it:p})， 
并返回 
{bind:{it:H}={it:f''}({it:p})}。这与 {cmd:d2} 返回的 {it:H} 相同。

{p 4 4 2}
类型 {cmd:gf} 评估器的代码大纲与 {cmd:d} 评估器的相同。 
例如，类型 {cmd:gf2} 评估器的代码大纲为 

	{hline 50}
	{it:void} {it:gf2_evaluator}{cmd:(}{cmd:todo,} {cmd:p,}  {...}
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
以上与 {cmd:d2} 评估器的代码大纲相同。 
仅不同的是 {it:v} 和 {it:g}，在 {cmd:d2} 的情况下为 {it:real scalar} 和 
{it:real rowvector}，现在为 {it:real colvector} 和 
{it:real matrix}。 {cmd:gf1} 和 {cmd:gf0} 同样适用。

{p 4 4 2}
类型 gf 的评估器出现在统计应用程序中，并且在这种
应用中，有数据；也就是说，仅知道 {it:p} 并不足以计算 {it:v}、{it:g} 和 {it:H}。
实际上，当编码类型 {cmd:d} 的评估器时，也可能会出现同样的问题。

{p 4 4 2}
您可以将额外参数传递给评估器，无论它们是 {cmd:d0}、{cmd:d1}、
还是 {cmd:d2}，或 {cmd:gf0}、{cmd:gf1}、或 {cmd:gf2}。 所有评估器的第一行，无论样式如何，都是 

		{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:p}{cmd:,}{...}
  {it:v}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
如果您编码 

	{cmd:optimize_init_argument(}{it:S}{cmd:,} {cmd:1,} {it:X}{cmd:)} 

{p 4 4 2}
第一行变为 
	
		{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:p}{cmd:,}  {it:X}{cmd:,}{...}
  {it:v}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
如果您编码 

	{cmd:optimize_init_argument(}{it:S}{cmd:,} {cmd:1,} {it:X}{cmd:)} 
	{cmd:optimize_init_argument(}{it:S}{cmd:,} {cmd:2,} {it:Y}{cmd:)} 

{p 4 4 2}
第一行变为 

		{it:void} {it:evaluator}{cmd:(}{it:todo}{cmd:,} {...}
{it:p}{cmd:,}  {it:X}{cmd:,} {it:Y}{cmd:,}{...}
  {it:v}{cmd:,} {it:g}{cmd:,} {it:H}{cmd:)}

{p 4 4 2}
依此类推，最多可传递九个额外参数。 
也就是说，您可以指定额外的参数以传递给 
您的函数。这些额外的参数应在参数向量后面直接放置。


{marker example3}{...}
{title:gf0、gf1 和 gf2 的示例}

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
您相信这些数据是由参数固定的贝塔分布过程的结果，希望获得最大似然估计的 
alpha 和 beta（接下来的 {it:a} 和 {it:b}）。 贝塔分布密度的公式为

			            Gamma({it:a}+{it:b})      {it:a}-1      {it:b}-1
		density({it:x}) =   -----------------   {it:x}    (1-{it:x})
			       Gamma({it:a}) Gamma({it:b})

{p 4 4 2}
此问题的 gf0 解是

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

	: {cmd:optimize_init_evaluatortype(S, "gf0")}

	: {cmd:optimize_init_params(S, (1,1))}

	: {cmd:optimize_init_argument(S, 1, x)}{右侧:// <- 重要        }

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
1. 与其称返回值为 {cmd:v}，不如称其为 
    {cmd:lnf}。您可以任意命名参数。

{p 8 12 2}
2. 我们安排通过编码 
    {cmd:optimize_init_argument(S,} {cmd:1,} {cmd:x)} 来传递额外的参数。额外的参数
    是之前为您列出的向量 {cmd:x}。
    在我们的函数中，我们将该参数接收为 {cmd:x}，但我们 
    本可以使用其他名称，就像我们用 {cmd:lnf} 
    代替 {cmd:v}。

{p 8 12 2}
3. 我们将评估器类型设置为 {cmd:"gf0"}。

{p 4 4 2}
考虑到这是一个统计问题，我们不仅应该关注 {cmd:p} 的估计值，还应该关注它们的方差。我们可以从负 Hessian 的逆获得这部分信息，即观察信息矩阵：

{* junk7.smcl from optimize.do}{...}
	: {cmd:optimize_result_V_oim(S)}
	{res}{txt}[对称]
	                 1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {res}2.556301184              {txt}  {c |}
	  2 {c |}  {res}4.498194785   9.716647065{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}

{p 4 4 2}
问题的 {cmd:gf1} 解为

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
	>         {cmd:{c )-}}
	{txt}注意：参数 H 未使用

	: {cmd:S = optimize_init()}

	: {cmd:optimize_init_evaluator(S, &lnbetaden1())}

	: {cmd:optimize_init_evaluatortype(S, "gf1")}

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
	  1 {c |}  {txt} 3.714209343   7.014925751{txt}  {c |}
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
1. 我们称 {cmd:lnbetaden1()} 的倒数第二个参数为 {cmd:S}，而不是 {cmd:g}，以符合标准统计术语。返回的是观测级别的评分，加和得到梯度向量。

{p 8 12 2}
2. 我们称其为倒数第二个参数 {cmd:S}，尽管该名称与程序外的 {cmd:S} 冲突，此处 {cmd:S} 是问题句柄。 或许我们应该重新命名外部的 {cmd:S}，但在 Mata 的处理上并不会产生混淆。

{p 8 12 2}
3. 在我们的程序中，我们为 {it:S} 自己分配了空间： 
{cmd:S} = {cmd:J(rows(x),} {cmd:2,} {cmd:.)}。 将这与 
{cmd:d1} 的示例进行比较，{it:{help mf_optimize##example2:类型 d0、d1 和 d2 的示例}}， 在其中我们不需要为 {cmd:g} 分配空间。
在 {cmd:d1} 中，{cmd:optimize()} 为我们预先分配了 {cmd:g}。
在 {cmd:gf1} 中，{cmd:optimize()} 无法做到这一点，因为它对我们有多少“观察值”并不清楚。



{p 4 4 2}
问题的 {cmd:gf2} 解为

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

	: {cmd:optimize_init_evaluatortype(S, "gf2")}

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

	: {cmd:optimize_result_V_oim(S)}
	{txt}{txt}[对称]
	                 1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {txt}2.556299574              {txt}  {c |}
	  2 {c |}  {txt}4.498192412   9.716643651{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}


{marker functions}{...}
{title:功能}

{marker i_}{...}
{title:optimize_init()}

{p 8 12 2}
{it:transmorphic} 
{cmd:optimize_init()}

{p 4 4 2}
{cmd:optimize_init()} 用于开始优化问题。将返回的结果存储在您选择的变量名称中；在本文件中我们使用 
{it:S}。您将 {it:S} 
作为其他 {cmd:optimize}{it:*}{cmd:()} 函数的第一个参数。

{p 4 4 2}
{cmd:optimize_init()} 将所有 {cmd:optimize_init_}{it:*}{cmd:()} 值设置为
其默认值。您可以使用 
{cmd:optimize_init_}{it:*}{cmd:()} 的查询形式来确定个别默认值，或您可以使用 
{cmd:optimize_query()} 查看所有默认值。

{p 4 4 2}
{cmd:optimize_init_}{it:*}{cmd:()} 的查询形式
可以在 {cmd:optimize()} 执行之前或之后使用。


{marker i_which}{...}
{title:optimize_init_which()}

{p 8 12 2}
{it:void}{bind:         }
{cmd:optimize_init_which(}{it:{help mf_optimize##S:S}}{cmd:,}
{c -(}{cmd:"max"} | {cmd:"min"}{c )-} {cmd:)}

{p 8 12 2}
{it:string scalar}
{cmd:optimize_init_which(}{it:{help mf_optimize##S:S}}{cmd:)}

{p 4 4 2}
{cmd:optimize_init_which(}{it:S}{cmd:,}
{it:which}{cmd:)}
指定 {cmd:optimize()} 是进行最大化还是 
最小化。如果您不调用此函数，默认选项为最大化。

{p 4 4 2}
{cmd:optimize_init_which(}{it:S}{cmd:)}
返回 {cmd:"max"} 或 {cmd:"min"} ，具体取决于当前设置的内容。


{marker i_evaluator}{...}
{title:optimize_init_evaluator() 和 optimize_init_evaluatortype()}

{p 8 12 2}
{it:void}
{cmd:optimize_init_evaluator(}{it:{help mf_optimize##S:S}}{cmd:,}
{it:pointer(real function) scalar fptr}{cmd:)}

{p 8 25 2}
{it:void}
{cmd:optimize_init_evaluatortype(}{it:{help mf_optimize##S:S}}{cmd:,}
{it:{help mf_optimize##evaluatortype:evaluatortype}}{cmd:)}


{p 8 12 2}
{it:pointer(real function) scalar}
{cmd:optimize_init_evaluator(}{it:{help mf_optimize##S:S}}{cmd:)}

{p 8 25 2}
{it:string scalar}{bind:                }
{cmd:optimize_init_evaluatortype(}{it:{help mf_optimize##S:S}}{cmd:)}


{p 4 4 2}
{cmd:optimize_init_evaluator(}{it:S}{cmd:,}
{it:fptr}{cmd:)} 指定要调用的函数，以评估 
{it:f}({it:p})。此函数的使用是必需的。
如果您的函数名为 {cmd:myfcn()}，则编写 
{cmd:optimize_init_evaluator(}{it:S}{cmd:,} {cmd:&myfcn())}。

{p 4 4 2}
{cmd:optimize_init_evaluatortype(}{it:S}{cmd:,}
{it:evaluatortype}{cmd:)}
指定使用 
{cmd:optimize_init_evaluator()} 设置的函数的能力。
{it:evaluatortype} 的替代选项包括 
{cmd:"d0"}、 
{cmd:"d1"}、 
{cmd:"d2"}、 
{cmd:"d1debug"}、 
{cmd:"d2debug"}、 
{cmd:"gf0"}、 
{cmd:"gf1"}、 
{cmd:"gf2"}、 
{cmd:"gf1debug"}、 
和
{cmd:"gf2debug"}。
如果您不调用此函数，默认值为 {cmd:"d0"}。

{p 4 4 2}
{cmd:optimize_init_evaluator(}{it:S}{cmd:)} 返回已设置的函数指针。

{p 4 4 2}
{cmd:optimize_init_evaluatortype(}{it:S}{cmd:)} 返回当前设置的 {it:evaluatortype}。


{marker i_negH}{...}
{title:optimize_init_negH()}

{pstd}
{cmd:optimize_init_negH(}{it:{help mf_optimize##S:S}}{cmd:,}
    {c -(}{cmd:"off"}|{cmd:"on"}{c )-}{cmd:)}
    设置您编写的评估器是否返回 {it:H} 或 -{it:H}，即 Hessian 或 Hessian 的负值（如果它返回 Hessian）。
    这一设置是为了与 Stata 的 {bf:{help ml_zh:ml}} 命令的早期版本兼容。 现代评估器返回 
    {it:H}。 默认值为 {cmd:"off"}。


{marker i_params}{...}
{title:optimize_init_params()}

{p 8 8 2}
{it:void}{bind:          }
{cmd:optimize_init_params(}{it:{help mf_optimize##S:S}}{cmd:,}
{it:real rowvector initialvalues}{cmd:)}

{p 8 8 2}
{it:real rowvector}
{cmd:optimize_init_params(}{it:{help mf_optimize##S:S}}{cmd:)}

{p 4 4 2}
{cmd:optimize_init_params(}{it:S}{cmd:,}
{it:initialvalues}{cmd:)} 设置要用于
第一轮迭代开始时的 {it:p} 值。
此函数的使用是必需的。

{p 4 4 2}
{cmd:optimize_init_params(}{it:S}{cmd:)}
返回将被（或已被）使用的初始值。


{marker i_nmdeltas}{...}
{title:optimize_init_nmsimplexdeltas()}

{p 8 8 2}
{it:void}{bind:          }
{cmd:optimize_init_nmsimplexdeltas(}{it:{help mf_optimize##S:S}}{cmd:,}
{it:real rowvector delta}{cmd:)}

{p 8 8 2}
{it:real rowvector}
{cmd:optimize_init_nmsimplexdeltas(}{it:{help mf_optimize##S:S}}{cmd:)}

{p 4 4 2}
{cmd:optimize_init_nmsimplexdeltas(}{it:S}{cmd:,}
{it:delta}{cmd:)} 设置要使用的 {it:delta} 值，以及 
初始参数，用于构建所需的单纯形，
适用于 {cmd:"nm"}（Nelder-Mead）技术。
仅在 Nelder-Mead 的情况下需要使用此函数。
{it:delta} 中的值必须大于 {it:ptol} 的 10 倍，
该值通过 {helpb mf_optimize##i_ptol:optimize_init_conv_ptol()} 设置。
初始单纯形将为 
{c -(}{it:p}, {it:p}+({it:d}_1,0,...0), 
{it:p}+(0,{it:d}_2,0,...,0),
..., 
{it:p}+(0,0,...,0,{it:d}_{it:k}){c )-}.

{p 4 4 2}
{cmd:optimize_init_nmsimplexdeltas(}{it:S}{cmd:)} 
返回将被（或已被）使用的增量。


{marker i_argument}{...}
{title:optimize_init_argument() 和 optimize_init_narguments()}

{p 8 8 2}
{it:void}{bind:          }


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_optimize.sthlp>}