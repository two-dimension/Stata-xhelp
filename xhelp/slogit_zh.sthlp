{smcl}
{* *! version 1.3.9  12dec2018}{...}
{viewerdialog slogit "dialog slogit"}{...}
{viewerdialog "svy: slogit" "dialog slogit, message(-svy-) name(svy_slogit)"}{...}
{vieweralsosee "[R] slogit" "mansection R slogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] slogit postestimation" "help slogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "slogit_zh##syntax"}{...}
{viewerjumpto "Menu" "slogit_zh##menu"}{...}
{viewerjumpto "Description" "slogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "slogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "slogit_zh##options"}{...}
{viewerjumpto "Remarks" "slogit_zh##remarks"}{...}
{viewerjumpto "Examples" "slogit_zh##examples"}{...}
{viewerjumpto "Stored results" "slogit_zh##results"}{...}
{viewerjumpto "Reference" "slogit_zh##reference"}
{help slogit:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] slogit} {hline 2}}刻板逻辑回归{p_end}
{p2col:}({mansection R slogit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:slogit}
{depvar}
[{indepvars}]
{ifin}
[{it:{help slogit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt dim:ension(#)}}模型的维数；默认为
{cmd:dimension(1)}{p_end}
{synopt:{opt b:aseoutcome(#|lbl)}}将基础结果设置为{it:#}或{it:lbl}；
默认是最后一个结果{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():numlist}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:{opt nocorn:er}}不生成角落约束{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是{opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap}或{opt jack:knife}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认为
{cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help slogit##display_options:显示选项}}}控制
包含帮助简短描述-显示选项

{syntab:最大化}
{synopt:{it:{help slogit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}
{synopt:{opt init:ialize(initype)}}初始化尺度参数的方法；
{it:initype}可以是{opt constant}、{opt random}或{opt svd}；详细信息请参见
{help slogit##initialize:{it:选项}}{p_end}
{synopt:{opt nonorm:alize}}不对数值变量进行归一化{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包含帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:fp}、{cmd:jackknife}、{cmd:rolling}、{cmd:statsby}和{cmd:svy}是允许的；参见{help prefix_zh}.{p_end}
{p 4 6 2}权重在{help bootstrap_zh}前缀中不允许。{p_end}
{p 4 6 2}
{opt vce()}和权重在{help svy_zh}前缀中不允许。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s和{cmd:pweight}s是允许的；参见{help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear}和{opt coeflegend}不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp slogit_postestimation R:slogit后估计}，获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 类别结果 > 刻板逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{opt slogit} 适合安德森的 ({help slogit##A1984:1984}) 最大似然刻板逻辑回归模型，用于分类因变量。
当排序的相关性不明确时，可以使用刻板逻辑模型。 这些模型不施加比例优势假设。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R slogitQuickstart:快速入门}

        {mansection R slogitRemarksandexamples:备注和示例}

        {mansection R slogitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt dimension(#)} 指定模型的维数，即描述因变量和自变量之间关系所需的方程数量。最大维数为 min(m-1,p)，其中 m 是因变量的类别数量，p 是模型中的自变量数量。具有最大维数的刻板模型是多项逻辑模型的重新参数化。

{phang}
{opt baseoutcome(#|lbl)} 指定基础结果水平，其尺度参数和截距的约束为零。
基础结果可以指定为数字或标签。
默认情况下，{opt slogit} 假设结果水平是有序的，并使用因变量的最大水平作为基础结果。

{phang}
{opth constraints(numlist)}；参见
{helpb estimation options:[R] 估计选项}。

{pmore}
默认情况下，{help slogit##A1984:安德森 (1984)}建议的线性等式约束，称为角落约束，将自动生成。您可以根据需要向其添加约束，或者通过指定{opt nocorner}来关闭角落约束。这些约束是对与{opt baseoutcome(#)}相对应的φ参数施加的约束之外的内容。

{phang}
{opt nocorner} 指定{opt slogit} 不生成角落约束。
如果您指定{opt nocorner}，则必须至少指定
{cmd:dimension()}*{cmd:dimension()} 
约束，以使模型被识别。

{dlgtab:SE/稳健性}

包含帮助 vce_asymptall

{pmore}
如果指定{cmd:vce(bootstrap)}或{cmd:vce(jackknife)}，则必须同时指定{cmd:baseoutcome()}。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；参见
     {helpb estimation options:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、{opt iter:ate(#)}、
[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、
{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、{opt nonrtol:erance}和
{opt from(init_specs)}；参见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pmore}
将优化类型设置为{cmd:technique(bhhh)}会将默认的{it:vcetype}重置为{cmd:vce(opg)}。

{marker initialize}{...}
{phang}
{cmd:initialize(}{opt const:ant}|{opt rand:om}|{opt svd}{cmd:)}指明初始估计的计算方式。 默认值为
{cmd:initialize(constant)}，即将尺度参数设置为常数min(.5,1/d)，其中d为在{cmd:dimension()}中指定的维数。

{phang2}
{cmd:initialize(random)}请求在[0，1]之间使用均匀分布的随机数作为尺度参数的初始值。如果您指定此选项，则应使用
{bind:{cmd:set seed}}以确保您可以复制结果；参见{manhelp set_seed R:set seed}。

{phang2}
{cmd:initialize(svd)}请求在来自{opt mlogit}的回归估计矩阵上执行奇异值分解（SVD），将其秩降低到在{opt dimension()}中指定的维数。{opt slogit}使用SVD的降秩成分作为尺度和回归系数的初始估计。具体细节请参见{it:{mansection R slogitMethodsandformulas:方法和公式}}在{bf:[R] slogit}中。

{phang}
{opt nonormalize} 指定不对数值变量进行归一化。
对数值变量进行归一化可以提高数值稳定性，但在生成临时的双精度变量时会消耗更多内存。类型为{opt byte}的变量不进行归一化，如果使用 {opt from()} 选项指定初始估计，则不会对变量进行归一化。有关更多信息，请参见{it:{mansection R slogitMethodsandformulas:方法和公式}}在{bf:[R] slogit}。

{pstd}
以下选项适用于{opt slogit}，但未在对话框中显示：

{phang}
{opt collinear}，{opt coeflegend}；参见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
像多项逻辑和有序逻辑模型一样，刻板逻辑模型用于分类因变量。它们通常用于请求受访者评估或判断某些事物的工作。例如，考虑一项调查，询问消费者按从1到5的等级评定产品质量，其中1表示质量差，5表示质量优秀。如果这些类别与一个潜在的潜变量单调相关，有序逻辑模型是合适的。然而，假设消费者在评估质量时考虑了两个或三个潜在因素。在这种情况下，刻板逻辑模型优于有序逻辑模型，因为它允许您指定多个方程，以捕获潜在变量的影响。与多项逻辑模型不同，您指定的方程数量可以少于 m - 1，其中 m 是因变量的类别数量。刻板逻辑模型也用于类别可能难以区分的情况。假设消费者必须从 A、B、C 或 D 中做出选择。多项逻辑建模假设这四个选择在某种意义上是独特的，即消费者选择其中一种商品时，可以将其特点与其他商品区分开。如果商品 A 和 B 实际上相似，那么消费者可能会在这两个商品之间随机选择。一种替代方案是将这两个类别合并，并拟合一个三类别的多项逻辑模型。更灵活的一种替代方案是使用刻板逻辑模型。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse auto2yr}{p_end}

{pstd}一维模型{p_end}
{phang2}{cmd:. slogit repair foreign mpg price gratio}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sysdsn1}{p_end}

{pstd}饱和，二维模型{p_end}
{phang2}{cmd:. slogit insure age male nonwhite i.site, dim(2) base(1)}
{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:slogit}将以下内容存储在{cmd:e()}中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_indvars)}}自变量数量{p_end}
{synopt:{cmd:e(k_out)}}结果数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)}中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}Wald测试自由度{p_end}
{synopt:{cmd:e(df_0)}}零模型自由度{p_end}
{synopt:{cmd:e(k_dim)}}模型维数{p_end}
{synopt:{cmd:e(i_base)}}基础结果索引{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}零模型对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的p值{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1}如果收敛，{cmd:0}否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:slogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(indvars)}}自变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(out}{it:#}{cmd:)}}结果标签，{it:#} = 1, ... , {cmd:e(k_out)}{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方测试类型 {p_end}
{synopt:{cmd:e(vce)}}在{cmd:vce()}中指定的{it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max}或{cmd:min}；指明优化器进行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml}方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}实现{cmd:predict}的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins}不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins}的默认{opt predict()}规格{p_end}
{synopt:{cmd:e(footnote)}}实现注释显示的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量{cmd:fvset}作为{cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量{cmd:fvset}作为{cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(outcomes)}}结果值{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker A1984}{...}
{phang}
Anderson, J. A. 1984. 回归与有序分类变量
（含讨论）。
{it:伦敦皇家统计学会通讯，B系列} 46: 1-30.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <slogit.sthlp>}