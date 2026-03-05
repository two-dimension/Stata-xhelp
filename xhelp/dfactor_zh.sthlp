{smcl}
{* *! version 1.0.29  22mar2019}{...}
{viewerdialog dfactor "dialog dfactor"}{...}
{vieweralsosee "[TS] dfactor" "mansection TS dfactor"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfactor postestimation" "help dfactor postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[R] sureg" "help sureg_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "Syntax" "dfactor_zh##syntax"}{...}
{viewerjumpto "Menu" "dfactor_zh##menu"}{...}
{viewerjumpto "Description" "dfactor_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dfactor_zh##linkspdf"}{...}
{viewerjumpto "Options" "dfactor_zh##options"}{...}
{viewerjumpto "Examples" "dfactor_zh##examples"}{...}
{viewerjumpto "Stored results" "dfactor_zh##results"}{...}
{viewerjumpto "References" "dfactor_zh##references"}
{help dfactor:English Version}
{hline}{...}
{p2colset 1 17 21 2}{...}
{p2col:{bf:[TS] dfactor} {hline 2}}动态因子模型{p_end}
{p2col:}({mansection TS dfactor:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:dfactor} {it:obs_eq} [{it:fac_eq}]
{ifin}
[{cmd:,} {help dfactor##table_options:{it:选项}}]

{phang}
{it:obs_eq} 指定观察到的因变量方程，其形式为

{phang2}
        {cmd:(}{it:depvars} {cmd:=} [{it:exog_d}] [{cmd:,}
         {it:{help dfactor##sopts:sopts}}]{cmd:)}

{phang}
{it:fac_eq} 指定未观察到的因子方程，其形式为

{phang2}
        {cmd:(}{it:facvars} {cmd:=} [{it:exog_f}] [{cmd:,}
         {it:{help dfactor##sopts:sopts}}]{cmd:)}

{phang}
{it:depvars} 是观察到的因变量。 {it:exog_d} 是进入观察因变量方程的外生变量。 （所有因子会自动进入观察因变量的方程。） {it:facvars} 是模型中未观察因子的名称。 您可以在 {it:facvars} 中指定现有变量的名称，但 {cmd:dfactor} 仅将其视为名称，不考虑其也是变量。 {it:exog_f} 是进入因子方程的外生变量。

{marker table_options}{...}
{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt const:raints(constraints)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}
或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help dfactor##display_options:display_options}}}控制
包含帮助简短描述-显示选项

{syntab:最大化}
{synopt :{it:{help dfactor##maximize_options:maximize_options}}}控制
           最大化过程；很少使用{p_end}
{synopt :{opt from(matname)}}指定最大化过程的初始值；很少使用{p_end}

{syntab:高级}
{synopt :{cmdab:meth:od(}{it:{help dfactor##method:method}}{cmd:)}}指定
           计算对数似然的方法；很少使用{p_end}

包含帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}

{marker sopts}{...}
{synoptset 27 tabbed}{...}
{synopthdr:sopts}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从方程中抑制常数项；仅在 {it:obs_eq} 中允许{p_end}
{synopt :{opth ar(numlist)}}自回归项{p_end}
{synopt :{cmdab:ars:tructure(}{it:{help dfactor##arstructure:arstructure}}{cmd:)}}自回归系数矩阵的结构{p_end}
{synopt :{cmdab:covs:tructure(}{it:{help dfactor##covstructure:covstructure}}{cmd:)}}协方差结构{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 27}{...}
{marker arstructure}{...}
{synopthdr:arstructure}
{synoptline}
{synopt :{opt di:agonal}}对角矩阵；默认值{p_end}
{synopt :{opt lt:riangular}}下三角矩阵{p_end}
{synopt :{opt ge:neral}}一般矩阵{p_end}
{synoptline}

{marker covstructure}{...}
{synopthdr:covstructure}
{synoptline}
{synopt :{opt id:entity}}单位矩阵{p_end}
{synopt :{opt ds:calar}}对角标量矩阵{p_end}
{synopt :{opt di:agonal}}对角矩阵{p_end}
{synopt :{opt un:structured}}对称、正定矩阵{p_end}
{synoptline}

{marker method}{...}
{synopthdr:method}
{synoptline}
{synopt:{opt hyb:rid}}使用平稳的卡尔曼滤波器和
	De Jong扩散卡尔曼滤波器；默认值{p_end}
{synopt:{opt dej:ong}}使用平稳的De Jong方法和
        De Jong扩散卡尔曼滤波器{p_end}
{synoptline}

{p 4 6 2}您必须在使用 {opt dfactor} 之前 {opt tsset} 数据；见
     {manhelp tsset TS}.{p_end}
{p 4 6 2}{it:exog_d} 和 {it:exog_f} 可以包含因子变量；见
     {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvars}、{it:exog_d} 和 {it:exog_f} 可以包含时间序列
     运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt by}、{opt fp}、{opt rolling} 和 {opt statsby} 是允许的；见
     {help prefix_zh}.{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp dfactor_postestimation TS:dfactor postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 动态因子模型}


{marker description}{...}
{title:描述}

{pstd}
{opt dfactor} 通过最大似然估计动态因子模型的参数。 动态因子模型是灵活的多元时间序列模型，其中未观察到的因子具有向量自回归结构，外生协变量可以在潜在因子的方程和可观察因变量的方程中使用，并且因变量方程中的干扰项可能是自相关的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS dfactorQuickstart:快速入门}

        {mansection TS dfactorRemarksandexamples:备注和示例}

        {mansection TS dfactorMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件内。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt constraints(constraints)} 应用线性约束。 一些规格需要线性约束来进行参数识别。

{phang}
{opt noconstant} 抑制常数项。

{phang}
{opth ar(numlist)} 指定方程中的向量自回归滞后结构。 默认情况下，无论是在观察方程还是因子方程中都不包含滞后。

{phang}
{cmd:arstructure(diagonal}{c |}{cmd:ltriangular}{c |}{cmd:general}{cmd:)}指定向量自回归滞后结构中的矩阵结构。

{phang2}
{cmd:arstructure(diagonal)} 指定矩阵为对角矩阵 -- 每个滞后的单独参数，但没有交方程自相关。 {cmd:arstructure(diagonal)} 是观察方程和因子方程的默认值。

{phang2}
{cmd:arstructure(ltriangular)} 指定矩阵为下三角矩阵 -- 设定递归或沃尔德因果结构的参数。

{phang2}
{cmd:arstructure(general)} 指定矩阵为一般矩阵 -- 针对每种可能的自相关和交叉相关设定单独参数。

{phang}
{cmd:covstructure(identity}{c |}{cmd:dscalar}{c |}{cmd:diagonal}{c |}{cmd:unstructured)}指定误差的协方差结构。

{phang2}
{cmd:covstructure(identity)} 指定协方差矩阵等于单位矩阵，并且这是因子方程中的错误的默认值。

{phang2}
{cmd:covstructure(dscalar)} 指定协方差矩阵等于 sigma^2 乘以单位矩阵。  

{phang2}
{cmd:covstructure(diagonal)} 指定对角协方差矩阵，并且这是可观察变量中的错误的默认值。

{phang2}
{cmd:covstructure(unstructured)} 指定一个对称、正定协方差矩阵，包含所有方差和协方差的参数。  

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定估计量的方差-协方差矩阵的估计器。  

{phang2}
{cmd:vce(oim)}，默认情况下，导致 {cmd:dfactor} 使用观察信息矩阵估计量。

{phang2}
{cmd:vce(robust)} 导致 {cmd:dfactor} 使用 Huber/White/三明治估计器。

{dlgtab:报告}

{phang}
{opt level(#)}; 见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{cmd:nocnsreport}; 见
{helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助显示选项列表

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: 
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
{opt nrtol:erance(#)}；和
{opt from(matname)}；见 {help maximize_zh:[R] 最大化}，除 {cmd:from()} 外的所有选项，下面的信息适用于 {cmd:from()}。 这些选项很少使用。

{phang2}
{opt from(matname)} 指定最大化过程的初始值。 {cmd:from(b0)} 导致 {cmd:dfactor} 从 {cmd:b0} 中的值开始最大化算法。 {cmd:b0} 必须是一个行向量；列数必须等于模型中的参数数量；并且 {cmd:b0} 中的值必须与 {cmd:e(b)} 中的参数顺序相同。 该选项很少使用。

{dlgtab:高级}

{phang}
{opt method(method)} 指定计算对数似然的方法。 
{opt dfactor} 以状态空间形式撰写模型，并使用 {help sspace_zh} 估计参数。 {opt method()} 为处理状态空间似然的某些技术方面提供两种方法。 此选项很少使用。

{phang2}
{cmd:method(hybrid)}，默认值，当模型是平稳的时使用卡尔曼滤波器和基于模型的初始值，当模型是非平稳的时使用 De Jong ({help dfactor##DJ1988:1988}, {help dfactor##DJ1991:1991}) 扩散卡尔曼滤波器。  

{phang2}
{cmd:method(dejong)} 在模型平稳时使用 De Jong ({help dfactor##DJ1988:1988}) 方法估计卡尔曼滤波器的初始值，并且在模型非平稳时使用 De Jong ({help dfactor##DJ1988:1988}, {help dfactor##DJ1991:1991}) 扩散卡尔曼滤波器。

{pstd}
以下选项适用于 {opt dfactor} 但未在对话框中显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse dfex}{p_end}

{pstd}拟合一个动态因子模型，其中 {cmd:ipman}、{cmd:income}、{cmd:hours} 和 {cmd:unemp} 的差分依赖于一个遵循 AR(2) 过程的未观察因子{p_end}
{phang2}{cmd:. dfactor (D.(ipman income hours unemp) = , noconstant)}
               {cmd:(f = , ar(1/2))}

{pstd}与上面相同，但允许四个可观察方程中的误差自相关{p_end}
{phang2}{cmd:. dfactor (D.(ipman income hours unemp) = , noconstant ar(1))}
               {cmd:(f = , ar(1/2))}

{pstd}拟合一个具有未结构化误差协方差矩阵的动态因子模型，将 {cmd:unemp} 和 {cmd:income} 方程的误差协方差约束为零{p_end}
{phang2}{cmd:. constraint 1 [cov(De.unemp,De.income)]_cons  = 0}{p_end}
{phang2}{cmd:. dfactor (D.(ipman income unemp) = LD.(ipman income), noconstant}
                {cmd:covstructure(unstructured)), constraints(1)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:dfactor} 在 {cmd:e()} 中存储以下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 27 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_obser)}}观察方程的数量{p_end}
{synopt:{cmd:e(k_factor)}}指定的因子数量{p_end}
{synopt:{cmd:e(o_ar_max)}}干扰项的 AR 项数{p_end}
{synopt:{cmd:e(f_ar_max)}}因子的 AR 项数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(tmin)}}样本中的最小时间{p_end}
{synopt:{cmd:e(tmax)}}样本中的最大时间{p_end}
{synopt:{cmd:e(stationary)}}{cmd:1} 如果估计的参数表明模型是平稳的，则为 {cmd:0} 否则{p_end}
{synopt:{cmd:e(rank)}} VCE 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{opt 1} 如果已收敛，{opt 0} 否则{p_end}

{p2col 5 23 27 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{opt dfactor}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}观察方程中未操作的因变量名称{p_end}
{synopt:{cmd:e(obser_deps)}}观察方程中的因变量名称{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(factor_deps)}}模型中未观察因子的名称{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(model)}}指定的动态因子模型类型{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:e(o_ar)}}干扰项的 AR 项列表{p_end}
{synopt:{cmd:e(f_ar)}}因子的 AR 项列表{p_end}
{synopt:{cmd:e(observ_cov)}}观察误差协方差矩阵的结构{p_end}
{synopt:{cmd:e(factor_cov)}}因子误差协方差矩阵的结构{p_end}
{synopt:{cmd:e(chi2type)}}{opt Wald}; 模型的卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {opt vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记 Std. Err. 的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(method)}}似然方法{p_end}
{synopt:{cmd:e(initial_values)}}初始值类型{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(tech_steps)}}在最大化技术中所用的迭代次数{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{opt b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {opt estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {opt predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {opt margins} 禁用的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{p2col 5 23 27 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 23 27 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker DJ1988}{...}
{phang}
De Jong, P.  1988.  The likelihood for a state space model.
{it:Biometrika} 75: 165-169.

{marker DJ1991}{...}
{phang}
------.  1991.  The diffuse Kalman filter.
{it:Annals of Statistics} 19: 1073-1083.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dfactor.sthlp>}