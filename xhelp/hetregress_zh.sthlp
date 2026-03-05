{smcl}
{* *! version 1.0.13  12dec2018}{...}
{viewerdialog hetregress "dialog hetregress"}{...}
{viewerdialog "svy: hetregress" "dialog hetregress, message(-svy-) name(svy_hetregress)"}{...}
{vieweralsosee "[R] hetregress" "mansection R hetregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] hetregress postestimation" "help hetregress postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: hetregress" "help bayes hetregress"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "语法" "hetregress_zh##syntax"}{...}
{viewerjumpto "菜单" "hetregress_zh##menu"}{...}
{viewerjumpto "描述" "hetregress_zh##description"}{...}
{viewerjumpto "PDF文档链接" "hetregress_zh##linkspdf"}{...}
{viewerjumpto "最大似然估计的选项" "hetregress_zh##options_ml"}{...}
{viewerjumpto "两步 GLS 估计的选项" "hetregress_zh##options_twostep"}{...}
{viewerjumpto "示例" "hetregress_zh##examples"}{...}
{viewerjumpto "存储结果" "hetregress_zh##results"}
{help hetregress:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] hetregress} {hline 2}}异方差线性回归{p_end}
{p2col:}({mansection R hetregress:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}最大似然估计

{p 8 16 2}
{cmd:hetregress} {depvar} [{indepvars}] {ifin}
[{it:{help hetregress##weight:权重}}]
[{cmd:,} 
{it:{help hetregress##hetregress_ml_options:ml_options}}]


{phang}两步 GLS 估计

{p 8 16 2}
{cmd:hetregress} {depvar} [{indepvars}] {ifin}{cmd:,}
{cmdab:two:step} {cmd:het(}{varlist}{cmd:)} 
[{it:{help hetregress##hetregress_ts_options:ts_options}}]


{synoptset 28 tabbed}{...}
{marker hetregress_ml_options}{...}
{synopthdr :ml_options}
{synoptline}
{syntab :模型}
{synopt :{opt ml:e}}使用最大似然估计；默认值{p_end}
{synopt :{cmd:het(}{varlist}{cmd:)}}用于建模方差的自变量{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{cmd:opg}、{opt boot:strap}，或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt lrmodel}}执行 LR 模型检验，而不是默认的 Wald 模型检验{p_end}
{synopt:{opt waldhet}}对方差执行 Wald 检验，而不是 LR 检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help hetregress##display_options:display_options}}}控制
包含帮助短描述-displayoptall

{syntab :最大化}
{synopt :{it:{help hetregress##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包含帮助短描述-coeflegend
{synoptline}

{marker hetregress_ts_options}{...}
{synopthdr :ts_options}
{synoptline}
{syntab :模型}
{p2coldent :* {cmdab:two:step}}使用两步 GLS 估计量；默认值是最大似然{p_end}
{p2coldent :* {cmd:het(}{varlist}{cmd:)}}用于建模方差的自变量{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}

{syntab :标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、{opt boot:strap}，或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help hetregress##display_options:display_options}}}控制
包含帮助短描述-displayoptall

包含帮助短描述-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:twostep} 和 {opt het()} 是必需的。{p_end}


{p2colreset}{...}
包含帮助 fvvarlist2
{p 4 6 2}{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:bootstrap}、{cmd:by}、{cmd:fp}、{cmd:jackknife}、{cmd:rolling}、{cmd:statsby} 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_hetregress BAYES:bayes: hetregress}.{p_end}
{p 4 6 2}使用 {help bootstrap_zh} 前缀不允许权重.{p_end}
{p 4 6 2}与 {help jackknife_zh} 前缀不允许 {opt aweight}。{p_end}
{p 4 6 2}
与 {help svy_zh} 前缀不允许 {opt vce()}、{opt lrmodel}、{opt twostep} 和权重.{p_end}
{marker weight}{...}
{p 4 6 2}{opt aweight}、{opt fweight}、{opt iweight} 和 {opt pweight} 
与最大似然估计一起允许使用；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
有关估计后可用的特性，请参见 {manhelp hetregress_postestimation R:hetregress postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型和相关 > 异方差线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:hetregress} 通过将方差建模为指定变量的指数函数，给出一个乘法异方差线性回归模型，使用最大似然 (ML；默认) 或哈维的两步广义最小二乘 (GLS) 方法进行估计。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R hetregressQuickstart:快速入门}

        {mansection R hetregressRemarksandexamples:备注和示例}

        {mansection R hetregressMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_ml}{...}
{title:最大似然估计的选项}

{dlgtab:模型}

{phang}
{opt mle} 请求使用最大似然估计量。这是默认值。

{phang}
{cmd:het(}{varlist}{cmd:)} 指定方差函数中的自变量。当未指定 {opt het()} 选项时，假定为同方差，且不允许使用 {opt waldhet} 选项。
 
{phang}
{opt noconstant}、{opt constraints(constraints)}；见 
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}、{opt lrmodel}；见 
{helpb estimation options:[R] 估计选项}。

{phang}
{opt waldhet} 指定执行 Wald 检验以检验 {cmd:lnsigma2} = 0，而不是 LR 检验。

{phang}
{opt nocnsreport}；见 {helpb estimation options:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab :最大化}

{phang}
{it:maximize_options}: {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance} 和 {opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt hetregress} 一起使用，但在对话框中不显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker options_twostep}{...}
{title:两步 GLS 估计的选项}

{dlgtab:模型}

{phang}
{opt twostep} 指定模型使用哈维的两步 GLS 估计量进行拟合。此选项要求在 {opt het()} 选项中指定自变量以建模方差。

{phang}
{cmd:het(}{varlist}{cmd:)} 指定方差函数中的自变量。
 
{phang}
{opt noconstant}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括基于渐近理论的类型 ({cmd:conventional}) 和使用自助法或留一法的类型 ({cmd:bootstrap}、{cmd:jackknife})；见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(conventional)}，默认使用 Heckman 推导的两步方差估计量。

{dlgtab:报告}

{phang}
{opt level(#)}；见 
{helpb estimation options##level():[R] 估计选项}。

包含帮助 displayopts_list

{pstd}
以下选项可与 {opt hetregress} 一起使用，但在对话框中不显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合乘法异方差回归模型，并使用 {cmd:length} 来建模方差{p_end}
{phang2}{cmd:. hetregress price length i.foreign, het(length)}{p_end}

{pstd}对均值函数执行 LR 检验，而不是 Wald 检验{p_end}
{phang2}{cmd:. hetregress price length i.foreign, het(length) lrmodel}{p_end}

{pstd}使用哈维的两步 GLS 方法拟合异方差回归模型{p_end}
{phang2}{cmd:. hetregress price length i.foreign, het(length) twostep}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:hetregress} (ML) 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整个模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然，全模型{p_end}
{synopt:{cmd:e(ll_0)}}对数似然，仅常数模型{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}均值模型检验的卡方值{p_end}
{synopt:{cmd:e(chi2_c)}}异方差检验的卡方值{p_end}
{synopt:{cmd:e(p_c)}}异方差检验的 p 值{p_end}
{synopt:{cmd:e(df_m_c)}}异方差检验的自由度{p_end}
{synopt:{cmd:e(p)}}均值模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:hetregress}{p_end}
{synopt:{cmd:e(cmdline)}}命令的原始输入{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title2)}}估计输出中的副标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；对应于 {cmd:e(chi2_c)} 的异方差卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(method)}}{cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}由 {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}由 {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
{cmd:hetregress} (两步 GLS) 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(chi2)}}均值模型检验的卡方值{p_end}
{synopt:{cmd:e(chi2_c)}}异方差检验的卡方值{p_end}
{synopt:{cmd:e(p_c)}}异方差检验的 p 值{p_end}
{synopt:{cmd:e(df_m_c)}}异方差检验的自由度{p_end}
{synopt:{cmd:e(p)}}均值模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:hetregress}{p_end}
{synopt:{cmd:e(cmdline)}}命令的原始输入{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title2)}}估计输出中的副标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald}；对应于 {cmd:e(chi2_c)} 的异方差卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(method)}}{cmd:twostep}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}由 {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}由 {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hetregress.sthlp>}