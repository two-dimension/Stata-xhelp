{smcl}
{* *! version 1.0.7  06feb2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt hybrid" "mansection IRT irthybrid"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt hybrid postestimation" "help irt hybrid postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt 1pl" "help irt 1pl"}{...}
{vieweralsosee "[IRT] irt 2pl" "help irt 2pl"}{...}
{vieweralsosee "[IRT] irt 3pl" "help irt 3pl"}{...}
{vieweralsosee "[IRT] irt constraints" "help irt constraints"}{...}
{vieweralsosee "[IRT] irt grm" "help irt grm"}{...}
{vieweralsosee "[IRT] irt nrm" "help irt nrm"}{...}
{vieweralsosee "[IRT] irt pcm" "help irt pcm"}{...}
{vieweralsosee "[IRT] irt rsm" "help irt rsm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "irt hybrid##syntax"}{...}
{viewerjumpto "Menu" "irt hybrid##menu_irt"}{...}
{viewerjumpto "Description" "irt hybrid##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_hybrid_zh##linkspdf"}{...}
{viewerjumpto "mopts" "irt hybrid##mopts"}{...}
{viewerjumpto "Options" "irt hybrid##options"}{...}
{viewerjumpto "Examples" "irt hybrid##examples"}{...}
{viewerjumpto "Stored results" "irt hybrid##results"}
{help irt_hybrid:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[IRT] irt hybrid} {hline 2}}混合IRT模型{p_end}
{p2col:}({mansection IRT irthybrid:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irt hybrid}
{cmd:(}{it:模型} {it:变量列表_1} [{cmd:,} {it:mopts}]{cmd:)}
{cmd:(}{it:模型} {it:变量列表_2} [{cmd:,} {it:mopts}]{cmd:)} [...]
{ifin}
[{help irt hybrid##weight:{it:权重}}]
[{cmd:,} {it:选项}]

{synoptset 16}{...}
{synopthdr:模型}
{synoptline}
{synopt :{helpb irt 1pl:1pl}}单参数逻辑模型{p_end}
{synopt :{helpb irt 2pl:2pl}}双参数逻辑模型{p_end}
{synopt :{helpb irt 3pl:3pl}}三参数逻辑模型{p_end}
{synopt :{helpb irt grm:grm}}分级响应模型{p_end}
{synopt :{helpb irt pcm:pcm}}部分信用模型{p_end}
{synopt :{helpb irt pcm:gpcm}}广义部分信用模型{p_end}
{synopt :{helpb irt rsm:rsm}}评分量表模型{p_end}
{synopt :{helpb irt nrm:nrm}}名义响应模型{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 26}{...}
{synopthdr:mopts}
{synoptline}
{synopt:{opth cns:(irt_constraints##syntax:指定)}}应用指定的参数约束{p_end}
{synopt :{opt sepg:uessing}}为每个项目估计单独的伪猜测参数；仅在{cmd:3pl}模型下允许{p_end}
{synopt :{opt gsepg:uessing}}为每个组估计单独的伪猜测参数；仅在{cmd:3pl}模型下允许{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opth group(varname)}}对不同组拟合模型{p_end}

{syntab:模型}
{synopt:{opt list:wise}}通过逐列表删除处理缺失值，这意味着如果该观测的任何项目缺失，则整个观测将从估计样本中省略。
默认情况下，所有有效项都包含在似然计算中；仅缺失项被排除。
{p_end}

{syntab:标准误/稳健性}

包括帮助文件opt_irt_vce

{syntab:报告}
包括帮助文件opt_irt_report
{synopt :{help irt_hybrid##display_options:{it:显示选项}}}控制
包括帮助文件opt_irt_display

{syntab:积分}
{synopt :{cmdab:intm:ethod(}{help irt_hybrid##intmethod:{it:积分方法}}{cmd:)}}积分方法{p_end}
包括帮助文件opt_irt_int

{syntab:最大化}
{synopt :{it:{help irt_hybrid##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:startv:alues(}{it:{help irt_hybrid##startvalues:svmethod}}{cmd:)}}获取起始值的方法{p_end}
包括帮助文件opt_irt_nodb
{synoptline}
{p2colreset}{...}

包括帮助文件irt_intmethod_table

包括帮助文件irt_syntax_notes
{p 4 6 2}
请查看 {manhelp irt_hybrid_postestimation IRT:irt hybrid postestimation} 获取估计后可用的功能。


包括帮助文件menu_irt


{marker description}{...}
{title:描述}

{pstd}
{cmd:irt hybrid} 将IRT模型拟合到二元、序数和名义项目的组合上。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irthybridQuickstart:快速开始}

        {mansection IRT irthybridRemarksandexamples:备注和示例}

        {mansection IRT irthybridMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker mopts}{...}
{title:mopts}

{marker cns_option}{...}
{phang}
{opt cns(spec)} 将项目参数约束为固定值或将两个或多个参数约束为相等；详见
{manhelp irt_constraints IRT:irt constraints}。

{phang}
{cmd:sepguessing} 指定为每个项目估计单独的伪猜测参数。此选项仅在{cmd:3pl}模型中允许；有关详细信息，请参见 {manhelp irt_3pl IRT:irt 3pl}。

{phang}
{cmd:gsepguessing} 指定为每个组估计单独的伪猜测参数。此选项仅在组 {cmd:3pl} 模型下允许。


{marker options}{...}
{title:选项}

{marker group_option}{...}
{phang}
{opth group(varname)} 指定模型分别为{it:varname}的不同值进行拟合；详见
{manhelp irt_group IRT:irt, group()}。

{dlgtab:模型}

{phang}
{opt listwise} 通过逐列表删除处理缺失值，这意味着如果该观测的任何项目缺失，则整个观测将从估计样本中省略。
默认情况下，所有有效项都包含在似然计算中；仅缺失项被排除。
{p_end}

{dlgtab:标准误/稳健性}

包括帮助文件irt_vce_opt

{dlgtab:报告}

包括帮助文件irt_display_opts

{dlgtab:积分}

包括帮助文件irt_int_opts

{dlgtab:最大化}

包括帮助文件irt_max_opts

包括帮助文件irt_nodlg_opts


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse science}

{pstd}对项目 {cmd:q1-q3} 拟合NRM，对项目 {cmd:q4} 拟合PCM{p_end}
{phang2}{cmd:. irt hybrid (nrm q1-q3) (pcm q4)}

    {hline}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}

{pstd}对项目 {cmd:q1-q9} 拟合3PL模型，其中每个项目都有自己的伪猜测参数{p_end}
{phang2}{cmd:. irt 3pl q1-q9, sepguessing startvalues(iterate(5))}

{pstd}按伪猜测参数的升序显示估计表{p_end}
{phang2}{cmd:. estat report, sort(c) byparm}

{pstd}对伪猜测参数接近零的五个项目拟合2PL模型，并对剩余的四个项目拟合具有单独伪猜测参数的3PL模型{p_end}
{phang2}{cmd:. irt hybrid (2pl q2 q3 q5 q8 q9)}
        {cmd:(3pl q1 q4 q6 q7, sepguessing),}
        {cmd:startval(iter(5))}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irt} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(irt_k_eq)}}IRT方程数量{p_end}
{synopt:{cmd:e(k_items}{it:#}{cmd:)}}第 {it:#} 个IRT方程中的项目数量{p_end}
{synopt:{cmd:e(sepguess}{it:#}{cmd:)}}若第 {it:#} 个IRT模型包含单独的伪猜测参数则为{cmd:1}{p_end}
{synopt:{cmd:e(k_cat}{it:#}{cmd:)}}第 {it:#} 个项目的类别数量，序数{p_end}
{synopt:{cmd:e(k_out}{it:#}{cmd:)}}第 {it:#} 个项目的结果数量，名义{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(N_groups)}}组数量{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}若目标模型收敛则为{cmd:1}，否则为{cmd:0}{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:irt}{p_end}
{synopt:{cmd:e(cmdline)}}按原样输入的命令{p_end}
{synopt:{cmd:e(model}{it:#}{cmd:)}}第 {it:#} 个方程的IRT模型名称{p_end}
{synopt:{cmd:e(items}{it:#}{cmd:)}}第 {it:#} 个IRT方程中的项目名称{p_end}
{synopt:{cmd:e(depvar)}}所有项目变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(groupvar)}}组变量的名称{p_end}
{synopt:{cmd:e(family}{it:#}{cmd:)}}第 {it:#} 个 {it:项目} 的家庭{p_end}
{synopt:{cmd:e(link}{it:#})}第 {it:#} 个 {it:项目} 的链接{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；指示优化器是否执行最大化或最小化{p_end}
{synopt:{cmd:e(method)}}估计方法： {cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(_N)}}每个项目的样本量{p_end}
{synopt:{cmd:e(b)}}参数向量{p_end}
{synopt:{cmd:e(b_pclass)}}参数类{p_end}
{synopt:{cmd:e(cat}{it:#}{cmd:)}}第 {it:#} 个项目的类别，序数{p_end}
{synopt:{cmd:e(out}{it:#}{cmd:)}}第 {it:#} 个项目的结果，名义{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(groupvalue)}}在 {cmd:e(groupvar)} 中的组值向量{p_end}
{synopt:{cmd:e(nobs)}}每组观察数量的向量{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_hybrid.sthlp>}