{smcl}
{* *! version 1.3.12  12dec2018}{...}
{viewerdialog intreg "dialog intreg"}{...}
{viewerdialog "svy: intreg" "dialog intreg, message(-svy-) name(svy_intreg)"}{...}
{vieweralsosee "[R] intreg" "mansection R intreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] intreg postestimation" "help intreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: intreg" "help bayes intreg"}{...}
{vieweralsosee "[ERM] eintreg" "help eintreg_zh"}{...}
{vieweralsosee "[FMM] fmm: intreg" "help fmm intreg"}{...}
{vieweralsosee "[ME] meintreg" "help meintreg_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[ST] stintreg" "help stintreg_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{vieweralsosee "[XT] xtintreg" "help xtintreg_zh"}{...}
{vieweralsosee "[XT] xttobit" "help xttobit_zh"}{...}
{viewerjumpto "语法" "intreg_zh##syntax"}{...}
{viewerjumpto "菜单" "intreg_zh##menu"}{...}
{viewerjumpto "描述" "intreg_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "intreg_zh##linkspdf"}{...}
{viewerjumpto "选项" "intreg_zh##options"}{...}
{viewerjumpto "示例" "intreg_zh##examples"}{...}
{viewerjumpto "存储结果" "intreg_zh##results"}
{help intreg:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] intreg} {hline 2}}区间回归{p_end}
{p2col:}({mansection R intreg:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:intreg}
{it:{help depvar:depvar1}}
{it:{help depvar:depvar2}}
[{indepvars}]
{ifin}
[{it:{help intreg##weight:weight}}]
[{cmd:,} {it:options}]

{pstd}
{it:depvar1} 和 {it:depvar2} 应具有以下形式：

             数据类型 {space 16} {it:depvar1}  {it:depvar2}
             {hline 46}
             点数据{space 10}{it:a} = [{it:a},{it:a}]{space 4}{it:a}{space 8}{it:a} 
             区间数据{space 11}[{it:a},{it:b}]{space 4}{it:a}{space 8}{it:b}
             左截尾数据{space 3}(-inf,{it:b}]{space 4}{cmd:.}{space 8}{it:b}
             右截尾数据{space 3}[{it:a},inf){space 4}{it:a}{space 8}{cmd:.} 
             缺失值{space 26}{cmd:.}{space 8}{cmd:.} 
             {hline 46}

{synoptset 31 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:h:et(}{varlist} [{cmd:,} {opt nocons:tant}]{cmd:)}}用来建模方差的自变量；使用 {opt noconstant} 来抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包括 {it:varname}，其系数约束为1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg}, {opt boot:strap},
或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认是 {cmd:level(95)}
{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help intreg##display_options:显示选项}}}控制
包括帮助的简短描述-显示选项

{syntab :最大化}
{synopt :{it:{help intreg##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包括帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}
包括帮助 fvvarlist2
{p 4 6 2}
{it:depvar1}、{it:depvar2}、{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fmm}、{opt fp}、{opt jackknife}、
{opt mfp}、{opt nestreg}、{opt rolling}、{opt statsby}、{opt stepwise} 和
{opt svy} 是允许的；见 {help prefix_zh}。
更多细节，请参见 {manhelp bayes_intreg BAYES:bayes: intreg} 和
{manhelp fmm_intreg FMM:fmm: intreg}.{p_end}
{p 4 6 2} 加权无法与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{p 4 6 2}
{opt vce()} 和权重不能与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}、{opt fweight}、{opt iweight} 和 {opt pweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp intreg_postestimation R:intreg 后估计}，获取估计后可用功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型和相关 > 截尾回归 >}
     {bf:区间回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:intreg} 拟合一个线性模型，其结果以点数据、区间数据、左截尾数据或右截尾数据的形式衡量。因此，它是 {help tobit_zh} 拟合模型的推广。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R intregQuickstart:快速入门}

        {mansection R intregRemarksandexamples:备注和示例}

        {mansection R intregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见 
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{cmd:het(}{varlist}[{opt , noconstant}]{cmd:)} 指定标准差的对数作为 {it:varlist} 的线性组合。 除非指定 {cmd:noconstant}，否则常数项将被包含。

{phang}
{opth offset(varname)}、{opt constraints(constraints)}；见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

包括帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；见
     {helpb estimation options:[R] 估计选项}。

包括帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:算法_spec)}、
{opt iter:ate(#)}、
[{cmd:no}]{opt log}、
{opt tr:ace}、
{opt grad:ient}、
{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、
{opt nonrtol:erance}，以及
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 将默认
{it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
{opt intreg} 可用的选项如下，但在对话框中不显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}
我们有一个包含工资的数据库，工资被截尾并分为各个类别。一些关于工资的观察数据是

        wage1    wage2
{p 8 27 2}20{space 7}25{space 6} 表示  20000 <= 工资 <= 25000{p_end}
{p 8 27 2}50{space 8}.{space 6} 表示 50000 <= 工资

{pstd}设置{p_end}
{phang2}{cmd:. webuse intregxmpl}{p_end}

{pstd}区间回归{p_end}
{phang2}{cmd:. intreg wage1 wage2 age c.age#c.age nev_mar rural school tenure}

{pstd}与上述相同，但抑制常数项{p_end}
{phang2}{cmd:. intreg wage1 wage2 age c.age#c.age nev_mar rural school tenure,}
           {cmd:noconstant}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:intreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察次数{p_end}
{synopt:{cmd:e(N_unc)}}未截尾观察次数{p_end}
{synopt:{cmd:e(N_lc)}}左截尾观察次数{p_end}
{synopt:{cmd:e(N_rc)}}右截尾观察次数{p_end}
{synopt:{cmd:e(N_int)}}区间观察次数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中方程的数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型卡方检验的 p 值{p_end}
{synopt:{cmd:e(sigma)}}sigma{p_end}
{synopt:{cmd:e(se_sigma)}}sigma 的标准误{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代数量{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 表示未收敛{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:intreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(het)}}如果指定了 {cmd:het()}，则为 {cmd:heteroskedasticity}{p_end}
{synopt:{cmd:e(ml_score)}}用于实现 {cmd:scores} 的程序{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化程序是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}被 {cmd:margins} 允许的预测{p_end}
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
{center:翻译自Stata官方帮助文档 <intreg.sthlp>}