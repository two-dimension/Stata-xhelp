{smcl}
{* *! version 1.2.18  19apr2019}{...}
{viewerdialog tnbreg "dialog tnbreg"}{...}
{viewerdialog "svy: tnbreg" "dialog tnbreg, message(-svy-) name(svy_tnbreg)"}{...}
{vieweralsosee "[R] tnbreg" "mansection R tnbreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] tnbreg postestimation" "help tnbreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: tnbreg" "help bayes tnbreg"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tpoisson" "help tpoisson_zh"}{...}
{vieweralsosee "[XT] xtnbreg" "help xtnbreg_zh"}{...}
{vieweralsosee "[R] zinb" "help zinb_zh"}{...}
{vieweralsosee "[R] zip" "help zip_zh"}{...}
{viewerjumpto "Syntax" "tnbreg_zh##syntax"}{...}
{viewerjumpto "Menu" "tnbreg_zh##menu"}{...}
{viewerjumpto "Description" "tnbreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tnbreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "tnbreg_zh##options"}{...}
{viewerjumpto "Remarks" "tnbreg_zh##remarks"}{...}
{viewerjumpto "Examples" "tnbreg_zh##examples"}{...}
{viewerjumpto "Stored results" "tnbreg_zh##results"}
{help tnbreg:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] tnbreg} {hline 2}}截断负二项回归
{p_end}
{p2col:}({mansection R tnbreg:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:tnbreg} {depvar} [{indepvars}] {ifin}
[{it:{help tnbreg##weight:权重}}]
   [{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt:{cmd:ll(}{it:#}|{varname}{cmd:)}}截断点；默认值为 {cmd:ll(0)}，即零截断{p_end}
{synopt :{opt d:ispersion}{cmd:(}{opt m:ean}{cmd:)}}离散参数的参数化；默认值{p_end}
{synopt :{opt d:ispersion}{cmd:(}{opt c:onstant}{cmd:)}}所有观察值的常数离散{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包括 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包括 {it:varname_o}，系数约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
  {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg}, {opt boot:strap},
  或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}
{p_end}
{synopt :{opt nolr:test}}抑制似然比检验{p_end}
{synopt :{opt ir:r}}报告事件发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help tnbreg##display_options:显示选项}}}控制
包含帮助简短描述 - 显示选项

{syntab:最大化}
{synopt :{it:{help tnbreg##tnbreg_maximize:最大化选项}}}控制
最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助 矩阵变量列表
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}, {cmd:bootstrap}, {cmd:by}, {cmd:fp}, {cmd:jackknife},
{cmd:rolling}, {cmd:statsby} 和 {cmd:svy} 是允许的；请参见 {help prefix_zh}。
更多详细信息，请参见 {manhelp bayes_tnbreg BAYES:bayes: tnbreg}.{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用.{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s 是允许的；见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}有关估计后可用功能，请见 {manhelp tnbreg_postestimation R:tnbreg 后估计}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 截断负二项回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tnbreg} 通过最大似然估计截断负二项模型的参数。因变量
{depvar} 依赖于 {indepvars}，其中 {it:depvar} 是一个
正计数变量，其值都高于截断点。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R tnbregQuickstart:快速入门}

        {mansection R tnbregRemarksandexamples:备注和示例}

        {mansection R tnbregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{cmd:ll(}{it:#}|{varname}{cmd:)} 指定截断点，一个非负整数。默认是零截断，{cmd:ll(0)}。

{phang}
{cmd:dispersion(mean}{c |}{cmd:constant)} 指定模型的参数化。{cmd:dispersion(mean)}，默认值，产生一个
离散度等于 1 + alpha*exp(xb + offset) 的模型；也就是说，离散度是期望均值的函数：exp(xb + offset)。
{cmd:dispersion(constant)} 的离散度等于 1 + delta；也就是说，它是对所有观察值的一个常数。

{phang}
{opth exposure:(varname:varname_e)}, {opt offset(varname_o)},
{opt constraints(constraints)}；见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nolrtest} 抑制 Poisson 模型的拟合。没有该选项时，将拟合一个对比 Poisson 模型，并且在检验离散参数为零的原假设的似然比检验中使用该似然。

{phang}
{opt irr} 报告转化为事件发生率比的估计系数，即 exp(b) 而非 b。标准误和置信区间同样被转化。该选项影响结果的显示方式，而非它们的估计或存储方式。{opt irr} 可以在估计时或在重放以前估计的结果时指定。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker tnbreg_maximize}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)}, {opt ltol:erance(#)},
{opt nrtol:erance(#)}, {opt nonrtol:erance}, 和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认
{it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可用于 {opt tnbreg}，但在对话框中未显示：

{phang}
{opt collinear}, {opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:tnbreg} 拟合截断负二项模型的均值-离散度和常数-离散度参数化。
这些参数化扩展了在 {cmd:nbreg} 中实现的参数化，以适用于截断数据情况；见 {manhelp nbreg R}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse medpar}{p_end}

{pstd}默认截断点为 0 的截断负二项回归{p_end}
{phang2}{cmd:. tnbreg los died hmo type2-type3}{p_end}

{pstd}与上述相同，但集群在 {cmd:provnum}{p_end}
{phang2}{cmd:. tnbreg los died hmo type2-type3, vce(cluster provnum)}{p_end}

    {hline}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rod93}{p_end}

{pstd}截断点为 9 和常数离散的截断负二项回归{p_end}
{phang2}{cmd:. tnbreg deaths i.cohort, ll(9) dispersion(constant)}{p_end}

{pstd}与上述相同，但指定暴露变量{p_end}
{phang2}{cmd:. tnbreg deaths i.cohort, ll(9) dispersion(constant) exp(exposure)}
{p_end}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:tnbreg} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_eq_model)}} 整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}常数仅模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(alpha)}} alpha 的值{p_end}
{synopt:{cmd:e(delta)}} delta 的值{p_end}
{synopt:{cmd:e(N_clust)}}集群的数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}} 仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:tnbreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(llopt)}} {cmd:ll()} 的内容，若未指定则为 {cmd:0}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；与 {cmd:e(chi2_c)} 对应的模型卡方检验的类型{p_end}
{synopt:{cmd:e(dispers)}}{cmd:mean} 或 {cmd:constant}{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为
{cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为
{cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
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
{center:翻译自Stata官方帮助文档 <tnbreg.sthlp>}