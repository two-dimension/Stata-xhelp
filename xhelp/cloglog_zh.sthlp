{smcl}
{* *! version 1.3.8  12dec2018}{...}
{viewerdialog cloglog "dialog cloglog"}{...}
{viewerdialog "svy: cloglog" "dialog cloglog, message(-svy-) name(svy_cloglog)"}{...}
{vieweralsosee "[R] cloglog" "mansection R cloglog"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cloglog postestimation" "help cloglog postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: cloglog" "help bayes cloglog"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] fmm: cloglog" "help fmm cloglog"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "[R] scobit" "help scobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtcloglog" "help xtcloglog_zh"}{...}
{viewerjumpto "Syntax" "cloglog_zh##syntax"}{...}
{viewerjumpto "Menu" "cloglog_zh##menu"}{...}
{viewerjumpto "Description" "cloglog_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cloglog_zh##linkspdf"}{...}
{viewerjumpto "Options" "cloglog_zh##options"}{...}
{viewerjumpto "Examples" "cloglog_zh##examples"}{...}
{viewerjumpto "Stored results" "cloglog_zh##results"}
{help cloglog:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] cloglog} {hline 2}}互补对数-对数回归{p_end}
{p2col:}({mansection R cloglog:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cloglog} 
{depvar} 
[{indepvars}]
{ifin}
[{it:{help cloglog##weight:权重}}]
[{cmd:,} {it: 选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不截距}}抑制常数项{p_end}
{synopt :{opth off:置(varname)}}将 {it:varname} 包含在模型中，系数约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{cmdab:约束(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt ef:orm}}报告指数化的系数{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help cloglog##display_options:显示选项}}}控制
包含帮助简要描述-显示选项全部

{syntab:最大化}
{synopt :{it:{help cloglog##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；见 
{help tsvarlist_zh}。
{p_end}
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fmm}、{opt fp}、{opt jackknife}、{opt mi estimate}、{opt nestreg}、{opt rolling}、{opt statsby}、{opt stepwise} 和 {opt svy} 是允许的；见 {help prefix_zh}。
更多详细信息，请参见 {manhelp bayes_cloglog BAYES:bayes: cloglog} 和 {manhelp fmm_cloglog FMM:fmm: cloglog}。
{p_end}
包含帮助 vce_mi
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用。{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不允许使用。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}、{opt iweight} 和 {opt pweight} 是允许的；
见 {help weight_zh}。
{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用的特性，请参见 {manhelp cloglog_postestimation R:cloglog 后估计}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 互补对数-对数回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cloglog} 拟合二元因变量的互补对数-对数模型，通常对于其中一个结果相对于另一个来说是稀有的。它也可以用于拟合 gompit 模型。{cmd:cloglog} 可以计算稳健的和集群稳健的标准误差，并调整复杂调查设计的结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R cloglogQuickstart:快速入门}

        {mansection R cloglogRemarksandexamples:备注和示例}

        {mansection R cloglogMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}、{opth offset(varname)}；见 
{helpb estimation options:[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观察，并可能导致最大化中的不稳定；见 {manhelp probit R}。

{phang}
{opt constraints(constraints)}；见 
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt eform} 显示指数化的系数及相应的标准误差和置信区间。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、 
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、 
{opt grad:ient}、{opt showstep}、{opt hess:ian}、
{opt showtol:erance}、{opt tol:erance(#)}、
{opt ltol:erance(#)}、{opt nrtol:erance(#)}、
{opt nonrtol:erance} 和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的
{it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt cloglog} 一起使用，但未显示在
对话框中：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}{p_end}

{pstd}拟合互补对数-对数模型{p_end}
{phang2}{cmd:. cloglog low age lwt i.race smoke ptl ht ui}{p_end}

{pstd}回放结果，显示指数化的系数{p_end}
{phang2}{cmd:. cloglog, eform}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合具有稳健方差估计的互补对数-对数模型{p_end}
{phang2}{cmd:. cloglog foreign weight mpg, vce(robust)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cloglog} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(N_f)}}零结果数量{p_end}
{synopt:{cmd:e(N_s)}}非零结果数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}簇数量{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛，则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:cloglog}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方的类型
测试{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行
最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许 {cmd:margins} 的预测{p_end}
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

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cloglog.sthlp>}