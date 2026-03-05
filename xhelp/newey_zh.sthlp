{smcl}
{* *! version 1.1.19  14may2018}{...}
{viewerdialog newey "dialog newey"}{...}
{vieweralsosee "[TS] newey" "mansection TS newey"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] newey postestimation" "help newey postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "Syntax" "newey_zh##syntax"}{...}
{viewerjumpto "Menu" "newey_zh##menu"}{...}
{viewerjumpto "Description" "newey_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "newey_zh##linkspdf"}{...}
{viewerjumpto "Options" "newey_zh##options"}{...}
{viewerjumpto "Examples" "newey_zh##examples"}{...}
{viewerjumpto "Stored results" "newey_zh##results"}
{help newey:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[TS] newey} {hline 2}}带有 Newey-West 标准误的回归
{p_end}
{p2col:}({mansection TS newey:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:newey}
{depvar}
[{indepvars}]
{ifin}
[{it:{help newey##weight:权重}}]
{cmd:,}
{opt lag(#)}
[{it:选项}]

{synoptset 18 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opt lag(#)}}设置自相关的最大滞后阶数{p_end}
{synopt:{opt nocons:常数项}}抑制常数项{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help newey##display_options:显示选项}}}控制
包含帮助短描述-显示选项

包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt lag(#)} 是必需的。
{p_end}
{p 4 6 2}
在使用 {opt newey} 之前，您必须 {cmd:tsset} 数据；请参阅
{help tsset_zh:[TS] tsset}.{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；请参阅
{help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt by}、{opt rolling} 和 {opt statsby} 是允许的；请参阅
{help prefix_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}{opt aweight} 是允许的；请参阅 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用特性的详细信息，请参阅 {manhelp newey_postestimation TS:newey postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 带有 Newey-West 标准误的回归}


{marker description}{...}
{title:描述}

{pstd}
{opt newey} 为通过 OLS 回归估计的系数生成 Newey-West 标准误。假设误差结构是异方差的，并可能自相关至某个滞后。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS neweyQuickstart:快速入门}

        {mansection TS neweyRemarksandexamples:备注和示例}

        {mansection TS neweyMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt lag(#)} 指定自相关结构中考虑的最大滞后。如果您指定 {cmd:lag(0)}，则输出与 {cmd:regress}{cmd:, vce(robust)} 相同。 {opt lag()} 是必需的。

{phang}
{opt noconstant}；请参见
{bf:{help estimation options##noconstant:[R] 估计选项}}。

{dlgtab:报告}

{phang}
{opt level(#)}；见 
{bf:{help estimation options##level():[R] 估计选项}}。

包含帮助 displayopts_list

{pstd}
以下选项适用于 {opt newey}，但未在对话框中显示：

{phang}
{opt coeflegend}；见
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse idle2}{p_end}
{phang2}{cmd:. tsset time}

{pstd}带有最大滞后阶数为 3 的 Newey-West 标准误的回归{p_end}
{phang2}{cmd:. newey usr idle, lag(3)}

{pstd}回放结果，置信区间为 99%{p_end}
{phang2}{cmd:. newey, level(99)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:newey} 将以下内容存储在 {cmd:e()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(F)}}F统计量{p_end}
{synopt:{cmd:e(lag)}}最大滞后{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏变量}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:newey}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
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
{center:翻译自Stata官方帮助文档 <newey.sthlp>}