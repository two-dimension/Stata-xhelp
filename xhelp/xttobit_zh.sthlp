{smcl}
{* *! version 1.3.18  15mar2019}{...}
{viewerdialog xttobit "dialog xttobit"}{...}
{vieweralsosee "[XT] xttobit" "mansection XT xttobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xttobit postestimation" "help xttobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] metobit" "help metobit_zh"}{...}
{vieweralsosee "[XT] quadchk" "help quadchk_zh"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{vieweralsosee "[XT] xteintreg" "help xteintreg"}{...}
{vieweralsosee "[XT] xtintreg" "help xtintreg_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xttobit_zh##syntax"}{...}
{viewerjumpto "Menu" "xttobit_zh##menu"}{...}
{viewerjumpto "Description" "xttobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xttobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "xttobit_zh##options"}{...}
{viewerjumpto "Technical note" "xttobit_zh##technote"}{...}
{viewerjumpto "Examples" "xttobit_zh##examples"}{...}
{viewerjumpto "Stored results" "xttobit_zh##results"}
{help xttobit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[XT] xttobit} {hline 2}}随机效应 tobit 模型{p_end}
{p2col:}({mansection XT xttobit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:xttobit} {depvar} [{indepvars}] {ifin}
[{it:{help xttobit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:不包含}}抑制常数项{p_end}
{synopt :{opt ll}[{cmd:(}{varname}|{it:#}{cmd:)}]}左截断变量或界限{p_end}
{synopt :{opt ul}[{cmd:(}{varname}|{it:#}{cmd:)}]}右截断变量或界限{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname} 并将系数限制为 1{p_end}
{synopt :{opth const:raints(estimation options##constraints():约束)}}应用指定的线性约束{p_end}

{syntab :标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt tobit}}进行与合并 tobit 模型的似然比检验{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的 Wald 检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xttobit##display_options:显示选项}}}控制
包含帮助短描述 - 显示选项

包含帮助 intpts1

{syntab :最大化}
{synopt :{it:{help xttobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保持共线变量{p_end}
包含帮助短描述 - 系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定一个面板变量；使用 {help xtset_zh}.{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt by}、{opt fp} 和 {opt statsby} 是允许的；见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt iweight}；见 {help weight_zh}。权重必须在面板内保持不变。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用特性的，请参见 {manhelp xttobit_postestimation XT:xttobit 估计后处理}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 被截断的结果 >}
       {bf:Tobit 回归（随机效应）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xttobit} 为面板数据拟合随机效应 tobit 模型，结果变量被截断。截断限制可以在所有观察值中固定，或者在观察值之间变化。用户可以要求在估计时进行一个比较面板 tobit 模型与合并 tobit 模型的似然比检验。 


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xttobitQuickstart:快速入门}

        {mansection XT xttobitRemarksandexamples:备注和示例}

        {mansection XT xttobitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt ll}[{cmd:(}{varname}|{it:#}{cmd:)}] 和
{opt ul}[{cmd:(}{varname}|{it:#}{cmd:)}]
   分别表示截断的上下限。
   {depvar} {ul:<} {opt ll()} 的观察值是左截断；{it:depvar} {ul:>} {opt ul()} 的观察值是右截断；其余观察值未被截断。您不需要指定截断值。如果您指定了 {opt ll}，下限是 {it:depvar} 的最小值。如果您指定了 {opt ul}，上限是 {it:depvar} 的最大值。

{phang}
{opth offset(varname)}、{opt constraints(constraints)}；见 
{helpb estimation options##offset():[R] 估计选项}。

{dlgtab:标准误}

包含帮助 xt_vce_asymptbj

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt tobit} 表示在输出中包括比较随机效应模型与合并 (tobit) 模型的似然比检验。

{phang}
{opt lrmodel}、{opt nocnsreport}；见
     {helpb estimation options:[R] 估计选项}。

包含帮助 displayopts_list

包含帮助 intpts4

{dlgtab:最大化}

{phang}
{marker maximize_options}
{it:maximize_options}：{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、 
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、 
{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、 
{opt ltol:erance(#)}、{opt nrtol:erance(#)}、 
{opt nonrtol:erance} 和 {opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pstd}
以下选项适用于 {opt xttobit} 但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker technote}{...}
{title:技术说明}

{pstd}
随机效应模型使用求积法计算，这是一种近似方法，其准确性部分取决于使用的积分点的数量。我们可以使用 {cmd:quadchk} 命令查看更改积分点的数量是否影响结果。如果结果发生变化，则积分近似在给定积分点数量时是不准确的。尝试使用 {cmd:intpoints()} 选项增加积分点的数量并重新运行 {cmd:quadchk}。当 {cmd:quadchk} 报告的系数有显著差异时，请勿尝试解释估计结果。有关详细信息，请参见 {manhelp quadchk XT} 和 {bf:[XT] xtprobit} 的 
{mansection XT xtprobitRemarksandexamplestechnote:示例}。

{pstd}
由于 {cmd:xttobit} 的似然函数是通过高斯-赫尔米特求积计算的，面对大问题时，计算速度可能会很慢。计算时间大致与用于求积的点数成正比。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork3}{p_end}
{phang2}{cmd:. xtset idcode}{p_end}

{pstd}拟合随机效应 (RE) tobit 模型{p_end}
{phang2}{cmd:. xttobit ln_wage union age grade not_smsa south##c.year, ul(1.9)}

{pstd}以上相同，但将积分点的数量从 12 增加到 25{p_end}
{phang2}{cmd:. xttobit ln_wage union age grade not_smsa south##c.year, ul(1.9)}
            {cmd:intpoints(25)}

{pstd}以上相同，但报告随机效应模型与合并模型的似然比检验{p_end}
{phang2}{cmd:. xttobit ln_wage union age grade not_smsa south##c.year, ul(1.9)}
            {cmd:intpoints(25) tobit}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xttobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(N_unc)}}未截断观察数{p_end}
{synopt:{cmd:e(N_lc)}}左截断观察数{p_end}
{synopt:{cmd:e(N_rc)}}右截断观察数{p_end}
{synopt:{cmd:e(N_cd)}}完全确定的观察数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型检验的方程数{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅包含常数的模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}对比模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(chi2_c)}}对比检验的卡方值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(sigma_u)}}面板水平标准差{p_end}
{synopt:{cmd:e(sigma_e)}}epsilon_it 的标准差{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(g_min)}}最小组规模{p_end}
{synopt:{cmd:e(g_avg)}}平均组规模{p_end}
{synopt:{cmd:e(g_max)}}最大组规模{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅包含常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xttobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(llopt)}}{cmd:ll()} 的内容{p_end}
{synopt:{cmd:e(ulopt)}}{cmd:ul()} 的内容{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset1)}}偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；与 {cmd:e(chi2_c)} 对应的模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Gaussian}；随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否进行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许 {cmd:margins} 进行预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xttobit.sthlp>}