{smcl}
{* *! version 1.4.3  19jun2019}{...}
{viewerdialog logistic "dialog logistic"}{...}
{viewerdialog "svy: logistic" "dialog logistic, message(-svy-) name(svy_logistic)"}{...}
{vieweralsosee "[R] logistic" "mansection R logistic"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic postestimation" "help logistic postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: logistic" "help bayes logistic"}{...}
{vieweralsosee "[R] brier" "help brier_zh"}{...}
{vieweralsosee "[R] cloglog" "help cloglog_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] exlogistic" "help exlogistic_zh"}{...}
{vieweralsosee "[FMM] fmm: logistic" "help fmm logit"}{...}
{vieweralsosee "[LASSO] Lasso intro" "help lasso intro"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] npregress kernel" "help npregress kernel"}{...}
{vieweralsosee "[R] npregress series" "help npregress series"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{viewerjumpto "Syntax" "logistic_zh##syntax"}{...}
{viewerjumpto "Menu" "logistic_zh##menu"}{...}
{viewerjumpto "Description" "logistic_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "logistic_zh##linkspdf"}{...}
{viewerjumpto "Options" "logistic_zh##options"}{...}
{viewerjumpto "Examples" "logistic_zh##examples"}{...}
{viewerjumpto "Video examples" "logistic_zh##video"}{...}
{viewerjumpto "Stored results" "logistic_zh##results"}
{help logistic:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] logistic} {hline 2}}逻辑回归，报告比值比{p_end}
{p2col:}({mansection R logistic:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:logistic} {depvar} {indepvars} {ifin} 
[{it:{help logistic##weight:权重}}]
[{cmd:,} {it:选项}] 

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:断}}抑制常数项{p_end}
{synopt :{opth off:设定(varname)}}在模型中包括 {it:varname}，系数约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt coef}}报告估计的系数{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help logistic##display_options:显示选项}}}控制
包含帮助短描述-displayoptall

{syntab :最大化}
{synopt :{it:{help logistic##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包含帮助短描述-coeflegend
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；
参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:bayes}、{cmd:bootstrap}、{cmd:by}、{opt fp}、{cmd:jackknife}、{opt mfp}、{cmd:mi estimate}、{cmd:nestreg}、{cmd:rolling}、{cmd:statsby}、{cmd:stepwise} 和 {cmd:svy} 是允许的；参见 {help prefix_zh}。
更多详情，参见 {manhelp bayes_logistic BAYES:bayes: logistic}.{p_end}
包含帮助 vce_mi
{p 4 6 2} 与 {help bootstrap_zh} 前缀不允许使用权重.{p_end}
{p 4 6 2} {opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；参见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
参见 {manhelp logistic_postestimation R:logistic postestimation} 以获取估计后的可用功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:logistic} 拟合 {depvar} 对 {indepvars} 的逻辑回归模型，
其中 {it:depvar} 是一个 0/1 变量（更确切地说，是一个 0/非 0 变量）。
如果没有参数，{cmd:logistic} 将重新显示上一个 {cmd:logistic} 的估计结果。
{cmd:logistic} 将估计结果以比值比的形式展示；要查看系数，在运行 {cmd:logistic} 后输入 {cmd:logit}。
要获取相对于其他的任何协变量模式的比值比，请参见 {manhelp lincom R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R logisticQuickstart:快速入门}

        {mansection R logisticRemarksandexamples:备注和示例}

        {mansection R logisticMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}、{opth offset(varname)}、{opt constraints(constraints)}；参见
{helpb estimation options:[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观察，可能导致最大化过程的不稳定；参见 {manhelp probit R}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括基于渐近理论的类型 ({cmd:oim})、对某些类型的误设稳健的类型 ({cmd:robust})、允许组间相关的类型 ({cmd:cluster} {it:clustvar})，以及使用自助法或切片法的类型 ({cmd:bootstrap}，{cmd:jackknife})；参见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt coef} 使得 {cmd:logistic} 报告估计的系数，而不是比值比（指数化的系数）。 在拟合模型时可以指定 {cmd:coef}，也可以在后续操作中用于重新显示结果。
{cmd:coef} 仅影响结果的显示方式，而不影响估计方式。

{phang}
{opt nocnsreport}；参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、 
{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、{opt nonrtol:erance}，和 {opt from(init_specs)}；参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可与 {opt logistic} 使用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}; 参见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}{p_end}

{pstd}逻辑回归{p_end}
{phang2}{cmd:. logistic low age lwt i.race smoke ptl ht ui}{p_end}

{pstd}与上面相同，但使用稳健的方差估计{p_end}
{phang2}{cmd:. logistic low age lwt i.race smoke ptl ht ui, vce(robust)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2d}{p_end}
{phang2}{cmd:. svyset}

{pstd}使用调查数据的逻辑回归{p_end}
{phang2}{cmd:. svy: logistic highbp height weight age female}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mheart5}{p_end}
{phang2}{cmd:. mi set mlong}{p_end}
{phang2}{cmd:. mi register imputed age bmi}{p_end}
{phang2}{cmd:. mi impute mvn age bmi = attack smokes hsgrad female, add(10)}

{pstd}在每个 10 个插补数据集上分别拟合逻辑模型并结合结果{p_end}
{phang2}{cmd:. mi estimate, or: logistic attack smokes age bmi hsgrad female}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=rSU1L3-xRk0":逻辑回归，第一部分：二元预测变量}

{phang}
{browse "http://www.youtube.com/watch?v=vmZ_uaFImzQ":逻辑回归，第二部分：连续预测变量}

{phang}
{browse "http://www.youtube.com/watch?v=vCSh613UMic":逻辑回归，第三部分：因子变量}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:logistic} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(N_cds)}}完全确定的成功数量{p_end}
{synopt:{cmd:e(N_cdf)}}完全确定的失败数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:logistic}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然估计程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(mns)}}自变量的均值向量{p_end}
{synopt:{cmd:e(rules)}}关于完美预测的相关信息{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <logistic.sthlp>}