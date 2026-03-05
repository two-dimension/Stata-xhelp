{smcl}
{* *! version 1.0.10  04apr2019}{...}
{viewerdialog eintreg "dialog eintreg"}{...}
{viewerdialog xteintreg "dialog xteintreg"}{...}
{viewerdialog "svy: eintreg" "dialog eintreg, message(-svy-) name(svy_eintreg)"}{...}
{vieweralsosee "[ERM] eintreg" "mansection ERM eintreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eintreg postestimation" "help eintreg postestimation"}{...}
{vieweralsosee "[ERM] eintreg predict" "help eintreg predict"}{...}
{vieweralsosee "[ERM] predict advanced" "help erm predict advanced"}{...}
{vieweralsosee "[ERM] predict treatment" "help erm predict treatment"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] estat teffects" "help erm estat teffects"}{...}
{vieweralsosee "[ERM] Intro 9" "mansection ERM Intro9"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{vieweralsosee "[R] ivtobit" "help ivtobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{vieweralsosee "[XT] xtintreg" "help xtintreg_zh"}{...}
{vieweralsosee "[XT] xttobit" "help xttobit_zh"}{...}
{viewerjumpto "Syntax" "eintreg_zh##syntax"}{...}
{viewerjumpto "Menu" "eintreg_zh##menu"}{...}
{viewerjumpto "Description" "eintreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "eintreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "eintreg_zh##options"}{...}
{viewerjumpto "Examples" "eintreg_zh##examples"}{...}
{viewerjumpto "Stored results" "eintreg_zh##results"}
{help eintreg:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ERM] eintreg} {hline 2}}扩展区间回归{p_end}
{p2col:}({mansection ERM eintreg:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{pstd}
带内生协变量的基本区间回归

{p 8 16 2}
{cmd:eintreg}
{depvar}_1 {depvar}_2
[{indepvars}]{cmd:,}
{cmdab:endog:enous(}{help eintreg##enspec:{it:depvars}_en} {cmd:=}
    {help eintreg##enspec:{it:varlist}_en}{cmd:)}
[{help eintreg##synoptions:{it:options}}]


{pstd}
带内生处理分配的基本区间回归

{p 8 16 2}
{cmd:eintreg}
{depvar}_1 {depvar}_2
[{indepvars}]{cmd:,}
{cmdab:entr:eat(}{help eintreg##entrspec:{it:depvar}_tr}
   [{cmd:=} {help eintreg##entrspec:{it:varlist}_tr}]{cmd:)}
[{help eintreg##synoptions:{it:options}}]


{pstd}
带外生处理分配的基本区间回归

{p 8 16 2}
{cmd:eintreg}
{depvar}_1 {depvar}_2
[{indepvars}]{cmd:,}
{cmdab:extr:eat(}{help eintreg##extrspec:{it:tvar}}{cmd:)}
[{help eintreg##synoptions:{it:options}}]


{pstd}
带样本选择的基本区间回归

{p 8 16 2}
{cmd:eintreg}
{depvar}_1 {depvar}_2
[{indepvars}]{cmd:,}
{cmdab:sel:ect(}{help eintreg##selspec:{it:depvar}_s} {cmd:=}
    {help eintreg##selspec:{it:varlist}_s}{cmd:)}
[{help eintreg##synoptions:{it:options}}]


{pstd}
带tobit样本选择的基本区间回归

{p 8 16 2}
{cmd:eintreg}
{depvar}_1 {depvar}_2
[{indepvars}]{cmd:,}
{cmdab:tobitsel:ect(}{help eintreg##tselspec:{it:depvar}_s} {cmd:=}
    {help eintreg##tselspec:{it:varlist}_s}{cmd:)}
[{help eintreg##synoptions:{it:options}}]


{pstd}
带随机效应的基本区间回归

{p 8 16 2}
{cmd:xteintreg}
{depvar}_1 {depvar}_2
[{indepvars}]
[{cmd:,} {help eintreg##synoptions:{it:options}}]

{pstd}
结合内生协变量、处理与选择的区间回归

{p 8 16 2}
{cmd:eintreg}
{depvar}_1 {depvar}_2
[{indepvars}]
{ifin}
[{help eintreg##weight:{it:weight}}]
[{cmd:,} {help eintreg##extensions:{it:extensions}}
{help eintreg##synoptions:{it:options}}]

{pstd}
结合随机效应、内生协变量、处理与选择的区间回归

{p 8 16 2}
{cmd:xteintreg}
{depvar}_1 {depvar}_2
[{indepvars}]
{ifin}
[{cmd:,} {help eintreg##extensions:{it:extensions}}
{help eintreg##synoptions:{it:options}}]


{marker typedepvar}{...}
{phang}
{it:depvar}_1 和 {it:depvar}_2 应有以下形式：

             数据类型 {space 16} {it:depvar1}  {it:depvar2}
             {hline 46}
             点数据{space 10}{it:a} = [{it:a},{it:a}]{space 4}{it:a}{space 8}{it:a} 
             区间数据{space 11}[{it:a},{it:b}]{space 4}{it:a}{space 8}{it:b}
             左截尾数据{space 3}(-inf,{it:b}]{space 4}{cmd:.}{space 8}{it:b}
             右截尾数据{space 3}[{it:a},inf){space 4}{it:a}{space 8}{cmd:.} 

             缺失值{space 26}{cmd:.}{space 8}{cmd:.}
             {hline 46}

{marker extensions}{...}
{synoptset 25 tabbed}{...}
{synopthdr:扩展}
{synoptline}
{syntab:模型}
{synopt :{opth endog:enous(eintreg##enspec:enspec)}}内生协变量模型；可重复{p_end}
{synopt :{opth entr:eat(eintreg##entrspec:entrspec)}}内生处理分配模型{p_end}
{synopt :{opth extr:eat(eintreg##extrspec:extrspec)}}外生处理{p_end}
{synopt :{opth sel:ect(eintreg##selspec:selspec)}}选择的probit模型{p_end}
{synopt :{opth tobitsel:ect(eintreg##tselspec:tselspec)}}选择的tobit模型{p_end}
{synoptline}

{marker synoptions}{...}
{synopthdr}
{synoptline}
{syntab:模型}
包含帮助 erm_model_tab

{syntab:标准误/稳健}
包含帮助 erm_vce_tab

{syntab:报告}
包含帮助 erm_report_tab
{synopt :{it:{help eintreg##display_options:display_options}}}控制
包含帮助 shortdes-displayoptall

{syntab:集成}
包含帮助 erm_integration_tab

{syntab:最大化}
{synopt :{it:{help eintreg##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt col:linear}}保持共线变量{p_end}
包含帮助 shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker enspec}{...}
{phang}
{it:enspec} 是 {depvars}_en {cmd:=} {varlist}_en
    [{cmd:,} {help eintreg##enopts:{it:enopts}}]

{pmore}
其中 {it:depvars}_en 是内生协变量的列表。每个变量使用
公共 {it:varlist}_en 和选项指定一个内生协变量模型。

{marker entrspec}{...}
{phang}
{it:entrspec} 是 {depvar}_tr [{cmd:=} {varlist}_tr]
    [{cmd:,} {help eintreg##entropts:{it:entropts}}]

{pmore}
其中 {it:depvar}_tr 是指示处理分配的变量。
{it:varlist}_tr 是预测处理分配的协变量的列表。

{marker extrspec}{...}
{phang}
{it:extrspec} 是 {it:tvar}
    [{cmd:,} {help eintreg##extropts:{it:extropts}}]

{pmore}
其中 {it:tvar} 是指示处理分配的变量。

{marker selspec}{...}
{phang}
{it:selspec} 是 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help eintreg##selopts:{it:selopts}}]

{pmore}
其中 {it:depvar}_s 是指示选择状态的变量。
{it:depvar}_s 必须编码为 0，表示观测没有被选择，或 1，表示观测被选择。{it:varlist}_s 是预测选择的协变量列表。

{marker tselspec}{...}
{phang}
{it:tselspec} 是 {depvar}_s {cmd:=} {varlist}_s
    [{cmd:,} {help eintreg##tselopts:{it:tselopts}}]

{pmore}
其中 {it:depvar}_s 是连续变量。
{it:varlist}_s 是预测 {it:depvar}_s 的协变量列表。
{it:depvar}_s 的截尾状态指示选择，其中截尾的
{it:depvar}_s 表明观测没有被选择，而非截尾的 {it:depvar}_s 则表明观测被选择。

{synoptset 26 tabbed}{...}
包含帮助 erm_reg_enopts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteintreg} 中可用。

包含帮助 erm_reg_entropts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteintreg} 中可用。

包含帮助 erm_reg_extropts_table

包含帮助 erm_selopts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteintreg} 中可用。

包含帮助 erm_tselopts_table
{p 4 6 2}
{opt nore} 仅在 {cmd:xteintreg} 中可用。
{p2colreset}{...}

{p 4 6 2}
{it:indepvars},
{it:varlist}_en,
{it:varlist}_tr,
和
{it:varlist_s}
可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}_1,
{it:depvar}_2,
{it:indepvars},
{it:depvars}_en,
{it:varlist}_en,
{it:depvar}_tr, 
{it:varlist}_tr,
{it:tvar},
{it:depvar_s},
和
{it:varlist_s}
可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bootstrap}, {opt by}, {opt jackknife}, 和 {opt statsby}
在 {cmd:eintreg} 和 {cmd:xteintreg} 中被允许。
{cmd:rolling} 和 {cmd:svy} 在 {cmd:eintreg} 中被允许。
见 {help prefix_zh}.{p_end}
{p 4 6 2}权重在 {help bootstrap_zh} 前缀下不被允许.{p_end}
{p 4 6 2}
{opt vce()} 和权重在 {help svy_zh} 前缀下不被允许.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s, {opt iweight}s, 和 {opt pweight}s 在 {cmd:eintreg} 中是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:reintpoints()} 和 {cmd:reintmethod()} 仅在 {cmd:xteintreg} 中可用.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 在对话框中不出现.{p_end}
{p 4 6 2}
见 {manhelp eintreg_postestimation ERM:eintreg postestimation} 以获取
估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{pstd}
{bf:eintreg}

{phang2}
{bf:统计 > 内生协变量 > 添加选择和处理的模型 >}
{bf:区间回归}

{pstd}
{bf:xteintreg}

{phang2}
{bf:统计 > 纵向/面板数据 > 内生协变量 > 添加选择和处理的模型 >}
{bf:区间回归（随机效应）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:eintreg} 拟合一个区间回归模型，可以容纳任何组合的内生协变量、非随机处理分配和内生样本选择。允许使用连续的、二元的和有序的内生协变量。处理分配可以是内生的或外生的。可以使用probit或tobit模型来处理内生样本选择。

{pstd}
{cmd:xteintreg} 拟合一个随机效应区间回归模型，以与 {cmd:eintreg} 相同的方式处理内生协变量、处理和样本选择，并且还考虑了面板内或组内观测的相关性。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ERM eintregQuickstart:快速入门}

        {mansection ERM eintregRemarksandexamples:备注和示例}

        {mansection ERM eintregMethodsandformulas:方法和公式}

{pstd}
以上部分未包含于此帮助文件。


{marker options}{...}
{title:选项}

{dlgtab:模型}

包含帮助 erm_model_optdes

{dlgtab:标准误/稳健}

包含帮助 erm_vce_optdes

{dlgtab:报告}

包含帮助 erm_reporting_optdes

{dlgtab:集成}

包含帮助 erm_int_optdes

{marker maximize_options}{...}
{dlgtab:最大化}

包含帮助 erm_max_optdes

{pmore}
{cmd:eintreg} 的默认技术是 {cmd:technique(nr)}。{cmd:xteintreg} 的默认技术是 {cmd:technique(bhhh 10 nr 2)}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认 {it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项可用于 {opt eintreg} 和 {opt xteintreg}，但在对话框中未显示：

{phang}
{opt collinear}, {opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10}

{pstd}
带内生协变量 {cmd:hsgpa} 的区间回归{p_end}
{phang2}
{cmd:. eintreg gpal gpau income, endogenous(hsgpa = income i.hscomp)}

{pstd}
如上所述，并考虑内生样本选择{p_end}
{phang2}
{cmd:. eintreg gpal gpau income, endogenous(hsgpa = income i.hscomp)}
         {cmd:select(graduate = hsgpa income i.roommate i.program)}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10re}{p_end}
{phang2}
{cmd:. xtset collegeid}{p_end}
{phang2}
{cmd:. gen gpal = gpa if gpa>=2}{p_end}
{phang2}
{cmd:. gen gpau = gpa}{p_end}
{phang2}
{cmd:. replace gpau=2 if gpa<2}{p_end}

{pstd}
随机效应区间回归{p_end}
{phang2}
{cmd:. xteintreg gpal gpau income}

{pstd}
带内生协变量 {cmd:hsgpa} 的随机效应区间回归{p_end}
{phang2}
{cmd:. xteintreg gpal gpau income, endogenous(hsgpa = income i.hscomp)}

{pstd}
带内生样本选择的随机效应区间回归{p_end}
{phang2}
{cmd:. xteintreg gpal gpau income, select(graduate=income i.program)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:eintreg} 在 {cmd:e()} 中存储以下信息：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观测数量{p_end}
{synopt :{cmd:e(N_selected)}}被选择的观测数量{p_end}
{synopt :{cmd:e(N_nonselected)}}未被选择的观测数量{p_end}
{synopt :{cmd:e(N_unc)}}未截尾观测数量{p_end}
{synopt :{cmd:e(N_lc)}}左截尾观测数量{p_end}
{synopt :{cmd:e(N_rc)}}右截尾观测数量{p_end}
{synopt :{cmd:e(N_int)}}区间截尾观测数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_cat}{it:#}{cmd:)}}第 {it:#} 个的类别数量
{it:depvar}，有序的{p_end}
{synopt :{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_eq_model)}}总体模型测试中的方程数量{p_end}
{synopt :{cmd:e(k_dv)}}依赖变量的数量{p_end}
{synopt :{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(N_clust)}}聚类数量{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt :{cmd:e(n_quad)}}用于多元正态分布的积分点数量{p_end}
{synopt :{cmd:e(n_quad3)}}用于三元正态分布的积分点数量{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:eintreg}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}依赖变量的名称{p_end}
{synopt :{cmd:e(tsel_ll)}}tobit选择的左截尾限制{p_end}
{synopt :{cmd:e(tsel_ul)}}tobit选择的右截尾限制{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt :{cmd:e(offset}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的偏移量，
其中 {it:#} 由输出中的方程顺序决定{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器要执行最大化还是最小化{p_end}
{synopt :{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(cat}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的类别，
有序的{p_end}
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
{center:翻译自Stata官方帮助文档 <eintreg.sthlp>}