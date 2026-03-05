{smcl}
{* *! version 1.2.9  12dec2018}{...}
{viewerdialog tpoisson "dialog tpoisson"}{...}
{viewerdialog "svy: tpoisson" "dialog tpoisson, message(-svy-) name(svy_tpoisson)"}{...}
{vieweralsosee "[R] tpoisson" "mansection R tpoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] tpoisson postestimation" "help tpoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: tpoisson" "help bayes tpoisson"}{...}
{vieweralsosee "[FMM] fmm: tpoisson" "help fmm tpoisson"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tnbreg" "help tnbreg_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{vieweralsosee "[R] zinb" "help zinb_zh"}{...}
{vieweralsosee "[R] zip" "help zip_zh"}{...}
{viewerjumpto "Syntax" "tpoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "tpoisson_zh##menu"}{...}
{viewerjumpto "Description" "tpoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tpoisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "tpoisson_zh##options"}{...}
{viewerjumpto "Examples" "tpoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "tpoisson_zh##results"}
{help tpoisson:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] tpoisson} {hline 2}}截断泊松回归{p_end}
{p2col:}({mansection R tpoisson:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:tpoisson} {depvar} [{indepvars}] {ifin} 
[{it:{help tpoisson##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:constant}}抑制常数项{p_end}
{synopt:{cmd:ll(}{it:#}|{varname}{cmd:)}}截断的下限；
当未指定 {cmd:ll()} 或 {cmd:ul()} 时默认值为 {cmd:ll(0)}{p_end}
{synopt:{cmd:ul(}{it:#}|{varname}{cmd:)}}截断的上限{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})
且系数限制为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，且系数
限制为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以为 {opt oim}、
  {opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap}、
  或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}
{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help tpoisson##display_options:显示选项}}}控制
包含帮助简短描述-显示所有选项

{syntab:最大化}
{synopt :{it:{help tpoisson##maximize_options:最大化选项}}}控制
最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助 fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；
见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt bayes}、{opt bootstrap}、{opt by}、{opt fmm}、{opt fp}、
{opt jackknife}、{opt rolling}、{opt statsby} 和 {opt svy} 是允许的；见
{help prefix_zh}。
有关更多详细信息，参见 {manhelp bayes_tpoisson BAYES:bayes: tpoisson} 和
{manhelp fmm_tpoisson FMM:fmm: tpoisson}.{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是允许的；见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}有关估计后可用特性的，请参见 {manhelp tpoisson_postestimation R:tpoisson postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 截断泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tpoisson} 拟合截断泊松回归模型
当事件的发生次数被限制在某个截断点之上、以下或在两个截断点之间时，使用截断泊松模型。
当因变量和协变量均未在分布的截断部分观察到时，截断泊松模型是合适的。
默认情况下，{cmd:tpoisson} 假设左截断发生在零点，但截断可指定在其他固定点或在不同观察值下的变动值上。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R tpoissonQuickstart:快速入门}

        {mansection R tpoissonRemarksandexamples:备注和示例}

        {mansection R tpoissonMethodsandformulas:方法与公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{cmd:ll(}{it:#}|{varname}{cmd:)} 和
{cmd:ul(}{it:#}|{varname}{cmd:)}分别指定截断的下限和上限。
您可以为一个或两个指定非负整数值。

{pmore}
当未指定 {cmd:ll()} 或 {cmd:ul()} 时，默认值为零
截断，即 {cmd:ll(0)}，相当于在零处的左截断。

{phang}
{opth exposure:(varname:varname_e)}, {opt offset(varname_o)},
{opt constraints(constraints)}；见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告估计系数转换为发生率
比，即 exp(b) 而不是 b。标准误差和置信区间也类似转换。此选项影响结果显示的方式，而不是估计方式。
{opt irr} 可以在估计时或重放先前估计的结果时指定。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)},
[{cmd:no}]{opt log}，
{opt tr:ace}，
{opt grad:ient}，
{opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}， {opt ltol:erance(#)}，
{opt nrtol:erance(#)}， {opt nonrtol:erance} 和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 将把默认
{it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt tpoisson} 一起使用，但不在
对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse runshoes}{p_end}

{pstd}默认截断点为 0 的截断泊松回归{p_end}
{phang2}{cmd:. tpoisson shoes distance i.male age}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. replace shoes = . if shoes < 4}{p_end}

{pstd}截断点为 3 和暴露变量 {cmd:age} 的截断泊松回归{p_end}
{phang2}{cmd:. tpoisson shoes distance male, exposure(age) ll(3)}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tpoisson} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}簇的数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:tpoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(llopt)}}{cmd:ll()} 的内容，如果未指定 {cmd:ll()} 或 {cmd:ul()}，则为 {cmd:0}{p_end}
{synopt:{cmd:e(ulopt)}}若指定，则为 {cmd:ul()} 的内容{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方
测试的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行
最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为
{cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为
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
{center:翻译自Stata官方帮助文档 <tpoisson.sthlp>}