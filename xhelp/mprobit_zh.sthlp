{smcl}
{* *! version 1.4.1  12dec2018}{...}
{viewerdialog mprobit "dialog mprobit"}{...}
{viewerdialog "svy: mprobit" "dialog mprobit, message(-svy-) name(svy_mprobit)"}{...}
{vieweralsosee "[R] mprobit" "mansection R mprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mprobit postestimation" "help mprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: mprobit" "help bayes mprobit"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[CM] cmmprobit" "help cmmprobit_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[CM] nlogit" "help nlogit_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "mprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "mprobit_zh##menu"}{...}
{viewerjumpto "Description" "mprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "mprobit_zh##options"}{...}
{viewerjumpto "Examples" "mprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "mprobit_zh##results"}
{help mprobit:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] mprobit} {hline 2}}多项式 probit 回归{p_end}
{p2col:}({mansection R mprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:mprobit} 
{depvar} 
[{indepvars}] 
{ifin}
[{it:{help mprobit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:常数项}}抑制常数项{p_end}
{synopt :{opt base:outcome(#|lbl)}}用于归一化位置的结果{p_end}
{synopt :{opt probit:param}}使用 probit 方差参数化{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg}, {opt boot:strap},
   或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 
{cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help mprobit##display_options:显示选项}}}控制
包含帮助简短描述 - 显示选项

{syntab :积分}
{synopt :{opt intp:oints(#)}}四分点的数量{p_end}

{syntab :最大化}
{synopt :{it:{help mprobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保持共线变量{p_end}
包含帮助短描述 - 系数图例
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}{cmd:bayes}, {cmd:bootstrap}, {cmd:by}, {cmd:fp}, {cmd:jackknife}, 
{cmd:mi estimate}, {cmd:rolling}, {cmd:statsby}, 和 {cmd:svy} 是允许的；见
{help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_mprobit BAYES:bayes: mprobit}.{p_end}
包含帮助 vce_mi
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用。{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不允许使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp mprobit_postestimation R:mprobit postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分类结果 > 多项式 probit 回归}

 
{marker description}{...}
{title:描述}

{pstd}
{cmd:mprobit} 为分类因变量拟合多项式 probit 模型，结果没有自然顺序。因变量的实际值并不相关。假设误差项是独立的，标准正态随机变量。  
{help cmmprobit_zh} 通过指定相关的潜在变量误差放宽无关替代品独立性假设。 {cmd:cmmprobit} 还允许异方差潜在变量误差和特定于替代品的自变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R mprobitQuickstart:快速入门}

        {mansection R mprobitRemarksandexamples:备注和示例}

        {mansection R mprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt noconstant} 抑制 J-1 常数项。

{phang}{opt baseoutcome(#|lbl)} 指定用于归一化潜在变量位置的结果。基准结果可以指定为数字或标签。默认使用最频繁的结果。与基准结果相关联的系数为零。

{phang}{opt probitparam} 指定使用 probit 方差参数化，通过将基于规模和基准替代品之间的差分潜在误差的方差固定为一。默认是将基准和规模潜在误差的方差设为一，使得差的方差为二。

{phang}{opt constraints(constraints)}；见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{pmore}
如果指定 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，还必须指定 {cmd:baseoutcome()}。

{dlgtab:报告}

{phang}{opt level(#)}, {opt nocnsreport}; 见
     {helpb estimation options:[R] 估计选项}。

包含帮助 displayopts_list

{dlgtab:积分}

{phang}{opt intpoints(#)} 指定用于近似似然的高斯四分点的数量。默认值为 15。 

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规范)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的
{it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可用于 {opt mprobit}，但在对话框中未显示：

{phang}
{opt collinear}, {opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sysdsn1}{p_end}

{pstd}拟合多项式 probit 模型{p_end}
{phang2}{cmd:. mprobit insure age male nonwhite i.site}{p_end}

{pstd}与上述相同，但使用结果 2 来归一化潜在变量位置{p_end}
{phang2}{cmd:. mprobit insure age male nonwhite i.site, baseoutcome(2)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mprobit} 将以下内容存储在 {cmd:e()}中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k_out)}}结果数量{p_end}
{synopt:{cmd:e(k_points)}}四分点数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_indvars)}}独立变量数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数模拟似然{p_end}
{synopt:{cmd:e(N_clust)}}簇数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(k_eq_base)}}基准结果的方程编号{p_end}
{synopt:{cmd:e(baseout)}}作为基准结果处理的 {it:depvar} 的值{p_end}
{synopt:{cmd:e(ibaseout)}}基准结果的索引{p_end}
{synopt:{cmd:e(const)}}如果指定了 {cmd:noconstant} 则为 {cmd:0}，否则为 {cmd:1}{p_end}
{synopt:{cmd:e(probitparam)}}如果指定了 {cmd:probitparam} 则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mprobit}{p_end}
{synopt:{cmd:e(cmdline)}}輸入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(indvars)}}独立变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量的名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}，模型卡方测试的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(outeqs)}}结果方程{p_end}
{synopt:{cmd:e(out}{it:#}{cmd:)}}结果标签，{it:#}=1,...,{cmd:e(k_out)}{p_end}
{synopt:{cmd:e(opt)}}优化的类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行
                         最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:predict()} 的默认规范，用于
{cmd:margins}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 被视为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 被视为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(outcomes)}}结果值{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mprobit.sthlp>}