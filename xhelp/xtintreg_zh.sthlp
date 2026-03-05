{smcl}
{* *! version 1.3.18  15mar2019}{...}
{viewerdialog xtintreg "dialog xtintreg"}{...}
{vieweralsosee "[XT] xtintreg" "mansection XT xtintreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtintreg postestimation" "help xtintreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{vieweralsosee "[ME] meintreg" "help meintreg_zh"}{...}
{vieweralsosee "[XT] quadchk" "help quadchk_zh"}{...}
{vieweralsosee "[ST] stintreg" "help stintreg_zh"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{vieweralsosee "[XT] xteintreg" "help xteintreg"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{vieweralsosee "[XT] xttobit" "help xttobit_zh"}{...}
{viewerjumpto "Syntax" "xtintreg_zh##syntax"}{...}
{viewerjumpto "Menu" "xtintreg_zh##menu"}{...}
{viewerjumpto "Description" "xtintreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtintreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtintreg_zh##options"}{...}
{viewerjumpto "Technical note" "xtintreg_zh##technote"}{...}
{viewerjumpto "Examples" "xtintreg_zh##examples"}{...}
{viewerjumpto "Stored results" "xtintreg_zh##results"}
{help xtintreg:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[XT] xtintreg} {hline 2}}随机效应区间数据回归模型{p_end}
{p2col:}({mansection XT xtintreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:xtintreg} 
{it:{help depvar:depvar_lower}}
{it:{help depvar:depvar_upper}}
[{indepvars}]
{ifin}
[{it:{help xtintreg##weight:weight}}]
[{cmd:,} {it:options}]

{phang}
{it:depvar_lower} 和 {it:depvar_upper} 的值应具有以下形式：

             数据类型 {space 16} {it:depvar_lower}  {it:depvar_upper}
             {hline 56}
             点数据{space 10}{it:a} = [{it:a},{it:a}]{space 4}{it:a}{space 13}{it:a} 
             区间数据{space 11}[{it:a},{it:b}]{space 4}{it:a}{space 13}{it:b}
             左截尾数据{space 3}(-inf,{it:b}]{space 4}{cmd:.}{space 13}{it:b}
             右截尾数据{space 3}[{it:a},inf){space 4}{it:a}{space 13}{cmd:.} 
             缺失{space 26}{cmd:.}{space 13}{cmd:.} 
             {hline 56}

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含{it:varname}，其系数被约束为1{p_end}
{synopt :{opth constr:aints(estimation options##constraints():constraints)}}应用指定的线性约束{p_end}

{syntab :标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能是 {opt oim}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt lrmodel}}进行似然比模型测试，而不是默认的 Wald 测试{p_end}
{synopt :{opt intreg}}进行与合并模型的似然比测试{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtintreg##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help intpts1
 
{syntab :最大化}
{synopt :{it:{help xtintreg##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定面板变量；使用 {help xtset_zh}.{p_end}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar_lower}、{it:depvar_upper} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt by} 和 {opt statsby} 是允许的；见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt iweight}s 是允许的；见 {help weight_zh}。权重必须在面板内保持恒定。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {helpb xtintreg postestimation:[XT] xtintreg postestimation} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 知觉/面板数据 > 截尾结果 >}
     {bf:区间回归 (RE)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtintreg} 拟合一个随机效应回归模型，其中因变量可以测量为点数据、区间数据、左截尾数据或右截尾数据。必须使用两个 {depvar} 指定因变量，指示因变量的测量方式。用户可以请求在估计时进行比较面板区间回归模型与合并模型的似然比测试。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtintregQuickstart:快速入门}

        {mansection XT xtintregRemarksandexamples:备注和示例}

        {mansection XT xtintregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}、{opth offset(varname)}， 
{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误}

INCLUDE help xt_vce_asymptbj

{dlgtab:报告}

{phang}
{opt level(#)}、{opt lrmodel}；见
 {helpb estimation options:[R] 估计选项}。 

{phang}
{opt intreg} 指定进行随机效应模型与合并模型 ({cmd:intreg}) 对比的似然比测试包含在输出中。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

INCLUDE help displayopts_list

INCLUDE help intpts4

{dlgtab:最大化}

{phang}
{marker maximize_options}
{it:maximize_options}: {opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}， 
{opt iter:ate(#)}， [{cmd:no}]{opt log}， {opt tr:ace}， {opt grad:ient}， 
{opt showstep}， {opt hess:ian}， {opt showtol:erance}， {opt tol:erance(#)}， 
{opt ltol:erance(#)}， {opt nrtol:erance(#)}， 
{opt nonrtol:erance}，和 {opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
与 {opt xtintreg} 一起可用但未在对话框中显示的选项有：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker technote}{...}
{title:技术说明}

{pstd}
随机效应模型使用积分法计算，其准确性部分取决于使用的积分点数量。我们可以使用 {cmd:quadchk} 命令检查更改积分点数量是否会影响结果。如果结果发生变化，则积分近似在给定的积分点数量下并不准确。尝试使用 {cmd:intpoints()} 选项增加积分点数量，然后再运行 {cmd:quadchk}。当 {cmd:quadchk} 报告的系数差异显著时，请勿尝试解释估计结果。有关详细信息，请参见 {manhelp quadchk XT} 和 {bf:[XT] xtprobit} 的
{mansection XT xtprobitRemarksandexamplestechnote:示例}。

{pstd}
由于 {cmd:xtintreg} 似然函数是通过高斯-赫尔米特积分计算的，在大型问题上，计算可能很慢。计算时间大致与用于积分的点数成正比。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork5}{p_end}
{phang2}{cmd:. xtset idcode}{p_end}

{pstd}拟合随机效应 (RE) 区间数据回归模型{p_end}
{phang2}{cmd:. xtintreg ln_wage1 ln_wage2 union age grade south##c.year}
          {cmd:occ_code}{p_end}

{pstd}与上述相同，但包括比较 RE 模型与合并模型的似然比测试{p_end}
{phang2}{cmd:. xtintreg ln_wage1 ln_wage2 union age grade south##c.year}
          {cmd:occ_code, intreg}{p_end}

{pstd}使用非自适应高斯-赫尔米特积分拟合 RE 区间数据回归模型{p_end}
{phang2}{cmd:. xtintreg ln_wage1 ln_wage2 union age grade south##c.year}
          {cmd:occ_code, intmethod(ghermite)}{p_end}

{pstd}重播结果并报告 99.5% 的置信区间{p_end}
{phang2}{cmd:. xtintreg, level(99.5)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtintreg} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(N_unc)}}未截尾观察值的数量{p_end}
{synopt:{cmd:e(N_lc)}}左截尾观察值的数量{p_end}
{synopt:{cmd:e(N_rc)}}右截尾观察值的数量{p_end}
{synopt:{cmd:e(N_int)}}区间观察值的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)}中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(sigma_e)}}epsilon_it 的标准差{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtintreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方测试的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；相应于 {cmd:e(chi2_c)} 的模型卡方测试的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Gaussian}；随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是要执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
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
{center:翻译自Stata官方帮助文档 <xtintreg.sthlp>}