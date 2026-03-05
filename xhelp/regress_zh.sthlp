{smcl}
{* *! version 1.4.19  19jun2019}{...}
{viewerdialog regress "dialog regress"}{...}
{viewerdialog "svy: regress" "dialog regress, message(-svy-) name(svy_regress)"}{...}
{vieweralsosee "[R] regress" "mansection R regress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress postestimation" "help regress postestimation"}{...}
{vieweralsosee "[R] regress postestimation diagnostic plots" "help regress postestimation plots"}{...}
{vieweralsosee "[R] regress postestimation ts" "help regress postestimation ts"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[BAYES] bayes: regress" "help bayes regress"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{findalias assemreg}{...}
{vieweralsosee "[FMM] fmm: regress" "help fmm regress"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[R] hetregress" "help hetregress_zh"}{...}
{vieweralsosee "[SEM] Intro 5" "mansection SEM Intro5"}{...}
{vieweralsosee "[LASSO] Lasso intro" "help lasso intro"}{...}
{vieweralsosee "[META] meta regress" "help meta_regress_zh"}{...}
{vieweralsosee "[TS] mswitch" "help mswitch_zh"}{...}
{vieweralsosee "[SP] spregress" "help spregress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "regress_zh##syntax"}{...}
{viewerjumpto "Menu" "regress_zh##menu"}{...}
{viewerjumpto "Description" "regress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "regress_zh##linkspdf"}{...}
{viewerjumpto "Options" "regress_zh##options"}{...}
{viewerjumpto "Examples" "regress_zh##examples"}{...}
{viewerjumpto "Video example" "regress_zh##video"}{...}
{viewerjumpto "Stored results" "regress_zh##results"}{...}
{viewerjumpto "References" "regress_zh##references"}
{help regress:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] regress} {hline 2}}线性回归{p_end}
{p2col:}({mansection R regress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt regress} {depvar} [{indepvars}] {ifin} 
[{it:{help regress##weight:权重}}]
   [{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:无常数项}}抑制常数项{p_end}
{synopt :{opt h:ascons}}包含用户提供的常数项{p_end}
{synopt :{opt tsscons}}计算包含常数项的总平方和; 
很少使用{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt ols},
   {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 
   {opt jack:knife}, {opt hc2} 或 {opt hc3}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平; 默认值为 {cmd:level(95)}{p_end}
{synopt :{opt b:eta}}报告标准化的贝塔系数{p_end}
{synopt :{opth ef:orm(strings:string)}}报告指数化系数并标记为 {it:string}{p_end}
{synopt :{opth dep:name(varname)}}替换因变量名称;
程序员选项{p_end}
{synopt :{it:{help regress##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{synopt :{opt nohe:ader}}抑制输出头{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt plus}}使表格可扩展{p_end}
{synopt :{opt ms:e1}}强制均方误差为 {cmd:1}{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列运算符; 见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:bayes}, {cmd:bootstrap}, {cmd:by}, {opt fmm}, {opt fp}, {cmd:jackknife},
{opt mfp}, {cmd:mi estimate}, {cmd:nestreg}, {cmd:rolling}, {cmd:statsby},
{cmd:stepwise} 和 {cmd:svy} 是允许的; 见 {help prefix_zh}.
有关更多详细信息，见 {manhelp bayes_regress BAYES:bayes: regress} 和
{manhelp fmm_regress FMM:fmm: regress}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}在使用 {help bootstrap_zh} 前缀时不允许权重.{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{p 4 6 2}
{opt hascons},
{opt tsscons},
{opt vce()},
{opt beta},
{opt noheader},
{opt notable},
{opt plus},
{opt depname()},
{opt mse1},
以及权重在 {help svy_zh} 前缀下也不被允许。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}、{cmd:fweight}、{cmd:iweight} 和 {cmd:pweight} 是允许的; 见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt noheader}、{opt notable}、{opt plus}、{opt mse1} 和 {opt coeflegend}
不会出现在对话框中.{p_end}
{p 4 6 2}
有关估计后可用功能的信息，见 {manhelp regress_postestimation R:regress postestimation}.{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型和相关 > 线性回归}

{marker description}{...}
{title:描述}

{pstd}
{cmd:regress} 执行普通最小二乘线性回归。
{cmd:regress} 还可以执行加权估计，计算稳健和集群稳健的标准误，以及调整复杂调查设计的结果。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R regressQuickstart:快速入门}

        {mansection R regressRemarksandexamples:备注和示例}

        {mansection R regressMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见 
{helpb estimation options##noconstant:[R] 估计选项}. 

{phang}
{opt hascons} 指示在 {indepvars} 中指定了用户定义的常数或其等价项。使用此选项需谨慎，因为结果估计可能不如其他情况准确。使用此选项需要将常数项放在最后进行 "扫除"，因此矩阵必须以绝对而非偏差的形式累积。当因变量和自变量的均值都合理且自变量之间没有太多共线性时，可以安全地指定此选项。最佳做法是将 {opt hascons} 视为报告选项 — 先和后不带 {opt hascons} 进行估计，并验证不受常数身份影响的变量的系数和标准误不变。

{phang}
{opt tsscons} 强制计算总平方和，就好像模型有一个常数那样，即作为因变量均值的偏差。这是一个很少使用的选项，仅在与 {opt noconstant} 一起指定时才有效。它影响总平方和和所有源自总平方和的结果。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论导出的类型（{cmd:ols}），对某些类型的错误规范具有稳健性（{cmd:robust}），允许组内相关的类型（{cmd:cluster} {it:clustvar}），以及使用引导法或删失法（{cmd:bootstrap}, {cmd:jackknife}）；见 {help vce_option_zh:[R] {it:vce_option}}.

{pmore}
{cmd:vce(ols)}，默认值，使用普通最小二乘回归的标准方差估计。

{pmore}
{cmd:regress} 还允许以下选项：

{phang2}
{cmd:vce(hc2)} 和 {cmd:vce(hc3)} 指定稳健的方差计算的替代偏差修正。{cmd:vce(hc2)} 和 {cmd:vce(hc3)} 不能与 {cmd:svy} 前缀一起指定。在未分组情况下，
{cmd:vce(robust)} 使用 (sigma-hat_j)^2={n/(n-k)}(u_j)^2 作为第 j 个观察值的方差估计，其中 u_j 是计算的残差，n/(n-k) 目的是改善整体估计的样本小属性。

{pmore2}
{cmd:vce(hc2)} 则使用 u_j^2/(1-h_jj) 作为观察值的方差估计，其中 h_jj 是投影矩阵的对角元素。如果模型确实是同方差的，该估计是无偏的。
{cmd:vce(hc2)} 倾向于产生略微保守的置信区间。

{pmore2}
{cmd:vce(hc3)} 使用 u_j^2/(1-h_jj)^2，依据 {help regress##DM1993:Davidson and MacKinnon (1993)} 的建议，这种方法在模型确实存在异方差时通常会产生更好的结果。 {cmd:vce(hc3)} 产生的置信区间往往更加保守。

{pmore2}
有关这两种偏差修正的更多讨论，见 {help regress##DM1993:Davidson and MacKinnon (1993, 554-556)} 和 {help regress##AP2009:Angrist and Pischke (2009, 294-308)}.

{dlgtab:报告}

{phang}
{opt level(#)}; 见 {helpb estimation options##level():[R] 估计选项}.

{phang}
{opt beta} 要求报告标准化的贝塔系数而不是置信区间。贝塔系数是通过首先将所有变量标准化为均值为 0 和标准差为 1 的回归系数。{opt beta} 不能与 
{cmd:vce(cluster} {it:clustvar}{cmd:)} 或 {cmd:svy} 前缀一起指定。

{phang}
{opth eform:(strings:string)} 仅在使用 {cmd:regress} 拟合线性回归以外的模型的程序和 ado 文件中使用。{opt eform()} 指定系数表以指数形式显示，定义见 {help maximize_zh:[R] 最大化}，并使用 {it:string} 标记表中的指数系数。

{phang}
{opth depname(varname)} 仅在使用 {cmd:regress} 拟合线性回归以外的模型的程序和 ado 文件中使用。{opt depname()} 只能在估计时指定。{it:varname} 被记录为因变量的身份，即使估计是使用 {depvar} 计算的。此方法影响输出的标记 — 而非计算的结果 — 但可能影响 {cmd:predict} 进行的后续计算，其中残差将被计算为偏差自 {it:varname} 而非 {it:depvar}。{opt depname()} 最常在 {it:depvar} 是临时变量时使用（见 {manhelp macro P}），用作 {it:varname} 的代理。

{pmore}
{opt depname()} 不允许与 {cmd:svy} 前缀一起使用。

INCLUDE help displayopts_list

{pstd}
在 {cmd:regress} 可以使用以下选项但在对话框中未显示：

{phang}
{opt noheader} 抑制显示 ANOVA 表和输出顶部的摘要统计信息；仅显示系数表。
此选项常用于程序和 ado 文件中。

{phang}
{opt notable} 抑制系数表的显示。

{phang}
{opt plus} 指定输出表可扩展。此选项常用于程序和 ado 文件中。

{phang}
{opt mse1} 仅在使用 {cmd:regress} 拟合线性回归以外的模型的程序和 ado 文件中使用，且不允许与 {help svy_zh} 前缀一起使用。{opt mse1} 将均方误差设置为 {cmd:1}，强制估计量的方差-协方差矩阵为 (X'X)^-1（见 
{mansection R regressMethodsandformulas:{it:方法和公式}} 在 {bf:[R] regress} 中）并影响计算的标准误。t 统计量的自由度计算为 n 而不是 n-k。

{phang}
{opt coeflegend}; 见 
     {helpb estimation options##coeflegend:[R] 估计选项}.

{marker examples}{...}
{title:示例:  线性回归}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合线性回归{p_end}
{phang2}{cmd:. regress mpg weight foreign}{p_end}

{pstd}从物理学的角度拟合更好的线性回归{p_end}
{phang2}{cmd:. gen gp100m = 100/mpg}{p_end}
{phang2}{cmd:. regress gp100m weight foreign}{p_end}

{pstd}在不重新拟合模型的情况下获取贝塔系数{p_end}
{phang2}{cmd:. regress, beta}{p_end}

{pstd}抑制截距项{p_end}
{phang2}{cmd:. regress weight length, noconstant}{p_end}

{pstd}模型已经有常数{p_end}
{phang2}{cmd:. regress weight length bn.foreign, hascons}{p_end}

{title:示例:  使用稳健标准误的回归}

        {hline}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. generate gpmw = ((1/mpg)/weight)*100*1000}{p_end}
{phang2}{cmd:. regress gpmw foreign}{p_end}
{phang2}{cmd:. regress gpmw foreign, vce(robust)}{p_end}
{phang2}{cmd:. regress gpmw foreign, vce(hc2)}{p_end}
{phang2}{cmd:. regress gpmw foreign, vce(hc3)}{p_end}
        {hline}
{phang2}{cmd:. webuse regsmpl, clear}{p_end}
{phang2}{cmd:. regress ln_wage age c.age#c.age tenure, vce(cluster id)}{p_end}
        {hline}

{title:示例:  加权回归}

{phang2}{cmd:. sysuse census}{p_end}
{phang2}{cmd:. regress death medage i.region [aw=pop]}{p_end}

{title:示例:  使用调查数据的线性回归}

{pstd}设置{p_end}
{phang2}{cmd:. webuse highschool}

{pstd}使用调查数据进行线性回归{p_end}
{phang2}{cmd:. svy: regress weight height}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. generate male = sex == 1 if !missing(sex)}

{pstd}对子群体使用调查数据进行线性回归{p_end}
{phang2}{cmd:. svy, subpop(male): regress weight height}{p_end}

{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=HafqFSB9x70":简单线性回归在Stata中的应用}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:regress} 将以下内容存储在 {cmd:e()} 中:

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差的自由度{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的 R 平方{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(ll)}}在额外假设下的对数似然，假定是独立同分布的正态误差{p_end}
{synopt:{cmd:e(ll_0)}}对数似然，仅常数模型{p_end}
{synopt:{cmd:e(N_clust)}}群集数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:regress}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(model)}}{cmd:ols}{p_end}
{synopt:{cmd:e(title)}}当 {cmd:vce()} 不是 {cmd:ols} 时的估计输出标题{p_end}
{synopt:{cmd:e(clustvar)}}群集变量的名称{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}由 {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{marker references}{...}
{title:参考文献}

{marker AP2009}{...}
{phang}
Angrist, J. D., 和 J.-S. Pischke. 2009.
{browse "http://www.stata.com/bookstore/mhe.html":{it:大部分无害的计量经济学: 实证主义者的伴侣}.}
普林斯顿，New Jersey: 普林斯顿大学出版社.

{marker DM1993}{...}
{phang}
Davidson, R., 和 J. G. MacKinnon. 1993.
{browse "http://www.stata.com/bookstore/eie.html":{it:经济计量学中的估计与推断}.}
纽约: 牛津大学出版社.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <regress.sthlp>}