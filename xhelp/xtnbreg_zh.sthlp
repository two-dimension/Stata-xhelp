{smcl}
{* *! version 1.3.11  12dec2018}{...}
{viewerdialog xtnbreg "dialog xtnbreg"}{...}
{vieweralsosee "[XT] xtnbreg" "mansection XT xtnbreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtnbreg postestimation" "help xtnbreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[ME] menbreg" "help menbreg_zh"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtnbreg_zh##syntax"}{...}
{viewerjumpto "Menu" "xtnbreg_zh##menu"}{...}
{viewerjumpto "Description" "xtnbreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtnbreg_zh##linkspdf"}{...}
{viewerjumpto "Options for RE/FE models" "xtnbreg_zh##options_re"}{...}
{viewerjumpto "Options for PA models" "xtnbreg_zh##options_pa"}{...}
{viewerjumpto "Examples" "xtnbreg_zh##examples"}{...}
{viewerjumpto "Stored results" "xtnbreg_zh##results"}
{help xtnbreg:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[XT] xtnbreg} {hline 2}}固定效应、随机效应和总体平均的负二项模型{p_end}
{p2col:}({mansection XT xtnbreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
随机效应（RE）和条件固定效应（FE）过度分散模型

{p 8 16 2}
{cmd:xtnbreg} {depvar} [{indepvars}] {ifin}
[{it:{help xtnbreg##weight:权重}}]
[{cmd:,}
[{opt re}|{opt fe}] {it:{help xtnbreg##reandfeopts:RE/FE_选项}}]


{phang}
总体平均（PA）模型

{p 8 16 2}
{cmd:xtnbreg} {depvar} [{indepvars}] {ifin}
[{it:{help xtnbreg##weight:权重}}]{cmd:,}
{opt pa} [{it:{help xtnbreg##paopts:PA_选项}}]


{marker reandfeopts}{...}
{synoptset 27 tabbed}{...}
{synopthdr:RE/FE_选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项；在 {opt fe} 下不可用{p_end}
{synopt :{opt re}}使用随机效应估计；默认{p_end}
{synopt :{opt fe}}使用固定效应估计{p_end}
{synopt :{opth exp:osure(varname)}}在模型中包含 ln({it:varname})，系数约束为1{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，系数约束为1{p_end}
{synopt :{opth const:raints(estimation options##constraints():约束)}}应用指定的线性约束{p_end}

{syntab :标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能为 {opt oim}、 {opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告事故率比{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的Wald检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtnbreg##re_display_options:显示_选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help xtnbreg##maximize_options:最大化_选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker paopts}{...}
{synoptset 27 tabbed}{...}
{synopthdr:PA_选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt pa}}使用总体平均估计{p_end}
{synopt :{opth exp:osure(varname)}}在模型中包含 ln({it:varname})，系数约束为1{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，系数约束为1{p_end}

{syntab :相关性}
{synopt :{cmdab:c:orr(}{it:{help xtnbreg##correlation:相关性}}{cmd:)}}面板内相关结构{p_end}
{synopt :{opt force}}即使观察点不均匀也强制估计{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能为 {opt conventional}、{opt r:obust}、{opt boot:strap} 或 {opt jack:knife}{p_end}
{synopt :{opt nmp}}使用除数 N-P 而不是默认的N{p_end}
{synopt :{opt s:cale(parm)}}重写默认的尺度参数；{it:parm} 可能为 {cmd:x2}、{cmd:dev}、{cmd:phi}，或 {it:#}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告事故率比{p_end}
{synopt :{it:{help xtnbreg##pa_display_options:显示_选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :优化}
{synopt :{it:{help xtnbreg##optimize_options:优化_选项}}}控制迭代优化过程；很少使用{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{marker correlation}{...}
{synopthdr :相关性}
{synoptline}
{synopt :{opt exc:hangeable}}可交换{p_end}
{synopt :{opt ind:ependent}}独立{p_end}
{synopt :{opt uns:tructured}}无结构{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定{p_end}
{synopt :{opt ar} {it:#}}自回归阶数 {it:#}{p_end}
{synopt :{opt sta:tionary} {it:#}}阶数 {it:#} 的平稳{p_end}
{synopt :{opt non:stationary} {it:#}}阶数 {it:#} 的非平稳{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
必须指定一个面板变量。对于 {cmd:xtnbreg, pa}，相关结构必须指定时间变量，除了 {cmd:exchangeable} 和 {cmd:independent}。使用 {help xtset_zh}。{p_end}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt by}、{opt mi estimate} 和 {opt statsby} 是允许的；见 {help prefix_zh}。
{opt fp} 是随机效应和固定效应模型允许的。{p_end}
INCLUDE help vce_mi
{marker weight}{...}
{p 4 6 2}
{opt iweight}、{opt fweight} 和 {opt pweight} 允许用于总体平均模型，{opt iweight} 允许用于随机效应和固定效应模型；见 {help weight_zh}。权重必须在面板内保持不变。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
查看 {manhelp xtnbreg_postestimation XT:xtnbreg 后估计} 以获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 计数结果 >}
    {bf:负二项回归（FE、RE、PA）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtnbreg} 适用于随机效应和条件固定效应过度分散模型，其中随机效应或固定效应适用于分散参数的分布。面板内的所有观察的分散是相同的。在随机效应模型中，分散在组与组之间随机变化，使得分散的逆加一遵循Beta分布。在固定效应模型中，一个组的分散参数可以取任何值。

{pstd}
{cmd:xtnbreg} 还适用于非负计数因变量的总体平均负二项模型，该因变量具有过度分散。  


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtnbregQuickstart:快速入门}

        {mansection XT xtnbregRemarksandexamples:备注和示例}

        {mansection XT xtnbregMethodsandformulas:方法与公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options_re}{...}
{title:RE/FE模型的选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
    {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt re} 请求随机效应估计，这是默认选项。

{phang}
{opt fe} 请求条件固定效应估计。

{phang}
{opth exposure(varname)}, {opt offset(varname)},
{opt constraints(约束)};
见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误}

INCLUDE help xt_vce_asymptbj

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告指数化系数 e^b，而不是 b。对于负二项模型，指数化系数可解释为事故率比。

{phang}
{opt lrmodel}, {opt nocnsreport}; 见
     {helpb estimation options:[R] 估计选项}。

{marker re_display_options}{...}
INCLUDE help displayopts_list

{dlgtab:最大化}

{phang}
{marker maximize_options}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace}, {opt grad:ient},
{opt showstep}, {opt hess:ian}, {opt showtol:erance}, {opt tol:erance(#)},
{opt ltol:erance(#)}, {opt nrtol:erance(#)},
{opt nonrtol:erance}, 和 {opt from(init_specs)};
见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可用于 {opt xtnbreg}，但未显示在对话框中：

{phang}
{opt collinear}, {opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker options_pa}{...}
{title:PA模型的选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
   {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt pa} 请求总体平均估计。

{phang}
{opth exposure(varname)}, {opt offset(varname)}; 见
        {helpb estimation options##exposure():[R] 估计选项}。

{dlgtab:相关性}

{phang}
{opt corr(correlation)} 指定面板内的相关结构；默认值对应于等相关模型，
{cmd:corr(exchangeable)}。

{pmore}
当您指定需滞后的相关结构时，可以在结构名称后注明滞后，可以加空格或不加空格；例如，
{cmd:corr(ar 1)} 或 {cmd:corr(ar1)}。

{pmore}
如果您指定固定的相关结构，则在单词 {cmd:fixed} 后指定包含假定相关性的矩阵名称，例如，{cmd:corr(fixed myr)}。

{phang}
{opt force} 指定强制估计，即使时间变量不均匀。仅对需要知道时间变量的相关结构相关。这些相关结构要求观察值均匀分布，以便基于滞后的计算对应于恒定时间变化。如果您指定时间变量，指示观察值不是均匀分布，则不拟合（时间相关）模型。如果您同时指定了 {opt force}，则进行模型拟合，并假定基于时间变量排序的数据的滞后是合适的。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论派生的类型（{cmd:conventional}），对某些错误规范具有稳健性（{cmd:robust}），以及使用自助法或留一法的方法（{cmd:bootstrap}, {cmd:jackknife}）；见
{help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
{cmd:vce(conventional)}，默认值，使用通过常规推导获得的广义最小二乘回归的方差估计。

{phang}
{opt nmp}, {cmd:scale(x2}|{cmd:dev}|{cmd:phi}|{it:#}{cmd:)}; 见
{help xt_vce_options_zh:[XT] {it:vce_options}}。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告指数化系数 e^b，而不是系数 b。对于负二项模型，指数化系数的解释为事故率比。

{marker pa_display_options}{...}
INCLUDE help displayopts_list

{dlgtab:优化}

{phang}
{marker optimize_options}
{it:optimize_options} 控制迭代优化过程。这些选项很少使用。

{pmore}
{opt iter:ate(#)} 指定最大迭代次数。当迭代次数等于 # 时，优化将停止并显示当前结果，即使收敛容忍度尚未达到。默认值为
{cmd:iterate(100)}。

{pmore}
{opt tol:erance(#)} 指定系数向量的容忍度。当系数向量从一个迭代到下一次的相对变化小于或等于 # 时，优化过程将停止。
{cmd:tolerance(1e-6)} 是默认值。

{pmore}
INCLUDE help lognolog

{pmore}
{opt tr:ace} 指定在每次迭代时打印当前估计值。

{pstd}
以下选项可用于 {opt xtnbreg}，但未显示在对话框中：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse airacc}

{pstd}随机效应模型{p_end}
{phang2}{cmd:. xtnbreg i_cnt inprog, exposure(pmiles) irr}

{pstd}固定效应模型{p_end}
{phang2}{cmd:. xtnbreg i_cnt inprog, exposure(pmiles) irr fe}

{pstd}使用稳健方差的等相关总体平均模型{p_end}
{phang2}{cmd:. xtnbreg i_cnt inprog, exposure(pmiles) eform pa}
               {cmd:vce(robust)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtnbreg, re} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅包含常数的模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(r)}}Beta(r,s) 中的 r 值{p_end}
{synopt:{cmd:e(s)}}Beta(r,s) 中的 s 值{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅包含常数的模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 若已收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtnbreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:re}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}; 与 {cmd:e(chi2_c)} 相关的模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(method)}}估计方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Beta}; 随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
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


{pstd}
{cmd:xtnbreg, fe} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅包含常数的模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 若已收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtnbreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:fe}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(method)}}请求的估计方法{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(R)}}估计的工作相关矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtnbreg.sthlp>}