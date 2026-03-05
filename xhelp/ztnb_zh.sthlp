
{smcl}
{* *! version 1.1.16  20jun2011}{...}
{cmd:help ztnb} {right:对话框:  {dialog ztnb}  {dialog ztnb, message(-svy-) name(svy_ztnb):svy: ztnb}{space 6}}
{right:另见:  {help ztnb postestimation}  }
{help ztnb:English Version}
{hline}
{right:{help prdocumented_zh:之前记录的}}
{hline}
{pstd}
{cmd:ztnb} 已被 {help tnbreg_zh} 取代。{cmd:tnbreg} 允许将任何非负整数指定为左截断点；因此，它可以实现 {cmd:ztnb} 能做的事情，还有更多功能。
{cmd:ztnb} 继续有效，但从 Stata 12 开始，它不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。


{title:标题}

{p2colset 5 17 19 2}{...}
{p2col :{bf:[R] ztnb} {hline 2}}零截断负二项回归
{p_end}
{p2colreset}{...}


{title:语法}

{p 8 13 2}
{cmd:ztnb} {depvar} [{indepvars}] {ifin} {weight} 
   [{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocon:stant}}抑制常数项{p_end}
{synopt :{opt d:ispersion}{cmd:(}{opt m:ean}{cmd:)}}分散参数化； {cmd:dispersion(mean)} 是默认值{p_end}
{synopt :{opt d:ispersion}{cmd:(}{opt c:onstant}{cmd:)}}所有观测值的固定分散{p_end}
{synopt :{opth e:xposure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数约束为 1{p_end}
{synopt :{opt const:raints}{cmd:(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:{opt col:linear}}保留共线性变量{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
  {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg}, {opt boot:strap},
  或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}
{p_end}
{synopt :{opt nolr:test}}抑制似然比检验{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help ztnb##display_options:显示选项}}}控制省略变量及基础和空单元的间距
           和显示{p_end}

{syntab:最大化}
{synopt :{it:{help ztnb##ztnb_maximize:最大化选项}}}控制 
最大化过程；很少使用{p_end}

包含 help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
包含 help fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可能包含时间序列操作符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2} {cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling}, 
{cmd:statsby}, 和 {cmd:svy} 是允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2} 权重与 {help bootstrap_zh} 前缀不允许使用.{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不允许使用。
{p_end}
{p 4 6 2} {cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s 是允许的；见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2} 见 {manhelp ztnb_postestimation R:ztnb 后处理} 获取估计后可用的功能.{p_end}


{title:菜单}

{phang}
{bf:统计 > 计数结果 > 零截断负二项回归}


{title:描述}

{pstd}
{cmd:ztnb} 适合 {depvar} 关于 {indepvars} 的零截断负二项 (ZTNB) 回归模型，其中 {it:depvar} 是一个正计数变量。


{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{cmd:dispersion(mean}{c |}{cmd:constant)} 指定模型的参数化。 {cmd:dispersion(mean)}，默认值，得出分散等于 1 + alpha*exp(xb + offset)的模型；即分散是预期均值的函数：exp(xb + offset)。
{cmd:dispersion(constant)} 的分散等于 1 + delta；即它在所有观测中的常量。

{phang}
{opt exposure(varname_e)}, {opt offset(varname_o)},
{opt constraints(constraints)}, {opt collinear}; 见
{helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健性}

包含 help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}; 见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nolrtest} 抑制拟合泊松模型。没有这个选项时，将拟合比较的泊松模型，并使用似然进行似然比检验零假设，即分散参数为零。

{phang}
{opt irr} 报告经过转换的估计系数为发生率比，即 exp(b) 而非 b。标准误差和置信区间也同样转换。这个选项影响结果的显示，而不影响结果的估计或存储。{opt irr} 可以在估计时或重放之前估计的结果时指定。

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

{marker ztnb_maximize}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult}, {opt tech:nique(algorithm_spec)},
{opt iter:ate(#)}, [{cmd:{ul:no}}]{opt lo:g}, {opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)}, {opt ltol:erance(#)},
{opt nrtol:erance(#)}, {opt nonrtol:erance}, 和
{opt from(init_specs)}; 见 {manhelp maximize R}. 这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt ztnb} 一起使用，但不在对话框中显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{title:备注}

{pstd}
{cmd:ztnb} 适合两种不同的 ZTNB 模型参数化，即均值-分散模型和固定分散模型。它们等同于由 {cmd:nbreg} 模型化的内容；见 {manhelp nbreg R}。


{title:示例}

    {hline}
{phang}{cmd:. webuse rod93}{p_end}
{phang}{cmd:. ztnb deaths i.cohort}{p_end}
{phang}{cmd:. ztnb deaths i.cohort, exp(exposure)}{p_end}
    {hline}
{phang}{cmd:. webuse medpar, clear}{p_end}
{phang}{cmd:. ztnb los died hmo type2-type3, vce(cluster provnum)}{p_end}
    {hline}


{title:保存的结果}

{pstd}
{cmd:ztnb} 将以下内容保存在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}模型 Wald 检验中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_autoCns)}}基础、空和省略约束的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(alpha)}}alpha的值{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(p)}}显著性{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛, {cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ztnb}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(dispers)}}{cmd:mean} 或 {cmd:constant}{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}; 对应于 {cmd:e(chi2_c)} 的模型卡方检验类型{p_end}
{synopt:{cmd:e(diparm}{it:#}{cmd:)}}显示变换后的参数 {it:#}{p_end}
{synopt:{cmd:e(diparm_opt2)}}显示变换参数的选项{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器执行最大化或最小化的标识{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(singularHmethod)}}{cmd:m-marquardt} 或 {cmd:hybrid}; 在 Hessian 奇异时使用的方法{p_end}
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
{synopt:{cmd:e(V_modelbased)}}模型基础的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前记录的}

{psee}
{space 2}帮助:  {manhelp ztnb_postestimation R:ztnb 后处理};{break}
{manhelp nbreg R},
{manhelp poisson R}, 
{manhelp svy_estimation SVY:svy 估计},
{manhelp tnbreg R},
{manhelp tpoisson R}, 
{manhelp xtnbreg XT},
{manhelp zip R},
{manhelp ztp R}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ztnb.sthlp>}