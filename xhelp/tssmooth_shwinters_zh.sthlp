{smcl}
{* *! version 1.2.5  12dec2018}{...}
{viewerdialog "tssmooth shwinters" "dialog tssmooth_shwinters"}{...}
{vieweralsosee "[TS] tssmooth shwinters" "mansection TS tssmoothshwinters"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{viewerjumpto "Syntax" "tssmooth shwinters##syntax"}{...}
{viewerjumpto "Menu" "tssmooth shwinters##menu"}{...}
{viewerjumpto "Description" "tssmooth shwinters##description"}{...}
{viewerjumpto "Links to PDF documentation" "tssmooth_shwinters_zh##linkspdf"}{...}
{viewerjumpto "Options" "tssmooth shwinters##options"}{...}
{viewerjumpto "Examples" "tssmooth shwinters##examples"}{...}
{viewerjumpto "Stored results" "tssmooth shwinters##results"}
{help tssmooth_shwinters:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[TS] tssmooth shwinters} {hline 2}}霍尔特-温特斯季节平滑{p_end}
{p2col:}({mansection TS tssmoothshwinters:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 30 2}
{cmd:tssmooth} {opt s:hwinters} {dtype} {newvar} {cmd:=} 
  {it:{help exp_zh}} {ifin} [{cmd:,} {it:options}]

{synoptset tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{cmd:replace}}如果 {newvar} 已经存在，则替换 {newvar}{p_end}
{synopt :{opt p:arms(#a #b #g)}}使用 {it:#a}、{it:#b} 和 {it:#g} 作为平滑参数{p_end}
{synopt :{opt sa:mp0(#)}}使用 {it:#} 个观测值获取递归的初始值{p_end}
{synopt :{cmd:s0(}{it:#}cons {it:#}1t{cmd:)}}使用 {it:#}cons 和 {it:#}lt 作为递归的初始值{p_end}
{synopt :{opt f:orecast(#)}}使用 {it:#} 个时期进行外部预测{p_end}
{synopt :{opt per:iod(#)}}使用 {it:#} 作为季节性的周期{p_end}
{synopt :{opt add:itive}}使用加性季节霍尔特-温特斯方法{p_end}

{syntab:选项}
{synopt :{opth sn0_0(varname)}}使用 {it:varname} 中的初始季节值{p_end}
{synopt :{opth sn0_v(newvar)}}将估计的初始值存储在 {it:newvar} 中{p_end}
{synopt :{opth snt_v(newvar)}}将最后一年的估计季节项存储在 {it:newvar} 中{p_end}
{synopt :{opt n:ormalize}}规范化季节值{p_end}
{synopt :{opt alt:starts}}使用计算起始值的替代方法{p_end}

{syntab:最大化}
{synopt :{it:{help tssmooth shwinters##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}
{synopt :{opt fr:om(#a #b #g)}}使用 {it:#a}、{it:#b} 和 {it:#g} 作为参数的起始值{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}在使用 {cmd:tssmooth shwinters} 之前，您必须 {cmd:tsset} 您的数据；请参见 {help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}{it:exp} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 平滑器/单变量预测器 >}
    {bf:霍尔特-温特斯季节平滑}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tssmooth shwinters} 在用户指定的表达式上执行季节霍尔特-温特斯方法，该表达式通常只是一个变量名，并生成一个包含预测系列的新变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tssmoothshwintersQuickstart:快速入门}

        {mansection TS tssmoothshwintersRemarksandexamples:备注和示例}

        {mansection TS tssmoothshwintersMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt replace} 如果 {newvar} 已经存在，则将其替换。

{phang}
{opt parms(#a #b #g)}, 
{bind:{cmd:0} {ul:<} {it:#a} {ul:<} {cmd:1}},
{bind:{cmd:0} {ul:<} {it:#b} {ul:<} {cmd:1}}, 和 
{bind:{cmd:0} {ul:<} {it:#g} {ul:<} {cmd:1}}, 指定参数。如果未指定 {opt parms()}，则通过迭代过程选择这些值，以最小化样本内平方预测误差之和。

{pmore}
如果您在收敛时遇到困难（许多迭代和“不可凹”消息），请尝试使用 {opt from()} 提供更好的起始值。

{phang}
{opt samp0(#)} 和 {cmd:s0(}{it:#}cons {it:#}lt{cmd:)} 与递归的初始值 {it:#}cons 和 {it:#}lt 的获取有关。

{pmore}
{cmd:s0(}{it:#}cons {it:#}lt{cmd:)} 指定要使用的初始值。

{pmore}
{opt samp0(#)} 指定使用样本的前 {it:#} 个观测值获取初始值。此计算在 {it:{mansection TS tssmoothshwintersMethodsandformulas:方法和公式}} 中进行了描述，并且取决于是否还指定了 {cmd:altstart} 和 {cmd:additive} 选项。

{pmore}
如果未指定这两个选项，则使用样本的前半部分来获取初始值。

{phang}
{opt forecast(#)} 指定外部预测的周期数； {bind:{cmd:0} {ul:<} {it:#} {ul:<} {cmd:500}}。默认值为 {cmd:forecast(0)}，相当于不执行外部预测。

{phang}
{opt period(#)} 指定季节性的周期。如果未指定 {opt period()}，则根据 {help tsset_zh} 选项 {opt daily}、{opt weekly}、...、{opt yearly} 获取季节性。如果您在 {cmd:tsset} 数据时未指定其中一个选项，则必须指定 {opt period()} 选项。例如，如果您的数据是季度的，而您未指定 {cmd:tsset} 的 {opt quarterly} 选项，则现在必须指定 {cmd:period(4)}。

{pmore}
默认情况下，计算季节值，但您可以通过 {opth sn0_0(varname)} 选项指定要使用的初始季节值。{it:varname} 的前 {opt period()} 个观测值应包含初始季节值。

{phang}
{opt additive} 使用加性季节霍尔特-温特斯方法，而不是默认的乘法季节霍尔特-温特斯方法。

{dlgtab:选项}

{phang}
{opth sn0_0(varname)} 指定要使用的初始季节值。{it:varname} 必须包含一整年的季节值，从估计样本的第一条观测值开始。例如，如果您有月度数据，{it:varname} 的前 12 条观测值必须包含有效数据。 {opt sn0_0()} 不能与 {opt sn0_v()} 一起使用。

{phang}
{opth sn0_v(newvar)} 在估计后将初始季节值存储在 {it:newvar} 中。{opt sn0_v()} 不能与 {opt sn0_0()} 一起使用。 

{phang}
{opth snt_v(newvar)} 将最后一年数据的季节值存储在 {it:newvar} 中。

{phang}
{opt normalize} 指定季节值进行归一化。在乘法模型中，它们归一化为总和为一。在加法模型中，季节值归一化为总和为零。

{phang}
{cmd:altstarts} 使用替代方法计算常数、线性和季节项的起始值。
默认和替代方法在 {mansection TS tssmoothshwintersMethodsandformulas:{it:方法和公式}} 中进行了描述。
{cmd:altstarts} 不能与 {cmd:s0()} 一起指定。

{dlgtab:最大化}

{phang}
{marker maximize_options}{...}
{it:maximize_options} 控制在未指定 {opt parms()} 选项时解决最优 alpha、beta 和 gamma 的过程。

{pmore}
{it:maximize_options}: {opt nodif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient}, {opt showstep}, {opt hess:ian}, {opt showtol:erance},
{opt tol:erance(#)}, {opt ltol:erance(#)},
{opt nrtol:erance(#)}, 和 {opt nonrtol:erance}；
见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{phang}
{opt from(#a #b #g)}, {bind:{cmd:0} < {it:#a} < {cmd:1}},
{bind:{cmd:0} < {it:#b} < {cmd:1}}, 和
{bind:{cmd:0} < {it:#g} < {cmd:1}}，指定起始值，从中获得 alpha、beta 和 gamma 的最优值。如果未指定 {opt from()}，则使用 {cmd:from(.5 .5 .5)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse turksales}{p_end}

{pstd}对 {cmd:sales} 执行霍尔特-温特斯季节平滑{p_end}
{phang2}{cmd:. tssmooth shwinters shw1=sales}

{pstd}与上述相同，但使用 4 个周期进行外部预测{p_end}
{phang2}{cmd:. tssmooth shwinters shw2=sales, forecast(4)}

{pstd}与上述相同，但使用加性季节霍尔特-温特斯方法{p_end}
{phang2}{cmd:. tssmooth shwinters shw3=sales, forecast(4) additive}

{pstd}与上述相同，但规范化季节值{p_end}
{phang2}{cmd:. tssmooth shwinters shw4=sales, forecast(4) additive normalize}

{pstd}与上述相同，但将最后一年的估计季节项存储在 {cmd:seas}{p_end}
{phang2}{cmd:. tssmooth shwinters shw5=sales, forecast(4) additive normalize}
              {cmd:snt_v(seas)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:tssmooth shwinters} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测数量{p_end}
{synopt:{cmd:r(alpha)}}alpha 平滑参数{p_end}
{synopt:{cmd:r(beta)}}beta 平滑参数{p_end}
{synopt:{cmd:r(gamma)}}gamma 平滑参数{p_end}
{synopt:{cmd:r(prss)}}惩罚的平方和误差{p_end}
{synopt:{cmd:r(rss)}}平方和误差{p_end}
{synopt:{cmd:r(rmse)}}均方根误差{p_end}
{synopt:{cmd:r(N_pre)}}用于计算起始值的季节数量{p_end}
{synopt:{cmd:r(s2_0)}}线性项的初始值{p_end}
{synopt:{cmd:r(s1_0)}}常数项的初始值{p_end}
{synopt:{cmd:r(linear)}}线性项的最终值{p_end}
{synopt:{cmd:r(constant)}}常数项的最终值{p_end}
{synopt:{cmd:r(period)}}{cmd:period}，如果过滤器是季节性的{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(method)}}{cmd:shwinters, additive} 或 {cmd:shwinters, multiplicative}{p_end}
{synopt:{cmd:r(normalize)}}如果指定了，则为 {cmd:normalize}{p_end}
{synopt:{cmd:r(exp)}}指定的表达式{p_end}
{synopt:{cmd:r(timevar)}}在 {cmd:tsset} 中指定的时间变量{p_end}
{synopt:{cmd:r(panelvar)}}在 {cmd:tsset} 中指定的面板变量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tssmooth_shwinters.sthlp>}