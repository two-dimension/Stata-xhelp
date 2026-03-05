{smcl}
{* *! version 1.3.10  28apr2019}{...}
{viewerdialog ologit "dialog ologit"}{...}
{viewerdialog "svy: ologit" "dialog ologit, message(-svy-) name(svy_ologit)"}{...}
{vieweralsosee "[R] ologit" "mansection R ologit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ologit postestimation" "help ologit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: ologit" "help bayes ologit"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[CM] cmrologit" "help cmrologit_zh"}{...}
{vieweralsosee "[CM] cmroprobit" "help cmroprobit_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] fmm: ologit" "help fmm ologit"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[ME] meologit" "help meologit_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{vieweralsosee "[R] slogit" "help slogit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtologit" "help xtologit_zh"}{...}
{viewerjumpto "Syntax" "ologit_zh##syntax"}{...}
{viewerjumpto "Menu" "ologit_zh##menu"}{...}
{viewerjumpto "Description" "ologit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ologit_zh##linkspdf"}{...}
{viewerjumpto "Options" "ologit_zh##options"}{...}
{viewerjumpto "Examples" "ologit_zh##examples"}{...}
{viewerjumpto "Stored results" "ologit_zh##results"}
{help ologit:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] ologit} {hline 2}}有序逻辑回归{p_end}
{p2col:}({mansection R ologit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:ologit}
{depvar}
[{indepvars}]
{ifin}
[{it:{help ologit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth off:set(varname)}}在模型中包括 {it:varname}，系数约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}, {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help ologit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help ologit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保持共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
INCLUDE help fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bayes}, {opt bootstrap}, {opt by}, {opt fmm}, {opt fp}, {opt jackknife},
{opt mfp}, {opt mi estimate}, {opt nestreg}, {opt rolling}, {opt statsby},
{opt stepwise}, 和 {opt svy} 是允许的；参见 {help prefix_zh}。
更多细节，请参见 {manhelp bayes_ologit BAYES:bayes: ologit} 和 {manhelp fmm_ologit FMM:fmm: ologit}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用.{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s, {opt iweight}s, 和 {opt pweight}s 是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
参见 {manhelp ologit_postestimation R:ologit 后估计}，了解估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 序数结果 > 有序逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{opt ologit} 对序数变量 {depvar} 在自变量 {indepvars} 上拟合有序逻辑模型。因变量的实际取值无关紧要，除了更大的数值被假定对应于“更高”的结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ologitQuickstart:快速入门}

        {mansection R ologitRemarksandexamples:备注和示例}

        {mansection R ologitMethodsandformulas:方法和公式}

{pstd}
上述各节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth offset(varname)},
{opt constraints(constraints)}；参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论派生的类型 ({cmd:oim}), 可靠于某些类型的错误指定的类型 ({cmd:robust}), 允许组内相关的类型 ({cmd:cluster} {it:clustvar}), 以及使用自助或杰克刀方法的类型 ({cmd:bootstrap}, {cmd:jackknife}); 参见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt or} 报告变换为赔率比的估计系数，即，exp(b) 而非 b。标准误和置信区间也相应变换。此选项影响结果的显示方式，而不是它们的估计方式。{opt or} 可以在估计时或重放已估计结果时指定。

{phang}
{opt nocnsreport}; 参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace}, 
{opt grad:ient}, {opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(init_specs)}; 参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
{opt ologit} 提供了以下选项，但不在对话框中显示：

{phang}
{opt collinear}, {opt coeflegend}; 参见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fullauto}{p_end}

{pstd}有序逻辑回归{p_end}
{phang2}{cmd:. ologit rep77 foreign length mpg}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2f}{p_end}
{phang2}{cmd:. svyset psuid [pw=finalwgt], strata(stratid)}

{pstd}带有调查数据的有序逻辑回归{p_end}
{phang2}{cmd:. svy: ologit health female black age c.age#c.age}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ologit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(N_cd)}}完全确定的观测数量{p_end}
{synopt:{cmd:e(k_cat)}}分类数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中方程的数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}簇数量{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ologit}{p_end}
{synopt:{cmd:e(cmdline)}}按照输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方测试的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 规格{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(cat)}}分类值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 功能}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ologit.sthlp>}