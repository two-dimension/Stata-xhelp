{smcl}
{* *! version 1.2.6  30may2019}{...}
{viewerdialog eivreg "dialog eivreg"}{...}
{vieweralsosee "[R] eivreg" "mansection R eivreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] eivreg postestimation" "help eivreg_postestimation_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias assemrel}{...}
{viewerjumpto "Syntax" "eivreg_zh##syntax"}{...}
{viewerjumpto "Menu" "eivreg_zh##menu"}{...}
{viewerjumpto "Description" "eivreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "eivreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "eivreg_zh##options"}{...}
{viewerjumpto "Example" "eivreg_zh##example"}{...}
{viewerjumpto "Stored results" "eivreg_zh##results"}
{help eivreg:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] eivreg} {hline 2}}误差变量回归{p_end}
{p2col:}({mansection R eivreg:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:eivreg}
{depvar}
[{indepvars}]
{ifin}
[{it:{help eivreg##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{cmdab:r:eliab(}{it:{help varlist_zh:indepvar}} {it:#} [{it:indepvar # }[...]]{cmd:)}}{p_end}
{synopt: }指定每个带误差的 {it:indepvar} 的测量可靠性{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{it:{help eivreg##display_options:显示选项}}}控制
包含帮助短描述-所有显示选项

包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}
{opt bootstrap}, {opt by}, {opt jackknife}, {opt rolling}, 和 {opt statsby}
是允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许一起使用.{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight}与 {help jackknife_zh} 前缀不允许一起使用。
{p_end}
{p 4 6 2}
{cmd:aweight} 和 {cmd:fweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 在对话框中不出现.{p_end}
{p 4 6 2}
见 {manhelp eivreg_postestimation R:eivreg postestimation} 有关估计后可用的功能。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 误差变量回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:eivreg} 拟合误差变量回归模型，当一个或多个
自变量带有误差测量时。使用 {cmd:eivreg} 时，您必须拥有每个自变量的可靠性估计或
假设它没有误差测量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R eivregQuickstart:快速入门}

        {mansection R eivregRemarksandexamples:备注和示例}

        {mansection R eivregMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:reliab(}{it:{help varlist_zh:indepvar}} {it:#} [{it:indepvar # }[...]]{cmd:)}
指定每个带误差的自变量的测量可靠性。
可靠性指定为由自变量名称（在 {it:indepvars} 中出现的名称）
和相应的可靠性 r, 0 < r {ul:<} 1 的对。
未指定可靠性的自变量被假设为具有可靠性 1。
如果未指定选项，则所有变量都假设具有可靠性 1，结果与 {cmd:regress} 产生的相同
（普通最小二乘结果）。

{dlgtab:报告}

{phang}
{opt level(#)}；见 
{helpb estimation options##level():[R] 估计选项}。

包含帮助 displayopts_list

{pstd}
以下选项在 {opt eivreg} 中可用，但不显示在对话框中：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合回归，其中 {cmd:weight} 和 {cmd:mpg} 的测量可靠性分别为 0.85 和 0.95{p_end}
{phang2}{cmd:. eivreg price weight foreign mpg, reliab(weight .85 mpg .95)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:eivreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(F)}}F统计量{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:eivreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(rellist)}}{it:indepvars} 和相关的可靠性{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eivreg.sthlp>}