{smcl}
{* *! version 1.3.13  12dec2018}{...}
{viewerdialog arima "dialog arima"}{...}
{vieweralsosee "[TS] arima" "mansection TS arima"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima postestimation" "help arima postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arch" "help arch_zh"}{...}
{vieweralsosee "[TS] dfactor" "help dfactor_zh"}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[TS] mgarch" "help mgarch_zh"}{...}
{vieweralsosee "[TS] mswitch" "help mswitch_zh"}{...}
{vieweralsosee "[TS] prais" "help prais_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[TS] threshold" "help threshold_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] ucm" "help ucm_zh"}{...}
{viewerjumpto "Syntax" "arima_zh##syntax"}{...}
{viewerjumpto "Menu" "arima_zh##menu"}{...}
{viewerjumpto "Description" "arima_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "arima_zh##linkspdf"}{...}
{viewerjumpto "Options" "arima_zh##options"}{...}
{viewerjumpto "Examples" "arima_zh##examples"}{...}
{viewerjumpto "Video example" "arima_zh##video"}{...}
{viewerjumpto "Stored results" "arima_zh##results"}{...}
{viewerjumpto "References" "arima_zh##references"}
{help arima:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[TS] arima} {hline 2}}ARIMA、ARMAX 和其他动态回归模型 {p_end}
{p2col:}({mansection TS arima:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
具有 ARMA 扰动的回归模型的基本语法

{p 8 14 2}
{cmd:arima}
{depvar}
[{indepvars}]{cmd:,}
{opth ar(numlist)}
{opth ma(numlist)}


{pstd}
ARIMA({it:p},{it:d},{it:q}) 模型的基本语法

{p 8 14 2}
{cmd:arima}
{depvar}{cmd:,}
{opt arima(#p,#d,#q)}


{pstd}
具有季节性成分的乘法季节 ARIMA({it:p},{it:d},{it:q})*({it:P},{it:D},{it:Q})s 模型的基本语法

{p 8 14 2}
{cmd:arima}
{depvar}{cmd:,}
{opt arima(#p,#d,#q)}
{opt sarima(#P,#D,#Q,#s)}


{pstd}
完整语法

{p 8 14 2}
{cmd:arima}
{depvar}
[{indepvars}]
{ifin}
[{it:{help arima##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt nocons:不断}}抑制常数项{p_end}
{synopt:{opt arima(#p,#d,#q)}}指定响应变量的 ARIMA({it:p,d,q}) 模型{p_end}
{synopt:{opth ar(numlist)}}结构模型扰动的自回归项{p_end}
{synopt:{opth ma(numlist)}}结构模型扰动的滑动平均项{p_end}
{synopt:{cmdab:c:onstraints(}{it:{help arima##constraints:约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:模型 2}
{synopt:{opt sarima(#P,#D,#Q,#s)}}指定周期-{it:#s} 的乘法季节 ARIMA 项{p_end}
{synopt:{cmd:mar(}{it:{help numlist_zh}}{cmd:,} {it:#s}{cmd:)}}乘法季节自回归项；可以重复{p_end}
{synopt:{cmd:mma(}{it:{help numlist_zh}}{cmd:,} {it:#s}{cmd:)}}乘法季节滑动平均项；可以重复{p_end}

{syntab:模型 3}
{synopt:{opt cond:ition}}使用条件 MLE 而非完整 MLE{p_end}
{synopt:{opt save:space}}在估计期间节省内存{p_end}
{synopt:{opt di:ffuse}}使用扩散先验作为卡尔曼滤波递归的起始值{p_end}
{synopt:{cmd:p0(}{it:#}|{it:matname}{cmd:)}}使用替代先验作为
卡尔曼递归的起始值；鲜少使用{p_end}
{synopt:{cmd:state0(}{it:#}|{it:matname}{cmd:)}}使用替代状态
向量作为卡尔曼滤波递归的起始值{p_end}

{syntab:SE/稳健}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {opt opg}、{opt r:obust} 或
    {opt oim}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt det:ail}}报告时间序列中的缺口列表{p_end}
{synopt :{opt nocns:r:eport}}不显示约束{p_end}
{synopt :{it:{help arima##display_options:显示选项}}}控制列和列格式、行间距以及行宽{p_end}

{syntab:最大化}
{synopt:{it:{help arima##maximize_options:最大化选项}}}控制
最大化过程；鲜少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
您必须在使用 {opt arima} 之前对数据进行 {opt tsset}；请参见 {manhelp tsset TS}。
{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参见 
{help tsvarlist_zh}。
{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt fp}、{opt rolling}、{opt statsby} 和 {cmd:xi}；
请参见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt iweight}；请参见 {help weights}。
{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp arima_postestimation TS:arima postestimation} 以获取估计后可用的功能。 {p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > ARIMA 和 ARMAX 模型}


{marker description}{...}
{title:描述}

{pstd}
{opt arima} 为时间序列拟合单变量模型，允许扰动遵循线性自回归滑动平均（ARMA）规范。当在规范中包含独立变量时，这种模型通常称为 ARMAX 模型；而在不指定独立变量时，它们则降低为响应变量的 Box-Jenkins 自回归集成滑动平均（ARIMA）模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS arimaQuickstart:快速开始}

        {mansection TS arimaRemarksandexamples:备注和示例}

        {mansection TS arimaMethodsandformulas:方法和公式}

{pstd}
上述章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；请参见
{bf:{help estimation options##noconstant:[R] 估计选项}}。

{phang}
{opt arima(#p,#d,#q)} 是指定具有 ARMA 扰动的模型的替代简写符号。响应变量和任何独立变量被差分 {it:#d} 次，1 到 {it:#p} 个自相关的滞后项和 1 到 {it:#q} 个滑动平均的滞后项被包含在模型中。例如，规范

{pin2}
{cmd:. arima D.y, ar(1/2) ma(1/3)}

{pmore}
等价于

{pin2}
{cmd:. arima y, arima(2,1,3)}

{pmore}
后者在简单的 ARMAX 和 ARIMA 模型中更容易书写，但如果要对 AR 或 MA 滞后中的缺口进行建模，或者如果需要对独立变量应用不同的运算符，则需要使用第一种语法。

{phang}
{opth ar(numlist)} 指定要包含在模型中的结构模型扰动的自回归项。例如，{cmd:ar(1/3)} 指定将结构干扰的 1、2 和 3 的滞后项包含在模型中；{cmd:ar(1 4)} 指定将 1 和 4 的滞后项包含在内，可能是为了考虑季度效应。

{pmore}
   如果模型不包含回归量，这些项也可以视为响应变量的自回归项。

{phang}
{opth ma(numlist)} 指定要包含在模型中的滑动平均项。这些是滞后创新（白噪声扰动）的项。

{marker constraints}{...}
{phang}
{opt constraints(constraints)}；请参见 
{bf:{help estimation options:[R] 估计选项}}。

{pmore}
   如果在结构模型参数和 ARMA 项之间施加约束，前几次迭代可能尝试进行非平稳区域的步伐。如果最终解完全在平稳解的范围内，则此过程可以被忽略。

{dlgtab:模型 2}

{phang}
{opt sarima(#P,#D,#Q,#s)} 是指定具有 ARMA 扰动的模型的乘法季节成分的替代简写符号。响应变量和任何独立变量按季节差分 {it:#D} 次，并且包含了 1 到 {it:#P} 的自回归项和 1 到 {it:#Q} 的滑动平均项的季节滞后项。例如，规范

{pin2}
{cmd:. arima DS12.y, ar(1/2) ma(1/3) mar(1/2,12) mma(1/2,12)}

{pmore}
   等价于

{pin2}
{cmd:. arima y, arima(2,1,3) sarima(2,1,2,12)}

{phang}
{cmd:mar(}{it:{help numlist_zh}}{cmd:,} {it:#s}{cmd:)}
   指定滞后-{it:#s} 的乘法季节自回归项。例如，{cmd:mar(1/2,12)} 请求将前两个滞后12的乘法季节自回归项包含在模型中。

{phang}
{cmd:mma(}{it:{help numlist_zh}}{cmd:,} {it:#s}{cmd:)} 指定滞后-{it:#s} 
   的乘法季节滑动平均项。例如，
   {cmd:mma(1 3,12)} 请求将第一个和第三个（但不是第二个）滞后12的乘法季节滑动平均项包含在模型中。

{dlgtab:模型 3}

{phang}
{opt condition} 指定生成条件最大似然估计，而非完整最大似然估计。预样本的 epsilon_t 和 mu_t 的值被视为期望值为零，epsilon_t 的方差估计被视为在整个样本中是常数；请参见
{help arima##H1994:汉密尔顿 (1994, 132)}。此估计方法对于非平稳序列不适用，但对于长序列或具有一个或多个长 AR 或 MA 滞后项的模型可能更可取。 {cmd:diffuse}、{cmd:p0()} 和 {cmd:state0()} 对于从条件似然拟合的模型没有意义，并且不能与 {cmd:condition} 指定。

{pmore}
如果序列较长且为平稳，并且底层数据生成过程没有长记忆，则无论是通过无条件最大似然（默认值）、条件最大似然（{cmd:condition}）进行估计的估计值都是相似的。

{pmore} 
然而，在小样本中，条件和无条件最大似然的结果可能相差很大；请参见
{help arima##AN1980:安斯利和纽博尔德 (1980)}。
默认的无条件最大似然估计在满足模型所有假设时能充分利用样本信息，而{help arima##H1989:哈维 (1989)}和{help arima##AK1985:安斯利和科恩 (1985)}通常主张使用扩散先验，特别是在对应于一个潜在结构模型的 ARIMA 模型中。

{pmore}
{cmd:condition} 或 {cmd:diffuse} 选项也通常更可取，当模型包含一个或多个长 AR 或 MA 滞后时；这可以避免求逆可能较大的矩阵（见下文的 {cmd:diffuse}）。

{pmore}
当指定 {cmd:condition} 时，估计是通过 {cmd:arch} 命令执行的（请参见 {manhelp arch TS}），并且可以通过直接使用 {cmd:arch} 来获得更多的估计过程控制。

{pmore}
如果模型包含任何乘法季节项，则不能指定 {cmd:condition}。

{phang}
{opt savespace} 指定通过仅保留估计所需的变量来节省内存使用。估计后，原始数据集将还原。这个选项很少使用，仅在没有足够空间拟合模型而无法使用该选项时使用。但 {opt arima} 在估计期间需要消耗比 Stata 中大多数估计命令更多的临时存储空间。

{phang}
{opt diffuse} 指定使用扩散先验（参见 哈维 
{help arima##H1989:1989} 或 {help arima##H1993:1993}）作为卡尔曼滤波递归的起始点。使用 {opt diffuse}，可以通过 {opt arima} 拟合非平稳模型（参见
{helpb arima##p0():p0()} 选项下；
{opt diffuse} 相当于指定 {cmd:p0(1e9)}）。有关详细信息，请参见 {mansection TS arimaOptionsdiffuse:{bf:[TS] arima}}。

{marker p0()}{...}
{phang}
{cmd:p0(}{it:#}|{it:matname}{cmd:)} 是一个鲜少指定的选项，可用于非平稳序列或者希望使用替代先验作为卡尔曼递归起始点；请参见 
{mansection TS arimaOptionsp0:{bf:[TS] arima}} 了解详细信息。

{phang}
{cmd:state0(}{it:#}|{it:matname}{cmd:)} 是一个鲜少使用的选项，指定用于卡尔曼滤波递归的替代初始状态向量。如果指定 {it:#}，则向量的所有元素都视为 {it:#}。默认初始状态向量为 {cmd:state0(0)}。

{dlgtab:SE/稳健}

包含 help vce_roo

{pmore}
对于一般的状态空间模型以及特别是 ARMAX 和 ARIMA 模型，方差的稳健或拟似然估计（QMLEs）对于扰动中的对称非正态性是稳健的，特殊情况包括异方差性。稳健方差估计通常对模型的结构或 ARMA 成分的功能错误不起作用；请见 {help arima##H1994:汉密尔顿 (1994, 389)} 的简要讨论。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{bf:{help estimation options##level():[R] 估计选项}}。

{phang}
{opt detail} 指定报告系列中的任何缺口的详细列表，包括由于缺失观察或缺失响应变量或独立变量的数据而导致的缺口。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:显示选项}：
{opt noci}、
{opt nopv:alues}、
{opt vsquish}、
{opth cformat(%fmt)}、
{opt pformat(%fmt)}、
{opt sformat(%fmt)}，以及
{opt nolstretch}；
    参见 {helpb estimation options##display_options:[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:最大化选项}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、
{opt iter:ate(#)}、
[{cmd:no}]{opt log}、
{opt tr:ace}、
{opt grad:ient}、
{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、
{opt gtol:erance(#)}、
{opt nonrtol:erance(#)}，以及
{opt from(init_specs)}；
参见 {help maximize_zh:[R] 最大化} 以获取所有选项，除了 {cmd:gtolerance()} 之外，并请看下面关于 {helpb arima##gtolerance():gtolerance()} 的信息。

{pmore}
这些选项在 ARIMA 模型中有时比大多数最大似然模型更重要，因为 ARIMA 模型可能存在收敛问题，特别是如果指定的模型和样本数据暗示非平稳模型。

{pmore}
对 ARIMA 模型提供了几种替代优化方法，如 Berndt-Hall-Hall-Hausman (BHHH) 和 Broyden-Fletcher-Goldfarb-Shanno (BFGS)。虽然 ARIMA 模型的优化难度不如 ARCH 模型，但其似然值通常不是二次的，且通常会导致优化困难；尤其是当模型是非平稳或接近非平稳时。由于每种方法在优化上的处理方式不同，因此有时可以通过替代方法成功优化一些因为其他方法失败而未能优化的问题。

{pmore}
将 {cmd:technique()} 设置为默认值或 BHHH 之外的其他值将会改变 {it:vcetype} 为 {cmd:vce(oim)}。

{pmore}
以下选项均与最大化相关，并且要么在拟合 ARIMA 模型时特别重要，要么在大多数其他估计量中不可用。

{phang2}
{opt technique(algorithm_spec)} 指定用于最大化似然函数的优化技术。

{phang3}
{cmd:technique(bhhh)} 指定 Berndt-Hall-Hall-Hausman (BHHH) 算法。

{phang3}
{cmd:technique(dfp)} 指定 Davidon-Fletcher-Powell (DFP) 算法。

{phang3}
{cmd:technique(bfgs)} 指定 Broyden-Fletcher-Goldfarb-Shanno (BFGS) 算法。

{phang3}
{cmd:technique(nr)} 指定 Stata 的修改版牛顿-拉夫森 (NR) 算法。

{pmore2} 
您可以指定多个优化方法。例如， 

{pin3}
{cmd:technique(bhhh 10 nr 20)} 

{pmore2}
请求优化器执行 10 次 BHHH 迭代，切换到牛顿-拉夫森进行 20 次迭代，然后再切换回 BHHH 进行 10 次，依此类推。

{pmore2}
{opt arima} 的默认值是 {cmd:technique(bhhh 5 bfgs 10)}。

{marker gtolerance()}{...}
{phang2}
{opt gtolerance(#)}
指定相对于系数的梯度容忍度。当 |g_i*b_i| {ul:<} {opt gtolerance()} 对所有参数 b_i 和相应的梯度元素 g_i 时，梯度容忍度标准被满足。
{opt arima} 的默认梯度容忍度为 {cmd:gtolerance(.05)}。

{pmore2}
{cmd:gtolerance(999)} 可以指定以禁用梯度标准。如果优化器在重复的“（回退）”消息中卡住，梯度中可能仍包含相当大的值，但无法找到似然的上升方向。使用此选项，可以经常获得结果，但是否找到了全局最大似然并不清楚。

{pmore2}
当最大化效果不理想时，还可以将最大迭代次数设置为优化器看似卡住的点，并在该点检查估计结果。

{phang2}
{opt from(init_specs)} 允许您设置模型系数的起始值；请参见 {help maximize_zh:[R] 最大化} 以获取一般讨论和语法选项。

{pmore2}
标准语法 {cmd:from()} 可接受矩阵、数值列表或系数名称值对；请参见 {help maximize_zh:[R] 最大化}。 {opt arima} 还接受 {cmd:from(armab0)}，这会将模型中所有 ARMA 参数的起始值设置为零，然后进行优化。

{pmore2}
ARIMA 模型可能对初始条件敏感，并且可能有与局部最大值对应的系数值。{opt arima} 的默认起始值通常较好，特别是在长样本的平稳序列中。

{pstd}
在 {opt arima} 中可用的以下选项未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse wpi1}{p_end}

{pstd}包含差分和自回归及滑动平均成分的简单 ARIMA 模型{p_end}
{phang2}{cmd:. arima wpi, arima(1,1,1)}{p_end}

{pstd}与上述相同{p_end}
{phang2}{cmd:. arima D.wpi, ar(1) ma(1)}

{pstd}具有加性季节性效应的 ARIMA 模型{p_end}
{phang2}{cmd:. arima D.wpi, ar(1) ma(1 4)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse air2}{p_end}
{phang2}{cmd:. generate lnair = ln(air)}{p_end}

{pstd}乘法 SARIMA 模型{p_end}
{phang2}{cmd:. arima lnair, arima(0,1,1) sarima(0,1,1,12) noconstant}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse friedman2, clear}{p_end}

{pstd}ARMAX 模型{p_end}
{phang2}{cmd:. arima consump m2 if tin(, 1981q4), ar(1) ma(1)}

{pstd}具有稳健标准误的 ARMAX 模型{p_end}
{phang2}{cmd:. arima consump m2 if tin(, 1981q4), ar(1) ma(1) vce(robust)}
{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=8xt4q7KHfBs":ARMA/ARIMA 模型简介}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:arima} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_gaps)}}缺口数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}响应变量的数量{p_end}
{synopt:{cmd:e(k1)}}第一个方程中的变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(sigma)}}sigma{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(tmin)}}最小时间{p_end}
{synopt:{cmd:e(tmax)}}最大时间{p_end}
{synopt:{cmd:e(ar_max)}}最大 AR 滞后{p_end}
{synopt:{cmd:e(ma_max)}}最大 MA 滞后{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:arima}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}响应变量名称{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方测试的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(ma)}}滑动平均项的滞后{p_end}
{synopt:{cmd:e(ar)}}自回归项的滞后{p_end}
{synopt:{cmd:e(mar}{it:i}{cmd:)}}乘法 AR 项和滞后 {it:i}=1...
      （{it:#} 季节 AR 项）{p_end}
{synopt:{cmd:e(mma}{it:i}{cmd:)}}乘法 MA 项和滞后 {it:i}=1...
      （{it:#} 季节 MA 项）{p_end}
{synopt:{cmd:e(seasons)}}模型中的季节滞后{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(ml_method)}}最大似然方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(tech_steps)}}在切换技术之前执行的迭代次数{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker AK1985}{...}
{phang}
Ansley, C. F. 和 R. J. Kohn. 1985. 在初始条件未完全指定的状态空间模型中进行估计、过滤和光滑。
{it:统计年鉴} 13: 1286-1316。

{marker AN1980}{...}
{phang}
Ansley, C. F. 和 P. Newbold. 1980. 自回归滑动平均模型的有限样本性质。
{it:计量经济学杂志} 13: 159-183。

{marker H1994}{...}
{phang}
Hamilton, J. D. 1994. {it:时间序列分析}。
普林斯顿：普林斯顿大学出版社。

{marker H1989}{...}
{phang}
Harvey, A. C. 1989. {it:预测、结构时间序列模型和}
{it:卡尔曼滤波器}。剑桥：剑桥大学出版社。

{marker H1993}{...}
{phang}
------. 1993. {it:时间序列模型}。第二版。马萨诸塞州剑桥：MIT出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <arima.sthlp>}