
{smcl}
{* *! version 1.1.12  20jun2011}{...}
{cmd:help ztp}{right:对话框:  {dialog ztp}  {dialog ztp, message(-svy-) name(svy_ztp):svy: ztp}{space 8}}
{right:还见:  {help ztp postestimation}{space 3}}
{help ztp:English Version}
{hline}
{right:{help prdocumented_zh:之前文档化的}}
{hline}
{pstd}
{cmd:ztp} 已被 {help tpoisson_zh} 取代。 {cmd:tpoisson} 允许将任何非负整数指定为左截断点；因此，它可以做 {cmd:ztp} 能做的更多的事情。
{cmd:ztp} 继续有效，但从 Stata 12 开始不再是 Stata 的官方部分。这是原始的帮助文件，我们将不再更新，因此某些链接可能不再有效。

{title:标题}

{p2colset 5 16 18 2}{...}
{p2col :{bf:[R] ztp} {hline 2}}零截断泊松回归{p_end}
{p2colreset}{...}

{title:语法}

{p 8 16 2}
{cmd:ztp} {depvar} [{indepvars}] {ifin} {weight} [{cmd:,}
{it:options}] 

{synoptset 26 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocon:stant}}抑制常数项{p_end}
{synopt :{opth e:xposure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，且系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，且系数约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}

{syntab:SE/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
   {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg}, {opt boot:strap},
  或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help ztp##display_options:显示选项}}}控制省略变量、基准和空单元的间距和显示{p_end}

{syntab:最大化}
{synopt :{it:{help ztp##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

包含 help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
包含 help fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt bootstrap}, {opt by}, {opt jackknife}, {opt rolling},
{opt statsby}, 和 {opt svy} 是被允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用.{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{p 4 6 2}{opt fweight}s, {opt iweight}s, 和 {opt pweight}s 是被允许的；见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}见 {manhelp ztp_postestimation R:ztp 后估计} 以获取估计后可用的功能.{p_end}

{title:菜单}

{phang}
{bf:统计 > 计数结果 > 零截断泊松回归}

{title:描述}

{pstd}
{cmd:ztp} 拟合一个零截断泊松 (ZTP) 最大似然回归，将 {depvar} 与 {indepvars} 进行关联，其中 {it:depvar} 是一个正计数变量。

{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}, {opth exposure:(varname:varname_e)}, {opt offset(varname_o)}, 
{opt constraints(constraints)}, {opt collinear}; 见
{helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健}

包含 help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}; 见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告按发生率比转化的估计系数，即 exp(b) 而非 b。标准误差和置信区间也会进行类似转换。此选项影响结果的显示方式，而不影响结果的估计。在估计时或在重放之前估计的结果时可以指定 {opt irr}。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels};
   见 {helpb estimation options##display_options:[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult}, {opt tech:nique(algorithm_spec)},
{opt iter:ate(#)}, [{cmd:{ul:no}}]{opt lo:g}, {opt tr:ace}, 
{opt grad:ient}, {opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)}, {opt nrtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(init_specs)}; 见 {manhelp maximize R}。这些选项很少被使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项在 {opt ztp} 中可用，但在对话框中不会显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。

{title:示例}

{phang}{cmd:. webuse runshoes}{p_end}
{phang}{cmd:. ztp shoes distance male age}{p_end}
{phang}{cmd:. ztp shoes distance male, exposure(age)}{p_end}

{title:保存的结果}

{pstd}
{cmd:ztp} 将以下内容保存在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}模型 Wald 检验的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_autoCns)}}基础、空和省略约束的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}显著性{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 表示未收敛{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ztp}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(singularHmethod)}}{cmd:m-marquardt} 或 {cmd:hybrid}; 当 Hessian 矩阵是奇异时使用的方法{p_end}
{synopt:{cmd:e(crittype)}}优化标准{p_end}
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

{title:还见}

{psee}
手册:  {help prdocumented_zh:之前文档化的}

{psee}
{space 2}帮助:  {manhelp ztp_postestimation R:ztp 后估计};{break}
{manhelp nbreg R},
{manhelp poisson R},
{manhelp svy_estimation SVY:svy 估计},
{manhelp tnbreg R},
{manhelp tpoisson R},
{manhelp zinb R},
{manhelp zip R},
{manhelp ztnb R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ztp.sthlp>}