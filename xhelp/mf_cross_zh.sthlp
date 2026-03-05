{smcl}
{* *! version 1.2.7  15may2018}{...}
{vieweralsosee "[M-5] cross()" "mansection M-5 cross()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] crossdev()" "help mf_crossdev_zh"}{...}
{vieweralsosee "[M-5] mean()" "help mf_mean_zh"}{...}
{vieweralsosee "[M-5] quadcross()" "help mf_quadcross_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_cross_zh##syntax"}{...}
{viewerjumpto "Description" "mf_cross_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_cross_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_cross_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_cross_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_cross_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_cross_zh##source"}
{help mf_cross:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] cross()} {hline 2}}交叉乘积
{p_end}
{p2col:}({mansection M-5 cross():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}
{cmd:cross(}{it:X}{cmd:,}
{it:Z}{cmd:)}

{p 8 12 2}
{it:实数矩阵}
{cmd:cross(}{it:X}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:)}

{p 8 12 2}
{it:实数矩阵}
{cmd:cross(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:)}

{p 8 12 2}
{it:实数矩阵}
{cmd:cross(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:)}


{p 4 8 2}
其中

	             {it:X}:  {it:实数矩阵 X}
	            {it:xc}:  {it:实数标量 xc}
	             {it:w}:  {it:实数向量 w}
	             {it:Z}:  {it:实数矩阵 Z}
	            {it:zc}:  {it:实数标量 zc}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:cross()} 进行以下形式的计算

		{it:X}'{it:X} 

		{it:X}'{it:Z} 

		{it:X}{bf:'}diag({it:w}){it:X}

		{it:X}{bf:'}diag({it:w}){it:Z}

{p 4 4 2}
{cmd:cross()} 设计用于进行在统计公式中经常出现的计算。
从某种意义上说，{cmd:cross()} 不干任何你无法用标准矩阵符号轻易写出的事情。例如，
{cmd:cross(}{it:X}{cmd:,}
{it:Z}{cmd:)} 计算 {it:X}'{it:Z}。
不过，{cmd:cross()} 在标准矩阵符号方法上有以下不同之处和优点：

{p 8 12 2}
1.  {cmd:cross()} 忽略 {it:X} 和 {it:Z} 中包含缺失值的行，这相当于丢弃缺失值观察。

{p 8 12 2}
2.  {cmd:cross()} 使用更少的内存，并且在处理视图时尤其高效。

{p 8 12 2}
3.  {cmd:cross()} 注意特殊情况，并在这些特殊情况下更高效地进行计算。例如，如果你编码 
{bind:{cmd:cross(}{it:X}{cmd:,} {it:X}{cmd:)}，{cmd:cross()} 
会观察到这两个矩阵是相同的，并对对称矩阵结果进行计算。
    
{p 4 4 2}
{cmd:cross(}{it:X}{cmd:,}
{it:Z}{cmd:)} 返回 {it:X}'{it:Z}。
通常 
{cmd:rows(}{it:X}{cmd:)==rows(}{it:Z}{cmd:)，但 {it:X} 
也可以是标量，在这种情况下它被视为 
{cmd:J(rows(}{it:Z}{cmd:), 1, 1)} 被指定。因此
{cmd:cross(1,} {it:Z}{cmd:)} 相当于 
{cmd:colsum(}{it:Z}{cmd:)}。

{p 4 4 2}
{cmd:cross(}{it:X}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:)} 返回 {it:X}{bf:'}{cmd:diag(}{it:w}{cmd:)}{it:Z}。
通常，{cmd:rows(}{it:w}{cmd:)==rows(}{it:Z}{cmd:)} 
或 {cmd:cols(}{it:w}{cmd:)==rows(}{it:Z}{cmd:)}，但 {it:w} 
也可以是标量，被视为 
{cmd:J(rows(}{it:Z}{cmd:), 1,} {it:w}{cmd:)} 被指定。因此
{cmd:cross(}{it:X}{cmd:,1,}{it:Z}{cmd:)} 
与 {cmd:cross(}{it:X}{cmd:,}{it:Z}{cmd:)} 是相同的。
{it:Z} 也可以被指定为标量，就像在两个参数的情况下。

{p 4 4 2}
{cmd:cross(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:)} 与 
{cmd:cross(}{it:X}{cmd:,}
{it:Z}{cmd:)} 类似，返回 
{it:X}'{it:Z}。
然而，在四个参数的情况下，{it:X} 在其右侧增加一列 
1，如果 {it:xc}!=0，且当 {it:zc}!=0 时，{it:Z} 也以同样方式增加。
{cmd:cross(}{it:X}{cmd:,}
{cmd:0,}
{it:Z}{cmd:,}
{cmd:0)} 
相当于 
{cmd:cross(}{it:X}{cmd:,}
{it:Z}{cmd:)}。 {it:Z} 也可以被指定为标量。

{p 4 4 2}
{cmd:cross(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:)} 与
{cmd:cross(}{it:X}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:)} 类似，返回 
{it:X}{bf:'}{cmd:diag(}{it:w}{cmd:)}{it:Z}。
与四个参数的 {cmd:cross()} 一样，{it:X} 在其右侧增加一列 
1，如果 {it:xc}!=0，而 {it:Z} 同样地在其右侧增加，如果 {it:zc}!=0。
{cmd:cross(}{it:X}{cmd:,}
{cmd:0,}
{cmd:1,}
{it:Z}{cmd:,}
{cmd:0)} 
相当于 
{cmd:cross(}{it:X}{cmd:,}
{it:Z}{cmd:)}。 


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 cross()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在以下示例中，我们将使用 {it:b} = ({it:X}'{it:X})^(-1){it:X}'{it:y} 计算线性回归系数，使用 
Sum({it:x})/{it:n} 计算均值，并使用 (Sum({it:x}^2)/{it:n} - {it:mean}^2)*{it:n}/({it:n}-1) 计算方差。
请参阅 {bf:{help mf_crossdev_zh:[M-5] crossdev()}} 以获得以更数值稳定的方式进行相同计算的示例。

{p 4 4 2}
示例使用了汽车数据。由于我们使用的是绝对计算方程的形式，如果所有变量的值接近 1 会更好（在这种情况下，绝对计算方程的形式完全合适）。因此我们建议

	{cmd:. sysuse auto}
	{cmd:. replace weight = weight/1000}

{p 4 4 2} 
一些示例使用了权重 {cmd:w}。为此，你可以尝试 

	{cmd:. gen w = int(4*runiform()+1)}


{marker example1}{...}
    {title:示例 1：使用传统方法的线性回归}

	{cmd}: y = X = .
	: st_view(y, ., "mpg")
	: st_view(X, ., "weight foreign")
	:
	: X = X, J(rows(X),1,1)
	: b = invsym(X'X)*X'y{txt}

{p 4 4 2}
{it:评论:}
不处理缺失值，且如果 {cmd:X} 很大则使用大量内存。


    {title:示例 2：使用 cross() 的线性回归}

	{cmd}: y = X = .
	: st_view(y, ., "mpg")
	: st_view(X, ., "weight foreign")
	:
	: XX = cross(X,1 , X,1)
	: Xy = cross(X,1 , y,0)
	: b  = invsym(XX)*Xy{txt}

{p 4 4 2}
{it:评论:}
仍然存在缺失值的问题；{cmd:mpg} 可能并不在 {cmd:weight} 和 {cmd:foreign} 缺失的地方都缺失。


{marker example3}{...}
    {title:示例 3：使用 cross() 和一个视图的线性回归}

	{cmd}: // 我们将形成
	: // 
	: //   (y X)'(y X)  =  (y'y, y'X  \  X'y, X'X)
	:
	: M = .
	: st_view(M, ., "mpg weight foreign", 0)
	:
	: CP = cross(M,1 , M,1)
	: XX = CP[|2,2 \ .,.|]
	: Xy = CP[|2,1 \ .,1|]
	: b  = invsym(XX)*Xy{txt}

{p 4 4 2}
{it:评论:}
使用一个视图处理所有缺失值问题（我们为 {cmd:st_view()} 指定了第四个参数 0；请参阅  
{bf:{help mf_st_view_zh:[M-5] st_view()}}）。
	

{marker example4}{...}
    {title:示例 4：使用 cross() 和子视图的线性回归}

	{cmd}: M = X = y = .
	: st_view(M, ., "mpg weight foreign", 0)
	: st_subview(y, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: XX = cross(X,1 , X,1)
	: Xy = cross(X,1 , y,0)
	: b  = invsym(XX)*Xy{txt}

{p 4 4 2}
{it:评论:}
使用子视图也处理所有缺失值问题；请参阅 
{bf:{help mf_st_subview_zh:[M-5] st_subview()}}。
子视图方法的效率稍低于前一种解决方案，但可能更易于理解。
效率问题仅涉及子视图 {cmd:y} 和 {cmd:X} 所需的额外内存，而这并不多。

{p 4 4 2}
此外，这个子视图解决方案可以用于解决使用传统方法计算线性回归系数的缺失值问题，如 {help mf_cross##example1:示例 1} 所示：

	{cmd}: M = X = y = .
	: st_view(M, ., "mpg weight foreign", 0)
	: st_subview(y, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: X = X, J(rows(X), 1, 1)
	: b = invsym(X'X)*X'y


    {title:示例 5：使用传统方法的加权线性回归}

	{cmd}: M = w = y = X = .
	: st_view(M, ., "w mpg weight foreign", 0)
	: st_subview(w, M, ., 1)
	: st_subview(y, M, ., 2)
	: st_subview(X, M, ., (3\.))
	:
	: X = X, J(rows(X), 1, 1)
	: b = invsym(X'diag(w)*X)*X'diag(w)'y{txt}

{p 4 4 2}
{it:评论:}
内存需求现在真的很令人印象深刻，因为 {cmd:diag(w)} 是一个 {it:N} {it:x} {it:N} 矩阵！也就是说，当 {it:N} 较大时，内存需求确实很可观。Mata 的一个优势在于
你可以像 {cmd:invsym(X'diag(w)*X)*X'diag(w)'y} 这样写出解决方案并获得结果。
我们并不想贬低传统方法；我们只是想强调它的内存需求，并注意到还有其他选择。


{marker example6}{...}
    {title:示例 6：使用 cross() 的加权线性回归}

	{cmd}: M = w = y = X = .
	: st_view(M, ., "w mpg weight displ", 0)
	: st_subview(w, M, ., 1)
	: st_subview(y, M, ., 2)
	: st_subview(X, M, ., (3\.))
	:
	: XX = cross(X,1 ,w, X,1)
	: Xy = cross(X,1 ,w, y,0)
	: b  = invsym(XX)*Xy{txt}

{p 4 4 2}
{it:评论:}
这里的内存需求不比在 {help mf_cross##example4:示例 4} 中更大，这个示例与之非常相似。我们也可以模拟 {help mf_cross##example3:示例 3} 的逻辑：

	{cmd}: M = w = .
	: st_view(M, ., "w mpg weight foreign", 0)
	: st_subview(w, M, ., 1)
	:
	: CP = cross(M,1 ,w, M,1)
	: XX = CP[|3,3 \ .,.|]
	: Xy = CP[|3,2 \ .,2|]
	: b  = invsym(XX)*Xy{txt}

{p 4 4 2}
注意这些解决方案与其无权重对应物的相似之处。
唯一重要的区别是 {cmd:w} 出现在 {cmd:cross()} 的中间参数中。因为将中间参数指定为标量 1 也是允许的，并且会产生无权重的估计，因此上述代码可以修改为生成无权重或加权的估计，具体取决于 {cmd:w} 的定义。


    {title:示例 7：一个变量的均值}

	{cmd}: x = .
	: st_view(x, ., "mpg", 0)
	:
	: CP = cross(1,0 , x,1)
	: mean = CP[1]/CP[2]{txt}

{p 4 4 2}
{it:评论:}
一个更简单且同样有效的解决方案是 

	{cmd}: x = .
	: st_view(x, ., "mpg", 0)
	:
	: mean = mean(x,1){txt}

{p 4 4 2}
{cmd:mean()} （参见 {help mf_mean_zh:[M-5] mean()}) 是基于 
{cmd:cross()} 实现的。实际上，{cmd:mean()} 是使用 {cmd:cross()} 的四重精度版本实现的；请参见 {bf:{help mf_quadcross_zh:[M-5] quadcross()}}。我们可以基于 {cmd:quadcross()} 来实现我们的解决方案：

	{cmd}: x = .
	: st_view(x, ., "mpg", 0)
	:
	: CP = quadcross(1,0 , x,1)
	: mean = CP[1]/CP[2]{txt}

{p 4 4 2}
{cmd:quadcross()} 返回双精度结果，正如 {cmd:cross()} 所做的那样。不同之处在于 {cmd:quadcross()} 
在计算和时使用四重精度。


    {title:示例 8：多个变量的均值}

	{cmd}: X = .
	: st_view(X, ., "mpg weight displ", 0)
	:
	: CP = cross(1,0 , X,1)
	: n  = cols(CP)
	: means = CP[|1\n-1|] :/ CP[n]{txt}

{p 4 4 2}
{it:评论:}
上述逻辑也适用于一个变量。
使用 {cmd:mean()} 的解决方案是

	{cmd}: X = .
	: st_view(X, ., "mpg weight displ", 0)
	:
	: means = mean(X, 1){txt}


    {title:示例 9：多个变量的加权均值}

	{cmd}: M = w = X = .
	: st_view(M, ., "w mpg weight displ", 0)
	: st_subview(w, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: CP = cross(1,0, w,  X,1)
	: n  = cols(CP)
	: means = CP[|1\n-1|] :/ CP[n]{txt}

{p 4 4 2}
{it:评论:}
注意这个解决方案与无权重解决方案的相似之处：{cmd:w} 
现在出现在 {cmd:cross()} 的中间参数中。
行 {cmd:CP} {cmd:=} {cmd:cross(1,0, w, X,1)} 也可以编码为 
{cmd:CP} {cmd:=} {cmd:cross(w,0, X,1)}；没有区别。

{p 4 4 2}
解决这个问题的 {cmd:mean()} 解决方案是

	{cmd}: M = w = X = .
	: st_view(M, ., "w mpg weight displ", 0)
	: st_subview(w, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: means = mean(X, w){txt}


    {title:示例 10：方差矩阵，传统方法 1}

	{cmd}: X = .
	: st_view(X, ., "mpg weight displ", 0)
	:
	: n     = rows(X)
	: means = mean(X, 1)
	: cov   = (X'X/n - means'means)*(n/(n-1)){txt}

{p 4 4 2}
{it:评论:}
上述内容不是 100% 传统，因为我们使用 {cmd:mean()} 来获得均值，但这确实使解决方案更易理解。
解决方案需要计算 {cmd:X'}，这要求数据矩阵被复制。此外，我们使用了一个数值较差的 
计算公式。


    {title:示例 11：方差矩阵，传统方法 2}

	{cmd}: X = .
	: st_view(X, ., "mpg weight displ", 0)
	:
	: n     = rows(X)
	: means = mean(X, 1)
	: cov   = (X:-means)'(X:-means) :/ (n-1){txt}

{p 4 4 2}
{it:评论:}
我们使用了更好的计算公式，并在此过程中显著增加了内存使用量。


{marker example12}{...}
    {title:示例 12：使用 cross() 的方差矩阵}

	{cmd}: X = .
	: st_view(X, ., "mpg weight displ", 0)
	:
	: n     = rows(X)
	: means = mean(X, 1)
	: XX    = cross(X, X)
	: cov   = ((XX:/n)-means'means)*(n/(n-1)){txt}{txt}

{p 4 4 2}
{it:评论:}
上述解决方案节省了内存，但使用了数值较差的 
计算公式。相关函数 {cmd:crossdev()} 将计算偏差交叉乘积：

	{cmd}: X = .
	: st_view(X, ., "mpg weight displ", 0)
	:
	: n     = rows(X)
	: means = mean(X, 1)
	: xx    = crossdev(X,means, X,means)
	: cov   = xx:/(n-1){txt}

{p 4 4 2}
参见 {bf:{help mf_crossdev_zh:[M-5] crossdev()}}。  
然而，最简单的解决方案是 

	{cmd}: X = .
	: st_view(X, ., "mpg weight displ", 0)
	:
	: cov = variance(X, 1){txt}

{p 4 4 2}
参见 {bf:{help mf_mean_zh:[M-5] mean()}} 以获取 
{cmd:variance()} 函数的描述。  
{cmd:variance()} 是基于 {cmd:crossdev()} 实现的。


    {title:示例 13：加权方差矩阵，传统方法}

	{cmd}: M = w = X = .
	: st_view(M, ., "w mpg weight displ", 0)
	: st_subview(w, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: n     = colsum(w)
	: means = mean(X, w)
	: cov   = (X'diag(w)*X:/n - means'means)*(n/(n-1)){txt}

{p 4 4 2}
{it:评论:}
上述我们使用了数值较差的公式。使用更好的偏差 
公式，我们将会有 

	{cmd}: M = w = X = .
	: st_view(M, ., "w mpg weight displ", 0)
	: st_subview(w, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: n     = colsum(w)
	: means = mean(X, w)
	: cov   = (X:-means)'diag(w)*(X:-means) :/ (n-1){txt}

{p 4 4 2} 
内存需求包括制作一份去除了均值的 
数据副本，并生成一个 {it:N} {it:x} {it:N} 的对角矩阵。


{marker example14}{...}
    {title:示例 14：使用 cross() 的加权方差矩阵}

	{cmd}: M = w = X = .
	: st_view(M, ., "w mpg weight displ", 0)
	: st_subview(w, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: n     = colsum(w)
	: means = mean(X, w)
	: cov   = (cross(X,w,X):/n - means'means)*(n/(n-1)){txt}

{p 4 4 2}
{it:评论:}
如在 {help mf_cross##example12:示例 12} 中，以上解决方案节省了内存，但使用了 
数值较差的计算公式。更好的做法是使用 {cmd:crossdev()}：

	{cmd}: M = w = X = .
	: st_view(M, ., "w mpg weight displ", 0)
	: st_subview(w, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: n     = colsum(w)
	: means = mean(X, w)
	: cov   = crossdev(X,means, w, X,means) :/ (n-1){txt}

{p 4 4 2}
而最简单的是使用 {cmd:variance()}：

	{cmd}: M = w = X = .
	: st_view(M, ., "w mpg weight displ", 0)
	: st_subview(w, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: cov = variance(X, w){txt}

{p 4 4 2}
参见 
{bf:{help mf_crossdev_zh:[M-5] crossdev()}}
和  
{bf:{help mf_mean_zh:[M-5] mean()}}。


    {title:关于 cross() 和缺失值的评论}

{p 4 4 2}
{cmd:cross()} 在进行计算时会自动省略包含缺失值的行。
依赖于此功能被认为是糟糕的风格，因为许多其他 Mata 函数没有提供该功能，容易出错。

{p 4 4 2}
处理缺失值的正确方法是在构造视图和子视图时排除它们，就像我们上面所做的那样。
当我们构造视图时，我们总是为 {cmd:st_view()} 指定了第四个参数 0。
在正式的编程情况下，你可能会指定你在之前的 ado 文件中构造的 {cmd:touse} 变量的名称，该变量调用你的 Mata 函数。


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
{cmd:cross(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:)}:
{p_end}
		{it:X}:  {it:n x v1} 或 1 {it:x} 1, 1 {it:x} 1 被视为 {it:n x} 1
	       {it:xc}:  1 {it:x} 1                       （可选）
		{it:w}:  {it:n x} 1 或 1 {it:x n} 或 1 {it:x} 1     （可选）
		{it:Z}:  {it:n x v2}
	       {it:zc}:  1 {it:x} 1                       （可选）
	   {it:result}:  ({it:v1}+({it:xc}!=0)) {it:x} ({it:v2}+({it:zc}!=0))


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:cross(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:)} 在 {it:X} 和 {it:Z} 中忽略包含缺失值的行。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数为内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_cross.sthlp>}