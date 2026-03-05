{smcl}
{* *! version 1.3.13  28apr2019}{...}
{viewerdialog oprobit "dialog oprobit"}{...}
{viewerdialog "svy: oprobit" "dialog oprobit, message(-svy-) name(svy_oprobit)"}{...}
{vieweralsosee "[R] oprobit" "mansection R oprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] oprobit postestimation" "help oprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: oprobit" "help bayes oprobit"}{...}
{vieweralsosee "[CM] cmroprobit" "help cmroprobit_zh"}{...}
{vieweralsosee "[ERM] eoprobit" "help eoprobit_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] fmm: oprobit" "help fmm oprobit"}{...}
{vieweralsosee "[R] heckoprobit" "help heckoprobit_zh"}{...}
{vieweralsosee "[R] hetoprobit" "help hetoprobit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[ME] meoprobit" "help meoprobit_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtoprobit" "help xtoprobit_zh"}{...}
{vieweralsosee "[R] zioprobit" "help zioprobit_zh"}{...}
{viewerjumpto "Syntax" "oprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "oprobit_zh##menu"}{...}
{viewerjumpto "Description" "oprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "oprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "oprobit_zh##options"}{...}
{viewerjumpto "Examples" "oprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "oprobit_zh##results"}
{help oprobit:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] oprobit} {hline 2}}有序概率回归{p_end}
{p2col:}({mansection R oprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:oprobit}
{depvar}
[{indepvars}]
{ifin}
[{it:{help oprobit##weight:权重}}]
{bind:[{cmd:,} {it:选项}]}

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，并将系数约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
   {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或
   {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help oprobit##display_options:显示选项}}}控制
包括帮助短描述-显示选项

{syntab :最大化}
{synopt :{it:{help oprobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包括帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
包括帮助 fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bayes}, {opt bootstrap}, {opt by}, {opt fmm}, {opt fp}, {opt jackknife},
{opt mfp}, {opt mi estimate}, {opt nestreg}, {opt rolling}, {opt statsby},
{opt stepwise}, 和 {opt svy} 是允许的；见 {help prefix_zh} .
有关更多详细信息，请参见 {manhelp bayes_oprobit BAYES:bayes: oprobit} 和
{manhelp fmm_oprobit FMM:fmm: oprobit}.{p_end}
包括帮助 vce_mi
{p 4 6 2}使用 {help bootstrap_zh} 前缀时不允许使用权重.{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不兼容.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}、{opt iweight} 和 {opt pweight}；
见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参见 {manhelp oprobit_postestimation R:oprobit 后估计} 获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 有序结果 > 有序概率回归}


{marker description}{...}
{title:描述}

{pstd}
{opt oprobit} 拟合有序概率模型，因变量为顺序变量
{depvar}，自变量为 {indepvars}。
因变量所取的实际值是无关紧要的，除了较大值被假定对应于“更高”的结果之外。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R oprobitQuickstart:快速入门}

        {mansection R oprobitRemarksandexamples:备注和示例}

        {mansection R oprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth offset(varname)},
{opt constraints(constraints)}; 参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括由渐近理论推导的类型 ({cmd:oim}),
对某些错误规格稳健的类型 ({cmd:robust}), 允许组内相关 ({cmd:cluster} {it:clustvar}), 并且使用
自助法或杰克刀法的方法 ({cmd:bootstrap}, {cmd:jackknife}); 见
{help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包括帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
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
{opt from(init_specs)}; 见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项与 {opt oprobit} 可用，但未在对话框中显示：

{phang}
{opt collinear}, {opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fullauto}{p_end}

{pstd}有序概率回归{p_end}
{phang2}{cmd:. oprobit rep77 foreign length mpg}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2f}{p_end}
{phang2}{cmd:. svyset psuid [pw=finalwgt], strata(stratid)}

{pstd}使用调查数据进行有序概率回归{p_end}
{phang2}{cmd:. svy: oprobit health female black age c.age#c.age}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:oprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_cd)}}完全确定的观察数量{p_end}
{synopt:{cmd:e(k_cat)}}类别数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整个模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R-squared{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:oprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否进行
                     最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsdefault)}} {opt predict()} 的默认规范用于 {cmd:margins}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 设置为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 设置为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(cat)}}类别值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <oprobit.sthlp>}