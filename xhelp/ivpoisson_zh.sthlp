{smcl}
{* *! version 1.1.6  14may2018}{...}
{viewerdialog ivpoisson "dialog ivpoisson"}{...}
{vieweralsosee "[R] ivpoisson" "mansection R ivpoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivpoisson postestimation" "help ivpoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[R] ivtobit" "help ivtobit_zh"}{...}
{vieweralsosee "[R] nl" "help nl_zh"}{...}
{vieweralsosee "[R] nlsur" "help nlsur_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "ivpoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "ivpoisson_zh##menu"}{...}
{viewerjumpto "Description" "ivpoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ivpoisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "ivpoisson_zh##options"}{...}
{viewerjumpto "Examples" "ivpoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "ivpoisson_zh##results"}{...}
{viewerjumpto "Reference" "ivpoisson_zh##reference"}
{help ivpoisson:English Version}
{hline}{...}
{p2colset 1 18 19 2}{...}
{p2col:{bf:[R] ivpoisson} {hline 2}}带有连续内生协变量的 Poisson 模型{p_end}
{p2col:}({mansection R ivpoisson:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
广义矩估计量

{p 8 17 2}
{cmd:ivpoisson} {cmd:gmm} {depvar} [{it:{help varlist_zh:varlist1}}] 
[{cmd:(}{it:{help varlist_zh:varlist2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)}] {ifin}
[{it:{help ivpoisson##weight:weight}}]
[{cmd:,} 
{it:{help ivpoisson##reg_err_opt:reg_err_opt}} 
{it:{help ivpoisson##optionstbl:options}}] 


{phang}
控制函数估计量

{p 8 17 2}
{cmd:ivpoisson} {opt cfunc:tion} {depvar} [{it:{help varlist_zh:varlist1}}] 
{cmd:(}{it:{help varlist_zh:varlist2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin}
[{it:{help ivpoisson##weight:weight}}]
[{cmd:,} {it:{help ivpoisson##optionstbl:options}}] 


{synoptset 28 tabbed}{...}
{marker reg_err_opt}{...}
{synopthdr:reg_err_opt}
{synoptline}
{syntab :模型}
{synopt :{opt add:itive}}将回归误差添加到条件均值项；默认值{p_end}
{synopt :{opt mult:iplicative}}将回归误差乘以条件均值项{p_end}
{synoptline}

{marker optionstbl}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数约束为 1{p_end}
{p2coldent :* {opt two:step}}使用两步 GMM 估计器；{cmd: ivpoisson gmm} 的默认值{p_end}
{p2coldent :* {opt one:step}}使用一步 GMM 估计器；{cmd: ivpoisson cfunction} 的默认值{p_end}
{p2coldent :* {opt i:gmm}}使用迭代 GMM 估计器{p_end}

{syntab :权重矩阵}
{synopt :{opt wmat:rix}{cmd:(}{it:wmtype}{cmd:)} }指定权重矩阵；{it:wmtype} 可以是 {opt r:obust}、{opt cl:uster} {it:clustvar} 或 {opt un:adjusted}{p_end}
{synopt :{opt c:enter}}在计算权重矩阵时对样本矩进行中心化{p_end}
{synopt :{opt winit:ial}{cmd:(}{it:iwtype}[{cmd:, }{opt indep:endent}]{cmd:)} }{p_end}
{synopt :}指定初始权重矩阵；{it:iwtype}可以是 {opt un:adjusted}、{opt i:dentity}，或 Stata 矩阵的名称  
({opt independent} 不能与 {opt ivpoisson gmm} 一起指定){p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 
{opt r:obust}、{opt cl:uster} {it:clustvar}、
{opt boot:strap}、{opt jack:knife} 或 {opt un:adjusted}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告比率的发生率{p_end}
{synopt :{it:{help ivpoisson##display_options:display_options}}}控制
包含 help shortdes-displayoptall

{syntab :优化}
{synopt :{opt from(initial_values)}}指定参数的初始值{p_end}
{p2coldent :# {opt igmmit:erate(#)}}指定迭代 GMM 估计器的最大迭代次数{p_end}
{p2coldent :# {opt igmmeps(#)}}指定迭代 GMM 参数收敛准则的 #；默认值为 {cmd:igmmeps(1e-6)}{p_end}
{p2coldent :# {opt igmmweps(#)}}指定迭代 GMM 权重矩阵收敛准则的 #；默认值为 {cmd:igmmweps(1e-6)}{p_end}
{synopt :{it:{help ivpoisson##optimization_options:optimization_options}}}控制优化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 这些选项中最多只能指定一个。{p_end}
{p 4 6 2}# 这些选项仅可在指定 {opt igmm} 时指定。{p_end}
{p 4 6 2}{it:varlist1} 和 {it:varlist_iv} 可能
包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvar}、{it:varlist1}、{it:varlist2} 和 {it:varlist_iv} 可能
包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:rolling}、 
和 {cmd:statsby} 是允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}权重在使用 {help bootstrap_zh} 前缀时不允许。{p_end}
{p 4 6 2}{cmd:aweight}s 在使用 {help jackknife_zh} 前缀时不允许。
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight}s、{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s
是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}有关估计后可用功能，请参阅 {manhelp ivpoisson_postestimation R:ivpoisson postestimation}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 内生协变量 > 带有内生协变量的 Poisson 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ivpoisson} 估计一个 Poisson 回归模型的参数，其中一些协变量是内生的。该模型也被称为一些协变量为内生的指数条件均值模型。该模型可以使用加法或乘法误差项进行指定。该模型通常用于建模计数结果，并且也用于建模非负结果变量。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R ivpoissonQuickstart:快速入门}

        {mansection R ivpoissonRemarksandexamples:备注和示例}

        {mansection R ivpoissonMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}，
{opth "exposure(varname:varname_e)"},
{opt offset(varname_o)}；见
{helpb estimation options:[R] 估计选项}。

{phang}
{opt additive}，默认值，指定将回归误差添加到条件均值项并且均值为 0。

{phang}
{opt multiplicative} 指定将回归误差乘以条件均值项并且均值为 1。  

{phang}
{opt twostep}、{opt onestep} 和 {opt igmm} 指定要使用的估计量。

{pmore}
{opt twostep} 请求两步 GMM 估计器。 {cmd:gmm} 基于初始权重矩阵获得参数估计，计算基于该估计的新权重矩阵，然后基于该权重矩阵重新估计参数。 {opt twostep} 是 {cmd:ivpoisson gmm} 的默认值。

{pmore}
{opt onestep} 请求一步 GMM 估计器。 参数基于初始权重矩阵进行估计，除了在计算适当的方差-协方差 (VCE) 矩阵时，不会更新权重矩阵。 {opt onestep} 是 {cmd:ivpoisson cfunction} 的默认值。

{pmore}
{opt igmm} 请求迭代 GMM 估计器。 {cmd:gmm} 基于初始权重矩阵获得参数估计，基于该估计计算新的权重矩阵，基于该权重矩阵重新估计参数，然后计算新的权重矩阵，依此类推，直至收敛。当参数向量的相对变化小于 {opt igmmeps()}，权重矩阵的相对变化小于 {opt igmmweps()}，或完成了 {opt igmmiterate()} 次迭代时，声明收敛。
{help ivpoisson##H2005:Hall (2005, sec. 2.4 and 3.6)} 提到使用迭代估计量可能会在有限样本效率方面带来收益。

{dlgtab:权重矩阵}

{marker wmatrix}{...}
{phang}
{opt wmatrix}{cmd:(}{it:wmtype}{cmd:)} 
指定要与两步和迭代 GMM 估计量一起使用的权重矩阵类型。

{pmore}
指定 {cmd:wmatrix(robust)} 请求适用于误差独立但不一定相同分布的权重矩阵。 {cmd:wmatrix(robust)} 是默认值。

{pmore}
指定 {cmd:wmatrix(cluster} {it:clustvar}{cmd:)} 请求考虑 {it:clustvar} 标识的聚类中的观察值之间的任意相关性的权重矩阵。

{pmore}
指定 {cmd:wmatrix(unadjusted)} 请求适用于同方差误差的权重矩阵。

{pmore}
如果同时指定了 {cmd:onestep}，则不能指定 {opt wmatrix()}。

{phang}
{opt center} 请求在计算 GMM 权重矩阵时对样本矩进行中心化（去均值）。 默认情况下，不会进行中心化。

{phang}
{opt winitial}{cmd:(}{it:wmtype}[{cmd:,} {opt independent}]{cmd:)} 
指定用于获取第一步参数估计的权重矩阵。

{pmore}
指定 {cmd:winitial(unadjusted)} 请求假设误差函数独立且同分布的权重矩阵。 该矩阵的形式为 ({bf:Z}'{bf:Z})^-1，其中 {bf:Z} 代表所有外生和工具变量。

{pmore}
{cmd:winitial(identity)} 请求使用单位矩阵。

{pmore}
{opt winitial(matname)} 请求使用 Stata 矩阵 {it:matname}。  

{pmore}
包括 {opt independent} 子选项创建一个假设误差函数独立的权重矩阵。 权重矩阵中与任何两个误差函数之间的协方差对应的元素都设为零。 此子选项仅适用于 {opt ivpoisson cfunction}。

{pmore}
{cmd:winitial(unadjusted)} 是 {cmd:ivpoisson gmm} 的默认值。

{pmore}
{cmd:winitial(unadjusted, independent)} 是 {cmd:ivpoisson cfunction} 的默认值。

{dlgtab:标准误/稳健性}

{marker vcetype}{...}
{phang}
{cmd:vce(}{it:vcetype}{cmd:)} 指定报告的标准误类型，包括对某些类型误差的稳健性类型
({cmd:robust})，允许组内相关（{cmd:cluster}
{it:clustvar}），以及使用自助抽样或重抽样方法
({cmd:bootstrap}, {cmd:jackknife})；见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(unadjusted)} 指定使用未调整（非稳健）的 VCE 矩阵；这与选项 {opt twostep} 一起使用时，结果为许多教科书中讨论的 "最优两步 GMM" 估计。
{cmd:vce(unadjusted)} 可能无法在 {cmd:ivpoisson cfunction} 中设置。

{pmore}
默认的 {it:vcetype} 基于在 {opt wmatrix()} 选项中指定的 {it:wmtype}。 如果指定了 {opt wmatrix()} 但未指定 {opt vce()}，则 {it:vcetype} 被设置为 {it:wmtype}。 
在 {cmd: ivpoisson gmm} 中如果想覆盖此行为并获取未调整（非稳健） VCE 矩阵，则需要指定 {cmd:vce(unadjusted)}。 
默认的 {it:vcetype} 在 {cmd:ivpoisson cfunction} 中是 {cmd:robust}。

{pmore}
指定 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)} 结果基于自助抽样或重抽样，分别。 见
{manhelpi vce_option R}、{manhelp bootstrap R} 和 {manhelp jackknife R} 以获取有关这些 VCE 的更多信息。

{pmore}
{it:vcetype} 的语法与 {cmd:wmatrix()} 的语法相同。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告转换为发生率比的估计系数，即 exp(b) 而不是 b。 标准误和置信区间也以类似方式进行转换。 
此选项影响结果的显示方式，而不是影响它们的估计或存储方式。 
{opt irr} 可以在估计时或重放之前估计的结果时指定。 
{opt irr} 不允许与 {opt additive} 一起使用。

{marker display_options}{...}
包含 help displayopts_list

{dlgtab:优化}

{phang}
{opt from(initial_values)} 指定开始估计的初始值。 您可以指定一个 1 x k 矩阵，其中 k 是模型中的参数数量，或者您可以指定参数名称、其初始值、另一个参数名称、其初始值，依此类推。 例如，要将 {opt male} 的系数初始化为 1.23，{opt _cons} 初始化为 4.57，您输入：

{pmore2}
{cmd:ivpoisson} ...{cmd:,} {cmd:from(male 1.23 _cons 4.57)} ...

{pmore}
使用此选项声明的初始值会覆盖在可替换表达式中声明的任何初始值。 如果您指定的参数不在模型中，{cmd:ivpoisson} 会以错误代码 480 退出。 如果您指定一个矩阵，值必须按照在模型中声明的参数顺序排列。 {cmd:ivpoisson} 会忽略矩阵的行和列名。

{phang}
{opt igmmiterate(#)}、{opt igmmeps(#)} 和
{opt igmmweps(#)} 控制 {cmd:ivpoisson} 的迭代 GMM 估计器的迭代过程。 这些选项只能在指定 {cmd:igmm} 时使用。

{phang2}
{opt igmmiterate(#)} 指定使用迭代 GMM 估计器时执行的最大迭代次数。 默认值为使用 {helpb set maxiter} 设置的值，默认值为 16,000。

{phang2}
{opt igmmeps(#)} 指定使用迭代 GMM 估计器时的成功参数估计的收敛标准。 默认值为 {cmd:igmmeps(1e-6)}。 当连续参数估计之间的相对差异小于 {cmd:igmmeps()}，且连续权重矩阵估计之间的相对差异小于 {cmd:igmmweps()} 时，声明收敛。

{phang2}
{opt igmmweps(#)} 指定使用迭代 GMM 估计器时对连续权重矩阵估计的收敛标准。 默认值为 {cmd:igmmweps(1e-6)}。 当连续参数估计之间的相对差异小于 {cmd:igmmeps()}，且连续权重矩阵估计之间的相对差异小于 {cmd:igmmweps()} 时，声明收敛。

{marker optimization_options}{...}
{phang}
{it:optimization_options}: {opt tech:nique()}、 
{opt conv_maxiter()}、{opt conv_ptol()}、{opt conv_vtol()}、 
{opt conv_nrtol()} 和 {opt tracelevel()}。 {opt technique()} 指定要使用的优化技术；允许使用 {cmd:gn}（默认值）、{cmd:nr}、{cmd:dfp} 和 {cmd:bfgs}。  {opt conv_maxiter()} 
指定最大迭代次数； {opt conv_ptol()}、 
{opt conv_vtol()} 和 {opt conv_nrtol()} 指定参数、梯度和缩放 Hessian 的收敛标准。 
{opt tracelevel()} 允许您在迭代过程中获取额外细节。 
请参见 {help mf_optimize_zh:[M-5] optimize()}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse website}{p_end}

{pstd}广义矩估计：加性误差{p_end}
{phang2}{cmd:. ivpoisson gmm visits ad female} 
	{cmd:(time = phone frfam)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse trip}{p_end}

{pstd}广义矩估计：乘性误差{p_end}
{phang2}{cmd:. ivpoisson gmm trips cbd ptn worker weekend}
	{cmd: (tcost=pt), multiplicative}{p_end}

{pstd}显示发生率比{p_end}
{phang2}{cmd:. ivpoisson, irr}{p_end}

{pstd}控制函数方法{p_end}
{phang2}{cmd:. ivpoisson cfunction trips cbd ptn worker weekend}
	{cmd: (tcost=pt)}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ivpoisson} 会在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(Q)}}准则函数{p_end}
{synopt:{cmd:e(J)}}Hansen {it:J} 卡方统计量{p_end}
{synopt:{cmd:e(J_df)}}{it:J} 统计量的自由度{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代 GMM 估计器使用的迭代次数{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ivpoisson}{p_end}
{synopt:{cmd:e(cmdline)}}命令的输入形式{p_end}
{synopt:{cmd:e(depvar)}}回归的因变量{p_end}
{synopt:{cmd:e(instd)}}被工具化的变量{p_end}
{synopt:{cmd:e(insts)}}工具变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset1)}}第一个方程的偏移变量{p_end}
{synopt:{cmd:e(winit)}}使用的初始权重矩阵{p_end}
{synopt:{cmd:e(winitname)}}用户提供的初始权重矩阵的名称{p_end}
{synopt:{cmd:e(estimator)}}{cmd:gmm} 或 {cmd:cfunction}{p_end}
{synopt:{cmd:e(additive)}}{cmd:additive} 如果指定加性错误{p_end}
{synopt:{cmd:e(multiplicative)}}{cmd:multiplicative} 如果指定乘性错误{p_end}
{synopt:{cmd:e(gmmestimator)}}{opt onestep}、{opt twostep} 或 {opt igmm}{p_end}
{synopt:{cmd:e(wmatrix)}}在 {opt wmatrix()} 中指定的 {it:wmtype}{p_end}
{synopt:{cmd:e(vce)}}在 {opt vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记 Std. Err. 的标题{p_end}
{synopt:{cmd:e(technique)}}优化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}方差-协方差矩阵{p_end}
{synopt:{cmd:e(init)}}估计器的初始值{p_end}
{synopt:{cmd:e(Wuser)}}用户提供的初始权重矩阵{p_end}
{synopt:{cmd:e(W)}}用于最终估计轮次的权重矩阵{p_end}
{synopt:{cmd:e(S)}}用于稳健 VCE 计算的矩时协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{marker reference}{...}
{title:参考}

{marker H2005}{...}
{phang}
Hall, A. R. 2005.
{it:广义矩估计法}.
牛津：牛津大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ivpoisson.sthlp>}