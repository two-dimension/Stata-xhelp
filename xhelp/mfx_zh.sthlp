
{smcl}
{* *! version 1.1.5  30dec2010}{...}
{cmd:help mfx}{right:dialog:  {dialog mfx:mfx}}
{hline}
{help mfx:English Version}
{hline}
{pstd}
{cmd:mfx} 已被 {cmd:margins} 取代。{cmd:margins} 可以完成 {cmd:mfx} 所做到的一切，并且更多。{cmd:margins} 的语法与 {cmd:mfx} 不同；请参见 {help margins_zh}。虽然 {cmd:mfx} 仍然可以使用，但不支持因子变量，并且如果您没有在 {help version_zh:version control} 下运行估计命令且版本设置为低于 11，则常常会失败。此帮助文件仍然存在，以帮助那些在旧的 do-file 和程序中遇到 {cmd:mfx} 命令的用户。


{title:标题}

{p2colset 5 16 18 2}{...}
{p2col :{bf:[R] mfx} {hline 2}}在估计后获取边际效应或弹性{p_end}
{p2colreset}{...}


{title:语法}

{p 8 12 2}
{cmd:mfx}
[{opt c:ompute}]
{ifin}
[{cmd:,} 
{it:选项}]

{p 8 12 2}
{cmd:mfx}
{opt r:eplay}
[{cmd:,}
{opt l:evel(#)}]

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt pred:ict(predict_option)}}计算 {it:predict_option} 的边际效应（弹性）{p_end}
{synopt :{opth var:list(varlist)}}计算 {it:varlist} 的边际效应（弹性）{p_end}
{synopt :{opt dydx}}计算边际效应；默认值{p_end}
{synopt :{opt eyex}}计算形式为 d(lny)/d(lnx) 的弹性{p_end}
{synopt :{opt dyex}}计算形式为 d(y)/d(lnx) 的弹性{p_end}
{synopt :{opt eydx}}计算形式为 d(lny)/d(x) 的弹性{p_end}
{synopt :{opt nod:iscrete}}将虚拟（指示）变量视为连续{p_end}
{synopt :{opt nos:e}}不计算标准误差{p_end}

{syntab :模型 2}
{synopt :{cmd:at(}{it:{help mfx##atlist:atlist}}{cmd:)}}在这些值下计算边际效应（弹性）{p_end}
{synopt :{opt noe:sample}}不限制均值和中位数的计算仅限于估计样本{p_end}
{synopt :{opt now:ght}}在计算均值和中位数时忽略权重{p_end}

{syntab :高级模型}
{synopt :{opt nonl:inear}}不使用线性方法{p_end}
{synopt :{opt force}}在本来会拒绝计算时计算边际效应和标准误差{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{cmdab:diag:nostics(beta)}}报告边际效应计算的适用性{p_end}
{synopt :{cmdab:diag:nostics(vce)}}报告标准误差计算的适用性{p_end}
{synopt :{cmdab:diag:nostics(all)}}报告所有诊断信息{p_end}
{synopt :{opt tr:acelvl(#)}}在计算过程中报告逐步增加的详细程度{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{marker atlist}
其中 {it:atlist} 为 {it:{help numlist_zh}} 或 {it:matname} 或

{pin2}
[{cmd:mean}{c |}{cmd:median}{c |}{cmd:zero}] [{varname} {cmd:=} {it:#} [{cmd:,} {it:varname} {cmd:=} {it:#}] [...]]

{pin}
其中 {opt mean} 为默认值。


{title:菜单}

{phang}
{bf:统计 > 后期估计 > 边际效应或弹性}


{title:描述}

{pstd}
{opt mfx} 在估计后数值计算边际效应或弹性及其标准误差。{opt mfx} 可以计算的内容由之前的估计命令和 {opt predict(predict_option)} 选项决定。边际效应或弹性评估的值由 {opt at(atlist)} 选项决定。默认情况下，{opt mfx} 会在独立变量的均值下计算边际效应或弹性，使用与之前估计命令相关联的默认预测选项。

{pstd}
一些学科使用部分效应这个术语，而不是边际效应，来指代 {cmd:mfx} 计算的内容。

{pstd}
{opt mfx replay} 重播先前 {opt mfx} 计算的结果。


{title:选项}

{dlgtab:模型}

{phang}
{opt predict(predict_option)} 指定要计算边际效应或弹性的函数
（即 y 的形式）。默认值是使用前一个估计命令的默认 {opt predict} 选项。要查看可用的 {opt predict} 选项，请参见特定估计命令的 {opt help}。

{phang}
{opth varlist(varlist)} 指定要计算边际效应（弹性）的变量。
默认值是所有变量。

{phang}{cmd:dydx} 指定计算边际效应。这是默认值。

{phang}
{opt eyex} 指定计算形式为 d(lny)/d(lnx) 的弹性。

{phang}
{opt dyex} 指定计算形式为 d(y)/d(lnx) 的弹性。

{phang}
{opt eydx} 指定计算形式为 d(lny)/d(x) 的弹性。

{phang}
{opt nodiscrete} 将虚拟变量视为连续。虚拟变量是在估计样本中取值为 0 或 1 的变量。如果未指定 {opt nodiscrete}，则虚拟变量的边际效应被计算为虚拟变量从 0 变为 1 时 y 的离散变化。由于在计算弹性时所有虚拟变量都被视为连续，因此此选项与弹性的计算无关。

{phang}
{opt nose} 指定不计算边际效应（弹性）的标准误差。

{dlgtab:模型 2}

{phang}
{opt at(atlist)} 指定计算边际效应（弹性）的值。默认值是在独立变量的均值下计算。

{pmore}
{opth at(numlist)} 指定在 {it:numlist} 下计算边际效应（弹性）。例如，

{p 12 16 2}{cmd:. sysuse auto}{p_end}
{p 12 16 2}{cmd:. sureg (price disp weight) (mpg disp weight foreign)}{p_end}
{p 12 16 2}{cmd:. mfx, predict(xb eq(#2)) at(200 3000 0.5)}

{pmore}
计算第二个方程的边际效应，设置 {cmd:disp}=200, {cmd:weight}=3000，和 {cmd:foreign}=0.5。
   
{pmore}
{it:numlist} 中的值的顺序与前一个估计命令中的变量顺序一致，从左到右，无重复。例如，

{p 12 16 2}{cmd:. sureg (price disp weight) (mpg foreign disp) }{p_end}
{p 12 16 2}{cmd:. mfx, predict(xb) at(200 3000 0.5)}

{pmore}
{opth at(matname)} 指定矩阵格式中的值。变量的顺序与 {it:numlist} 中的顺序相同。例如，

{p 12 16 2}{cmd:. probit foreign mpg weight price}{p_end}
{p 12 16 2}{cmd:. matrix A = (21, 3000, 6000)}{p_end}
{p 12 16 2}{cmd:. mfx, at(A)}

{pmore}
{cmd:at(}[{opt mean} | {opt median} | {opt zero}] [{it:varname}
{cmd:=} {it:#} [{cmd:,} {it:varname} {cmd:=} {it:#} [{it:...}]]]{cmd:)}
指定边际效应（弹性）在均值、独立变量的中位数或零下进行计算。它还允许用户为一个或多个独立变量指定特定值，假设其他变量为均值、中位数或零。

{p 12 16 2}{cmd:. probit foreign mpg weight price}{p_end}
{p 12 16 2}{cmd:. mfx, at(mean mpg=30)}

{pmore}
{cmd:at(}{varname} {cmd:=} {it:#} [{cmd:,} {it:varname} {cmd:=} {it:#} ]
    [...]{cmd:)} 指定边际效应或弹性在一个或多个独立变量的特定值下进行计算，假设其他变量为均值。

{p 12 16 2}{cmd:. probit foreign mpg weight price}{p_end}
{p 12 16 2}{cmd:. mfx, at(mpg=30)}

{phang}
{opt noesample} 影响 {opt at(atlist)}，前一个估计中使用的任何偏移量，和虚拟变量的确定。它指定考虑整个数据集，而不仅仅是前一个估计命令定义的 {cmd:e(sample)} 中标记的那些。

{phang}
{opt nowght} 仅影响 {opt at(atlist)} 和偏移量。
它指定在计算 {it:atlist} 的均值或中位数时忽略权重，并在计算任何偏移量的均值时忽略权重。

{dlgtab:高级模型}

{phang}
{opt nonlinear} 指定用于计算边际效应或弹性的 y 函数不满足线性形式限制。默认情况下，{opt mfx} 假设 y 满足线性形式限制，除非一个或多个因变量被多个方程共享，或者前一个估计命令为 {cmd:nl}。例如，进行以下预测：

{phang3}
{cmd:. heckman mpg price, sel(foreign=rep78)}

{pmore}
满足线性形式限制，但进行以下预测：

{phang3}
{cmd:. heckman mpg price, sel(foreign=rep78 price)}

{pmore}
则不满足。如果 y 满足线性形式限制，指定 {opt nonlinear} 应产生与不指定相同的结果。然而，非线性方法通常更耗时。经官方 Stata 命令之后，您很可能不需要指定 {opt nonlinear}。对于用户自编命令，如果您不确定 y 是否为线性形式，指定 {opt nonlinear} 是一个安全的选择。

{phang}
{opt force} 指定在本来会拒绝的情况下计算边际效应及其标准误差。例如，当边际效应是随机量的函数，而不是模型系数（例如，残差）时，会出现此情况。如果您指定此选项，则无法保证结果的边际效应和标准误差是正确的。

{dlgtab:报告}

{phang}
{opt level(#)} 指定置信水平，以百分比形式表示，用于置信区间。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置的值。

{phang} {opt diagnostics(diaglist)} 请求 {opt mfx} 显示各种诊断信息。

{pmore}
{cmd:diagnostics(beta)} 显示用于确定预测选项是否适合计算边际效应的信息。

{pmore}
{cmd:diagnostics(vce)} 显示用于确定预测选项是否适合计算边际效应标准误差的信息。

{pmore}
{cmd:diagnostics(all)} 显示所有上述诊断信息。

{phang}
{opt tracelvl(#)}
    显示计算过程中逐步增加的详细程度。
    {it:#} 可以是 1、2、3 或 4。
    等级 1 显示计算的边际效应和标准误差，以及使用的哪种方法（线性或非线性）。
    等级 2 除此之外，还显示计算每个标准误差所需的偏导数矩阵的分量。
    等级 3 显示获得适合的有限差分的迭代次数。
    等级 4 显示这些有限差分的值。


{title:在 nl 后使用 mfx}

{pstd} 
在使用交互式版本的 {help nl_zh} 获得边际效应时，必须使用 {opt variables()} 选项指定自变量。否则，{cmd:mfx} 无法区分模型的自变量和参数，因此会以错误消息退出。

{pstd}
而不是输入 

{phang2}{cmd:. nl (mpg = {b0} + {b1}*gear^{b2=1})}

{pstd}
请输入

{phang2}{cmd:. nl (mpg = {b0} + {b1}*gear^{b2=1}), variables(gear)}

{pstd}
如果您使用编程可替代表达式或函数求值器的 {cmd:nl} 版本，则不需要使用 {opt variables()} 选项。


{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. logit foreign mpg price}{p_end}
{phang}{cmd:. mfx, predict(p)}{p_end}
{phang}{cmd:. mfx, predict(p) at(mpg = 20, price = 6000)}{p_end}
{phang}{cmd:. mfx, predict(p) at(20 6000)}{p_end}

{phang}{cmd:. mlogit rep78 mpg displ}{p_end}
{phang}{cmd:. mfx, predict(p outcome(2))}{p_end}
{phang}{cmd:. mfx, predict(p outcome(2)) at(20 400) }{p_end}
{phang}{cmd:. mfx, predict(p outcome(2)) varlist(mpg)}{p_end}

{phang}{cmd:. heckman mpg weight length, sel(foreign = length displ)}{p_end}
{phang}{cmd:. mfx, predict(xb)}{p_end}
{phang}{cmd:. mfx, predict(xbsel)}{p_end}
{phang}{cmd:. mfx, predict(yexpected) varlist(length) }{p_end}

{phang}{cmd:. regress mpg length weight}{p_end}
{phang}{cmd:. mfx, eyex}{p_end}
{phang}{cmd:. mfx replay, level(90)}{p_end}


{title:保存的结果}

{pstd}
除了前一个估计的 {cmd:e()} 结果外，{cmd:mfx} 还在 {cmd:e()} 中保存以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(Xmfx_y)}}给定 X 的 {it:y} 值{p_end}
{synopt:{cmd:e(Xmfx_off)}}偏移变量的均值或暴露变量的对数值{p_end}
{synopt:{cmd:e(Xmfx_off}{it:#}{cmd:)}}方程 {it:#} 的偏移变量的均值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(Xmfx_type)}}{cmd:dydx}、{cmd:eyex}、{cmd:eydx} 或 {cmd:dyex}{p_end}
{synopt:{cmd:e(Xmfx_discrete)}}{cmd:discrete} 或 {cmd:nodiscrete}{p_end}
{synopt:{cmd:e(Xmfx_cmd)}}{cmd:mfx}{p_end}
{synopt:{cmd:e(Xmfx_label_p)}}输出中预测的标签{p_end}
{synopt:{cmd:e(Xmfx_predict)}}在 {cmd:predict()} 中指定的 {it:predict_option}{p_end}
{synopt:{cmd:e(Xmfx_dummy)}}对应于独立变量；{cmd:1} 表示虚拟变量，{cmd:0} 表示连续{p_end}
{synopt:{cmd:e(Xmfx_variables)}}对应于独立变量；{cmd:1} 表示已计算边际效应，{cmd:0} 表示其他{p_end}
{synopt:{cmd:e(Xmfx_method)}}{cmd:linear} 或 {cmd:nonlinear}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(Xmfx_dydx)}}边际效应{p_end}
{synopt:{cmd:e(Xmfx_se_dydx)}}边际效应的标准误差{p_end}
{synopt:{cmd:e(Xmfx_eyex)}}形式为 {cmd:eyex} 的弹性{p_end}
{synopt:{cmd:e(Xmfx_se_eyex)}}形式为 {cmd:eyex} 的弹性的标准误差{p_end}
{synopt:{cmd:e(Xmfx_eydx)}}形式为 {cmd:eydx} 的弹性{p_end}
{synopt:{cmd:e(Xmfx_se_eydx)}}形式为 {cmd:eydx} 的弹性的标准误差{p_end}
{synopt:{cmd:e(Xmfx_dyex)}}形式为 {cmd:dyex} 的弹性{p_end}
{synopt:{cmd:e(Xmfx_se_dyex)}}形式为 {cmd:dyex} 的弹性的标准误差{p_end}
{synopt:{cmd:e(Xmfx_X)}}围绕哪些值估计了边际效应（弹性）{p_end}
{p2colreset}{...}


{title:另请参见}

{psee}
手册:  {bf:[R] mfx}

{psee}
{space 2}帮助:  {manhelp predict R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mfx.sthlp>}