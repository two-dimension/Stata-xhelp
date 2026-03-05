{smcl}
{* *! version 1.2.9  19feb2019}{...}
{viewerdialog mlexp "dialog mlexp"}{...}
{vieweralsosee "[R] mlexp" "mansection R mlexp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mlexp postestimation" "help mlexp postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{vieweralsosee "[R] Maximize" "help maximize_zh"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{vieweralsosee "[R] nl" "help nl_zh"}{...}
{vieweralsosee "[R] nlsur" "help nlsur_zh"}{...}
{viewerjumpto "Syntax" "mlexp_zh##syntax"}{...}
{viewerjumpto "Menu" "mlexp_zh##menu"}{...}
{viewerjumpto "Description" "mlexp_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mlexp_zh##linkspdf"}{...}
{viewerjumpto "Options" "mlexp_zh##options"}{...}
{viewerjumpto "Remarks" "mlexp_zh##remarks"}{...}
{viewerjumpto "Examples" "mlexp_zh##examples"}{...}
{viewerjumpto "Stored results" "mlexp_zh##results"}{...}
{viewerjumpto "Reference" "mlexp_zh##reference"}
{help mlexp:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] mlexp} {hline 2}}最大似然估计用户指定的表达式{p_end}
{p2col:}({mansection R mlexp:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 11 2}
{cmd:mlexp} {cmd:(}{it:lexp}{cmd:)} 
   {ifin} 
   [{it:{help mlexp##weight:权重}}]
   [{cmd:,} {it:{help mlexp##option_table:选项}}]

{phang}
其中 {it:lexp} 是一个可替代的表达式，表示对数似然函数。

{synoptset 28 tabbed}{...}
{marker option_table}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth va:riables(varlist)}}指定模型中的变量{p_end}
{synopt :{opt from(initial_values)}}指定参数的初始值{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():numlist}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :导数}
{synopt :{opt deriv:ative}{cmd:(/}{it:name} {cmd:=} {it:dexp}{cmd:)}}指定 {it:lexp} 对参数 {it:name} 的导数；可以多次指定{p_end}

{syntab :标准误/稳健性}
{synopt :{cmd:vce(}{it:{help nl##vcetype:vcetype}}{cmd:)}}{it:vcetype}
           可以是 {opt oim}, {opt opg}, {opt r:obust}, {opt cl:uster} 
           {it:clustvar}, {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt title(string)}}在参数估计表格上方显示 {it:string} 作为标题{p_end}
{synopt :{opt title2(string)}}显示 {it:string} 作为副标题{p_end}
{synopt :{it:{help mlexp##display_options:display_options}}}控制
包含帮助简短描述-显示选项

{syntab :最大化}
{synopt :{it:{help mlexp##mlexp_maximize:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt debug}}显示调试输出{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助简短描述-系数图例
{synoptline}
{p 4 6 2}{it:lexp} 和 {it:dexp} 可以包含因子变量和时间序列运算符；请参见 {help fvvarlist_zh} 和 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling}, 
{cmd:statsby}, 和 {cmd:svy} 是允许的；请参见 {help prefix_zh}.{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}{cmd:aweight}s 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{p 4 6 2}{cmd:vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight}s, {cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s 是允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt debug}, {opt collinear}, 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp mlexp R:mlexp postestimation} 以获取估计后可用的功能。{p_end}

{pstd}
{it:lexp} 和 {it:dexp} 是可替代表达式，Stata 表达式也包含待估计的参数。参数用大括号括起来，并且必须满足变量的命名要求；
{cmd:{c -(}beta{c )-}} 是参数的一个示例。 符号
{cmd:{c -(}}{it:lc}:{it:varlist}{cmd:{c )-}} 允许用于多个协变量及其参数的线性组合。例如，
{cmd:{c -(}xb:} {cmd:mpg} {cmd:price} {cmd:turn} {cmd:_cons}{cmd:{c )-}} 定义了变量 {cmd:mpg}, {cmd:price}, {cmd:turn}, 和 {cmd:_cons} (常数项) 的线性组合。请参见
{mansection R mlexpRemarksandexamplesSubstitutableexpressions:{it:可替代表达式}} 在 {it:备注和示例} 之下的 {bf:[R] mlexp}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 其他 > 表达式的最大似然估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mlexp} 执行满足线性形式约束的模型的最大似然估计，即，可以为个体观察值编写对数似然，并且整体对数似然是个体观察值对数似然之和的模型。

{pstd}
你通过使用可替代表达式来表达观察级别对数似然函数。与使用 {help ml_zh} 拟合的模型不同，你不需要进行任何编程。然而，{cmd:ml} 可以拟合 {cmd:mlexp} 无法拟合的模型类。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R mlexpQuickstart:快速开始}

        {mansection R mlexpRemarksandexamples:备注和示例}

        {mansection R mlexpMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}
{phang}
{opth variables(varlist)} 指定模型中的变量。
{opt mlexp} 排除任何这些变量缺失值的观察值。如果你不指定 {cmd:variables()}，那么 {cmd:mlexp} 假设所有观察值都是有效的。如果在任何观察值的初始值下无法计算对数似然，{cmd:mlexp} 将以错误信息退出。

{phang}
{opt from(initial_values)} 指定开始估计的初始值。你可以指定参数名称和值，或可以指定一个 1 x k 矩阵，其中 k 是模型中的参数数量。例如，为 {opt alpha} 初始化为 1.23 和 {opt delta} 初始化为 4.57，你可以键入

{pmore2}
{cmd:mlexp} ...{cmd:,} {cmd:from(alpha=1.23 delta=4.57)} ...

{pmore}
或等效的

{pmore2}
{cmd:matrix define initval = (1.23, 4.57)}{break}
{cmd:mlexp} ...{cmd:,} {cmd:from(initval)} ...

{pmore}
在 {opt from()} 选项中声明的初始值会覆盖任何在可替代表达式中声明的值。如果你指定的参数在模型中不存在，{cmd:mlexp} 将以错误退出。如果你指定矩阵，值的顺序必须与模型中声明的参数订单相同。

{phang}
{opth constraints(numlist)}；请参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:导数}

{phang}
{cmd:derivative(}{cmd:/}{it:name} {cmd: =} {it:dexp}{cmd:)} 指定关于参数 {it:name} 的观察级别对数似然函数的导数。如果你希望指定解析导数，必须对模型中的每个参数指定 {opt derivative()}。

{pmore}
{it:dexp} 使用与用于指定对数似然函数的相同的可替代表达式语法。如果你在对数似然函数中声明线性组合，你需要为线性组合提供导数；{cmd:mlexp} 会为你应用链式法则。请参见最后一个示例 {help mlexp##lcderiv:下面}。

{pmore}
如果你不指定 {opt derivative()} 选项，{cmd:mlexp} 将数值计算导数。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opth title(string)} 指定将在参数估计表上方显示的可选标题。

{phang}
{opth title2(string)} 指定将在 {opt title()} 指定的标题与参数估计表之间显示的可选副标题。如果指定了 {opt title2()} 但未指定 {opt title()}，则 {opt title2()} 的效果与 {opt title()} 相同。

包含帮助 displayopts_list

{marker mlexp_maximize}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient}, {opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}, 和
{opt nonrtol:erance}；
请参见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pstd}
以下选项与 {opt mlexp} 一起可用，但在对话框中不显示：

{phang}
{opt debug} 指定在每次迭代中报告数字计算出的梯度与从你的导数表达式计算出的梯度之间的差异。此选项仅在使用 {opt derivative()} 时允许。

{phang}
{opt collinear}, {opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:mlexp} 允许你通过最大似然估计拟合模型，而无需进行任何编程。相反，你通过使用可替代表达式来表达你的对数似然函数，该数学表达式使用大括号区分参数与变量。定义可替代表达式时需要遵循三条规则：

{phang2}
1. 模型的参数用大括号括起来：
{cmd:{c -(}b0{c )-}}, {cmd:{c -(}param{c )-}}, 等等。参数名称必须遵循与变量名称相同的约定；请参见 {findalias frnames}

{phang2}
2. 参数的初始值通过在大括号内包含等号和初始值来给出： {cmd:{c -(}b0=1{c )-}}, 
{cmd: {c -(}param=3.571{c )-}}, 等等。 

{phang2}
3. 线性组合的变量可以使用符号 {cmd:{c -(}}{it:lc}{cmd::}{it:varlist}{cmd:{c )-}} 来包含：
{cmd:{c -(}xb: mpg price weight _cons{c )-}},
{cmd:{c -(}score: w x z{c )-}}, 等等。
线性组合的参数初始化为零。

{pstd}
可替代表达式可以包含涉及标量和变量的任何数学表达式。有关表达式的更多信息，请参见 {help operator_zh} 和 {help exp_zh}。


{marker examples}{...}
{title:示例}

{pstd}
经典线性回归{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. mlexp (ln(normalden(mpg, {b0} + {b1}*gear_ratio, {sigma})))}{p_end}

{pstd}与上面相同，约束 {it:sigma} 为正{p_end}
{phang2}{cmd:. mlexp (ln(normalden(mpg, {xb:gear_ratio _cons}, exp({lnsigma}))))}{p_end}
{phang2}{cmd:. nlcom exp(_b[/lnsigma])}{p_end}

{pstd}
带线性组合的 Probit 回归{p_end}
{phang2}{cmd:. mlexp (ln(cond(foreign==1, normal({xb:gear_ratio turn _cons}),}
{cmd:normal(-1*({xb:})))))}{p_end}

{pstd}
与上面相同，使用 {help mlexp##Greene2018:Greene} (2018, 742, fn. 16)
辅助变量编码为失败的 -1 和成功的 +1{p_end}
{phang2}{cmd:. generate int q = 2*(foreign==1) - 1}{p_end}
{phang2}{cmd:. mlexp (ln(normal(q*({xb:gear_ratio turn _cons}))))}{p_end}

{pstd}
{marker lcderiv}
与上面相同，指定导数{p_end}
{phang2}{cmd:. mlexp (ln(normal(q*({xb:gear_ratio turn _cons})))),}
{cmd:deriv(/xb = q*normalden({xb:})/normal(q*({xb:})))}{p_end}
 

{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:mlexp} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}} 整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mlexp}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(lexp)}}似然表达式{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(usrtitle)}}用户指定的标题{p_end}
{synopt:{cmd:e(usrtitle2)}}用户指定的副标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(params)}}参数的名称{p_end}
{synopt:{cmd:e(hasderiv)}}{cmd:yes}，如果指定了 {cmd:derivative()}{p_end}
{synopt:{cmd:e(d_}{it:j}{cmd:)}}参数 {it:j} 的导数表达式{p_end}
{synopt:{cmd:e(rhs)}} {cmd:variables()} 的内容{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(singularHmethod)}}{cmd:m-marquardt} 或 {cmd:hybrid}; 当 Hessian 为奇异时使用的方法 (1){p_end}
{synopt:{cmd:e(crittype)}}优化标准 (1){p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsprop)}}提供给 {cmd:margins} 命令的信号{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(init)}}初始值{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{space 4}{hline 20}
{p 4 6 2}
1. 输入 {cmd:ereturn} {cmd:list,} {cmd:all} 查看这些结果；请参见 {help return_zh:[P] return}。


{marker reference}{...}
{title:参考}

{marker Greene2018}{...}
{phang}
Greene, W. H. 2018.
{browse "http://www.stata.com/bookstore/ea.html":{it:计量经济分析}. 第八版.}
纽约: Pearson.

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mlexp.sthlp>}