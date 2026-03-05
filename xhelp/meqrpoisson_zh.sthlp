{smcl}
{* *! version 1.3.1  10oct2018}{...}
{viewerdialog meqrpoisson "dialog meqrpoisson"}{...}
{vieweralsosee "之前的文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meqrpoisson 后估计" "help meqrpoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] 估计" "help mi estimation"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] menbreg" "help menbreg_zh"}{...}
{vieweralsosee "[ME] mepoisson" "help mepoisson_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{viewerjumpto "语法" "meqrpoisson_zh##syntax"}{...}
{viewerjumpto "菜单" "meqrpoisson_zh##menu"}{...}
{viewerjumpto "描述" "meqrpoisson_zh##description"}{...}
{viewerjumpto "选项" "meqrpoisson_zh##options"}{...}
{viewerjumpto "备注" "meqrpoisson_zh##remarks"}{...}
{viewerjumpto "示例" "meqrpoisson_zh##examples"}{...}
{viewerjumpto "存储结果" "meqrpoisson_zh##results"}
{help meqrpoisson:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[ME] meqrpoisson} {hline 2}}多级混合效应泊松回归（QR 分解）{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/memeqrpoisson.pdf":查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:meqrpoisson} 继续有效，但自 Stata 16 起不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参见 {help mepoisson_zh} 获取 {cmd:meqrpoisson} 的推荐替代方案。

{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:meqrpoisson} {depvar} {it:fe_equation} {cmd:||} {it:re_equation}
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help meqrpoisson##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{cmd:,} {it:{help meqrpoisson##fe_options:fe_options}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help meqrpoisson##re_options:re_options}}]

{p 8 18 2}
	用于因子变量值之间的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}
		[{cmd:,} {it:{help meqrpoisson##re_options:re_options}}]

{p 4 4 2}
    {it:levelvar} 是标识该水平随机效应的组结构的变量，或是 {cmd:_all}，表示一个包含所有观察的组。{p_end}

{synoptset 30 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制固定效应方程的常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数限制为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数限制为 1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :re_options}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meqrpoisson##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}抑制随机效应方程的常数项{p_end}
{synopt :{opt col:linear}}保留共线性变量{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt irr}}将固定效应系数报告为发生率比，即 exp(b) 而不是 b。标准误和置信区间也相应地转换。该选项影响结果显示，而不影响估计方法。可在估计时或重放时指定 {cmd:irr}。

{synopt :{opt var:iance}}以方差和协方差的形式显示随机效应参数估计；默认值{p_end}
{synopt :{opt stddev:iations}}以标准差和相关性形式显示随机效应参数估计{p_end}
{synopt :{opt noret:able}}抑制随机效应表{p_end}
{synopt :{opt nofet:able}}抑制固定效应表{p_end}
{synopt :{opt estm:etric}}仅使用存储在 {cmd:e(b)} 中的度量显示参数估计{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制汇总组的信息表{p_end}
{synopt :{it:{help meqrpoisson##display_options:display_options}}}控制包含帮助的简短描述-显示选项

{syntab:积分}
{synopt :{opt intp:oints(# [# ...])}}设置积分（高斯积分）点数；默认值为 {cmd:intpoints(7)}{p_end}
{synopt :{opt lap:lace}}使用拉普拉斯近似；相当于 {cmd:intpoints(1)}{p_end}

{syntab :最大化}
{synopt :{it:{help meqrpoisson##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}
{synopt :{opt retol:erance(#)}}随机效应估计的容忍度；默认值为 {cmd:retolerance(1e-8)}；很少使用{p_end}
{synopt :{opt reiter:ate(#)}}对随机效应估计的最大迭代次数；默认值为 {cmd:reiterate(50)}；很少使用{p_end}
{synopt :{opt matsqrt}}使用矩阵平方根对方差成分进行参数化；默认值{p_end}
{synopt :{opt matlog}}使用矩阵对数对方差成分进行参数化{p_end}
{synopt :{opth refine:opts(meqrpoisson##maximize_options:maximize_options)}}在起始值细化过程中控制最大化过程{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}

{synoptset 23}{...}
{marker vartype}{...}
{synopthdr :vartype}
{synoptline}
{synopt :{opt ind:ependent}}每个随机效应一个唯一的方差参数，所有协方差为 0；除非使用 {bf:R.} 表示法，否则为默认值{p_end}
{synopt :{opt exc:hangeable}}随机效应的方差相等，并且一个通用的成对协方差{p_end}
{synopt :{opt id:entity}}随机效应的方差相等，所有协方差为 0；如果使用 {bf:R.} 表示法，则为默认值{p_end}
{synopt :{opt un:structured}}所有方差和协方差要明显估计{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help fvvarlist
{p 4 6 2}{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:mi estimate}、{cmd:rolling} 和 {cmd:statsby} 被允许；请参阅 {help prefix_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp meqrpoisson_postestimation ME:meqrpoisson postestimation}。{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 >}
     {bf:通过 QR 分解的估计 > 泊松回归}

{marker description}{...}
{title:描述}

{pstd}
{cmd:meqrpoisson} 是用于拟合二元或二项响应的混合效应模型的遗留命令。 {cmd:mepoisson} 是现代命令，提供更丰富的功能；请参见 {manhelp mepoisson ME}。这两个命令使用不同但等效的估计方法。 {cmd:mepoisson} 在其原始度量中执行优化，而 {cmd:meqrpoisson} 使用方差成分矩阵的 QR 分解。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制常量（截距）项，可以为固定效应方程和任何或所有随机效应方程指定。

{phang}
{cmd:exposure(}{help varname_zh:{it:varname_e}}{cmd:)} 指定一个变量，反映每个观察的 {help depvar:{it:depvar}} 事件观察的暴露量； ln({it:varname_e}) 被包括在模型的固定效应部分，系数限制为 1。 

{phang}
{cmd:offset(}{help varname_zh:{it:varname_o}}{cmd:)} 指定 {it:varname_o} 被包含在模型的固定效应部分，系数限制为 1。

{phang}
{opt covariance(vartype)} 指定随机效应的协方差矩阵结构，可以为每个随机效应方程指定。 {it:vartype} 为以下之一：
{cmd:independent}、{cmd:exchangeable}、{cmd:identity} 和 {cmd:unstructured}。

{pmore}
{cmd:covariance(independent)} 协方差结构允许在随机效应方程内为每个随机效应提供一个独特的方差，并假定所有协方差为 0。默认值为 {cmd:covariance(independent)}，除非使用 {cmd:R.} 表示法，此时默认值为 {cmd:covariance(identity)}，仅允许使用 {cmd:covariance(identity)} 和 {cmd:covariance(exchangeable)}。

{pmore}
{cmd:covariance(exchangeable)} 结构为所有随机效应指定一个通用的方差和一个通用的成对协方差。

{pmore}
{cmd:covariance(identity)} 是 “多个单位矩阵” 的缩写；也就是说，所有方差相等而所有协方差为 0。

{pmore}
{cmd:covariance(unstructured)} 允许所有方差和协方差明显不同。如果一个方程包含 p 个随机效应项，则非结构化协方差矩阵将有 p(p+1)/2 个唯一参数。

{phang}{opt collinear} 指定 {cmd:meqrpoisson} 不从随机效应方程中删除共线性变量。通常，没有理由保留共线性变量；事实上，这样做通常会导致由于共线性引起的矩阵奇异性而导致估计失败。然而，对于某些模型（例如，具有完整对比集的随机效应模型），变量可能是共线的，但由于对随机效应协方差结构的限制，模型是完全识别的。在这种情况下，使用 {cmd:collinear} 选项允许在保持随机效应方程完整的情况下进行估计。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options:[R] estimation options}。

{phang} 
{opt irr} 报告以发生率比转化的固定效应系数估计，即 exp(b) 而不是 b。标准误和置信区间以相似方式转化。此选项影响结果的显示，而不影响估计方法。可以在估计时或重放时指定 {cmd:irr}。

{phang}
{opt variance}（默认值）以方差和协方差的形式显示随机效应的参数估计。

{phang}
{opt stddeviations} 以标准偏差和相关性形式显示随机效应的参数估计。

{phang}
{opt noretable} 抑制随机效应表的显示。

{phang}
{opt nofetable} 抑制固定效应表的显示。

{phang}
{opt estmetric}  在一个表中显示所有参数估计，使用存储在 {cmd:e(b)} 中的度量。结果以同样的度量存储，无论估计时使用的方差成分的参数化为 {cmd:matsqrt} 还是 {cmd:matlog}。随机效应参数估计作为对数标准偏差和相关性的双曲反正切存储，并用方程名称按模型水平组织。请注意，固定效应估计始终以同样的度量存储和显示。

{phang}
{opt noheader} 在估计或重放时抑制输出头部。

{phang}
{opt nogroup} 抑制输出头部中的组汇总信息（组的数量、平均组大小、最小值和最大值）的显示。

INCLUDE help displayopts_list

{dlgtab:积分}

{phang}
{opt intpoints(# [# ...])} 设置自适应高斯积分的积分点数。积分点越多，对数似然的近似越精确。然而，计算时间随着积分点的数量增加而增加，在许多级别或许多随机系数的模型中，这种增加可能非常显著。

{pmore}
您可以指定一个积分点数适用于模型中所有级别的随机效应，也可以为每个级别指定不同的积分点数。默认值为 {cmd:intpoints(7)}；即，默认情况下每个级别使用七个积分点。

{marker laplace}{...}
{phang}{opt laplace} 指定使用拉普拉斯近似来计算对数似然，相当于模型中每个级别的自适应高斯积分，只有一个积分点； {cmd:laplace} 相当于 {cmd:intpoints(1)}。计算时间根据积分点的数量提的幂次（等于随机效应规格的维度）而增加。使用 {cmd:laplace} 节省的计算时间可能会很大，特别是在您有许多级别或随机系数时。

{pmore}
拉普拉斯近似已经被发现会产生有偏的参数估计，但这种偏差往往在方差成分的估计中更为显著，而在固定效应的估计中则不然。如果您主要关注的是固定效应估计，拉普拉斯近似可能是自适应积分与多个积分点的更快替代方案。

{pmore}
当使用 {cmd:R.}{it:varname} 表示法时，随机效应的维度会增加到 {it:varname} 的唯一值的数量。即使这个数量较小到中等，它也会增加总随机效应维度，以至于使用多个积分点的估计变得过于密集。

{pmore}
因此，当您在随机效应方程中使用 {cmd:R.} 表示法时，默认假设使用 {cmd:laplace} 选项。您可以通过使用 {cmd:intpoints()} 选项来覆盖此行为，但不建议这样做。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}，
{opt iter:ate(#)}，
[{cmdab:no:}]{opt lo:g}，
{opt tr:ace}，
{opt grad:ient}，
{opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}，
{opt ltol:erance(#)}，
{opt nrtol:erance(#)}，
{opt nonrtol:erance} 和
{opt from(init_specs)}；
请参见 {help maximize_zh:[R] maximize}。
为 {cmd:meqrpoisson} 特别要求提到的算法列在下面。

{pmore}
对于 {opt technique()} 选项，默认值为 {cmd:technique(nr)}。
{opt bhhh} 算法无法指定。

{pmore}{opt from(init_specs)} 在与 {cmd:refineopts(iterate(0))}（请参见下面的描述 {help meqrpoisson##refineopts:below}）结合使用时非常有用，它绕过了初始优化阶段。

{marker retolerance()}{...}
{phang}
{opt retolerance(#)} 指定用于自适应高斯积分的随机效应的收敛容忍度。虽然未作为模型参数估计，但随机效应估计器用于调整积分点。估计这些随机效应是一个迭代过程，当随机效应的最大相对变化小于 {cmd:retolerance()} 时声明收敛。默认值为 {cmd:retolerance(1e-8)}。您通常不会需要使用此选项。

{phang}
{opt reiterate(#)} 指定在估计随机效应以调整高斯积分点时使用的最大迭代次数；请参见 {helpb meqrpoisson##retolerance():retolerance()} 选项。默认值为 {cmd:reiterate(50)}。您通常不会需要使用此选项。

{phang}
{opt matsqrt}（默认值），在优化期间，通过使用这些成分在每个模型级别形成的方差-协方差矩阵的矩阵平方根对方差成分进行参数化。

{phang}
{opt matlog}，在优化期间，通过使用这些成分在每个模型级别形成的方差-协方差矩阵的矩阵对数对方差成分进行参数化。

{pmore}
{opt matsqrt} 参数化确保方差-协方差矩阵是正半定的，而 {opt matlog} 则确保矩阵是正定的。对于大多数问题，矩阵平方根在参数空间的边界附近更加稳定。然而，如果收敛存在问题，一个选项可能是尝试替代的 {cmd:matlog} 参数化。当收敛不是问题时，这两种参数化产生等效结果。

{phang}
{opt refineopts}{cmd:(}{it:{help meqrpoisson##maximize_options:maximize_options}}{cmd:)} 控制在起始值细化期间的最大化过程。在 {cmd:meqrpoisson} 中，估计分为两个阶段。在第一个阶段，通过在迭代之间保持固定积分点来细化起始值。在第二阶段，狗每次计算对数似然时调整积分点。{cmd:refineopts()} 中指定的最大化选项控制优化的第一个阶段；即，它们控制起始值的细化。

{pmore}
在外部指定的 {it:maximize_options} 控制第二阶段。

{pmore}
唯一的例外是 {cmd:nolog} 选项，当在 {cmd:refineopts()} 外部指定时，应用于所有情况。

{pmore}
{opt from(init_specs)} 不允许在 {cmd:refineopts()} 内部，必须全局指定。

{marker refineopts}{...}
{pmore}
细化起始值有助于使第二阶段的迭代（即那些进行求解的阶段）更加数值稳定。在这方面，特别值得关注的是 {cmd:refineopts(iterate(}{it:#}{cmd:))}，默认值为两次迭代。如果因为 Hessian 计算不稳定而导致最大化失败，可能的解决方案是增加这里的迭代次数。

{pstd}
以下选项在 {opt meqrpoisson} 中可用，但不在对话框中显示：

{phang}
{opt coeflegend}；请参见
     {helpb estimation options##coeflegend:[R] estimation options}。

{marker remarks}{...}
{title:关于指定随机效应方程的备注}

{pstd}
混合模型由固定效应和随机效应组成。 固定效应以类似于大多数其他 Stata 估计命令的方式指定，即在一组回归参数中，依赖变量后跟一组回归变量。模型的随机效应部分通过首先考虑数据的分组结构来指定。例如，如果随机效应根据变量 {cmd:school} 变化，则调用 {cmd:meqrpoisson} 的形式为

{p 8 12 4}{cmd:. meqrpoisson} {it:fixed_portion} 
{cmd:|| school:} ... {cmd:,}
{it:options}{p_end}

{pstd}
构成每个方程的变量列表描述了随机效应如何引入模型，既可以作为随机截距（常数项），也可以作为数据中回归变量的随机系数。还可以根据上述四种可用结构指定方程内随机效应的方差-协方差结构。例如，

{p 8 12 4}{cmd:. meqrpoisson} {it:f_p}
{cmd:|| school: z1, covariance(unstructured)}
{it:options}{p_end}

{pstd}
将拟合一个具有随机截距和变量 {cmd:z1} 随机斜率的模型，并将这两个随机效应的方差-协方差结构视为非结构化。

{pstd}
如果数据由一系列嵌套组组织，例如，学校内的班级，则随机效应结构由一系列方程指定，各方程用 {cmd:||} 分隔。嵌套的顺序从左到右进行。例如，为学校指定一个方程，然后为班级指定一个方程。考虑以下示例：

{p 8 12 4}{cmd:. meqrpoisson} {it:f_p} 
{cmd:|| school: z1, cov(un) || class: z2 z3, nocons cov(ex)} {it:options}

{pstd}
其中变量 {cmd:school} 和 {cmd:class} 分别标识学校和学校内的班级。该模型在学校级别包含了随机截距和变量 {cmd:z1} 的随机系数，并且在班级级别包含了变量 {cmd:z2} 和 {cmd:z3} 的随机系数。班级级别的随机效应的协方差结构是可交换的，这意味着随机效应共享一个公共方差，并且它们被允许相关。一个不允许相关（同时仍然允许共同方差）的简化选项是 {cmd:cov(identity)}。

{pstd} 组变量可以重复，允许根据四个原始结构构建更一般的基于块对角矩阵的协方差结构。考虑如下情况

{p 8 12 4}{cmd:. meqrpoisson} {it:f_p} 
{cmd:|| school: z1 z2, nocons cov(id) || school: z3 z4, nocons cov(un)}
{it:options}

{pstd}
指定四个随机系数在学校级别。随机效应的方差-协方差矩阵是一个 4 x 4 矩阵，上部 2 x 2 对角块是单位矩阵的倍数，下部 2 x 2 对角块是非结构化的。实际上，{cmd:z1} 和 {cmd:z2} 的系数被约束为独立，并共享一个公共方差。{cmd:z3} 和 {cmd:z4} 的系数各有不同的方差，并且与 {cmd:z1} 和 {cmd:z2} 的系数的方差不同。它们也被允许相关，但与 {cmd:z1} 和 {cmd:z2} 的系数是独立的。

{pstd}
对于没有嵌套分组结构的混合模型，将整个估计数据视为一个组是方便的。为此，{cmd:meqrpoisson} 允许使用特殊组标识符 {cmd:_all}。{cmd:meqrpoisson} 还允许使用 {cmd:R.}{it:varname} 的表示法，这是一种描述 {it:varname} 水平为一系列指示变量的简写。有关更多详细信息，请参见 {mansection ME meRemarksandexamplesex8:example 8} 中的内容。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse epilepsy}{p_end}

{pstd}两级随机截距模型，与 {cmd:xtpoisson} 类似{p_end}
{phang2}{cmd:. meqrpoisson seizures treat lbas lbas_trt lage v4 || subject:}{p_end}

{pstd}两级随机截距和随机系数模型{p_end}
{phang2}{cmd:. meqrpoisson seizures treat lbas lbas_trt lage visit || subject: visit}{p_end}

{pstd}两级随机截距和随机系数模型，相关的随机效应{p_end}
{phang2}{cmd:. meqrpoisson seizures treat lbas lbas_trt lage visit || subject: visit, cov(unstructured) intpoints(9)}{p_end}

{pstd}以发生率比重播结果{p_end}
{phang2}{cmd:. meqrpoisson, irr}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse melanoma}{p_end}

{pstd}三级嵌套模型，观察嵌套在 {cmd:region} 中，再嵌套在 {cmd:nation} 中{p_end}
{phang2}{cmd:. meqrpoisson deaths uv c.uv#c.uv, exposure(expected) || nation: || region:}{p_end}

{pstd}四级嵌套模型，使用 {helpb meqrpoisson##laplace:laplace} 拟合{p_end}
{phang2}{cmd:. meqrpoisson deaths uv c.uv#c.uv, exposure(expected) || nation: || region: || county:, laplace}{p_end}

    {hline}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:meqrpoisson} 在 {cmd:e()} 中存储以下内容：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对比模型的对数似然{p_end}
{synopt:{cmd:e(chi2_c)}}对比测试的卡方{p_end}
{synopt:{cmd:e(df_c)}}对比测试的自由度{p_end}
{synopt:{cmd:e(p_c)}}对比测试的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(reparm_rc)}}返回代码，最终重新参数化{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meqrpoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}依赖变量名称{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(exposurevar)}}暴露变量{p_end}
{synopt:{cmd:e(model)}}{cmd:Poisson}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(redim)}}随机效应维度{p_end}
{synopt:{cmd:e(vartypes)}}方差结构类型{p_end}
{synopt:{cmd:e(revars)}}随机效应协变量{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(laplace)}}{cmd:laplace}，如果采用拉普拉斯近似{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方类型{p_end}
{synopt:{cmd:e(method)}}{cmd:ML}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}计算校验和所用的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {opt predict()} 规格{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(N_g)}}组计数{p_end}
{synopt:{cmd:e(g_min)}}组大小的最小值{p_end}
{synopt:{cmd:e(g_avg)}}组大小的平均值{p_end}
{synopt:{cmd:e(g_max)}}组大小的最大值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meqrpoisson.sthlp>}