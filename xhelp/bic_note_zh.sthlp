{smcl}
{* *! version 1.2.1  04dec2018}{...}
{vieweralsosee "[R] BIC note" "mansection R BICnote"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat ic" "help estat ic"}{...}
{vieweralsosee "[R] estimates stats" "help estimates_stats_zh"}{...}
{viewerjumpto "Description" "bic note##description"}{...}
{viewerjumpto "Links to PDF documentation" "bic_note_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "bic note##remarks"}{...}
{viewerjumpto "References" "bic note##references"}
{help bic_note:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] BIC note} {hline 2}}计算和解释BIC{p_end}
{p2col:}({mansection R BICnote:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
本条目讨论了在使用贝叶斯信息准则（BIC）进行模型比较时出现的统计问题。

{pstd}
Stata使用 {it:N} = {cmd:e(N)} 来计算BIC，除非 {cmd:e(N_ic)} 已经被设定；在这种情况下，它使用 {it:N} = {cmd:e(N_ic)}。例如，选择模型 {help cm_zh} 命令将 {cmd:e(N_ic)} 设置为案例数，因为这些命令使用的数据排列中，多个Stata观测值代表一个单独的统计观测值，称为案例。

{pstd}
有时，如果使用不同的 {it:N} 而不是 {cmd:e(N)} 会更好。计算BIC的命令有一个 {cmd:n()} 选项，允许您指定要使用的 {it:N}。

{pstd}
总之， 

{p 8 12 2}
1.  如果您比较由相同估计命令估计的结果，使用默认的BIC计算通常是可以的。确实有一个问题，但大多数研究者会忽略它。

{p 8 12 2}
2.  如果您比较不同估计命令估计的结果，需要保持警惕。

{p 12 16 2}
    a.  如果不同估计命令共享相同的观测、独立性等定义，您就回到了案例1。

{p 12 16 2}
    b.  如果在这些方面存在差异，您需要考虑应该使用的 {it:N} 的值。
        例如，{help logit_zh} 和 {help xtlogit_zh} 的区别在于前者假定观测值独立，而后者假定独立面板。

{p 12 16 2}
    c.  如果估计命令在计算似然函数时使用的事件不同，信息准则可能完全不可比较。我们之所以说信息准则，是因为这同样适用于赤池信息准则（AIC）以及BIC。
        例如，{help streg_zh} 和 {help stcox_zh} 会产生这样的不可比结果。{cmd:streg} 使用的是实际生存时间，而 {cmd:stcox} 使用的是在风险池内的失败事件，这些事件是基于失败发生的时间条件下的。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R BICnoteRemarksandexamples:备注和示例}

        {mansection R BICnoteMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help bic_note##background:背景}
	{help bic_note##problem:确定N的问题}
	    {help bic_note##ex1:示例1}
	    {help bic_note##ex2:示例2}
	{help bic_note##problem2:可比似然的问题}
	{help bic_note##aic:第一个问题在AIC中不存在；第二个问题存在}
	{help bic_note##diy:正确计算BIC}


{marker background}{...}
{title:背景}

{pstd}
AIC和BIC是比较最大似然模型的两种流行度量。 AIC和BIC定义为

		AIC = -2*ln(似然) + 2*{it:k}

		BIC = -2*ln(似然) + ln({it:N})*{it:k}

{p 8 8 2}
其中

		  {it:k} = 估计的参数数量

		  {it:N} = 观测值数量

{pstd}
我们将讨论AIC与BIC，因为AIC存在与BIC相同的一些问题，但并非全部。

{pstd}
AIC和BIC可以视为结合拟合和复杂性的度量。拟合是通过 -2*ln(似然) 负向衡量的；值越大，拟合越差。复杂性则通过 2*{it:k}（AIC）或 ln({it:N})*{it:k}（BIC）正向衡量。

{pstd}
在同一数据上拟合的两个模型中，信息准则值较小的模型被认为更好。

{pstd}
关于这些度量有大量文献：参见
{help bic note##A1974:赤池（1974）};
{help bic note##R1995:拉夫提（1995）};
{help bic note##SIK1986:坂本、石黑和北川（1986）}; 以及
{help bic note##S1978:施瓦茨（1978）}。

{pstd} 
当Stata计算上述度量时，它使用 {cmd:e(V)} 的等级作为 {it:k}，并使用 {cmd:e(N)} 作为 {it:N}。 {cmd:e(V)}和 {cmd:e(N)} 是Stata对通过估计命令存储的结果的表示。 {cmd:e(V)} 是估计参数的方差-协方差矩阵， {cmd:e(N)} 是用于计算结果的数据集中观测值的数量。


{marker problem}{...}
{title:确定N的问题} 

{pstd}
AIC和BIC的区别在于，AIC使用常数2来权衡 {it:k}，而BIC使用 ln({it:N})。

{pstd}
确定应该使用的 {it:N} 的值是有问题的。尽管表面上看 "{it:N} 是观测值的数量" 的定义不易实现。 {it:N} 在似然函数本身中并不存在， {it:N} 也不是标准统计公式的输出，什么是观测值往往是主观的。


{marker ex1}{...}
{title:示例1}

{pstd}
通常，{it:N} 的含义是显而易见的。考虑一个简单的 logit 模型。这里的 {it:N} 是指与 {it:M} 相对应的统计独立的观测数量，即在计算中使用的数据集中的观测数。
我们将写作 {it:N}={it:M}。

{pstd}
但现在假设同一数据集有一个分组变量，并且数据被认为在组内聚类。为了简化问题，假装有 {it:G} 组和每组 {it:m} 观测，所以 {it:M} = {it:G}*{it:m}。因为您担心组内相关性，您使用 {cmd:xtlogit} 以分组变量为基础拟合模型。现在您希望计算BIC。应该使用哪个 {it:N}？是 {it:N}={it:M} 还是 {it:N}={it:G}？

{pstd}
这是一个深刻的问题。如果观测值确实独立，则应使用 {it:N}={it:M}。如果组内的观测值不仅相关而且是彼此的重复，而且它们必须如此，则应使用 {it:N}={it:G}。
在这两种极端情况之间，您可能应该使用一个介于 {it:M} 和 {it:G} 之间的数字，但根据测量的相关性来确定该数字是困难的。使用 {it:N}={it:M} 是保守的，因为如果有任何问题，它会增加复杂性。保守性，但也是主观的：使用 {it:N}={it:G}可能被认为更保守，因为对数据施加的约束更少。

{pstd}
当估计的相关性很高时，我们的反应将是，使用 {it:N}={it:G} 可能更为合理。然而，我们的第一反应是使用BIC来比较模型可能是对这一度量的误用。

{pstd}
Stata使用 {it:N}={it:M}。对网络文献的非正式调查表明， {it:N}={it:M} 是普遍选择。

{pstd}
选择 {it:N}={it:M} 的另一个理由，尽管不那么好，是：在进行模型间比较时，这使得结果更可能有效，而无需考虑该问题。
假设您希望比较 {help logit_zh} 和 {help xtlogit_zh} 的结果。
因此，您需要计算 

		BIC_p = -2*ln(似然_p) + ln({it:N_p})*{it:k}

		BIC_x = -2*ln(似然_x) + ln({it:N_x})*{it:k}

{pstd} 
无论您使用哪个 {it:N}，都必须在两个公式中使用相同的 {it:N}。
Stata选择 {it:N}={it:M} 至少符合这一测试。


{marker ex2}{...}
{title:示例2}

{pstd}
在上述示例中，使用 {it:N}={it:M} 是合理的。现在让我们看看在什么情况下即使流行，使用 {it:N}={it:M}也是错误的。

{pstd}
考虑一个通过 {help stcox_zh} 拟合的模型。如果只是因为 {it:M} 甚至不是一个良好定义的数字，那么使用 {it:N}={it:M} 肯定是错误的。同一数据可以通过不同数量观测值的不同数据集表示。例如，在一个数据集中，每个受试者可能有1个观测值。在另一个数据集中，同一受试者可能有两个记录，第一条记录记录风险时间的前一半，第二条记录剩余部分。通过Stata在任一数据集上计算的所有统计量将是相同的，但 {it:M} 将是不同的。

{pstd}
然而，决定正确的定义是困难的。从某种角度来看，Cox回归中的 {it:N} 应该是风险池的数量 {it:R}，因为Cox回归计算是基于独立的风险池。从另一个角度来看， {it:N} 应该是受试者的数量 {it:N_subj}，因为尽管似然函数是基于风险池，但估计的参数是在受试者水平上。

{pstd}
您可以决定您更喜欢哪种论点。

{pstd}
对于参数生存模型，在单条记录数据中， {it:N}={it:M} 是明确正确的。对于多记录数据， {it:N}={it:M} 和 {it:N}={it:N_subj} 都有论据支持。


{marker problem2}{...}
{title:可比似然的问题}

{pstd}
可比似然的问题与 {it:N} 无关。研究者有时使用像BIC和AIC这样的信息准则对模型进行比较。为了使这种比较有效，似然函数必须是可比的；也就是说，所有的似然必须测量相同的东西。

{pstd}
人们常常认为似然函数是 Pr(数据|参数)，但实际上，似然是

		Pr(数据中的特定事件 | 参数)

{pstd}
您必须确保事件是相同的。

{pstd}
例如，在半参数Cox回归和各种参数生存模型中，它们的事件并不是相同的。在Cox回归中，事件是在每一个失败时间，观察到的受试者的失败确实发生在那些时间。 在参数模型中，事件是每个受试者确切失败的时刻与观察到的失败时刻相对应。

{pstd}
AIC和BIC的公式是

		度量 = -2*ln(似然) + 复杂性

{pstd}
当您比较模型时，如果似然测量了不同的事件，即使模型获得了相同参数的估计，信息度量的差异也是无关的。


{marker aic}{...}
{title:第一个问题在AIC中不存在；第二个问题存在}

{pstd}
无论模型如何，定义 {it:N} 的问题在AIC中从未出现，因为在AIC计算中没有使用 {it:N}。AIC使用常数2来权衡由 {it:k} 测量的复杂性，而不是 ln({it:N})。

{pstd}
然而，对于AIC和BIC，似然函数必须是可比的；即它们必须测量相同事件。


{marker diy}{...}
{title:正确计算BIC}

{pstd}
在使用BIC比较结果时，特别是在使用BIC比较不同模型的结果时，您应该仔细考虑 {it:N} 应如何定义。然后，通过使用 {cmd:n()} 选项来指定该数字：

	. {cmd:estimates stats full sub, n(74)}

	{hline 6}{c TT}{hline 57}
  	模型 {c |}  观测值    ll(null)   ll(model)   df        AIC         BIC
	{hline 6}{c +}{hline 57}
      	 full {c |}  102   -45.03321   -20.59083    4   49.18167    58.39793
      	  sub {c |}  102   -45.03321   -27.17516    3   60.35031    67.26251
	{hline 6}{c BT}{hline 57}
	注意：用于计算BIC的 N = 74

{pstd} 
{cmd:estimates} {cmd:stats} 和 {cmd:estat} {cmd:ic} 都允许 {cmd:n()} 选项；请参见 
{bf:{help estimates_stats_zh:[R] estimates stats}}
和 
{bf:{help estat ic:[R] estat ic}}。


{marker references}{...}
{title:参考文献}

{marker A1974}{...}
{phang}
Akaike, H. 1974. 统计模型鉴别的新视角。
{it:IEEE 自动控制交易} 19: 716-723.

{marker R1995}{...}
{phang}
Raftery, A. 1995. 社会研究中的贝叶斯模型选择。在 {it:社会方法学} 第25卷，编辑 P.V. Marsden, 111-163.
牛津：黑威尔。

{marker SIK1986}{...}
{phang}
坂本、Y., 石黑和北川. 1986.
{it:赤池信息准则统计}.  荷兰多德雷赫特：Reidel。

{marker S1978}{...}
{phang}
施瓦茨，G. 1978. 模型维度的估计。
{it:统计年鉴} 6: 461-464。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bic_note.sthlp>}