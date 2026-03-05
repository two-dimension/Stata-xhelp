{smcl}
{* *! version 1.3.7  14may2018}{...}
{viewerdialog mvreg "dialog mvreg"}{...}
{vieweralsosee "[MV] mvreg" "mansection MV mvreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mvreg postestimation" "help mvreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: mvreg" "help bayes mvreg"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[SEM] Intro 5" "mansection SEM Intro5"}{...}
{vieweralsosee "[R] nlsur" "help nlsur_zh"}{...}
{vieweralsosee "[R] reg3" "help reg3_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] regress postestimation" "help regress_postestimation_zh"}{...}
{vieweralsosee "[R] sureg" "help sureg_zh"}{...}
{viewerjumpto "Syntax" "mvreg_zh##syntax"}{...}
{viewerjumpto "Menu" "mvreg_zh##menu"}{...}
{viewerjumpto "Description" "mvreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mvreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "mvreg_zh##options"}{...}
{viewerjumpto "Examples" "mvreg_zh##examples"}{...}
{viewerjumpto "Stored results" "mvreg_zh##results"}
{help mvreg:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[MV] mvreg} {hline 2}}多元回归{p_end}
{p2col:}({mansection MV mvreg:查看完整PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:mvreg} {it:{help varlist_zh:depvars}} {cmd:=} {indepvars} {ifin}
[{it:{help mvreg##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 18 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt cor:r}}报告相关矩阵{p_end}
{synopt :{it:{help mvreg##display_options:display_options}}}控制
包含帮助简短描述-显示选项全部

{synopt:{opt noh:eader}}抑制系数表上方的表头{p_end}
{synopt:{opt not:able}}抑制系数表{p_end}
包含帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}{it:depvars} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt jackknife}、{opt mi estimate}、{opt rolling} 和 {opt statsby} 是允许的；见 {help prefix_zh}。
有关更多详细信息，参见 {manhelp bayes_mvreg BAYES:bayes: mvreg}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用。{p_end}
{p 4 6 2}{cmd:aweight} 与 {help jackknife_zh} 前缀不允许使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight} 和 {opt fweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}{opt noheader}、{opt notable} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用特性的请查看 {manhelp mvreg_postestimation MV:mvreg postestimation}.{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > MANOVA, 多元回归,}
     {bf:及相关 > 多元回归}

{marker description}{...}
{title:描述}

{pstd}
{cmd:mvreg} 为多个具有相同自变量的因变量拟合多元回归模型。  

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV mvregQuickstart:快速入门}

        {mansection MV mvregRemarksandexamples:备注和示例}

        {mansection MV mvregMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制模型中的常数项（截距）。

{dlgtab:报告}

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。 默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{phang}
{opt corr} 显示方程之间残差的相关矩阵。

包含帮助 displayopts_list

{pstd}
以下选项可用于 {cmd:mvreg}，但在对话框中未显示：

{phang}
{opt noheader} 抑制显示报告F统计量、R平方和均方根误差的表。

{phang}
{opt notable} 抑制系数表的显示。

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合多元回归模型{p_end}
{phang2}{cmd:. mvreg headroom trunk turn = price mpg displ gear_ratio length weight}{p_end}

{pstd}重放结果，抑制表头和系数表，但报告相关矩阵{p_end}
{phang2}{cmd:. mvreg, notable noheader corr}{p_end}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mvreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}每个方程中的参数数{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(df_r)}} 残差自由度{p_end}
{synopt:{cmd:e(chi2)}} Breusch-Pagan 卡方（仅 {cmd:corr}）{p_end}
{synopt:{cmd:e(df_chi2)}} Breusch-Pagan 卡方的自由度（仅 {cmd:corr}）{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mvreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入时的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(eqnames)}}方程的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(r2)}}每个方程的R平方{p_end}
{synopt:{cmd:e(rmse)}}每个方程的RMSE{p_end}
{synopt:{cmd:e(F)}}每个方程的F统计量{p_end}
{synopt:{cmd:e(p_F)}}每个方程F检验的p值{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {opt predict()} 指定{p_end}
{synopt:{cmd:e(asbalanced)}} factor variables {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}} factor variables {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Sigma)}}Sigma^帽矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mvreg.sthlp>}