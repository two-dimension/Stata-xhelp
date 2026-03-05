{smcl}
{* *! version 1.2.6  19sep2018}{...}
{viewerdialog xtregar "dialog xtregar"}{...}
{vieweralsosee "[XT] xtregar" "mansection XT xtregar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtregar postestimation" "help xtregar postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] newey" "help newey_zh"}{...}
{vieweralsosee "[TS] prais" "help prais_zh"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtgls" "help xtgls_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtregar_zh##syntax"}{...}
{viewerjumpto "Menu" "xtregar_zh##menu"}{...}
{viewerjumpto "Description" "xtregar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtregar_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtregar_zh##options"}{...}
{viewerjumpto "Examples" "xtregar_zh##examples"}{...}
{viewerjumpto "Stored results" "xtregar_zh##results"}{...}
{viewerjumpto "References" "xtregar_zh##references"}
{help xtregar:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[XT] xtregar} {hline 2}}具有AR(1)干扰的固定效应和随机效应线性模型{p_end}
{p2col:}({mansection XT xtregar:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
广义最小二乘法随机效应（RE）模型

{p 8 16 2}
{cmd:xtregar} {depvar} [{indepvars}] {ifin} [{cmd:, re} {it:options}]


{phang}
固定效应（FE）模型

{p 8 16 2}
{cmd:xtregar} {depvar} [{indepvars}] {ifin}
[{it:{help xtregar##weight:权重}}]
{cmd:, fe} [{it:options}]


{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt re}}使用随机效应估计器；默认设置{p_end}
{synopt :{opt fe}}使用固定效应估计器{p_end}
{synopt :{opth rhot:ype(xtregar##rhomethod:rhomethod)}}指定计算自相关的方法；很少使用{p_end}
{synopt :{opt rhof(#)}}使用#作为rho值，并且不估计rho{p_end}
{synopt :{opt two:step}}执行相关的两步估计{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为{cmd:level(95)}{p_end}
{synopt :{opt lbi}}执行Baltagi-Wu LBI测试{p_end}
{synopt :{it:{help xtregar##display_options:显示选项}}}控制
包括帮助简短描述-显示所有选项

包括帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定面板变量和时间变量；使用{help xtset_zh}.{p_end}
包括帮助 fvvarlist
{p 4 6 2}
{it:depvar}和{it:indepvars}可以包含时间序列算子；参见{help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt by}和{opt statsby}是允许的；见{help prefix_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}和{opt aweight}在使用{cmd:rhotype(regress)}或{cmd:rhotype(freg)}的固定效应模型中被允许，或者与固定的rho一起使用；参见{help weight_zh}。权重必须在面板内保持常数。{p_end}
{p 4 6 2}
{opt coeflegend}不会出现在对话框中。{p_end}
{p 4 6 2}
请参见{manhelp xtregar_postestimation XT:xtregar postestimation}以获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 线性模型 >}
     {bf:具有AR(1)干扰的线性回归（FE，RE）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtregar} 在干扰项为一阶自回归时拟合横截面时间序列回归模型。{cmd:xtregar} 为固定效应模型提供了一个内部估计器，并为随机效应模型提供了一个广义最小二乘法估计器。{cmd:xtregar} 可以容纳不均衡的面板，其观察值在时间上是不均匀分布的。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtregarQuickstart:快速开始}

        {mansection XT xtregarRemarksandexamples:备注和示例}

        {mansection XT xtregarMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt re} 请求随机效应模型的广义最小二乘法估计器，这是默认值。

{phang}
{opt fe} 请求固定效应模型的内部估计器。

{marker rhomethod}{...}
{phang}
{opt rhotype(rhomethod)} 允许用户指定以下任何rho的估计器：

{p 12 25 2}{cmd:dw} {space 7} rho_dw = 1 - d/2, 其中 d 是Durbin-Watson d
		统计量{p_end}
{p 12 25 2}{cmdab:reg:ress} {space 2} rho_reg = B来自残差回归
		e_t = B*e_(t-1){p_end}
{p 12 25 2}{cmd:freg} {space 5} rho_freg = B来自残差回归
		e_t = B*e_(t+1){p_end}
{p 12 25 2}{cmdab:tsc:orr} {space 3} rho_tscorr = e'e_(t-1)/e'e, 其中 e 是
		残差向量，e_(t-1) 是滞后
		残差向量{p_end}
{p 12 25 2}{cmdab:th:eil} {space 4} rho_theil = rho_tscorr * (N-k)/N{p_end}
{p 12 25 2}{cmdab:nag:ar} {space 4} rho_nagar = (rho_dw * N*N+k*k)/(N*N-k*k){p_end}
{p 12 25 2}{cmdab:one:step} {space 2} rho_onestep = (n/m_c)*rho_tscorr， 其中 n
		是观察数，m_c 是
		连续的残差对数

{pmore}
{opt dw} 是默认方法。除了{opt onestep}外，这些方法的详细信息见{manlink TS prais}。{opt prais}处理不均匀分布的数据。{cmd:onestep} 是{help xtregar##BW1999: Baltagi 和 Wu（1999）}提出的一步法。该方法的更多详细信息可在{it:{mansection XT xtregarMethodsandformulas:方法和公式}}中找到{bf:[XT] xtregar}。

{phang}
{opt rhof(#)} 指定使用给定数字作为rho，并且不对rho进行估计。

{phang}
{opt twostep} 请求使用{it:rhomethod}估计器的两步实现。除非指定rho的固定值（使用{opt rhof()}选项），否则rho通过在去平均的数据上运行{cmd:prais}进行估计。当指定{opt twostep}时，{cmd:prais}将在通过rho转化方程后在第一次迭代停止——即两步有效估计器。尽管通常会迭代这些估计器以收敛，但它们在每一步都是有效的。当未指定{opt twostep}时，FGLS过程按照{mansection TS praisMethodsandformulastwostep:{it:方法和公式}}中的描述迭代收敛。

{dlgtab:报告}

{phang}
{opt level(#)}；见{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt lbi} 请求计算和报告Baltagi-Wu（{help xtregar##BW1999:1999}）局部最佳不变（LBI）检验统计量rho = 0以及{help xtregar##BFN1982:Bhargava, Franzini 和 Narendranathan（1982）}的修改版 Durbin-Watson 统计量。默认情况下不报告。两种统计量均不报告p值。虽然{help xtregar##BFN1982:Bhargava, Franzini 和 Narendranathan（1982）}为其统计量发布了临界值，但目前没有Baltagi-Wu LBI的表格可用。{help xtregar##BW1999:Baltagi 和 Wu（1999）}推导出了其统计量的归一化版本，但此统计量不能在中等规模的数据集上计算。您还可以在回复时指定这些选项。

包括帮助 displayopts_list

{pstd}
以下选项可用于{opt xtregar}，但在对话框中不显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse grunfeld}{p_end}
{phang2}{cmd:. xtset company time}{p_end}

{pstd}随机效应模型{p_end}
{phang2}{cmd:. xtregar invest mvalue kstock}{p_end}

{pstd}固定效应模型{p_end}
{phang2}{cmd:. xtregar invest mvalue kstock, fe}{p_end}

{pstd}随机效应模型并报告Baltagi-Wu LBI测试{p_end}
{phang2}{cmd:. xtregar invest mvalue kstock, re lbi}

{pstd}固定效应模型并执行相关的两步估计{p_end}
{phang2}{cmd:. xtregar invest mvalue kstock, fe twostep}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtregar, re} 在{cmd:e()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(d1)}}Bhargava 等人的 Durbin-Watson{p_end}
{synopt:{cmd:e(LBI)}}Baltagi-Wu LBI 统计量{p_end}
{synopt:{cmd:e(N_LBI)}}在{cmd:e(LBI)}中使用的观察数{p_end}
{synopt:{cmd:e(Tcon)}}{cmd:1} 如果T是常数{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(sigma_e)}}z_it的标准差{p_end}
{synopt:{cmd:e(r2_w)}}模型内部R平方{p_end}
{synopt:{cmd:e(r2_o)}}整体模型R平方{p_end}
{synopt:{cmd:e(r2_b)}}模型间R平方{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(rho_ar)}}自相关系数{p_end}
{synopt:{cmd:e(rho_fov)}}u_i方差的份额{p_end}
{synopt:{cmd:e(thta_min)}}最小theta{p_end}
{synopt:{cmd:e(thta_5)}}theta，第5百分位{p_end}
{synopt:{cmd:e(thta_50)}}theta，第50百分位{p_end}
{synopt:{cmd:e(thta_95)}}theta，第95百分位{p_end}
{synopt:{cmd:e(thta_max)}}最大theta{p_end}
{synopt:{cmd:e(Tbar)}}组大小的调和平均数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtregar}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示时间的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:re}{p_end}
{synopt:{cmd:e(rhotype)}}rho_ar的估计方法{p_end}
{synopt:{cmd:e(dw)}}{cmd:lbi}，如果指定了{cmd:lbi}{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验类型{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现{cmd:predict}的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins}允许进行预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins}不允许进行预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量{cmd:fvset}为{cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量{cmd:fvset}为{cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}随机效应模型的方差协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker BW1999}{...}
{phang}
Baltagi, B. H., 和 P. X. Wu. 1999. 不均匀间隔面板数据回归
与AR(1)干扰。{it:经济理论} 15: 814-823。

{marker BFN1982}{...}
{phang}
Bhargava, A.，L. Franzini 和 W. Narendranathan. 1982. 序列相关
和固定效应模型。{it:经济研究评论} 49: 533-549。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtregar.sthlp>}