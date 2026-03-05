{smcl}
{* *! version 1.2.25  13dec2018}{...}
{viewerdialog xtgls "dialog xtgls"}{...}
{vieweralsosee "[XT] xtgls" "mansection XT xtgls"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtgls postestimation" "help xtgls postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] newey" "help newey_zh"}{...}
{vieweralsosee "[TS] prais" "help prais_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[XT] xtpcse" "help xtpcse_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtregar" "help xtregar_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtgls_zh##syntax"}{...}
{viewerjumpto "Menu" "xtgls_zh##menu"}{...}
{viewerjumpto "Description" "xtgls_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtgls_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtgls_zh##options"}{...}
{viewerjumpto "Examples" "xtgls_zh##examples"}{...}
{viewerjumpto "Stored results" "xtgls_zh##results"}{...}
{viewerjumpto "Reference" "xtgls_zh##reference"}
{help xtgls:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[XT] xtgls} {hline 2}}使用 GLS 拟合面板数据模型{p_end}
{p2col:}({mansection XT xtgls:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:xtgls} {depvar} [{indepvars}] {ifin}
[{it:{help xtgls##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:p:anels:(}{cmdab:i:id)}}使用 i.i.d. 误差结构{p_end}
{synopt :{cmdab:p:anels:(}{cmdab:h:eteroskedastic)}}使用异方差但不相关的误差结构{p_end}
{synopt :{cmdab:p:anels:(}{cmdab:c:orrelated)}}使用异方差和相关的误差结构{p_end}
{synopt :{cmdab:c:orr:(}{cmdab:i:ndependent)}}使用独立的自相关结构{p_end}
{synopt :{cmdab:c:orr:(}{cmdab:a:r1)}}使用 AR1 自相关结构{p_end}
{synopt :{cmdab:c:orr:(}{cmdab:p:sar1)}}使用面板特定的 AR1 自相关结构{p_end}
{synopt :{opt rho:type(calc)}}指定计算自相关参数的方法；见 {it:{help xtgls##options:选项}} 以获取详细信息；很少使用{p_end}
{synopt :{opt igls}}使用迭代 GLS 估计量而不是两步 GLS 估计量{p_end}
{synopt :{opt force}}即使观测在时间上不等距也要进行估计{p_end}

{syntab:标准误}
{synopt :{opt nmk}}标准误按 N-k 而非 N 进行标准化{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{it:{help xtgls##display_options:display_options}}}控制
包含帮助短描述 - 显示选项全部

{syntab:优化}
{synopt :{it:{help xtgls##optimize_options:optimize_options}}}控制优化过程；很少使用{p_end}

包含帮助短描述 - 系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定一个面板变量。对于除 {cmd:independent} 以外的相关结构，必须指定一个时间变量。如果指定了 {cmd:panels(correlated)}，还必须指定一个时间变量。使用 {help xtset_zh}。
{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
允许使用 {opt by} 和 {opt statsby}；见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt aweight}；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp xtgls_postestimation XT:xtgls postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 縱向/面板数据 > 同步相关 >}
    {bf:带相关干扰项的 GLS 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtgls} 使用可行的广义最小二乘法拟合面板数据线性模型。该命令允许在面板内部存在 AR(1) 自相关以及面板之间的横断面相关性和异方差性进行估计。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtglsQuickstart:快速入门}

        {mansection XT xtglsRemarksandexamples:备注和示例}

        {mansection XT xtglsMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt panels(pdist)} 指定面板间的误差结构。

{pmore}
{cmd:panels(iid)} 指定一个没有横断面相关性的同方差误差结构。这是默认值。

{pmore}
{cmd:panels(heteroskedastic)} 指定一个没有横断面相关性的异方差误差结构。

{pmore}
{cmd:panels(correlated)} 指定一个具有横断面相关性的异方差误差结构。如果指定了 {cmd:p(c)}，则必须同时指定一个时间变量（使用 {cmd:xtset}）。结果将基于奇异矩阵的广义逆，除非 T>=m（期间数大于或等于面板数）。

{phang}
{opt corr(corr)} 指定面板内假定的自相关。

{pmore}
{cmd:corr(independent)} 指定没有自相关。这是默认值。

{pmore}
{cmd:corr(ar1)} 指定面板内存在 AR(1) 自相关，且 AR(1) 过程的系数对所有面板是共同的。如果指定了 {cmd:c(ar1)}，也必须指定一个时间变量（使用 {cmd:xtset}）。

{pmore}
{cmd:corr(psar1)} 指定面板内存在 AR(1) 自相关，并且 AR(1) 过程的系数对每个面板都是特定的。{opt psar1} 表示面板特定的 AR(1)。如果指定了 {cmd:c(psar1)}，则必须同时指定时间变量；使用 {cmd:xtset}。

{phang}
{opt rhotype(calc)} 指定用于计算自相关参数的方法：

{p 12 24 2}{opt regress} {space 1} 使用滞后进行回归；默认{p_end}
{p 12 24 2}{opt dw} {space 6} 杜宾-沃森计算{p_end}
{p 12 24 2}{opt freg} {space 4} 使用前导进行回归{p_end}
{p 12 24 2}{opt nagar} {space 3} 纳加尔计算{p_end}
{p 12 24 2}{opt theil} {space 3} 泰尔计算{p_end}
{p 12 24 2}{opt tscorr} {space 2} 时间序列自相关计算

{pmore}
所有计算在渐近上是相等和一致的；这是一个很少使用的选项。

{phang}
{opt igls} 请求一个迭代的 GLS 估计量，而不是针对没有自相关模型的两步 GLS 估计量，或对自相关模型的三步 GLS 估计量。迭代 GLS 估计量趋于 {cmd:corr(independent)} 模型的 MLE，但不适用于其他 {opt corr()} 模型。

{phang}
{marker force}
{opt force} 指定强制估计，即使时间变量不等距。这仅与需要了解时间变量的相关结构有关。这些相关结构要求观测值在均匀间隔的情况下计算，以便基于滞后的计算对应于一个恒定的时间变化。如果您指定了一个时间变量，表明观测值不均匀间隔，则不会拟合（时间依赖的）模型。如果同时指定 {opt force}，将拟合模型，并假设基于时间变量排序的滞后是适当的。

{dlgtab:SE}

{phang}
{opt nmk} 指定标准误按 N-k 进行标准化，其中 k 是估计的参数数量，而不是 N，即观察数量。不同作者使用不同的标准化。
{help xtgls##G2018:Greene (2018, 313)} 提到自自由度修正是否提高小样本性质仍然是一个未解的问题。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

包含帮助 - 显示选项列表

{dlgtab:优化}

{phang}
{marker optimize_options}
{it:optimize_options} 控制迭代优化过程。这些选项很少使用。

{pmore}
{opt iter:ate(#)} 指定最大迭代次数。当迭代次数等于 # 时，优化停止并呈现当前结果，即使没有达到收敛。默认值是 {cmd:iterate(100)}。

{pmore}
{opt tol:erance(#)} 指定系数向量的容忍度。当从一次迭代到下一次迭代的系数向量的相对变化小于或等于 # 时，优化过程将停止。
{cmd:tolerance(1e-7)} 是默认值。

{pmore}
包含帮助 lognolog

{pstd}
以下选项适用于 {opt xtgls}，但未在对话框中显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse invest2}{p_end}
{phang2}{cmd:. xtset company time}{p_end}

{pstd}拟合具有面板间异方差性的面板数据模型{p_end}
{phang2}{cmd:. xtgls invest market stock, panels(hetero)}{p_end}

{pstd}面板间的相关性和异方差{p_end}
{phang2}{cmd:. xtgls invest market stock, panels(correlated)}

{pstd}面板间异方差和面板内自相关{p_end}
{phang2}{cmd:. xtgls invest market stock, panels(hetero) corr(ar1)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtgls} 在 {cmd:e()} 中存储如下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(N_ic)}}用于计算信息准则的观测数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(N_t)}}期间数{p_end}
{synopt:{cmd:e(N_miss)}}缺失观测数{p_end}
{synopt:{cmd:e(n_cf)}}估计系数数{p_end}
{synopt:{cmd:e(n_cv)}}估计协方差数{p_end}
{synopt:{cmd:e(n_cr)}}估计相关数{p_end}
{synopt:{cmd:e(df)}}自由度{p_end}
{synopt:{cmd:e(df_pear)}}皮尔逊卡方自由度{p_end}
{synopt:{cmd:e(df_ic)}}信息准则自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtgls}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示时间在组内的变量{p_end}
{synopt:{cmd:e(coefftype)}}估计方案{p_end}
{synopt:{cmd:e(corr)}}相关结构{p_end}
{synopt:{cmd:e(vt)}}面板选项{p_end}
{synopt:{cmd:e(rhotype)}}估计相关类型{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Sigma)}}Sigma 矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker G2018}{...}
{phang}
Greene, W. H. 2018.
{browse "http://www.stata.com/bookstore/ea.html":{it:计量经济分析}. 第 8 版.}
纽约：培生出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtgls.sthlp>}