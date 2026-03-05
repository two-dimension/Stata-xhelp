{smcl}
{* *! version 1.0.7  25feb2019}{...}
{viewerdialog dsge "dialog dsge"}{...}
{vieweralsosee "[DSGE] dsge" "mansection DSGE dsge"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsge 后估计" "help dsge postestimation"}{...}
{vieweralsosee "[DSGE] Intro 2" "mansection DSGE Intro2"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "语法" "dsge_zh##syntax"}{...}
{viewerjumpto "菜单" "dsge_zh##menu"}{...}
{viewerjumpto "描述" "dsge_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "dsge_zh##linkspdf"}{...}
{viewerjumpto "选项" "dsge_zh##options"}{...}
{viewerjumpto "示例" "dsge_zh##examples"}{...}
{viewerjumpto "存储结果" "dsge_zh##results"}
{help dsge:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[DSGE] dsge} {hline 2}}线性动态随机一般均衡模型{p_end}
{p2col:}({mansection DSGE dsge:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:dsge}
{help dsge##eqlist:{it:eqlist}} 
{ifin}
[{cmd:,} {it:options}]

{marker options}{...}
{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主}
{synopt :{cmdab:约束:}(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{opt 不检查}身份检查}{p_end}
{synopt :{opt solve}}返回初始值时的模型解{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim} 或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help dsge##display_options:display_options}}}控制列和列格式及行宽{p_end}

{syntab:极大化}
{synopt :{it:{help dsge##maximize_options:maximize_options}}}控制极大化过程{p_end}

{syntab:高级}
{synopt :{opt nodem:ean}}在估计前不去均值化数据{p_end}
{synopt :{opt post}}即使因识别或稳定性问题导致错误也强制发布估计结果{p_end}
{synopt :{opt idtol:erance(#)}}设置用于识别检查的容差；很少使用{p_end}
{synopt :{opt lintol:erance(#)}}设置用于线性检查的容差；很少使用{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p 4 6 2}
您必须在使用 {cmd:dsge} 之前 {cmd:tsset} 您的数据；请参见 {manhelp tsset TS}.{p_end}
{p 4 6 2}
{cmd:coeflegend} 不能在对话框中出现。{p_end}
{p 4 6 2}
请参阅 {manhelp dsge_postestimation DSGE:dsge 后估计} 以获取估计后可用的功能。

{pstd}
下面是 {it:eqlist} 的完整规范。您可能更喜欢从 {manlink DSGE Intro 2} 中的语法讨论开始。

{marker eqlist}{...}
{pstd}
{it:eqlist} 是{p_end}
{pmore2}{it:eq}{p_end}
{pmore2}{it:eq eqlist}{p_end}

{pstd}
{it:eq} 是{p_end}
{pmore2}{it:cntrl_eq}{p_end}
{pmore2}{it:state_eq}{p_end}

{pstd}
{it:cntrl_eq} 包含{p_end}
{pmore2}{cmd:(}{it:ocntrl_var} {cmd:=} {it:termlist}{cmd:)}{p_end}
{pmore2}{cmd:(}{it:ucntrl_var} {cmd:=} {it:termlist}{cmd:, unobserved)}{p_end}
{pmore2}{cmd:(}{it:parm_exp} {cmd:*} {it:ocntrl_var} {cmd:=} {it:termlist}{cmd:)}{p_end}
{pmore2}{cmd:(}{it:parm_exp} {cmd:*} {it:ucntrl_var} {cmd:=} {it:termlist}{cmd:, unobserved)}{p_end}

{pstd}
{it:state_eq} 包含{p_end}
{pmore2}{cmd:(F.}{it:state_var} {cmd:= , state)}{p_end}
{pmore2}{cmd:(F.}{it:state_var} {cmd:=} {it:termlist}{cmd:, state} [{cmd:noshock}]{cmd:)}{p_end}
{pmore2}{cmd:(}{it:parm_exp} {cmd:*} {cmd:F.}{it:state_var} {cmd:=}
{it:termlist}{cmd:, state} [{cmd:noshock}]{cmd:)}{p_end}

{pstd}
{it:ocntrl_var} 是{p_end}
{pmore2}将在系统中视为观测控制的 Stata 变量{p_end}

{pstd}
{it:ucntrl_var} 是{p_end}
{pmore2}将在系统中视为未观测控制的名称{p_end}

{pstd}
{it:state_var} 是{p_end}
{pmore2}将在系统中视为未观测状态的名称{p_end}

{pmore}
如果恰好有一 个 Stata 变量与 {it:ucntrl_var} 或 {it:state_var} 同名，该变量将被忽略，并且在估计中不发挥任何作用。

{pstd}
{it:termlist} 是{p_end}
{pmore2}{it:term}{p_end}
{pmore2}{it:term} {cmd:+} {it:termlist}{p_end}
{pmore2}{it:term} {cmd:-} {it:termlist}{p_end}

{pstd}
{it:term} 是{p_end}
{pmore2}{it:rhs_var}{p_end}
{pmore2}{it:parm_exp} {cmd:*} {it:rhs_var}{p_end}
{pmore2}{it:parm_exp} {cmd:*} {cmd:(}{it:termlist}{cmd:)}{p_end}

{pstd}
{it:rhs_var} 是{p_end}
{pmore2}{it:ocntrl_var}{p_end}
{pmore2}{it:ucntrl_var}{p_end}
{pmore2}{it:state_var}{p_end}
{pmore2}{cmd:F.}{it:ocntrl_var}{p_end}
{pmore2}{cmd:F.}{it:ucntrl_var}{p_end}

{pstd}
{it:parm_exp} 是{p_end}
{pmore2}可替代的标量表达式；{p_end}
{pmore2}{it:parm_spec} 允许并期望元素{p_end}
{pmore2}{it:rhs_var} 是不允许的{p_end}

{pstd}
{it:parm_spec} 是{p_end}
{pmore2}{cmd:{c -(}}{it:parm_name}{cmd:{c )-}}{p_end}
{pmore2}{cmd:{c -(}}{it:parm_name}{cmd:=}{it:initial_val}{cmd:{c )-}}{p_end}

{pstd}
{it:parm_name} 是{p_end}
{pmore2}用于识别模型参数的名称{p_end}

{pstd}
{it:initial_val} 是{p_end}
{pmore2}数值文字；指定初始值{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量时间序列 >}
{bf:动态随机一般均衡（DSGE）模型 >}
{bf:线性 DSGE 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:dsge} 将线性动态随机一般均衡
(DSGE) 模型拟合到多个时间序列。DSGE 模型是由经济理论激励的方程组。在这些系统中，对变量未来值的预期会影响当前值。这些模型的参数通常可以根据经济理论直接解释。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection DSGE dsgeMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt constraints(constraints)}；请参见
{helpb estimation options:[R] 估计选项}。

{phang}
{opt noidencheck} 跳过检查参数是否在初始值处被识别。非结构性识别的模型仍可能收敛，从而产生看似有意义的无意义结果；因此在指定此选项时应谨慎。
详见 {manlink DSGE Intro 6}。

{phang}
{opt solve} 将模型置于状态空间形式，使用初始参数值。不会生成标准误差。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误差类型，包括源自渐近理论的类型 ({cmd:oim}) 和对某些类型的误设定稳健的类型 ({cmd:robust})；请参见
{help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}, {opt nocnsreport}; 请参见
{helpb estimation options:[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci},
{opt nopv:alues},
{opth cformat(fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}, 和
{opt nolstretch}；
请参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:极大化}

{marker maximize_options}{...}
{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient}, {opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}, 和
{opt from(init_specs)}；请参见 {help maximize_zh:[R] 极大化}。

{dlgtab:高级}

{phang}
{opt nodemean} 阻止 {opt dsge} 在估计之前去掉观测控制变量的均值。

{phang}
{opt post} 导致 {opt dsge} 即使在检查稳定性条件或识别时发生错误也将参数向量发布到 {opt e()}。

{phang}
{opt idtolerance(#)} 指定在识别诊断中使用的容差。默认值为 {cmd:idtolerance(1e-6)}。

{phang}
{opt lintolerance(#)} 指定在线性诊断中使用的容差。默认值为 {cmd:lintolerance(1e-12)}。

{pstd}
以下选项可用于 {cmd:dsge}，但不在对话框中显示：

{phang}
{opt coeflegend}；请参见
{helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rates2}{p_end}
{phang2}{cmd:. generate p = 400*(ln(gdpdef) - ln(L.gdpdef))}{p_end}
{phang2}{cmd:. label variable p "通货膨胀率"}

{pstd}参数估计{p_end}
{phang2}{cmd:. dsge (p = {c -(}beta{c )-}*F.p + {c -(}kappa{c )-}*x)}
         {cmd:(x = F.x -(r - F.p - g), unobserved)}
         {cmd:(r = (1/{c -(}beta{c )-})*p + u)}
         {cmd:(F.u = {c -(}rhou{c )-}*u, state)}
         {cmd:(F.g = {c -(}rhoz{c )-}*g, state)}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro2, clear}{p_end}
{phang2}{cmd:. constraint 1 _b[beta]=0.96}{p_end}

{pstd}参数估计{p_end}
{phang2}{cmd:. dsge (p = {c -(}beta{c )-}*F.p + {c -(}kappa{c )-}*x)}
        {cmd:(x = F.x -(r - E(f.p) - g), unobserved)}
        {cmd:(r = {c -(}psi{c )-}*p + u)}
        {cmd:(F.u = {c -(}rhou{c )-}*u, state)}
        {cmd:(F.g = {c -(}rhog{c )-}*g, state),}
        {cmd:from(psi=1.5) constraint(1)}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro2}{p_end}

{pstd}参数估计{p_end}
{phang2}{cmd:. dsge (c = F.c - (1-{c -(}beta{c )-}+{c -(}beta{c )-}*{c -(}delta{c )-})*F.r, unobserved)}
        {cmd:({c -(}eta{c )-}*h = w - c, unobserved)}
        {cmd:({c -(}phi1{c )-}*x = y - {c -(}phi2{c )-}*c - g, unobserved)}
        {cmd:(y = (1-{c -(}alpha{c )-})*(z+h) + {c -(}alpha{c )-}*k)}
        {cmd:(w = y - h, unobserved)}
        {cmd:(r = y - k, unobserved)}
        {cmd:(F.k = {c -(}delta{c )-}*x+ (1-{c -(}delta{c )-})*k, state noshock)}
        {cmd:(F.z = {c -(}rhoz{c )-}*z, state)}
        {cmd:(F.g = {c -(}rhog{c )-}*g, state),}
        {cmd:from(beta=0.96 eta=1 alpha=0.3 delta=0.025 phi1=0.2 phi2=0.6 rhoz=0.8 rhog=0.3) solve noidencheck}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:dsge} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_dv)}}因变量数量{p_end}
{synopt :{cmd:e(k_state)}}状态方程数量{p_end}
{synopt :{cmd:e(k_control)}}控制方程数量{p_end}
{synopt :{cmd:e(k_shock)}}冲击数量{p_end}
{synopt :{cmd:e(k_observed)}}被观测控制方程数量{p_end}
{synopt :{cmd:e(k_stable)}}稳定特征值数量{p_end}
{synopt :{cmd:e(ll)}}对数似然值{p_end}
{synopt :{cmd:e(tmin)}}样本中的最小时间{p_end}
{synopt :{cmd:e(tmax)}}样本中的最大时间{p_end}
{synopt :{cmd:e(rank)}}VCE的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:dsge}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}未处理的因变量名称{p_end}
{synopt :{cmd:e(state)}}未处理的状态变量名称{p_end}
{synopt :{cmd:e(control)}}未处理的控制变量名称{p_end}
{synopt :{cmd:e(observed)}}未处理的观测控制变量名称{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(tvar)}}表示组中的时间的变量{p_end}
{synopt :{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt :{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt :{cmd:e(tsfmt)}}当前时间变量的格式{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(method)}}似然方法{p_end}
{synopt :{cmd:e(idencheck)}}{cmd:passed}, {cmd:failed}, 或 {cmd:skipped}{p_end}
{synopt :{cmd:e(technique)}}极大化技术{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 禁止的预测{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}参数向量{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(eigenvalues)}}广义特征值{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(shock_coeff)}}估计的冲击系数矩阵{p_end}
{synopt :{cmd:e(transition)}}估计的状态转移矩阵{p_end}
{synopt :{cmd:e(policy)}}估计的政策矩阵{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dsge.sthlp>}