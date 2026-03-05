{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[M-2] 下标" "mansection M-2 Subscripts"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] 引言" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_subscripts_zh##syntax"}{...}
{viewerjumpto "描述" "m2_subscripts_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m2_subscripts_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_subscripts_zh##remarks"}{...}
{viewerjumpto "兼容性" "m2_subscripts_zh##conformability"}{...}
{viewerjumpto "诊断" "m2_subscripts_zh##diagnostics"}{...}
{viewerjumpto "参考文献" "m2_subscripts_zh##reference"}
{help m2_subscripts:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-2] 下标} {hline 2}}下标的使用
{p_end}
{p2col:}({mansection M-2 Subscripts:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:x}{cmd:[}{it:实数向量 r}{cmd:,} {it:实数向量 c}{cmd:]}

	{it:x}{cmd:[|}{it:实数矩阵 sub}{cmd:|]}


{p 4 4 2}
下标可以用于 {help m2_op_assignment_zh:等于赋值运算符} 的左侧或右侧。


{marker description}{...}
{title:描述}

{p 4 4 2}
下标有两种样式。

{p 4 4 2}
在 {cmd:[}{it:subscript}{cmd:]} 语法中——称为列表下标——指定一个元素或矩阵：

	{cmd:x[1,2]}                  {it:x} 的 1,2 元素；一个标量

        {cmd:x[(1\3\2), (4,5)]}       由 {it:x} 的第 1，3 和 2 行与第 4 和 5 列组成的 3 {it:x} 2 矩阵：
{col 33}及 {it:x}：
{col 42}{c TLC}            {c TRC}
{col 42}{c |} {it:x_14  x_15} {c |}
{col 42}{c |} {it:x_34  x_35} {c |}
{col 42}{c |} {it:x_24  x_25} {c |}
{col 42}{c BLC}            {c BRC}

{p 4 4 2}
在 {cmd:[|}{it:subscript}{cmd:|]} 语法中——称为范围下标——指定一个元素或一个连续的子矩阵：

	{cmd:x[|1,2|]}                同 {cmd:x[1,2]}；一个标量

	{cmd:x[|2,3 \ 4,7|]}          3 {it:x} 4 子矩阵：
{col 42}{c TLC}                              {c TRC}
{col 42}{c |} {it:x_23  x_24  x_25  x_26  x_27} {c |}
{col 42}{c |} {it:x_33  x_34  x_35  x_36  x_37} {c |}
{col 42}{c |} {it:x_43  x_44  x_45  x_46  x_47} {c |}
{col 42}{c BLC}                              {c BRC}

{p 4 4 2}
这两种样式的下标均可用于表达式，并可以用于等于赋值运算符的左侧。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 SubscriptsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个标题：

	{help m2_subscripts##remarks1:列表下标}
	{help m2_subscripts##remarks2:范围下标}
	{help m2_subscripts##remarks3:何时使用列表下标，何时使用范围下标}
	{help m2_subscripts##remarks4:一个微妙的区别}


{marker remarks1}{...}
{title:列表下标}

{p 4 4 2}
列表下标——也称为下标——是通过将下标放在方括号 {cmd:[} 和 {cmd:]} 中获得的。列表下标有两种基本形式：

{col 9}{it:x}{cmd:[}{it:ivec}{cmd:,}{it:jvec}{cmd:]}{...}
{col 33}由矩阵 {it:x} 的行 {it:ivec} 和列 {it:jvec} 组成

{col 9}{it:v}{cmd:[}{it:kvec}{cmd:]}{...}
{col 33}由向量 {it:v} 的元素 {it:kvec} 组成的向量

{p 4 4 2}
其中 {it:ivec}, {it:jvec}, {it:kvec} 可以是向量或标量，因此两种基本形式包括

{col 9}{it:x}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]}{...}
{col 33}标量 {it:i},{it:j} 元素

{col 9}{it:x}{cmd:[}{it:i}{cmd:,}{it:jvec}{cmd:]}{...}
{col 33}由行 {it:i} 的元素 {it:jvec} 组成的行向量

{col 9}{it:x}{cmd:[}{it:ivec}{cmd:,}{it:j}{cmd:]}{...}
{col 33}由列 {it:j} 的元素 {it:ivec} 组成的列向量

{col 9}{it:v}{cmd:[}{it:k}{cmd:]}{...}
{col 33}向量 {it:v} 的标量 {it:k} 元素

{p 4 4 2}
还可以指定缺失值以表示所有行或所有列：

{col 9}{it:x}{cmd:[}{it:i}{cmd:,.]}{...}
{col 33}矩阵 {it:x} 的行 {it:i} 的行向量
{col 9}{it:x}{cmd:[.,}{it:j}]{...}
{col 33}矩阵 {it:x} 的列 {it:j} 的列向量

{col 9}{it:x}{cmd:[}{it:ivec}{cmd:,.]}{...}
{col 33}矩阵，由行 {it:ivec} 组成，所有列
{col 9}{it:x}{cmd:[.,}{it:jvec}]{...}
{col 33}矩阵，由列 {it:jvec} 组成，所有行

{col 9}{it:x}{cmd:[.,.]}{...}
{col 33}整个矩阵

{p 4 4 2} 
最后，在 Mata 中，当完全省略参数时，默认为缺失值：

{col 9}{it:x}{cmd:[}{it:i}{cmd:,]}{...}
{col 33}同 {it:x}{cmd:[}{it:i}{cmd:,.]}
{col 9}{it:x}{cmd:[}{it:ivec}{cmd:,]}{...}
{col 33}同 {it:x}{cmd:[}{it:ivec}{cmd:,.]}
{col 9}{it:x}{cmd:[,}{it:j}{cmd:]}{...}
{col 33}同 {it:x}{cmd:[.,}{it:j}]
{col 9}{it:x}{cmd:[,}{it:jvec}{cmd:]}{...}
{col 33}同 {it:x}{cmd:[.,}{it:jvec}]
{col 9}{it:x}{cmd:[,]}{...}
{col 33}同 {it:x}{cmd:[.,.]}

{p 4 4 2}
良好的风格是将 {it:ivec} 指定为列向量，将 {it:jvec} 指定为行向量，但这不是强制要求：

{col 9}{it:x}{cmd:[(1\2\3), (1,2,3)]}{...}
{col 33}良好的风格
{col 9}{it:x}{cmd:[(1,2,3), (1,2,3)]}{...}
{col 33}同 {it:x}{cmd:[(1\2\3), (1,2,3)]}
{col 9}{it:x}{cmd:[(1\2\3), (1\2\3)]}{...}
{col 33}同 {it:x}{cmd:[(1\2\3), (1,2,3)]}
{col 9}{it:x}{cmd:[(1,2,3), (1\2\3)]}{...}
{col 33}同 {it:x}{cmd:[(1\2\3), (1,2,3)]}

{p 4 4 2}
同样，良好的风格是当 {it:v} 是列向量时将 {it:kvec} 指定为列，{it:v} 是行向量时将 {it:kvec} 指定为行，但这不是强制要求，返回的结果将是列向量如果 {it:v} 是列，而如果 {it:v} 是行则返回行向量：

{col 9}{it:rowv}{cmd:[(1,2,3)]}{...}
{col 33}指定行向量的良好风格
{col 9}{it:rowv}{cmd:[(1\2\3)]}{...}
{col 33}同 {it:rowv}{cmd:[(1,2,3)]}

{col 9}{it:colv}{cmd:[(1\2\3)]}{...}
{col 33}指定列向量的良好风格
{col 9}{it:colv}{cmd:[(1,2,3)]}{...}
{col 33}同 {it:colv}{cmd:[(1,2,3)]}

{p 4 4 2}
下标可以用于紧跟在变量名后的表达式中：

        {cmd:first = list[1]}

	{cmd:multiplier = x[3,4]}
        
	{cmd:result = colsum(x[,j])}

{p 4 4 2}
下标可以用于紧跟在表达式后的位置来提取子矩阵：

	{cmd:allneeded = invsym(x)[(1::4), .] * multiplier}

{p 4 4 2}
下标可以用于等于赋值运算符的左侧：

        {cmd:x[1,1] = 1}

	{cmd:x[1,.] = y[3,.]}

        {cmd:x[(1::4), (1..4)] = I(4)}


{marker remarks2}{...}
{title:范围下标}

{p 4 4 2}
范围下标位于难以输入的 {cmd:[|} 和 {cmd:|]} 括号内。范围下标有四种基本形式：

{col 9}{it:x}{cmd:[|}{it:i}{cmd:,}{it:j}{cmd:|]}{...}
{col 33}{it:i},{it:j} 元素；与 {it:x}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 结果相同

{col 9}{it:v}{cmd:[|}{it:k}{cmd:|]}{...}
{col 33}{it:k}th 元素的向量；与 {it:v}{cmd:[}{it:k}{cmd:]} 结果相同

{col 9}{it:x}{cmd:[|}{it:i}{cmd:,}{it:j} {cmd:\} {it:k}{cmd:,}{it:l}{cmd:|]}{...}
{col 33}利用 {col 33}({it:i},{it:j}) 作为左上角和 ({it:k},{it:l}) 作为右下角形成的子矩阵、向量或标量

{col 9}{it:v}{cmd:[|}{it{i} {cmd:\} {it:k}{cmd:|]}{...}
{col 33}元素 {it:i} 到 {it:k} 的子向量或标量；{it:v} 是行向量时结果为行向量，{it:v} 是列向量时结果为列向量

{p 4 4 2}
可以指定缺失值以表示行或列的所有行或所有列，当指定 1 {it:x} 2 或 1 {it:x} 1 下标时：

{col 9}{it:x}{cmd:[|}{it:i}{cmd:,.|]}{...}
{col 33}矩阵 {it:x} 的行 {it:i}；同 {it:x}{cmd:[}{it:i}{cmd:,.]}

{col 9}{it:x}{cmd:[|.,}{it:j}{cmd:|]}{...}
{col 33}矩阵 {it:x} 的列 {it:j}；同 {it:x}{cmd:[.,}{it:j}{cmd:]}

{col 9}{it:x}{cmd:[|.,.|]}{...}
{col 33}整个矩阵；同 {it:x}{cmd:[.,.]}

{col 9}{it:v}{cmd:[|.|]}{...}
{col 33}整个向量；同 {it:v}{cmd:[.]}

{p 4 4 2}
还可以指定缺失以表示矩阵下标的行数或列数，当指定 2 {it:x} 2 下标时：

{col 9}{it:x}{cmd:[|1,2 \ 4,.|]}{...}
{col 33}等效于 {it:x}{cmd:[|1,2 \ 4,cols(}{it:x}{cmd:)|]}

{col 9}{it:x}{cmd:[|1,2 \ .,3|]}{...}
{col 33}等效于 {it:x}{cmd:[|1,2 \ rows(}{it:x}{cmd:),3|]}

{col 9}{it:x}{cmd:[|1,2 \ .,.|]}{...}
{col 33}等效于 {it:x}{cmd:[|1,2 \ rows(}{it:x}{cmd:),cols(}{it:x}{cmd:|]}


{p 4 4 2}
使用范围下标的情况是，对于方括号内的内容在所有情况下都被解释为矩阵表达式，因此在

	{cmd:sub = (1,2)}
	... {cmd:x[|sub|]} ...

{p 4 4 2}
{cmd:x[sub]} 指的是 {cmd:x[1,2]}。

{p 4 4 2}
范围下标可在与列表下标相同的所有上下文中使用；它们可用于变量名后的表达式中

	{cmd:submat = result[|1,1\3,3|]}

{p 4 4 2}
它们可用于从计算结果中提取子矩阵

	{cmd:allneeded = invsym(x)[|1,1 \ 4,4|]}

{p 4 4 2}
并且可以用于等于赋值运算符的左侧：

        {cmd:x[|1,1 \ 4,4|] = I(4)}


{marker remarks3}{...}
{title:何时使用列表下标，何时使用范围下标}

{p 4 4 2}
范围下标能做的所有事情，列表下标也能做到。范围下标的一个看似独特的特征

	{it:x}{cmd:[|}{it:i1}{cmd:,}{it:j1} {cmd:\} {it:i2}{cmd:,}{it:j2}{cmd:|]}

{p 4 4 2}
完全可以用这个模拟：

	{it:x}{cmd:[(}{it:i1}{cmd:::}{it:i2}{cmd:), (}{it:j1}{cmd:..}{it:j2}{cmd:)]}

{p 4 4 2}
然而，范围下标的构造执行速度更快，因此范围下标的目的是提供一种快速提取连续子矩阵的方式。在所有其他情况下，使用列表下标，因为它们更快。

{p 4 4 2}
使用列表下标引用标量值：

	{cmd:result = x[1,3]}
	{cmd:x[1,3] = 2}

{p 4 4 2}
使用列表下标提取整个行或列：

	{cmd:obs = x[., 3]}
	{cmd:var = x[4, .]}

{p 4 4 2}
使用列表下标变换矩阵的行和列：

	{cmd:x = (1,2,3,4 \ 5,6,7,8 \ 9,10,11,12)}

	{cmd:y = x[(1\3\2), .]}
	{cmd:y}
        {res}       {txt} 1    2    3    4
            {c TLC}{hline 21}{c TRC}
          1 {c |}  {res} 1    2    3    4{txt}  {c |}
          2 {c |}  {res} 9   10   11   12{txt}  {c |}
          3 {c |}  {res} 5    6    7    8{txt}  {c |}
            {c BLC}{hline 21}{c BRC}

	{cmd:y = x[., (1,3,2,4)]}
	{cmd:y}
        {res}       {txt} 1    2    3    4
            {c TLC}{hline 21}{c TRC}
          1 {c |}  {res} 1    3    2    4{txt}  {c |}
          2 {c |}  {res} 5    7    6    8{txt}  {c |}
          3 {c |}  {res} 9   11   10   12{txt}  {c |}
            {c BLC}{hline 21}{c BRC}

	{cmd:y = x[(1\3\2), (1,3,2,4)]}
	{cmd:y}
        {res}       {txt} 1    2    3    4
            {c TLC}{hline 21}{c TRC}
          1 {c |}  {res} 1    3    2    4{txt}  {c |}
          2 {c |}  {res} 9   11   10   12{txt}  {c |}
          3 {c |}  {res} 5    7    6    8{txt}  {c |}
            {c BLC}{hline 21}{c BRC}

{p 4 4 2}
使用列表下标重复行或列：

	{cmd:x = (1,2,3,4 \ 5,6,7,8 \ 9,10,11,12)}

	{cmd:y = x[(1\2\3\1), .]}
	{cmd:y}
        {res}       {txt} 1    2    3    4
            {c TLC}{hline 21}{c TRC}
          1 {c |}  {res} 1    2    3    4{txt}  {c |}
          2 {c |}  {res} 5    6    7    8{txt}  {c |}
          3 {c |}  {res} 9   10   11   12{txt}  {c |}
          4 {c |}  {res} 1    2    3    4{txt}  {c |}
            {c BLC}{hline 21}{c BRC}

	{cmd:y = x[., (1,2,3,4,2)]}
	{cmd:y}
        {res}       {txt} 1    2    3    4    5
            {c TLC}{hline 26}{c TRC}
          1 {c |}  {res} 1    2    3    4    2{txt}  {c |}
          2 {c |}  {res} 5    6    7    8    6{txt}  {c |}
          3 {c |}  {res} 9   10   11   12   10{txt}  {c |}
            {c BLC}{hline 26}{c BRC}

	{cmd:y = x[(1\2\3\1), (1,2,3,4,2)]}
	{cmd:y}
        {res}       {txt} 1    2    3    4    5
            {c TLC}{hline 26}{c TRC}
          1 {c |}  {res} 1    2    3    4    2{txt}  {c |}
          2 {c |}  {res} 5    6    7    8    6{txt}  {c |}
          3 {c |}  {res} 9   10   11   12   10{txt}  {c |}
          4 {c |}  {res} 1    2    3    4    2{txt}  {c |}
            {c BLC}{hline 26}{c BRC}


{marker remarks4}{...}
{title:一个微妙的区别}

{p 4 4 2}
在 {it:x}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 和 {it:x}{cmd:[|}{it:i}{cmd:,}{it:j}{cmd:|]} 之间有一个微妙的区别。在 {it:x}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 中，有两个参数，{it:i} 和 {it:j}。逗号分隔参数。在 {it:x}{cmd:[|}{it:i}{cmd:,}{it:j}{cmd:|]} 中，只有一个参数：{it:i}{cmd:,}{it:j}。逗号是 {help m2_op_join_zh:列连接运算符}。

{p 4 4 2}
在 Mata 中，逗号主要表示列连接运算符：

	{cmd:newvec = oldvec, addedvalues}

	{cmd:qsum = (x,1)'(x,1)}

{p 4 4 2}
实际上，只有两个例外。当你为一个函数输入参数时，逗号将一个参数从下一个参数分隔开：

	{cmd:result = f(}{it:a}{cmd:,}{it:b}{cmd:,}{it:c}{cmd:)}

{p 4 4 2}
在上面的例子中，{cmd:f()} 接收三个参数：{it:a}、{it:b} 和 {it:c}。如果我们希望 {cmd:f()} 接收一个参数，({it:a},{it:b},{it:c})，我们必须将计算括在括号内：

	{cmd:result = f((}{it:a}{cmd:,}{it:b}{cmd:,}{it:c}{cmd:))}

{p 4 4 2}
这是第一个例外。当你在函数内键入参数时，逗号表示参数分隔。通过打开另一组括号，你可以恢复逗号的通常含义——列连接运算符。

{p 4 4 2}
第二个例外是在 {help m2_subscripts##remarks1:列表下标} 中：

	{it:x}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]}

{p 4 4 2}
在列表下标括号内，逗号表示参数分隔。这就是为什么你见到我们在括号内输入向量的原因：

	{it:x}{cmd:[(1\2\3),(1,2,3)]}

{p 4 4 2}
这就是两个例外。范围下标不是例外。因此在

	{it:x}{cmd:[|}{it:i}{cmd:,}{it:j}{cmd:|]}

{p 4 4 2}
只有一个参数，{it:i}{cmd:,}{it:j}。使用范围下标时，你可以编写如下构造：

	{cmd:IJ    = (}{it:i}{cmd:,}{it:j}{cmd:)}
	{cmd:RANGE = (1,2 \ 4,4)}
	...
	... {it:x}{cmd:[|IJ|]} ... {it:x}{cmd:[|RANGE|]} ...

{p 4 4 2}
你不能这样使用列表下标。尤其是，{it:x}{cmd:[IJ]} 将被解释为请求从向量 {it:x} 中提取元素 {it:i} 和 {it:j}，否则将会出错。{it:x}{cmd:[RANGE]} 将始终出错。

{p 4 4 2}
我们之前说过，列表下标 {it:x}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 比范围下标 {it:x}{cmd:[|}{it:i}{cmd:,}{it:j}{cmd:|]} 稍微快一点。这是正确的，但如果 {cmd:IJ}={cmd:(}{it:i}{cmd:,}{it:j}{cmd:)} 已经存在，{it:x}{cmd:[|IJ|]} 将比 {it:x}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:] } 更快。然而，你必须对 {it:x}{cmd:[|IJ|]} 执行数百万次引用才能测量出差异。


{marker conformability}{...}
{title:兼容性}

    {it:x}{cmd:[}{it:i}{cmd:,} {it:j}{cmd:]}:
		{it:x}:  {it:r x c}
		{it:i}:  {it:m} {it:x} 1  或  1 {it:x} {it:m}  (没有区别)
		{it:j}:  1 {it:x} {it:n}  或  {it:n} {it:x} 1  (没有区别)
	   {it:result}:  {it:m x n}

    {it:x}{cmd:[}{it:i}{cmd:, .]}:
		{it:x}:  {it:r x c}
		{it:i}:  {it:m} {it:x} 1  或  1 {it:x} {it:m}  (没有区别)
	   {it:result}:  {it:m x c}

    {it:x}{cmd:[.,} {it:j}{cmd:]}:
		{it:x}:  {it:r x c}
		{it:j}:  1 {it:x} {it:n}  或  {it:n} {it:x} 1  (没有区别)
	   {it:result}:  {it:r x n}

    {it:x}{cmd:[., .]}:
		{it:x}:  {it:r x c}
	   {it:result}:  {it:r x c}


    {it:x}{cmd:[}{it:i}{cmd:]}:
		{it:x}:  {it:n x} 1                    1 {it:x n}
		{it:i}:  {it:m x} 1 或 1 {it:x m}           1 {it:x m} 或 {it:m x} 1
	   {it:result}:  {it:m x} 1                    1 {it:x m}

    {it:x}{cmd:[.]}:
		{it:x}:  {it:n x} 1                    1 {it:x n}
	   {it:result}:  {it:n x} 1                    1 {it:x n}

    {it:x}{cmd:[|}{it:k}{cmd:|]}:
		{it:x}:  {it:r x c}
		{it:k}:  1 {it:x} 2   
	   {it:result}:  1 {it:x} 1  如果 {it:k}[1]<.  & {it:k}[2]<.
		    {it:r x} 1  如果 {it:k}[1]>=. & {it:k}[2]<.
		    1 {it:x c}  如果 {it:k}[1]<.  & {it:k}[2]>=.
		    {it:r x c}  如果 {it:k}[1]>=. & {it:k}[2]>=.

    {it:x}{cmd:[|}{it:k}{cmd:|]}:
		{it:x}:  {it:r x c}
		{it:k}:  2 {it:x} 2   
	   {it:result}:  {it:k}[2,1]-{it:k}[1,1]+1 {it:x} {it:k}[2,2]-{it:k}[1,2]+1
		    (在上面的公式中，如果 {it:k}[2,1]>=., 则将其视为 {it:k}[2,1]={it:r}，
		     同样，如果 {it:k}[2,2]>=., 则将其视为 {it:k}[2,2]={it:c})

    {it:x}{cmd:[|}{it:k}{cmd:|]}:
		{it:x}:  {it:r x} 1                     1 {it:x c}
		{it:k}:  2 {it:x} 1                     2 x 1
	   {it:result}:  {it:k}[2]-{it:k}[1]+1 {it:x} 1           1 {it:x} {it:k}[2]-{it:k}[1]+1
		   (如果 {it:k}[2]>=., 则处理为      (如果 {it:k}[2]>=., 则处理为
		    {it:k}[2]={it:r})                 {it:k}[2]={it:c})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果下标超出范围，或者引用不存在的行或列，则两种形式的下标都将中止并出现错误。
{p_end}


{marker reference}{...}
{title:参考文献}

{phang}
Gould, W. W. 2007.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0028":Mata Matters: Subscripting}.
{it:Stata Journal} 7: 106-116.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_subscripts.sthlp>}