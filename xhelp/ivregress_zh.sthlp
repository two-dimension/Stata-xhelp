{smcl}
{* *! version 1.3.12  13dec2018}{...}
{viewerdialog ivregress "dialog ivregress"}{...}
{viewerdialog "svy: ivregress" "dialog ivregress, message(-svy-) name(svy_ivregress)"}{...}
{vieweralsosee "[R] ivregress" "mansection R ivregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivregress postestimation" "help ivregress postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eregress" "help eregress_zh"}{...}
{vieweralsosee "[FMM] fmm: ivregress" "help fmm ivregress"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{vieweralsosee "[SEM] Intro 5" "mansection SEM Intro5"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "[R] ivtobit" "help ivtobit_zh"}{...}
{vieweralsosee "[R] reg3" "help reg3_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SP] spivregress" "help spivregress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[XT] xtivreg" "help xtivreg_zh"}{...}
{viewerjumpto "Syntax" "ivregress_zh##syntax"}{...}
{viewerjumpto "Menu" "ivregress_zh##menu"}{...}
{viewerjumpto "Description" "ivregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ivregress_zh##linkspdf"}{...}
{viewerjumpto "Options" "ivregress_zh##options"}{...}
{viewerjumpto "Examples" "ivregress_zh##examples"}{...}
{viewerjumpto "Video example" "ivregress_zh##video"}{...}
{viewerjumpto "Stored results" "ivregress_zh##results"}{...}
{viewerjumpto "References" "ivregress_zh##references"}
{help ivregress:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] ivregress} {hline 2}}单方程工具变量回归{p_end}
{p2col:}({mansection R ivregress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:ivregress} {it:estimator} {depvar} [{it:{help varlist_zh:varlist1}}]
{cmd:(}{it:{help varlist_zh:varlist2}} {cmd:=}
        {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin}
[{it:{help ivregress##weight:weight}}]
[{cmd:,} {it:options}]

{phang}
{it:varlist1} 是外生变量的列表。{p_end}

{phang}
{it:varlist2} 是内生变量的列表。{p_end}

{phang}
{it:varlist_iv} 是与 {it:varlist1} 一起用作 {it:varlist2} 的工具变量的外生变量列表。

{synoptset 22}{...}
{synopthdr:估计量}
{synoptline}
{synopt:{opt 2sls}}两阶段最小二乘法 (2SLS){p_end}
{synopt:{opt liml}}有限信息极大似然法 (LIML){p_end}
{synopt:{opt gmm}}广义矩法 (GMM){p_end}
{synoptline}

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt h:ascons}}有用户提供的常数{p_end}

{p2col 3 4 4 2:# GMM}{p_end}
{synopt :{opt wmat:rix(wmtype)}}{it:wmtype} 可以是 {opt r:obust}、{opt cl:uster} {it:clustvar}、{opt hac} {help ivregress##kernel:{it:kernel}}，或 {opt un:adjusted}{p_end}
{synopt :{opt c:enter}}在权重矩阵计算中中心化矩{p_end}
{synopt :{opt i:gmm}}使用迭代而非两步 GMM 估计量{p_end}
{p2coldent:* {opt eps(#)}}指定 # 作为参数收敛标准；默认值为 {cmd:eps(1e-6)}{p_end}
{p2coldent:* {opt weps(#)}}指定 # 作为权重矩阵收敛标准；默认值为 {cmd:weps(1e-6)}{p_end}
{p2coldent:* {it:{help ivregress##optimization_options:optimization_options}}}控制优化过程；很少使用{p_end}

{syntab :SE/鲁棒}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt un:adjusted}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap}、{opt jack:knife}，或 {opt hac} {help ivregress##kernel:{it:kernel}}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt first}}报告第一阶段回归{p_end}
{synopt :{opt small}}进行自由度调整并报告小样本统计量{p_end}
{synopt :{opt nohe:ader}}仅显示系数表{p_end}
{synopt :{opth dep:name(varname:depname)}}替代因变量名称{p_end}
{synopt :{opth ef:orm(strings:string)}}报告指数化系数并使用 {it:string} 来标记它们{p_end}
{synopt :{it:{help ivregress##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{synopt :{opt per:fect}}不检查内生回归量与排除的工具变量之间的共线性{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}# 这些选项仅在指定 {cmd:gmm} 时可用。{p_end}
{p 4 6 2}* 这些选项仅在指定 {cmd:igmm} 时可用。{p_end}
{p 4 6 2}{it:varlist1}、{it:varlist2} 和 {it:varlist_iv} 可能包含因子变量；请参见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}{it:depvar}、{it:varlist1}、{it:varlist2} 和 {it:varlist_iv} 可能包含时间序列操作符；请参见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:fmm}、{cmd:jackknife}、{cmd:rolling}、{cmd:statsby} 和 {cmd:svy} 是允许的；请见 {help prefix_zh}。有关更多详细信息，请参阅 {manhelp fmm_ivregress FMM:fmm ivregress}。{p_end}
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{p 4 6 2}{cmd:hascons}、{cmd:vce()}、{cmd:noheader}、{cmd:depname()} 和权重不允许与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight}、{cmd:fweight}、{cmd:iweight} 和 {cmd:pweight} 是被允许的；参见 {help weight_zh}。{p_end}
{p 4 6 2}{opt perfect} 和 {opt coeflegend} 不出现在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp ivregress_postestimation R:ivregress postestimation} 以获取估计后可用的特性。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 内生协变量 >}
    {bf:带内生协变量的线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ivregress} 拟合线性模型，其中一个或多个回归变量为内生确定。{cmd:ivregress} 支持通过两阶段最小二乘法 (2SLS)、有限信息极大似然法 (LIML) 和广义矩法 (GMM) 进行估计。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ivregressQuickstart:快速入门}

        {mansection R ivregressRemarksandexamples:备注和示例}

        {mansection R ivregressMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；参见 
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt hascons} 指示在独立变量中指定了用户定义的常数或其等价物。 

{dlgtab:GMM}

{marker wmatrix}{...}
{phang}
{opt wmatrix(wmtype)} 指定与 GMM 估计量一起使用的加权矩阵类型。

{pmore}
指定 {cmd:wmatrix(robust)} 请求一个在误差项异方差时最优的加权矩阵。 {cmd:wmatrix(robust)} 是默认值。

{pmore}
指定 {cmd:wmatrix(cluster} {it:clustvar}{cmd:)} 请求一个考虑 {it:clustvar} 识别的簇内观察值之间任意相关性的加权矩阵。

{marker kernel}{...}
{pmore}
指定 {cmd:wmatrix(hac} {it:kernel} {it:#}{cmd:)} 请求一个使用指定内核的异方差性和自相关一致 (HAC) 加权矩阵，具有 {it:#} 个滞后。一个内核的带宽等于 {it:#} + 1。

{pmore}
指定 {cmd:wmatrix(hac} {it:kernel} {cmd:opt} [{it:#}]{cmd:)} 请求使用指定内核的 HAC 加权矩阵，并使用 Newey 和 West 的 ({help ivregress##NW1994:1994}) 最优滞后选择算法选择滞后顺序。 {it:#} 是一个可选的调节参数，会影响选择的滞后顺序；见 
{mansection R ivregressMethodsandformulaswmatrixopt:讨论}
在 {bf:[R] ivregress} 中。

{pmore}
指定 {cmd:wmatrix(hac} {it:kernel}{cmd:)} 请求一个使用指定内核和 {it:N}-2 个滞后的 HAC 加权矩阵，其中 {it:N} 是样本大小。

{pmore}
有三种内核可用于 HAC 加权矩阵，您可以使用统计学家使用的名称或经济学家更熟悉的名称请求每一种：

{p 12 16 4}
{opt ba:rtlett} 或 {opt nw:est} 请求 Bartlett (Newey-West) 内核；

{p 12 16 4}
{opt pa:rzen} 或 {opt ga:llant} 请求 Parzen ({help ivregress##G1987:Gallant 1987}) 内核；以及

{p 12 16 4}
{opt qu:adraticspectral} 或 {opt an:drews} 请求二次谱 ({help ivregress##A1991:Andrews 1991}) 内核。

{pmore}
指定 {cmd:wmatrix(unadjusted)} 请求一个适用于误差为同方差的加权矩阵。具有此加权矩阵的 GMM 估计量等同于 2SLS 估计量。

{phang}
{opt center} 请求在计算 GMM 权重矩阵时对样本矩进行中心化（去均值）。默认情况下，不进行中心化。

{phang}
{opt igmm} 请求使用迭代 GMM 估计量，而不是默认的两步 GMM 估计量。当从一个迭代到下一个迭代参数向量的相对变化小于 {cmd:eps()} 或权重矩阵的相对变化小于 {cmd:weps()} 时，声称收敛。

{phang}
{opt eps(#)} 指定使用迭代 GMM 估计量时连续参数估计的收敛标准。
默认值为 {cmd:eps(1e-6)}。当连续参数估计之间的相对差异小于 {cmd:eps()} 且连续权重矩阵估计之间的相对差异小于 {cmd:weps()} 时，声称收敛。

{phang}
{opt weps(#)} 指定使用迭代 GMM 估计量时连续权重矩阵估计的收敛标准。默认值为 {cmd:weps(1e-6)}。当连续参数估计之间的相对差异小于 {cmd:eps()} 且连续权重矩阵估计之间的相对差异小于 {cmd:weps()} 时，声称收敛。

{marker optimization_options}{...}
{phang}
{it:optimization_options}: {cmdab:iter:ate()}, [{cmd:no}]{opt log}.  
{cmd:iterate()} 指定与迭代 GMM 估计量一起使用的最大迭代次数。默认值为 16,000 或使用 {helpb set maxiter} 设置的数字。 {opt log}/{opt nolog} 指定是否显示迭代日志；见 {cmd:set iterlog} 在
{manhelpi set_iter R:set iter} 中。 这些选项很少使用。

{dlgtab:SE/鲁棒}

INCLUDE help vce_rcbj

{pmore}
{cmd:vce(unadjusted)}，{cmd:2sls} 和 {cmd:liml} 的默认值，指定使用未经调整的（非鲁棒）VCE 矩阵。 {cmd:gmm} 的默认值基于在 {cmd:wmatrix()} 选项中指定的 {it:wmtype}；请见上面的 {help ivregress##wmatrix:wmatrix({it:wmtype})}。如果与 {cmd:gmm} 一起指定 {cmd:wmatrix()} 但没有 {cmd:vce()}，则 {it:vcetype} 设置为 {it:wmtype}。要覆盖此行为并获得未经调整的（非鲁棒）VCE 矩阵，请指定 {cmd:vce(unadjusted)}。

{pmore}
{cmd:ivregress} 还允许以下内容：

{phang2}
{cmd:vce(hac} {it:kernel} [{it:#} | {cmd:opt} [{it:#}]]{cmd:)} 指定使用 HAC 协方差矩阵。与 {cmd:vce(hac }{it:kernel ...}{cmd:)} 的语法与 {cmd:wmatrix(hac }{it:kernel ...} {cmd:)} 的语法相同；见上面的 {help ivregress##wmatrix:wmatrix({it:wmtype})}。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 请求显示第一阶段回归结果。

{phang}
{opt small} 请求对参数的方差协方差矩阵进行自由度调整 {it:N}/({it:N}-{it:k}) 并报告小样本 {it:F} 和 {it:t} 统计量，其中 {it:N} 是样本大小，{it:k} 是估计的参数数量。 默认情况下，不进行自由度调整，并报告 Wald 和 {it:z} 统计量。即便使用此选项，在使用 GMM 估计量时也未对权重矩阵进行自由度调整。

{phang}
{opt noheader} 抑制输出顶部的摘要统计显示，仅显示系数表。

{phang}
{opth depname:(varname:depname)} 仅在使用 {cmd:ivregress} 拟合其他非工具变量回归的程序和 ado 文件中使用。 {opt depname()} 仅可在估计时指定。 {it:depname} 记录为因变量的身份，即使估算是使用 {depvar} 计算的。此方法影响输出的标签——而不是计算的结果——但可能影响后续由 {opt predict} 进行的计算，其中残差将被计算为相对于 {it:depname} 的偏差，而不是 {it:depvar}。 
{opt depname()} 通常在 {it:depvar} 是用作 {it:depname} 的代理的临时变量时使用（见 {manhelp macro P}）。

{phang}
{opth eform:(strings:string)} 仅在使用 {cmd:ivregress} 拟合其他非工具变量回归的程序和 ado 文件中使用。 {opt eform()} 指定以“指数形式”显示系数表，如 {help maximize_zh:[R] 最优化} 中定义，并且使用 {it:string} 标记表中的指数系数。

INCLUDE help displayopts_list

{phang} 以下选项可与 {cmd:ivregress} 一起使用，但不在对话框中显示：

{phang}
{opt perfect} 请求 {cmd:ivregress} 不检查内生回归量与排除的工具变量之间的共线性，从而允许指定“完美”工具变量。此选项不能与 LIML 估计量一起使用。使用 {cmd:ivregress} 实现其他估计量时可能需要此选项。

{phang}
{opt coeflegend}；请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hsng2}{p_end}

{pstd}通过 2SLS 拟合回归，请求小样本统计量{p_end}
{phang2}{cmd:. ivregress 2sls rent pcturban (hsngval = faminc i.region), small}{p_end}

{pstd}使用 LIML 估计量拟合回归{p_end}
{phang2}{cmd:. ivregress liml rent pcturban (hsngval = faminc i.region)}{p_end}

{pstd}通过 GMM 拟合回归，使用默认的异方差稳健权重矩阵{p_end}
{phang2}{cmd:. ivregress gmm rent pcturban (hsngval = faminc i.region)}{p_end}

{pstd}通过 GMM 拟合回归，使用异方差稳健权重矩阵，请求非稳健标准误{p_end}
{phang2}{cmd:. ivregress gmm rent pcturban (hsngval = faminc i.region), vce(unadjusted)}{p_end}

{pstd}通过 2SLS 拟合回归，具有内生的因子交互{p_end}
{phang2}{cmd:. ivregress 2sls rent pcturban (c.popgrow##c.popgrow = c.faminc##c.faminc i.region)}{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=lbnswRJ1qV0&index=1&list=UUVk4G4nEtBS4tLOyHqustDA":使用 Stata 的工具变量回归}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ivregress} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2)}}R方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的 R 方{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(N_clust)}}簇数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(kappa)}}LIML 估计量中使用的 kappa{p_end}
{synopt:{cmd:e(J)}} GMM 目标函数值{p_end}
{synopt:{cmd:e(wlagopt)}}使用的 HAC 权重矩阵的滞后 (如果使用了 Newey-West 算法){p_end}
{synopt:{cmd:e(vcelagopt)}}使用的 HAC VCE 矩阵的滞后 (如果使用了 Newey-West 算法){p_end}
{synopt:{cmd:e(hac_lag)}} HAC 滞后{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(iterations)}} GMM 迭代次数 ({cmd:0} 如果不适用)
{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ivregress}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(instd)}}被工具化的变量{p_end}
{synopt:{cmd:e(insts)}}工具变量{p_end}
{synopt:{cmd:e(constant)}}{cmd:noconstant} 或 {cmd:hasconstant} 如果指定{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量名称{p_end}
{synopt:{cmd:e(hac_kernel)}}HAC 内核{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(estimator)}}{cmd:2sls}、{cmd:liml} 或 {cmd:gmm}{p_end}
{synopt:{cmd:e(exogr)}}外生回归量{p_end}
{synopt:{cmd:e(wmatrix)}}在 {cmd:wmatrix()} 中指定的 {it:wmtype}{p_end}
{synopt:{cmd:e(moments)}}如果指定了 {cmd:centered}，则为 {cmd:centered}{p_end}
{synopt:{cmd:e(small)}}如果为小样本统计量，则为 {cmd:small}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(W)}}用于计算 GMM 估计的权重矩阵{p_end}
{synopt:{cmd:e(S)}}用于计算 GMM 方差协方差矩阵的矩估计协方差矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker A1991}{...}
{phang}
Andrews, D. W. K. 1991. 一致的异方差和自相关估计。 {it:Econometrics} 59: 817-858。

{marker G1987}{...}
{phang}
Gallant, A. R. 1987. {it:非线性统计模型}。 纽约：Wiley。

{marker NW1994}{...}
{phang}
Newey, W. K., 和 K. D. West. 1994. 协方差矩阵估计中的自动滞后选择。 {it:经济研究评论} 61: 631-653。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ivregress.sthlp>}