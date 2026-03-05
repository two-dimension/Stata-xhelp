{smcl}
{* *! version 1.5.4  06jun2014}{...}
{viewerdialog xtmelogit "dialog xtmelogit"}{...}
{vieweralsosee "[XT] xtmelogit postestimation" "help xtmelogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] estimation" "help mi estimation"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{vieweralsosee "[XT] xtmepoisson" "help xtmepoisson_zh"}{...}
{vieweralsosee "[XT] xtmixed" "help xtmixed_zh"}{...}
{vieweralsosee "[XT] xtrc" "help xtrc_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{viewerjumpto "Syntax" "xtmelogit_zh##syntax"}{...}
{viewerjumpto "Description" "xtmelogit_zh##description"}{...}
{viewerjumpto "Options" "xtmelogit_zh##options"}{...}
{viewerjumpto "Remarks on specifying random-effects equations" "xtmelogit_zh##remarks"}{...}
{viewerjumpto "Examples" "xtmelogit_zh##examples"}{...}
{viewerjumpto "Saved results" "xtmelogit_zh##saved_results"}
{help xtmelogit:English Version}
{hline}{...}
{pstd}
{cmd:xtmelogit} 已重命名为 {help meqrlogit_zh}。{cmd:xtmelogit} 继续有效，但自 Stata 13 以来，已不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能会失效。

{hline}

{title:标题}

{p2colset 5 23 25 2}{...}
{synopt :{hi:[XT] xtmelogit} {hline 2}}多层混合效应逻辑回归
{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:xtmelogit} {depvar} [{it:fe_equation}] {cmd:||} {it:re_equation}
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help xtmelogit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{cmd:,} {it:{help xtmelogit##fe_options:fe_options}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	针对随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help xtmelogit##re_options:re_options}}]

{p 8 18 2}
	针对因子变量值中的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}
		[{cmd:,} {it:{help xtmelogit##re_options:re_options}}]

{p 4 4 2}
    {it:levelvar} 是识别随机效应群体结构的变量，或者 {cmd:_all} 表示包含所有观察的一个组。{p_end}

{synoptset 30 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe_options}
{synoptline}
{syntab:模型}
{synopt :{opt noc:onstant}}从固定效应方程中去除常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，并将系数约束为 1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :re_options}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(xtmelogit##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt noc:onstant}}从随机效应方程中去除常数项{p_end}
{synopt :{opt col:linear}}保留共线变量{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt: {opt bin:omial}{cmd:(}{it:{help varname_zh:varname}}|{it:#}{cmd:)}在数据为二项形式时设置二项试验{p_end}

{syntab:积分}
{synopt :{opt lap:lace}}使用拉普拉斯近似；等价于 {cmd:intpoints(1)}{p_end}
{synopt :{opt intp:oints}{cmd:(}{it:#} [{it:#} ...]{cmd:)}}设置积分（求积）点的数量；默认值为 7{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}将固定效应系数报告为比值比{p_end}
{synopt :{opt var:iance}}将随机效应参数估计显示为方差和协方差{p_end}
{synopt :{opt noret:able}}抑制随机效应表{p_end}
{synopt :{opt nofet:able}}抑制固定效应表{p_end}
{synopt :{opt estm:etric}}以估计度量显示参数估计{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制汇总组的表{p_end}
{synopt :{opt nolr:test}}不进行与逻辑回归的 LR 检验{p_end}
{synopt :{it:{help xtmelogit##display_options:display_options}}}控制列格式、行间距、行宽，以及省略变量和基本空单元的显示{p_end}

{syntab :最大化}
{synopt :{it:{help xtmelogit##maximize_options:maximize_options}}}控制在基于梯度的优化过程中进行最大化；很少使用{p_end}
{synopt :{opt retol:erance(#)}}随机效应估计的容差；默认值为 {cmd:retolerance(1e-8)}；很少使用{p_end}
{synopt :{opt reiter:ate(#)}}随机效应估计的最大迭代次数；默认值为 {cmd:reiterate(50)}；很少使用{p_end}
{synopt :{opt matsqrt}}使用矩阵平方根参数化方差成分；默认选项{p_end}
{synopt :{opt matlog}}使用矩阵对数参数化方差成分{p_end}
{synopt :{opt refine:opts}{cmd:(}{it:{help xtmelogit##maximize_options:maximize_options}}{cmd:)}控制在起始值精炼期间进行最大化{p_end}

包含帮助 shortdes-coeflegend
{synoptline}

{synoptset 23}{...}
{marker vartype}{...}
{synopthdr :vartype}
{synoptline}
{synopt :{opt ind:ependent}}每个随机效应一个方差参数，所有协方差为零；默认值，除非指定了因子变量{p_end}
{synopt :{opt ex:changeable}}随机效应的方差相等，并且具有共同的成对协方差{p_end}
{synopt :{opt id:entity}}随机效应的方差相等，所有协方差为零；如果指定了因子变量则为默认值{p_end}
{synopt :{opt un:structured}}所有方差-协方差均单独估计{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 fvvarlist
{p 4 6 2}{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:mi estimate}、{cmd:rolling} 和 {cmd:statsby} 是允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}
{opt coeflegend}不会出现在对话框中.{p_end}
{p 4 6 2}有关估计后可用特性的更多信息，请参见 {manhelp xtmelogit_postestimation XT:xtmelogit postestimation}。{p_end}


{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 多层混合效应模型}
     {bf:> 混合效应逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtmelogit} 拟合用于二元/二项响应的混合效应模型。混合模型包含固定效应和随机效应。固定效应类似于标准回归系数，并直接进行估计。随机效应不是直接估计的（尽管可以在估计后获得），而是根据其估计的方差和协方差进行汇总。随机效应可以是随机截距或随机系数，并且数据的分组结构可能包含多层嵌套组。随机效应的分布假设为高斯。给定随机效应的响应的条件分布假设为伯努利，成功概率由逻辑累积分布函数（c.d.f.）确定。由于该模型的对数似然没有封闭形式，因此通过自适应高斯求积进行近似。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt noconstant} 去除常数（截距）项，可以在固定效应方程以及任意或所有随机效应方程中指定。

{phang}{opth offset(varname)} 表示在固定效应模型中包含 {it:varname}，并将系数约束为 1。

{phang}{opt covariance(vartype)}，其中 {it:vartype} 为

{phang3}
{cmd:independent}{c |}{cmd:exchangeable}{c |}{cmd:identity}{c |}{cmd:unstructured}

{pmore}
指定随机效应的协方差矩阵结构，可以为每个随机效应方程指定。{cmd:independent} 协方差结构允许每个随机效应在随机效应方程内具有独特的方差，并假设所有协方差为零。{cmd:exchangeable} 协方差具有共同的方差和一个共同的成对协方差。{cmd:identity} 是“单位矩阵的倍数”；即，所有的方差相等且所有的协方差为零。{cmd:unstructured} 允许所有方差和协方差均独特估计。如果一个方程由 {it:p} 个随机效应项组成，那么 {cmd:unstructured} 协方差矩阵将有 {it:p}({it:p}+1)/2 个独特参数。

{pmore}
{cmd:covariance(independent)} 为默认值，除非随机效应方程包含因子变量规范 {cmd:R.}{varname}，在这种情况下，{cmd:covariance(identity)} 为默认值，仅允许 {cmd:covariance(identity)} 和 {cmd:covariance(exchangeable)}。

{phang}{opt collinear} 指定 {cmd:xtmelogit} 不要从随机效应方程中省略共线变量。通常没有理由保留共线变量，实际上这样做通常由于共线性导致的矩阵奇异性使得估计失败。然而，某些模型（例如，带有全套对比的随机效应模型）可能具有共线性，而模型由于随机效应协方差结构的限制而得到完全识别。在这种情况下，使用 {cmd:collinear} 选项允许估计在随机效应方程保持完整的情况下进行。

{phang}{cmd:binomial(}{help varname_zh:{it:varname}}|{it:#}{cmd:)} 指定数据为二项形式；即，{depvar} 记录来自一系列二项试验的成功次数。二项试验的数量可以是 {it:varname}，这允许该数字在观测中变化，或为常数 {it:#}。如果未指定 {opt binomial()}，则 {it:depvar} 将被视为伯努利，其中任何非零、非缺失值表示正响应。

{dlgtab:积分}

{marker laplace}{...}
{phang}{opt laplace} 指定使用拉普拉斯近似计算对数似然，相当于每个模型级别有一个积分点的自适应高斯求积； {cmd:laplace} 相当于 {cmd:intpoints(1)}。计算时间随着积分点数的增加而增大，通常是高于随机效应规范的维度的幂。使用 {cmd:laplace} 节省的计算时间可能非常可观，尤其是在您有多个层次和/或随机系数的情况下。

{pmore}
众所周知，拉普拉斯近似可能产生偏倚的参数估计，但这种偏差往往在对方差成分的估计中更为明显，而不是在固定效应的估计中。如果您主要关心固定效应的估计，那么拉普拉斯近似可能是一个可行的更快的替代方法，而不是使用多个积分点的自适应求积。

{pmore}
指定因子变量 {cmd:R.}{varname} 会增加随机效应的维度，即 {it:varname} 的不同值的数量，即因子水平的数量。即使这个数量小到中等，也会将随机效应的总维度增加到超过一个积分点的估计变得过于密集的程度。

{pmore}
因此，当您在随机效应方程中有因子变量时，假定使用 {cmd:laplace} 选项。您可以通过使用 {cmd:intpoints()} 选项来覆盖此行为。

{phang}
{opt intpoints(# [# ...])} 设置自适应高斯求积的积分点数量。点数越多，近似的对数似然越准确。然而，计算时间随着积分点的数量增加，在具有多个层次和/或多个随机系数的模型中，这种增加可能是显著的。

{pmore}
您可以为模型中的所有随机效应级别指定一个积分点的数量，或者为每个级别指定不同的点数。默认值为 {cmd:intpoints(7)}；即，默认情况下每个级别使用七个积分点。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options:[R] estimation options}。

{phang} 
{opt or} 将固定效应系数转换为比值比，即 exp(b)，而不是 b。标准误差和置信区间也会相应转换。此选项影响结果的显示方式，而不是估计方式。{cmd:or} 可以在估计时或重新播放先前估计的结果时指定。

{phang}
{opt variance} 以方差和协方差的方式显示随机效应参数估计。默认值是以标准差和相关系数的方式显示。

{phang}
{opt noretable} 从输出中抑制随机效应表。

{phang}
{opt nofetable} 从输出中抑制固定效应表。

{phang}
{opt estmetric} 以估计度量的方式显示所有参数估计。固定效应估计与通常显示的一样，但随机效应参数估计以对数标准差和超弦正切的方式显示相关系数，并通过级别组织方程名称。

{phang}
{opt noheader} 在估计时或回放时抑制输出头。

{phang}
{opt nogroup} 抑制输出头中显示组摘要信息（组数、平均组大小、最小值和最大值）。

{phang}
{opt nolrtest} 防止 {cmd:xtmelogit} 执行与标准（边际）逻辑回归比较的似然比检验。此选项也可以在回放时指定，以抑制此检验从输出中显示。

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
    见 {helpb estimation options##display_options:[R] estimation options}。

{dlgtab:最大化}

{marker maximize_options}{...}
{phang}
{it:maximize_options}:
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
{opt nonrtol:erance}，以及
{opt from(init_specs)}；
见 {help maximize_zh:[R] maximize}。
对于 {cmd:xtmelogit} 特别值得注意的选项如下。

{pmore}
对于 {opt technique()} 选项，默认值为 {cmd:technique(nr)}。
无法指定 {opt bhhh} 算法。

{pmore}{opt from(init_specs)} 在与 {cmd:refineopts(iterate(0))} 组合使用时特别有用，后者绕过初始优化阶段；见 
{help xtmelogit##refineopts:below}。

{marker retolerance()}{...}
{phang}
{opt retolerance(#)} 指定自适应高斯求积中用于估计的随机效应的收敛容差。高斯求积点相对于当前模型参数的估计随机效应而进行适配。估计这些随机效应是一个迭代过程，当随机效应的最大相对变化小于 {cmd:retolerance()} 时，宣布收敛。默认 {cmd:retolerance()} 为 1e-8。您通常不需要使用此选项。

{phang}
{opt reiterate(#)} 指定在估计随机效应时为了调整高斯求积点而使用的最大迭代次数；见 {helpb xtmelogit##retolerance():retolerance()} 选项。默认值为 {cmd:reiterate(50)}。您通常不需要使用此选项。

{phang}
{opt matsqrt}（默认选项）在优化期间，通过使用随机效应在每个模型级别形成的方差-协方差矩阵的矩阵平方根对方差成分进行参数化。

{phang}
{opt matlog} 在优化期间，通过使用随机效应在每个模型级别形成的方差-协方差矩阵的矩阵对数对方差成分进行参数化。

{pmore}
{opt matsqrt} 参数化确保方差-协方差矩阵是半正定的，而 {opt matlog} 确保矩阵是正定的。对于大多数问题，矩阵平方根在参数空间边界附近更稳定。然而，如果收敛存在问题，一种选择可能是尝试替代的 {cmd:matlog} 参数化。当收敛不是问题时，两种参数化都会产生等效结果。

{phang}
{opt refineopts}{cmd:(}{it:{help xtmelogit##maximize_options:maximize_options}}{cmd:)} 控制在起始值精炼期间进行最大化过程。{cmd:xtmelogit} 的估计分为两个阶段。在第一阶段，通过在迭代之间保持固定的求积点来精炼起始值。在第二阶段，随着每次对数似然的评估，求积点会进行调整。{cmd:refineopts()} 中指定的最大化选项控制优化的第一阶段；即，它们控制起始值的精炼。

{pmore}
在 {cmd:refineopts()} 外部指定的 {it:maximize_options} 控制第二阶段。

{pmore}
上述规则的唯一例外是 {cmd:nolog} 选项，如果在 {cmd:refineopts()} 外部指定，则全局适用。

{pmore}
在 {cmd:refineopts()} 内部不允许使用 {opt from(init_specs)}，而必须全局指定。

{marker refineopts}{...}
{pmore}
精炼起始值有助于提高第二阶段（即朝向解决方案的迭代）的数值稳定性。特别感兴趣的是 {cmd:refineopts(iterate(}{it:#}{cmd:))}，默认值为两次迭代。如果由于海森矩阵计算的不稳定性导致最大化失败，可以增加此处的迭代数量作为一种可能的解决方案。

{pstd}
以下选项可与 {opt xtmelogit} 一起使用，但未在对话框中显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] estimation options}。


{marker remarks}{...}
{title:指定随机效应方程的备注}

{pstd}
混合模型由固定效应和随机效应组成。固定效应以与大多数其他 Stata 估计命令类似的方式作为回归参数指定，即作为一个因变量后跟一组回归变量。模型的随机效应部分首先考虑数据的分组结构。例如，如果随机效应根据变量 {cmd:school} 变化，则对 {cmd:xtmelogit} 的调用将为

{p 8 12 4}{cmd:. xtmelogit} {it:fixed_portion} 
{cmd:|| school:} ... {cmd:,}
{it:options}{p_end}

{pstd}
构成每个方程的变量列表描述了随机效应如何进入模型，无论是作为随机截距（常数项）还是作为数据中回归变量的随机系数。还可以根据上述四种可用结构指定方程内的随机效应的方差-协方差结构。例如，

{p 8 12 4}{cmd:. xtmelogit} {it:f_p}
{cmd:|| school: z1, covariance(unstructured)}
{it:options}{p_end}

{pstd}
将拟合一个随机截距和随机斜率的模型，针对变量 {cmd:z1}，并将这两个随机效应的方差-协方差结构视为无结构。

{pstd}
如果数据是通过一系列嵌套组组织的，例如学校中的班级，则随机效应结构由一系列方程指定，每个方程之间用 {cmd:||} 分隔。嵌套的顺序从左到右。例如，在我们的例子中，首先应指定一个学校的方程，然后是班级的方程。作为一个例子，考虑

{p 8 12 4}{cmd:. xtmelogit} {it:f_p} 
{cmd:|| school: z1, cov(un) || class: z2 z3, nocons cov(ex)} {it:options}

{pstd}
其中变量 {cmd:school} 和 {cmd:class} 分别识别学校和班级。该模型包含了学校级的随机截距和对 {cmd:z1} 的随机系数，并且在班级级对 {cmd:z2} 和 {cmd:z3} 具有随机系数。班级级的随机效应的协方差结构是可交换的，意味着随机效应具有共同方差，并且被允许相关。允许没有相关性的简化（同时仍允许共同方差）将是 {cmd:cov(identity)}。

{pstd} 组变量可以重复，从而允许构建更加一般的协方差结构，作为基于原始四种结构的块对角矩阵。考虑 

{p 8 12 4}{cmd:. xtmelogit} {it:f_p} 
{cmd:|| school: z1 z2, nocons cov(id) || school: z3 z4, nocons cov(un)}
{it:options}

{pstd}
这指定了四个学校级的随机系数。随机效应的方差-协方差矩阵是 4 x 4 矩阵，其中上 2 x 2 对角块是单位矩阵的多倍，下 2 x 2 对角块则是无结构的。实际上，{cmd:z1} 和 {cmd:z2} 的系数被约束为独立，并共享一个共同的方差。{cmd:z3} 和 {cmd:z4} 的系数各有独特的方差，并且与 {cmd:z1} 和 {cmd:z2} 的系数的方差不同。它们也允许相关，但它们独立于 {cmd:z1} 和 {cmd:z2} 的系数。

{pstd}
对于没有嵌套分组结构的混合模型，将整个估计数据视为一个组是便捷的。为此，{cmd:xtmelogit} 允许特殊组指定 {cmd:_all}。{cmd:xtmelogit} 还允许因子变量符号 {cmd:R.}{it:varname}，这是一种描述 {it:varname} 的级别为一系列指示变量的简写。有关更多详细信息，请参见 {bf:[XT] xtmelogit} 的示例 5。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bangladesh}{p_end}

{pstd}两层随机截距模型，类似于 {cmd:xtlogit}{p_end}
{phang2}{cmd:. xtmelogit c_use urban age child* || district:}{p_end}

{pstd}两层随机截距和随机系数模型{p_end}
{phang2}{cmd:. xtmelogit c_use urban age child* || district: urban}{p_end}

{pstd}两层随机截距和随机系数模型，相关的随机效应{p_end}
{phang2}{cmd:. xtmelogit c_use urban age child* || district: urban,}
       {cmd:cov(unstruct)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon}{p_end}

{pstd}三层嵌套模型，{cmd:subject} 嵌套在 {cmd:family} 内{p_end}
{phang2}{cmd:. xtmelogit dtlm difficulty i.group || family: || subject:}{p_end}

{pstd}三层嵌套模型，改变积分点的数量{p_end}
{phang2}{cmd:. xtmelogit dtlm difficulty i.group || family: || subject:, intpoints(4 5)}{p_end}

{pstd}回放固定效应作为比值比{p_end}
{phang2}{cmd:. xtmelogit, or}{p_end}

{pstd}以及将方差分量列出为方差和协方差{p_end}
{phang2}{cmd:. xtmelogit, or variance}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fifeschool}{p_end}
{phang2}{cmd:. gen byte attain_gt_6 = attain > 6}{p_end}

{pstd}两向交叉随机效应{p_end}
{phang2}{cmd:. xtmelogit attain_gt_6 sex || _all:R.sid || pid:}{p_end}
    {hline}


{marker saved_results}{...}
{title:保存的结果}

{pstd}
{cmd:xtmelogit} 将以下内容保存到 {cmd:e()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数的数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数的数量{p_end}
{synopt:{cmd:e(k_rs)}}标准差的数量{p_end}
{synopt:{cmd:e(k_rc)}}相关数的数量{p_end}
{synopt:{cmd:e(df_m)}}固定效应模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}卡方的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较模型{p_end}
{synopt:{cmd:e(df_c)}}比较模型的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较模型的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(reparm_rc)}} 返回代码，最终重新参数化{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛, {cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtmelogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:logistic}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(binomial)}}二项试验的数量{p_end}
{synopt:{cmd:e(redim)}}随机效应的维度{p_end}
{synopt:{cmd:e(vartypes)}}方差结构类型{p_end}
{synopt:{cmd:e(revars)}}随机效应协变量{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(laplace)}}{cmd:laplace}，如果使用拉普拉斯近似{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}如果定义，则为 {cmd:bootstrap} 或 {cmd:jackknife}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记 Std. Err. 的标题{p_end}
{synopt:{cmd:e(method)}}{cmd:ML}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}检查和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算检查值的变量{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
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
{center:翻译自Stata官方帮助文档 <xtmelogit.sthlp>}