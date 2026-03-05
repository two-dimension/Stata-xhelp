{smcl}
{* *! version 1.3.11  01apr2019}{...}
{viewerdialog asclogit "dialog asclogit"}{...}
{vieweralsosee "previously documented" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asclogit postestimation" "help asclogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asmixlogit" "help asmixlogit_zh"}{...}
{vieweralsosee "[R] asmprobit" "help asmprobit_zh"}{...}
{vieweralsosee "[R] asroprobit" "help asroprobit_zh"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] nlogit" "help nlogit_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{viewerjumpto "Syntax" "asclogit_zh##syntax"}{...}
{viewerjumpto "Menu" "asclogit_zh##menu"}{...}
{viewerjumpto "Description" "asclogit_zh##description"}{...}
{viewerjumpto "Options" "asclogit_zh##options"}{...}
{viewerjumpto "Examples" "asclogit_zh##examples"}{...}
{viewerjumpto "Stored results" "asclogit_zh##results"}
{help asclogit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] asclogit} {hline 2}}特定备选条件的Logit（McFadden选择）模型{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rasclogit.pdf":查看完整PDF手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:asclogit} 仍然可用，但自Stata 16起，它不再是Stata的官方部分。这是原始帮助文件，我们将不再进行更新，因此某些链接可能已失效。

{pstd}
请参见 {help cmclogit_zh} 以获取 {cmd:asclogit} 的推荐替代方法。

{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:asclogit} 
{depvar} 
[{indepvars}] 
{ifin}
[{it:{help asclogit##weight:权重}}]{cmd:,} 
{bind:{cmd:case(}{varname}{cmd:)}}
{bind:{cmdab:alt:ernatives(}{varname}{cmd:)}}
[{it:选项}]

{phang}
{it:depvar} 等于1表示结果或选择的备选项，而0表示未被选择的备选项。每个案例可以选择多个备选项。

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opth case(varname)}}使用 {it:varname} 来标识案例{p_end}
{p2coldent :* {opth alt:ernatives(varname)}}使用 {it:varname} 来标识每个案例的备选项{p_end}
{synopt :{opth casev:ars(varlist)}}案例特定变量{p_end}
{synopt :{opt base:alternative(#|lbl|str)}}用作位置标准化的备选项{p_end}
{synopt:{opt nocons:tant}}抑制特定备选项的常数项{p_end}
{synopt :{opt altwise}}使用备选项删除，而不是案例删除{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}

{syntab:标准误/稳健性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以为 {opt oim}、 
	{opt r:obust}、 {opt cl:uster} {it:clustvar}、 {opt boot:strap} 或
	{opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt nohead:er}}不显示系数表的标题{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help asclogit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help asclogit##maximize_options:最大化选项}}}控制
最大化过程；很少使用{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt case(varname)} 和 {opt alternatives(varname)} 是必需的。{p_end}
INCLUDE help fvvarlist2
{p 4 6 2}
{opt bootstrap}、 {opt by}、 {opt fp}、 {opt jackknife} 和 {opt statsby}
是被允许的；请参见 {help prefix_zh}.{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s、 {opt iweight}s 和 {opt pweight}s 被允许
（见 {help weight_zh}），但它们被解释为适用于整个案例，而不是个别观察。见
{mansection R clogitRemarksandexamplesUseofweights:{it:权重的使用}} 在
{bf:[R] clogit}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp asclogit_postestimation R:asclogit 后估计}获取估计后可用的特性。  {p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分类结果 > 特定备选的条件Logit}

{marker description}{...}
{title:描述}

{pstd}
{cmd:asclogit} 拟合McFadden的选择模型，这是更一般的条件逻辑回归模型的特定情况，由 {help clogit_zh} 拟合。该命令要求每个案例（个人或决策）有多个观察值，每个观察值表示可能被选择的备选项。 {opt asclogit} 允许两种类型的自变量：特定备选的变量，这些变量在案例和备选项之间变化，以及案例特定的变量，这些变量仅在案例之间变化。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opth case(varname)} 指定识别每个案例的数值变量。 {opt case()} 是必需的，并且必须是整数值。

{phang}{opth alternatives(varname)} 指定识别每个案例备选项的变量。每个案例的备选项数量可以不同；最大备选项数量不能超过 {cmd:tabulate oneway} 的限制；见 {helpb tabulate oneway:[R] tabulate oneway}。 {opt alternatives()} 是必需的，可以是数值变量或字符串变量。

{phang}{opth casevars(varlist)} 指定案例特定的数值变量。这些是对每个案例常量的变量。如果最多有 J 个备选项，则会有与 {opt casevars()} 相关联的 J-1 组系数。

{phang}{opt basealternative(#|lbl|str)} 指定标准化潜在变量位置（效用水平）的备选项。基准备选项可以根据指示备选项的变量的存储类型指定为数字、标签或字符串。默认是具有最高频率的备选项。

{pmore}
如果指定了 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，则必须指定基准备选项。这是为了确保每次调用 {cmd:asclogit} 时拟合相同的模型。

{phang}
{opt noconstant} 抑制 J-1 个特定备选项的常数项。

{phang}{opt altwise} 指定在由于变量缺失值而标记观察时使用备选项删除。默认是使用案例删除；即，如果遇到任何缺失值，则删除整个组成案例的观察组。此选项不适用于通过 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀标记的观察。

{phang}
{opth offset(varname)},
{cmd:constraints(}{it:{help estimation_options##constraints():numlist}}|{it:matname}{cmd:)},
{opt collinear}; 见
{helpb estimation options:[R] estimation options}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括从渐近理论得出的类型（{cmd:oim}）、对某些类型的误设合适的稳健性（{cmd:robust}）、允许组内相关性的（{cmd:cluster} {it:clustvar}）以及使用自助法或留一法的方法（{cmd:bootstrap}、{cmd:jackknife}）；见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] estimation options}。

{phang}
{opt or} 报告估计的系数转化为赔率比，即，exp(b) 而不是 b。标准误和置信区间也以类似方式转换。此选项影响结果的显示方式，而不影响结果的估计方式。 {opt or} 可以在估计时指定，也可以在回放先前估计的结果时指定。

{phang}
{opt noheader} 防止系数表标题的显示。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] estimation options}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}, [{cmd:{ul:no}}]{opt lo:g}, {opt tr:ace}, 
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance},  和
{opt from(init_specs)}；见 {manhelp maximize R}。 这些选项很少使用。

{pmore}
{cmd:technique(bhhh)} 不被允许。

{pmore}
初始估计必须指定为 
{cmd:from(}{it:matname} [, {cmd:copy} ]{cmd:)}, 其中 {it:matname}
是包含初始估计的矩阵，而 {cmd:copy} 选项
指定只关注每个元素在 {it:matname} 中的位置。
如果未指定 {cmd:copy}，则 {it:matname} 的列条纹识别这些估计。

{pstd}
以下选项与 {opt asclogit} 可用，但未显示在对话框中：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] estimation options}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse choice}{p_end}

{pstd}拟合特定备选条件的Logit模型{p_end}
{phang2}{cmd:. asclogit choice dealer, case(id) alternatives(car)}
       {cmd:casevars(sex income)}

{pstd}重放结果，显示赔率比并抑制系数表的标题{p_end}
{phang2}{cmd:. asclogit, or noheader}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:asclogit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(N_case)}}案例数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_alt)}}备选项数量{p_end}
{synopt:{cmd:e(k_indvars)}}特定备选的变量数量{p_end}
{synopt:{cmd:e(k_casevars)}}案例特定变量数量{p_end}
{synopt:{cmd:e(k_eq)}} 在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(const)}}常数指示器{p_end}
{synopt:{cmd:e(i_base)}}基准备选项索引{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的p值{p_end}
{synopt:{cmd:e(alt_min)}}最少备选项数量{p_end}
{synopt:{cmd:e(alt_avg)}}平均备选项数量{p_end}
{synopt:{cmd:e(alt_max)}}最多备选项数量{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛， {cmd:0} 否则{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:asclogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(indvars)}}特定备选的自变量{p_end}
{synopt:{cmd:e(casevars)}}案例特定的变量{p_end}
{synopt:{cmd:e(case)}}定义案例的变量{p_end}
{synopt:{cmd:e(altvar)}}定义备选项的变量{p_end}
{synopt:{cmd:e(alteqs)}}备选方程名称{p_end}
{synopt:{cmd:e(alt}{it:#}{cmd:)}}备选标签{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}，模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化程序是否执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(stats)}}替代统计量{p_end}
{synopt:{cmd:e(altvals)}}备选值{p_end}
{synopt:{cmd:e(altfreq)}}备选频率{p_end}
{synopt:{cmd:e(alt_casevars)}}估计的案例特定系数的指示符 -- {cmd:e(k_alt)} x {cmd:e(k_casevars)}{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <asclogit.sthlp>}