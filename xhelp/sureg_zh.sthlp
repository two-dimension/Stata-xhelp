{smcl}
{* *! version 1.2.11  11dec2018}{...}
{viewerdialog sureg "dialog sureg"}{...}
{vieweralsosee "[R] sureg" "mansection R sureg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] sureg postestimation" "help sureg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfactor" "help dfactor_zh"}{...}
{findalias assemsureg}{...}
{vieweralsosee "[SEM] Intro 5" "mansection SEM Intro5"}{...}
{vieweralsosee "[MV] mvreg" "help mvreg_zh"}{...}
{vieweralsosee "[R] nlsur" "help nlsur_zh"}{...}
{vieweralsosee "[R] reg3" "help reg3_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "sureg_zh##syntax"}{...}
{viewerjumpto "Menu" "sureg_zh##menu"}{...}
{viewerjumpto "Description" "sureg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sureg_zh##linkspdf"}{...}
{viewerjumpto "Options" "sureg_zh##options"}{...}
{viewerjumpto "Examples" "sureg_zh##examples"}{...}
{viewerjumpto "Stored results" "sureg_zh##results"}{...}
{viewerjumpto "References" "sureg_zh##references"}
{help sureg:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] sureg} {hline 2}}泽尔纳的看似无关回归{p_end}
{p2col:}({mansection R sureg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 14 2}
{cmd:sureg}
{cmd:(}{depvar:1} {varlist:1}{cmd:)}
{cmd:(}{depvar:2} {varlist:2}{cmd:)}
{it:...}
{cmd:(}{depvar:N} {varlist:N}{cmd:)}
{ifin}
[{it:{help sureg##weight:权重}}]


{pstd}
完整语法

{p 8 14 2}
{cmd:sureg}
{cmd:(}[{it:eqname1}{cmd::}]
{depvar:1a} [{depvar:1b} ... {cmd:=}]
{varlist:1} [{cmd:,} {opt nocons:常数}]{cmd:)}{p_end}
{p 14 14 2}
{cmd:(}[{it:eqname2}{cmd::}] {depvar:2a} [{depvar:2b} ... {cmd:=}]
{varlist:2} [{cmd:,} {opt nocons:常数}]{cmd:)}{p_end}
{p 14}{it:...}{p_end}
{p 14 14 2}
{cmd:(}[{it:eqnameN}{cmd::}] {depvar:Na} [{depvar:Nb} ... {cmd:=}]
{varlist:N} [{cmd:,} {opt nocons:常数}]{cmd:)}
     {ifin} 
     [{it:{help sureg##weight:权重}}]
     [{cmd:,} {it:选项}]


{pstd}
显式方程命名 ({it:eqname}{cmd::}) 不能与方程规范中的多个因变量结合使用。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt i:sure}}迭代直到估计值收敛{p_end}
{synopt:{cmdab:c:onstraints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:自由度调整}
{synopt:{opt sm:all}}报告小样本统计量{p_end}
{synopt:{opt dfk}}使用小样本调整{p_end}
{synopt:{opt dfk2}}使用替代调整{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt cor:r}}执行Breusch-Pagan测试{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help sureg##display_options:显示选项}}}控制
包含帮助 短描述 - 显示选项

{syntab:优化}
{synopt :{it:{help sureg##optimization_options:优化选项}}}控制优化过程；很少使用{p_end}

{synopt :{opt noh:eader}}抑制系数表上方的表头{p_end}
{synopt :{opt not:able}}抑制系数表{p_end}
包含帮助 短描述 - 系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}{it:varlist1}, ..., {it:varlistN} 可以包含因子变量；
见 {help fvvarlist_zh}。你必须在所有包含因子变量的方程中
具有相同的因子变量水平。{p_end}
{p 4 6 2}
{it:depvar} 和 {it:varlists} 可以包含时间序列运算符；
见 {help tsvarlist_zh}。 {p_end}
{p 4 6 2}
{opt bootstrap}, {opt by}, {opt fp}, {opt jackknife}, {opt rolling}, 和
{opt statsby} 是允许的；见 {help prefix_zh}。 {p_end}
{p 4 6 2}在 {help bootstrap_zh} 前缀下不允许使用权重。{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight} 和 {opt fweight} 是允许的，见 {help weight_zh}。
{p_end}
{p 4 6 2}
{opt noheader}, {opt notable}, 和 {opt coeflegend} 不会出现在
对话框中。{p_end}
{p 4 6 2}
见 {manhelp sureg_postestimation R:sureg 后估计} 获取估计后的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 多方程模型 >}
       {bf:看似无关回归}


{marker description}{...}
{title:描述}

{pstd}
{opt sureg} 拟合看似无关的回归模型
({help sureg##Z1962:泽尔纳 1962};
{help sureg##ZH1962:泽尔纳和黄 1962};
{help sureg##Z1963:泽尔纳 1963）。缩写 SURE 和 SUR 通常
用于该估计量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R suregQuickstart:快速入门}

        {mansection R suregRemarksandexamples:备注和示例}

        {mansection R suregMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt isure} 指定 {opt sureg} 迭代估计的
干扰协方差矩阵和参数估计，直到参数
估计收敛。在看似无关回归中，此迭代
收敛于最大似然结果。如果未指定此选项，
{opt sureg} 将产生两步估计。

{phang}
{opt constraints(constraints)}；见
{helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:自由度调整}

{phang}
{opt small} 指定计算小样本统计量。
它将测试统计量从卡方和 z 统计量切换到 F
统计量和 t 统计量。尽管每个方程的标准误差
是使用该方程的自由度计算的，但 t 统计量的自由度
都取为第一个方程的自由度。

{phang}
{opt dfk} 指定在计算方程残差的协方差矩阵时使用替代除数。作为一种渐近理论合理的
估计量，{opt sureg} 默认使用样本观察数 (n)
作为除数。当设置 {opt dfk} 选项时，进行小样本调整，
除数取为 sqrt((n - k_i) * (n - k_j))，其中 k_i 和
k_j 分别是方程 i 和 j 中的参数数量。

{phang}
{opt dfk2} 指定在计算方程残差的协方差矩阵时使用替代除数。当设置 {opt dfk2} 选项时，
除数取为来自各个方程的残差自由度的平均值。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt corr} 显示方程之间残差的相关矩阵，并进行 Breusch-Pagan 测试以检验独立方程；即，
干扰协方差矩阵是对角的。

{phang}
{opt nocnsreport}；见 
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 显示选项列表

{marker optimization_options}{...}
{dlgtab:优化}

{phang}
{it:optimization_options} 控制在指定 {opt isure} 时最小化
平方和的迭代过程。这些选项很少使用。

{phang2}
{opt iter:ate(#)} 指定最大迭代次数。当迭代次数等于 {it:#} 时，
优化器停止并呈现当前结果，即使收敛容忍度未达到。
{opt iterate(#)} 的默认值为 {helpb set maxiter} 的当前值，
如果未更改，则为 {cmd:iterate(16000)}。

{phang2}
{opt tr:ace} 将当前参数向量的显示添加到迭代日志中。

{phang2}
包含帮助 日志无记录

{phang2}
{opt tol:erance(#)} 指定系数向量的容忍度。当从一次迭代到下一次
的系数向量的相对变化小于或等于 {it:#} 时，优化过程将停止。
{cmd:tolerance(1e-6)} 是默认值。

{pstd}
以下选项适用于 {opt sureg}，但不在
对话框中显示：

{phang}
{opt noheader} 抑制显示报告 F 统计量、
R 平方和均方根误差的表头，位于系数表上方。

{phang}
{opt notable} 抑制显示系数表。

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合看似无关回归模型{p_end}
{phang2}{cmd:. sureg (price foreign weight length) (mpg foreign weight) (displ foreign weight)}

{pstd}使用简写语法{p_end}
{phang2}{cmd:. sureg (price foreign weight length) (mpg displ = foreign weight)}

{pstd}使用全局宏{p_end}
{p 8 12 2}{cmd:. global price (price foreign weight length)}{p_end}
{p 8 12 2}{cmd:. global mpg   (mpg foreign weight)}{p_end}
{p 8 12 2}{cmd:. global displ (displ foreign weight)}{p_end}
{p 8 12 2}{cmd:. sureg $price $mpg $displ}

{pstd}带约束{p_end}
{phang2}{cmd:. constraint 1 [price]foreign = [mpg]foreign}{p_end}
{phang2}{cmd:. constraint 2 [price]foreign = [displacement]foreign}{p_end}
{phang2}{cmd:. sureg (price foreign length) (mpg displacement = foreign weight), const(1 2)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:sureg} 将以下内容存储在 {cmd:e()} 中：

{synoptset 18 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(mss_}{it:#}{cmd:)}}方程 {it:#} 的模型平方和{p_end}
{synopt:{cmd:e(df_m}{it:#}{cmd:)}}方程 {it:#} 的模型自由度{p_end}
{synopt:{cmd:e(rss_}{it:#}{cmd:)}}方程 {it:#} 的残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2_}{it:#}{cmd:)}}方程 {it:#} 的 R 平方{p_end}
{synopt:{cmd:e(F_}{it:#}{cmd:)}}方程 {it:#} 的 F 统计量 ({cmd:small} 仅) {p_end}
{synopt:{cmd:e(rmse_}{it:#}{cmd:)}}方程 {it:#} 的均方根误差{p_end}
{synopt:{cmd:e(dfk2_adj)}}在指定 {cmd:dfk2} 时使用的除数{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2_}{it:#}{cmd:)}}方程 {it:#} 的卡方{p_end}
{synopt:{cmd:e(p_}{it:#}{cmd:)}}方程 {it:#} 的 p 值{p_end}
{synopt:{cmd:e(cons_}{it:#}{cmd:)}}如果方程 {it:#} 有常数，{cmd:1}，
        否则为 {cmd:0}{p_end}
{synopt:{cmd:e(chi2_bp)}}Breusch-Pagan 卡方{p_end}
{synopt:{cmd:e(df_bp)}}Breusch-Pagan 卡方的自由度
	测试{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:sureg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(method)}}{cmd:sure} 或 {cmd:isure}{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(exog)}}外生变量名称{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(corr)}}相关结构{p_end}
{synopt:{cmd:e(small)}}{cmd:small}，若指定{p_end}
{synopt:{cmd:e(dfk)}}{cmd:dfk} 或 {cmd:dfk2}，若指定{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(Sigma)}}Sigma hat，残差的协方差矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker Z1962}{...}
{phang}
Zellner, A. 1962. 一种有效的估计看似无关回归的方法及聚合偏差的检验。
{it:美国统计协会杂志} 57: 348-368.

{marker Z1963}{...}
{phang}
------. 1963. 看似无关回归方程的估计量: 一些
精确的有限样本结果。
{it:美国统计协会杂志} 58: 977-992.

{marker ZH1962}{...}
{phang}
Zellner, A., 和 D. S. Huang. 1962.
看似无关回归方程的有效估计量的进一步特性。
{it:国际经济评论} 3: 300-313.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sureg.sthlp>}