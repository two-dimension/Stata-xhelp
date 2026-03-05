{smcl}
{* *! version 1.0.10  07jan2019}{...}
{viewerdialog fracreg "dialog fracreg"}{...}
{viewerdialog "svy: fracreg" "dialog fracreg, message(-svy-) name(svy_fracreg)"}{...}
{vieweralsosee "[R] fracreg" "mansection R fracreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fracreg postestimation" "help fracreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: fracreg" "help bayes fracreg"}{...}
{vieweralsosee "[R] betareg" "help betareg_zh"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fracreg_zh##syntax"}{...}
{viewerjumpto "Menu" "fracreg_zh##menu"}{...}
{viewerjumpto "Description" "fracreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fracreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "fracreg_zh##options"}{...}
{viewerjumpto "Examples" "fracreg_zh##examples"}{...}
{viewerjumpto "Stored results" "fracreg_zh##results"}
{help fracreg:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] fracreg} {hline 2}}分数响应回归{p_end}
{p2col:}({mansection R fracreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
分数 probit 回归的语法

{p 8 16 2}
{cmd:fracreg}
{opt pr:obit}
{depvar} 
[{indepvars}]
{ifin}
[{it:{help fracreg##weight:权重}}]
[{cmd:,} {it:选项}]


{pstd}
分数 logistic 回归的语法

{p 8 16 2}
{cmd:fracreg}
{opt log:it}
{depvar}
[{indepvars}]
{ifin}
[{it:{help fracreg##weight:权重}}]
[{cmd:,} {it:选项}]


{pstd}
分数异方差 probit 回归的语法

{p 8 16 2}
{cmd:fracreg}
{opt pr:obit}
{depvar} 
[{indepvars}]
{ifin}
[{it:{help fracreg##weight:权重}}]{cmd:,}
{cmd:het(}{varlist}[{cmd:,}
{cmdab:off:set(}{it:{help varname_zh:变量名}_o}{cmd:)}]{cmd:)}
[{it:选项}]


{synoptset 35 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tat}}抑制常数项{p_end}
{synopt :{opt off:set(varname)}}在模型中包含 {it:varname}，其系数被限制为 1{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{p2coldent:* {cmd:het(}{varlist}[{cmd:,} {cmdab:off:set(}{it:{help varname_zh:变量名}_o}]{cmd:)}}独立变量来模型化方差和可选的偏移变量，使用 {cmd:fracreg probit}{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}，
{opt cl:uster} {it:clustvar}，{opt boot:strap}，或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告优势比；仅在 {cmd:fracreg logit} 中有效{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help fracreg##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help fracreg##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt nocoef}}不显示系数表；很少使用{p_end}
{synopt :{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p 4 6 2}* {cmd:het()} 只能与 {cmd:fracreg probit} 一起使用，以计算分数异方差 probit 回归。{p_end}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可能包含时间序列操作符；请参见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
{cmd:bayes}、{cmd:bootstrap}、{cmd:by}、{opt fp}、{cmd:jackknife}、
{cmd:mi estimate}、{cmd:rolling}、{cmd:statsby}，和 {cmd:svy} 是允许的；
请参见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_fracreg BAYES:bayes: fracreg}。{p_end}
INCLUDE help vce_mi
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt vce()},
{opt nocoef}，
和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；请参见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt nocoef}、{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp fracreg_postestimation R:fracreg postestimation} 以获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分数结果 > 分数回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fracreg} 拟合一个分数响应模型，用于一个取值范围在 0 和 1 之间的因变量。
它使用 probit、logit 或异方差 probit 模型来估计条件均值。这些模型通常用于比率、比例和分数数据等结果变量。


{marker linkspdf}{...}
{title:指向 PDF 文档的链接}

        {mansection R fracregQuickstart:快速入门}

        {mansection R fracregRemarksandexamples:备注和示例}

        {mansection R fracregMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:noconstant}、{opth offset(varname)}、{opt constraints(constraints)}；
请参见 {helpb estimation options:[R] 估计选项}。

{phang}
{cmd:het(}{varlist}[{cmd:,}
{cmd:offset(}{it:{help varname_zh}_o}{cmd:)}]{cmd:)} 指定方差函数中的独立变量和可选的偏移变量。
{cmd:het()} 只能与 {cmd:fracreg probit} 一起使用，以计算分数异方差 probit 回归。

{pmore}
{opt offset(varname_o)} 指定选择偏移 {it:varname_o} 包含在模型中，系数限制为 1。

{dlgtab:标准误/稳健性}

INCLUDE help vce_rcbj

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{cmd:or} 报告转换为优势比的估计系数，即 e^b 而不是 b。标准误和置信区间也同样转换。此选项影响结果的显示方式，而不是估计方式。{cmd:or} 可以在估计时或重放先前估计的结果时指定。此选项只能与 {cmd:fracreg logit} 一起使用。

{phang}
{cmd:nocnsreport}；请参见 {helpb estimation options##nocnsreport:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}，
{opt iter:ate(#)}，[{cmd:no}]{opt log}，{opt tr:ace}，
{opt grad:ient}，{opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}，
{opt ltol:erance(#)}，
{opt nrtol:erance(#)}，
{opt nonrtol:erance}，和
{opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可以与 {cmd:fracreg} 一起使用，但不会在对话框中显示：

{phang}
{cmd:nocoef} 指定不显示系数表。
此选项有时由程序员使用，但在交互中没有用处。

{phang}
{opt collinear}、{opt coeflegend}；
请参见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse 401k}

{pstd}
使用分数 probit 回归获取条件均值参数的稳健估计{p_end}
{phang2}{cmd:. fracreg probit prate mrate c.ltotemp##c.ltotemp c.age##c.age i.sole}

{pstd}
使用分数 logistic 回归获取条件均值参数的稳健估计{p_end}
{phang2}{cmd:. fracreg logit prate mrate c.ltotemp##c.ltotemp c.age##c.age i.sole}

{pstd}通过指定选项 {cmd:or} 来获取优势比{p_end}
{phang2}{cmd:. fracreg logit prate mrate c.ltotemp##c.ltotemp c.age##c.age i.sole, or}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:fracreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}} 全部模型测试中的方程数{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 表示未收敛{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:fracreg}{p_end}
{synopt:{cmd:e(cmdline)}}命令按原样输入{p_end}
{synopt:{cmd:e(estimator)}}条件均值模型； {cmd:logit}、{cmd:probit} 或 {cmd:hetprobit}{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset)}}偏移{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化的类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行
                           最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(mns)}}自变量的均值向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fracreg.sthlp>}