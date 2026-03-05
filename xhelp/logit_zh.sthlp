{smcl}
{* *! version 1.3.13  19jun2019}{...}
{viewerdialog logit "dialog logit"}{...}
{viewerdialog "svy: logit" "dialog logit, message(-svy-) name(svy_logit)"}{...}
{vieweralsosee "[R] logit" "mansection R logit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logit postestimation" "help logit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: logit" "help bayes logit"}{...}
{vieweralsosee "[R] brier" "help brier_zh"}{...}
{vieweralsosee "[R] cloglog" "help cloglog_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] exlogistic" "help exlogistic_zh"}{...}
{vieweralsosee "[R] fmm: logit" "help fmm logit"}{...}
{vieweralsosee "[LASSO] Lasso intro" "help lasso intro"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[R] npregress kernel" "help npregress kernel"}{...}
{vieweralsosee "[R] npregress series" "help npregress series"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{viewerjumpto "Syntax" "logit_zh##syntax"}{...}
{viewerjumpto "Menu" "logit_zh##menu"}{...}
{viewerjumpto "Description" "logit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "logit_zh##linkspdf"}{...}
{viewerjumpto "Options" "logit_zh##options"}{...}
{viewerjumpto "Examples" "logit_zh##examples"}{...}
{viewerjumpto "Stored results" "logit_zh##results"}
{help logit:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] logit} {hline 2}}逻辑回归，报告系数{p_end}
{p2col:}({mansection R logit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:logit} {depvar} [{indepvars}] {ifin}
[{it:{help logit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:不常数}}抑制常数项{p_end}
{synopt :{opth off:设(varname)}}在模型中包含 {it:varname}，其系数固定为1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、 {opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help logit##display_options:显示选项}}}控制
包含帮助 shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help logit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{opt nocoe:f}}不显示系数表；很少使用{p_end}
{synopt:{opt col:linear}}保留共线性变量{p_end}
包含帮助 shortdes-coeflegend
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:bootstrap}、{cmd:by}、{opt fmm}、{opt fp}、{cmd:jackknife}、{opt mfp}、{cmd:mi estimate}、{cmd:nestreg}、{cmd:rolling}、{cmd:statsby}、{cmd:stepwise} 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_logit BAYES:bayes: logit} 和 {manhelp fmm_logit FMM:fmm: logit}.{p_end}
包含帮助 vce_mi
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt vce()}、{opt nocoef} 和权重不允许与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt nocoef}、{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp logit_postestimation R:logit 后估计} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:logit} 通过最大似然拟合一个二元响应的逻辑模型；它建模了给定回归变量的正向结果的概率。
{it:depvar} 等于非零且非缺失（通常 {it:depvar} 等于一）表示正向结果，而 {it:depvar} 等于零表示负向结果。

{pstd}
另见 {manhelp logistic R}； {cmd:logistic} 以赔率比的形式显示估计值。许多用户更喜欢使用 {cmd:logistic} 命令而不是 {cmd:logit}。结果无论使用哪种方式都是相同的——两者都是最大似然估计。几种在 {cmd:logit}、{cmd:probit} 或 {cmd:logistic} 估计后可以运行的辅助命令在 {helpb logistic postestimation:[R] logistic 后估计} 中进行了描述。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R logitQuickstart:快速开始}

        {mansection R logitRemarksandexamples:备注和示例}

        {mansection R logitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}、{opth offset(varname)}、{opt constraints(constraints)}；见
{helpb estimation options:[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观察值，可能会在最大化过程中产生不稳定性；见 {manhelp probit R}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括从渐近理论推导出的类型 ({cmd:oim})、对某些类型的模型错误有稳健性的类型 ({cmd:robust})、允许组内相关性的类型 ({cmd:cluster} {it:clustvar})，以及使用自助法或切片法的类型 ({cmd:bootstrap}、{cmd:jackknife})；见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}；见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt or} 报告转换为赔率比的估计系数，即 exp(b) 而不是 b。标准误和置信区间也会相应转换。此选项影响结果的显示方式，而不是估计方式。{opt or} 可以在估计时指定或在重播先前估计的结果时使用。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法指定)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、
{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance} 和 {opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pstd}
{cmd:logit} 提供了以下选项，但在对话框中不会显示：

{phang}
{opt nocoef} 指定不显示系数表。此选项有时由程序员使用，但对交互式无用。

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}{p_end}

{pstd}逻辑回归{p_end}
{phang2}{cmd:. logit low age lwt i.race smoke ptl ht ui}{p_end}
{phang2}{cmd:. logit, level(99)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2d}{p_end}
{phang2}{cmd:. svyset}

{pstd}使用调查数据进行逻辑回归{p_end}
{phang2}{cmd:. svy: logit highbp height weight age female}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:logit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_cds)}}完全确定的成功数{p_end}
{synopt:{cmd:e(N_cdf)}}完全确定的失败数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:logit}{p_end}
{synopt:{cmd:e(cmdline)}}按键入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(mns)}}自变量的均值向量{p_end}
{synopt:{cmd:e(rules)}}关于完美预测变量的信息{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <logit.sthlp>}