{smcl}
{* *! version 1.0.11  04apr2019}{...}
{viewerdialog eoprobit "dialog eoprobit"}{...}
{viewerdialog xteoprobit "dialog xteoprobit"}{...}
{viewerdialog "svy: eoprobit" "dialog eoprobit, message(-svy-) name(svy_eoprobit)"}{...}
{vieweralsosee "[ERM] eoprobit" "mansection ERM eoprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eoprobit postestimation" "help eoprobit postestimation"}{...}
{vieweralsosee "[ERM] eoprobit predict" "help eoprobit predict"}{...}
{vieweralsosee "[ERM] predict advanced" "help erm predict advanced"}{...}
{vieweralsosee "[ERM] predict treatment" "help erm predict treatment"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] estat teffects" "help erm estat teffects"}{...}
{vieweralsosee "[ERM] Intro 9" "mansection ERM Intro9"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckoprobit" "help heckoprobit_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtoprobit" "help xtoprobit_zh"}{...}
{viewerjumpto "Syntax" "eoprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "eoprobit_zh##menu"}{...}
{viewerjumpto "Description" "eoprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "eoprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "eoprobit_zh##options"}{...}
{viewerjumpto "Examples" "eoprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "eoprobit_zh##results"}
{help eoprobit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[ERM] eoprobit} {hline 2}}扩展有序概率回归{p_end}
{p2col:}({mansection ERM eoprobit:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{pstd}
带有内生协变量的基本有序概率回归

{p 8 15 2}
{cmd:eoprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:endog:enous(}{help eoprobit##enspec:{it:depvars}_en} {cmd:=}
    {help eoprobit##enspec:{it:varlist}_en}{cmd:)}
[{help eoprobit##synoptions:{it:options}}]


{pstd}
带有内生处理分配的基本有序概率回归

{p 8 15 2}
{cmd:eoprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:entr:eat(}{help eoprobit##entrspec:{it:depvar}_tr}
   [{cmd:=} {help eoprobit##entrspec:{it:varlist}_tr}]{cmd:)}
[{help eoprobit##synoptions:{it:options}}]


{pstd}
带有外生处理分配的基本有序概率回归

{p 8 15 2}
{cmd:eoprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:extr:eat(}{help eoprobit##extrspec:{it:tvar}}{cmd:)}
[{help eoprobit##synoptions:{it:options}}]


{pstd}
带有样本选择的基本有序概率回归

{p 8 15 2}
{cmd:eoprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:sel:ect(}{help eoprobit##selspec:{it:depvar}_s} {cmd:=}
    {help eoprobit##selspec:{it:varlist}_s}{cmd:)}
[{help eoprobit##synoptions:{it:options}}]


{pstd}
带有 Tobit 样本选择的基本有序概率回归

{p 8 15 2}
{cmd:eoprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:tobitsel:ect(}{help eoprobit##tselspec:{it:depvar}_s} {cmd:=}
    {help eoprobit##tselspec:{it:varlist}_s}{cmd:)}
[{help eoprobit##synoptions:{it:options}}]


{pstd}
带有随机效应的基本有序概率回归

{p 8 15 2}
{cmd:xteoprobit}
{depvar}
[{indepvars}]
[{cmd:,} {help eoprobit##synoptions:{it:options}}]



{pstd}
结合内生协变量、处理和选择的有序概率回归

{p 8 15 2}
{cmd:eoprobit}
{depvar}
[{indepvars}]
{ifin}
[{help eoprobit##weight:{it:weight}}]
[{cmd:,} {help eoprobit##extensions:{it:extensions}}
{help eoprobit##synoptions:{it:options}}]


{pstd}
结合随机效应、内生协变量、处理和选择的有序概率回归

{p 8 15 2}
{cmd:xteoprobit}
{depvar}
[{indepvars}]
{ifin}
[{cmd:,} {help eoprobit##extensions:{it:extensions}}
{help eoprobit##synoptions:{it:options}}]


{marker extensions}{...}
{synoptset 25 tabbed}{...}
{synopthdr:扩展}
{synoptline}
{syntab:模型}
{synopt :{opth endog:enous(eoprobit##enspec:enspec)}}内生协变量的模型；可以重复使用{p_end}
{synopt :{opth entr:eat(eoprobit##entrspec:entrspec)}}内生处理分配的模型{p_end}
{synopt :{opth extr:eat(eoprobit##extrspec:extrspec)}}外生处理{p_end}
{synopt :{opth sel:ect(eoprobit##selspec:selspec)}}选择的 Probit 模型{p_end}
{synopt :{opth tobitsel:ect(eoprobit##tselspec:tselspec)}}选择的 Tobit 模型{p_end}
{synoptline}

{marker synoptions}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{cmdab:off:set(}{varname}_o{cmd:)}}包括 {it:varname}_o，并使系数约束为 1{p_end}
{synopt :{opth const:raints(numlist)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健}
包括 help erm_vce_tab

{syntab :报告}
包括 help erm_report_tab
{synopt :{it:{help eoprobit##display_options:display_options}}}控制
包括 help shortdes-displayoptall

{syntab :积分}
包括 help erm_integration_tab

{syntab :最大化}
{synopt :{it:{help eoprobit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt col:linear}}保持共线变量{p_end}
包括 help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker enspec}{...}
{phang}
{it:enspec} 是 {depvars}_en {cmd:=} {varlist}_en
    [{cmd:,} {help eoprobit##enopts:{it:enopts}}]

{pmore}
其中 {it:depvars}_en 是内生协变量的列表。每个 {it:depvars}_en 中的变量指定使用共同的 {it:varlist}_en 和选项的内生协变量模型。

{marker entrspec}{...}
{phang}
{it:entrspec} 是 {depvar}_tr [{cmd:=} {varlist}_tr]
    [{cmd:,} {help eoprobit##entropts:{it:entropts}}]

{pmore}
其中 {it:depvar}_tr 是指示处理分配的变量。
{it:varlist}_tr 是预测处理分配的协变量列表。

{marker extrspec}{...}
{phang}
{it:extrspec} 是 {it:tvar}
    [{cmd:,} {help eoprobit##extropts:{it:extropts}}]

{pmore}
其中 {it:tvar} 是指示处理分配的变量。

{marker selspec}{...}
{phang}
{it:selspec} 是 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help eoprobit##selopts:{it:selopts}}]

{pmore}
其中 {it:depvar}_s 是指示选择状态的变量。
{it:depvar}_s 必须编码为 0，表示观察值未被选择，或 1，表示观察值已被选择。{it:varlist}_s 是预测选择的协变量列表。

{marker tselspec}{...}
{phang}
{it:tselspec} 是 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help eoprobit##tselopts:{it:tselopts}}]

{pmore}
其中 {it:depvar}_s 是连续变量。
{it:varlist}_s 是预测 {it:depvar}_s 的协变量列表。
{it:depvar}_s 的删失状态指示选择，其中删失的 {it:depvar}_s 表示观察值未被选择，而未删失的 {it:depvar}_s 表示观察值已被选择。

{synoptset 26 tabbed}{...}
{marker enopts}{...}
{synopthdr:enopts}
{synoptline}
{syntab :模型}
{synopt :{opt prob:it}}将内生协变量视为二元变量{p_end}
{synopt :{opt oprob:it}}将内生协变量视为有序变量{p_end}
{synopt :{opt pocorr:elation}}为每个二元或有序内生协变量的每个水平估计不同的相关性{p_end}
{synopt :{opt nom:ain}}不将内生协变量添加到主方程{p_end}
{synopt :{opt nore}}不在内生协变量模型中包含随机效应{p_end}
{synopt :{opt nocons:tant}}压制常数项{p_end}
{synoptline}
{p 4 6 2}
{opt nore} 仅在 {cmd:xteoprobit} 下可用。

{marker entropts}{...}
{synopthdr:entropts}
{synoptline}
{syntab :模型}
{synopt :{opt pocorr:elation}}为每个潜在结果估计不同的相关性{p_end}
{synopt :{opt nom:ain}}不将处理指示添加到主方程{p_end}
{synopt :{opt nocutsint:eract}}不将处理与切点相互作用{p_end}
{synopt :{opt noint:eract}}不将处理与主方程中的协变量相互作用{p_end}
{synopt :{opt nore}}不在内生处理模型中包含随机效应{p_end}
{synopt :{opt nocons:tant}}压制常数项{p_end}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包含在模型中，系数约束为 1{p_end}
{synoptline}
{p 4 6 2}
{opt nore} 仅在 {cmd:xteoprobit} 下可用。

{marker extropts}{...}
{synopthdr:extropts}
{synoptline}
{syntab :模型}
{synopt :{opt pocorr:elation}}为每个潜在结果估计不同的相关性{p_end}
{synopt :{opt nom:ain}}不将处理指示添加到主方程{p_end}
{synopt :{opt nocutsint:eract}}不将处理与切点相互作用{p_end}
{synopt :{opt noint:eract}}不将处理与主方程中的协变量相互作用{p_end}
{synoptline}

包括 help erm_selopts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteoprobit} 下可用。

包括 help erm_tselopts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteoprobit} 下可用。
{p2colreset}{...}

{p 4 6 2}
{it:indepvars},
{it:varlist}_en,
{it:varlist}_tr,
和
{it:varlist_s}
可以包含因子变量；请参阅 {help fvvarlist_zh}.{p_end}
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
可以包含时间序列操作；请参阅 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bootstrap}, {opt by}, {opt jackknife}, 和 {opt statsby}
与 {cmd:eoprobit} 和 {cmd:xteoprobit} 配合使用是允许的。
{cmd:rolling} 和 {opt svy} 与 {cmd:eoprobit} 一起使用是允许的。
请参阅 {help prefix_zh}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀是不允许的.{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀是不允许的.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是
与 {cmd:eoprobit} 兼容的；请参阅 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:reintpoints()} 和 {cmd:reintmethod()} 仅在
{cmd:xteoprobit} 下可用.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参阅 {manhelp eoprobit_postestimation ERM:eoprobit postestimation} 以获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{pstd}
{bf:eoprobit}

{phang2}
{bf:统计 > 内生协变量 > 添加选择和处理的模型 >}
{bf:有序概率回归}

{pstd}
{bf:xteoprobit}

{phang2}
{bf:统计 > 纵向/面板数据 > 内生协变量 > 添加选择和处理的模型 >}
{bf:有序概率回归 (RE)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:eoprobit} 适应有序概率回归模型，该模型容纳内生协变量、非随机处理分配和内生样本选择的任意组合。允许使用连续、二元和有序内生协变量。处理分配可以是内生的或外生的。可以使用 Probit 或 Tobit 模型来处理内生样本选择。

{pstd}
{cmd:xteoprobit} 适应随机效应有序概率回归模型，该模型以与 {cmd:eoprobit} 相同的方式容纳内生协变量、处理和样本选择，并且还考虑到面板内或组内观察之间的相关性。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM eoprobitQuickstart:快速开始}

        {mansection ERM eoprobitRemarksandexamples:备注和示例}

        {mansection ERM eoprobitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt endogenous(enspec)}, 
{opt entreat(entrspec)}, 
{opt extreat(extrspec)}, 
{opt select(selspec)}, 
{opt tobitselect(tselspec)}, {cmd:re};
请参见 {manhelp erm_options ERM:ERM 选项}。 

{phang}
{opt offset(varname_o)}, 
{opth constraints(numlist)}; 
请参见 {manhelp estimation_options R:估计选项}。 

{dlgtab:标准误/稳健}

包括 help erm_vce_optdes

{dlgtab:报告}

包括 help erm_reporting_optdes

{dlgtab:积分}

包括 help erm_int_optdes

{marker maximize_options}{...}
{dlgtab:最大化}

包括 help erm_max_optdes

{pmore}
{cmd:eoprobit} 的默认技术为 {cmd:technique(nr)}。{cmd:xteoprobit} 的默认技术为 {cmd:technique(bhhh 10 nr 2)}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项与 {opt eoprobit} 和 {opt xteoprobit} 一起可用，但不显示在对话框中：

{phang}
{opt collinear}, {opt coeflegend}; 参见
     {helpb 估计选项:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}
准备{p_end}
{phang2}
{cmd:. webuse womenhlth}

{pstd}
带有内生处理的有序概率回归{p_end}
{phang2}
{cmd:. eoprobit health i.exercise grade, entreat(insured = grade i.workschool)}

{pstd}
使用稳健标准误{p_end}
{phang2}
{cmd:. eoprobit health i.exercise grade, entreat(insured = grade i.workschool)}
{cmd:vce(robust)}

{pstd}
与上述相同，并考虑内生样本选择{p_end}
{phang2}
{cmd:. eoprobit health i.exercise c.grade,}
{cmd:entreat(insured = grade i.workschool)}
{cmd:select(select = i.insured i.regcheck) vce(robust)}

    {hline}
{pstd}
准备{p_end}
{phang2}
{cmd:. webuse womenhlthre}{p_end}
{phang2}
{cmd:. xtset personid year}

{pstd}
随机效应有序概率回归{p_end}
{phang2}
{cmd:. xteoprobit health exercise grade}

{pstd}
带有内生处理的随机效应有序概率回归{p_end}
{phang2}
{cmd:. xteoprobit health exercise grade, entreat(insured = grade i.workschool)}

{pstd}
带有内生样本选择的随机效应有序概率回归{p_end}
{phang2}
{cmd:. xteoprobit health exercise grade, select(select = grade i.regcheck)}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:eoprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(N_selected)}}被选择的观察数量{p_end}
{synopt :{cmd:e(N_nonselected)}}未选择的观察数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别数量，序数{p_end}
{synopt :{cmd:e(k_eq)}}{cmd:e(b)}中的方程数量{p_end}
{synopt :{cmd:e(k_eq_model)}}总体模型测试中的方程数量{p_end}
{synopt :{cmd:e(k_dv)}}因变量数量{p_end}
{synopt :{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt :{cmd:e(df_m)}}模型的自由度{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(N_clust)}}聚类数量{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt :{cmd:e(n_quad)}}多元正态的积分点数量{p_end}
{synopt :{cmd:e(n_quad3)}}三元正态的积分点数量{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛了，{cmd:0} 如果没有{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:eoprobit}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量名称{p_end}
{synopt :{cmd:e(tsel_ll)}}左删失的 Tobit 选择限制{p_end}
{synopt :{cmd:e(tsel_ul)}}右删失的 Tobit 选择限制{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt :{cmd:e(offset}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的偏移量，
其中 {it:#} 由输出中的方程顺序确定{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方测试类型{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标记 Std. Err. 的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否执行最大化或最小化{p_end}
{synopt :{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt :{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {cmd:predict()} 规范{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 表示为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 表示为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别，
序数{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eoprobit.sthlp>}