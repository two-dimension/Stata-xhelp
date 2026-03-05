{smcl}
{* *! version 1.1.24  11dec2018}{...}
{viewerdialog rreg "dialog rreg"}{...}
{vieweralsosee "[R] rreg" "mansection R rreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] rreg postestimation" "help rreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] qreg" "help qreg_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "rreg_zh##syntax"}{...}
{viewerjumpto "Menu" "rreg_zh##menu"}{...}
{viewerjumpto "Description" "rreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "rreg_zh##options"}{...}
{viewerjumpto "Examples" "rreg_zh##examples"}{...}
{viewerjumpto "Stored results" "rreg_zh##results"}
{help rreg:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] rreg} {hline 2}}稳健回归{p_end}
{p2col:}({mansection R rreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:rreg} {depvar} [{indepvars}] {ifin} 
[{cmd:,} {it:options}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:模型}
{synopt :{opt tu:ne(#)}}使用 {it:#} 作为双权重调节常数；默认值为
{cmd:tune(7)}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}
{p_end}
{synopt :{opth g:enwt(newvar)}}创建包含分配给每个观察的权重的新变量 {it:newvar}{p_end}
{synopt :{it:{help rreg##display_options:display_options}}}控制  
包含帮助短描述 - 显示选项

{syntab:优化}
{synopt :{it:{help rreg##optimize_options:optimization_options}}}控制优化过程；很少使用{p_end}
{synopt :{opt g:raph}}在收敛过程中图示化权重{p_end}

包含 帮助 矩阵变量列表
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；见 
{help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:by}, {opt mfp}, {cmd:mi estimate}, {cmd:rolling},
和 {cmd:statsby} 被允许；见 {help prefix_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用的特性，请参见 {manhelp rreg_postestimation R:rreg postestimation}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 其他 > 稳健回归}


{marker description}{...}
{title:描述}

{pstd}
{opt rreg} 对 {depvar} 和 {indepvars} 进行一种版本的稳健回归。

{pstd}
另见 {it:{mansection R regressRemarksandexamplesRobuststandarderrors:稳健标准误差}}
在 {bf:[R] regress} 中的标准回归与稳健方差估计，以及 {manlink R qreg} 中的分位数（包括中值或最小绝对残差）回归。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R rregQuickstart:快速开始}

        {mansection R rregRemarksandexamples:备注和示例}

        {mansection R rregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt tune(#)} 是双权重调节常数。默认值为 7，意味着
中位数残差的绝对偏差的中位数的七倍；见 
{mansection R rregMethodsandformulas:{it:方法和公式}} 
在 {bf:[R] rreg} 中。较低的调节常数会迅速减轻离群值的影响，但可能导致不稳定的估计（不推荐小于 6）。较高的调节常数则会产生较温和的减轻效果。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opth genwt(newvar)} 创建新变量 {it:newvar}，其中包含分配给每个观察的权重。

包含帮助 显示选项列表

{marker optimize_options}{...}
{dlgtab:优化}

{phang}
{it:优化选项}: 
{opt iter:ate(#)}, {opt tol:erance(#)}, [{cmd:no}]{cmd:log}。
{opt iterate()} 指定最大迭代次数；当权重的最大变化低于 {opt tolerance()} 时停止迭代；{opt log}/{opt nolog} 指定是否显示迭代日志
（见 {cmd:set iterlog} 在 {manhelpi set_iter R:set iter} 中）。
这些选项很少使用。

{phang}
{opt graph} 允许您在图形上观察迭代技术的收敛。最近一次估计轮次获得的权重将与前一次获得的权重进行图示展示。

{pstd}
以下选项可与 {opt rreg} 一起使用，但不会在对话框中显示：

{phang}
{opt coeflegend}；见 
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}稳健回归{p_end}
{phang2}{cmd:. rreg mpg foreign#c.weight foreign}

{pstd}与上述相同，但将估计的权重保存在 {cmd:genwt(w)}{p_end}
{phang2}{cmd:. rreg mpg foreign#c.weight foreign, genwt(w)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:rreg} 将以下内容存储在 {cmd:e()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的 R 平方{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:rreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(genwt)}}包含权重的变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(model)}}{cmd:ols}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rreg.sthlp>}