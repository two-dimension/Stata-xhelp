
{smcl}
{* *! version 1.0.1  14jun2019}{...}
{marker frval()}{...}
    {cmd:frval(}{it:lvar}{cmd:,}{it:var}{cmd:)}
{help f_frval:English Version}
{hline}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}返回存储在其他框架中的变量的值

{p2col:}框架函数 {cmd:frval()} 和 
		{helpb f_frval##_frval():_frval()} 
                  访问当前框架外的框架中变量的值。如果您不知道什么是框架，请参见 
                  {helpb frames intro:[D] frames intro}。

{p2col:}这两个函数执行相同的操作，但 {cmd:frval()} 更易于使用，并且更安全。 
                  {cmd:_frval()} 是一个程序员函数。

{p2col:}{it:lvar} 是由 {help frlink_zh} 创建的变量名称，
		用于将当前框架链接到另一个框架。

{p2col:}{it:var} 是在另一个框架中的变量名称。

{p2col:}返回的是与当前框架中的观察相匹配的其他框架中 {it:var} 的值。

{p2col:示例 1:}当前框架包含有关个人的数据。
		  当前框架中的变量之一是 {cmd:countyid}，包含每个人居住的县。

{p2col:}框架 {cmd:frcounty} 包含有关县的数据。在这些数据中，变量 {cmd:countyid} 也记录了县的 
		  ID，其他变量记录县的特征。

{p2col:}在当前框架中，您已经创建了变量 {cmd:linkcnty}，将当前框架链接到 
	          {cmd:frcounty}。您可以通过键入

{p2col:}{cmd:. frlink m:1 countyid, frame(frcounty) generate(linkcnty)}

{p2col:}现在，您可以输入

{p2col:}{cmd:. generate rel_income = income / frval(linkcnty, median_income)}

{p2col:}{cmd:income} 是当前框架中的现有变量。 {cmd:median_income} 是 
		{cmd:frcounty} 中的现有变量。 {cmd:rel_income} 将是当前框架中的新变量，
		包含每个人的收入与他们所居住县的中位数收入之比。

{p2col:示例 2:}通常，框架采用数据集名称命名，链接变量则采用框架名称命名。这里是一个
		  示例，遵循上述使用的名称：

{p2col:}{cmd:. use persons, clear}{break}
	{cmd:. frame create county}{break}
	{cmd:. frame county: use county}{break}
	{cmd:. frlink m:1 countyid, frame(county)}{break}
	{cmd:. generate rel_income = income / frval(county, median_income)}

{p2col: 域 {it:lvar}:}由 {help frlink_zh} 创建的变量名称，用于将当前框架链接至另一个框架

{p2col: 域 {it:var}:}链接至的框架中的任何变量（字符串或数字）；允许变量名缩写{p_end}

{p2col: 范围:} {it:var} 的范围，加上缺失值 
               （缺失值在 {it:var} 涉及数字数据时定义为 {cmd:.}，而在 {it:var} 涉及字符串数据时定义为 {cmd:""}； 
               返回缺失值的观察在当前框架中与其他框架中的观察不匹配）{p_end}
{p2colreset}{...}

    {cmd:frval(}{it:lvar}{cmd:,}{it:var}{cmd:,}{it:unm}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}上面描述的 {helpb f_frval##frval():frval()} 函数，但具有第三个参数 {it:umn}

{p2col:}{cmd:frval()} 返回 {it:var} 的值来自使用 {it:lvar} 链接的 
		  框架中与当前框架中的观察相匹配的观察，同时如果没有匹配的观察则返回 {it:unm} 的值。

{p2col:}例如，输入 

{p2col:} {cmd:. generate median_inc = frval(county, median_income, .a)}

{p2col:}以在当前框架中创建新变量 {cmd:median_inc}，包含来自其他框架的 {cmd:median_income}，
        或者当在其他框架中没有匹配的观察时返回 {cmd:.a}。

{p2col: 域 {it:lvar}:}由 {help frlink_zh} 创建的变量名称，用于将当前框架链接至另一个框架

{p2col: 域 {it:var}:}链接至的框架中的任何变量（字符串或数字）；允许变量名缩写{p_end}

{p2col: 域 {it:unm}:}如果 {it:var} 是数字；则为任何数字值；如果 {it:var} 是字符串，则为任何字符串值

{p2col: 范围:} {it:var} 的范围，加上 {it:unm}{p_end}
{p2colreset}{...}

{marker _frval()}{...}
    {cmd:_frval(}{it:frm}{cmd:,}{it:var}{cmd:,}{it:i}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}程序员版本的
	{helpb f_frval##frval():frval()}

{p2col:}对那些希望编写自己的 {help frlink_zh} 并创建特殊（或至少不同）效果的人来说非常有用。

{p2col:}{cmd:_frval()} 返回存储在其他框架中的变量的值。 它返回 {it:var} 的 
		  {it:i}th 观察值 ({it:var}[{it:i}]) 来自框架 {it:frm}； 
                  参见 {helpb frames intro:[D] frames intro}。

{p2col:}如果 {it:i} 超出了框架的有效观察范围，则 {cmd:_frval()} 返回缺失值。

{p2col:}例如，您有两个数据集在内存中。
        当前框架名为 {cmd:default}，包含57个观察。另一个数据集，我们假设存储在框架 {cmd:xdata} 中。
        它包含不同的变量，但在同57个观察上。两个数据集的顺序相同，因此
        {cmd:default} 中的观察 1 对应于 {cmd:xdata} 中的观察 1，观察 2 对应于观察 2，依此类推。
        您可以输入 
        {p_end}

{p2col:}{cmd:. generate hrlywage = income / _frval(xdata, hrswrked, _n)}
       {p_end}

{p2col:}这将把存储在 {cmd:default} 中的 {cmd:income} 的值除以存储在 
        {cmd:xdata} 中的 {cmd:hrswrked} 的值。

{p2col:}首先要注意的是 {cmd:_frval()}'s 前两个参数 
        不是表达式。您只需输入框架的名称和变量的名称
        而不需要将它们放在引号中。我们指定了 {cmd:xdata} 
        作为框架名称以及 {cmd:hrswrked} 作为变量名称。  
        {p_end}

{p2col:}第二件要注意的事情是第三个参数是一个表达式。 
        为了强调这一点，假设示例改变。假设
        {cmd:xdata} 中包含58而不是57个观察。假设
        {cmd:default} 中的观察1对应于 {cmd:xdata} 的观察2，观察2对应于观察3，
        依此类推。在这种情况下，您键入
        {p_end}

{p2col:}{cmd:. generate hrlywage = income / _frval(xdata, hrswrked, _n+1)}
        {p_end}

{p2col:}这些示例是人为的。您通常会通过在 {cmd:default} 中创建一个
        变量来使用 {cmd:_frval()}，这个变量包含 
        在 {cmd:xdata} 中相应的观察编号。如果变量称为 {cmd:xobsno}， 
        那么在第一个示例中， {cmd:xobsno} 
        将包含 1, 2, ..., 57。
        {p_end}

{p2col:}在第二个示例中，{cmd:xobsno} 将包含 2, 3, ..., 58。
        {p_end}

{p2col:}在另一个示例中，{cmd:xobsno} 可能包含 9, 6, ...,
        32，这就是说，数字 2, 3, ..., 58，但重新排列为
        反映数据集的混乱顺序。
{p_end}

{p2col:}在另一个例子中，{cmd:xobsno} 可能包含 9, 6, 9, ...,
        32，即 {cmd:default} 中的观察 1 和 3 
        都对应于 {cmd:xdata} 中的观察 9。 {cmd:xdata}
        在此示例中可能记录地理位置，而在 {cmd:default} 中，观察1和3的人员
        生活在相同的地方。 

{p2col:}在最后一个示例中，{cmd:xobsno} 
        可能包含上述所有内容以及缺失值 ({cmd:.})。
        缺失值表示在 {cmd:default} 中
        没有对应的观察在 {cmd:xdata} 中。如果
        观察 7 和 11 包含缺失值，这意味着
        在 {cmd:xdata}中没有与 
        {cmd:default} 中的观察 7 和 11 对应的观察。
        （{cmd:_frval()} 有第一个语法，可以让您指定
        当没有对应的观察时返回的值；
        见下文）。
        {p_end}

{p2col:}无论示例的复杂性如何，在观察 {it:j} 中 
        {cmd:xobsno} 的值都是 {cmd:xdata} 中相应的观察编号 {it:i}。
        无论复杂性如何，创建新 
        变量 {cmd:hrlywage} 在 {cmd:default} 中，
        您只需输入{p_end}

{p2col:}{cmd:. generate hrlywage = income / _frval(xdata, hrswrked, xobsno)}
        {p_end}

{p2col:}这就留下了如何生成 {cmd:xobsno} 在上述所有情况下的问题，操作起来很简单。 
        参见 {help frlink_zh:[D] frlink}。
        {p_end}

{p2col:}还有两件事情需要了解。
        {p_end}

{p2col:}首先，框架之间的变量是不同的。如果我们
        在 {cmd:default} 中称为 {cmd:income} 的变量叫做 
        {cmd:x}，而在 {cmd:xdata} 中的变量 {cmd:hrswrked} 也叫做 {cmd:x}，您将键入 {p_end}

{p2col:}{cmd:. generate hrlywage = x / _frval(xdata, x, xobsno)} {p_end}

{p2col:}其次，尽管我们已经用数字变量演示了 
        {cmd:_frval()} 的使用，但它也适用于字符串变量。
        如果 {it:var} 是字符串变量名称，{cmd:_frval()} 
        将返回字符串结果。 

{p2col: 域 {it:frm}:}任何已存在的框架名称

{p2col: 域 {it:var}:} {it:frm} 中的任何现有变量名称；
	       允许变量名缩写{p_end}

{p2col: 域 {it:i}:}任何数字值，包括缺失值，即使 
                       非缺失值应在范围 1 到 
                       {it:frm} 的 {cmd:_N} 之间；
                       非整数将被解释为通过截断获得的相应整数，范围外的值将被视为缺失值

{p2col: 范围:} {it:var} 在 {it:frm} 中的范围，加上缺失值；
               当 {it:var} 是数字时，返回缺失值；当 {it:var} 是字符串时，返回字符串缺失值
	       {p_end}

{p2colreset}{...}
    {cmd:_frval(}{it:frm}{cmd:,}{it:var}{cmd:,}{it:i}{cmd:,}{it:v}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}上面描述的 {helpb f_frval##_frval():_frval()} 函数，但具有第四个参数 {it:v}

{p2col:}{cmd:_frval()} 返回存储在其他框架中的变量的值。它 
		返回 {it:var} 的 {it:i}th 观察值 ({it:var}[{it:i}]) 
		来自框架 {it:frm}。

{p2col:}当指定 {it:v} 时，{cmd:_frval()} 如果 {it:var}[{it:i}] 为缺失值或者 {it:i} 超出了有效观察范围，则返回 {it:v}。

{p2col:}{cmd:. generate hwage = income / _frval(xdata, hrswrked, xobsno, .z)}
        {p_end}

{p2col:}{cmd:. generate hwage = income / _frval(xdata, hrswrked, xobsno, avg)}
        {p_end}

{p2col:}在第一种情况下，{cmd:.z} 被返回对于 {cmd:xobsno} 中包含超出范围值的观察。
在第二种情况下，返回变量 {cmd:avg} 中记录的值。 
{p_end}

{p2col: 域 {it:frm}:}任何已存在的框架名称
{p_end}

{p2col: 域 {it:var}:} {it:frm} 中的任何现有变量名称；
	       允许变量名缩写{p_end}

{p2col: 域 {it:i}:}任何数字值，包括缺失值即使 
                       非缺失值应在范围 1 到 
                       {it:frm} 的 {cmd:_N} 之间；
                       非整数将被解释为通过截断获得的相应整数，范围外的值将被视为缺失值

{p2col: 域 {it:v}:}当 {it:var} 是数字时，为任意数字值； 
                       当 {it:var} 是字符串时，为任意字符串值 
                       （可以是常量或逐观察变化）

{p2col: 范围:} {it:var} 在 {it:frm} 中的范围，加上 {it:v}{p_end}
{p2colreset}{...}