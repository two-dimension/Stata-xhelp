{smcl}
{* *! version 1.0.10  04apr2019}{...}
{viewerdialog eprobit "dialog eprobit"}{...}
{viewerdialog xteprobit "dialog xteprobit"}{...}
{viewerdialog "svy: eprobit" "dialog eprobit, message(-svy-) name(svy_eprobit)"}{...}
{vieweralsosee "[ERM] eprobit" "mansection ERM eprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eprobit postestimation" "help eprobit postestimation"}{...}
{vieweralsosee "[ERM] eprobit predict" "help eprobit predict"}{...}
{vieweralsosee "[ERM] predict advanced" "help erm predict advanced"}{...}
{vieweralsosee "[ERM] predict treatment" "help erm predict treatment"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] estat teffects" "help erm estat teffects"}{...}
{vieweralsosee "[ERM] Intro 9" "mansection ERM Intro9"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] biprobit" "help biprobit_zh"}{...}
{vieweralsosee "[R] heckprobit" "help heckprobit_zh"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtprobit" "help xtprobit_zh"}{...}
{viewerjumpto "Syntax" "eprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "eprobit_zh##menu"}{...}
{viewerjumpto "Description" "eprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "eprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "eprobit_zh##options"}{...}
{viewerjumpto "Examples" "eprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "eprobit_zh##results"}
{help eprobit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ERM] eprobit} {hline 2}}扩展 Probit 回归{p_end}
{p2col:}({mansection ERM eprobit:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{pstd}
基本的带内生协变量的 Probit 回归

{p 8 16 2}
{cmd:eprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:endog:enous(}{help eprobit##enspec:{it:depvars}_en} {cmd:=}
    {help eprobit##enspec:{it:varlist}_en}{cmd:)}
[{help eprobit##synoptions:{it:options}}]


{pstd}
基本的带内生治疗分配的 Probit 回归

{p 8 16 2}
{cmd:eprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:entr:eat(}{help eprobit##entrspec:{it:depvar}_tr}
   [{cmd:=} {help eprobit##entrspec:{it:varlist}_tr}]{cmd:)}
[{help eprobit##synoptions:{it:options}}]


{pstd}
基本的带外生治疗分配的 Probit 回归

{p 8 16 2}
{cmd:eprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:extr:eat(}{help eprobit##extrspec:{it:tvar}}{cmd:)}
[{help eprobit##synoptions:{it:options}}]


{pstd}
基本的带样本选择的 Probit 回归

{p 8 16 2}
{cmd:eprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:sel:ect(}{help eprobit##selspec:{it:depvar}_s} {cmd:=}
    {help eprobit##selspec:{it:varlist}_s}{cmd:)}
[{help eprobit##synoptions:{it:options}}]


{pstd}
基本的带 Tobit 样本选择的 Probit 回归

{p 8 16 2}
{cmd:eprobit}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:tobitsel:ect(}{help eprobit##tselspec:{it:depvar}_s} {cmd:=}
    {help eprobit##tselspec:{it:varlist}_s}{cmd:)}
[{help eprobit##synoptions:{it:options}}]


{pstd}
带随机效应的基本 Probit 回归

{p 8 16 2}
{cmd:xteprobit}
{depvar}
[{indepvars}]
[{cmd:,} {help eprobit##synoptions:{it:options}}]


{pstd}
结合内生协变量、治疗和选择的 Probit 回归

{p 8 16 2}
{cmd:eprobit}
{depvar}
[{indepvars}]
{ifin}
[{help eprobit##weight:{it:weight}}]
[{cmd:,} {help eprobit##extensions:{it:extensions}}
{help eprobit##synoptions:{it:options}}]


{pstd}
结合随机效应、内生协变量、治疗和选择的 Probit 回归

{p 8 16 2}
{cmd:xteprobit}
{depvar}
[{indepvars}]
{ifin}
[{cmd:,} {help eprobit##extensions:{it:extensions}}
{help eprobit##synoptions:{it:options}}]


{marker extensions}{...}
{synoptset 26 tabbed}{...}
{synopthdr:扩展}
{synoptline}
{syntab :模型}
{synopt :{opth endog:enous(eprobit##enspec:enspec)}}内生协变量的模型；可重复使用{p_end}
{synopt :{opth entr:eat(eprobit##entrspec:entrspec)}}内生治疗分配的模型{p_end}
{synopt :{opth extr:eat(eprobit##extrspec:extrspec)}}外生治疗{p_end}
{synopt :{opth sel:ect(eprobit##selspec:selspec)}}选择的 Probit 模型{p_end}
{synopt :{opth tobitsel:ect(eprobit##tselspec:tselspec)}}Tobit 模型选择{p_end}
{synoptline}

{marker synoptions}{...}
{synopthdr}
{synoptline}
{syntab :模型}
INCLUDE help erm_model_tab

{syntab :SE/稳健}
INCLUDE help erm_vce_tab

{syntab :报告}
INCLUDE help erm_report_tab
{synopt :{it:{help eprobit##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:积分}
INCLUDE help erm_integration_tab

{syntab :最大化}
{synopt :{it:{help eprobit##maximize_options:maximize_options}}}控制最大化过程；不常使用{p_end}

{synopt :{opt col:linear}}保持共线性变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker enspec}{...}
{phang}
{it:enspec} 是 {depvars}_en {cmd:=} {varlist}_en
    [{cmd:,} {help eprobit##enopts:{it:enopts}}]

{pmore}
其中 {it:depvars}_en 是内生协变量的列表。 每个变量在
{it:depvars}_en 使用共同的 {it:varlist}_en 和选项指定内生协变量模型。

{marker entrspec}{...}
{phang}
{it:entrspec} 是 {depvar}_tr [{cmd:=} {varlist}_tr]
    [{cmd:,} {help eprobit##entropts:{it:entropts}}]

{pmore}
其中 {it:depvar}_tr 是指示治疗分配的变量。
{it:varlist}_tr 是预测治疗分配的协变量列表。

{marker extrspec}{...}
{phang}
{it:extrspec} 是 {it:tvar} 
    [{cmd:,} {help eprobit##extropts:{it:extropts}}]

{pmore}
其中 {it:tvar} 是指示治疗分配的变量。

{marker selspec}{...}
{phang}
{it:selspec} 是 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help eprobit##selopts:{it:selopts}}]

{pmore}
其中 {it:depvar}_s 是指示选择状态的变量。
{it:depvar}_s 必须编码为 0，表示该观察未被选中，或 1，表示该观察被选中。 {it:varlist}_s 是预测选择的协变量列表。

{marker tselspec}{...}
{phang}
{it:tselspec} 是 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help eprobit##tselopts:{it:tselopts}}]

{pmore}
其中 {it:depvar}_s 是一个连续变量。
{it:varlist}_s 是预测 {it:depvar}_s 的协变量列表。
{it:depvar}_s 的剪裁状态指示选择，其中剪裁的 {it:depvar}_s 表示观察未被选中，非剪裁的 {it:depvar}_s 表示观察被选中。

{synoptset 26 tabbed}{...}
INCLUDE help erm_enopts_table
{p 4 6 2}
{opt nore} 仅适用于 {cmd:xteprobit}。

INCLUDE help erm_entropts_table
{p 4 6 2}
{opt nore} 仅适用于 {cmd:xteprobit}。

INCLUDE help erm_extropts_table

INCLUDE help erm_selopts_table
{p 4 6 2}
{opt nore} 仅适用于 {cmd:xteprobit}。

INCLUDE help erm_tselopts_table
{p 4 6 2}
{opt nore} 仅适用于 {cmd:xteprobit}。
{p2colreset}{...}

{p 4 6 2}
{it:indepvars},
{it:varlist}_en,
{it:varlist}_tr,
以及
{it:varlist_s}
可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar},
{it:indepvars},
{it:depvars}_en,
{it:varlist}_en,
{it:depvar}_tr, 
{it:varlist}_tr,
{it:tvar},
{it:depvar_s},
以及
{it:varlist_s}
可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bootstrap}，{opt by}，{opt jackknife}，和 {opt statsby}
允许与 {cmd:eprobit} 和 {cmd:xteprobit} 一起使用。
{cmd:rolling} 和 {cmd:svy} 允许与 {cmd:eprobit} 一起使用。
见 {help prefix_zh}.{p_end}
{p 4 6 2}加权不允许与 {help bootstrap_zh} 前缀一起使用.{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s，{opt iweight}s 和 {opt pweight}s
允许与 {cmd:eprobit} 一起使用；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:reintpoints()} 和 {cmd:reintmethod()} 仅适用于
{cmd:xteprobit}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不显示在对话框中.{p_end}
{p 4 6 2}
见 {manhelp eprobit_postestimation ERM:eprobit 后估计} 获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{pstd}
{bf:eprobit}

{phang2}
{bf:统计 > 内生协变量 > 添加选择和治疗的模型 >}
{bf:Probit 回归}

{pstd}
{bf:xteprobit}

{phang2}
{bf:统计 > 纵向/面板数据 > 内生协变量 > 添加选择和治疗的模型 >}
{bf:Probit 回归 (RE)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:eprobit} 拟合一个 Probit 回归模型，该模型适用于任何内生协变量、非随机治疗分配和内生样本选择的组合。允许连续、二元和有序的内生协变量。治疗分配可以是内生的或外生的。可以使用 Probit 或 Tobit 模型来解决内生样本选择问题。

{pstd}
{cmd:xteprobit} 拟合一个随机效应的 Probit 回归模型，该模型和 {cmd:eprobit} 以相同的方式适用于内生协变量、治疗和样本选择，并且还考虑了面板组内观察值之间的相关性。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM eprobitQuickstart:快速入门}

        {mansection ERM eprobitRemarksandexamples:备注和示例}

        {mansection ERM eprobitMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

INCLUDE help erm_model_optdes

{dlgtab:SE/稳健}

INCLUDE help erm_vce_optdes

{dlgtab:报告}

INCLUDE help erm_reporting_optdes

{dlgtab:积分}

INCLUDE help erm_int_optdes

{marker maximize_options}{...}
{dlgtab:最大化}

INCLUDE help erm_max_optdes

{pmore}
{cmd:eprobit} 的默认技术是 {cmd:technique(nr)}。 {cmd:xteprobit} 的默认技术是 {cmd:technique(bhhh 10 nr 2)}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认 {it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt eprobit} 和 {opt xteprobit} 一起使用，但在对话框中不显示：

{phang}
{opt collinear}，{opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10}

{pstd}
带内生协变量 {cmd:hsgpa} 的 Probit 回归{p_end}
{phang2}
{cmd:. eprobit graduate income i.roommate, endogenous(hsgpa = income i.hscomp)}

{pstd}
使用稳健标准误{p_end}
{phang2}
{cmd:. eprobit graduate income i.roommate, endogenous(hsgpa = income i.hscomp)}
{cmd:vce(robust)}

{pstd}
如上所述，并考虑内生治疗{p_end}
{phang2}
{cmd:. eprobit graduate income i.roommate, endogenous(hsgpa = income i.hscomp)}
{cmd:entreat(program = i.campus i.scholar income) vce(robust)}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse heartsm}

{pstd}
带内生样本选择的 Probit 回归{p_end}
{phang2}
{cmd:. eprobit attack age bmi i.exercise, select(full = age bmi i.checkup)}

{pstd}
如上所述，并考虑 {cmd: exercise} 治疗的内生性{p_end}
{phang2}
{cmd:. eprobit attack age bmi, select(full = age bmi i.checkup)}
{cmd:entreat(exercise = bmi i.gym)}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse womenhlthre}{p_end}
{phang2}
{cmd:. xtset personid year}{p_end}
{phang2}
{cmd:. generate goodhlth = health>3}{p_end}

{pstd}
随机效应 Probit 回归{p_end}
{phang2}
{cmd:. xteprobit goodhlth exercise grade}

{pstd}
带内生治疗的随机效应 Probit 回归{p_end}
{phang2}
{cmd:. xteprobit goodhlth exercise grade, entreat(insured = grade i.workschool)}

{pstd}
带内生样本选择的随机效应 Probit 回归{p_end}
{phang2}
{cmd:. xteprobit goodhlth exercise grade, select(select = grade i.regcheck)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:eprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_selected)}}被选中的观察数量{p_end}
{synopt:{cmd:e(N_nonselected)}}未被选中观察的数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别数量，有序{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整个模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt :{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}簇的数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(n_quad)}}多元正态的积分点数量{p_end}
{synopt:{cmd:e(n_quad3)}}三元正态的积分点数量{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛，则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:eprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(tsel_ll)}}Tobit 选择的左剪裁限{p_end}
{synopt:{cmd:e(tsel_ul)}}Tobit 选择的右剪裁限{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量的名称{p_end}
{synopt:{cmd:e(offset}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的偏移量，
其中 {it:#} 由输出中的方程顺序决定{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方测试的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别，
有序{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基方差{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eprobit.sthlp>}