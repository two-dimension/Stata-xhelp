{smcl}
{* *! version 1.0.10  04apr2019}{...}
{viewerdialog eregress "dialog eregress"}{...}
{viewerdialog xteregress "dialog xteregress"}{...}
{viewerdialog "svy: eregress" "dialog eregress, message(-svy-) name(svy_eregress)"}{...}
{vieweralsosee "[ERM] eregress" "mansection ERM eregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eregress postestimation" "help eregress postestimation"}{...}
{vieweralsosee "[ERM] eregress predict" "help eregress predict"}{...}
{vieweralsosee "[ERM] predict advanced" "help erm predict advanced"}{...}
{vieweralsosee "[ERM] predict treatment" "help erm predict treatment"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] estat teffects" "help erm estat teffects"}{...}
{vieweralsosee "[ERM] Intro 9" "mansection ERM Intro9"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] etregress" "help etregress_zh"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtheckman" "help xtheckman_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtivreg" "help xtivreg_zh"}{...}
{viewerjumpto "Syntax" "eregress_zh##syntax"}{...}
{viewerjumpto "Menu" "eregress_zh##menu"}{...}
{viewerjumpto "Description" "eregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "eregress_zh##linkspdf"}{...}
{viewerjumpto "Options" "eregress_zh##options"}{...}
{viewerjumpto "Examples" "eregress_zh##examples"}{...}
{viewerjumpto "Stored results" "eregress_zh##results"}
{help eregress:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[ERM] eregress} {hline 2}}扩展线性回归{p_end}
{p2col:}({mansection ERM eregress:查看完整PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{pstd}
带有内生协变量的基本线性回归

{p 8 16 2}
{cmd:eregress}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:endog:enous(}{help eregress##enspec:{it:depvars}_en} {cmd:=}
    {help eregress##enspec:{it:varlist}_en}{cmd:)}
[{help eregress##synoptions:{it:options}}]


{pstd}
带有内生处理分配的基本线性回归

{p 8 16 2}
{cmd:eregress}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:entr:eat(}{help eregress##entrspec:{it:depvar}_tr}
   [{cmd:=} {help eregress##entrspec:{it:varlist}_tr}]{cmd:)}
[{help eregress##synoptions:{it:options}}]


{pstd}
带有外生处理分配的基本线性回归

{p 8 16 2}
{cmd:eregress}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:extr:eat(}{help eregress##extrspec:{it:tvar}}{cmd:)}
[{help eregress##synoptions:{it:options}}]


{pstd}
带有样本选择的基本线性回归

{p 8 16 2}
{cmd:eregress}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:sel:ect(}{help eregress##selspec:{it:depvar}_s} {cmd:=}
    {help eregress##selspec:{it:varlist}_s}{cmd:)}
[{help eregress##synoptions:{it:options}}]


{pstd}
带有Tobit样本选择的基本线性回归

{p 8 16 2}
{cmd:eregress}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:tobitsel:ect(}{help eregress##tselspec:{it:depvar}_s} {cmd:=}
    {help eregress##tselspec:{it:varlist}_s}{cmd:)}
[{help eregress##synoptions:{it:options}}]


{pstd}
带有随机效应的基本线性回归

{p 8 16 2}
{cmd:xteregress}
{depvar}
[{indepvars}]
[{cmd:,} {help eregress##synoptions:{it:options}}]



{pstd}
结合内生协变量、处理和选择的线性回归

{p 8 16 2}
{cmd:eregress}
{depvar}
[{indepvars}]
{ifin}
[{help eregress##weight:{it:weight}}]
[{cmd:,} {help eregress##extensions:{it:extensions}}
{help eregress##synoptions:{it:options}}]


{pstd}
结合随机效应、内生协变量、处理和选择的线性回归

{p 8 16 2}
{cmd:xteregress}
{depvar}
[{indepvars}]
{ifin}
[{cmd:,} {help eregress##extensions:{it:extensions}}
{help eregress##synoptions:{it:options}}]


{marker extensions}{...}
{synoptset 26 tabbed}{...}
{synopthdr:扩展}
{synoptline}
{syntab :模型}
{synopt :{opth endog:enous(eregress##enspec:enspec)}}内生协变量的模型; 可以重复使用{p_end}
{synopt :{opth entr:eat(eregress##entrspec:entrspec)}}内生处理分配的模型{p_end}
{synopt :{opth extr:eat(eregress##extrspec:extrspec)}}外生处理{p_end}
{synopt :{opth sel:ect(eregress##selspec:selspec)}}选择的概率模型{p_end}
{synopt :{opth tobitsel:ect(eregress##tselspec:tselspec)}}Tobit选择模型{p_end}
{synoptline}

{marker synoptions}{...}
{synopthdr}
{synoptline}
{syntab :模型}
INCLUDE help erm_model_tab

{syntab :SE/稳健性}
INCLUDE help erm_vce_tab

{syntab :报告}
INCLUDE help erm_report_tab
{synopt :{it:{help eregress##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:集成}
INCLUDE help erm_integration_tab

{syntab :最大化}
{synopt :{it:{help eregress##maximize_options:maximize_options}}}控制最大化过程; 很少使用{p_end}

{synopt :{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker enspec}{...}
{phang}
{it:enspec} 是 {depvars}_en {cmd:=} {varlist}_en
    [{cmd:,} {help eregress##enopts:{it:enopts}}]

{pmore}
其中 {it:depvars}_en 是内生协变量的列表。每个变量在
{it:depvars}_en 使用常见的 {it:varlist}_en 和选项来指定内生协变量模型。

{marker entrspec}{...}
{phang}
{it:entrspec} 是 {depvar}_tr [{cmd:=} {varlist}_tr]
    [{cmd:,} {help eregress##entropts:{it:entropts}}]

{pmore}
其中 {it:depvar}_tr 是指示处理分配的变量。
{it:varlist}_tr 是预测处理分配的协变量列表。

{marker extrspec}{...}
{phang}
{it:extrspec} 是 {it:tvar}
    [{cmd:,} {help eregress##extropts:{it:extropts}}]

{pmore}
其中 {it:tvar} 是指示处理分配的变量。

{marker selspec}{...}
{phang}
{it:selspec} 是 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help eregress##selopts:{it:selopts}}]

{pmore}
其中 {it:depvar}_s 是指示选择状态的变量。
{it:depvar}_s 必须编码为 0，表示该观察未被选择，或 1，表示该观察被选择。{it:varlist}_s 是预测选择的协变量列表。

{marker tselspec}{...}
{phang}
{it:tselspec} 是 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help eregress##tselopts:{it:tselopts}}]

{pmore}
其中 {it:depvar}_s 是一个连续变量。
{it:varlist}_s 是预测 {it:depvar}_s 的协变量列表。
{it:depvar}_s 的审查状态指示选择，其中一个被审查的
{it:depvar}_s 表示该观察未被选择，而一个未被审查的 {it:depvar}_s 表示该观察被选择。

{synoptset 26 tabbed}{...}
INCLUDE help erm_reg_enopts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteregress} 时可用。

INCLUDE help erm_reg_entropts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteregress} 时可用。

INCLUDE help erm_reg_extropts_table

INCLUDE help erm_selopts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteregress} 时可用。

INCLUDE help erm_tselopts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteregress} 时可用。
{p2colreset}{...}

{p 4 6 2}
{it:indepvars},
{it:varlist}_en,
{it:varlist}_tr,
和
{it:varlist_s}
可以包含因子变量; 请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar},
{it:indepvars},
{it:depvars}_en,
{it:varlist}_en,
{it:depvar}_tr, 
{it:varlist}_tr,
{it:tvar},
{it:depvar_s},
和
{it:varlist_s}
可以包含时间序列操作符; 请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bootstrap}, {opt by}, {opt jackknife}, 和 {opt statsby}
允许与 {cmd:eregress} 和 {cmd:xteregress} 一起使用。
{cmd:rolling} 和 {cmd:svy} 允许与 {cmd:eregress} 一起使用。
请参见 {help prefix_zh}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用.{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不允许使用.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s, {opt iweight}s, 和 {opt pweight}s 允许与 {cmd:eregress} 一起使用; 请参见 {help weight_zh} .{p_end}
{p 4 6 2}
{cmd:reintpoints()} 和 {cmd:reintmethod()} 仅在 {cmd:xteregress} 时可用.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不在对话框中显示.{p_end}
{p 4 6 2}
请参见 {manhelp eregress_postestimation ERM:eregress postestimation} 获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{pstd}
{bf:eregress}

{phang2}
{bf:统计 > 内生协变量 > 添加选择和处理的模型 >}
{bf:线性回归}

{pstd}
{bf:xteregress}

{phang2}
{bf:统计 > 纵向/面板数据 > 内生协变量 > 添加选择和处理的模型 >}
{bf:线性回归 (RE)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:eregress} 拟合一个线性回归模型，适应任何组合的内生协变量、非随机处理分配和内生样本选择。允许连续、二元和有序的内生协变量。处理分配可以是内生的或外生的。可以使用 probit 或 tobit 模型来考虑内生样本选择。

{pstd}
{cmd:xteregress} 拟合一个随机效应线性回归模型，适应内生协变量、处理和选择的方式与 {cmd:eregress} 相同，并且考虑到面板或组内观察的相关性。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ERM eregressQuickstart:快速入门}

        {mansection ERM eregressRemarksandexamples:备注和示例}

        {mansection ERM eregressMethodsandformulas:方法和公式}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

INCLUDE help erm_model_optdes

{dlgtab:SE/稳健性}

INCLUDE help erm_vce_optdes

{dlgtab:报告}

INCLUDE help erm_reporting_optdes

{dlgtab:集成}

INCLUDE help erm_int_optdes

{marker maximize_options}{...}
{dlgtab:最大化}

INCLUDE help erm_max_optdes

{pmore}
{cmd:eregress} 的默认技术是 {cmd:technique(nr)}. {cmd:xteregress} 的默认技术是 {cmd:technique(bhhh 10 nr 2)}.

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认的
{it:vcetype} 为 {cmd:vce(opg)}.

{pstd}
以下选项适用于 {opt eregress} 和 {opt xteregress}，但未显示在对话框中：

{phang}
{opt collinear}, {opt coeflegend}; 参见
     {helpb estimation options:[R] Estimation options}.


{marker examples}{...}
{title:示例}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10}

{pstd}
带有连续内生协变量 {cmd:hsgpa} 的线性回归{p_end}
{phang2}
{cmd:. eregress gpa income, endogenous(hsgpa = income i.hscomp)}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse wageed}

{pstd}
带有二元内生协变量 {cmd:college} 的线性回归{p_end}
{phang2}
{cmd:. eregress wage c.age##c.age tenure, endogenous(college = i.peduc, probit)}

{pstd}
带有外生处理 {cmd:college} 的线性回归{p_end}
{phang2}
{cmd:. eregress wage c.age##c.age tenure, extreat(college)}

{pstd}
使用稳健标准误{p_end}
{phang2}
{cmd:. eregress wage c.age##c.age tenure, extreat(college) vce(robust)}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10re}{p_end}
{phang2}
{cmd:. xtset collegeid}

{pstd}
随机效应线性回归{p_end}
{phang2}
{cmd:. xteregress gpa income}

{pstd}
带有内生协变量 {cmd:hsgpa} 的随机效应回归{p_end}
{phang2}
{cmd:. xteregress gpa income, endogenous(hsgpa = income i.hscomp)}

{pstd}
带有内生样本选择的随机效应回归{p_end}
{phang2}
{cmd:. xteregress gpa income, select(graduate=income i.program)}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:eregress} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_selected)}}选择的观察数量{p_end}
{synopt:{cmd:e(N_nonselected)}}未选择的观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别数量，序数{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt :{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(n_quad)}}多变量正态的积分点数量{p_end}
{synopt:{cmd:e(n_quad3)}}三变量正态的积分点数量{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:eregress}{p_end}
{synopt:{cmd:e(cmdline)}}按原样输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(tsel_ll)}}Tobit选择的左审查限{p_end}
{synopt:{cmd:e(tsel_ul)}}Tobit选择的右审查限{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的偏移量，
其中 {it:#} 由输出中的方程顺序确定{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化程序是
执行最大化还是最小化{p_end}
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

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别，
序数{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:xteregress} 将以下内容存储在 {cmd:e()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数量{p_end}
{synopt:{cmd:e(N_selected)}}选择的观察数量{p_end}
{synopt:{cmd:e(N_nonselected)}}未选择的观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别数量，序数{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt :{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(n_quad)}}多变量正态的积分点数量{p_end}
{synopt:{cmd:e(n_quad3)}}三变量正态的积分点数量{p_end}
{synopt :{cmd:e(n_requad)}}随机效应的积分点数量{p_end}
{synopt :{cmd:e(g_min)}}最小组大小{p_end}
{synopt :{cmd:e(g_avg)}}平均组大小{p_end}
{synopt :{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xteregress}{p_end}
{synopt:{cmd:e(cmdline)}}按原样输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(tsel_ll)}}Tobit选择的左审查限{p_end}
{synopt:{cmd:e(tsel_ul)}}Tobit选择的右审查限{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的偏移量，
其中 {it:#} 由输出中的方程顺序确定{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(reintmethod)}}随机效应的集成方法{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化程序是
执行最大化还是最小化{p_end}
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

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别，
序数{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eregress.sthlp>}