{smcl}
{* *! version 1.0.0  14may2019}{...}
{viewerdialog xtheckman "dialog xtheckman"}{...}
{vieweralsosee "[XT] xtheckman" "mansection XT xtheckman"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtheckman postestimation" "help xtheckman postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eregress" "help eregress_zh"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[XT] xteregress" "help xteregress"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtheckman_zh##syntax"}{...}
{viewerjumpto "Menu" "xtheckman_zh##menu"}{...}
{viewerjumpto "Description" "xtheckman_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtheckman_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtheckman_zh##options"}{...}
{viewerjumpto "Examples" "xtheckman_zh##examples"}{...}
{viewerjumpto "Stored results" "xtheckman_zh##results"}
{help xtheckman:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[XT] xtheckman} {hline 2}}随机效应回归与样本选择{p_end}
{p2col:}({mansection XT xtheckman:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:xtheckman}
{depvar}
[{indepvars}]
{ifin}{cmd:,}
{cmdab:sel:ect(}{depvar}_s {cmd:=} {varlist}_s
   [{cmd:,} {help xtheckman##sel_options:{it:sel_options}}]{cmd:)}
[{help xtheckman##options_tbl:{it:options}}]

{marker options_tbl}{...}
{synoptset 22 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{p2coldent: * {cmdab:sel:ect()}}指定选择方程：因变量和自变量；是否具有常数项和偏移变量或包括随机效应{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt norecorr:elation}}限制随机效应独立{p_end}
{synopt :{cmdab:off:set(}{help varname_zh:{it:varname}_o}{cmd:)}}将 {it:varname}_o 包含在模型中，系数限制为 1{p_end}
{synopt :{opth const:raints(numlist)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}， 
        {opt r:obust}， {opt cl:uster} {it:clustvar},
        {opt opg}， 
        {opt boot:strap}，或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtheckman##display_options:display_options}}}控制
包含帮助简短描述-显示选项

{syntab:积分}
{synopt :{opt intm:ethod(intmethod)}}随机效应的积分方法； {it:intmethod} 可以是 {opt mv:aghermite}（默认值）或 {opt gh:ermite}{p_end}
{synopt :{opt intp:oints(#)}}设置随机效应积分的积分（求积）点数量；默认值为 {cmd:intpoints(7)}{p_end}

{syntab:最大化}
{synopt :{it:{help xtheckman##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt col:linear}}保留共线性变量{p_end}
包含帮助简短描述-系数图例
{synoptline}

{marker sel_options}{...}
{synopthdr :sel_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt nore}}在选择模型中不包含随机效应{p_end}
{synopt :{cmdab:off:set(}{help varname_zh:{it:varname}_o}{cmd:)}}将 {it:varname}_o 包含在模型中，系数限制为 1{p_end}
{synoptline}

{p 4 6 2}
* {opt select()} 是必需的。{p_end}
{p 4 6 2}
{it:indepvars} 和 {it:varlist}_s 可能包含因子变量；见 {help fvvarlists}.{p_end}
{p 4 6 2}
{it:depvar},
{it:indepvars},
{it:depvar}_s，
和
{it:varlist}_s
可能包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bootstrap},
{opt by},
{opt jackknife} 和
{opt statsby} 是允许的。见 {help prefix_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp xtheckman_postestimation XT:xtheckman postestimation} 获取估算后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 样本选择模型 > 带样本选择的线性回归（随机效应）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtheckman} 拟合带有内生样本选择的随机效应线性回归模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtheckmanQuickstart:快速启动}

        {mansection XT xtheckmanRemarksandexamples:备注和示例}

        {mansection XT xtheckmanMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:select(}{depvar}_s {cmd:=} {varlist}_s [{cmd:,} {it:sel_options}]{cmd:)}
指定用于样本选择的随机效应 Probit 模型，其中 {it:varlist}_s 作为选择模型的协变量。当 {it:depvar}_s = 1 时，模型的因变量视为观察到的（已选择的）；当 {it:depvar}_s = 0 时，视为未观察到的（未选择的）。 {opt select()} 是必需的。{p_end}

{pmore}
{it:sel_options} 包括：

{phang2}
{opt noconstant} 抑制选择模型中的常数项（截距）。

{phang2}
{opt nore}
指定不在选择方程中包含随机效应。

{phang2}
{cmd:offset(}{help varname_zh:{it:varname}_o}{cmd:)}
指定将 {it:varname}_o 包含在选择模型中，系数限制为 1。

{phang}
{opt noconstant}；见
{helpb estimation options:[R] 估算选项}。

{phang}
{opt norecorrelation}
限制结果方程和选择方程中的随机效应独立。

{phang}
{cmd:offset(}{help varname_zh:{it:varname}_o}{cmd:)}, {opth constraints(numlist)}；
     {helpb estimation options:[R] 估算选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括那些基于渐近理论的类型（{cmd:oim}、{cmd:opg}），以及那些对某些类型的错误规范具有稳健性的类型（{cmd:robust}），允许组内相关性的类型（{cmd:cluster} {it:clustvar}），以及使用自助法或重抽样方法的类型（{cmd:bootstrap}、{cmd:jackknife）；见 {help xt_vce_options_zh:[XT] {it:vce_options}}。
{p_end}

{dlgtab:报告}

{phang}
{opt level(#)}, {opt nocnsreport}；见 
{helpb estimation options:[R] 估算选项}。

包含帮助显示选项列表

{dlgtab:积分}

{phang}
{opt intmethod(intmethod)} 和 {opt intpoints(#)} 控制随机效应积分的数值计算方式。

{phang2}
{opt intmethod()} 指定积分方法。默认方法是均值-方差自适应高斯-赫尔密特求积，
	{cmd:intmethod(mvaghermite)}。我们推荐这种方法。
	{cmd:intmethod(ghermite)} 指定使用非自适应
	高斯-赫尔密特求积。该方法计算强度较低且准确度低。在模型收敛时，尝试 {cmd:intmethod(ghermite)}，然后可能使用结果作为使用更准确的 {cmd:intmethod(mvaghermite)} 拟合模型时在 {cmd:from} 选项中指定的初始值。
	请参见 {mansection XT xtheckmanMethodsandformulas:{it:方法和公式}}
	在 {bf:[XT] xtheckman} 中获取更多详细信息。

{phang2}
{opt intpoints()} 设置用于随机效应积分的积分（求积）点数量。默认值为
	{cmd:intpoints(7)}。增加点数量会提高准确性，但同时增加计算时间。
	计算时间大致与指定的数量成正比。
	请参见 {mansection XT xtheckmanMethodsandformulas:{it:方法和公式}}
	在 {bf:[XT] xtheckman} 中获取更多详细信息。

{dlgtab:最大化}

{phang}
{marker maximize_options}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:{it:algorithm_spec})},
{opt iter:ate(#)},
[{cmd:no}]{cmd:log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}，以及
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pmore}
默认技术是 {cmd:technique(bhhh 10 nr 2)}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认
{it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项适用于 {cmd:xtheckman}，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见
{helpb estimation options:[R] 估算选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse wagework}{p_end}
{phang2}{cmd:. xtset personid year}{p_end}

{pstd}关于 {cmd:wage}、{cmd:age} 和
{cmd:tenure} 的随机效应回归，考虑内生样本选择{p_end}
{phang2}{cmd:. xtheckman wage age tenure, select(working = age market)}{p_end}

{pstd}与上面相同，但限制 {cmd:wage} 和选择方程中的随机效应独立{p_end}
{phang2}{cmd:. xtheckman wage age tenure, select(working = age market) norecorrelation}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtheckman} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数{p_end}
{synopt :{cmd:e(N_g)}}组数{p_end}
{synopt :{cmd:e(N_selected)}}已选择的观察数{p_end}
{synopt :{cmd:e(N_nonselected)}}未选择的观察数{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_eq_model)}}总体模型检验中的方程数量{p_end}
{synopt :{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt :{cmd:e(k_dv)}}因变量数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(N_clust)}}集群数量{p_end}
{synopt :{cmd:e(chi2)}}卡方值{p_end}
{synopt :{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt :{cmd:e(n_requad)}}随机效应的积分点数量{p_end}
{synopt :{cmd:e(g_min)}}最小组大小{p_end}
{synopt :{cmd:e(g_avg)}}平均组大小{p_end}
{synopt :{cmd:e(g_max)}}最大组大小{p_end}
{synopt :{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 表示未收敛{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:xtheckman}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量名称{p_end}
{synopt :{cmd:e(ivar)}}表示组的变量{p_end}
{synopt :{cmd:e(title)}}估算输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt :{cmd:e(offset}{it:#}{cmd:)}}第 {it:#} 个 {it:depvar} 的偏移量，其中 {it:#} 由输出中的方程顺序确定{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt :{cmd:e(vce)}} 在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标识标准误的标题{p_end}
{synopt :{cmd:e(reintmethod)}}随机效应的积分方法{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行最大化或最小化{p_end}
{synopt :{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(user)}} 似然评估程序名称{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估算样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtheckman.sthlp>}