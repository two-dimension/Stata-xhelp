{smcl}
{* *! version 1.2.4  16jun2014}{...}
{viewerdialog xtmepoisson "dialog xtmepoisson"}{...}
{vieweralsosee "[XT] xtmepoisson postestimation" "help xtmepoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] estimation" "help mi estimation"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtmelogit" "help xtmelogit_zh"}{...}
{vieweralsosee "[XT] xtmixed" "help xtmixed_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{vieweralsosee "[XT] xtrc" "help xtrc_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{viewerjumpto "Syntax" "xtmepoisson_zh##syntax"}{...}
{viewerjumpto "Description" "xtmepoisson_zh##description"}{...}
{viewerjumpto "Options" "xtmepoisson_zh##options"}{...}
{viewerjumpto "Remarks on specifying random-effects equations" "xtmepoisson_zh##remarks"}{...}
{viewerjumpto "Examples" "xtmepoisson_zh##examples"}{...}
{viewerjumpto "Saved results" "xtmepoisson_zh##saved_results"}
{help xtmepoisson:English Version}
{hline}{...}
{pstd}
{cmd:xtmepoisson} 已被重命名为 {help meqrpoisson_zh}。{cmd:xtmepoisson} 仍然可以使用，但从 Stata 13 开始，它不再是 Stata 的官方组成部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{hline}

{title:标题}

{p2colset 5 25 27 2}{...}
{synopt :{hi:[XT] xtmepoisson} {hline 2}}多级混合效应泊松回归{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:xtmepoisson} {depvar} [{it:fe_equation}] {cmd:||} {it:re_equation}
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help xtmepoisson##options_table:options}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{cmd:,} {it:{help xtmepoisson##fe_options:fe_options}}]

{p 4 4 2}
    而 {it:re_equation} 的语法是以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help xtmepoisson##re_options:re_options}}]

{p 8 18 2}
	用于一个因子变量的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}
		[{cmd:,} {it:{help xtmepoisson##re_options:re_options}}]

{p 4 4 2}
    {it:levelvar} 是一个变量，识别该层次上随机效应的组结构，或 {cmd:_all} 表示一个组，包含所有观察值。{p_end}

{synoptset 30 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt noc:onstant}}从固定效应方程中抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，其系数限制为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，其系数限制为1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(xtmepoisson##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt noc:onstant}}从随机效应方程中抑制常数项{p_end}
{synopt :{opt col:linear}}保留共线性变量{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:积分}
{synopt :{opt lap:lace}}使用拉普拉斯近似; 等同于 {cmd:intpoints(1)}{p_end}
{synopt :{opt intp:oints}{cmd:(}{it:#} [{it:#} ...]{cmd:)}}设置积分（正交）点的数量; 默认为 7{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平; 默认值为 {cmd:level(95)}{p_end}
{synopt :{opt ir:r}}将固定效应系数报告为发生率比{p_end}
{synopt :{opt var:iance}}将随机效应参数估计显示为方差和协方差{p_end}
{synopt :{opt noret:able}}抑制随机效应表{p_end}
{synopt :{opt nofet:able}}抑制固定效应表{p_end}
{synopt :{opt estm:etric}}以估计度量显示参数估计{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制汇总组的表格{p_end}
{synopt :{opt nolr:test}}不执行与泊松回归的似然比检验{p_end}
{synopt :{it:{help xtmepoisson##display_options:display_options}}}控制列格式、行间距以及省略变量和基数及空单元的显示{p_end}

{syntab :最大化}
{synopt :{it:{help xtmepoisson##maximize_options:maximize_options}}}控制在基于梯度的优化期间的最大化过程; 通常不使用{p_end}
{synopt :{opt retol:erance(#)}}随机效应估计的容差; 默认值为 {cmd:retolerance(1e-8)}; 通常不使用{p_end}
{synopt :{opt reiter:ate(#)}}随机效应估计的最大迭代次数; 默认值为 {cmd:reiterate(50)}; 通常不使用{p_end}
{synopt :{opt matsqrt}}使用矩阵平方根参数化方差成分; 默认值{p_end}
{synopt :{opt matlog}}使用矩阵对数参数化方差成分{p_end}
{synopt :{opt refine:opts}{cmd:(}{it:{help xtmepoisson##maximize_options:maximize_options}}{cmd:)}}控制在起始值精细化期间的最大化过程{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}

{synoptset 23}{...}
{marker vartype}{...}
{synopthdr :方差类型}
{synoptline}
{synopt :{opt ind:ependent}}每个随机效应一个方差参数，所有协方差为零；默认情况，除非指定因子变量{p_end}
{synopt :{opt ex:changeable}}随机效应的方差相等，并具有一个共同的成对协方差{p_end}
{synopt :{opt id:entity}}随机效应的方差相等，所有协方差为零；如果指定因子变量，则为默认{p_end}
{synopt :{opt un:structured}}所有方差-协方差被单独估计{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help fvvarlist
{p 4 6 2}{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:mi estimate},
{cmd:rolling}, 和 {cmd:statsby} 是允许的；参见 {help prefix_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}有关估计之后可用特征，请参见 {manhelp xtmepoisson_postestimation XT:xtmepoisson postestimation}。{p_end}


{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 多级混合效应模型 >}
     {bf:混合效应泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtmepoisson} 为计数响应拟合混合效应模型。混合模型包含固定效应和随机效应。固定效应类似于标准回归系数，并被直接估计。随机效应则没有直接估计（尽管它们可能在估计后获得），而是根据它们的估计方差和协方差进行总结。随机效应可以是随机截距或随机系数，数据的分组结构可以由多个层级的嵌套组组成。随机效应的分布假定为高斯分布。给定随机效应的响应的条件分布假定为泊松分布。由于该模型的对数似然没有封闭形式，因此通过自适应高斯正交进行近似。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt noconstant} 抑制常数（截距）项，可以为固定效应方程以及任意或所有随机效应方程指定。

{phang}
{cmd:exposure(}{help varname_zh:{it:varname_e}}{cmd:)} 指定反映每个观察值观察到的 {help depvar:{it:depvar}} 事件的暴露量的变量； ln({it:varname_e}) 包含在模型的固定效应部分，其系数限制为1。

{phang}{cmd:offset(}{help varname_zh:{it:varname_o}}{cmd:)} 指定 {it:varname_o} 包含在模型的固定效应部分，其系数限制为1。

{phang}{opt covariance(vartype)}，其中 {it:vartype} 为

{phang3}
{cmd:independent}{c |}{cmd:exchangeable}{c |}{cmd:identity}{c |}{cmd:unstructured}

{pmore}
指定随机效应的方差矩阵的结构，并可为每个随机效应方程指定。{cmd:independent} 方差结构允许每个随机效应在随机效应方程内具有不同的方差，并假设所有的协方差为零。{cmd:exchangeable} 协方差具有共同的方差和共同的成对协方差。{cmd:identity} 是 “单位矩阵的倍数”；即所有方差相等，所有协方差为零。{cmd:unstructured} 允许所有方差和协方差被单独估计。如果一个方程由 {it:p} 个随机效应项组成，则 {cmd:unstructured} 方差矩阵将具有 {it:p}({it:p}+1)/2 个唯一参数。

{pmore}
{cmd:covariance(independent)} 是默认选项，除非随机效应方程由因子变量规格 {cmd:R.}{varname} 组成，在这种情况下，{cmd:covariance(identity)} 为默认选项，并且只允许 {cmd:covariance(identity)} 和 {cmd:covariance(exchangeable)}。

{phang}{opt collinear} 指定 {cmd:xtmepoisson} 不从随机效应方程中省略共线性变量。通常没有理由保留共线性变量，实际上这样做通常会导致由于共线性造成的矩阵奇异性而导致估计失败。然而，在某些模型（例如，具有完整对比集的随机效应模型）中，变量可能是共线的，但由于随机效应方差结构的限制，模型是完全识别的。在这种情况下，使用 {cmd:collinear} 选项可以使估计与随机效应方程保持不变。

{dlgtab:积分}

{marker laplace}{...}
{phang}{opt laplace} 指定使用拉普拉斯近似计算对数似然，等同于对于每个模型层次使用一个自适应高斯正交的积分点。{cmd:laplace} 等同于 {cmd:intpoints(1)}。计算时间随着正交点数量的增加而增加，增加量的幂等于随机效应规格的维度。当有许多层次和/或随机系数时，使用 {cmd:laplace} 节省的计算时间可能是相当可观的。

{pmore}
拉普拉斯近似已知会产生偏倚的参数估计，但这种偏倚往往在方差成分的估计中更为显著，而不是固定效应的估计中。如果您的兴趣主要在于固定效应的估计，拉普拉斯近似可能是自适应正交和多个积分点的可行且更快的替代方案。

{pmore}
指定因子变量 {cmd:R.}{varname} 会增加随机效应的维度，具体取决于 {it:varname} 的不同值的数量，即因子层级数量。即使这个数量是小到中等的，它也会增加随机效应的总维度，使得用多个正交积分点的估计变得极为繁重。

{pmore}
因此，当您在随机效应方程中使用因子变量时，默认假定使用 {cmd:laplace} 选项。您可以通过使用 {cmd:intpoints()} 选项来覆盖此行为，但不建议这样做。

{phang}
{opt intpoints(# [# ...])} 设置自适应高斯正交的积分点数量。点越多，对数似然的近似越精确。然而，计算时间随着正交点数量的增加而增加，对于许多层次和/或许多随机系数的模型，这种增加可能是相当可观的。

{pmore}
您可以为模型中的所有随机效应层指定一个积分点数，或者可以为每个层指定不同的点数。默认情况下，{cmd:intpoints(7)}；即默认对每个层使用七个正交点。

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 {helpb estimation options##level():[R] estimation options}。

{phang} 
{opt irr} 报告固定效应系数转换为发生率比，即 exp(b) 而不是 b。标准误差和置信区间同样被转换。该选项影响结果的显示方式，而不影响其估计方式。{cmd:irr} 可以在估计时或在重放先前估计的结果时指定。

{phang}
{opt variance} 将随机效应参数估计显示为方差和协方差。默认情况下，将其显示为标准差和相关性。

{phang}
{opt noretable} 抑制输出中的随机效应表。

{phang}
{opt nofetable} 抑制输出中的固定效应表。

{phang}
{opt estmetric} 以估计度量显示所有参数估计。固定效应的估计与通常显示的结果相同，但随机效应参数估计显示为log标准差和相关性的双曲正切，其方程名称按层级组织。

{phang}
{opt noheader} 无论是在估计时还是在重放时，抑制输出头。

{phang}
{opt nogroup} 在输出头中抑制显示组摘要信息（组数、平均组大小、最小值和最大值）。

{phang}
{opt nolrtest} 防止 {cmd:xtmepoisson} 执行一个似然比检验，将混合效应泊松模型与标准（边际）泊松回归进行比较。该选项也可以在重放时指定，以抑制该检验在输出中显示。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}；
    参见 {helpb estimation options##display_options:[R] estimation options}。

{dlgtab:最大化}

{marker maximize_options}{...}
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
{opt nonrtol:erance}，和
{opt from(init_specs)}；
参见 {help maximize_zh:[R] maximize}。
对于 {cmd:xtmepoisson} 特别需要提及的内容如下。

{pmore}
对于 {opt technique()} 选项，默认值为 {cmd:technique(nr)}。
无法指定 {opt bhhh} 算法。

{pmore}{opt from(init_specs)} 在与 {cmd:refineopts(iterate(0))} 结合使用时特别有用，该选项绕过初始优化阶段；参见 
{help xtmepoisson##refineopts:below}。

{marker retolerance()}{...}
{phang}
{opt retolerance(#)} 指定适应性高斯正交中估计随机效应的收敛容差。高斯正交点根据给定当前模型参数的估计随机效应进行自适应调整。在估计这些随机效应时，这是一个迭代过程，当随机效应中的最大相对变化小于 {cmd:retolerance()} 时宣布收敛。默认值为 {cmd:retolerance()} 为 1e-8。您通常不需要使用该选项。

{phang}
{opt reiterate(#)} 指定在估计随机效应时使用的最大迭代次数，用于调整高斯正交点；参见 {helpb xtmepoisson##retolerance():retolerance()} 选项。默认值为 {cmd:reiterate(50)}。您通常不需要使用该选项。

{phang}
{opt matsqrt}（默认）在优化期间使用这些成分在每个模型级别形成的方差-协方差矩阵的矩阵平方根来参数化方差成分。

{phang}
{opt matlog} 在优化期间使用这些成分在每个模型级别形成的方差-协方差矩阵的矩阵对数来参数化方差成分。

{pmore}
{opt matsqrt} 参数化确保方差-协方差矩阵是正半定的，而 {opt matlog} 确保矩阵是正定的。对于大多数问题，矩阵平方根在参数空间边界附近更为稳定。然而，如果收敛存在问题，一个选项可能是尝试替代的 {cmd:matlog} 参数化。当收敛不是问题时，这两个参数化通常产生等效的结果。

{phang}
{opt refineopts}{cmd:(}{it:{help xtmepoisson##maximize_options:maximize_options}}{cmd:)} 控制在起始值精细化期间的最大化过程。{cmd:xtmepoisson} 的估计分为两个阶段。在第一阶段，通过固定正交点在迭代间进行起始值的精细化。在第二阶段，每次评估对数似然时，正交点会被自适应调整。在 {cmd:refineopts()} 中指定的最大化选项控制优化的第一阶段；也就是说，它们控制起始值的精细化。

{pmore}
在 {cmd:refineopts()} 外部指定的 {it:maximize_options} 控制第二阶段。

{pmore}
上述规则的一个例外是 {cmd:nolog} 选项，当它在 {cmd:refineopts()} 外部指定时，会全局适用。

{pmore}
{opt from(init_specs)} 不允许在 {cmd:refineopts()} 内，并且必须全局指定。

{marker refineopts}{...}
{pmore}
精细化起始值有助于使第二阶段的迭代（即朝着解决方案的）在数值上更稳定。在这方面，特别关注的是 {cmd:refineopts(iterate(}{it:#}{cmd:))}，其中默认为两个迭代。如果由于 Hessian 计算的不稳定性导致最大化失败，一个可能的解决方案是增加此处的迭代次数。

{pstd}
以下选项适用于 {opt xtmepoisson}，但未在对话框中显示：

{phang}
{opt coeflegend}；参见
     {helpb estimation options##coeflegend:[R] estimation options}。


{marker remarks}{...}
{title:关于指定随机效应方程的说明}

{pstd}
混合模型由固定效应和随机效应组成。固定效应被指定为回归参数，类似于大多数其他 Stata 估计命令的方式，即作为一个因变量后跟一组回归变量。模型的随机效应部分的指定首先考虑数据的分组结构。例如，如果随机效应要根据变量 {cmd:school} 变化，那么对 {cmd:xtmepoisson} 的调用将是以下形式

{p 8 12 4}{cmd:. xtmepoisson} {it:fixed_portion} 
{cmd:|| school:} ... {cmd:,}
{it:options}{p_end}

{pstd}
构成每个方程的变量列表描述随机效应如何进入模型，既可以作为随机截距（常数项），也可以作为数据中回归变量的随机系数。也可以根据上述四种可用结构指定方程内随机效应的方差-协方差结构。例如，

{p 8 12 4}{cmd:. xtmepoisson} {it:f_p}
{cmd:|| school: z1, covariance(unstructured)}
{it:options}{p_end}

{pstd}
将拟合一个模型，该模型在变量 {cmd:z1} 上有随机截距和随机斜率，并将这两个随机效应的方差-协方差结构视为无结构。

{pstd}
如果数据按一系列嵌套组组织，例如，在学校内的班级，则通过一系列方程指定随机效应结构，每个方程用 {cmd:||} 分隔。嵌套的顺序从左到右进行。例如，对于我们的示例，学校的方程会首先指定，接着是班级的方程。作为一个示例，考虑

{p 8 12 4}{cmd:. xtmepoisson} {it:f_p} 
{cmd:|| school: z1, cov(un) || class: z2 z3, nocons cov(ex)} {it:options}

{pstd}
其中变量 {cmd:school} 和 {cmd:class} 分别识别学校和班级。该模型在学校层面上具有一个随机截距和在 {cmd:z1} 上的随机斜率，在班级层面上则在 {cmd:z2} 和 {cmd:z3} 上具有随机系数。班级层随即效应的协方差结构是可交换的，这意味着随机效应共享一个共同的方差，并且允许它们相关。允许没有相关性的简化（同时仍然允许一个共同的方差）将是 {cmd:cov(identity)}。

{pstd} 组变量可以重复，从而允许作为基于四种原始结构的块对角矩阵构建更一般的协方差结构。考虑

{p 8 12 4}{cmd:. xtmepoisson} {it:f_p} 
{cmd:|| school: z1 z2, nocons cov(id) || school: z3 z4, nocons cov(un)}
{it:options}

{pstd}
这指定了四个在学校层面的随机系数。随机效应的方差-协方差矩阵为 4 x 4 矩阵，上部的 2 x 2 对角块是单位矩阵的倍数，而下部的 2 x 2 对角块是无结构的。实际上，{cmd:z1} 和 {cmd:z2} 上的系数被限制为独立并共享一个共同的方差；而 {cmd:z3} 和 {cmd:z4} 上的系数则各自具有不同的方差，并且与 {cmd:z1} 和 {cmd:z2} 的系数的方差不同。它们也被允许相关，但与 {cmd:z1} 和 {cmd:z2} 的系数是独立的。

{pstd}
对于没有嵌套分组结构的混合模型，将整个估计数据视为一个组是方便的。为此，{cmd:xtmepoisson} 允许使用特殊的组指定 {cmd:_all}。{cmd:xtmepoisson} 还允许使用因子变量符号 {cmd:R.}{it:varname}，该符号是描述 {it:varname} 的层级为一系列指示变量的简写。有关更多详细信息，请参见 {bf:[XT] xtmelogit} 中的示例5。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse epilepsy}{p_end}

{pstd}两级随机截距模型，类似于 {cmd:xtpoisson}{p_end}
{phang2}{cmd:. xtmepoisson seizures treat lbas lbas_trt lage v4 || subject:}{p_end}

{pstd}两级随机截距和随机系数模型{p_end}
{phang2}{cmd:. xtmepoisson seizures treat lbas lbas_trt lage visit || subject: visit}{p_end}

{pstd}两级随机截距和随机系数模型，相关的随机效应{p_end}
{phang2}{cmd:. xtmepoisson seizures treat lbas lbas_trt lage visit || subject: visit, cov(unstructured) intpoints(9)}{p_end}

{pstd}重放结果，显示发生率比和方差/协方差{p_end}
{phang2}{cmd:. xtmepoisson, irr variance}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse melanoma}{p_end}

{pstd}三级嵌套模型，观察值嵌套在 {cmd:region} 里，嵌套在 {cmd:nation} 中{p_end}
{phang2}{cmd:. xtmepoisson deaths uv c.uv#c.uv, exposure(expected) || nation: || region:}{p_end}

{pstd}四级嵌套模型，使用 {helpb xtmepoisson##laplace:laplace} 拟合{p_end}
{phang2}{cmd:. xtmepoisson deaths uv c.uv#c.uv, exposure(expected) || nation: || region: || county:, laplace}{p_end}

    {hline}


{marker saved_results}{...}
{title:保存的结果}

{pstd}
{cmd:xtmepoisson} 在 {cmd:e()} 中保存以下内容：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}标准偏差数量{p_end}
{synopt:{cmd:e(k_rc)}}相关性数量{p_end}
{synopt:{cmd:e(df_m)}}固定效应模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}卡方的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2_c)}}比较模型的卡方{p_end}
{synopt:{cmd:e(df_c)}}比较模型的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较模型的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(reparm_rc)}}返回代码，最终重新参数化{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，则为 {cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtmepoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(exposurevar)}}暴露变量{p_end}
{synopt:{cmd:e(model)}}{cmd:Poisson}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(redim)}}随机效应的维度{p_end}
{synopt:{cmd:e(vartypes)}}方差结构类型{p_end}
{synopt:{cmd:e(revars)}}随机效应的协变量{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(laplace)}}如果使用拉普拉斯近似则为 {cmd:laplace}{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}如果定义则为 {cmd:bootstrap} 或 {cmd:jackknife}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(method)}}{cmd:ML}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}在计算校验和时使用的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
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
{center:翻译自Stata官方帮助文档 <xtmepoisson.sthlp>}