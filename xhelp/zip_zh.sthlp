{smcl}
{* *! version 1.2.1  12dec2018}{...}
{viewerdialog zip "dialog zip"}{...}
{viewerdialog "svy: zip" "dialog zip, message(-svy-) name(svy_zip)"}{...}
{vieweralsosee "[R] zip" "mansection R zip"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] zip postestimation" "help zip postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: zip" "help bayes zip"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] tnbreg" "help tnbreg_zh"}{...}
{vieweralsosee "[R] tpoisson" "help tpoisson_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{vieweralsosee "[R] zinb" "help zinb_zh"}{...}
{viewerjumpto "Syntax" "zip_zh##syntax"}{...}
{viewerjumpto "Menu" "zip_zh##menu"}{...}
{viewerjumpto "Description" "zip_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "zip_zh##linkspdf"}{...}
{viewerjumpto "Options" "zip_zh##options"}{...}
{viewerjumpto "Examples" "zip_zh##examples"}{...}
{viewerjumpto "Stored results" "zip_zh##results"}
{help zip:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] zip} {hline 2}}零膨胀泊松回归{p_end}
{p2col:}({mansection R zip:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:zip} {depvar} [{indepvars}] {ifin}
[{it:{help zip##weight:权重}}]{cmd:,}{break} 
   {opt inf:late}{cmd:(}{varlist}[{cmd:,} {opth off:set(varname)}]|{cmd:_cons)}
   [{it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:模型}
{p2coldent :* {opt inf:late()}}决定计数是否为零的方程{p_end}
{synopt :{opt nocons:常数}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}将 {opt ln(varname_e)} 纳入模型并将系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 纳入模型并将系数约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{opt probit}}使用 probit 模型来描述多余的零；默认是 logit{p_end}

{syntab:SE/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能是 {opt oim}，
  {opt r:obust}， {opt cl:uster} {it:clustvar}， {opt opg}， {opt boot:strap}，
  或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt irr}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help zip##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help zip##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt inf:late}{cmd:(}{it:varlist}[{cmd:,} {opt off:set(varname)}]|{cmd:_cons)}
是必需的。{p_end}
INCLUDE help fvvarlist2
{p 4 6 2}{cmd:bayes}，{cmd:bootstrap}，{cmd:by}，{cmd:fp}，{cmd:jackknife}，
{cmd:rolling}，{cmd:statsby}，和 {cmd:svy} 是允许的；请参见 {help prefix_zh}。
有关详细信息，请参阅 {manhelp bayes_zip BAYES:bayes: zip}。{p_end}
{p 4 6 2}不允许与 {help bootstrap_zh} 前缀一起使用权重。{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh}
前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s，{cmd:iweight}s，和 {cmd:pweight}s 是允许的；请参见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会在对话框中出现。{p_end}
{p 4 6 2}请参见 {manhelp zip_postestimation R:zip 后估计} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 零膨胀泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:zip} 拟合一个零膨胀泊松（ZIP）模型，用于具有过多零计数的计数数据。ZIP模型假设过多的零计数来自于 logit 或 probit 模型，其余的计数来自于泊松模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R zipQuickstart:快速入门}

        {mansection R zipRemarksandexamples:备注和示例}

        {mansection R zipMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:inflate(}{varlist}[{cmd:,} {cmd:offset(}{varname}{cmd:)}]|{cmd:_cons)}
指定决定观察到的计数是否为零的方程。
概念上，省略 {opt inflate()} 将等同于拟合 {help poisson_zh} 的模型。

{pmore}
{cmd:inflate(}{it:varlist}[{cmd:, offset(}{it:varname}{cmd:)}]{cmd:)}
指定方程中的变量。您可以选择性地为此 {it:varlist} 包含一个偏移量。

{pmore}
{cmd:inflate(_cons)} 指定决定计数是否为零的方程仅包含一个截距。要运行一个只有截距的 {depvar} 的零膨胀模型，请输入
{bind:{cmd:zip} {it:depvar}{cmd:,} {cmd:inflate(_cons)}}。

{phang}
{opt noconstant}， {opth exposure:(varname:varname_e)}， {opt offset(varname_o)}， 
{opt constraints(constraints)}；见
{helpb estimation options:[R] 估计选项}。

{phang}
{opt probit} 请求使用 probit 模型，而非 logit 模型来描述数据中的多余零。

{dlgtab:SE/稳健}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。 

{phang}
{opt irr} 报告估计系数转换为发生率比。标准误差和置信区间也会相应转换。
此选项影响结果的显示方式，而不是它们的估计或存储方式。{opt irr} 可以在估计时或重播先前估计的结果时指定。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:算法规格)}， 
{opt iter:ate(#)}， [{cmd:no}]{cmd:log}， {opt tr:ace}， 
{opt grad:ient}， {opt showstep}， {opt hess:ian}， {opt showtol:erance}，
{opt tol:erance(#)}， {opt ltol:erance(#)}，
{opt nrtol:erance(#)}， {opt nonrtol:erance}，和 {opt from(init_specs)}；见
{help maximize_zh:[R] 最大化}。这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 将重置默认的
{it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
{opt zip} 提供的以下选项在对话框中未显示：

{phang}
{opt collinear}， {opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. webuse fish}{p_end}

{pstd}拟合零膨胀泊松模型{p_end}
{phang2}{cmd:. zip count persons livebait, inflate(child camper)}{p_end}

{pstd}重播结果，显示发生率比{p_end}
{phang2}{cmd:. zip, irr}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:zip} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察次数{p_end}
{synopt:{cmd:e(N_zero)}}零观察次数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛， {cmd:0} 表示未收敛{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:zip}{p_end}
{synopt:{cmd:e(cmdline)}}如输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(inflate)}}{cmd:logit} 或 {cmd:probit}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset1)}}偏移量{p_end}
{synopt:{cmd:e(offset2)}}{cmd:inflate()} 的偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方的类型
测试{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器将执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

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
{center:翻译自Stata官方帮助文档 <zip.sthlp>}