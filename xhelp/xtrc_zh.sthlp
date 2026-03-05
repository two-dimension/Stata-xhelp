{smcl}
{* *! version 1.2.4  14may2018}{...}
{viewerdialog xtrc "dialog xtrc"}{...}
{vieweralsosee "[XT] xtrc" "mansection XT xtrc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtrc postestimation" "help xtrc postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtrc_zh##syntax"}{...}
{viewerjumpto "Menu" "xtrc_zh##menu"}{...}
{viewerjumpto "Description" "xtrc_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtrc_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtrc_zh##options"}{...}
{viewerjumpto "Examples" "xtrc_zh##examples"}{...}
{viewerjumpto "Stored results" "xtrc_zh##results"}{...}
{viewerjumpto "Reference" "xtrc_zh##reference"}
{help xtrc:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[XT] xtrc} {hline 2}}随机系数回归{p_end}
{p2col:}({mansection XT xtrc:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:xtrc} {depvar} {indepvars} {ifin} [{cmd:,} {it:options}]

{synoptset 19 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数限制为 1{p_end}

{syntab:标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional},
  {opt boot:strap}，或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt beta:s}}显示组特定的最佳线性预测{p_end}
{synopt :{it:{help xtrc##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定一个面板变量；使用 {help xtset_zh}.{p_end}
INCLUDE help fvvarlist
{p 4 6 2}
{opt by}、{opt mi estimate} 和 {opt statsby} 是允许的；见 {help prefix_zh}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
查看 {manhelp xtrc_postestimation XT:xtrc postestimation} 以获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 随机系数回归（通过 GLS）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtrc} 拟合 {help xtrc##S1970:Swamy (1970)} 随机系数线性回归模型，该模型不对面板施加常数参数的假设。默认情况下报告平均系数估计，但可以请求按面板特定的系数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtrcQuickstart:快速入门}

        {mansection XT xtrcRemarksandexamples:备注和示例}

        {mansection XT xtrcMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt noconstant}，{opth offset(varname)}；见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括基于渐进理论的类型（{cmd:conventional}）以及使用自助法或留一法的方法（{cmd:bootstrap}，
{cmd:jackknife}）；见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
{cmd:vce(conventional)}，为默认值，使用常规推导的方差估计器进行广义最小二乘回归。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt betas} 请求同时显示组特定的最佳线性预测。

INCLUDE help displayopts_list

{pstd}
以下选项适用于 {opt xtrc}，但未在对话框中显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse invest2}{p_end}

{pstd}拟合随机系数线性回归模型{p_end}
{phang2}{cmd:. xtrc invest market stock}{p_end}

{pstd}重播结果并显示组特定的最佳线性预测{p_end}
{phang2}{cmd:. xtrc, beta}

{pstd}重播结果，显示系数、标准误和置信区间至4位小数{p_end}
{phang2}{cmd:. xtrc, cformat(%8.4f)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtrc} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt:{cmd:e(df_chi2c)}}比较卡方测试的自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtrc}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方测试类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Sigma)}}Sigma 帽矩阵{p_end}
{synopt:{cmd:e(beta_ps)}}最佳线性预测的矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_ps)}}最佳线性预测的方差矩阵；第 {it:i} 行包含组 {it:i} 预测的方差矩阵的向量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker S1970}{...}
{phang}
Swamy, P. A. V. B. 1970.
随机系数回归模型中的有效推断。
{it:Econometrica} 38: 311-323.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtrc.sthlp>}