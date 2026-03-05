{smcl}
{* *! version 1.3.8  12dec2018}{...}
{viewerdialog var "dialog var"}{...}
{vieweralsosee "[TS] var" "mansection TS var"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var postestimation" "help var postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfactor" "help dfactor_zh"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] mgarch" "help mgarch_zh"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE]" "mansection DSGE dsge"}{...}
{viewerjumpto "语法" "var_zh##syntax"}{...}
{viewerjumpto "菜单" "var_zh##menu"}{...}
{viewerjumpto "描述" "var_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "var_zh##linkspdf"}{...}
{viewerjumpto "选项" "var_zh##options"}{...}
{viewerjumpto "示例" "var_zh##examples"}{...}
{viewerjumpto "存储结果" "var_zh##results"}
{help var:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[TS] var} {hline 2}}向量自回归模型{p_end}
{p2col:}({mansection TS var:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:var}
{depvarlist}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{synopt:{opth la:gs(numlist)}}在 VAR 中使用滞后 {it:numlist}{p_end}
{synopt:{opth ex:og(varlist)}}使用外生变量 {it:varlist}{p_end}

{syntab:模型 2}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():numlist}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:[{cmd:no}]{cmd:log}}显示或抑制 SURE 迭代日志；默认是显示{p_end}
{synopt:{opt it:erate(#)}}设置 SURE 最大迭代次数；默认是 {cmd:iterate(1600)}{p_end}
{synopt:{opt tol:erance(#)}}设置 SURE 收敛容忍度{p_end}
{synopt:{opt nois:ure}}使用一步 SURE{p_end}
{synopt:{opt dfk}}进行小样本自由度调整{p_end}
{synopt:{opt sm:all}}报告小样本 t 和 F 统计量{p_end}
{synopt:{opt nobig:f}}不计算隐式设置为零的系数的参数向量{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt:{opt lut:stats}}报告 L{c u:}tkepohl 滞后序列选择统计量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help var##display_options:display_options}}}控制列和列格式、行间距和行宽{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
使用 {opt var} 之前必须先 {cmd:tsset} 数据；请参见 
{help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}{it:depvarlist} 和 {it:varlist} 可以包含时间序列操作符；参见 {help tsvarlist_zh}。
{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt fp}、{opt rolling}、{opt statsby} 和 {cmd:xi}；请参见
{help prefix_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用特性的请参见 {manhelp var_postestimation TS:var postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 向量自回归 (VAR)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:var} 适合每个因变量分别基于自身的滞后值及所有其他因变量的滞后值的多元时间序列回归。 {cmd:var} 还适合一种称为 VARX 模型的向量自回归 (VAR) 模型变体，它还包括外生变量。 
请参见 {manhelp var_intro TS:var intro} 以获取与 {cmd:var} 一起使用的命令列表。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS varQuickstart:快速开始}

        {mansection TS varRemarksandexamples:备注和示例}

        {mansection TS varMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；请参见
{bf:{help estimation options##noconstant:[R] 估计选项}}。

{phang}
{opt lags(numlist)} 指定要包含在模型中的滞后。默认是 {cmd:lags(1 2)}。此选项接收一个 {it:numlist}，而不仅仅是最大滞后的整数。例如，{cmd:lags(2)} 仅会在模型中包含第二个滞后，而 {cmd:lags(1/2)} 会在模型中同时包含第一个和第二个滞后。请参见 {it:{help numlist_zh}} 和 {help tsvarlist_zh} 以获取关于 numlist 和滞后的更多讨论。

{phang}
{opth exog(varlist)} 指定要包含在 VAR 中的外生变量列表。

{dlgtab:模型 2}

{phang}
{opth constraints(numlist)}；请参见
{bf:{help estimation options##constraints():[R] 估计选项}}。

{phang}
{opt log} 和 {opt nolog} 指定是否显示从迭代似乎不相关的回归算法的日志。默认情况下，当通过迭代似乎不相关的回归估计系数时，会显示迭代日志。当未指定 {opt constraints()} 选项时，估计通过最小二乘法获得，而 {opt nolog} 不会产生影响。因此，{opt log} 和 {opt nolog} 只能在指定 {opt constraints()} 时使用。类似地，{opt nolog} 不能与 {opt noisure} 组合使用。您还可以使用 {cmd:set iterlog} 控制迭代日志；请参见 {manhelpi set_iter R:set iter}。

{phang}
{opt iterate(#)} 指定一个整数，以设置通过迭代似乎不相关的回归获得估计时的最大迭代次数。默认限制为 1,600。当未指定 {opt constraints()} 时，通过最小二乘法获得估计，而 {opt iterate()} 不会产生影响。因此，{opt iterate()} 只能在指定 {opt constraints()} 时使用。类似地，{opt iterate()} 不能与 {opt noisure} 组合使用。

{phang}
{opt tolerance(#)} 指定一个大于零且小于 1 的数字，用于迭代似乎不相关的回归算法的收敛容忍度。默认容忍度为 {cmd:1e-6}。当未指定 {opt constraints()} 时，估计通过最小二乘法获得，而 {opt tolerance()} 不会产生影响。因此，{opt tolerance()} 只能在指定 {opt constraints()} 时使用。类似地，{opt tolerance()} 不能与 {opt noisure} 组合使用。

{phang}
{opt noisure} 指定在存在约束的情况下，通过一步似乎不相关的回归获得估计。默认情况下，{opt var} 在存在约束的情况下通过迭代似乎不相关的回归获得估计。当未指定 {opt constraints()} 时，估计通过最小二乘法获得，而 {opt noisure} 不会产生影响。因此，{opt noisure} 只能在指定 {opt constraints()} 时使用。

{phang}
{opt dfk} 指定在估计误差方差-协方差矩阵时使用小样本自由度调整。具体而言，使用 1/(T-mparms) 代替大样本除数 1/T，其中 mparms 是 K 个方程中 y_t 的函数形式中的平均参数数量。

{phang}
{opt small} 使得 {opt var} 报告小样本 {it:t} 和 {it:F} 统计量，而不是大样本正态和卡方统计量。

{phang}
{opt nobigf} 请求 {opt var} 不保存包含被隐式设置为零的系数的估计参数向量，例如当从模型中省略某些滞后时。{cmd:e(bf)} 用于在估计后命令 {helpb irf create} 和 {helpb fcast compute} 中计算渐进标准误。因此，指定 {opt nobigf} 意味着将不提供来自 {opt irf create} 和 {opt fcast compute} 的渐进标准误。请参见
{mansection TS varRemarksandexamplesFittingmodelswithsomelagsexcluded:{it:省略某些滞后拟合模型}}于 {hi:[TS] var}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{bf:{help estimation options##level():[R] 估计选项}}。

{phang}
{opt lutstats} 指定报告 L{c u:}tkepohl 版本的滞后序列选择统计量。请参见 
{mansection TS varsocMethodsandformulas:{it:方法和公式}}于 
{bf:[TS] varsoc} 以获取关于这些统计量的讨论。

{phang}
{opt nocnsreport}；请参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt noci}，
{opt nopv:alues}，
{opt vsquish}，
{opth cformat(%fmt)}，
{opt pformat(%fmt)}，
{opt sformat(%fmt)}，以及
{opt nolstretch}；
请参见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
以下选项可与 {opt var} 一起使用，但未显示在对话框中：

{phang}
{opt coeflegend}；请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}
{phang2}{cmd:. tsset}

{pstd}适合具有两个滞后的向量自回归模型（默认）{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump}{p_end}

{pstd}适合限制在指定期间的向量自回归模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4)}{p_end}

{pstd}与上面相同，但在模型中包含第一个、第二个和第三个滞后{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4), lags(1/3)}
{p_end}

{pstd}与上面相同，但报告 L{c u:}tkepohl 版本的滞后序列选择统计量{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4), lags(1/3)}
            {cmd:lutstats}{p_end}

{pstd}使用 99% 置信区间重放结果{p_end}
{phang2}{cmd:. var, level(99)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:var} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_gaps)}}样本中的缺口数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_eq)}}方程中的平均参数数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度（仅限 {cmd:small}）{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_dfk)}}{cmd:dfk} 调整的对数似然（仅限 {cmd:dfk}）{p_end}
{synopt:{cmd:e(obs_}{it:#}{cmd:)}}方程 {it:#} 的观测值数量{p_end}
{synopt:{cmd:e(k_}{it:#}{cmd:)}}方程 {it:#} 的参数数量{p_end}
{synopt:{cmd:e(df_m}{it:#}{cmd:)}}方程 {it:#} 的模型自由度{p_end}
{synopt:{cmd:e(df_r}{it:#}{cmd:)}}方程 {it:#} 的残差自由度（仅限 {cmd:small}）{p_end}
{synopt:{cmd:e(r2_}{it:#}{cmd:)}}方程 {it:#} 的 R 平方{p_end}
{synopt:{cmd:e(ll_}{it:#}{cmd:)}}方程 {it:#} 的对数似然{p_end}
{synopt:{cmd:e(chi2_}{it:#}{cmd:)}}方程 {it:#} 的卡方{p_end}
{synopt:{cmd:e(F_}{it:#}{cmd:)}}方程 {it:#} 的 F 统计量（仅限 {cmd:small}）{p_end}
{synopt:{cmd:e(rmse_}{it:#}{cmd:)}}方程 {it:#} 的均方根误差{p_end}
{synopt:{cmd:e(aic)}}赤池信息准则{p_end}
{synopt:{cmd:e(hqic)}}汉南-奎因信息准则{p_end}
{synopt:{cmd:e(sbic)}}施瓦茨-贝叶斯信息准则{p_end}
{synopt:{cmd:e(fpe)}}最终预测误差{p_end}
{synopt:{cmd:e(mlag)}}VAR 中的最高滞后{p_end}
{synopt:{cmd:e(tmin)}}样本中的第一个时间段{p_end}
{synopt:{cmd:e(tmax)}}最大时间{p_end}
{synopt:{cmd:e(detsig)}}{cmd:e(Sigma)} 的行列式{p_end}
{synopt:{cmd:e(detsig_ml)}}Sigma_ml 的行列式{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:var}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(endog)}}指定的内生变量的名称{p_end}
{synopt:{cmd:e(exog)}}外生变量及其滞后的名称，如果指定{p_end}
{synopt:{cmd:e(exogvars)}}指定的外生变量的名称{p_end}
{synopt:{cmd:e(eqnames)}}方程的名称{p_end}
{synopt:{cmd:e(lags)}}模型中的滞后{p_end}
{synopt:{cmd:e(exlags)}}在模型中指定的外生变量的滞后{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(nocons)}}{cmd:nocons}，如果指定了 {cmd:noconstant}{p_end}
{synopt:{cmd:e(constraints)}}{cmd:constraints}，如果指定了 {cmd:constraints()} {p_end}
{synopt:{cmd:e(cnslist_var)}}指定约束的列表{p_end}
{synopt:{cmd:e(small)}}{cmd:small}，如果指定{p_end}
{synopt:{cmd:e(lutstats)}}{cmd:lutstats}，如果指定{p_end}
{synopt:{cmd:e(timevar)}}在 {cmd:tsset} 中指定的时间变量{p_end}
{synopt:{cmd:e(tsfmt)}}当前时间变量的格式{p_end}
{synopt:{cmd:e(dfk)}}{cmd:dfk}，如果指定{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{opt margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{opt margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 规范{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(Sigma)}}Sigma 的矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(bf)}}约束的系数向量{p_end}
{synopt:{cmd:e(exlagsm)}}将滞后映射到外生变量的矩阵{p_end}
{synopt:{cmd:e(G)}}伽马矩阵；请参见 
      {mansection TS varMethodsandformulas:{it:方法和公式}}于
      {hi:[TS] var}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <var.sthlp>}