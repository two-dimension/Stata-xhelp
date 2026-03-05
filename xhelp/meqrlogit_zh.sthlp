{smcl}
{* *! version 1.3.1  10oct2018}{...}
{viewerdialog meqrlogit "dialog meqrlogit"}{...}
{vieweralsosee "以前的文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meqrlogit 后验" "help meqrlogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] 估计" "help mi estimation"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{viewerjumpto "语法" "meqrlogit_zh##syntax"}{...}
{viewerjumpto "菜单" "meqrlogit_zh##menu"}{...}
{viewerjumpto "描述" "meqrlogit_zh##description"}{...}
{viewerjumpto "选项" "meqrlogit_zh##options"}{...}
{viewerjumpto "备注" "meqrlogit_zh##remarks"}{...}
{viewerjumpto "示例" "meqrlogit_zh##examples"}{...}
{viewerjumpto "存储的结果" "meqrlogit_zh##results"}
{help meqrlogit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[ME] meqrlogit} {hline 2}}多层混合效应逻辑回归（QR分解）{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/memeqrlogit.pdf":查看完整的PDF手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:meqrlogit} 继续可用，但从 Stata 16 开始，它不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参阅 {help melogit_zh} 以获取推荐的替代方案，替代 {cmd:meqrlogit}。

{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:meqrlogit} {depvar} {it:fe_equation} {cmd:||} {it:re_equation}
	[{cmd:||} {it:re_equation} ...]
	[{cmd:,} {it:{help meqrlogit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{cmd:,} {it:{help meqrlogit##fe_options:fe_options}}]

{p 4 4 2}
    和 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help meqrlogit##re_options:re_options}}]

{p 8 18 2}
	用于因子变量值之间的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}
		[{cmd:,} {it:{help meqrlogit##re_options:re_options}}]

{p 4 4 2}
    {it:levelvar} 是一个识别随机效应群体结构的变量，或者是 {cmd:_all} 代表由所有观察值组成的一个群体。{p_end}

{synoptset 30 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中抑制常数项{p_end}
{synopt :{opth off:set(varname)}}包含 {it:varname}，其系数约束为1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :re_options}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meqrlogit##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中抑制常数项{p_end}
{synopt :{opt col:linear}}保持共线变量{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{opt bin:omial}{cmd:(}{it:{help varname_zh:varname}}|{it:#}{cmd:)}}如果数据是二项式形式，则设定二项式试验{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}将固定效应系数报告为比值比，即，exp(b) 而不是 b。标准误差和置信区间也会类似转换。此选项影响结果的显示方式，而不是估计方式。{cmd:or} 可以在估计时或重播放时指定。

{synopt :{opt var:iance}}默认显示随机效应参数估计为方差和协方差。

{synopt :{opt stddev:iations}}将随机效应参数估计显示为标准差和相关性。

{synopt :{opt noret:able}}抑制随机效应表。

{synopt :{opt nofet:able}}抑制固定效应表。

{synopt :{opt estm:etric}}以存储在 {cmd:e(b)} 中的格式显示所有参数估计。无论在估计时使用哪种方差成分的参数化，结果都以相同的格式存储。随机效应参数估计以对数标准差和相关性超弦的形式存储，使用方程名称按模型级别组织。请注意，固定效应估计始终按相同的格式存储和显示。

{synopt :{opt nohead:er}}抑制输出标题，无论是在估计时还是重播放时。

{synopt :{opt nogr:oup}}抑制输出头中汇总组的信息（组的数量、平均组大小、最小值和最大值）。

{synopt :{it:{help meqrlogit##display_options:display_options}}}控制
包含帮助简短描述-展示选项

{syntab:积分}
{synopt :{opt intp:oints(# [# ...])}}设置积分（积分）点的数量；默认值为 {cmd:intpoints(7)}{p_end}
{synopt :{opt lap:lace}}使用拉普拉斯近似；等同于
{cmd:intpoints(1)}{p_end}

{syntab :最大化}
{synopt :{it:{help meqrlogit##maximize_options:maximize_options}}}控制
最大化过程；很少使用{p_end}
{synopt :{opt retol:erance(#)}}随机效应估计的容忍度；默认值为 {cmd:retolerance(1e-8)}；很少使用{p_end}
{synopt :{opt reiter:ate(#)}}随机效应估计的最大迭代次数；默认值为 {cmd:reiterate(50)}；很少使用{p_end}
{synopt :{opt matsqrt}}使用矩阵平方根对方差分量进行参数化；默认值{p_end}
{synopt :{opt matlog}}使用矩阵对数对方差分量进行参数化{p_end}
{synopt :{opth refine:opts(meqrlogit##maximize_options:maximize_options)}}控制
在起始值精细化期间的最大化过程{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}

{synoptset 23}{...}
{marker vartype}{...}
{synopthdr :vartype}
{synoptline}
{synopt :{opt ind:ependent}}每个随机效应一个方差参数，所有协方差为0；除非使用 {bf:R.} 符号，否则为默认值{p_end}
{synopt :{opt exc:hangeable}}随机效应方差相等，并且有一个共同的成对协方差{p_end}
{synopt :{opt id:entity}}随机效应方差相等，所有协方差为0；如果使用 {bf:R.} 符号，则为默认值{p_end}
{synopt :{opt un:structured}}所有方差和协方差可被独立估计{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help fvvarlist
{p 4 6 2}{it:indepvars} 和 {it:varlist} 可以包含时间序列操作；请参阅 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:mi estimate}、
{cmd:rolling} 和 {cmd:statsby} 是允许的；请参阅 {help prefix_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用的功能，请参见 {manhelp meqrlogit_postestimation ME:meqrlogit postestimation}。{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层混合效应模型 >}
     {bf:通过 QR 分解估计 > 逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:meqrlogit} 是用于拟合二元或二项响应的混合效应模型的遗留命令。{cmd:melogit} 是现代命令，提供更多功能；请参阅 {manhelp melogit ME}。这两个命令使用不同但等效的估计方法。{cmd:melogit} 使用其原始度量对方差成分进行优化，而 {cmd:meqrlogit} 使用方差成分矩阵的 QR 分解。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制常数（截距）项，并且可为固定效应方程及任何一个或所有随机效应方程指定。

{phang}
{opth offset(varname)} 指定将 {it:varname} 包含在模型的固定效应部分，系数约束为1。

{phang}
{opt covariance(vartype)} 指定随机效应的协方差矩阵的结构，并且可以为每个随机效应方程指定。{it:vartype} 是以下之一：
{cmd:independent}、{cmd:exchangeable}、{cmd:identity} 或 {cmd:unstructured}。

{pmore}
{cmd:covariance(independent)} 协方差结构允许在随机效应方程中为每个随机效应指定独特的方差，并假设所有协方差为0。
默认值为 {cmd:covariance(independent)}，除非使用 {cmd:R.} 符号，此时默认值为 {cmd:covariance(identity)}，仅允许 {cmd:covariance(identity)} 和 {cmd:covariance(exchangeable)}。

{pmore}
{cmd:covariance(exchangeable)} 结构为所有随机效应指定一个共同的方差和一个共同成对协方差。

{pmore}
{cmd:covariance(identity)} 是 "单位矩阵的倍数"的简称；即，所有方差相等且所有协方差为0。

{pmore}
{cmd:covariance(unstructured)} 允许所有方差和协方差独立估计。如果一个方程包含 p 个随机效应项，则此非结构化协方差矩阵将具有 p(p+1)/2 个唯一参数。

{phang}{opt collinear} 指定 {cmd:meqrlogit} 不从随机效应方程中省略共线变量。通常，没有理由保留共线变量；事实上，这样做通常会导致估计失败，因为共线性导致矩阵奇异性。然而，在某些模型（例如，具有完整对比集的随机效应模型）中，变量可以是共线的，但由于随机效应协方差结构的限制，模型完全确定。在这种情况下，使用 {cmd:collinear} 选项可以在随机效应方程保持完整的情况下进行估计。

{phang}{cmd:binomial(}{it:{help varname_zh}}|{it:#}{cmd:)} 指定数据是二项式形式；即，{depvar} 记录二项试验中的成功次数。
这个试验次数要么以 {it:varname} 形式给出，使此数字在观察之间可以变化，要么作为常数 {it:#} 给出。如果未指定 {opt binomial()}（默认为），则将 {it:depvar} 视为伯努利，其中任何非零、非缺失值表示正响应。

{dlgtab:报告}

{phang}
{opt level(#)}；请参阅 {helpb estimation options:[R] estimation options}。

{phang} 
{opt or} 报告转换为比值比的固定效应系数估计，即，exp(b) 而不是 b。标准误差和置信区间类似地转换。此选项影响结果的显示方式，而不是估计方式。{cmd:or} 可以在估计时或重播放时指定。

{phang}
{opt variance}，默认为，显示随机效应参数估计为方差和协方差。

{phang}
{opt stddeviations} 显示随机效应参数估计为标准差和相关性。

{phang}
{opt noretable} 抑制随机效应表。

{phang}
{opt nofetable} 抑制固定效应表。

{phang}
{opt estmetric}  将所有参数估计显示在一个表中，使用存储在 {cmd:e(b)} 中的度量。无论在估计时使用哪种方差成分的参数化，结果都以相同的度量标准存储。随机效应参数估计存储为对数标准差和相关性的超弦，方程名称按模型级别组织。请注意，固定效应估计始终以相同的度量标准存储和显示。

{phang}
{opt noheader} 抑制输出标题，无论是在估计时还是重播放时。

{phang}
{opt nogroup} 抑制输出头中汇总组信息（组数量、平均组大小、最小值和最大值）的显示。

INCLUDE help displayopts_list

{dlgtab:积分}

{phang}
{opt intpoints(# [# ...])} 设置自适应高斯积分的积分点数。积分点越多，对数似然的近似就越精确。然而，计算时间随积分点的数量增加，在具有许多层级或许多随机系数的模型中，这种增加可能非常显著。

{pmore}
您可以指定一个积分点数适用于模型中所有随机效应的层级，也可以为每个层级指定不同的点数。默认值为 {cmd:intpoints(7)}；即，每个层级默认使用七个积分点。

{marker laplace}{...}
{phang}{opt laplace} 指定使用拉普拉斯近似计算对数似然，相当于每个层级使用一个积分点的自适应高斯积分；{cmd:laplace} 相当于 {cmd:intpoints(1)}。计算时间会随积分点数的增加而增长，其增长率与随机效应规格的维度相等。当您具有许多层级或随机系数时，使用 {cmd:laplace} 能节省显著的计算时间。

{pmore}
拉普拉斯近似被认为会产生偏差的参数估计，但这种偏差在方差成分的估计中更为明显，而不是固定效应的估计。如果您的主要兴趣在于固定效应估计，则拉普拉斯近似可能是对带多个积分点的自适应积分的可行更快的替代方案。

{pmore}
当使用 {cmd:R.}{it:varname} 符号时，随机效应的维度随 {it:varname} 的独特值数量增加。即使这个数量不大，也会增加随机效应的总维度，使得使用超过一个积分点的估计变得过于密集。

{pmore}
因此，当您在随机效应方程中使用 {cmd:R.} 符号时，假定使用 {cmd:laplace} 选项。您可以通过使用 {cmd:intpoints()} 选项覆盖此行为，但不建议这样做。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmdab:no:}]{opt lo:g},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance} 和
{opt from(init_specs)}；
请参见 {help maximize_zh:[R] maximize}。
需要特别说明的与 {cmd:meqrlogit} 相关的选项如下。

{pmore}
对于 {opt technique()} 选项，默认值为 {cmd:technique(nr)}。
{opt bhhh} 算法不可被指定。

{pmore}{opt from(init_specs)} 在与 {cmd:refineopts(iterate(0))} 结合使用时尤其有用
（请参见描述 {help meqrlogit##refineopts:下面}），该选项绕过了初始优化阶段。

{marker retolerance()}{...}
{phang}
{opt retolerance(#)} 指定自适应高斯积分中用于估计随机效应的收敛容忍度。虽然不是作为模型参数进行估计，但随机效应估计用于调整积分点。估计这些随机效应的过程是迭代的，当随机效应的最大相对变化小于 {cmd:retolerance()} 时宣布收敛。默认值为 {cmd:retolerance(1e-8)}。您通常不需要使用此选项。

{phang}
{opt reiterate(#)} 指定用于估计随机效应以调整高斯积分点的最大迭代次数；请参见 {helpb meqrlogit##retolerance():retolerance()} 选项。默认值为 {cmd:reiterate(50)}。您通常不需要使用此选项。

{phang}
{opt matsqrt}（默认值）在优化过程中，通过使用方差协方差矩阵的矩阵平方根对方差分量进行参数化。

{phang}
{opt matlog} 在优化期间，通过使用方差协方差矩阵的矩阵对数对方差分量进行参数化。

{pmore}
{opt matsqrt} 参数化方法确保方差协方差矩阵是半正定的，而 {opt matlog} 确保矩阵是正定的。对于大多数问题而言，矩阵平方根在参数空间的边界附近更稳定。然而，如果收敛性存在问题，一个可能的选择是尝试替代的 {cmd:matlog} 参数化。当收敛不是问题时，两种参数化均可得出等效结果。

{phang}
{opt refineopts}{cmd:(}{it:{help meqrlogit##maximize_options:maximize_options}}{cmd:)} 控制
在起始值精细化过程中的最大化过程。在 {cmd:meqrlogit} 中的估计分为两个阶段。在第一阶段，固定积分点进行起始值的精细化。在第二阶段，每次评估对数似然时，积分点会进行调整。在 {cmd:refineopts()} 内指定的最大化选项控制优化的第一阶段；也就是说，它们控制起始值的精细化。

{pmore}
{it:maximize_options} 在 {cmd:refineopts()} 外部指定，控制第二阶段。

{pmore}
唯一一个例外是 {cmd:nolog} 选项，当在 {cmd:refineopts()} 外部指定时，应用全局。

{pmore}
{opt from(init_specs)} 不允许在 {cmd:refineopts()} 内部，而必须全局指定。

{marker refineopts}{...}
{pmore}
精细化起始值有助于使更接近解的第二阶段迭代更具数值稳定性。在这方面，特别感兴趣的是
{cmd:refineopts(iterate(}{it:#}{cmd:))}，默认值为两个迭代。如果因 Hessian 计算中的不稳定性导致最大化失败，解决此问题的一个可能方法是增加此处的迭代次数。

{pstd}
以下选项在 {opt meqrlogit} 中可用，但不会显示在对话框中：

{phang}
{opt coeflegend}；请参阅
     {helpb estimation options##coeflegend:[R] estimation options}。
  
{marker remarks}{...}
{title:关于指定随机效应方程的备注}

{pstd}
混合模型由固定效应和随机效应组成。固定效应以类似于大多数其他 Stata 估计命令的方法指定，即，作为因变量后跟一组回归变量。模型的随机效应部分通过首先考虑数据的分组结构来指定。例如，如果随机效应随变量 {cmd:school} 变化，则对 {cmd:meqrlogit} 的调用形式为

{p 8 12 4}{cmd:. meqrlogit} {it:fixed_portion} 
{cmd:|| school:} ... {cmd:,}
{it:options}{p_end}

{pstd}
构成每个方程的变量列表描述随机效应如何进入模型，可以是随机截距（常数项）或数据中的回归变量的随机系数。也可以根据上面描述的四个可用结构指定方程内的随机效应的方差-协方差结构。例如，

{p 8 12 4}{cmd:. meqrlogit} {it:f_p}
{cmd:|| school: z1, covariance(unstructured)}
{it:options}{p_end}

{pstd}
将拟合一个具有随机截距和 {cmd:z1} 的随机斜率的模型，并将这两个随机效应的方差-协方差结构视为未结构化。

{pstd}
如果数据按照一系列嵌套群体组织，例如，学校内的班级，则随机效应结构由一系列方程来指定，每个方程用 {cmd:||} 分隔。嵌套顺序从左到右进行。例如，学校的方程应首先指定，然后是班级的方程。作为示例，考虑

{p 8 12 4}{cmd:. meqrlogit} {it:f_p} 
{cmd:|| school: z1, cov(un) || class: z2 z3, nocons cov(ex)} {it:options}

{pstd}
其中变量 {cmd:school} 和 {cmd:class} 分别标识学校和班级。此模型包含了学校级别的随机截距和 {cmd:z1} 的随机系数，以及班级级别的 {cmd:z2} 和 {cmd:z3} 的随机系数。班级级别随机效应的协方差结构是可互换的，这意味着随机效应共享一个共同的方差，并允许相关。允许没有相关性的简化（但仍允许一个共同的方差）是 {cmd:cov(identity)}。

{pstd} 群体变量可以重复，从而允许根据四个原始结构构建更广泛的协方差结构作为块对角矩阵。考虑

{p 8 12 4}{cmd:. meqrlogit} {it:f_p} 
{cmd:|| school: z1 z2, nocons cov(id) || school: z3 z4, nocons cov(un)}
{it:options}

{pstd}
这指定了四个随机系数在学校级别。随机效应的方差-协方差矩阵是4 x 4矩阵，其中上2 x 2对角块是单位矩阵的倍数，且下2 x 2对角块是未结构化的。实际上，{cmd:z1} 和 {cmd:z2} 的系数被约束为独立且共享一个共同的方差。{cmd:z3} 和 {cmd:z4} 的系数各有一个独特的方差，且与 {cmd:z1} 和 {cmd:z2} 的系数的方差独特。它们也允许相关，但独立于 {cmd:z1} 和 {cmd:z2} 的系数。

{pstd}
对于没有嵌套分组结构的混合模型，将整个估计数据视为一个群体是方便的。为此，{cmd:meqrlogit} 允许特殊的群体指定 {cmd:_all}。{cmd:meqrlogit} 还允许 {cmd:R.}{it:varname} 符号，这是描述 {it:varname} 的层级作为一系列指示变量的简写。有关更多详细信息，请参见 {mansection ME meRemarksandexamplesex8:示例 8} 中的内容。
  
{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bangladesh}{p_end}

{pstd}两级随机截距模型，类似于 {cmd:xtlogit}{p_end}
{phang2}{cmd:. meqrlogit c_use urban age child* || district:}{p_end}

{pstd}两级随机截距和随机系数模型{p_end}
{phang2}{cmd:. meqrlogit c_use urban age child* || district: urban}{p_end}

{pstd}两级随机截距和随机系数模型，相关随机效应{p_end}
{phang2}{cmd:. meqrlogit c_use urban age child* || district: urban,}
       {cmd:cov(unstruct)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon}{p_end}

{pstd}三级嵌套模型，{cmd:subject} 嵌套在 {cmd:family} 内{p_end}
{phang2}{cmd:. meqrlogit dtlm difficulty i.group || family: || subject:}{p_end}

{pstd}三级嵌套模型，改变积分点的数量{p_end}
{phang2}{cmd:. meqrlogit dtlm difficulty i.group || family: || subject:, intpoints(4 5)}{p_end}

{pstd}重播放固定效应作为比值比{p_end}
{phang2}{cmd:. meqrlogit, or}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fifeschool}{p_end}
{phang2}{cmd:. gen byte attain_gt_6 = attain > 6}{p_end}

{pstd}双向交叉随机效应{p_end}
{phang2}{cmd:. meqrlogit attain_gt_6 sex || _all:R.sid || pid:}{p_end}

    {hline}

{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:meqrlogit} 在 {cmd:e()} 中存储以下内容：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数{p_end}
{synopt:{cmd:e(k_rs)}}方差数{p_end}
{synopt:{cmd:e(k_rc)}}协方差数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较检验{p_end}
{synopt:{cmd:e(df_c)}}比较检验的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(reparm_rc)}}返回代码，最终重新参数化{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，否则为 {cmd:0}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meqrlogit}{p_end}
{synopt:{cmd:e(cmdline)}}命令按输入的方式{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:logistic}{p_end}
{synopt:{cmd:e(title)}}在估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(binomial)}}二项试验数量{p_end}
{synopt:{cmd:e(redim)}}随机效应维度{p_end}
{synopt:{cmd:e(vartypes)}}方差结构类型{p_end}
{synopt:{cmd:e(revars)}}随机效应协变量{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(laplace)}}{cmd:laplace}，如果使用拉普拉斯近似{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方类型{p_end}
{synopt:{cmd:e(method)}}{cmd:ML}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}默认 {opt predict()} 规定的 {cmd:margins}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 设置为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 设置为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(N_g)}}组计数{p_end}
{synopt:{cmd:e(g_min)}}组大小最小值{p_end}
{synopt:{cmd:e(g_avg)}}组大小平均值{p_end}
{synopt:{cmd:e(g_max)}}组大小最大值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meqrlogit.sthlp>}