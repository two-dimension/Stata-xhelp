{smcl}
{* *! version 1.3.9  26apr2019}{...}
{viewerdialog clogit "dialog clogit"}{...}
{viewerdialog "svy: clogit" "dialog clogit, message(-svy-) name(svy_clogit)"}{...}
{vieweralsosee "[R] clogit" "mansection R clogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] clogit postestimation" "help clogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: clogit" "help bayes clogit"}{...}
{vieweralsosee "[CM] cmclogit" "help cmclogit_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[CM] nlogit" "help nlogit_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{vieweralsosee "[R] scobit" "help scobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{viewerjumpto "Syntax" "clogit_zh##syntax"}{...}
{viewerjumpto "Menu" "clogit_zh##menu"}{...}
{viewerjumpto "Description" "clogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "clogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "clogit_zh##options"}{...}
{viewerjumpto "Examples" "clogit_zh##examples"}{...}
{viewerjumpto "Stored results" "clogit_zh##results"}{...}
{viewerjumpto "Reference" "clogit_zh##reference"}
{help clogit:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] clogit} {hline 2}}条件（固定效应）逻辑回归{p_end}
{p2col:}({mansection R clogit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:clogit} 
{depvar} 
[{indepvars}] 
{ifin}
[{it:{help clogit##weight:权重}}]
{cmd:,} 
{bind:{cmdab:gr:oup:(}{varname}{cmd:)} [{it:选项}]}

{phang}
{it:depvar} 被视为二元变量，不论其值；{it:depvar} 等于非零且非缺失（通常等于 1）表示积极结果，而 {it:depvar} 等于 0 表示消极结果。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opth gr:oup(varname)}}匹配组变量{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，其系数约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}
{synopt :{opt nonest}}不检查面板是否嵌套于集群中{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help clogit##display_options:显示选项}}}控制
包括帮助短描述显示选项

{syntab:最大化}
{synopt :{it:{help clogit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包括帮助短描述系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt group(varname)} 是必需的。{p_end}
包括帮助特征变量列表
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fp}、{opt jackknife}、{opt mfp}、{opt mi estimate}、{opt nestreg}、{opt rolling}、{opt statsby}、{opt stepwise} 和 {opt svy} 是允许的；见 {help prefix_zh}。
更多详细信息，请参阅 {manhelp bayes_clogit BAYES:bayes: clogit}.{p_end}
包括帮助 vce_mi
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{p 4 6 2}
{opt vce()}、{opt nonest} 和权重与 {help svy_zh} 前缀不允许使用。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}、{opt iweight} 和 {opt pweight} 
（参见 {help weight_zh}），但它们被解释为适用于整体组，而非单个观察值。参见 {mansection R clogitRemarksandexamplesUseofweights:{it:权重的使用}}在 {bf:[R] clogit} 中。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
查看 {manhelp clogit_postestimation R:clogit 后续估计} 以获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计> 二元结果 > 条件逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:clogit} 为匹配的病例对照数据拟合条件逻辑回归模型，也称为面板数据的固定效应逻辑回归模型。{cmd:clogit} 可以计算稳健和集群稳健的标准误，并调整复杂调查设计的结果。

{pstd}
如果您想拟合 McFadden 的选择模型，请参见 {manhelp cmclogit CM} 
（{help clogit##M1974:McFadden 1974}）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R clogitQuickstart:快速入门}

        {mansection R clogitRemarksandexamples:备注和示例}

        {mansection R clogitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth group(varname)} 是必需的；它指定匹配组的标识变量（数字或字符串）。{opt strata(varname)} 是 {opt group()} 的同义词。

{phang}
{opth offset(varname)}、{opt constraints(constraints)}；
见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

包括帮助 vce_asymptall

{phang}
{opt nonest}，仅在 {cmd:vce(cluster} {it:clustvar}{cmd:)} 可用时，防止检查匹配组是否嵌套于集群中。用户有责任验证标准误是否理论上正确。

{dlgtab:报告}

{phang}
{opt level(#)}；见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt or} 报告估计的系数转化为赔率比，即 exp(b) 而不是 b。标准误和置信区间也会相应转化。此选项影响结果的显示方式，而不影响其估计方式。{opt or} 可以在估计时指定，或在重新播放先前估计的结果时指定。

{phang}
{opt nocnsreport}；见 
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包括帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、 
{opt grad:ient}、{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、{opt nrtol:erance(#)}、
{opt nonrtol:erance} 和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt clogit} 一起使用，但不会显示在对话框中：

{phang}
{opt collinear}、{opt coeflegend}；见 
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lowbirth2}{p_end}

{pstd}拟合条件逻辑回归（匹配病例对照数据）{p_end}
{phang2}{cmd:. clogit low lwt smoke ptd ht ui i.race, group(pairid)}{p_end}

{pstd}重播结果，以报告赔率比而非系数{p_end}
{phang2}{cmd:. clogit, or}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse union}{p_end}

{pstd}拟合条件逻辑回归（面板数据）{p_end}
{phang2}{cmd:. clogit union age grade not_smsa, group(idcode)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:clogit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_drop)}}因所有结果为正或所有结果为负而丢弃的观察数{p_end}
{synopt:{cmd:e(N_group_drop)}}因所有结果为正或所有结果为负而丢弃的组数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:clogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(group)}}{cmd:group()} 变量的名称{p_end}
{synopt:{cmd:e(multiple)}}如果组内有多个正结果，则为 {cmd:multiple}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许进行的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许进行的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}默认的 {opt predict()} 规范用于 {cmd:margins}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 按 {cmd:asbalanced} 处理{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 按 {cmd:asobserved} 处理{p_end}

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


{marker reference}{...}
{title:参考文献}

{marker M1974}{...}
{phang}
McFadden, D. L. 1974. 条件逻辑分析定性选择行为。在 {it:计量经济学前沿}，由 P. Zarembka 编辑，105-142。
纽约：学术出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <clogit.sthlp>}