{smcl}
{* *! version 1.1.23  14may2018}{...}
{viewerdialog vwls "dialog vwls"}{...}
{vieweralsosee "[R] vwls" "mansection R vwls"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] vwls postestimation" "help vwls postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "语法" "vwls_zh##syntax"}{...}
{viewerjumpto "菜单" "vwls_zh##menu"}{...}
{viewerjumpto "描述" "vwls_zh##description"}{...}
{viewerjumpto "PDF文档链接" "vwls_zh##linkspdf"}{...}
{viewerjumpto "选项" "vwls_zh##options"}{...}
{viewerjumpto "示例" "vwls_zh##examples"}{...}
{viewerjumpto "存储结果" "vwls_zh##results"}
{help vwls:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] vwls} {hline 2}}加权最小二乘法{p_end}
{p2col:}({mansection R vwls:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:vwls} {depvar} {indepvars} {ifin} 
[{it:{help vwls##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 17 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth sd(varname)}}包含条件标准差估计的变量{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信任水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help vwls##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
INCLUDE help fvvarlist
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling}, 
和 {cmd:statsby} 是允许的；参见 {help prefix_zh}.{p_end}
{p 4 6 2}权重不能与 {help bootstrap_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight} 是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}参见 {manhelp vwls_postestimation R:vwls 后估计} 以获取估计后的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 其他 >}
         {bf:加权最小二乘法}


{marker description}{...}
{title:描述}

{pstd}
{cmd:vwls} 使用加权最小二乘法估计线性回归。它与普通最小二乘法（OLS）回归的不同之处在于，它不假设方差同质性，而要求在回归之前先估计 {depvar} 的条件方差。 估计的方差不必在观察值之间保持不变。 {cmd:vwls} 在计算系数的标准误差时，将估计的方差视为真实方差。

{pstd}
您必须通过使用 {opth sd(varname)} 选项向 {cmd:vwls} 提供 {it:depvar} 的条件标准差估计，或者必须有分组数据，并由 {indepvars} 变量定义组。在后者情况下，{cmd:vwls} 将所有 {it:indepvars} 视为分类变量，分别计算每个子组的 {it:depvar} 的均值和标准偏差，并计算子组均值关于 {it:indepvars} 的回归。

{pstd}
使用具有分析权重的 {cmd:regress} 可以生成另一种 "加权最小二乘法"；有关差异的解释，请参见
{mansection R vwlsRemarksandexamples:{it:备注和示例}} 在 {bf:[R] vwls} 中。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R vwlsQuickstart:快速入门}

        {mansection R vwlsRemarksandexamples:备注和示例}

        {mansection R vwlsMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 参见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opth sd(varname)} 是 {depvar} 的条件标准差的估计（即，它可以在观察之间变化）。 {it:varname} 的所有值必须 > 0。 如果您指定了 {opt sd()}，则无法使用 {cmd:fweight}。

{pmore}
如果未给出 {opt sd()}，数据将根据 {indepvars} 分组。 在这里 {it:indepvars} 被视为分类变量，计算每个子组的 {it:depvar} 的均值和标准偏差并用于回归。 任何标准偏差为零的子组将被丢弃。

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_list

{pstd}
以下选项在 {opt vwls} 中可用，但未显示在对话框中：

{phang}
{opt coeflegend}; 参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bp}{p_end}

{pstd}拟合加权最小二乘线性回归{p_end}
{phang2}{cmd:. vwls bp gender race}

{pstd}回放结果，显示系数、标准误差和 CI，保留 4 位小数{p_end}
{phang2}{cmd:. vwls, cformat(%8.4f)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:vwls} 在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(chi2)}}模型的卡方值{p_end}
{synopt:{cmd:e(df_gf)}}拟合优度的自由度{p_end}
{synopt:{cmd:e(chi2_gf)}}拟合优度的卡方值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:vwls}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vwls.sthlp>}