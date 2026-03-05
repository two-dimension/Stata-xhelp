{smcl}
{* *! version 1.1.15  07dec2018}{...}
{vieweralsosee "[M-5] deriv()" "mansection M-5 deriv()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] Quadrature()" "help mf_quadrature_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{viewerjumpto "Syntax" "mf_deriv_zh##syntax"}{...}
{viewerjumpto "Description" "mf_deriv_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_deriv_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_deriv_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_deriv_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_deriv_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_deriv_zh##source"}{...}
{viewerjumpto "Methods and formulas" "mf_deriv_zh##methods"}{...}
{viewerjumpto "Reference" "mf_deriv_zh##reference"}
{help mf_deriv:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] deriv()} {hline 2}}数值导数
{p_end}
{p2col:}({mansection M-5 deriv():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 19 8 2}
{it:{help mf_deriv##D:D}} 
{cmd:=}
{cmd:deriv_init()}


{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_evaluator(}{it:{help mf_deriv##D:D}} [{cmd:,}
{cmd:&}{it:function}{cmd:()}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_evaluatortype(}{it:{help mf_deriv##D:D}} [{cmd:,}
{it:{help mf_deriv##evaluatortype:evaluatortype}}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_params(}{it:{help mf_deriv##D:D}} [{cmd:,}
{it:real rowvector parameters}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_argument(}{it:{help mf_deriv##D:D}}{cmd:,}
{it:real scalar k} [{cmd:,}
{it:X}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_narguments(}{it:{help mf_deriv##D:D}} [{cmd:,}
{it:real scalar K}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_weights(}{it:{help mf_deriv##D:D}} [{cmd:,}
{it:real colvector weights}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_h(}{it:{help mf_deriv##D:D}} [{cmd:,}
{it:real rowvector h}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_scale(}{it:{help mf_deriv##D:D}} [{cmd:,}
{it:real matrix scale}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_bounds(}{it:{help mf_deriv##D:D}} [{cmd:,}
{it:real rowvector minmax}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_search(}{it:{help mf_deriv##D:D}} [{cmd:,}
{it:{help mf_deriv##search:search}}] {cmd:)}

{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv_init_verbose(}{it:{help mf_deriv##D:D}} [{cmd:,}
{c -(}{cmd:"on"} | {cmd:"off"}{c )-}] {cmd:)}


{p 8 25 2}
{it:(可变)}{bind:      }
{cmd:deriv(}{it:{help mf_deriv##D:D}}{cmd:,} {c -(}{cmd:0} | {cmd:1} | {cmd:2}{c )-}{cmd:)}

{p 8 25 2}
{it:real scalar}{bind:  }
{cmd:_deriv(}{it:{help mf_deriv##D:D}}{cmd:,} {c -(}{cmd:0} | {cmd:1} | {cmd:2}{c )-}{cmd:)}


{p 8 25 2}
{it:real scalar}{bind:   }
{cmd:deriv_result_value(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:real vector}
{cmd:deriv_result_values(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:void}{bind:         }
{cmd:_deriv_result_values(}{it:{help mf_deriv##D:D}}{cmd:,} {it:v}{cmd:)}

{p 8 25 2}
{it:real rowvector}
{cmd:deriv_result_gradient(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:void}{bind:         }
{cmd:_deriv_result_gradient(}{it:{help mf_deriv##D:D}}{cmd:,} {it:g}{cmd:)}

{p 8 25 2}
{it:real matrix}{bind:   }
{cmd:deriv_result_scores(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:void}{bind:         }
{cmd:_deriv_result_scores(}{it:{help mf_deriv##D:D}}{cmd:,} {it:S}{cmd:)}

{p 8 25 2}
{it:real matrix}
{cmd:deriv_result_Jacobian(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:void}{bind:         }
{cmd:_deriv_result_Jacobian(}{it:{help mf_deriv##D:D}}{cmd:,} {it:J}{cmd:)}

{p 8 25 2}
{it:real matrix}{bind:   }
{cmd:deriv_result_Hessian(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:void}{bind:         }
{cmd:_deriv_result_Hessian(}{it:{help mf_deriv##D:D}}{cmd:,} {it:H}{cmd:)}

{p 8 25 2}
{it:real rowvector}
{cmd:deriv_result_h(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:real matrix}{bind:   }
{cmd:deriv_result_scale(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:real matrix}{bind:   }
{cmd:deriv_result_delta(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:real scalar}{bind:   }
{cmd:deriv_result_errorcode(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:string scalar}{bind: }
{cmd:deriv_result_errortext(}{it:{help mf_deriv##D:D}}{cmd:)}

{p 8 25 2}
{it:real scalar}{bind:   }
{cmd:deriv_result_returncode(}{it:{help mf_deriv##D:D}}{cmd:)}


{p 8 25 2}
{it:void}{bind:          }
{cmd:deriv_query(}{it:{help mf_deriv##D:D}}{cmd:)}


{marker D}{...}
{pstd}
其中 {it:D}（如果已声明）应声明为

		{cmd:transmorphic} {it:D}


{marker evaluatortype}{...}
{pstd}
而 {it:evaluatortype} 是在 
{cmd:deriv_init_evaluatortype()} 中可选指定的

{p2colset 16 32 34 2}{...}
{p2col :{it:evaluatortype}}描述{p_end}
{p2line}
{p2col :{cmd:"d"}}{it:function}{cmd:()} 返回 {it:scalar} 值{p_end}
{p2col :{cmd:"v"}}{it:function}{cmd:()} 返回 {it:colvector} 值{p_end}
{p2col :{cmd:"t"}}{it:function}{cmd:()} 返回 {it:rowvector} 值{p_end}
{p2line}
{col 16}默认是 {cmd:"d"}，如果未设置。
{p2colreset}{...}


{marker search}{...}
{pstd}
而 {it:search} 是在 
{cmd:deriv_init_search()} 中可选指定的

{p2colset 16 32 34 2}{...}
{p2col :{it:search}}描述{p_end}
{p2line}
{p2col :{cmd:"interpolate"}}使用
	线性和二次插值法来搜索最佳
	delta{p_end}
{p2col :{cmd:"bracket"}}使用
	括号二次公式来搜索最佳 delta{p_end}
{p2col :{cmd:"off"}}不搜索最佳 delta{p_end}
{p2line}
{col 16}默认是 {cmd:"interpolate"}，如果未设置。
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
这些函数计算实函数
{it:f}({it:p}) 在实参数值 {it:p} 的导数。

{pstd}
{cmd:deriv_init()} 开始定义一个问题并返回 
{it:D}，一个问题描述句柄集，包含默认值。

{pstd}
然后 
{cmd:deriv_init_}{it:*}{cmd:(}{it:D}{cmd:,} ...{cmd:)} 函数允许
您修改这些默认值。您使用这些函数来描述您的特定问题：
设置函数 {it:f}() 的身份，
设置参数值等。

{pstd}
{cmd:deriv}{cmd:(}{it:D}{cmd:,} {it:todo}{cmd:)}
然后根据 {it:todo} 的值计算导数。

{phang2}
{cmd:deriv}{cmd:(}{it:D}{cmd:, 0)}
返回函数值而不计算导数。

{phang2}
{cmd:deriv}{cmd:(}{it:D}{cmd:, 1)}
返回一阶导数，也称为标量值函数的梯度向量（类型 {cmd:d} 和 {cmd:v}）或向量值函数的雅可比矩阵（类型 {cmd:t}）。

{phang2}
{cmd:deriv}{cmd:(}{it:D}{cmd:, 2)}
返回二阶导数矩阵，也称为海森矩阵；还计算梯度向量。此语法不允许用于类型 {cmd:t} 评估器。

{pstd}
{cmd:deriv_result_}{it:*}{cmd:(}{it:D}{cmd:)} 函数可以随后用于访问与解决方案相关的其他值。

{pstd}
通常您会停止在那里。在其他情况下，您可以在其他参数值处计算导数：

		{cmd:deriv_init_params(}{it:D}{cmd:,} {it:p_alt}{cmd:)}
		{cmd:deriv(}{it:D}{cmd:,} {it:todo}{cmd:)}

{pstd}
另外：

{pstd}
{cmd:deriv_init_}{it:*}{cmd:(}{it:D}{cmd:,} ...{cmd:)} 函数有
两种操作模式。每个都有一个可选参数，您指定以设置
值，不指定以查询值。
例如,
{cmd:deriv_init_params()} 的完整语法是

		{it:void} {cmd:deriv_init_params(}{it:D}{cmd:,} {it:real rowvector parameters}{cmd:)}

		{it:real rowvector} {cmd:deriv_init_params(}{it:D}{cmd:)}

{pstd}
第一种语法设置参数值并不返回任何内容。
第二种语法返回 
先前设置的（或未设置时的默认）参数值。

{pstd} 所有 {cmd:deriv_init_}{it:*}{cmd:(}{it:D}{cmd:,}
...{cmd:)} 函数的工作方式相同。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 deriv()Remarksandexamples:备注和示例}

        {mansection M-5 deriv()Methodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help mf_deriv##example1:第一个示例}
	{help mf_deriv##notation:符号和公式}
	{help mf_deriv##type_d:类型 d 评估器}
	{help mf_deriv##example2:类型 d 评估器示例}
	{help mf_deriv##type_v:类型 v 评估器}
	{help mf_deriv##args:用户定义的参数}
	{help mf_deriv##example3:类型 v 评估器示例}
	{help mf_deriv##type_t:类型 t 评估器}
	{help mf_deriv##example4:类型 t 评估器示例}

	{help mf_deriv##functions:函数}
	    {help mf_deriv##i_:deriv_init()}
	    {help mf_deriv##i_evaluator:deriv_init_evaluator() 和 deriv_init_evaluatortype()}
	    {help mf_deriv##i_argument:deriv_init_argument() 和 deriv_init_narguments()}
	    {help mf_deriv##i_weights:deriv_init_weights()}
	    {help mf_deriv##i_params:deriv_init_params()}

	    {help mf_deriv##i_adv:高级初始化函数}
		{help mf_deriv##i_h:deriv_init_h(), ..._scale(), ..._bounds(), 和 ..._search()}
		{help mf_deriv##i_verbose:deriv_init_verbose()}

	    {help mf_deriv##deriv:deriv()}
	   {help mf_deriv##_deriv:_deriv()}

	    {help mf_deriv##r_value:deriv_result_value()}
	    {help mf_deriv##r_values:deriv_result_values() 和 _deriv_result_values()}
	    {help mf_deriv##r_gradient:deriv_result_gradient()}
	   {help mf_deriv##r_gradient:_deriv_result_gradient()}
	    {help mf_deriv##r_scores:deriv_result_scores()}
	   {help mf_deriv##r_scores:_deriv_result_scores()}
	    {help mf_deriv##r_Jacobian:deriv_result_Jacobian()}
	   {help mf_deriv##r_Jacobian:_deriv_result_Jacobian()}
	    {help mf_deriv##r_hessian:deriv_result_Hessian()}
	   {help mf_deriv##r_hessian:_deriv_result_Hessian()}
	    {help mf_deriv##r_delta:deriv_result_h()}
	    {help mf_deriv##r_delta:deriv_result_scale()}
	    {help mf_deriv##r_delta:deriv_result_delta()}
	    {help mf_deriv##r_error:deriv_result_errorcode()}
	    {help mf_deriv##r_error:deriv_result_errortext()}
	    {help mf_deriv##r_error:deriv_result_returncode()}

	    {help mf_deriv##query:deriv_query()}


{marker example1}{...}
{title:第一个示例}

{pstd}
导数函数可以交互使用。

{pstd}
以下我们使用这些函数来 
计算 {it:f}'({it:x}) 在 {it:x}=0 处的值，其中函数为

{pmore}
{it:f}({it:x}) = exp(-{it:x}^2+{it:x}-3)

{* deriv1.smcl 来自 deriv.do}{...}
	{cmd:: void myeval(x, y)}
	> {cmd:{c -(}}
	>         {cmd:y = exp(-x^2 + x - 3)}
	> {cmd:{c )-}}

	{cmd:: D = deriv_init()}

	{cmd:: deriv_init_evaluator(D, &myeval())}

	{cmd:: deriv_init_params(D, 0)}

	{cmd:: dydx = deriv(D, 1)}

	{cmd:: dydx}
	  .0497870683

	{cmd:: exp(-3)}
	  .0497870684

{pstd}
从上述函数可得导数为
{it:f}'({it:x}) = (-2*{it:x}+1)*exp(-{it:x}^2+{it:x}-3)，
所以 {it:f}'(0) = exp(-3)。

{marker notation}{...}
{title:符号和公式}

{pstd}
我们以上述数学家的方式写出，即 
对 {it:y}={it:f}({it:x}) 进行求导。另一方面，统计学家则
认为是对 {it:s}={it:f}({it:b}) 进行求导。为了避免
偏袒，我们将写成 {it:v}={it:f}({it:p})，并使用以下符号
表示一般问题：

{p 8 8 2}
对 {it:v} = {it:f}({it:p}) 关于 {it:p} 求导， 其中

		{it:v}:  一个标量 

		{it:p}:  1 {it:x} {it:np}

{p 8 8 2}
梯度向量是 
{it:g} = {it:f'}({it:p}) = d{it:f}/d{it:p}，其中

		{it:g}:  1 {it:x} {it:np}

{p 8 8 2}
海森矩阵是 
{it:H} = {it:f''}({it:p}) = d^2{it:f}/d{it:p}d{it:p}'，其中

		{it:H}:  {it:np} {it:x} {it:np}

{pstd}
{cmd:deriv()} 也可以用于向量值函数。这里是向量值函数的记法：

{p 8 8 2}
对 {it:v} = {it:f}({it:p}) 关于 {it:p} 求导， 其中

		{it:v}:  1 {it:x} {it:nv}, 一个向量 

		{it:p}:  1 {it:x} {it:np}

{p 8 8 2}
雅可比矩阵是 
{it:J} = {it:f'}({it:p}) = d{it:f}/d{it:p}，其中

		{it:J}:  {it:nv} {it:x} {it:np}

{p 8 8 2}
且

		{it:J}[{it:i},{it:j}] = d{it:v}[{it:i}]/d{it:p}[{it:j}]

{p 8 8 2}
当与向量值函数一起使用时，{cmd:deriv()} 不计算二阶导数。

{pstd}
{cmd:deriv()} 使用以下公式计算 {it:f}() 在 {it:p} 处的数值导数

			~   {it:f}({it:p}+{it:d}) - {it:f}({it:p}-{it:d})
		{it:f}'({it:p})   =   {hline 15}
			          2*{it:d}

{pstd}
我们称 {it:d} 为用于计算数值导数的增量。
要搜寻最佳增量，我们将 {it:d} 分解为两个部分。

		{it:d} = {it:h}*{it:scale}

{pstd}
默认情况下，{it:h} 是依赖于参数值的固定值。

		{it:h} = {cmd:(abs(}{it:p}{cmd:)+1e-3)*1e-3}

{pstd}
{cmd:deriv()} 将搜索用于计算最佳数值导数的 {it:scale} 值，
即，目标是在确保
{it:f}({it:x}+{it:d}) - {it:f}({it:x}-{it:d}) 的精度至
少能达到双精度数字的一半条件下，使 {it:d} 尽可能小。
这通过寻找 {it:scale} 来实现，使得
{it:f}({it:x}+{it:d}) 和 {it:f}({it:x}-{it:d}) 落在 {it:v0} 和
{it:v1} 之间，其中

		{it:v0} = {cmd:(abs(}{it:f}{cmd:(}{it:x}{cmd:))}{cmd:+}{cmd:1e-8)*1e-8}
		{it:v1} = {cmd:(abs(}{it:f}{cmd:(}{it:x}{cmd:))}{cmd:+}{cmd:1e-7)*1e-7}

{pstd}
使用 {helpb mf_deriv##i_h:deriv_init_h()} 来改变默认的 {it:h} 值。
使用 {helpb mf_deriv##i_h:deriv_init_scale()} 来改变默认的初始
{it:scale} 值。
使用 {helpb mf_deriv##i_h:deriv_init_bounds()} 来改变用于确定最佳 {it:scale} 的默认边界
({cmd:1e-8}, {cmd:1e-7})。


{marker type_d}{...}
{title:类型 d 评估器}

{pstd}
在您能够使用导数函数之前，您必须编写一个评估器函数来计算 {it:f}()。我们上面展示的示例是
所谓的类型 {cmd:d} 评估器。让我们继续使用它。

{pstd}
我们编写的评估器函数为 

	{cmd:void myeval(x, y)}
	{cmd:{c -(}}
	        {cmd:y = exp(-x^2 + x - 3)}
	{cmd:{c )-}}

{pstd}
所有类型 {cmd:d} 评估器均以相同方式打开， 

	{it:void} {it:evaluator}{cmd:(}{it:x}{cmd:,}  {it:y}{cmd:)}

{pstd}
尽管您命名参数的方式由您决定。我们按数学家的思路命名参数，尽管我们也可以按统计学家的思路命名它们：

	{it:void} {it:evaluator}{cmd:(}{it:b}{cmd:,}  {it:s}{cmd:)}

{pstd}
为了避免偏袒，我们将它们写成 

	{it:void} {it:evaluator}{cmd:(}{it:p}{cmd:,}  {it:v}{cmd:)}

{pstd}
也就是说，我们将根据 {it:p} 的元素计算导数 {it:v}={it:f}({it:p}) 的方式来思考。

{pstd}
这里是类型 {cmd:d} 评估器的完整定义：

	{hline 62}
	{it:void} {it:evaluator}{cmd:(}{...}
{it:real rowvector p}{cmd:,}  {it:v}{cmd:)}

	where {it:v} 是要返回的值：

		{it:v}:  {it:real scalar}

	{it:evaluator}{cmd:()} 内部给定在 {it:p} 下的值填充 {it:v}。

	{it:evaluator}{cmd:()} 可以返回 {it:v}={cmd:.}，如果 {it:f}() 无法在 {it:p} 处进行评估。
	{hline 62}


{marker example2}{...}
{title:类型 d 评估器示例}

{pstd}
我们希望计算以下函数在 {it:p}_1=1 和 {it:p}_2=2 处的梯度：

                          2     2
		{it:v} = exp(-{it:p}  -  {it:p}  -  {it:p p}  +  {it:p}  -  {it:p}  -  3)
                          1     2     1 2     1     2

{pstd} 
我们问题的数值解决方案是

{* deriv2.smcl 来自 deriv.do}{...}
	{cmd:: void eval_d(p, v)}
	> {cmd:{c -(}}
	>         {cmd:v = exp(-p[1]^2 - p[2]^2 - p[1]*p[2] + p[1] - p[2] - 3)}
	> {cmd:{c )-}}

	{cmd:: D = deriv_init()}

	{cmd:: deriv_init_evaluator(D, &eval_d())}

	{cmd:: deriv_init_params(D, (1,2))}

	{cmd:: grad = deriv(D, 1)}

	{cmd:: grad}
	       {txt}           1              2
	    {c TLC}{hline 31}{c TRC}
	  1 {c |}  -.0000501051   -.0001002102{txt}  {c |}
	    {c BLC}{hline 31}{c BRC}

	{cmd:: (-2*1 - 2 + 1)*exp(-1^2 - 2^2 - 1*2 + 1 - 2 - 3)}
	  -.0000501051

	{cmd:: (-2*2 - 1 - 1)*exp(-1^2 - 2^2 - 1*2 + 1 - 2 - 3)}
	  -.0001002102

{pstd}
对于这个问题，梯度函数的各个元素由以下公式给出，我们发现 {cmd:deriv()} 计算出的值与分析结果（显示的有效数字数量）一致。

	d{it:v}                       2     2
	{hline 3} = (-2{it:p} - {it:p} + 1)exp(-{it:p}  -  {it:p}  -  {it:p p}  +  {it:p}  -  {it:p}  -  3)
	d{it:p}        1   2          1     2     1 2     1     2
          1

	d{it:v}                       2     2
	{hline 3} = (-2{it:p} - {it:p} - 1)exp(-{it:p}  -  {it:p}  -  {it:p p}  +  {it:p}  -  {it:p}  -  3)
	d{it:p}        2   1          1     2     1 2     1     2
          2


{marker type_v}{...}
{title:类型 v 评估器}

{pstd}
在某些统计应用中，您发现类型 {cmd:v} 评估器比类型 {cmd:d} 评估器更方便进行编码。

{pstd}
在统计应用中，人们往往认为有一组值的数据集，
排列在矩阵 {it:X} 中，其中的行是观察值。函数
{bind:{it:h}({it:p}, {it:X}{cmd:[}{it:i}{cmd:,.]})}
可以单独对每行进行计算，这些结果的总和形成了
我们希望计算导数的函数 {it:f(}{it:p})。

{pstd}
类型 {cmd:v} 评估器就是为这种情况设计的。

{pstd}
在类型 {cmd:d} 评估器中，您返回标量 {it:v}={it:f}({it:p})。

{pstd}
在类型 {cmd:v} 评估器中，您返回一个列向量，
{it:v}，使得 {cmd:colsum(}{it:v}{cmd:)}={it:f}({it:p})。

{pstd}
类型 {cmd:v} 评估器的代码轮廓与类型 {cmd:d} 评估器相同。所有不同之处在于，{it:v}，
在 {cmd:d} 的情况下是 {it:real scalar}，在 {cmd:v} 的情况下是 {it:real colvector}。


{marker args}{...}
{title:用户定义的参数}

{pstd}
类型 {cmd:v} 评估器出现在统计应用中，并且在这种应用中，有数据；仅仅知道 {it:p} 并不足以计算 {it:v}、{it:g} 和 {it:H}。
实际上，当编码类型 {cmd:d} 评估器时，也可能出现同样的问题。

{pstd}
您可以将额外参数传递给评估器。
所有评估器的第一行，无论类型如何都是 

		{it:void} {it:evaluator}{cmd:(}{...}
{it:p}{cmd:,}  {it:v}{cmd:)}

{pstd}
如果您编码 

	{cmd:deriv_init_argument(}{it:D}{cmd:,} {cmd:1,} {it:X}{cmd:)} 

{pstd}
第一行变成 

		{it:void} {it:evaluator}{cmd:(}{...}
{it:p}{cmd:,}  {it:X}{cmd:,}  {it:v}{cmd:)}

{pstd}
如果您编码 

	{cmd:deriv_init_argument(}{it:D}{cmd:,} {cmd:1,} {it:X}{cmd:)} 
	{cmd:deriv_init_argument(}{it:D}{cmd:,} {cmd:2,} {it:Y}{cmd:)} 

{pstd}
第一行变成 

		{it:void} {it:evaluator}{cmd:(}{...}
{it:p}{cmd:,}  {it:X}{cmd:,} {it:Y}{cmd:,}  {it:v}{cmd:)}

{pstd}
以此类推，可达到九个附加参数。  
也就是说，您可以指定额外参数以传递给您的函数。


{marker example3}{...}
{title:类型 v 评估器示例}

{pstd}
您有以下数据：

{* deriv3a.smcl 来自 deriv.do}{...}
	{cmd:: x}
	        {txt}  1
	     {c TLC}{hline 7}{c TRC}
	   1 {c |}  .35{txt}  {c |}
	   2 {c |}  .29{txt}  {c |}
	   3 {c |}   .3{txt}  {c |}
	   4 {c |}   .3{txt}  {c |}
	   5 {c |}  .65{txt}  {c |}
	   6 {c |}  .56{txt}  {c |}
	   7 {c |}  .37{txt}  {c |}
	   8 {c |}  .16{txt}  {c |}
	   9 {c |}  .26{txt}  {c |}
	  10 {c |}  .19{txt}  {c |}
	     {c BLC}{hline 7}{c BRC}

{pstd}
您认为这些数据是具有固定参数 alpha 和 beta 的 beta 分布过程的结果，您希望计算与这些参数 alpha 和 beta ({it:a} 和 {it:b}) 的某些值相关的对数似然的梯度向量和海森矩阵。 beta 分布的密度公式为

			           Gamma({it:a}+{it:b})       {it:a}-1      {it:b}-1
		density({it:x}) =   -----------------   {it:x}    (1-{it:x})
			       Gamma({it:a}) Gamma({it:b})

{pstd}
在我们对此问题的类型 {cmd:v} 解中，我们计算 a=0.5 和 b=2 时的梯度和海森矩阵。

{* deriv3b.smcl 来自 deriv.do}{...}
	{cmd:: void lnbetaden_v(p, x, lnf)}
	> {cmd:{c -(}}
	>         {cmd:a = p[1]}
	>         {cmd:b = p[2]}
	>         {cmd:lnf = lngamma(a+b) :- lngamma(a) :- lngamma(b) :+}
	>                 {cmd:(a-1)*log(x) :+ (b-1)*log(1:-x)}
	> {cmd:{c )-}}

	{cmd:: D = deriv_init()}

	{cmd:: deriv_init_evaluator(D, &lnbetaden_v())}

	{cmd:: deriv_init_evaluatortype(D, "v")}

	{cmd:: deriv_init_params(D, (0.5, 2))}

	{cmd:: deriv_init_argument(D, 1, x)} {right:// <- 重要标记        }

	{cmd:: deriv(D, 2)}
	{txt}[对称]
	                  1              2
	    {c TLC}{hline 31}{c TRC}
	  1 {c |}  -116.4988089               {txt}  {c |}
	  2 {c |}   8.724410052   -1.715062542{txt}  {c |}
	    {c BLC}{hline 31}{c BRC}

	{cmd:: deriv_result_gradient(D)}
	       {txt}           1              2
	    {c TLC}{hline 31}{c TRC}
	  1 {c |}   15.12578465   -1.701917722{txt}  {c |}
	    {c BLC}{hline 31}{c BRC}

{pstd}
请注意以下几点：

{p 8 12 2}
1.  我们将返回值命名为 {cmd:lnf}，而不是 {cmd:v}。您可以任意命名参数。

{p 8 12 2}
2.  我们通过编码 {cmd:deriv_init_argument(D,} {cmd:1,} {cmd:x)} 进行安排传递了一个额外的参数。额外的参数是向量 {cmd:x}，我们之前列出了。 在我们的函数中，我们将参数接收为 {cmd:x}，但我们也可以使用不同的名称，就像我们使用 {cmd:lnf} 而不是 {cmd:v} 一样。

{p 8 12 2}
3.  我们将评估器的类型设置为 {cmd:"v"}。


{marker type_t}{...}
{title:类型 t 评估器}

{pstd}
类型 {cmd:t} 评估器用于从向量值函数计算雅可比矩阵。

{pstd}
类型 {cmd:t} 评估器的特点是，结果值向量不应被求和。一个示例是当函数 {it:f}() 从 {it:p} 的定义域执行非线性变换到 {it:v} 的定义域。

{marker example4}{...}
{title:类型 t 评估器示例}

{pstd}
让我们计算以下变换的雅可比矩阵：

		{it:v} = {it:p} + {it:p}
                 1   1   2

		{it:v} = {it:p} - {it:p}
                 2   1   2

{pstd}
这里是我们在 {it:p} = (0,0) 处评估雅可比矩阵的数值解决方案：

{* deriv4.smcl 来自 deriv.do}{...}
	{cmd:: void eval_t1(p, v)}
	> {cmd:{c -(}}
	>         {cmd:v = J(1,2,.)}
	>         {cmd:v[1] = p[1] + p[2]}
	>         {cmd:v[2] = p[1] - p[2]}
	> {cmd:{c )-}}

	{cmd:: D = deriv_init()}

	{cmd:: deriv_init_evaluator(D, &eval_t1())}

	{cmd:: deriv_init_evaluatortype(D, "t")}

	{cmd:: deriv_init_params(D, (0,0))}

	{cmd:: deriv(D, 1)}
	{txt}[对称]
	        1    2
	    {c TLC}{hline 11}{c TRC}
	  1 {c |}   1     {txt}  {c |}
	  2 {c |}   1   -1{txt}  {c |}
	    {c BLC}{hline 11}{c BRC}


{pstd}
现在让我们计算一个不太简单的变换的雅可比矩阵：

                     2
		{it:v} = {it:p}
                 1   1

		{it:v} = {it:p} * {it:p}
                 2   1   2

{pstd}
这里是我们在 {it:p} = (1,2) 处评估雅可比矩阵的数值解决方案：

{* deriv5.smcl 来自 deriv.do}{...}
	{cmd:: void eval_t2(p, v)}
	> {cmd:{c -(}}
	>         {cmd:v = J(1,2,.)}
	>         {cmd:v[1] = p[1]^2}
	>         {cmd:v[2] = p[1] * p[2]}
	> {cmd:{c )-}}

	{cmd:: D = deriv_init()}

	{cmd:: deriv_init_evaluator(D, &eval_t2())}

	{cmd:: deriv_init_evaluatortype(D, "t")}

	{cmd:: deriv_init_params(D, (1,2))}

	{cmd:: deriv(D, 1)}
	       {txt}          1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  1.999999998             0{txt}  {c |}
	  2 {c |}            2             1{txt}  {c |}
	    {c BLC}{hline 29}{c BRC}


{marker functions}{...}
{title:函数}

{marker i_}{...}
{title:deriv_init()}

{p 8 12 2}
{it:transmorphic} 
{cmd:deriv_init()}

{pstd}
{cmd:deriv_init()} 用于开始一个导数问题。将返回的结果存储在您选择的变量名中；我们在本文件中使用了 
{it:D}。您将 {it:D} 
作为第一个参数传递给其他 {cmd:deriv}{it:*}{cmd:()} 函数。

{pstd}
{cmd:deriv_init()} 将所有 {cmd:deriv_init_}{it:*}{cmd:()} 值设置为
其默认值。您可以使用 
{cmd:deriv_init_}{it:*}{cmd:()} 的查询形式来确定个别默认值，或者您可以使用 {cmd:deriv_query()} 查看它们。

{pstd}
查询形式的 
{cmd:deriv_init_}{it:*}{cmd:()} 
可以在调用 {cmd:deriv()} 之前或之后使用。


{marker i_evaluator}{...}
{title:deriv_init_evaluator() 和 deriv_init_evaluatortype()}

{p 8 12 2}
{it:void}
{cmd:deriv_init_evaluator(}{it:D}{cmd:,}
{it:pointer(function) scalar fptr}{cmd:)}

{p 8 25 2}
{it:void}
{cmd:deriv_init_evaluatortype(}{it:D}{cmd:,}
{it:evaluatortype}{cmd:)}


{p 8 12 2}
{it:pointer(function) scalar}
{cmd:deriv_init_evaluator(}{it:D}{cmd:)}

{p 8 25 2}
{it:string scalar}{bind:           }
{cmd:deriv_init_evaluatortype(}{it:D}{cmd:)}

{pstd}
{cmd:deriv_init_evaluator(}{it:D}{cmd:,}
{it:fptr}{cmd:)} 指定用于评估 {it:f}({it:p}) 的函数。此函数的使用是必需的。
如果您的函数名为 {cmd:myfcn()}，则代码为 
{cmd:deriv_init_evaluator(}{it:D}{cmd:,} {cmd:&myfcn())}。

{pstd}
{cmd:deriv_init_evaluatortype(}{it:D}{cmd:,}
{it:evaluatortype}{cmd:)}
指定已使用 {cmd:deriv_init_evaluator()} 设置的函数的能力。
{it:evaluatortype} 的选项有 
{cmd:"d"},
{cmd:"v"},
和 {cmd:"t"}。
如果您未调用此函数，默认值为 {cmd:"d"}。

{pstd}
{cmd:deriv_init_evaluator(}{it:D}{cmd:)}
返回已设置的函数的指针。

{pstd}
{cmd:deriv_init_evaluatortype(}{it:D}{cmd:)}
返回当前设置的评估器类型。


{marker i_argument}{...}
{title:deriv_init_argument() 和 deriv_init_narguments()}

{p 8 8 2}
{it:void}{bind:          }
{cmd:deriv_init_argument(}{it:D}{cmd:,}
{it:real scalar k}{cmd:,}
{it:X}{cmd:)}

{p 8 8 2}
{it:void}{bind:          }
{cmd:deriv_init_narguments(}{it:D}{cmd:,}
{it:real scalar K}{cmd:)}


{p 8 8 2}
{it:pointer scalar}
{cmd:deriv_init_argument(}{it:D}{cmd:,}
{it:real scalar k}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:   }
{cmd:deriv_init_narguments(}{it:D}{cmd:)}

{pstd}
{cmd:deriv_init_argument(}{it:D}{cmd:,} {it:k}{cmd:,} {it:X}{cmd:)}
将评估器函数的第 {it:k} 个额外参数设置为 {it:X}。
{it:X} 可以是任何东西，包括一个视图矩阵或甚至一个函数的指针。{it:X} 没有被复制；它存储的是指向 {it:X} 的指针，因此您对 {it:X} 在设置后和使用之间所做的任何更改都会反映在传递给评估函数的数据中。

{pstd}
{cmd:deriv_init_narguments(}{it:D}{cmd:,} {it:K}{cmd:)} 设置将传递给评估函数的额外参数的数量。此函数是无用的，仅用于完整性。当您使用 {cmd:deriv_init_argument()} 时，额外参数的数量会自动设置。

{pstd}
{cmd:deriv_init_argument(}{it:D}{cmd:,} {it:k}{cmd:)} 返回先前设置的对象的指针。

{pstd}
{cmd:deriv_init_narguments(}{it:D}{cmd:)} 返回传递给评估函数的额外参数数量。


{marker i_weights}{...}
{title:deriv_init_weights()}

{p 8 8 2}
{it:void}{bind:          }
{cmd:deriv_init_weights(}{it:D}{cmd:,}
{it:real colvector weights}{cmd:)}

{p 8 8 2}
{it:pointer scalar}
{cmd:deriv_init_weights(}{it:D}{cmd:)}

{pstd}
{cmd:deriv_init_weights(}{it:D}{cmd:,} {it:weights}{cmd:)}
设置与类型 {cmd:v} 评估器一起使用的权重，以产生函数值。默认情况下，{cmd:deriv()} 使用类型 {cmd:v} 评估器来计算函数值。
使用权重时，{cmd:deriv()} 使用 {cmd:cross}{cmd:(}{it:weights}{cmd:,} {it:v}{cmd:)}。
{it:weights} 必须与评估者返回的列向量行适应。

{pstd}
{cmd:deriv_init_weights(}{it:D}{cmd:)} 返回先前设置的权重向量的指针。


{marker i_params}{...}
{title:deriv_init_params()}

{p 8 8 2}
{it:void}{bind:          }
{cmd:deriv_init_params(}{it:D}{cmd:,}
{it:real rowvector params}{cmd:)}

{p 8 8 2}
{it:real rowvector}
{cmd:deriv_init_params(}{it:D}{cmd:)}

{pstd}
{cmd:deriv_init_params(}{it:D}{cmd:,}
{it:params}{cmd:)} 设置将计算导数时的参数值。
此函数的使用是必需的。

{pstd}
{cmd:deriv_init_params(}{it:D}{cmd:)}
返回计算导数时使用的参数值。


{marker i_adv}{...}
{title:高级初始化函数}

{pstd}
其他 {cmd:deriv_init_}{it:*}{cmd:()} 函数提供对数值导数求解器的细粒度控制。


{marker i_h}{...}
{title:deriv_init_h()}
{title:deriv_init_scale()}
{title:deriv_init_bounds()}
{title:deriv_init_search()}

{p 8 8 2}
{it:void}{bind:          }
{cmd:deriv_init_h(}{it:D}{cmd:,}
{it:real rowvector h}{cmd:)}

{p 8 8 2}
{it:void}{bind:          }
{cmd:deriv_init_scale(}{it:D}{cmd:,}
{it:real rowvector s}{cmd:)}

{p 8 8 2}
{it:void}{bind:          }
{cmd:deriv_init_bounds(}{it:D}{cmd:,}
{it:real rowvector minmax}{cmd:)}

{p 8 8 2}
{it:void}{bind:          }
{cmd:deriv_init_search(}{it:D}{cmd:,}
{it:search}{cmd:)}

{p 8 8 2}
{it:real rowvector}
{cmd:deriv_init_h(}{it:D}{cmd:)}

{p 8 8 2}
{it:real rowvector}
{cmd:deriv_init_scale(}{it:D}{cmd:)}

{p 8 8 2}
{it:real rowvector}
{cmd:deriv_init_bounds(}{it:D}{cmd:)}

{p 8 8 2}
{it:string scalar}{bind: }
{cmd:deriv_init_search(}{it:D}{cmd:)}

{pstd}
{cmd:deriv_init_h(}{it:D}{cmd:,} {it:h}{cmd:)}
设置用于计算数值导数的 {it:h} 值。

{pstd}
{cmd:deriv_init_scale(}{it:D}{cmd:,} {it:s}{cmd:)}
设置用于计算数值导数的起始比例值。

{pstd}
{cmd:deriv_init_bounds(}{it:D}{cmd:,} {it:minmax}{cmd:)}
设置用于搜索最佳比例值的最小值和最大值。默认值为 {it:minmax} = {cmd:(1e-8, 1e-7)}。

{pstd}
{cmd:deriv_init_search(}{it:D}{cmd:,} {cmd:"interpolate")}
使 {cmd:deriv()} 使用线性和二次插值法来寻找最佳增量以计算数值导数。
这是默认的搜索方法。

{pstd}
{cmd:deriv_init_search(}{it:D}{cmd:,} {cmd:"bracket")}
使 {cmd:deriv()} 使用括号二次公式来搜索最佳增量以计算数值导数。

{pstd}
{cmd:deriv_init_search(}{it:D}{cmd:,} {cmd:"off")}
防止 {cmd:deriv()} 搜索最佳增量。

{pstd}
{cmd:deriv_init_h(}{it:D}{cmd:)}
返回用户指定的 {it:h} 值。

{pstd}
{cmd:deriv_init_scale(}{it:D}{cmd:)}
返回用户指定的起始比例值。

{pstd}
{cmd:deriv_init_bounds(}{it:D}{cmd:)}
返回用户指定的搜索边界。

{pstd}
{cmd:deriv_init_search(}{it:D}{cmd:)}
返回当前设置的搜索方法。


{marker i_verbose}{...}
{title:deriv_init_verbose()}

{p 8 25 2}
{it:void}{bind:          }
{cmd:deriv_init_verbose(}{it:D}{cmd:,}
{it:verbose}{cmd:)}

{p 8 25 2}
{it:string scalar}{bind: }
{cmd:deriv_init_verbose(}{it:D}{cmd:)} 

{pstd}
{cmd:deriv_init_verbose(}{it:D}{cmd:,}
{it:verbose}{cmd:)} 设置在执行 {cmd:deriv()} 或 {cmd:_deriv()} 期间产生的错误消息是否应显示。
将 {it:verbose} 设置为 {cmd:"on"} 意味着它们会被显示；
{cmd:"off"} 意味着它们不会被显示。
默认情况下为 {cmd:"on"}。将 {it:verbose} 设置为 {cmd:"off"} 仅对使用 {cmd:_deriv()} 的用户有意义。

{pstd}
{cmd:deriv_init_verbose(}{it:D}{cmd:)}
返回当前的 {it:verbose} 值。


{marker deriv}{...}
{title:deriv()}

{p 8 12 2}
{it:(可变)} 
{cmd:deriv(}{it:D}{cmd:,} {it:todo}{cmd:)}

{pstd}
{cmd:deriv(}{it:D}{cmd:,} {it:todo}{cmd:)}
调用导数处理。
如果发生错误，{cmd:deriv()} 将中止。

{phang2}
{cmd:deriv}{cmd:(}{it:D}{cmd:, 0)}
返回函数值而不计算导数。

{phang2}
{cmd:deriv}{cmd:(}{it:D}{cmd:, 1)}
返回梯度向量；海森矩阵不被计算。

{phang2}
{cmd:deriv}{cmd:(}{it:D}{cmd:, 2)}
返回海森矩阵；还计算梯度向量。

{pstd}
在您调用 {cmd:deriv()} 之前，您必须定义了您的评估器
函数，{it:evaluator}{cmd:()}，并且必须设置参数值，以便在
这些值上计算导数：

{col 17}{it:D} {cmd:= deriv_init()}
{col 17}{cmd:deriv_init_evaluator(}{it:D}{cmd:, &}{it:evaluator}{cmd:())}
{col 17}{cmd:deriv_init_params(}{it:D}{cmd:, (}...{cmd:))}

{pstd}
上述假设您的评估器函数为类型 {cmd:d}。
如果您的评估器函数类型为 {cmd:v}（即，它返回一个值列向量而不是标量值），那么您还需要编码

{col 17}{cmd:deriv_init_evaluatortype(}{it:D}{cmd:, "v")}

{pstd}
您可能还可以编码其他 {cmd:deriv_init_}{it:*}{cmd:()} 函数。

{pstd}
一旦 {cmd:deriv()} 完成，您可以使用 
{cmd:deriv_result_}{it:*}{cmd:()} 函数。
您还可以继续使用 
{cmd:deriv_init_}{it:*}{cmd:()} 函数 
访问初始设置，您可以使用它们更改设置并重新计算导数（即再次调用 {cmd:deriv()}）如果您愿意。


{marker _deriv}{...}
{title:_deriv()}

{p 8 12 2}
{it:real scalar} 
{cmd:_deriv(}{it:D}{cmd:,} {it:todo}{cmd:)}

{pstd}
{cmd:_deriv(}{it:D}{cmd:)} 执行与
{cmd:deriv(}{it:D}{cmd:)} 相同的操作，不同的是，它返回的是一个实数标量，而不是请求的导数，并且在出现数值问题时不会中止。
{cmd:_deriv()} 返回 0 如果一切正常。返回值被称为
错误代码。

{pstd}
{cmd:deriv()} 返回请求的结果。它可以这样工作，因为
数值导数计算过程中的所有操作都必须顺利进行。
如果不是，{cmd:deriv()} 将中止执行。

{pstd}
{cmd:_deriv()} 返回错误代码。如果为 0，则数值导数
计算过程顺利进行，您可以使用 
{bf:{help mf_deriv##r_gradient:deriv_result_gradient()}} 获取梯度向量。
如果不顺利，您可以使用错误代码来诊断发生了什么问题并采取适当的措施。

{pstd}
因此，{cmd:_deriv(}{it:D}{cmd:)} 是
{cmd:deriv(}{it:D}{cmd:)} 的一种替代方案。
两个函数执行相同的操作。
不同之处在于在出现数值困难时会发生什么。

{pstd}
{cmd:deriv()} 和 {cmd:_deriv()} 可以解决大多数数值困难。
例如，您编写的评估函数被允许在
{it:p}+{it:d} 处返回 {it:v} 等于缺失，如果在计算导数时发生这种情况，
{cmd:deriv()} 和 {cmd:_deriv()} 将搜索更好的 {it:d} 来进行导数计算。
但是，{cmd:deriv()} 不能容忍在 {it:p}（您使用 {helpb mf_deriv##i_params:deriv_init_params()} 设置的参数值） 处发生这种情况，因为在您希望 {cmd:deriv()} 计算数值导数时，函数值必须存在。{cmd:deriv()} 会发出错误消息并中止，这意味着执行停止。这可能有其优势。
调用程序无需包含复杂的代码来处理这种情况，因为停止是好的，因为人类会知道处理问题。

{pstd}
{cmd:_deriv()} 然而不停止执行。
而是 {cmd:_deriv()} 
返回非零值给调用者，识别出发生了什么错误。
唯一的例外是 {cmd:_deriv()} 在评估函数在 {it:p} 处返回 {it:v} 等于缺失时仍然返回零值，使程序员能够处理这种特殊情况，而不必关闭 {helpb mf_deriv##i_verbose:deriv_init_verbose()}。

{pstd}
实现先进系统的程序员希望使用 {cmd:_deriv()} 而不是 {cmd:deriv()}。其他人可使用 {cmd:deriv()}。

{pstd}
使用 {cmd:_deriv()} 的程序员会对 
{helpb mf_deriv##i_verbose:deriv_init_verbose()},
{helpb mf_deriv##r_error:deriv_result_errorcode()},
{helpb mf_deriv##r_error:deriv_result_errortext()},
以及
{helpb mf_deriv##r_error:deriv_result_returncode()} 这些函数感兴趣。

{pstd}
{cmd:_deriv()} 返回的错误代码如下，按
{it:{help mf_deriv##r_error:deriv_result_errorcode(), ..._errortext(), 和 ..._returncode()}} 下列出。


{marker r_value}{...}
{title:deriv_result_value()}

{p 8 25 2}
{it:real scalar}
{cmd:deriv_result_value(}{it:D}{cmd:)}

{pstd}
{cmd:deriv_result_value(}{it:D}{cmd:)} 返回在 {it:p} 处评估的 {it:f}() 的值。


{marker r_values}{...}
{title:deriv_result_values() 和 _deriv_result_values()}

{p 8 25 2}
{it:real matrix}
{cmd:deriv_result_values(}{it:D}{cmd:)}

{p 8 25 2}
{it:void}{bind:      }
{cmd:_deriv_result_values(}{it:D}{cmd:,} {it:v}{cmd:)}

{pstd}
{cmd:deriv_result_values(}{it:D}{cmd:)} 返回评估者返回的向量值。对于类型 {cmd:v} 评估器，这是对应于在 {it:p} 处评估的 {it:f}() 的列向量之和。对于类型 {cmd:t} 评估器，这是评估者返回的行向量。

{pstd}
{cmd:_deriv_result_values(}{it:D}{cmd:,} {it:v}{cmd:)} 使用 {help mf_swap_zh:swap()} 来交换 {it:v} 和存储在 {it:D} 中的向量值。
这会破坏存储在 {it:D} 中的向量值。

{pstd}
这些函数仅应在类型 {cmd:v} 评估器中调用。


{marker r_gradient}{...}
{title:deriv_result_gradient()}
{title:_deriv_result_gradient()}

{p 8 25 2}
{it:real rowvector}
{cmd:deriv_result_gradient(}{it:D}{cmd:)}

{p 8 25 2}
{it:void}{bind:         }
{cmd:_deriv_result_gradient(}{it:D}{cmd:,} {it:g}{cmd:)}

{pstd}
{cmd:deriv_result_gradient(}{it:D}{cmd:)} 返回在 {it:p} 处评估的梯度向量。

{pstd}
{cmd:_deriv_result_gradient(}{it:D}{cmd:,} {it:g}{cmd:)} 使用 {help mf_swap_zh:swap()} 交换 {it:g} 和存储在 {it:D} 中的梯度向量。这会破坏存储在 {it:D} 中的梯度向量。


{marker r_scores}{...}
{title:deriv_result_scores()}
{title:_deriv_result_scores()}

{p 8 25 2}
{it:real matrix}
{cmd:deriv_result_scores(}{it:D}{cmd:)}

{p 8 25 2}
{it:void}{bind:      }
{cmd:_deriv_result_scores(}{it:D}{cmd:,} {it:S}{cmd:)}

{pstd}
{cmd:deriv_result_scores(}{it:D}{cmd:)} 返回在 {it:p} 处评估的得分矩阵。得分矩阵可以按列求和以产生梯度向量。

{pstd}
{cmd:_deriv_result_scores(}{it:D}{cmd:,} {it:S}{cmd:)} 使用 {help mf_swap_zh:swap()} 交换 {it:S} 和存储在 {it:D} 中的得分矩阵。这会破坏存储在 {it:D} 中的得分矩阵。

{pstd}
这些函数仅应在类型 {cmd:v} 评估器中调用。


{marker r_Jacobian}{...}
{title:deriv_result_Jacobian()}
{title:_deriv_result_Jacobian()}

{p 8 25 2}
{it:real matrix}
{cmd:deriv_result_Jacobian(}{it:D}{cmd:)}

{p 8 25 2}
{it:void}{bind:      }
{cmd:_deriv_result_Jacobian(}{it:D}{cmd:,} {it:J}{cmd:)}

{pstd}
{cmd:deriv_result_Jacobian(}{it:D}{cmd:)} 返回在 {it:p} 处评估的雅可比矩阵。

{pstd}
{cmd:_deriv_result_Jacobian(}{it:D}{cmd:,} {it:J}{cmd:)} 使用 {help mf_swap_zh:swap()} 交换 {it:J} 和存储在 {it:D} 中的雅可比矩阵。这会破坏存储在 {it:D} 中的雅可比矩阵。

{pstd}
这些函数仅应在类型 {cmd:t} 评估器中调用。


{marker r_hessian}{...}
{title:deriv_result_Hessian()}
{title:_deriv_result_Hessian()}

{p 8 25 2}
{it:real matrix}
{cmd:deriv_result_Hessian(}{it:D}{cmd:)}

{p 8 25 2}
{it:void}{bind:      }
{cmd:_deriv_result_Hessian(}{it:D}{cmd:,} {it:H}{cmd:)}

{pstd}
{cmd:deriv_result_Hessian(}{it:D}{cmd:)} 返回在 {it:p} 处评估的海森矩阵。

{pstd}
{cmd:_deriv_result_Hessian(}{it:D}{cmd:,} {it:H}{cmd:)} 使用 {help mf_swap_zh:swap()} 交换 {it:H} 和存储在 {it:D} 中的海森矩阵。这会破坏存储在 {it:D} 中的海森矩阵。

{pstd}
这些函数不应与类型 {cmd:t} 评估器一起调用。


{marker r_delta}{...}
{title:deriv_result_h()}
{title:deriv_result_scale()}
{title:deriv_result_delta()}

{p 8 25 2}
{it:real rowvector}
{cmd:deriv_result_h(}{it:D}{cmd:)}

{p 8 25 2}
{it:real rowvector}
{cmd:deriv_result_scale(}{it:D}{cmd:)}

{p 8 25 2}
{it:real rowvector}
{cmd:deriv_result_delta(}{it:D}{cmd:)}

{pstd}
{cmd:deriv_result_h(}{it:D}{cmd:)} 返回用于计算数值导数的 {it:h} 值向量。

{pstd}
{cmd:deriv_result_scale(}{it:D}{cmd:)} 返回用于计算数值导数的比例值向量。

{pstd}
{cmd:deriv_result_delta(}{it:D}{cmd:)} 返回用于计算数值导数的增量值向量。  


{marker r_error}{...}
{title:deriv_result_errorcode()}
{title:deriv_result_errortext()}
{title:deriv_result_returncode()}

{p 8 25 2}
{it:real scalar}{bind:  }
{cmd:deriv_result_errorcode(}{it:D}{cmd:)}

{p 8 25 2}
{it:string scalar}
{cmd:deriv_result_errortext(}{it:D}{cmd:)}

{p 8 25 2}
{it:real scalar}{bind:  }
{cmd:deriv_result_returncode(}{it:D}{cmd:)}

{pstd}
这些函数在调用 {cmd:_deriv()} 后使用。

{pstd}
{cmd:deriv_result_errorcode(}{it:D}{cmd:)} 返回与 {cmd:_deriv()} 相同的错误代码。
如果没有错误，值将为零。
错误代码列表如下。

{pstd}
{cmd:deriv_result_errortext(}{it:D}{cmd:)} 返回一个字符串，包含与错误代码对应的错误消息。
如果错误代码为零，则字符串将为 {cmd:""}。

{pstd}
{cmd:deriv_result_returncode(}{it:D}{cmd:)} 返回与错误代码相对应的 Stata 返回代码。
映射在下表中列出。  

{pstd}
在高级代码中，这些函数可以用作

		{cmd:(void) _deriv(D, todo)}
		...
		{cmd:if (ec = deriv_result_code(D)) {c -(}}
			{cmd:errprintf("{c -(}p{c )-}\n")}
			{cmd:errprintf("%s\n", deriv_result_errortext(D))}
			{cmd:errprintf("{c -(}p_end{c )-}\n")}
			{cmd:exit(deriv_result_returncode(D))}
			{cmd:/*未到达*/}
		{cmd:{c )-}}

{pstd}
错误代码及其对应的 Stata 返回代码如下：

	   错误   返回
	   代码     代码   错误文本
	{hline 70}
	     1       198   无效的 todo 参数

             2       111   需要评估函数

             3       459   需要参数值

             4       459   参数值不可行

             5       459   无法计算数值导数 --
			   遇到不连续区域或缺失值

             6       459   无法计算数值导数 -- 
			   遇到平坦或不连续区域

            16       111   {it:function}() 未找到

            17       459   不允许使用类型
	    		   {cmd:t} 评估器计算海森

	{hline 70}
	注意：错误 4 只能在评估 {it:f}() 于参数值时发生。此错误仅发生在 {cmd:deriv()} 中。


{marker query}{...}
{title:deriv_query()}

{p 8 25 2}
{it:void}
{cmd:deriv_query(}{it:D}{cmd:)}

{pstd}
{cmd:deriv_query(}{it:D}{cmd:)} 显示当前
{cmd:deriv_init_}{it:*}{cmd:()} 值及一些
{cmd:deriv_result_}{it:*}{cmd:()} 值的报告。
{cmd:deriv_query(}{it:D}{cmd:)} 可以在调用 {cmd:deriv()} 之前或之后使用，并且在交互使用 {cmd:deriv()} 或调试调用 {cmd:deriv()} 或 {cmd:_deriv()} 的程序时非常有用。


{marker conformability}{...}
{title:可符合性}

{pstd}
所有函数都有 1 {it:x} 1 输入，并且具有 1 {it:x} 1 或 {it:void} 输出，
除了以下函数：

    {cmd:deriv_init_params(}{it:D}{cmd:,} {it:params}{cmd:)}:
		{it:D}:  {it:transmorphic}
           {it:params}:  1 {it:x np}
	   {it:result}:  {it:void}

    {cmd:deriv_init_params(}{it:D}{cmd:)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  1 {it:x np}

    {cmd:deriv_init_argument(}{it:D}{cmd:,} {it:k}{cmd:,} {it:X}{cmd:)}:
		{it:D}:  {it:transmorphic}
		{it:k}:  1 {it:x} 1
		{it:X}:  {it:anything}
	   {it:result}:  {it:void}

    {cmd:deriv_init_weights(}{it:D}{cmd:,} {it:params}{cmd:)}:
		{it:D}:  {it:transmorphic}
  	   {it:params}:  {it:N x} 1
	   {it:result}:  {it:void}

    {cmd:deriv_init_h(}{it:D}{cmd:,} {it:h}{cmd:)}:
		{it:D}:  {it:transmorphic}
                {it:h}:  1 {it:x np}
	   {it:result}:  {it:void}

    {cmd:deriv_init_h(}{it:D}{cmd:)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  1 {it:x np}

    {cmd:deriv_init_scale(}{it:D}{cmd:,} {it:scale}{cmd:)}:
		{it:D}:  {it:transmorphic}
            {it:scale}:  1 {it:x np} (类型 {cmd:d} 和 {cmd:v} 评估器)
		    {it:nv x np} (类型 {cmd:t} 评估器)
	   {it:result}:  {it:void}

    {cmd:deriv_init_bounds(}{it:D}{cmd:,} {it:minmax}{cmd:)}:
		{it:D}:  {it:transmorphic}
           {it:minmax}:  1 {it:x} 2
	   {it:result}:  {it:void}

    {cmd:deriv_init_bounds(}{it:D}{cmd:)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  1 {it:x} w

    {cmd:deriv(}{it:D}{cmd:, 0)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  1 {it:x} 1
		    1 {it:x nv}	(类型 {cmd:t} 评估器)

    {cmd:deriv(}{it:D}{cmd:, 1)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  1 {it:x np}
		    {it:nv x np} (类型 {cmd:t} 评估器)

    {cmd:deriv(}{it:D}{cmd:, 2)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  {it:np x np}

    {cmd:deriv_result_values(}{it:D}{cmd:)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  {it:N x} 1
		    1 {it:x nv}	(类型 {cmd:t} 评估器)
		    {it:N x} 1 (类型 {cmd:v} 评估器)

    {cmd:_deriv_result_values(}{it:D}{cmd:,} {it:v}{cmd:)}:
		{it:D}:  {it:transmorphic}
	        {it:v}:  {it:N x} 1
		    1 {it:x nv}	(类型 {cmd:t} 评估器)
	   {it:result}:  {it:void}

    {cmd:deriv_result_gradient(}{it:D}{cmd:)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  1 {it:x np}

    {cmd:_deriv_result_gradient(}{it:D}{cmd:,} {it:g}{cmd:)}:
		{it:D}:  {it:transmorphic}
	        {it:g}:  1 {it:x np}
	   {it:result}:  {it:void}

    {cmd:deriv_result_scores(}{it:D}{cmd:)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  {it:N x np}

    {cmd:_deriv_result_scores(}{it:D}{cmd:,} {it:S}{cmd:)}:
		{it:D}:  {it:transmorphic}
	        {it:S}:  {it:N x np}
	   {it:result}:  {it:void}

    {cmd:deriv_result_Jacobian(}{it:D}{cmd:)}:
		{it:D}:  {it:transmorphic}
	   {it:result}:  {it:nv x np}

    {cmd:_deriv_result_Jacobian(}{it:D}{cmd:,} {it:J}{cmd:)}:
		{it:D}:  {it:transmorphic}
	        {it:J}: 

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_deriv.sthlp>}