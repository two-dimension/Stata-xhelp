{smcl}
{* *! version 1.2.8  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{viewerdialog "LCA (latent class analysis)" "dialog lca"}{...}
{vieweralsosee "[SEM] gsem" "mansection SEM gsem"}{...}
{vieweralsosee "[SEM] Intro 1" "mansection SEM Intro1"}{...}
{vieweralsosee "[SEM] 方法与公式用于 gsem" "mansection SEM Methodsandformulasforgsem"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem 和 gsem 路径符号" "help sem_and_gsem_path_notation_zh"}{...}
{vieweralsosee "[SEM] gsem 路径符号扩展" "help gsem_path_notation_extensions_zh"}{...}
{vieweralsosee "[SEM] gsem 模型描述选项" "help gsem_model_options_zh"}{...}
{vieweralsosee "[SEM] gsem 组选项" "help gsem_group_options_zh"}{...}
{vieweralsosee "[SEM] gsem 潜类别选项" "help gsem_lclass_options_zh"}{...}
{vieweralsosee "[SEM] gsem 估计选项" "help gsem_estimation_options_zh"}{...}
{vieweralsosee "[SEM] gsem 报告选项" "help gsem_reporting_options_zh"}{...}
{vieweralsosee "[SEM] sem 和 gsem 语法选项" "help sem_and_gsem_syntax_options_zh"}{...}
{vieweralsosee "[SEM] gsem 后估计" "help gsem_postestimation_zh"}{...}
{vieweralsosee "[SVY] svy 估计" "help svy estimation"}{...}
{viewerjumpto "语法" "gsem_command_zh##syntax"}{...}
{viewerjumpto "菜单" "gsem_command_zh##menu"}{...}
{viewerjumpto "描述" "gsem_command_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "gsem_command_zh##linkspdf"}{...}
{viewerjumpto "选项" "gsem_command_zh##options"}{...}
{viewerjumpto "备注" "gsem_command_zh##remarks"}{...}
{viewerjumpto "示例" "gsem_command_zh##examples"}{...}
{viewerjumpto "存储结果" "gsem_command_zh##results"}
{help gsem_command:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[SEM] gsem} {hline 2}}广义结构方程模型估计命令{p_end}
{p2col:}({mansection SEM gsem:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:gsem} {help sem and gsem path notation:{it:路径}} {ifin}
[{it:{help gsem_command##weight:权重}}]
[{cmd:,} {it:选项}]

{pstd}
其中
{it:路径} 是命令语言路径符号中的模型路径；请参见
{helpb sem_and gsem path_notation:[SEM] sem 和 gsem 路径符号}.{p_end}

{synoptset 30}{...}
{synopthdr:选项}
{synoptline}
{synopt :{help gsem_model_options_zh:{it:模型描述选项}}}完全定义与 {it:路径} 一起要拟合的模型{p_end}

{synopt :{help gsem_group_options_zh:{it:组选项}}}为不同组拟合模型{p_end}

{synopt :{help gsem_lclass_options_zh:{it:潜类别选项}}}为潜类别拟合模型{p_end}

{synopt :{help gsem_estimation_options_zh:{it:估计选项}}}用于获取估计结果的方法{p_end}

{synopt :{help gsem_reporting_options_zh:{it:报告选项}}}估计结果的报告{p_end}

{synopt :{help sem and gsem_syntax_options:{it:语法选项}}}控制语法的解释{p_end}
{synoptline}
{p 4 6 2}
允许使用因子变量和时间序列运算符。{p_end}
{p 4 6 2}
允许使用 {cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{opt permute}、{cmd:statsby} 和 {cmd:svy}；请参见 {help prefix_zh}.{p_end}
{p 4 6 2}在 {help bootstrap_zh} 前缀下不允许使用权重。{p_end}
{p 4 6 2}
在 {help svy_zh} 前缀下不允许使用 {opt vce()} 和权重。
{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}、{cmd:iweight} 和 {cmd:pweight}； 
请参见 {help weight_zh}.{p_end}
{p 4 6 2}
另请参见 {help gsem_postestimation_zh:[SEM] gsem 后估计} 以获取估计后可用的功能。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 模型构建和估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:gsem} 拟合广义 SEM。当您在 {cmd:gsem} 模式下使用构建器时，您实际上是在使用 {cmd:gsem} 命令。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM gsemRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:模型描述选项}
描述要拟合的模型。要拟合的模型由 {it:路径} 指定——这在 {cmd:gsem} 后立即出现——以及选项 
{opt covariance()}、{opt variance()} 和 {opt means()}。请参见
{help gsem_model_options_zh:[SEM] gsem 模型描述选项} 和 
{helpb sem and gsem_path_notation:[SEM] sem 和 gsem 路径符号}。

{phang}
{it:组选项}
允许指定的模型在数据的不同子组上拟合，其中一些参数在各组间可自由变化，而其他参数被限制为在各组间相等。请参见 
{help gsem_group_options_zh:[SEM] gsem 组选项}。

{phang}
{it:潜类别选项}
允许指定的模型在指定数量的潜类别上拟合，其中一些参数在类别间可自由变化，而其他参数被限制为在类别间相等。请参见 
{help gsem_lclass_options_zh:[SEM] gsem 潜类别选项}。

{phang}
{it:估计选项}
控制如何获得估计结果。这些选项控制如何获得标准误（VCE）并控制技术问题，例如选择估计方法。请参见 
{help gsem_estimation_options_zh:[SEM] gsem 估计选项}。

{phang}
{it:报告选项}
控制估计结果的显示方式。请参见 
{help gsem_reporting_options_zh:[SEM] gsem 报告选项}。

{phang}
{it:语法选项}
控制您输入的语法如何被解释。请参见 
{helpb sem and gsem_syntax_options:[SEM] sem 和 gsem 语法选项}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:gsem} 提供了 {cmd:sem} 不具备的重要功能，同时对应地省略了 {cmd:sem} 提供的有用功能。能力上的差异如下：

{phang}
1. {cmd:gsem} 允许广义线性响应函数，以及 {cmd:sem} 所允许的线性响应函数。

{phang}
2. {cmd:gsem} 允许多层次模型，而 {cmd:sem} 不允许。

{phang}
3. {cmd:gsem} 允许分类潜变量，而 {cmd:sem} 不允许。

{phang}
4. {cmd:gsem} 允许在指定模型时使用 Stata 的因子变量符号，而 {cmd:sem} 不允许。

{phang}
5. {cmd:gsem} 的 ML 方法在缺失值存在的情况下，有时能够使用更多观察值，而 {cmd:sem} 的 ML 方法则无法做到。与此同时，{cmd:gsem} 不提供 {cmd:sem} 提供的 MLMV 方法来显式处理缺失值。

{phang}
6. {cmd:gsem} 不能生成标准化系数。

{phang}
7. {cmd:gsem} 不能使用汇总统计数据集（SSDs）；而 {cmd:sem} 可以。

{pstd}
{cmd:gsem} 的语法几乎与 {cmd:sem} 相同。
语法的差异是由于能力的不同。造成的语法差异如下：

{phang}
1. {cmd:gsem} 为路径添加新语法，以处理与多层次建模相关的潜变量。

{phang}
2. {cmd:gsem} 添加了新选项，以处理广义线性响应的家族和链接。

{phang}
3. {cmd:gsem} 添加了新语法，以处理分类潜变量。

{phang}
4. {cmd:gsem} 删除了与其不具备的特性相关的选项，例如 SSD。

{phang}
5. {cmd:gsem} 添加了用于控制 {cmd:sem} 不提供的特征的技术选项，例如数值积分（积分选择）、积分点数以及涉及起始值的一系列选项，这些在广义 SEM 框架中是更复杂的命题。

{pstd}
要获取有关 {cmd:gsem} 能做什么及如何使用的可读说明，请参见介绍部分。您可以先从 {manlink SEM Intro 1} 开始。

{pstd}
要查看 {cmd:gsem} 的实际示例，请参见示例部分。您可以先从 {findalias semsfmm} 开始。

{pstd}
请参阅 {bf:[SEM] gsem} 中的以下高级主题：

{phang2}
{mansection SEM gsemRemarksandexamplesDefaultnormalizationconstraints:默认归一化约束}{p_end}
{phang2}
{mansection SEM gsemRemarksandexamplesDefaultcovarianceassumptions:默认协方差假设}{p_end}
{phang2}
{mansection SEM gsemRemarksandexamplesHowtosolveconvergenceproblems:如何解决收敛问题}{p_end}


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在快速参考。有关详细示例，请参见
{help sem examples:{bf:sem} 示例}。


{title:示例: 线性回归}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}使用 {cmd:regress} 命令{p_end}
{phang2}{cmd:. regress mpg weight c.weight#c.weight foreign}{p_end}

{pstd}使用 {cmd:gsem} 复制模型{p_end}
{phang2}{cmd:. gsem (mpg <- weight c.weight#c.weight foreign)}{p_end}


{title:示例: 逻辑回归}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_lbw}{p_end}

{pstd}使用 {cmd:logit} 命令{p_end}
{phang2}{cmd:. logit low age lwt i.race smoke ptl ht ui}{p_end}

{pstd}使用 {cmd:gsem} 复制模型{p_end}
{phang2}{cmd:. gsem (low <- age lwt i.race smoke ptl ht ui), logit}{p_end}


{title:示例: 泊松回归}

{pstd}设置{p_end}
{phang2}{cmd:. webuse dollhill3}{p_end}

{pstd}使用 {cmd:poisson} 命令{p_end}
{phang2}{cmd:. poisson deaths smokes i.agecat, exposure(pyears)}{p_end}

{pstd}使用 {cmd:gsem} 复制模型{p_end}
{phang2}{cmd:. gsem (deaths <- smokes i.agecat), poisson exposure(pyears)}{p_end}


{title:示例: 带二元结果的单因子测量模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_1fmm}{p_end}

{pstd}使用 Bernoulli 家族和 probit 链接建模的二元响应{p_end}
{phang2}{cmd:. gsem (x1 x2 x3 x4 <- X), probit}{p_end}


{title:示例: 带二元和有序测量的完整结构方程模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cfa}{p_end}

{pstd}具有潜变量 {cmd:MathAb} 的 SEM，由潜变量 {cmd:MathAtt} 预测{p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8, logit)}{break}
	{cmd:(MathAtt -> att1-att5, ologit)}{break}
	{cmd:(MathAtt -> MathAb)}{p_end}


{title:示例: 项目反应理论 (IRT) 模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cfa}{p_end}

{pstd}一参数逻辑 IRT 模型{p_end}
{phang2}{cmd:. gsem (MathAb -> (q1-q8)@b), logit var(MathAb@1)}{p_end}

{pstd}两参数逻辑 IRT 模型{p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8), logit var(MathAb@1)}{p_end}


{title:示例: 带二元结果的两层测量模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cfa}{p_end}

{pstd}模型具有学校层面的潜变量 {cmd:Sch[school]} 和嵌套在学校层面的潜变量 {cmd:MathAb} 及学生{p_end}
{phang2}{cmd:. gsem (MathAb M1[school] -> q1-q8), logit}{p_end}


{title:示例: 三层负二项模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_melanoma}{p_end}

{pstd}在国家和区域层面具有随机截距的模型{p_end}
{phang2}{cmd:. gsem (deaths <- uv M1[nation] M2[nation>region]),}{break}
	{cmd:nbreg exposure(expected)}{p_end}


{title:示例: Heckman 选择模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_womenwk}{p_end}
{phang2}{cmd:. generate selected = wage < .}{p_end}

{pstd}针对 {cmd:wage} 的选择模型{p_end}
{phang2}{cmd:. gsem (wage <- educ age L)}{break} 
        {cmd:(selected <- married children educ age L@1, probit), var(L@1)}{p_end}


{title:示例: 潜类别分析}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_lca1, clear}{p_end}

{pstd}使用逻辑回归建模 {cmd:accident}、{cmd:play}、{cmd:insurance} 和 {cmd:stock} 的两类模型{p_end}
{phang2}{cmd:. gsem (accident play insurance stock <- ), logit lclass(C 2)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:gsem} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(N_groups)}}组数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别数，有序{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_out}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的结果数，mlogit{p_end}
{synopt:{cmd:e(k_rc)}}协方差的数量{p_end}
{synopt:{cmd:e(k_rs)}}方差的数量{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果目标模型收敛，返回 {cmd:1}，否则返回 {cmd:0}{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}第 {it:k} 层的 {cmd:fweight} 变量，如果已指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}第 {it:k} 层的 {cmd:pweight} 变量，如果已指定{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}第 {it:k} 层的 {cmd:iweight} 变量，如果已指定{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(family}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的家族{p_end}
{synopt:{cmd:e(link}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的链接{p_end}
{synopt:{cmd:e(offset}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的偏移量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行最大化或最小化{p_end}
{synopt:{cmd:e(method)}}估计方法： {cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于执行 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于执行 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(groupvar)}}分组变量的名称{p_end}
{synopt:{cmd:e(lclass)}}潜类别变量的名称{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginswtype)}} {cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}} {cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {opt predict()} 规格{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(_N)}}每个 {it:depvar} 的样本大小{p_end}
{synopt:{cmd:e(b)}}参数向量{p_end}
{synopt:{cmd:e(b_pclass)}}参数类别{p_end}
{synopt:{cmd:e(cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别，有序{p_end}
{synopt:{cmd:e(out}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的结果，mlogit{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(nobs)}}每组的观察数向量{p_end}
{synopt:{cmd:e(groupvalue)}}{cmd:e(groupvar)} 的组值向量{p_end}
{synopt:{cmd:e(lclass_k_levels)}}潜类别变量的级别数{p_end}
{synopt:{cmd:e(lclass_bases)}}潜类别变量的基准级别{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_command.sthlp>}