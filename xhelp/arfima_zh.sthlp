{smcl}
{* *! version 1.0.19  22mar2019}{...}
{viewerdialog arfima "dialog arfima"}{...}
{vieweralsosee "[TS] arfima" "mansection TS arfima"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arfima postestimation" "help arfima postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "Syntax" "arfima_zh##syntax"}{...}
{viewerjumpto "Menu" "arfima_zh##menu"}{...}
{viewerjumpto "Description" "arfima_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "arfima_zh##linkspdf"}{...}
{viewerjumpto "Options" "arfima_zh##options"}{...}
{viewerjumpto "Examples" "arfima_zh##examples"}{...}
{viewerjumpto "Stored results" "arfima_zh##results"}
{help arfima:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[TS] arfima} {hline 2}}自回归分数积分滑动平均模型{p_end}
{p2col:}({mansection TS arfima:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:arfima}
{depvar}
[{indepvars}]
{ifin}
[{cmd:,}
{it:options}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{synopt:{opth ar(numlist)}}自回归项{p_end}
{synopt:{opth ma(numlist)}}滑动平均项{p_end}
{synopt:{opt smem:ory}}估计无分数积分的短期记忆模型{p_end}
{synopt:{opt ml:e}}最大似然估计；默认值{p_end}
{synopt:{opt mpl}}最大修改型剖面似然估计{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():numlist}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:SE/稳健性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim} 或 {opt r:obust}
    {p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help arfima##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:最大化}
{synopt:{it:{help arfima##maximize_options:maximize_options}}}控制
最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
使用 {opt arfima} 前必须 {opt tsset} 数据；请参见 
{manhelp tsset TS}。
{p_end}
{p 4 6 2}
{it:indepvars} 可包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可包含时间序列操作符；请参见 
{help tsvarlist_zh}。
{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt fp}、{opt rolling} 和 {opt statsby}；
请参见 {help prefix_zh}。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp arfima_postestimation TS:arfima 后估计} 获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > ARFIMA 模型}


{marker description}{...}
{title:描述}

{pstd}
{opt arfima} 估计自回归分数积分滑动平均（ARFIMA）模型的参数。

{pstd}
长记忆过程是自相关函数衰减速度慢于短记忆过程的平稳过程。ARFIMA模型提供了长记忆过程的简约参数化，包含了广泛用于短记忆过程的自回归滑动平均（ARMA）模型。通过允许分数的积分度，ARFIMA模型还推广了具有整数积分度的自回归积分滑动平均（ARIMA）模型。有关ARMA和ARIMA参数估计的详细信息，请参见 {help arima_zh:[TS] arima}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS arfimaQuickstart:快速入门}

        {mansection TS arfimaRemarksandexamples:备注和示例}

        {mansection TS arfimaMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
{bf:{help estimation options##noconstant:[R] 估计选项}}。

{phang}
{opth ar(numlist)} 指定要包含在模型中的自回归（AR）项。  AR({it:p})，{it:p} {ul:>} 1，规格应为 {cmd:ar(1/}{it:p}{cmd:)}。  此模型包含从1到{it:p}的所有滞后，但不需要包含所有滞后。 例如，规格 {cmd:ar(1}{it:p}{cmd:)} 将指定一个仅包含滞后1和{it:p} 的AR({it:p})模型，将所有其他AR滞后参数设置为0。

{phang}
{opth ma(numlist)} 指定要包含在模型中的滑动平均项。这些是滞后创新（白噪声干扰）的项。{cmd:ma(1/}{it:q}{cmd:)},{it:q} {ul:>} 1，指定MA({it:q})模型，但与{cmd:ar()}选项类似，不需要包含所有滞后。

{phang}
{opt smemory} 使得 {cmd:arfima} 拟合短期记忆模型，{it:d} = 0。此选项使得 {cmd:arfima} 通过一种渐近等效于 {help arima_zh} 所产生的方法来估计ARMA模型的参数。

{phang}
{opt mle} 使得 {cmd:arfima} 通过最大似然法估计参数。此方法为默认值。

{phang}
{opt mpl} 使得 {cmd:arfima} 通过最大修改型剖面似然（MPL）估计参数。当模型中有协变量时，MPL估计的分数差异参数的样本偏差小于最大似然估计。{opt mpl} 只能在模型中存在常数项或 {it:indepvars} 时指定，且不能与 {opt mle} 选项结合使用。

{phang}
{opth constraints(numlist)}；见 
{bf:{help estimation options:[R] 估计选项}}。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括对某些类型模型不当设定稳健的类型 ({cmd:robust}) 和源自渐近理论的类型 ({cmd:oim})；见 
{help vce_option_zh:[R] {it:vce_option}}。

{pmore}
选项 {cmd:vce(robust)} 和 {cmd:mpl} 不能结合使用。

{dlgtab:报告}

{phang}
{opt level(#)}，{opt nocnsreport}; 见
{bf:{help estimation options##level():[R] 估计选项}}。

包含帮助显示选项列表

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient}, {opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt gtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。

{pmore}
{cmd:arfima} 的 {it:maximize_options} 特殊点如下。

{phang2} 
{cmd:technique(}{it:algorithm_spec}{cmd:)} 设置优化算法。默认算法为 {cmd:BFGS}，且不允许使用 {cmd:BHHH}。有关可用优化算法的描述，请参阅 {help maximize_zh:[R] 最大化}。

{pmore2}
您可以指定多种优化方法。例如， 
{cmd:technique(bfgs 10 nr)} 请求优化器执行10次BFGS迭代，然后切换到牛顿-拉夫森直到收敛。

{phang2}
{cmd:iterate(}{it:#}{cmd:)} 设置最多迭代次数。当最大化进展不理想时，请将最大迭代次数设置为优化器似乎卡住的点，并检查该点的估计结果。

{phang2}
{cmd:from(}{it:matname}{cmd:)} 允许您在行向量中指定模型参数的起始值。我们建议您使用 {cmd:iterate(0)} 选项，检索初始估计 {cmd:e(b)}，并修改这些元素。

{pstd}
以下选项随 {opt arfima} 可用，但在对话框中未显示：

{phang}
{opt collinear}, {opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse campito}{p_end}

{pstd}慢速衰减自相关表明长记忆过程{p_end}
{phang2}{cmd:. ac width}{p_end}

{pstd}对树环数据拟合 ARFIMA(0,d,0) 模型{p_end}
{phang2}{cmd:. arfima width, technique(nr)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mloa}{p_end}

{pstd}对夏威夷毛纳罗亚的二氧化碳对数月度水平拟合 ARFIMA(1,d,2) 模型。使用对数的第十二个季节差分来消除季节性。{p_end}
{phang2}{cmd:. arfima S12.log, ar(1) ma(2)}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:arfima} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的p值{p_end}
{synopt:{cmd:e(s2)}}特有误差方差估计，如果 {cmd:e(method)} =
{cmd:mpl}{p_end}
{synopt:{cmd:e(tmin)}}最小时间{p_end}
{synopt:{cmd:e(tmax)}}最大时间{p_end}
{synopt:{cmd:e(ar_max)}}最大自回归滞后{p_end}
{synopt:{cmd:e(ma_max)}}最大滑动平均滞后{p_end}
{synopt:{cmd:e(constant)}}{cmd:0} 如果 {cmd:noconstant}，否则 {cmd:1}{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:arfima}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(tvar)}}时间变量{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(method)}}{cmd:mle} 或 {cmd:mpl}{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的{it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(ma)}}滑动平均项的滞后{p_end}
{synopt:{cmd:e(ar)}}自回归项的滞后{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(tech_steps)}}在切换技术之前执行的迭代次数{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许通过 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许通过 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <arfima.sthlp>}