
{smcl}
{* *! version 1.2.0  09oct2017}{...}
{cmd:help cnreg} {right:对话框:  {dialog cnreg}  {dialog cnreg, message(-svy-) name(svy_cnreg):svy: cnreg}{space 4}}
{right:另见:  {help cnreg postestimation}{space 1}}
{help cnreg:English Version}
{hline}
{right:{help prdocumented_zh:之前的文档}}
{hline}
{pstd}
{cmd:cnreg} 继续有效，但从 Stata 11 开始，不再是 Stata 的官方组成部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参见 {help intreg_zh} 以获取 {cmd:cnreg} 的推荐替代方案。


{title:标题}

{p2colset 5 18 20 2}{...}
{p2col :{hi:[R] cnreg} {hline 2}}截尾正态回归{p_end}
{p2colreset}{...}


{title:语法}

{p 8 14 2}
{cmdab:cnr:eg}
{depvar} 
[{indepvars}] 
{ifin}
{weight}
{cmd:,}
{opt cen:sored(varname)}
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opth cen:sored(varname)}}指示 {it:depvar} 是否未被截尾的变量 (0)、左截尾 (-1) 或右截尾 (1){p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包括在模型中，系数约束为 1{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}

{syntab:最大选项}
{synopt :{it:{help cnreg##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt censored(varname)} 是必需的。{p_end}
{p 4 6 2}
{opt bootstrap}、{opt by}、{opt jackknife}、{opt nestreg}、{opt rolling}、{opt statsby}、{opt stepwise}、{opt svy} 和 {cmd:xi} 是允许的；请参见 {help prefix_zh}。{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}{cmd:aweight}s不允许与 {help jackknife_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt aweight}s、{opt fweight}s、{opt pweight}s 和 {opt iweight}s 是允许的；请参见 {help weight_zh}。{p_end}
{p 4 6 2}
请参见 {manhelp cnreg_postestimation R:cnreg postestimation} 以获取估计后可用的功能。{p_end}


{title:描述}

{pstd}
{cmd:cnreg} 拟合 {depvar} 与 {indepvars} 的模型，其中 {it:depvar} 包含观察值和截尾观察值。截尾值可能因观察而异。


{title:选项}

{dlgtab:模型}

{phang}
{opth censored(varname)} 是必需的。
{it:varname} 是一个变量，用于指示 {it:depvar} 是否被截尾，以及如果是，截尾是左侧还是右侧。  
{hi:0} 表示 {it:depvar} 未被截尾。
{hi:-1} 表示左截尾；真实值仅被知晓为小于或等于在 {it:depvar} 中记录的值。
{hi:+1} 表示右截尾；真实值仅被知晓为大于或等于在 {it:depvar} 中记录的值。

{phang}
{opth offset(varname)}；见 
{helpb estimation options##offset():[R] 估计选项}。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见 
{helpb estimation options##level():[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最大选项}

{phang}
{it:maximize_options}: {opt iter:ate(#)}、[{cmd:{ul:no}}]{opt lo:g}、 
{opt tr:ace}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、
{opt nonrtol:erance}；见 
{manhelp maximize R}。
这些选项很少使用。

{pmore}
与大多数最大似然命令不同，{cmd:cnreg} 默认情况下为 {opt nolog} -- 它抑制了迭代日志。
{opt log} 将显示迭代日志。


{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse news2}{p_end}

{pstd}执行截尾正态回归{p_end}
{phang2}{cmd:. cnreg date lncltn famown, censored(cnsrd)}

{pstd}重播结果，使用 99% 置信区间{p_end}
{phang2}{cmd:. cnreg, level(99)}


{title:保存的结果}

{pstd}
{cmd:cnreg} 将以下内容保存在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_unc)}}未截尾观测值数量{p_end}
{synopt:{cmd:e(N_lc)}}左截尾观测值数量{p_end}
{synopt:{cmd:e(N_rc)}}右截尾观测值数量{p_end}
{synopt:{cmd:e(llopt)}}{cmd:ll()} 的内容，如果已指定{p_end}
{synopt:{cmd:e(ulopt)}}{cmd:ul()} 的内容，如果已指定{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}常数-only 模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(chi2)}}卡方统计量{p_end}
{synopt:{cmd:e(p)}}卡方检验的 p 值{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果已收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:cnreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(censored)}}在 {cmd:censored()} 中指定的变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(offset)}}偏移{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(crittype)}}优化标准{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前的文档}
{p_end}

{psee}
{space 2}帮助:  
{manhelp cnreg_postestimation R:cnreg postestimation};{break}
{manhelp intreg R}, 
{manhelp regress R},
{manhelp tobit R}, 
{manhelp svy_estimation SVY:svy estimation}, 
{manhelp xtintreg XT}, 
{manhelp xttobit XT}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cnreg.sthlp>}