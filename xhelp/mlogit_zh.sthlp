{smcl}
{* *! version 1.3.10  12dec2018}{...}
{viewerdialog mlogit "dialog mlogit"}{...}
{viewerdialog "svy: mlogit" "dialog mlogit, message(-svy-) name(svy_mlogit)"}{...}
{vieweralsosee "[R] mlogit" "mansection R mlogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mlogit postestimation" "help mlogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: mlogit" "help bayes mlogit"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[CM] cmrologit" "help cmrologit_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] fmm: mlogit" "help fmm mlogit"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{vieweralsosee "[CM] nlogit" "help nlogit_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{vieweralsosee "[R] slogit" "help slogit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "mlogit_zh##syntax"}{...}
{viewerjumpto "Menu" "mlogit_zh##menu"}{...}
{viewerjumpto "Description" "mlogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mlogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "mlogit_zh##options"}{...}
{viewerjumpto "Examples" "mlogit_zh##examples"}{...}
{viewerjumpto "Stored results" "mlogit_zh##results"}
{help mlogit:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] mlogit} {hline 2}}多项式（多类别）逻辑回归{p_end}
{p2col:}({mansection R mlogit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:mlogit}
{depvar}
[{indepvars}]
{ifin}
[{it:{help mlogit##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt b:aseoutcome(#)}}将哪一值 {depvar} 作为基准结果{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt rr:r}}报告相对风险比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help mlogit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help mlogit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保持共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
INCLUDE help fvvarlist
{p 4 6 2}{it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fmm}、{opt fp}、{opt jackknife}、{opt mfp}、{opt mi estimate}、{opt rolling}、{opt statsby} 和 {opt svy} 是允许的；见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_mlogit BAYES:bayes: mlogit} 和 {manhelp fmm_mlogit FMM:fmm: mlogit}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重.{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不允许一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}、{opt iweight} 和 {opt pweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp mlogit_postestimation R:mlogit 后估计}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分类结果 > 多项式逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mlogit} 为分类因变量拟合多项式逻辑模型，该因变量的结果没有自然顺序。因变量的实际取值并不相关。多项式逻辑模型也称为多类别逻辑回归模型。有些人将条件逻辑回归称为多项式逻辑回归。如果您是其中之一，请参见 {manhelp clogit R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R mlogitQuickstart:快速入门}

        {mansection R mlogitRemarksandexamples:备注和示例}

        {mansection R mlogitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见 {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt baseoutcome(#)} 指定 {depvar} 的值作为基准结果。默认选择最频繁的结果。

{phang}
{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括来源于渐近理论的类型（{cmd:oim}）、对某些类别的错配具有鲁棒性（{cmd:robust}）、允许组内相关性（{cmd:cluster} {it:clustvar}），以及使用自助法或留一法（{cmd:bootstrap}、{cmd:jackknife}）；见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
如果指定 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，还必须指定 {cmd:baseoutcome()}。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt rrr} 报告转化为相对风险比的估计系数，即 exp(b) 而不是 b；见 {mansection R mlogitRemarksandexamplesDescriptionofthemodel:{it:模型描述}} 在 {bf:[R] mlogit} 中。
标准误和置信区间也会相应转化。此选项影响结果的显示方式，而非估计方式。{opt rrr} 可在估计时或重放先前估计的结果时指定。

{phang}
{opt nocnsreport}；见 {helpb estimation options##nocnsreport:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance} 和 {opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可与 {opt mlogit} 一起使用，但在对话框中未显示：

{phang}
{opt collinear}、{opt coeflegend}；见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sysdsn1}{p_end}

{pstd}拟合多项式逻辑回归模型{p_end}
{phang2}{cmd:. mlogit insure age male nonwhite i.site}{p_end}

{pstd}与上述相同，但使用 2 作为基准结果{p_end}
{phang2}{cmd:. mlogit insure age male nonwhite i.site, base(2)}{p_end}

{pstd}重放，报告相对风险比{p_end}
{phang2}{cmd:. mlogit, rrr}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. constraint 1 [Uninsure]}{p_end}
{phang2}{cmd:. constraint 2 [Prepaid]: 2.site 3.site}{p_end}

{pstd}拟合带约束的多项式逻辑回归模型{p_end}
{phang2}{cmd:. mlogit insure age male nonwhite i.site, constraint(1)}{p_end}
{phang2}{cmd:. mlogit insure age male nonwhite i.site, constraint(2)}{p_end}
{phang2}{cmd:. mlogit insure age male nonwhite i.site, constraint(1/2)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mlogit} 会将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_cd)}}完全确定的观察数{p_end}
{synopt:{cmd:e(k_out)}}结果数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(k_eq_base)}}基准结果的方程编号{p_end}
{synopt:{cmd:e(baseout)}}作为基准结果的 {it:depvar} 的值{p_end}
{synopt:{cmd:e(ibaseout)}}基准结果的索引{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mlogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方测试的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(baselab)}}与基准结果对应的值标签{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {opt predict()} 规范{p_end}
{synopt:{cmd:e(asbalanced)}}因变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(out)}}结果值{p_end}
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
{center:翻译自Stata官方帮助文档 <mlogit.sthlp>}