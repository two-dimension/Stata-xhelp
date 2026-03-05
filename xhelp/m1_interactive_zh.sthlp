{smcl}
{* *! version 1.1.6  11may2018}{...}
{vieweralsosee "[M-1] 交互式" "mansection M-1 Interactive"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] 简介" "help m1_intro_zh"}{...}
{viewerjumpto "描述" "m1_interactive_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m1_interactive_zh##linkspdf"}{...}
{viewerjumpto "备注" "m1_interactive_zh##remarks"}{...}
{viewerjumpto "回顾" "m1_interactive_zh##review"}{...}
{viewerjumpto "参考" "m1_interactive_zh##reference"}
{help m1_interactive:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-1] 交互式} {hline 2}}使用 Mata 进行交互式操作
{p_end}
{p2col:}({mansection M-1 Interactive:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{p 4 4 2}
使用 Mata 时，您只需输入矩阵公式即可获得所需结果。以下是使用统计公式时的指南。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-1 InteractiveRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
您有一些数据和希望计算的统计公式，例如 {bind:{bf:b} = ({bf:X}'{bf:X})^(-1){bf:X}'{bf:y}}。请执行以下九个步骤：

{p 8 12 2}
    1.  在 Stata 中开始。加载数据。

{p 8 12 2}
    2.  如果您正在进行时间序列分析，生成包含您需要的任何 {it:op}{cmd:.}{it:varname} 变量的新变量，例如 {cmd:l.gnp} 或 {cmd:d.r}。

{p 8 12 2}
    3.  创建一个常数变量 (. {cmd:gen} {cmd:cons} {cmd:=} {cmd:1})。在大多数统计公式中，您会发现它非常有用。

{p 8 12 2}
    4.  删除不需要的变量。这可以节省内存，并使某些操作变得更简单，因为您可以直接引用所有变量。

{p 8 12 2}
    5.  删除缺失值的观察值。Mata 可以理解缺失值，但 Mata 是矩阵语言，而不是统计系统，因此 Mata 并不总是忽略缺失值的观察值。

{p 8 12 2}
    6.  将变量调整到大致相同的数值规模。这是可选的，但我们推荐这样做。我们将在后面解释我们的意思以及如何做到这一点。

{p 8 12 2}
    7.  进入 Mata。通过在 Stata 命令提示符下输入 {cmd:mata} 来实现。输入 {cmd:mata} 后不要输入冒号。这样，当您犯错误时，您将保持在 Mata 中。

{p 8 12 2}
    8.  使用 Mata 的 {bf:{help mf_st_view_zh:[M-5] st_view()}} 函数根据您的 Stata 数据集创建矩阵。创建您希望的所有矩阵或方便的矩阵。通过 {cmd:st_view()} 创建的矩阵实际上是对数据一个副本的视图。

{p 8 12 2}
    9.  执行您的矩阵计算。

{pstd}如果您按建议的顺序阅读条目 {bf:{help mata_zh:[M-0] 简介}}，请接下来查看 {bf:{help m1_how_zh:[M-1] 如何}}。


{title:1.  在 Stata 中开始; 加载数据}

{p 4 4 2}
我们将使用 {cmd:auto} 数据集并拟合回归

		{cmd:mpg}_{it:j} = {it:b0} + {it:b1}*{cmd:weight}_{it:j} + {it:b2}*{cmd:foreign}_{it:j} + {it:e}_{it:j}

{p 4 4 2}
使用公式

	        {bf:b} = ({bf:X}'{bf:X})^(-1){bf:X}'{bf:y}

	        {bf:V} = {it:s}^2*({bf:X}'{bf:X})^(-1)

	其中

              {it:s}^2 = {bf:e}'{bf:e}/({it:n}-{it:k})

		{bf:e} = {bf:y} - {bf:X}*{bf:b}

		{it:n} = rows({bf:X})

		{it:k} = cols({bf:X})

{p 4 4 2}
我们首先输入

	. {cmd:sysuse auto}
	(1978 汽车数据)


{title:2.  创建任何时间序列变量}

{p 4 4 2}
我们没有任何时间序列变量，但就假设我们有。如果我们的模型包含滞后 {cmd:gnp}，我们将输入

	. {cmd: gen lgnp = l.gnp}

{p 4 4 2}
以便我们有一个新变量 {cmd:lgnp}，在后续步骤中我们将用它代替 {cmd:l.gnp}。


{title:3.  创建常数变量}

	. {cmd:gen cons = 1}


{title:4.  删除不必要的变量}

{p 4 4 2}
我们需要变量 {cmd:mpg}、{cmd:weight}、{cmd:foreign} 和 {cmd:cons}，因此我们更容易输入 {cmd:keep} 而不是 {cmd:drop}：

	. {cmd:keep mpg weight foreign cons}


{title:5.  删除缺失值的观察值}

{p 4 4 2}
我们在数据中没有任何缺失值，但让我们假设我们有，或者假设我们不确定。这里有一个简单技巧可以去掉缺失值的观察值：

	. {cmd:regress mpg weight foreign cons}
	{it:(输出省略)}

	. {cmd:keep if e(sample)}

{p 4 4 2}
我们使用所有变量估计进行了回归，然后保留了 {cmd:regress} 选择使用的观察值。选择哪个变量作为因变量无关紧要，自变量的顺序也无关紧要，所以我们也可以输入

	. {cmd:regress weight mpg foreign cons}
	{it:(输出省略)}

	. {cmd:keep if e(sample)}

{p 4 4 2}
甚至可以

	. {cmd:regress cons mpg weight foreign}
	{it:(输出省略)}

	. {cmd:keep if e(sample)}

{p 4 4 2}
{cmd:regress} 产生的输出是无关紧要的，即使某些变量被删除。我们只是在借用 {cmd:regress} 确定没有缺失值的子样本的能力。

{p 4 4 2}
使用 {cmd:regress} 会导致 Stata 进行许多不必要的计算， 如果您对此感到不快，这里有一个更复杂的替代方案：

	. {cmd:local 0 "mpg weight foreign cons"}

	. {cmd:syntax varlist}

	. {cmd:marksample touse}

	. {cmd:keep if `touse'}

	. {cmd:drop `touse'}

{p 4 4 2}
使用 {cmd:regress} 更简单。


{title:6.  将变量调整到大致相同的数值规模}

{p 4 4 2}
这一步是可选的，但我们推荐这样做。您即将使用公式，这些公式是由假定通常的算术规则成立的人推导出来的，例如 ({it:a}+{it:b})-{it:c} = {it:a}+({it:b}-{it:c})。许多标准规则，例如上面所示的规则，在有限精度的算术运算中被违反，这导致最后计算结果中的舍入误差。

{p 4 4 2}
通过确保您的变量在大致相同的尺度上，您可以获得很多保护，这里的大致相同是指它们的均值和标准差大致相等。大致相等意味着相差不超过 1,000 倍。因此让我们看看我们的数据：

	. {cmd:summarize}

        {txt}    变量 {c |}       观测值        平均值    标准差       最小值        最大值
        {hline 13}{c +}{hline 56}
                 mpg {c |}{res}        74     21.2973    5.785503         12         41
              {txt}weight {c |}{res}        74    3019.459    777.1936       1760       4840
             {txt}foreign {c |}{res}        74    .2972973    .4601885          0          1
                {txt}cons {c |}{res}        74           1           0          1          1{txt}

{p 4 4 2}
从这里我们看到的没有什么让我们烦恼。变量 {cmd:weight} 是最大的，其均值和标准差是最小变量 {cmd:foreign} 的 1,000 倍。我们会觉得勉强可以忽略规模差异。如果 {cmd:weight} 大 10 倍，我们就会开始担心，随着 {cmd:weight} 的增长，我们的担忧会加剧。

{p 4 4 2}
解决我们担忧的最简单方法是将 {cmd:weight} 除以 1,000，以便不再以磅为单位计量，而是以千磅为单位计量：

	. {cmd:replace weight = weight/1000}

	. {cmd:summarize}

        {txt}    变量 {c |}       观测值        平均值    标准差       最小值        最大值
        {hline 13}{c +}{hline 56}
                 mpg {c |}{res}        74     21.2973    5.785503         12         41
              {txt}weight {c |}{res}        74    3.019459    .7771936       1.76       4.84
             {txt}foreign {c |}{res}        74    .2972973    .4601885          0          1
                {txt}cons {c |}{res}        74           1           0          1          1{txt}

{p 4 4 2}
您应该做的是使变量的均值和标准差大致相等。如果 {cmd:weight} 具有较大的均值和合理的标准差，我们应该进行减法，以便我们有一个测量超过某个值的重量变量。或者我们可以同时做两件事，例如减去 2,000 然后除以 100，这样我们就会有超过 2,000 磅、以 100 磅为单位的重量。

{p 4 4 2}
请记住，“大致相等”的定义允许很大的灵活性，因此您不必放弃简单的解释。


{title:7.  进入 Mata}

{p 4 4 2}
我们输入

	. {cmd:mata}
        {txt}{hline 38} mata (输入 {cmd:end} 以退出) {hline}
	: {cmd:_}
	
{p 4 4 2}
Mata 使用冒号提示符，而 Stata 使用句号。


{title:8.  使用 st_view() 访问数据}

{p 4 4 2}
我们的矩阵公式为

	        {bf:b} = ({bf:X}'{bf:X})^(-1){bf:X}'{bf:y}

	        {bf:V} = {it:s}^2*({bf:X}'{bf:X})^(-1)

	其中

              {it:s}^2 = {bf:e}'{bf:e}/({it:n}-{it:k})

		{bf:e} = {bf:y} - {bf:X}*{bf:b}

		{it:n} = rows({bf:X})

		{it:k} = cols({bf:X})
	        
{p 4 4 2} 
因此我们需要 {bf:y} 和 {cmd:X}。 {bf:y} 是一个 {it:n} {it:x} 1 列向量的因变量值，而 {bf:X} 是一个 {it:n} {it:x} {it:k} 矩阵，包括常数。行是观察值，列是变量。

{p 4 4 2}
我们如下创建向量和矩阵：

	: {cmd:st_view(y=., ., "mpg")}

	: {cmd:st_view(X=., ., ("weight", "foreign", "cons"))}

{p 4 4 2}
让我们解释一下。我们希望能够输入

	: {cmd:y = st_view(., "mpg")}

	: {cmd:X = st_view(., ("weight", "foreign", "cons"))}

{p 4 4 2}
因为这就是这些函数真正要做的。我们无法这样做，因为 {help mf_st_view_zh:st_view()}（与所有其他 Mata 函数不同），返回一种特殊的矩阵，称为视图。视图在几乎所有方面都像常规矩阵，但视图所消耗的内存几乎不那么多，因为它们实际上是对底层 Stata 数据集的视图！

{p 4 4 2}
我们可以用 Mata 的 {bf:{help mf_st_data_zh:[M-5] st_data()}} 函数创建 {cmd:y} 和 {cmd:X}，然后我们可以自然地输入创建 {cmd:y} 和 {cmd:X} 的代码，

	: {cmd:y = st_data(., "mpg")}

	: {cmd:X = st_data(., ("weight", "foreign", "cons"))}

{p 4 4 2}
{cmd:st_data()} 返回一个真实矩阵，它是 Stata 存储在内存中的数据的副本。

{p 4 4 2}
我们可以使用 {cmd:st_data()} 来解决问题。对于我们的汽车数据示例，这是一个不错的解决方案。但是如果汽车数据更大，您可能会内存不足，而视图可以节省大量内存。您可以随意创建视图 — 创建很多很多的视图 — 而不会消耗太多内存！视图非常方便，值得掌握使用它们所需的小语法。

{p 4 4 2}
{cmd:st_view()} 需要三个参数：要创建的视图矩阵的名称、矩阵所包含的观测值（行）和变量（列）。如果我们想创建一个名为 {cmd:Z} 的视图矩阵，包含所有观测值和所有变量，我们可以输入

	: {cmd:st_view(Z, ., .)}

{p 4 4 2}
{cmd:st_view()} 理解第二个和第三个位置的缺失值表示所有观察值和所有变量。让我们试试：

	: {cmd:st_view(Z, ., .)}
	                 {err:<istmt>:  3499  Z not found}
        r(3499);

	: {cmd:_}

{p 4 4 2}
那没有成功，因为 Mata 要求 {cmd:Z} 必须预定义。原因是技术上的，但您不必感到惊讶，函数参数需要在函数使用之前定义。Mata 只是无法理解 {cmd:st_view()} 实际上不需要定义 {cmd:Z}。解决 Mata 的混淆的方法是定义 {cmd:Z} 然后让 {cmd:st_view()} 重新定义它：

	: {cmd:Z = .}

	: {cmd:st_view(Z, ., .)}

{p 4 4 2}
如果您愿意，可以将所有内容合并为一个语句

	: {cmd:st_view(Z=., ., .)}

{p 4 4 2}
这就是我们在定义 {cmd:y} 和 {cmd:X} 时所做的：

	: {cmd:st_view(y=., ., "mpg")}

	: {cmd:st_view(X=., ., ("weight", "foreign", "cons"))}

{p 4 4 2}
第二个参数 ({cmd:.}) 指定我们希望所有的观察值，而第三个参数指定我们想要的变量。在输入变量时请务必小心，不要省略“额外”的括号。如果您输入

	: {cmd:st_view(X=., ., "weight", "foreign", "cons")}

{p 4 4 2}
将会被告知您输入了无效的表达式。 {cmd:st_view()} 期望三个参数，而第三个参数是一个指定变量选择的行向量： {cmd:("weight",} {cmd:"foreign",} {cmd:"cons")}。

{p 4 4 2}
此时，我们建议您输入

	: {cmd:y}
	{it:(输出省略)}

	: {cmd:X}
	{it:(输出省略)}

{p 4 4 2} 
以查看 {cmd:y} 和 {cmd:X} 确实包含我们的数据。如果您忘记了输入的内容，这里是到目前为止的完整会话：

	. {cmd:sysuse auto}
	. {cmd:gen cons = 1}
	. {cmd:keep mpg weight foreign cons}
	. {cmd:regress mpg weight foreign cons}
	. {cmd:keep if e(sample)}
	. {cmd:replace weight = weight/1000}
	. {cmd:mata}
	: {cmd:st_view(y=., ., "mpg")}
	: {cmd:st_view(X=., ., ("weight", "foreign", "cons"))}


{title:9.  执行您的矩阵计算}

{p 4 4 2}
提醒您：我们的矩阵计算为

	        {bf:b} = ({bf:X}'{bf:X})^(-1){bf:X}'{bf:y}

	        {bf:V} = {it:s}^2*({bf:X}'{bf:X})^(-1)

	其中

              {it:s}^2 = {bf:e}'{bf:e}/({it:n}-{it:k})

		{bf:e} = {bf:y} - {bf:X}*{bf:b}

		{it:n} = rows({bf:X})

		{it:k} = cols({bf:X})

{p 4 4 2}
让我们获得回归系数，

	: {cmd:b = invsym(X'X)*X'y}

	: {cmd:b}
        {res}       {txt}           1
            {c TLC}{hline 16}{c TRC}
          1 {c |}  {res}-6.587886358{txt}  {c |}
          2 {c |}  {res}-1.650029004{txt}  {c |}
          3 {c |}  {res} 41.67970227{txt}  {c |}
            {c BLC}{hline 16}{c BRC}{txt}

{p 4 4 2}
接下来，我们形成残差，定义 {it:n} 和 {it:k}，并获得 {it:s}^2，

	: {cmd:e  = y - X*b}
	: {cmd:n  = rows(X)}
	: {cmd:k  = cols(X)}
	: {cmd:s2 = (e'e)/(n-k)}

{p 4 4 2}
因此我们能够计算方差矩阵：

	: {cmd:V = s2*invsym(X'X)}
	: {cmd:V}
        {res}{txt}[对称]
                          1              2              3
            {c TLC}{hline 46}{c TRC}
          1 {c |}  {res} .4059128628                              {txt}  {c |}
          2 {c |}  {res} .4064025078    1.157763273               {txt}  {c |}
          3 {c |}  {res}-1.346459802    -1.57131579    4.689594304{txt}  {c |}
            {c BLC}{hline 46}{c BRC}{txt}

{p 4 4 2}
我们完成了。

{p 4 4 2}
我们可以通过提取 {it:V} 的对角线并计算每个元素的平方根以更易读的方式呈现结果：

	: {cmd:se = sqrt(diagonal(V))}
	: {cmd:(b, se)}
        {res}       {txt}           1              2
            {c TLC}{hline 31}{c TRC}
          1 {c |}  {res}-6.587886358    .6371129122{txt}  {c |}
          2 {c |}  {res}-1.650029004    1.075994086{txt}  {c |}
          3 {c |}  {res} 41.67970227    2.165547114{txt}  {c |}
            {c BLC}{hline 31}{c BRC}{txt}

{p 4 4 2}
您知道，如果我们输入 

	: {cmd:2+3}
	  5

{p 4 4 2}
Mata 会评估这个表达式并给我们展示结果，这正是当我们输入 

	: {cmd:(b, se)}

{p 4 4 2}
{cmd:(b,} {cmd:se)} 是一个表达式，Mata 评估了它并显示了结果。这个表达式是创建一个矩阵，其中第一列是 {cmd:b}，第二列是 {cmd:se}。我们可以通过请求 Mata 显示 {cmd:(b, se, b:/se)} 来获得系数、标准误差及其 t 统计量的列表，

	: {cmd:(b, se, b:/se)}
        {res}       {txt}           1              2              3
            {c TLC}{hline 46}{c TRC}
          1 {c |}  {res}-6.587886358    .6371129122   -10.34021793{txt}  {c |}
          2 {c |}  {res}-1.650029004    1.075994086   -1.533492633{txt}  {c |}
          3 {c |}  {res} 41.67970227    2.165547114    19.24673077{txt}  {c |}
            {c BLC}{hline 46}{c BRC}{txt}

{p 4 4 2}
在上面的表达式中，{cmd:b:/se} 是指将 {cmd:b} 中的元素除以 {cmd:se} 中的元素。{cmd::/} 被称为冒号操作符，您可以通过查看 {bf:{help m2_op_colon_zh:[M-2] op_colon}} 来了解更多信息。

{p 4 4 2}
我们可以通过输入来添加显著性水平

	: {cmd:(b, se, b:/se, 2*ttail(n-k, abs(b:/se)))}
        {res}       {txt}           1              2              3              4
            {c TLC}{hline 61}{c TRC}
          1 {c |}  {res}-6.587886358    .6371129122   -10.34021793    8.28286e-16{txt}  {c |}
          2 {c |}  {res}-1.650029004    1.075994086   -1.533492633     .129598713{txt}  {c |}
          3 {c |}  {res} 41.67970227    2.165547114    19.24673077    6.89556e-30{txt}  {c |}
            {c BLC}{hline 61}{c BRC}{txt}

{p 4 4 2}
这些是 {cmd:regress} 报告的相同结果；输入 

	. {cmd:sysuse auto}
	. {cmd:replace weight = weight/1000}
	. {cmd:regress mpg weight foreign}

{p 4 4 2}
并比较结果。


{marker review}{...}
{title:回顾}

{p 4 4 2}
我们的完整会话是

	. {cmd:sysuse auto}
	. {cmd:gen cons = 1}
	. {cmd:keep mpg weight foreign cons}
	. {cmd:regress mpg weight foreign cons}
	. {cmd:keep if e(sample)}
	. {cmd:replace weight = weight/1000}

	. {cmd:mata}
	: {cmd:st_view(y=., ., "mpg")}
	: {cmd:st_view(X=., ., ("weight", "foreign", "cons"))}

	: {cmd:b = invsym(X'X)*X'y}
	: {cmd:b}
	: {cmd:e = y - X*b}
	: {cmd:n = rows(X)}
	: {cmd:k = cols(X)}
	: {cmd:s2= (e'e)/(n-k)}
	: {cmd:V = s2*invsym(X'X)}
	: {cmd:V}

	: {cmd:se = sqrt(diagonal(V))}
	: {cmd:(b, se)}
	: {cmd:(b, se, b:/se)}
	: {cmd:(b, se, b:/se, 2*ttail(n-k, abs(b:/se)))}
	: {cmd:end}


{marker reference}{...}
{title:参考}

{phang}
Gould, W. W. 2006.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0024":Mata 事项：交互式使用}。
{it:Stata Journal} 6: 387-396.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_interactive.sthlp>}