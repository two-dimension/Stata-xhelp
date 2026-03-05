{smcl}
{* *! version 1.0.7  12dec2018}{...}
{viewerdialog fmm "dialog fmm"}{...}
{vieweralsosee "[FMM] fmm" "mansection FMM fmm"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm estimation" "help fmm_estimation_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm_postestimation_zh"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "语法" "fmm_zh##syntax"}{...}
{viewerjumpto "菜单" "fmm_zh##menu"}{...}
{viewerjumpto "描述" "fmm_zh##description"}{...}
{viewerjumpto "PDF文档链接" "fmm_zh##linkspdf"}{...}
{viewerjumpto "选项" "fmm_zh##options"}{...}
{viewerjumpto "备注" "fmm_zh##remarks"}{...}
{viewerjumpto "示例" "fmm_zh##examples"}{...}
{viewerjumpto "存储结果" "fmm_zh##results"}
{help fmm:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[FMM] fmm} {hline 2}}使用fmm前缀的有限混合模型
{p_end}
{p2col:}({mansection FMM fmm:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
标准语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{it:{help fmm##weight:权重}}]
[{cmd:,} {it:fmmopts}] {cmd::} {it:component}


{pstd}
混合语法

{p 8 15 2}
{cmd:fmm} {ifin}
[{it:{help fmm##weight:权重}}]
[{cmd:,} {it:fmmopts}] {cmd::} {cmd:(}{it:component_1}{cmd:)}
                               {cmd:(}{it:component_2}{cmd:)} ...


{pstd}
其中 {it:component} 的标准语法为

{pmore}
{it:model}
{depvar}
{indepvars}
[{cmd:,} {it:options}]

{pstd}
{it:component} 的混合语法为

{pmore}
{it:model}
{depvar}
{indepvars}
[{cmd:,} {opth lcprob(varlist)} {it:options}]

{pstd}
{it:{help fmm_estimation_zh:model}} 是一个估计命令，{it:options} 是特定于 {it:model} 的估计选项。

INCLUDE help fmm_options_table

{marker pclassname}{...}
INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM (有限混合模型) > 一般估计和回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm} 前缀拟合有限混合模型；请参见 {manhelp fmm_estimation FMM:fmm estimation} 以获取支持的命令列表。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmQuickstart:快速开始}

        {mansection FMM fmmRemarksandexamples:备注和示例}

        {mansection FMM fmmMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt lcinvariant(pclassname)} 指定模型的哪些参数在潜在类别之间被约束为相等；默认值为 {cmd:lcinvariant(none)}。

{marker lcprobopt}{...}
{phang}
{opth lcprob(varlist)} 指定给定潜在类别概率的线性预测包括 {it:varlist} 中的变量。
{opt lcinvariant()} 对这些参数没有影响。

{pmore}
在标准语法中，{it:varlist} 用于每个潜在类别概率的线性预测中。

{pmore}
在混合语法中，在 {it:component_i} 中指定 {opt lcprob(varlist_i)} 以将 {it:varlist_i} 包含在第 i 个潜在类别概率的线性预测中。
如果在一个或多个 {it:component} 规范中使用了 {opt lcprob()}，则不允许在 {it:fmmopts} 中指定 {opt lcprob()}。

{pmore}
在混合语法中，如果在与基本潜在类别相对应的组件中指定了 {opt lcprob()}，则该选项将被忽略。

{phang}
{opt lclabel(name)} 指定分类潜在变量的名称；默认值为 {cmd:lclabel(Class)}。

{phang}
{opt lcbase(#)} 指定将 {it:#} 视为基准潜在类别。

{pmore}
在标准语法中，默认值为 {cmd:lcbase(1)}。

{pmore}
在混合语法中，默认基准为与第一个未指定 {cmd:lcprob()} 的 {it:component} 相对应的潜在类别。
如果所有组件都有 {cmd:lcprob()}，则第一个 {it:component} 是基准，且指定给第一个 {it:component} 的 {cmd:lcprob()} 选项将被忽略。

{phang}
{opt constraints()}; 请参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括源于渐近理论的类型 ({opt oim})、对于某些类型的错误规范稳健的类型 ({opt robust}) 和允许组内相关的类型 ({opt cluster} {it:clustvar})；请参见 {manhelpi vce_option R}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options:[R] 估计选项}。

{phang}
{opt nocnsreport} 抑制约束的显示。
由 {opt fmm} 自动设置的固定为零的约束不会在报告中显示，以使输出可控。

{phang}
{opt noheader} 抑制参数表上方的标题的显示，显示最终对数似然值、观察数等的报告。

{phang}
{opt nodvheader} 抑制每个参数表上方的依赖变量信息的显示。

{phang}
{opt notable} 抑制参数表的显示。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)} 和 
{opt nonrtol:erance}，及
{opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。
这些选项不常用。

{marker startvalues}{...}
{phang}
{opt startvalues()} 指定如何计算起始值。
在 {opt from()} 中指定的起始值将覆盖计算的起始值。

{phang2}
{cmd:startvalues(factor} [{cmd:,} {it:{help fmm##maxopts:maxopts}}]{cmd:)} 指定通过在指定模型中的所有观察变量上运行因子分析来分配每个观察值到初始潜在类别，从而计算起始值。这是默认值。

{phang2}
{cmd:startvalues(classid} {varname}[{cmd:,}
{it:{help fmm##maxopts:maxopts}}]{cmd:)} 指定通过分配每个观察值到在 {it:varname} 中指定的初始潜在类别来计算起始值。
{it:varname} 需要在估计样本中每个类别都有表示。

{phang2}
{cmd:startvalues(classpr} {varlist}[{cmd:,}
{it:{help fmm##maxopts:maxopts}}]{cmd:)} 指定使用在 {it:varlist} 中指定的初始类别概率来计算起始值。{it:varlist} 需要包含 g 个潜在类别的变量。
{it:varlist} 中的值在每个观察值中归一化，使其相加为 1。

{phang2}
{cmd:startvalues(randomid} [{cmd:,} {opt draws(#)} {opt seed(#)}
{it:{help fmm##maxopts:maxopts}}]{cmd:)} 指定通过随机分配观察值到初始类来计算起始值。

{phang2}
{cmd:startvalues(randompr} [{cmd:,} {opt draws(#)} {opt seed(#)}
{it:{help fmm##maxopts:maxopts}}]{cmd:)} 指定通过随机分配初始类别概率来计算起始值。

{phang2}
{cmd:startvalues(jitter} [{it:#_c} [{it:#_v}]{cmd:,} {opt draws(#)}
{opt seed(#)} {it:{help fmm##maxopts:maxopts}}]{cmd:)} 指定通过对每个结果的高斯近似值进行随机扰动来构建起始值。

{phang3}
{it:#_c} 是随机扰动系数、截距、切点和规模参数的幅度；默认值为 1。

{phang3}
{it:#_v} 是随机扰动高斯结果方差的幅度；默认值为 1。

{phang2}
{cmd:startvalues(zero)} 指定起始值设置为 0。仅在您使用 {opt from()} 为某些参数指定起始值并希望其他起始值为 0 时，此选项才有用。

{pmore}
大多数起始值选项都有子选项，可用于调节起始值计算：

{marker maxopts}{...}
{phang2}
{it:maxopts} 是标准 {it:maximize_options} 的一个子集：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}；请参见 {help maximize_zh:[R] 最大化}。

{phang2}
{opt draws(#)} 指定随机抽样的数量。
对于 {cmd:startvalues(randomid)}、{cmd:startvalues(randompr)} 和 {cmd:startvalues(jitter)}，{cmd:fmm} 将生成 {it:#} 个随机抽样，并从 EM 迭代中具有最佳对数似然值的抽样中选择起始值。默认值为 {cmd:draws(1)}。

{phang2}
{opt seed(#)} 设置随机数种子。

{marker emopts}{...}
{phang}
{opth emopts:(fmm##maxopts:maxopts)} 控制 EM 算法的对数似然最大化。
{it:{help fmm##maxopts:maxopts}} 是在 {opt startvalues()} 选项中允许的 {it:maximize_options} 的同一子集，但对 EM 算法的一些默认值不同。
默认最大迭代数为 {cmd:iterate(20)}。
默认系数向量容忍度为 {cmd:tolerance(1e-4)}。
默认对数似然容忍度为 {cmd:ltolerance(1e-6)}。

{phang}
{cmd:noestimate} 指定不拟合模型。相反，起始值将显示（如有修改由上述选项影响），并使用 {cmd:coeflegend} 输出样式进行显示。使用此选项的重要用途是在您完全未修改起始值之前；您可以键入以下内容：

        {cmd:. fmm} ...{cmd:,} ... {cmd:noestimate :} ...
        {cmd:. matrix b = e(b)}
        {cmd:.} ... (修改 {cmd:b} 的元素) ...
        {cmd:. fmm} ...{cmd:,} ... {cmd:from(b) :} ...

{pstd}
以下选项在 {cmd:fmm} 中可用，但在对话框中不显示：

{phang}
{opt collinear}; 
请参见 {helpb estimation options:[R] 估计选项}。

{phang}
{cmd:coeflegend} 显示如何在 {cmd:_b[]} 语法中指定估计系数的图例，您在指定后估计命令时有时需要输入这一点。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见 {manlink FMM fmm intro}。
有关 {cmd:fmm} 前缀支持的估计命令列表，请参见 {manhelp fmm_estimation FMM:fmm estimation}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stamp}{p_end}

{pstd}三种正态分布的混合 {cmd:thickness}{p_end}
{phang2}{cmd:. fmm 3: regress thickness}{p_end}

{pstd}三类的成员资格估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mus03sub}{p_end}

{pstd}三种线性回归模型的混合{p_end}
{phang2}{cmd:. fmm 3: regress lmedexp income c.age##c.age totchr i.sex}{p_end}

{pstd}将 {cmd:totchr} 包含为类别成员资格的预测变量{p_end}
{phang2}{cmd:. fmm 3, lcprob(totchr): regress lmedexp income c.age##c.age totchr i.sex}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_mixture}{p_end}

{pstd}两种泊松回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: poisson drvisits private medicaid c.age##c.age actlim chronic}{p_end}

{pstd}每类的边际预测计数{p_end}
{phang2}{cmd:. estat lcmean}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fish2}{p_end}

{pstd}零膨胀泊松模型作为一个点质量分布和一个泊松回归模型的混合{p_end}
{phang2}{cmd:. fmm: (pointmass count) (poisson count persons boat)}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:fmm} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_eq)}}在 {cmd:e(b)} 中方程数量{p_end}
{synopt :{cmd:e(k_dv)}}依赖变量数量{p_end}
{synopt :{cmd:e(k_cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别数量，序数{p_end}
{synopt :{cmd:e(k_out}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别数量，{cmd:mlogit}{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(N_clust)}}簇数量{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt :{cmd:e(ic)}}迭代数量{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{opt 1} 如果目标模型收敛，{opt 0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{opt gsem}{p_end}
{synopt :{cmd:e(cmd2)}}{opt fmm}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(prefix)}}{cmd:fmm}{p_end}
{synopt :{cmd:e(depvar)}}依赖变量的名称{p_end}
{synopt:{cmd:e(eqnames)}}方程的名称{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}簇变量的名称{p_end}
{synopt :{cmd:e(model}{it:#}{cmd:)}}第 {it:#} 个组件的模型{p_end}
{synopt :{cmd:e(offset}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的偏移量{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype} {p_end}
{synopt :{cmd:e(vcetype)}}用于标记 Std. Err. 的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(which)}}{opt max} 或 {opt min}; 优化器要执行最大化还是最小化{p_end}
{synopt :{cmd:e(method)}}估计方法： {opt ml}{p_end}
{synopt :{cmd:e(ml_method)}}{opt ml} 方法的类型{p_end}
{synopt :{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(properties)}}{opt b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {opt estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {opt predict} 的程序{p_end}
{synopt :{cmd:e(covariates)}}协变量列表{p_end}
{synopt :{cmd:e(lclass)}}潜在类别变量的名称{p_end}
{synopt :{cmd:e(marginsnotok)}} {opt margins} 不允许的预测{p_end}
{synopt :{cmd:e(marginsdefault)}}{opt margins} 的默认 {opt predict()} 规范{p_end}
{synopt :{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {opt fvset} 作为 {opt asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {opt fvset} 作为 {opt asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}参数向量{p_end}
{synopt :{cmd:e(b_pclass)}}参数类别{p_end}
{synopt :{cmd:e(cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别，序数{p_end}
{synopt :{cmd:e(out}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的结果，{cmd:mlogit}{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(V)}}估计量的协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt :{cmd:e(lclass_k_levels)}}潜在类别变量的级别数量{p_end}
{synopt :{cmd:e(lclass_bases)}}潜在类别变量的基准级别{p_end}
{synopt :{cmd:e(_N)}}每个组件的样本量{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm.sthlp>}