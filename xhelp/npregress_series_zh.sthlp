{smcl}
{* *! version 1.0.0  27feb2019}{...}
{viewerdialog "npregress series" "dialog npregress_series"}{...}
{vieweralsosee "[R] npregress series" "mansection R npregressseries"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] npregress series postestimation" "help npregress series postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] npregress intro" "mansection R npregressintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] kdensity" "help kdensity_zh"}{...}
{vieweralsosee "[R] lpoly" "help lpoly_zh"}{...}
{viewerjumpto "Syntax" "npregress_series_zh##syntax"}{...}
{viewerjumpto "Menu" "npregress_series_zh##menu"}{...}
{viewerjumpto "Description" "npregress_series_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "npregress_series_zh##linkspdf"}{...}
{viewerjumpto "Options" "npregress_series_zh##options"}{...}
{viewerjumpto "Examples" "npregress_series_zh##examples"}{...}
{viewerjumpto "Stored results" "npregress_series_zh##results"}
{help npregress_series:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[R] npregress series} {hline 2}}非参数序列回归{p_end}
{p2col:}({mansection R npregressseries:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:npregress} {cmd:series}
{depvar}
{indepvars}_series
{ifin}
[{help npregress series##weight:{it:权重}}]
[{cmd:,} {it:选项}]

{phang}
{it:indepvars}_series 是将要形成基函数的独立变量列表。

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{cmd:bspline}}使用三阶 B-样条基函数；默认值{p_end}
{synopt :{opt bspline(#)}}使用阶数为 {it:#} 的 B-样条基函数{p_end}
{synopt :{opt spline}}使用三阶自然样条基函数{p_end}
{synopt :{opt spline(#)}}使用阶数为 {it:#} 的自然样条基函数{p_end}
{synopt :{opt polynomial}}使用多项式基函数{p_end}
{synopt :{opt polynomial(#)}}使用阶数为 {it:#} 的多项式基函数{p_end}
{synopt :{opth asis(varlist)}}将 {it:varlist} 包含在模型中，按指定形式；不在基函数中使用{p_end}
{synopt :{opth nointer:act(npregress series##seriesvarlist:seriesvarlist)}}使用 {it:seriesvarlist} 作为基函数而不引入交互项{p_end}
{synopt :{opth criterion:(npregress series##crittype:crittype)}}使用的准则； {it:crittype} 可以是 {cmd:cv}、{cmd:gcv}、{cmd:aic}、{cmd:bic} 或 {cmd:mallows}{p_end}
{synopt :{opt knots(#)}}使用具有 {it:#} 个节点的样条或 B-样条基函数{p_end}
{synopt :{opt knotsmat(matname)}}使用矩阵 {it:matname} 中的节点进行样条或 B-样条估计{p_end}
{synopt :{cmd:basis(}{it:stub} [{cmd:, replace}]{cmd:)}}使用 {it:stub} 存储样条或 B-样条基函数的元素{p_end}
{synopt :{cmd:rescale(}{it:stub} [{cmd:, replace}]{cmd:)}}使用 {it:stub} 存储协变量的重缩放值{p_end}

{syntab:标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:robust}、{cmd:ols} 或 {opt boot:strap}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt aequations}}显示辅助回归系数{p_end}
{synopt :{it:{help npregress series##display_options:display_options}}}控制
包括帮助简述——显示选项

{syntab:最大化}
{synopt:{it:{help npregress series##maximize_options:maximize_options}}}控制最大化过程{p_end}

包括帮助简述——系数图例
{synoptline}
包括帮助 fvvarlist2
{p 4 6 2}
{cmd:bootstrap}、{cmd:by} 和 {cmd:jackknife} 是允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用。{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 和 {cmd:iweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
详见 {manhelp npregress_series_postestimation R:npregress series postestimation}
以获取估计后可用的功能。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > 非参数序列回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:npregress series} 使用 B-样条、样条或多项式基进行非参数序列估计。与线性回归相似，非参数回归模型根据协变量建模事件的均值，但与线性回归不同，它不对事件与协变量之间的关系的功能形式做出假设。{cmd:npregress series} 可用于建模连续、计数或二元结果的均值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R npregressseriesQuickstart:快速入门}

        {mansection R npregressseriesRemarksandexamples:备注和示例}

        {mansection R npregressseriesMethodsandformulas:方法与公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:bspline} 指定选择三阶 B-样条作为基函数。它是默认基函数。  

{phang}
{opt bspline(#)} 指定使用阶数为 {it:#} 的 B-样条作为基函数。阶数可以是 1、2 或 3。

{phang}
{opt spline}
指定选择三阶自然样条作为基函数。

{phang}
{opt spline(#)} 指定使用阶数为 {it:#} 的自然样条作为基函数。阶数可以是 1、2 或 3。

{phang}
{opt polynomial}
指定选择多项式作为基函数。

{phang}
{opt polynomial(#)} 指定使用阶数为 {it:#} 的多项式作为基函数。阶数可以是 1 到 16 之间的整数。 

{phang}
{opth asis(varlist)} 指定将 {it:varlist} 中的变量作为模型中的独立变量而不进行任何变换。不将这些变量用于形成 B-样条、样条或多项式基函数。{it:varlist} 中的变量不得在 {it:indepvars}_series 中指定。 

{marker seriesvarlist}{...}
{phang}
{opt nointeract(seriesvarlist)} 指定不将 {it:seriesvarlist} 中的变量形成的基函数中的项与其他 {it:indepvars}_series 中变量形成的基函数中的项交互。{it:seriesvarlist} 中指定的协变量必须在 {it:indepvars}_series 中。 

{marker crittype}{...}
{phang} 
{opt criterion(crittype)} 指定使用 {it:crittype} 来选择基函数中的最佳项数。{it:crittype} 可以是以下之一：
{opt cv}（交叉验证）、{opt gcv}（广义交叉验证）、{opt aic}（赤池信息量准则）、 
{opt bic}（施瓦兹贝叶斯信息准则）或 {opt mallows}
（Mallows's C_p）。默认值为 {cmd:criterion(cv)}。   

{phang} 
{opt knots(#)} 指定使用具有 {it:#} 个节点的样条或 B-样条基函数。节点的最小数量必须是大于或等于 1 的整数。节点的最大数量为 4096 或样本量的三分之二，以较小者为准。

{phang} 
{opt knotsmat(matname)} 指定每个连续协变量的节点为 {it:matname} 每行中的值。每个协变量的节点数量应该相同，且每行的数量应该与连续协变量的数量相同。如果 {it:matname} 中的行未标记为 {it:varname}s，则假定其顺序与 {it:indepvars}_series 一致。  

{phang}
{cmd:basis(}{it:stub} [{cmd:, replace}]{cmd:)} 指定由 {cmd:npregress series} 生成的基函数的元素以指定的名称存储。

{pmore}
选项参数 {it:stub} 是生成每个基函数元素的编号变量的前缀。

{pmore}
当使用 {cmd:replace} 时，现有变量名为 {it:stub} 的变量将被新计算的变量替换。

{phang}
{cmd:rescale(}{it:stub} [{cmd:, replace}]{cmd:)}
指定用于生成基函数的重缩放协变量以指定的名称存储。

{pmore}
选项参数 {it:stub} 是生成协变量所用的编号变量名称的前缀。

{pmore}
当使用 {cmd:replace} 时，现有协变量名为 {it:stub} 的变量将被新计算的变量替换。

{dlgtab:标准误}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括对于某些类型的误设稀疏性做出稳健假设的类型（{cmd:robust}）、假设同方差的类型（{cmd:ols}）以及使用自助法的方法（{cmd:bootstrap}）；见 {manhelpi vce_option R}. 

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{marker citype_ds}{...}
{phang}
{opt aequations} 指定报告辅助回归系数。默认情况下，仅报告协变量对结果的平均边际效应。  

包括帮助显示选项列表

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tol:erance(#)}；见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pstd}
以下选项在 {cmd:npregress series} 中可用，但未在对话框中显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse dui}

{pstd}以 {cmd:citations} 对 {cmd:fines} 进行非参数序列回归{p_end}
{phang2}{cmd:. npregress series citations fines}

{pstd}与上面相同，但使用 Mallow 的 C_p 选择 B-样条基中的最佳项数{p_end}
{phang2}{cmd:. npregress series citations fines, criterion(mallows)}{p_end}

{pstd}使用阶数为 5 的多项式作为基函数{p_end}
{phang2}{cmd:. npregress series citations fines, polynomial(5)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:npregress series} 将以下内容存储在 {cmd:e()} 中：

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(r2_a)}}调整 R平方{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 否则{p_end}
{synopt:{cmd:e(order)}}基函数的阶数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{p2col 5 23 25 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:npregress}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(basis)}}{cmd:bsplines}、{cmd:splines} 或 {cmd:polynomials}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标示标准误的标题{p_end}
{synopt:{cmd:e(knots)}}所选节点的数量{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(estat_cmd)}}用于执行 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于执行 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(marginsok)}}允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginsprop)}}向 {cmd:margins} 命令传达的信息{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许 {cmd:margins} 的预测{p_end}

{p2col 5 23 25 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}} 基于模型的方差{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}

{p2col 5 23 25 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <npregress_series.sthlp>}