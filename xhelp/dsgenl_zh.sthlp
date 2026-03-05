{smcl}
{* *! version 1.0.0  25feb2019}{...}
{viewerdialog dsgenl "dialog dsgenl"}{...}
{vieweralsosee "[DSGE] dsgenl" "mansection DSGE dsgenl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsgenl postestimation" "help dsgenl postestimation"}{...}
{vieweralsosee "[DSGE] Intro 2" "mansection DSGE Intro2"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "Syntax" "dsgenl_zh##syntax"}{...}
{viewerjumpto "Menu" "dsgenl_zh##menu"}{...}
{viewerjumpto "Description" "dsgenl_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dsgenl_zh##linkspdf"}{...}
{viewerjumpto "Options" "dsgenl_zh##options"}{...}
{viewerjumpto "Examples" "dsgenl_zh##examples"}{...}
{viewerjumpto "Stored results" "dsgenl_zh##results"}
{help dsgenl:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[DSGE] dsgenl} {hline 2}}非线性动态随机一般均衡模型{p_end}
{p2col:}({mansection DSGE dsgenl:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:dsgenl}
{cmd:(}{it:lexp_1} {cmd:=} {it:rexp_1}{cmd:)}
[{cmd:(}{it:lexp_2} {cmd:=} {it:rexp_2}{cmd:)} ...]
{ifin}{cmd:,}
{opth obser:ved(varlist)}
{opt exostate(namelist)}
[{help dsgenl##optionstbl:{it:选项}}]

{phang}
{it:rexp_j} 和 {it:lexp_j} 是方程 {it:j} 的右侧和左侧的可替代表达式。这些是包含标量、变量和要估计的参数的 Stata 表达式。这些变量可以是状态变量、观察到的控制变量和未观察到的控制变量。前导运算符 {cmd:F.} 可以应用于一个变量，使得 {cmd:F.}{it:varname} 指的是 {it:varname} 在下一个时间期望的值。不允许使用其他时间序列运算符；有关包含额外滞后和前导的信息，请参见 {manlink DSGE Intro 4}。待估计的参数用花括号括起来；{cmd:{c -(}beta{c )-}} 是参数的一个例子。通过在花括号内包含等号和初始值来给出参数的初始值；例如，{cmd:{c -(}beta=2{c )-}} 将 {cmd:beta} 的初始值设置为 2。请参见 {bf:[DSGE] Intro 2} 中的 {mansection DSGE Intro2RemarksandexamplesSpecifyingthesystemofnonlinearequations:{it:指定非线性方程系统}}。


{marker optionstbl}{...}
{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent: * {opth obser:ved(varlist)}}观察到的控制变量列表{p_end}
{synopt :{opt unobser:ved(namelist)}}未观察到的控制变量列表{p_end}
{p2coldent: * {opt exostate(namelist)}}外生状态变量列表{p_end}
{synopt :{opt endostate(namelist)}}内生状态变量列表{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation_options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{opt linear:approx}}进行线性近似，而非对数线性近似{p_end}
{synopt :{opt noid:encheck}}不检查参数识别{p_end}
{synopt :{opt solve}}在初始值处返回模型解{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim} 或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help dsgenl##display_options:显示选项}}}控制列和列格式及行宽{p_end}

{syntab:最大化}
{synopt :{it:{help dsgenl##maximize_options:最大化选项}}}控制最大化过程{p_end}

{syntab:高级}
{synopt :{opt nodem:ean}}在估计前不去均值化数据{p_end}
{synopt :{opt post}}即使在因缺乏识别或稳定性导致错误的情况下也强制发布估计结果{p_end}
{synopt :{opt idtol:erance(#)}}设置用于识别检查的容忍度；很少使用{p_end}
{synopt :{opt steadytol:erance(#)}}设置用于稳态计算收敛的容忍度；很少使用{p_end}
{synopt :{opt steadyinit(matrix)}}设置稳态的初始值；很少使用{p_end}

包含帮助短描述-系数图例
{synoptline}
{p 4 6 2}
* {opt observed()} 和 {opt exostate()} 是必需的。{p_end}
{p 4 6 2}
在使用 {opt dsgenl} 之前，您必须 {opt tsset} 数据；请参见 {manhelp tsset TS}。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能的信息，请参见 {manhelp dsgenl_postestimation DSGE:dsgenl 后估计}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 >}
{bf:动态随机一般均衡 (DSGE) 模型 >}
{bf:非线性 DSGE 模型}


{marker description}{...}
{title:描述}

{pstd}
{opt dsgenl} 通过扰动方法拟合非线性动态随机一般均衡 (DSGE) 模型到多个时间序列。DSGE 模型是由经济理论推动的方程系统。在这些系统中，变量未来值的预期可以影响当前值。这些模型的参数通常可以直接用经济理论进行解释。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection DSGE dsgenlMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth observed(varlist)} 指定出现在模型方程中的哪些变量是观察到的控制变量。 {opt observed()} 是必需的。

{phang}
{opt unobserved(namelist)} 指定出现在模型方程中的哪些变量是未观察到的控制变量。名称必须是有效的 Stata 名称，但不需要存在于您的数据集中。

{phang}
{opt exostate(namelist)} 指定出现在模型方程中的哪些变量是外生状态变量。外生状态变量会受到冲击。名称必须是有效的 Stata 名称，但不需要存在于您的数据集中。外生状态变量的数量必须与模型中的观察到的控制变量数量相同。 {opt exostate()} 是必需的。

{phang}
{opt endostate(namelist)} 指定出现在模型方程中的哪些变量是内生状态变量。内生状态变量不受冲击。名称必须是有效的 Stata 名称，但不需要存在于您的数据集中。

{phang}
{opt constraints(constraints)}；请参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt linearapprox} 指定对 DSGE 模型应用线性近似，而非对数线性近似。在任何情况下，都会应用近似。在对数线性近似中，变量被解读为与稳态的百分比偏差。在线性近似中，变量被解读为与稳态的单位偏差。

{phang}
{opt noidencheck} 跳过在初始值下检查参数是否被识别的过程。未结构上识别的模型仍然可以收敛，从而产生表面上有意义的无意义结果；因此，在指定此选项时需要谨慎。有关详细信息，请参见 {manlink DSGE Intro 6}。

{phang}
{opt solve} 在初始参数值下将模型放入状态空间形式。没有产生标准误差。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括源自渐近理论的类型 ({cmd:oim}) 和对某些类型的错误指定具有稳健性的类型 ({cmd:robust})；请参见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}, {opt nocnsreport}；请参见 {helpb estimation options:[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:显示选项}：
{opt noci},
{opt nopv:alues},
{opth cformat(fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}；请参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:最大化}

{marker maximize_options}{...}
{phang}
{it:最大化选项}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法说明)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient}, {opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}，和
{opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。

{dlgtab:高级}

{phang}
{opt nodemean} 防止 {opt dsgenl} 在估计之前去均值化观察到的控制变量。

{phang}
{opt post} 导致 {opt dsgenl} 将参数向量发布到 {opt e()}，即使在检查稳定性条件或识别时出现错误的情况下。

{phang}
{opt idtolerance(#)} 指定用于识别诊断的容忍度。默认值为 {cmd:idtolerance(1e-6)}。

{phang}
{opt steadytolerance(#)} 指定用于模型稳态计算的容忍度。默认值为 {cmd:steadytolerance(1e-17)}。

{phang}
{opt steadyinit(matrix)} 指定用于寻找稳态的初始值向量。

{pstd}
以下选项在 {cmd:dsgenl} 中可用，但不显示在对话框中：

{phang}
{opt coeflegend}; 请参见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rates2}{p_end}
{phang2}{cmd:. generate p = 400*(ln(gdpdef) - ln(L.gdpdef))}{p_end}
{phang2}{cmd:. label variable p "通货膨胀率"}{p_end}

{pstd}参数估计{p_end}
{phang2}{cmd:. dsgenl (1 = {beta}*(x/F.x)*(1/g)*(r/F.p))}
         {cmd:(1/{phi} + (p-1) = {phi}*x + {beta}*(F.p-1))} 
         {cmd:({beta}*r = p^(1/{beta})*u)}
         {cmd:(ln(F.u) = {rhou}*ln(u))}
         {cmd:(ln(F.g) = {rhog}*ln(g)),}
         {cmd:exostate(u g) observed(p r) unobserved(x)}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro2, clear}{p_end}
{phang2}{cmd:. constraint 1 _b[theta]=5}{p_end}
{phang2}{cmd:. constraint 2 _b[beta]=0.96}{p_end}

{pstd}参数估计{p_end}
{phang2}{cmd:. dsgenl (1 = {beta}*(x/F.x)*(1/z)*(r/F.p))}
        {cmd:({theta}-1 + {phi}*(p -1)*p = {theta}*x + {phi}*{beta}*(F.p-1)*F.p)}
        {cmd:(({beta})*r = (p)^({psi=2})*m)}
        {cmd:(ln(F.m) = {rhom}*ln(m))}
        {cmd:(ln(F.z) = {rhoz}*ln(z)),}
        {cmd:exostate(z m) unobserved(x) observed(p r)}
        {cmd:constraint(1 2)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:dsgenl} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(k)}}参数的数量{p_end}
{synopt :{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_dv)}}因变量数量{p_end}
{synopt :{cmd:e(k_state)}}状态方程的数量{p_end}
{synopt :{cmd:e(k_control)}}控制方程的数量{p_end}
{synopt :{cmd:e(k_shock)}}冲击的数量{p_end}
{synopt :{cmd:e(k_observed)}}观察到的控制方程数量{p_end}
{synopt :{cmd:e(k_stable)}}稳定特征根的数量{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(tmin)}}样本中的最小时间{p_end}
{synopt :{cmd:e(tmax)}}样本中的最大时间{p_end}
{synopt :{cmd:e(rank)}} VCE 的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:dsgenl}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}未操作的因变量名称{p_end}
{synopt :{cmd:e(state)}}未操作的状态变量名称{p_end}
{synopt :{cmd:e(shock)}}未操作的受冲击的状态变量名称{p_end}
{synopt :{cmd:e(control)}}未操作的控制变量名称{p_end}
{synopt :{cmd:e(observed)}}未操作的观察到的控制变量名称{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt :{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt :{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt :{cmd:e(tsfmt)}}当前时间变量的格式{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(method)}}似然方法{p_end}
{synopt :{cmd:e(idencheck)}}{cmd:通过}、{cmd:失败}，或 {cmd:跳过}{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}参数向量{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(eigenvalues)}}广义特征值{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(shock_coeff)}}估计的冲击系数矩阵{p_end}
{synopt :{cmd:e(transition)}}估计的状态转移矩阵{p_end}
{synopt :{cmd:e(policy)}}估计的政策矩阵{p_end}
{synopt :{cmd:e(steady)}}估计的稳态向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}模型基础方差{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dsgenl.sthlp>}