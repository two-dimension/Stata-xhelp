{smcl}
{* *! version 1.0.0  28apr2019}{...}
{viewerdialog cmclogit "dialog cmclogit"}{...}
{vieweralsosee "[CM] cmclogit" "mansection CM cmclogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmclogit postestimation" "help cmclogit postestimation"}{...}
{vieweralsosee "[CM] cmmixlogit" "help cmmixlogit_zh"}{...}
{vieweralsosee "[CM] cmmprobit" "help cmmprobit_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{vieweralsosee "[CM] nlogit" "help nlogit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{viewerjumpto "Syntax" "cmclogit_zh##syntax"}{...}
{viewerjumpto "Menu" "cmclogit_zh##menu"}{...}
{viewerjumpto "Description" "cmclogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmclogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmclogit_zh##options"}{...}
{viewerjumpto "Examples" "cmclogit_zh##examples"}{...}
{viewerjumpto "Stored results" "cmclogit_zh##results"}
{help cmclogit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[CM] cmclogit} {hline 2}}条件逻辑（麦克法登）选择模型{p_end}
{p2col:}({mansection CM cmclogit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmclogit}
{depvar}
[{indepvars}]
{ifin}
[{help cmclogit##weight:{it:weight}}]
[{cmd:,} {it:options}]

{phang}
{it:depvar} 等于 1 表示所选的选项，而 0 表示未选择的选项。
每个案例只能有一个被选择的选项。

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth casev:ars(varlist)}}案例特定变量{p_end}
{synopt :{cmdab:base:alternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)}}设置基准选项{p_end}
{synopt :{opt nocons:tant}}抑制特定于选项的常数项{p_end}
{synopt :{opt altwise}}使用特定于选项的删除，而不是特定于案例的删除{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包括在模型中，系数约束为 1{p_end}
{synopt :{opth const:raints(estimation_options##constraints():constraints)}}应用指定的线性约束{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、
{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap}，
或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt nohead:er}}不显示系数表的标题{p_end}
{synopt :{opt nocns:r:eport}}不显示约束{p_end}
{synopt :{it:{help cmclogit##display_options:display_options}}}控制
包括帮助短描述 - 显示选项

{syntab:最大化}
{synopt :{it:{help cmclogit##maximize_options:maximize_options}}}控制最大化过程；很少用到{p_end}

{synopt :{opt col:linear}}保持共线变量{p_end}
包括帮助短描述 - 系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:cmclogit} 之前，必须 {cmd:cmset} 数据；
请参见 {manhelp cmset CM}.{p_end}
包括帮助 fvvarlist2
{p 4 6 2}
{cmd:bootstrap}，
{cmd:by}，
{cmd:fp}，
{cmd:jackknife}，
和
{cmd:statsby}
是允许的；请参见 {help prefix_zh}.{p_end}
包括帮助 weight_boot
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}、{cmd:iweight} 和 {cmd:pweight}（见
{help weight_zh}），但它们被理解为适用于整个案例，而不是单个观察。见
{mansection R clogitRemarksandexamplesUseofweights:{it:权重的使用}}
在 {bf:[R] clogit} 中。{p_end}
{p 4 6 2}
{cmd:collinear} 和 {cmd:coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp cmclogit_postestimation CM:cmclogit 后处理}，以获取
估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 条件逻辑（麦克法登选择）模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmclogit} 拟合麦克法登选择模型，这是更一般条件逻辑回归模型 {help clogit_zh} 的一个特定案例。

{pstd}
该命令要求每个案例有多个观察（代表一个个体或决定者），每个观察表示可能被选择的选项。 {cmd:cmclogit} 允许两种类型的自变量：特定于选项的变量，它在案例和选项之间变化，以及特定于案例的变量，它仅在案例之间变化。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM cmclogitQuickstart:开始使用}

        {mansection CM cmclogitRemarksandexamples:备注和示例}

        {mansection CM cmclogitMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth casevars(varlist)} 指定特定于案例的数值变量。这些变量对每个案例是常量。如果有最多 J 个选项，将有 J - 1 组系数与每个 {it:casevar} 相关联。

{phang}
{cmd:basealternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)} 设置规范化效用水平的选项。基准选项可以在选项变量为数值型时指定为数字，在数值型且有 {help label_zh:value label} 时指定为标签，或在选项变量为字符串变量时指定为字符串。默认值是选择频率最高的选项。如果没有指定特定于选项的常数或特定于案例的变量，则忽略此选项。

{pmore}
如果指定了 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，则必须 
指定基准选项。这是确保在每次调用 {cmd:cmclogit} 时拟合相同模型的原因。

{phang}
{opt noconstant} 抑制特定于选项的常数项的 J - 1 项。

{marker altwise}{...}
{phang}
{opt altwise} 指定在因变量缺失值情况下使用特定于选项的删除。默认值是使用特定于案例的删除；也就是说，如果遇到任何缺失值，则整个组成案例的观察组将被省略。此选项不适用于通过 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀排除的观察；无论是否指定了 {cmd:altwise}，这些观察总是按特定于选项的方式处理。

{phang}
{opth offset(varname)},
{cmd:constraints(}{it:{help numlist_zh}}{c |}{it:matname}{cmd:)};
请参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括源于渐近理论的类型（{cmd:oim}），对某些类型的错误指定稳健的（{cmd:robust}），允许组内相关性（{cmd:cluster} {it:clustvar}），以及使用自助法或重抽样法的方法（{cmd:bootstrap}、{cmd:jackknife}); 请参见 {manhelpi vce_option R}。

{dlgtab:报告}

{phang}
{opt level(#)}; 请参见 {help estimation_options_zh:[R] 估计选项}。

{phang}
{opt or} 报告转换为赔率比的估计系数，即 exp(b) 而非 b。标准误和置信区间也会相应转换。此选项影响结果的显示方式，而非其估计方式。可以在估计时或重放先前估计的结果时指定 {cmd:or}。

{phang}
{opt noheader} 防止显示系数表的标题。

{phang}
{opt nocnsreport}; 请参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包括帮助 显示选项列表

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}，
{opt iter:ate(#)}，
[{cmd:no}]{cmd:log}，
{opt tr:ace}，
{opt grad:ient}，
{opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}，
{opt ltol:erance(#)}，
{opt nrtol:erance(#)}，
{opt nonrtol:erance}，
和
{opt from(init_specs)}；
请参见 {help maximize_zh:[R] 最大化}。这些选项很少用到。

{pmore}
{cmd:technique(bhhh)} 是不允许的。

{pmore}
初始估计必须指定为
{cmd:from(}{it:matname} [{cmd:, copy}]{cmd:)},
其中 {it:matname} 是包含初始估计的矩阵， 
而 {cmd:copy} 选项指定仅每个元素在 {it:matname} 中的位置是相关的。如果未指定 {cmd:copy}，则 {it:matname} 的列条纹标识估计。

{pstd}
以下选项可用于 {cmd:cmclogit}，但未在对话框中显示：

{phang}
{cmd:collinear}、{cmd:coeflegend}；
请参见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice}{p_end}
{phang2}{cmd:. cmset consumerid car}{p_end}

{pstd}拟合条件逻辑选择模型{p_end}
{phang2}{cmd:. cmclogit purchase dealers, casevars(i.gender income)}{p_end}

{pstd}重播结果，报告赔率比而不是系数，并省略输出标题{p_end}
{phang2}{cmd:. cmclogit, or noheader}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cmclogit} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(N_case)}}案例数量{p_end}
{synopt :{cmd:e(N_ic)}}贝叶斯信息准则（BIC）的 N{p_end}
{synopt :{cmd:e(N_clust)}}集群数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_alt)}}选项数量{p_end}
{synopt :{cmd:e(k_indvars)}}特定于选项的变量数量{p_end}
{synopt :{cmd:e(k_casevars)}}特定于案例的变量数量{p_end}
{synopt :{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(const)}}常数指示符{p_end}
{synopt :{cmd:e(i_base)}}基准选项索引{p_end}
{synopt :{cmd:e(chi2)}}卡方值{p_end}
{synopt :{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt :{cmd:e(alt_min)}}最小选项数量{p_end}
{synopt :{cmd:e(alt_avg)}}平均选项数量{p_end}
{synopt :{cmd:e(alt_max)}}最大选项数量{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt :{cmd:e(ic)}}迭代数量{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，则为 {cmd:0} 否则{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:cmclogit}{p_end}
{synopt :{cmd:e(cmdline)}}按原样输入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量名称{p_end}
{synopt :{cmd:e(caseid)}}案例 ID 变量名称{p_end}
{synopt :{cmd:e(altvar)}}选项变量名称{p_end}
{synopt :{cmd:e(alteqs)}}替代方程名称{p_end}
{synopt :{cmd:e(alt}{it:#}{cmd:)}}选项标签{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(marktype)}}{cmd:casewise} 或 {cmd:altwise}，标记类型{p_end}
{synopt :{cmd:e(key_N_ic)}}{cmd:cases}，贝叶斯信息准则（BIC）的 N 的密钥{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt :{cmd:e(offset)}}线性偏移变量{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}，模型卡方检验的类型{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 指定在 {cmd:vce()} 中{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行
                         最大化还是最小化{p_end}
{synopt :{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(datasignature)}}校验和{p_end}
{synopt :{cmd:e(datasignaturevars)}}用于计算的变量
校验和{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 被视为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 被视为 {cmd:asobserved}{p_end}

{p2col 5 25 29 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(stats)}}替代统计{p_end}
{synopt :{cmd:e(altvals)}}替代值{p_end}
{synopt :{cmd:e(altfreq)}}替代频率{p_end}
{synopt :{cmd:e(alt_casevars)}}估计的特定于案例的
系数指标 -- {cmd:e(k_alt)} x {cmd:e(k_casevars)}{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 25 29 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmclogit.sthlp>}