
{smcl}
{* *! version 1.1.1  20jun2011}{...}
{cmd:help dvech}{...}
{right:对话框:  {dialog dvech}{space 15}}
{help dvech:English Version}
{hline}
{right:另见:  {help dvech postestimation}}
{hline}
{pstd}
{cmd:dvech} 已被 {helpb mgarch dvech} 替代。 {cmd:mgarch dvech} 是 {help mgarch_zh} 的一部分，估计四种不同的多变量 GARCH 模型的参数——对角 vech 模型、常数条件相关模型、动态条件相关模型和时间变化条件相关模型；因此 {cmd:mgarch dvech} 可以完成 {cmd:dvech} 所能完成的任务及更多。 {cmd:dvech} 仍然可用，但从 Stata 12 起不再是 Stata 的官方组成部分。这是原始帮助文件，我们将不再更新，所以某些链接可能不再有效。


{title:标题}

{synoptset 12}{...}
{synopt:{bf:[TS] dvech} {hline 2}}对角 vech 多变量 GARCH 模型
{p_end}
{p2colreset}{...}


{title:语法}

{p 8 14 2}
{cmd:dvech}
{it:eq} [{it:eq} ... {it:eq}] 
{ifin} 
[{cmd:,} {it:options}]


{pstd}
其中每个 {it:eq} 的形式为

{phang2}
          {cmd:(}{it:{help varlist_zh:depvars}} {cmd:=} [{indepvars}]{cmd:,}
          [{opt nocons:tant}]{cmd:)}

{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth ar:ch(numlist)}}ARCH 项{p_end}
{synopt :{opth ga:rch(numlist)}}GARCH 项{p_end}
{synopt :{opth const:raints(numlist)}}应用线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}
或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help dvech##display_options:display_options}}}控制
包括帮助短描述-显示选项

{syntab:最大化}
{synopt :{it:{help dvech##maximize_options:maximize_options}}}控制最大化过程；很少使用
   {p_end}
{synopt :{opt from(matname)}}系数的初始值；
         很少使用{p_end}
{synopt :{opt svtech:nique(algorithm_spec)}}起始值最大化
          算法{p_end}
{synopt :{opt sviter:ate(#)}}起始值迭代次数；默认值为
          {cmd:sviterate(25)}{p_end}

包括帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}您必须在使用 {opt dvech} 之前 {opt tsset} 您的数据；请参见
         {manhelp tsset TS}.{p_end}
包括帮助 fvvarlist
{p 4 6 2}{it:depvars} 和 {it:indepvars} 可以包含时间序列运算符；
         请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt by}、{opt statsby} 和 {opt rolling} 是允许的；请参见
         {help prefix_zh}.{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}有关估计后可用特性的，请参见 {manhelp dvech_postestimation TS:dvech postestimation}.{p_end}


{title:菜单}

{phang}
{bf:统计 > 多变量时间序列 > 多变量 GARCH}


{marker description}{...}
{title:描述}

{pstd}
{cmd:dvech} 估计一类多变量广义自回归条件异方差 (GARCH) 模型的参数。
多变量 GARCH 模型允许因变量的条件协方差矩阵遵循灵活的动态结构。 {opt dvech} 估计对角 vech GARCH 模型的参数，其中因变量当前条件协方差矩阵的每个元素仅依赖于其自身的过去和过去的冲击。


{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制常数项。

{phang}
{opth arch(numlist)} 指定模型中的 ARCH 项。 默认情况下，未指定 ARCH 项。

{phang}
{opth garch(numlist)} 指定模型中的 GARCH 项。 默认情况下，未指定 GARCH 项。

{phang}
{opth constraints(numlist)} 指定应用于参数估计的线性约束。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定估计量的方差-协方差矩阵的估计。 {cmd:vce(oim)}，默认值，指定使用观察信息矩阵（OIM）估计。 {cmd:vce(robust)} 指定使用 Huber/White/三明治估计。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nocnsreport}；见
{helpb estimation options##nocnsreport:[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opth cformat(%fmt)},
{opt pformat(%fmt)}，和
{opt sformat(%fmt)}；
见 {helpb estimation options##display_options:[R] 估计选项}。

{dlgtab:最大化}

{marker maximize_options}{...}
{phang}
{it:maximize_options}：
{opt dif:ficult}, 
{opt tech:nique(algorithm_spec)},
{opt iter:ate(#)},
[{cmd:{ul:no}}]{opt lo:g},
{opt tr:ace}, 
{opt grad:ient},
{opt showstep},
{opt hess:ian}, 
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
和
{opt from(matname)}；
请参见 {manhelp maximize R} 获取所有选项，但 {opt from()} 的信息请见下文。这些选项很少使用。

{phang}
{opt from(matname)} 指定系数的初始值。
{cmd:from(b0)} 会使 {opt dvech} 以 {opt b0} 中的值开始优化算法。 {opt b0} 必须是行向量，列数必须等于模型中参数的数量。

{phang}
{opt svtechnique(algorithm_spec)} 和 {opt sviterate(#)}
指定起始值搜索过程的选项。

{phang2}
{opt svtechnique(algorithm_spec)} 指定用于搜索初始值的算法。 {it:algorithm_spec} 的语法与 {opt technique()} 选项的语法相同；见 {manhelp maximize R}。
{cmd:svtechnique(bhhh 5 nr 16000)} 是默认值，此选项不能与 {cmd:from()} 一起指定。

{phang2}
{opt sviterate(#)} 指定搜索算法可以执行的最大迭代次数。 默认值为 {cmd:sviterate(25)}，此选项不能与 {cmd:from()} 一起指定。

{pstd}
以下选项在 {cmd:dvech} 中可用，但不会在对话框中显示：

{phang}
{opt coeflegend}；见 
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse irates4}{p_end}

{pstd}拟合 {cmd:bond} 和 {cmd:tbill} 变化的 VAR(1) 模型，
允许 ARCH(1) 误差{p_end}
{phang2}{cmd:. dvech (D.bond D.tbill = LD.bond LD.tbill), arch(1)}{p_end}

{pstd}与上述相同，但约束 {cmd:D.bond} 对 {cmd:D.tbill} 的滞后效应为零并抑制约束{p_end}
         {cmd:. dvech (D.bond = LD.bond LD.tbill, noconstant) ///}
                 {cmd:(D.tbill = LD.tbill, noconstant), arch(1)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse acme}{p_end}
{phang2}{cmd:. constraint 1 [L.ARCH]1_1  = [L.ARCH]2_2}{p_end}
{phang2}{cmd:. constraint 2 [L.GARCH]1_1 = [L.GARCH]2_2}{p_end}

{pstd}拟合一个双变量 GARCH 模型，约束两个变量的 ARCH
系数和 GARCH 系数相等{p_end}
{phang2}{cmd:. dvech (acme = L.acme) (anvil = L.anvil), arch(1) garch(1) constraints(1 2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse aacmer}{p_end}

{pstd}拟合没有回归项或常数项的双变量 GARCH 模型，
包括两个 ARCH 项和一个 GARCH 项{p_end}
{phang2}{cmd:. dvech (acme anvil = , noconstant), arch(1/2) garch(1)}{p_end}

    {hline}


{title:保存的结果}

{pstd}
{cmd:dvech} 将以下内容保存在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_extra)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方统计量{p_end}
{synopt:{cmd:e(p)}}显著性{p_end}
{synopt:{cmd:e(tmin)}}样本中最小时间{p_end}
{synopt:{cmd:e(tmax)}}样本中最大时间{p_end}
{synopt:{cmd:e(rank)}}VCE的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果已收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:dvech}{p_end}
{synopt:{cmd:e(cmdline)}}按原样输入的命令{p_end}
{synopt:{cmd:e(depvars)}}因变量名称{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(dv_eqs)}}带均值方程的因变量{p_end}
{synopt:{cmd:e(indeps)}}每个方程的自变量{p_end}
{synopt:{cmd:e(tvar)}}在组内表示时间的变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:e(arch)}}指定的 ARCH 项{p_end}
{synopt:{cmd:e(garch)}}指定的 GARCH 项{p_end}
{synopt:{cmd:e(svtechnique)}}起始值的最大化技术{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(crittype)}}优化标准{p_end}
{synopt:{cmd:e(properties)}}{opt b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(hessian)}}海森矩阵{p_end}
{synopt:{cmd:e(A)}}{cmd:A} 矩阵的估计{p_end}
{synopt:{cmd:e(B)}}{cmd:B} 矩阵的估计{p_end}
{synopt:{cmd:e(S)}}{cmd:Sigma0} 矩阵的估计{p_end}
{synopt:{cmd:e(Sigma)}}Sigma hat{p_end}
{synopt:{cmd:e(pinfo)}}参数信息，{cmd:predict} 使用{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前记录的内容}

{psee}
{space 2}帮助:  {manhelp dvech_postestimation TS:dvech postestimation};
{break}
{manhelp arch TS},
{manhelp var TS}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dvech.sthlp>}