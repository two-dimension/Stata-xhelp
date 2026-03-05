{smcl}
{* *! version 2.2.2  12dec2018}{...}
{viewerdialog stcox "dialog stcox"}{...}
{viewerdialog "svy: stcox" "dialog stcox, message(-svy-) name(svy_stcox)"}{...}
{vieweralsosee "[ST] stcox" "mansection ST stcox"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox postestimation" "help stcox postestimation"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[PSS-2] power cox" "help power cox"}{...}
{vieweralsosee "[ST] stcox PH-assumption tests" "help stcox_diagnostics_zh"}{...}
{vieweralsosee "[ST] stcrreg" "help stcrreg_zh"}{...}
{vieweralsosee "[ST] stintreg" "help stintreg_zh"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "语法" "stcox_zh##syntax"}{...}
{viewerjumpto "菜单" "stcox_zh##menu"}{...}
{viewerjumpto "描述" "stcox_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "stcox_zh##linkspdf"}{...}
{viewerjumpto "选项" "stcox_zh##options"}{...}
{viewerjumpto "示例" "stcox_zh##examples"}{...}
{viewerjumpto "存储结果" "stcox_zh##results"}
{help stcox:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[ST] stcox} {hline 2}}Cox 比例风险模型{p_end}
{p2col:}({mansection ST stcox:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:stcox} [{indepvars}] {ifin} [{cmd:,}
{it:options}] 

{synoptset 21 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt esti:mate}}不带协变量拟合模型{p_end}
{synopt :{opth st:rata(varlist:varnames)}}分层 ID 变量{p_end}
{synopt :{opth sh:ared(varname)}}共享脆弱性 ID 变量{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含于模型中，系数固定为 1{p_end}
{synopt :{opt bre:slow}}使用 Breslow 方法处理 tied failures；默认设置{p_end}
{synopt :{opt efr:on}}使用 Efron 方法处理 tied failures{p_end}
{synopt :{opt exactm}}使用精确边际似然方法处理 tied failures{p_end}
{synopt :{opt exactp}}使用精确偏似然方法处理 tied failures{p_end}

{syntab:时间变化}
{synopt :{opth tvc(varlist)}}时间变化协变量{p_end}
{synopt :{opth texp(exp)}}时间变化协变量的倍增因子；默认是 {cmd:texp(_t)}{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}
{synopt :{opt noadj:ust}}不使用标准自由度调整{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt nohr}}报告系数，而不是风险比{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synopt :{it:{help stcox##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:最大化}
{synopt :{it:{help stcox##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:stcox} 之前，您必须 {cmd:stset} 您的数据；请参见 {manhelp stset ST}.{p_end}
{p 4 6 2}
{it:varlist} 可以包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{opt fp}、{cmd:jackknife}、{opt mfp}、
{cmd:mi estimate}、{cmd:nestreg}、{cmd:statsby}、{cmd:stepwise} 和 {cmd:svy}
都是允许的；请参见 {help prefix_zh}。{p_end}
包含帮助 vce_mi
{p 4 6 2}
{opt estimate}、{opt shared()}、{opt efron}、{opt exactm}、
{opt exactp}、{opt tvc()}、{opt texp()}、{opt vce()}、
以及 {opt noadjust} 不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 可以使用 
{cmd:stset} 指定；请参见 {manhelp stset ST}。权重在 
{cmd:efron} 和 {cmd:exactp} 中不支持。此外，如果您使用 {cmd:bootstrap} 前缀来执行 {cmd:stcox} 命令，则不能指定权重。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp stcox_postestimation ST:stcox postestimation} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 回归模型 >}
     {bf:Cox 比例风险模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stcox} 通过最大似然拟合 st 数据上的比例风险模型。{cmd:stcox}可以与单记录或多记录，单故障或多故障的 st 数据一起使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stcoxQuickstart:快速入门}

        {mansection ST stcoxRemarksandexamples:备注和示例}

        {mansection ST stcoxMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt estimate} 强制拟合空模型。所有 Stata 估计命令在没有参数键入时重新显示结果。
{cmd:stcox} 也是如此。如果您希望在 xb 上拟合 Cox 模型，其中 xb 被定义为 0，逻辑上您会输入 {cmd:stcox}。没有解释变量，因此在命令后没有内容可输入。
不幸的是，这与没有参数键入的 {cmd:stcox} 看起来是相同的，这请求重新显示结果。

{pmore}
要拟合空模型，请输入 {cmd:stcox, estimate}。

{marker strata()}{...}
{phang}
{opth strata:(varlist:varnames)} 指定最多五个分层变量。具有相等分层变量值的观察被假定在同一层。然后获得分层估计（在层内相等的系数，但每层具有唯一的基线风险）。

{phang}
{opth shared(varname)} 指定拟合带有共享脆弱性的 Cox 模型。具有相等 {it:varname} 值的观察被假定有共享（相同的）脆弱性。在组之间，脆弱性被假定为服从 gamma 分布的潜在随机效应，这些效应以乘法方式影响风险，或等效地，脆弱性的对数作为随机偏移量进入线性预测。把共享脆弱性模型想象成针对面板数据的 Cox 模型。
{it:varname} 是数据中标识组的变量。
在存在延迟条目或缺口时，不允许使用 {cmd:shared()}。

{pmore}
关于共享脆弱性模型的更多讨论，请参见 {mansection ST stcoxRemarksandexamplesCoxregressionwithsharedfrailty:{it:Cox 回归与共享脆弱性}} 的 {bf:[ST] stcox}。

{phang}
{opth offset(varname)}；请参见
{helpb estimation options##offset():[R] 估计选项}。

{phang}
{opt breslow}、{opt efron}、{opt exactm} 和 {opt exactp} 指定在计算对数局部似然（和残差）时处理 tied failures 的方法。{opt breslow} 是默认值。 
每种方法在 
{mansection ST stcoxRemarksandexamplesTreatmentoftiedfailuretimes:{it:处理 tied failure 时}} 中进行了描述，引用了 {bf:[ST] stcox}。
{opt efron} 和精确的方法需要比默认的 {opt breslow} 选项更多的计算时间。使用 {opt exactm} 和 {opt exactp} 时，不能指定 {opt tvc()}、{cmd:vce(robust)} 或 {cmd:vce(cluster} {it:clustvar}{cmd:)}。

{dlgtab: 时间变化}

{phang}
{opth tvc(varlist)} 指定那些随着时间连续变化的变量，即时间变化协变量。这是一个方便选项，用于加速计算，并避免需要对许多故障时间进行 {help stsplit_zh} 数据。

{pmore}
在使用 {opt tvc()} 进行估计后，大多数预测不可用。 
这些预测要求数据进行 {cmd:stsplit} 以生成所请求的信息；请参见 {help tvc_note_zh:tvc note}。

{phang}
{opth texp(exp)} 与 {opth tvc(varlist)} 一起使用，指定应乘以时间变化协变量的分析时间函数。例如，指定 {cmd:texp(ln(_t))} 会使时间变化协变量乘以分析时间的对数。如果使用 {opt tvc(varlist)} 而没有使用 {opt texp(exp)}，Stata 将理解您是指 {cmd:texp(_t)}，因此将时间变化协变量乘以分析时间。

{pmore}
{opt tvc(varlist)} 和 {opt texp(exp)} 的详细说明见于 
{mansection ST stcoxRemarksandexamplesCoxregressionwithcontinuoustime-varyingcovariates:{it:Cox 回归与连续时间变化协变量}}
在 {bf:[ST] stcox} 中。

{dlgtab: 标准误/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括那些通过渐近理论推导得到的类型（{cmd:oim}）、对某些类型的不适当设定稳健的类型（{cmd:robust}）、允许组内相关性的类型（{cmd:cluster} {it:clustvar}），以及使用自助法或留一法的类型（{cmd:bootstrap}、{cmd:jackknife}）；请参见 {help vce_option_zh:[R] {it:vce_option}}。

{phang}
{opt noadjust} 与 {cmd:vce(robust)} 或 {cmd:vce(cluster} {it:clustvar}{cmd:)} 一起使用。{opt noadjust} 防止估计的方差矩阵乘以 N/(N-1) 或 g/(g-1)，其中 g 是组的数量。默认的调整方式在某种程度上是任意的，因为并不总是清楚如何计算观察值或组。在这类情况下，该调整往往有偏向 1，因此我们仍然建议进行调整。

{dlgtab: 报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nohr} 指定显示系数，而不是指数化系数或风险比。 这个选项只影响结果的显示方式，而不影响它们的估计。{opt nohr} 可以在估计时或在重新显示先前估计的结果时指定（通过输入 {cmd:stcox} 而不包含变量列表）。

{phang}
{opt noshow} 防止 {cmd:stcox} 显示关键的 st 变量。 这个选项很少使用，因为大多数人输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来设置是否希望在每个 st 命令的输出顶部看到这些变量；请参见 {manhelp stset ST}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}
 
{phang}
{it:maximize_options}: {opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、
{opt tol:erance(#)}、{opt ltol:erance(#)} 和 {opt nrtol:erance(#)}、
{opt nonrtol:erance}；请参见 {help maximize_zh:[R] 最大化}。这些选项很少使用。
 
{pstd}
以下选项适用于 {opt stcox}，但不在对话框中显示：

{phang}
{opt coeflegend}；请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。

 
{marker examples}{...}
{title:未删失数据的 Cox 回归示例}
 
{pstd}设置{p_end}
{phang2}{cmd:. webuse kva}{p_end}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset failtime}{p_end}

{pstd}拟合 Cox 比例风险模型{p_end}
{phang2}{cmd:. stcox load bearings}{p_end}

{pstd}重播结果，但显示系数而非风险比{p_end}
{phang2}{cmd:. stcox, nohr}{p_end}


{title:含删失数据的 Cox 回归示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse drugtr}{p_end}

{pstd}显示 st 设置{p_end}
{phang2}{cmd:. stset}{p_end}

{pstd}拟合 Cox 比例风险模型{p_end}
{phang2}{cmd:. stcox drug age}


{title:具有离散时间变化协变量的 Cox 回归示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}{p_end}
{phang2}{cmd:. stset}{p_end}

{pstd}拟合 Cox 模型{p_end}
{phang2}{cmd:. stcox age posttran surg year}{p_end}

{pstd}获取稳健的方差估计{p_end}
{phang2}{cmd:. stcox age posttran surg year, vce(robust)}


{title:具有连续时间变化协变量的 Cox 回归示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse drugtr2}{p_end}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list in 1/12, sep(0)}{p_end}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset time, failure(cured)}{p_end}

{pstd}拟合 Cox 模型{p_end}
{phang2}{cmd:. stcox age drug1 drug2}{p_end}

{pstd}重新拟合模型，考虑到随着时间的推移，体内药物的实际水平指数衰减{p_end}
{phang2}{cmd:. stcox age, tvc(drug1 drug2) texp(exp(-0.35*_t))}{p_end}


{title:多故障数据的 Cox 回归示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mfail}{p_end}

{pstd}拟合具有稳健方差估计的模型{p_end}
{phang2}{cmd:. stcox x1 x2, vce(robust){p_end}


{title:分层估计的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}{p_end}

{pstd}修改数据以反映 1970 年和 1973 年的治疗变化{p_end}
{phang2}{cmd:. generate pgroup = year}{p_end}
{phang2}{cmd:. recode pgroup min/69=1 70/72=2 73/max=3}{p_end}

{pstd}拟合 Cox 模型{p_end}
{phang2}{cmd:. stcox age posttran surg year, strata(pgroup)}{p_end}


{title:具有共享脆弱性的 Cox 回归示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse catheter, clear}{p_end}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list in 1/10}{p_end}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset time, fail(infect)}{p_end}

{pstd}拟合 Cox 模型{p_end}
{phang2}{cmd:. stcox age female, shared(patient)}{p_end}


{title:具有调查数据的 Cox 回归示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nhefs}{p_end}

{pstd}声明数据的调查设计{p_end}
{phang2}{cmd:. svyset psu2 [pw=swgt2], strata(strata2)}{p_end}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset age_lung_cancer if age_lung_cancer < . [pw=swgt2],}
                   {cmd:fail(lung_cancer)}{p_end}

{pstd}考虑到数据为调查数据，拟合 Cox 模型{p_end}
{phang2}{cmd:. svy: stcox former_smoker smoker male urban1 rural}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stcox} 将以下内容存储在 {cmd:e()} 中：

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_sub)}}主体数{p_end}
{synopt:{cmd:e(N_fail)}}故障数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(risk)}}风险下的总时间{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(theta)}}脆弱性参数{p_end}
{synopt:{cmd:e(se_theta)}}theta 的标准误{p_end}
{synopt:{cmd:e(p_c)}}比较检验的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，则为{cmd:0} 否则{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:cox} 或 {cmd:stcox_fr}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:stcox}{p_end}
{synopt:{cmd:e(cmdline)}}键入的命令{p_end}
{synopt:{cmd:e(depvar)}}{cmd:_t}{p_end}
{synopt:{cmd:e(t0)}}{cmd:_t0}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(texp)}}用于时间变化协变量的函数{p_end}
{synopt:{cmd:e(ties)}}处理并列的使用方法{p_end}
{synopt:{cmd:e(strata)}}分层变量{p_end}
{synopt:{cmd:e(shared)}}脆弱性分组变量{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移量变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；用于模型卡方的类型
	检验{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标准误标注的标题{p_end}
{synopt:{cmd:e(method)}}请求的估计方法{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}计算校验和时使用的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}由 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差估计量{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stcox.sthlp>}