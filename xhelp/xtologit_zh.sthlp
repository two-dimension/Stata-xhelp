{smcl}
{* *! version 1.0.20  12dec2018}{...}
{viewerdialog xtologit "dialog xtologit"}{...}
{vieweralsosee "[XT] xtologit" "mansection XT xtologit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtologit postestimation" "help xtologit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[ME] meologit" "help meologit_zh"}{...}
{vieweralsosee "[XT] quadchk" "help quadchk_zh"}{...}
{vieweralsosee "[XT] xtoprobit" "help xtoprobit_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "语法" "xtologit_zh##syntax"}{...}
{viewerjumpto "菜单" "xtologit_zh##menu"}{...}
{viewerjumpto "描述" "xtologit_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "xtologit_zh##linkspdf"}{...}
{viewerjumpto "选项" "xtologit_zh##options"}{...}
{viewerjumpto "技术说明" "xtologit_zh##technote"}{...}
{viewerjumpto "示例" "xtologit_zh##example"}{...}
{viewerjumpto "视频示例" "xtologit_zh##video"}{...}
{viewerjumpto "存储结果" "xtologit_zh##results"}
{help xtologit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[XT] xtologit} {hline 2}}随机效应有序逻辑斯蒂模型{p_end}
{p2col:}({mansection XT xtologit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:xtologit} {depvar} [{indepvars}] {ifin}
[{it:{help xtologit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 27 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab :模型}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，并将系数约束为 1{p_end}
{synopt :{opth const:raints(estimation options##constraints():约束)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、
   {opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的瓦尔德检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtologit##display_options:显示选项}}}控制
包含帮助短描述-显示选项

包含帮助 intpts1
 
{syntab :最大化}
{synopt :{it:{help xtologit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{opth startg:rid(numlist)}}通过执行网格搜索来改善随机截距参数的起始值{p_end}
{synopt:{opt nodis:play}}抑制头部和系数的显示{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定面板变量；请参见 {help xtset_zh}。{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt fp} 和 {opt statsby}；请参见 {help prefix_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}、{cmd:iweight} 和 {cmd:pweight}；
请参见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt startgrid()}、{opt nodisplay}、{opt collinear} 和 {opt coeflegend}
不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp xtologit_postestimation XT:xtologit postestimation} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 有序结果 >}
    {bf:逻辑回归 (RE)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtologit} 拟合随机效应有序逻辑斯蒂模型。因变量的实际值并不重要，尽管假设较大的值对应于“更高”的结果。给定随机效应的因变量的条件分布假设为多项分布，其成功概率由逻辑累积分布函数决定。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtologitQuickstart:快速入门}

        {mansection XT xtologitRemarksandexamples:备注和示例}

        {mansection XT xtologitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth offset(varname)}, {opt constraints(constraints)}; 请参见 
{helpb estimation options##offset():[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括根据渐近理论得出的类型 ({cmd:oim})、对某些类型的错误规约稳健的类型 ({cmd:robust})、允许组内相关的类型 ({cmd:cluster} {it:clustvar}) 和使用自助或划分法的方法 ({cmd:bootstrap}、{cmd:jackknife})；请参见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
指定 {cmd:vce(robust)} 等同于指定
{cmd:vce(cluster} {it:panelvar}{cmd:)}；请参见
{mansection XT xtologitMethodsandformulasxtologitandtherobustVCEestimator:{it:xtologit 和稳健 VCE 估计器}} 在
{it:方法和公式} 的 {bf:[XT] xtologit}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。 

{phang}
{opt or} 报告估计系数，转换为赔率比，即 e^b 而不是 b。标准误和置信区间也类似地进行转换。此选项影响结果的显示方式，而不影响它们的估计。{opt or} 可在估计时或当重放先前估计的结果时指定。

{phang}
{opt lrmodel}、{opt nocnsreport}；请参见
     {helpb estimation options:[R] 估计选项}。

{marker display_options}{...}
包含帮助 displayopts_list

包含帮助 intpts4

{dlgtab:最大化}

{phang}
{marker maximize_options}
{it:最大化选项}: {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、 
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、 
{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、 
{opt ltol:erance(#)}、{opt nrtol:erance(#)}、 
{opt nonrtol:erance} 和 {opt from(init_specs)}；
请参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项适用于 {cmd:xtologit}，但未显示在对话框中：

{phang}
{opth startgrid(numlist)} 执行网格搜索以改善随机截距参数的起始值。默认情况下不执行网格搜索，除非发现起始值不可行；在这种情况下，{cmd:xtologit} 会运行 {cmd:startgrid(0.1 1 10)} 并选择最佳值。您可能已经在不知情的情况下使用了 {cmd:startgrid()} 的默认形式。如果您看到 {cmd:xtologit} 在迭代日志中显示网格节点 1、网格节点 2，... 在网格节点 0 之后，这就是 {cmd:xtologit} 进行默认搜索的原因，因为原始起始值不可行。

{phang}
{opt nodisplay} 是供程序员使用的。它抑制头部和系数的显示。

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker technote}{...}
{title:技术说明}

{pstd}
随机效应逻辑模型的计算使用了求积法，这是一个近似值，其准确性部分依赖于所使用的积分点数。我们可以使用 {cmd:quadchk} 命令查看更改积分点数是否影响结果。如果结果有所变化，则给定积分点数的求积近似不够准确。尝试使用 {cmd:intpoints()} 选项增加积分点数，并再次运行 {cmd:quadchk}。当 {cmd:quadchk} 报告的系数大相径庭时，请勿尝试解释估计结果。有关详细信息，请参见 {manhelp quadchk XT} 和 {bf:[XT] xtprobit} 的 
{mansection XT xtprobitRemarksandexamplestechnote:示例}。

{pstd}
因为 {cmd:xtologit} 的似然函数是通过高斯-赫尔米特求积法计算的，因此在较大问题上计算可能会很慢。计算时间大致与用于求积的点数成比例。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tvsfpors}{p_end}
{phang2}{cmd:. xtset school}{p_end}

{pstd}随机效应有序逻辑斯蒂回归{p_end}
{phang2}{cmd:. xtologit thk prethk cc##tv}{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=O_8DgkBEFMo":有序逻辑回归和面板数据的概率模型}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtologit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数{p_end}
{synopt:{cmd:e(k_dv)}}因变量数{p_end}
{synopt:{cmd:e(k_cat)}}类别数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛，则 {cmd:1}，否则 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:xtologit}{p_end}
{synopt:{cmd:e(cmdline)}}按输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}或{cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Gaussian}；随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化程序执行最大化或最小化的方式{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginswtype)}}{cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}}{cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 规格{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(cat)}}类别值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtologit.sthlp>}