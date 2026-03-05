{smcl}
{* *! version 1.3.1  12dec2018}{...}
{viewerdialog biprobit "dialog biprobit_notsu"}{...}
{viewerdialog "seemingly unrelated biprobit" "dialog biprobit_su"}{...}
{viewerdialog "svy: biprobit" "dialog biprobit_notsu, message(-svy-) name(svy_biprobit_notsu)"}{...}
{viewerdialog "svy: seemingly unrelated biprobit" "dialog biprobit_su, message(-svy-) name(svy_biprobit_su)"}{...}
{vieweralsosee "[R] biprobit" "mansection R biprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] biprobit postestimation" "help biprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: biprobit" "help bayes biprobit"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "biprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "biprobit_zh##menu"}{...}
{viewerjumpto "Description" "biprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "biprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "biprobit_zh##options"}{...}
{viewerjumpto "Examples" "biprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "biprobit_zh##results"}
{help biprobit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] biprobit} {hline 2}}双变量 Probit 回归
{p_end}
{p2col:}({mansection R biprobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}双变量 Probit 回归

{p 8 17 2}
{cmd:biprobit}
{it:{help depvar:depvar1}} {it:{help depvar:depvar2}}
[{indepvars}]
{ifin}
[{it:{help biprobit##weight:权重}}]
[{cmd:,}
{it:{help biprobit##options_table:选项}}]


{phang}似乎无关的双变量 Probit 回归

{p 8 17 2}
{cmd:biprobit}
{it:equation1} {it:equation2}
{ifin}
[{it:{help biprobit##weight:权重}}]
[{cmd:,} {it:{help biprobit##su_options:su_options}}]


{pstd}其中 {it:equation1} 和 {it:equation2} 被指定为

{p 8 12 2}{cmd:(} [{it:eqname}{cmd:: }] {depvar} [{cmd:=}] [{indepvars}]
		[{cmd:,} {opt nocons:tant}
                {opth off:set(varname)} ] {cmd:)}

{synoptset 28 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt par:tial}}拟合部分可观测性模型{p_end}
{synopt :{opth offset1(varname)}}第一个方程的偏移变量{p_end}
{synopt :{opth offset2(varname)}}第二个方程的偏移变量{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/鲁棒性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg},
{opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的
Wald 检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help biprobit##display_options:显示选项}}}控制
包含帮助简短描述-显示选项

{syntab:最大化}
{synopt :{it:{help biprobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}

{synoptset 28 tabbed}{...}
{marker su_options}{...}
{synopthdr :su_options}
{synoptline}
{syntab:模型}
{synopt :{opt par:tial}}拟合部分可观测性模型{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/鲁棒性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg},
{opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的
Wald 检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help biprobit##display_options:显示选项}}}控制
包含帮助简短描述-显示选项

{syntab:最大化}
{synopt :{it:{help biprobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}

包含帮助 fvvarlist
{p 4 6 2}{it:depvar1}, {it:depvar2}, {it:indepvars}, 和 {it:depvar} 可能含有时间序列操作符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt bayes}, {opt bootstrap}, {opt by}, {opt fp}, {opt jackknife},
{opt rolling}, {opt statsby}, 和 {opt svy} 被允许；请参见 {help prefix_zh}.
有关更多细节，请参见 {manhelp bayes_biprobit BAYES:bayes: biprobit}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用.{p_end}
{p 4 6 2}
{opt vce()}, {cmd:lrmodel}, 和权重与 {help svy_zh}
前缀不允许使用.{p_end}
{marker weight}{...}
{p 4 6 2}{opt pweight}s, {opt fweight}s, 和 {opt iweight}s 被允许；请参见 
{help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参见 {manhelp biprobit_postestimation R:biprobit 后验估计} 获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

    {title:biprobit}

{phang2}
{bf:统计 > 二元结果 > 双变量 Probit 回归}

    {title:似乎无关的双变量 Probit}

{phang2}
{bf:统计 > 二元结果 >}
     {bf:似乎无关的双变量 Probit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:biprobit} 适合最大似然两方程 Probit
模型 -- 无论是双变量 Probit 还是似乎无关的 Probit
（限于两个方程）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R biprobitQuickstart:快速入门}

        {mansection R biprobitRemarksandexamples:备注和示例}

        {mansection R biprobitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 请参见
{helpb estimation options##noconstant:[R] 估计选项}.

{phang}
{opt partial} 指定拟合部分可观测性模型。此
特定模型通常收敛性较差，因此我们建议您使用 {helpb maximize##difficult:difficult} 选项，如果您希望拟合 Poirier 部分可观测性模型；请参见 {help maximize_zh:[R] 最大化}.

{pmore}
此模型计算两个因变量的乘积，以便不必用乘积替换每一个。

{phang}
{opth offset1(varname)}, {opt offset2(varname)},
{opt constraints(constraints)}; 请参见
{helpb estimation options:[R] 估计选项}.

{dlgtab:标准误/鲁棒性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}, {opt lrmodel},
{opt nocnsreport}; 请参见
     {helpb estimation options:[R] 估计选项}.

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient}, {opt showstep}, {opt hess:ian},
{opt showtol:erance}, {opt tol:erance(#)}, {opt ltol:erance(#)}, 
{opt nrtol:erance(#)}, {opt nonrtol:erance}, 和
{opt from(init_specs)}; 请参见 {help maximize_zh:[R] 最大化}.
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认
{it:vcetype} 为 {cmd:vce(opg)}.

{pstd}
以下选项可用于 {opt biprobit}，但未在对话框中显示：

{phang}
{opt collinear}, {opt coeflegend}; 请参见
     {helpb estimation options:[R] 估计选项}.


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse school}{p_end}

{pstd}双变量 Probit 回归{p_end}
{phang2}{cmd:. biprobit private vote logptax loginc years}{p_end}

{pstd}似乎无关的双变量 Probit 回归{p_end}
{phang2}{cmd:. biprobit (private = logptax loginc years)}
            {cmd:(vote = logptax years)}{p_end}

{pstd}具有鲁棒标准误的似乎无关的双变量 Probit 回归{p_end}
{phang2}{cmd:. biprobit (private = logptax loginc years)}
            {cmd:(vote = logptax years), vce(robust)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:biprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然 ({cmd:lrmodel}
	仅适用){p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(chi2)}}卡方检验{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方检验{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 否则{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:biprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset1)}}第一个方程的偏移量{p_end}
{synopt:{cmd:e(offset2)}}第二个方程的偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方类型
检验{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}; 与 {cmd:e(chi2_c)} 
对应的模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器要执行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <biprobit.sthlp>}