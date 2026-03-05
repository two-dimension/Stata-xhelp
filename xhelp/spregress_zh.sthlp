{smcl}
{* *! version 1.1.7  12dec2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spregress" "mansection SP spregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spregress postestimation" "help spregress postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] estat moran" "help estat moran"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SP] spivregress" "help spivregress_zh"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spxtregress" "help spxtregress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{viewerjumpto "Syntax" "spregress_zh##syntax"}{...}
{viewerjumpto "Menu" "spregress_zh##menu"}{...}
{viewerjumpto "Description" "spregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spregress_zh##linkspdf"}{...}
{viewerjumpto "Options for spregress, gs2sls" "spregress_zh##options_spregress_gs2sls"}{...}
{viewerjumpto "Options for spregress, ml" "spregress_zh##options_spregress_ml"}{...}
{viewerjumpto "Examples" "spregress_zh##examples"}{...}
{viewerjumpto "Stored results" "spregress_zh##results"}
{help spregress:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[SP] spregress} {hline 2}}空间自回归模型{p_end}
{p2col:}({mansection SP spregress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
广义空间二阶段最小二乘法

{p 8 14 2}
{cmd:spregress}
{depvar}
[{indepvars}]
{ifin}{cmd:,}
{cmd:gs2sls}
[{help spregress##gs2sls_options:{it:gs2sls_options}}]


{phang}
最大似然法

{p 8 14 2}
{cmd:spregress}
{depvar}
[{indepvars}]
{ifin}{cmd:,}
{cmd:ml}
[{help spregress##ml_options:{it:ml_options}}]


{marker gs2sls_options}{...}
{synoptset 30 tabbed}{...}
{synopthdr:gs2sls_options}
{synoptline}
{syntab:模型}
{p2coldent :* {opt gs2sls}}使用广义空间二阶段最小二乘法估计器{p_end}
{synopt :{opt dvarl:ag(spmatname)}}空间滞后因变量；可重复{p_end}
{synopt :{opt err:orlag(spmatname)}}空间滞后误差；可重复{p_end}
{synopt :{cmdab:ivarl:ag(}{it:spmatname} {cmd::} {varlist}{cmd:)}}空间滞后自变量；可重复{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt het:eroskedastic}}将误差视为异方差{p_end}
{synopt :{opt force}}允许在估计样本为创建空间权重矩阵的样本子集时进行估计{p_end}
{synopt :{opt impower(#)}}工具变量近似的阶数{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心级别；默认值为
{cmd:level(95)}{p_end}
{synopt :{help spregress##gs2sls_display_options:{it:display_options}}}控制
包含帮助短描述 - 显示选项

{syntab:优化}
{synopt :{help spregress##optimopts:{it:optimization_options}}}控制优化过程；很少用{p_end}

包含帮助短描述 - 系数图例
{synoptline}


{marker ml_options}{...}
{synopthdr:ml_options}
{synoptline}
{syntab:模型}
{p2coldent:* {opt ml}}使用最大似然估计器{p_end}
{synopt :{opt dvarl:ag(spmatname)}}空间滞后因变量；不可重复{p_end}
{synopt :{opt err:orlag(spmatname)}}空间滞后误差；不可重复{p_end}
{synopt :{cmdab:ivarl:ag(}{it:spmatname} {cmd::} {varlist}{cmd:)}}空间滞后自变量；可重复{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth const:raints(estimation_options##constraints():constraints)}}应用指定的线性约束{p_end}
{synopt :{opt force}}允许在估计样本为创建空间权重矩阵的样本子集时进行估计{p_end}
{synopt :{opt grid:search(#)}}初始值搜索网格的分辨率；很少用{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim} 或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心级别；默认值为
{cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{help spregress##ml_display_options:{it:display_options}}}控制
包含帮助短描述 - 显示选项

{syntab:最大化}
{synopt :{help spregress##maxopts:{it:maximize_options}}}控制
     最大化过程；很少用

包含帮助短描述 - 系数图例
{synoptline}
{p2colreset}{...}


{p 4 6 2}
* 必须指定 {cmd:gs2sls} 或 {cmd:ml}.{p_end}
{p 4 6 2}
{it:indepvars} 和 {it:varlist} 在 {cmd:ivarlag()} 中指定可以包含因子变量；请参阅 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp spregress_postestimation SP:spregress postestimation}。{p_end}


包含帮助菜单 - 空间


{marker description}{...}
{title:描述}

{pstd}
{cmd:spregress} 是空间数据的 {help regress_zh} 的等效命令。
{cmd:spregress} 拟合空间自回归 (SAR) 模型，
也称为同时自回归模型。
如果您尚未阅读 {manlink SP Intro 1} - {manlink SP Intro 8}，
在使用 {cmd:spregress} 之前建议先阅读。

{pstd}
要使用 {cmd:spregress}，您的数据必须是空间数据。有关如何准备数据的说明，请参见 {manlink SP Intro 3}。

{pstd}
要指定空间滞后，您需要一个或多个空间权重矩阵。
有关权重矩阵的类型及如何创建它们的说明，请参见 {manlink SP Intro 2} 和 {manhelp spmatrix SP}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spregressQuickstart:快速入门}

        {mansection SP spregressRemarksandexamples:备注和示例}

        {mansection SP spregressMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options_spregress_gs2sls}{...}
{title:spregress 的选项，gs2sls}

{dlgtab:模型}

{phang}
{opt gs2sls} 请求使用广义空间二阶段最小二乘法估计器。

{phang}
{opt dvarlag(spmatname)} 指定定义因变量空间滞后的空间权重矩阵。
此选项可重复以支持高阶模型。
默认情况下，不包括因变量的空间滞后。

{phang}
{opt errorlag(spmatname)} 指定定义空间滞后误差的空间权重矩阵。
此选项可重复以支持高阶模型。
默认情况下，不包括空间滞后误差。

{phang}
{cmd:ivarlag(}{it:spmatname} {cmd::} {varlist}{cmd:)} 指定一个空间权重矩阵和一组自变量，定义变量的空间滞后。
此选项可重复以允许从不同矩阵创建空间滞后。默认情况下，不包括自变量的空间滞后。

{phang}
{cmd:noconstant}；请参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt heteroskedastic} 指定估计器视为异方差，而不是默认的同方差；请参见
{mansection SP spregressMethodsandformulas:{it:方法和公式}} 
在 {manhelp spregress SP} 中。

{phang}
{opt force} 请求在估计样本是用于创建空间权重矩阵的样本 proper 子集时进行估计。
默认情况下，不允许拟合模型。权重矩阵可能连接所有空间单元。当估计样本是该空间的子集时，空间连接不同，溢出效应可能发生变化。此外，权重矩阵的归一化与如果对估计样本进行了归一化时不同。
比起使用 {opt force}，更好的选择是首先了解估计样本的空间，然后在如果合理的情况下为其创建新的权重矩阵。
请参见 {manhelp spmatrix SP} 和 {mansection SP Intro2Remarksandexamplesforce:{it:缺失值、丢弃的观察和 W 矩阵}}
在 {bf:[SP] Intro 2} 中。

{phang}
{opt impower(#)} 指定用于拟合模型的工具变量近似的阶数。估计器的推导涉及 {it:#} 矩阵的乘积。增加 {it:#} 可能改善估计的精度，而不会造成任何危害，但会需要更多计算时间。默认值为 {cmd:impower(2)}。请参见  
{mansection SP spregressMethodsandformulasimpower:{it:方法和公式}} 
以获取有关 {opt impower(#)} 的更多详细信息。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options:[R] 估计选项}。

{marker gs2sls_display_options}{...}
包含帮助 - 显示选项列表

{dlgtab:优化}

{marker optimopts}{...}
{phang}
{it:优化选项}：
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}, 和
{opt nonrtol:erance}；
请参见 {manhelp mf_optimize M-5:优化()}。

{pstd}
以下选项在 {cmd:spregress, gs2sls} 中可用，但在对话框中未显示：

{phang}
{opt coeflegend}；请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker options_spregress_ml}{...}
{title:spregress 的选项，ml}

{dlgtab:模型}

{phang}
{opt ml} 请求使用最大似然估计器。

{phang}
{opt dvarlag(spmatname)} 指定定义因变量空间滞后的空间权重矩阵。
只能指定一个 {cmd:dvarlag()} 选项。
默认情况下，不包括因变量的空间滞后。

{phang}
{opt errorlag(spmatname)} 指定定义空间滞后误差的空间权重矩阵。
只能指定一个 {cmd:errorlag()} 选项。
默认情况下，不包括空间滞后误差。

{phang}
{cmd:ivarlag(}{it:spmatname} {cmd::} {varlist}{cmd:)} 指定一个
空间权重矩阵和一组自变量，定义变量的空间滞后。
此选项可重复以允许从不同矩阵创建空间滞后。
默认情况下，不包括自变量的空间滞后。

{phang}
{opt noconstant}, {opt constraints(constraints)}；请参见
     {helpb estimation options:[R] 估计选项}。

{phang}
{opt force} 请求在估计样本是用于创建空间权重矩阵的样本 proper 子集时进行估计。
默认情况下，不允许拟合该模型。
这是与 {cmd:spregress, gs2sls} 一样的 {cmd:force} 选项。

{phang}
{opt gridsearch(#)} 指定初始值搜索网格的分辨率。
默认值为 {cmd:gridsearch(0.1)}。您可以指定介于 0.001 和 0.1 之间的任何数字（包括两者）。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括根据渐近理论得出的类型（{cmd:oim}）和对非正态独立同分布 (i.i.d.) 扰动的稳健性（{cmd:robust}）。
请参见 {manhelpi vce_option R}。

{dlgtab:报告}

{phang}
{opt level(#)}, {opt nocnsreport}；请参见
     {helpb estimation options:[R] 估计选项}。

{marker ml_display_options}{...}
包含帮助 - 显示选项列表

{dlgtab:最大化}

{marker maxopts}{...}
{phang}
{it:最大化选项}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}, 和
{opt nonrtol:erance}；
请参见 {help maximize_zh:[R] 最大化}。

{pstd}
以下选项在 {cmd:spregress, ml} 中可用，但在对话框中未显示：

{phang}
{cmd:coeflegend}；请参见 
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990_shp.dta .}
{p_end}
{phang2}{cmd:. use homicide1990}
{p_end}
{phang2}{cmd:. spset}
{p_end}

{pstd}使用默认的频谱归一化创建邻接权重矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}拟合广义空间二阶段最小二乘法回归{p_end}
{phang2}{cmd:. spregress hrate ln_population ln_pdensity gini,}
                     {cmd:gs2sls dvarlag(W)}

{pstd}与上面相同，但添加空间自回归误差项{p_end}
{phang2}{cmd:. spregress hrate ln_population ln_pdensity gini,}
                     {cmd:gs2sls dvarlag(W) errorlag(W)}

{pstd}与上面相同，但添加表示自变量空间滞后的项{p_end}
{phang2}{cmd:. spregress hrate ln_population ln_pdensity gini,}
                     {cmd:gs2sls dvarlag(W) errorlag(W)}
		     {cmd:ivarlag(W: ln_population ln_pdensity gini)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:spregress, gs2sls} 将以下信息存储在 {cmd:e()} 中： 

{synoptset 20 tabbed}{...}
{p2col 5 20 22 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观测值数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(df_c)}}空间项检验的自由度{p_end}
{synopt :{cmd:e(iterations)}}广义矩估计迭代次数{p_end}
{synopt :{cmd:e(iterations_2sls)}}二阶段最小二乘法迭代次数{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt :{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(chi2_c)}}空间项检验的卡方{p_end}
{synopt :{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt :{cmd:e(p_c)}}空间项检验的 p 值{p_end}
{synopt :{cmd:e(converged)}}如果广义矩估计收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt :{cmd:e(converged_2sls)}}如果二阶段最小二乘法收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 22 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:spregress}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量的名称{p_end}
{synopt :{cmd:e(indeps)}}自变量的名称{p_end}
{synopt :{cmd:e(idvar)}}ID 变量的名称{p_end}
{synopt :{cmd:e(estimator)}}{cmd:gs2sls}{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(constant)}}{cmd:hasconstant} 或 {cmd:noconstant}{p_end}
{synopt :{cmd:e(exogr)}}外生回归量{p_end}
{synopt :{cmd:e(dlmat)}}应用于 {depvar} 的空间权重矩阵名称{p_end}
{synopt :{cmd:e(elmat)}}应用于误差的空间权重矩阵名称{p_end}
{synopt :{cmd:e(het)}}{cmd:heteroskedastic} 或 {cmd:homoskedastic}{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 22 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(delta_2sls)}}空间滞后方程中二阶段最小二乘法对系数的估计{p_end}
{synopt :{cmd:e(rho_2sls)}}空间误差方程中广义矩估计对系数的估计{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 22 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:spregress, ml} 将以下信息存储在 {cmd:e()} 中：

{p2col 5 20 22 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观测值数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(df_c)}}空间项检验的自由度{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(iterations)}}最大对数似然估计的迭代次数{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt :{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(chi2_c)}}空间项检验的卡方{p_end}
{synopt :{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt :{cmd:e(p_c)}}空间项检验的 p 值{p_end}
{synopt :{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 22 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:spregress}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量的名称{p_end}
{synopt :{cmd:e(indeps)}}自变量的名称{p_end}
{synopt :{cmd:e(idvar)}}ID 变量的名称{p_end}
{synopt :{cmd:e(estimator)}}{cmd:ml}{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(constant)}}{cmd:hasconstant} 或 {cmd:noconstant}{p_end}
{synopt :{cmd:e(dlmat)}}应用于 {depvar} 的空间权重矩阵名称{p_end}
{synopt :{cmd:e(elmat)}}应用于误差的空间权重矩阵名称{p_end}
{synopt :{cmd:e(chi2type)}}{cmd Wald}；模型卡方检验的类型{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 22 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(Hessian)}}海森矩阵{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{p2col 5 20 22 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spregress.sthlp>}