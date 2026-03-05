{smcl}
{* *! version 1.0.11  21mar2019}{...}
{viewerdialog power "dialog power_oneslope"}{...}
{vieweralsosee "[PSS-2] power oneslope" "mansection PSS-2 poweroneslope"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power pcorr" "help power pcorr"}{...}
{vieweralsosee "[PSS-2] power rsquared" "help power rsquared"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "power_oneslope_zh##syntax"}{...}
{viewerjumpto "Menu" "power_oneslope_zh##menu"}{...}
{viewerjumpto "Description" "power_oneslope_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_oneslope_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_oneslope_zh##options"}{...}
{viewerjumpto "Remarks: Using power oneslope" "power_oneslope_zh##remarks"}{...}
{viewerjumpto "Examples" "power_oneslope_zh##examples"}{...}
{viewerjumpto "Stored results" "power_oneslope_zh##stored_results"}
{help power_oneslope:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[PSS-2] power oneslope} {hline 2}}简单线性回归中的斜率检验的功效分析{p_end}
{p2col:}({mansection PSS-2 poweroneslope:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本大小 

{p 8 43 2}
{opt power} {opt oneslope} {it:b0} {it:ba} 
[, {opth p:ower(numlist)}  {it:{help power_oneslope##synoptions:options}}]


{phang}
计算功效 

{p 8 43 2}
{opt power} {opt oneslope} {it:b0} {it:ba}{cmd:,}
{opth n(numlist)} [{it:{help power_oneslope##synoptions:options}}]


{phang}
计算效应大小和目标斜率 

{p 8 43 2}
{opt power} {opt oneslope} {it:b0}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)}  [{it:{help power_oneslope##synoptions:options}}]


{phang}
其中 {it:b0} 是零（假设）斜率或在零假设下的斜率系数值，{it:ba} 是替代（目标）斜率或在替代假设下的斜率系数值。
{it:b0} 和 {it:ba} 可以分别指定为一个数或一个括号中的数值列表（参见 {it:{help numlist_zh}}）。{p_end}


{synoptset 28 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
INCLUDE help pss_testmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许分数样本大小{p_end}
{p2coldent:* {opth diff(numlist)}}替代斜率和零斜率系数之间的差，{it:ba}-{it:b0}；应替代于替代斜率 {it:ba}{p_end}
{p2coldent:* {opth sdx(numlist)}}感兴趣的协变量的标准差；默认为 {cmd:sdx(1)}{p_end}
{p2coldent:* {opth sderr:or(numlist)}}回归模型误差项的标准差；不能与 {opt sdy()} 或 {opt corr()} 结合使用；默认为 {cmd:sderror(1)}{p_end}
{p2coldent:* {opth sdy(numlist)}}因变量的标准差；不能与 {opt sderror()} 或 {opt corr()} 结合使用{p_end}
{p2coldent:* {opth corr(numlist)}}响应变量与感兴趣的协变量之间的相关性；不能与 {opt sderror()} 或 
{opt sdy()} 结合使用{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_oneslope##tablespec:tablespec}}{cmd:)}]}抑制表格或以表格形式显示结果；参见 {manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 覆盖现有的
{it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或斜率的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中.{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_oneslope##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是以下定义的列之一，
{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}受试者数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt b0}}零斜率系数{p_end}
{synopt :{opt ba}}替代斜率系数{p_end}
{synopt :{opt diff}}替代和零斜率之间的差
系数{p_end}
{synopt :{opt sdx}}协变量的标准差{p_end}
{synopt :{opt sderror}}误差项的标准差{p_end}
{synopt :{opt sdy}}因变量的标准差{p_end}
{synopt :{opt corr}}因变量与协变量之间的相关性{p_end}
{synopt :{opt target}}目标参数；{cmd:ba} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}列 {cmd:beta} 在指定时将显示在默认表中替代列
{cmd:power} 。{p_end}
{p 4 6 2}列 {cmd:diff}、 {cmd:sdy} 和 {cmd:corr} 在指定时将在默认表中显示。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:oneslope} 计算简单线性回归中斜率检验的样本大小、功效或目标斜率系数。默认情况下，它根据功效和斜率系数计算样本大小。或者，它根据样本大小和斜率系数计算功效，或者计算目标斜率系数，给定了样本大小、功效和零假设下的系数。有关使用假设检验的 {cmd:power} 命令的一般介绍，请参见 {manhelp power PSS-2}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 poweroneslopeQuickstart:快速入门}

        {mansection PSS-2 poweroneslopeRemarksandexamples:备注和示例}

        {mansection PSS-2 poweroneslopeMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}; 参考 {manhelp power##mainopts PSS-2:power}。
{opt nfractional} 选项仅允许用于样本大小确定。

{phang}
{opth diff(numlist)} 指定替代斜率与零斜率系数之间的差，{it:ba} - {it:b0}。您可以指定替代斜率 {it:ba} 作为命令参数，或者在 {cmd:diff()} 中指定两者之间的差。如果您指定 {opt diff(#)} ，替代斜率将计算为 {it:ba} = {it:b0} + {it:#}。此选项不允许与效应大小确定结合使用。

{phang}
{opth sdx(numlist)} 指定感兴趣的协变量的标准差。默认为 {cmd:sdx(1)}。 

{phang}
{opth sderror(numlist)} 指定回归模型误差项的标准差。默认为 {cmd:sderror(1)}。此选项不能与 {cmd:sdy()} 或 {cmd:corr()} 结合使用。 

{phang}
{opth sdy(numlist)} 指定回归模型中因变量的标准差。此选项不能与 {cmd:sderror()} 或 {cmd:corr()} 结合使用。 

{phang}
{opth corr(numlist)} 指定协变量与因变量之间的相关性。此选项不能与 {cmd:sderror()} 或 {cmd:sdy()} 结合使用。 

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 参考 {manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp 另请参见 {mansection PSS-2 poweroneslopeSyntaxcolumn:column} 表格中图形使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定样本大小确定的初始值或效应大小确定的斜率初始值。默认为使用封闭形式的正态近似计算样本大小的初始值，使用二分搜索方法计算效应大小的初始值。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项适用于 {cmd:power oneslope} ，但不显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power oneslope}

{pstd}
{cmd:power oneslope} 计算简单线性回归中斜率检验的样本大小、功效或目标斜率。默认情况下，所有计算均为双侧假设检验，显著性水平设定为 0.05。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。您可以通过指定 {cmd:onesided} 选项请求单侧检验。

{pstd}
默认情况下，所有计算都使用一个作为感兴趣的协变量的标准差以及误差的标准差。您可以通过指定 {cmd:sdx()} 和 {cmd:sderror()} 选项更改这些值。您可以将 {cmd:sdx()} 选项与 {cmd:sdy()} 选项结合使用以指定因变量的标准差，或将 {cmd:sdx()} 选项与 {cmd:corr()} 选项结合使用，以指定协变量与因变量之间的相关性。

{pstd}
要计算样本大小，您必须指定零假设下的斜率（{it:b0}）和替代假设下的斜率（{it:ba}），并且您可以在 {cmd:power()} 选项中指定检验的功效。默认功效设为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定样本大小、零斜率 {it:b0} 和替代斜率 {it:ba}。

{pstd}
在计算样本大小或功效时，您可以在 {cmd:diff()} 选项中指定替代斜率与零斜率之间的差 {it:ba} - {it:b0} ，而不是指定替代斜率。

{pstd}
要计算效应大小，您必须在 {cmd:n()} 选项中指定样本大小、在 {cmd:power()} 选项中指定功效、指定零斜率 {it:b0} ，并可以指定效应的方向。{it:delta} 定义为替代值和零值之间的差乘以协变量的标准差与误差项标准差的比率。方向默认是上方 {cmd:direction(upper)}，这意味着目标斜率被假设为大于指定的零值。这也等同于假设效应大小为正。您可以通过指定 {cmd:direction(lower)} 选项将方向更改为下方，这意味着目标斜率被假设为小于指定的零值。这等同于假设效应大小为负。

{pstd}
默认情况下，计算的样本大小会向上取整。您可以指定 {cmd:nfractional} 选项，以查看相应的分数样本大小；有关示例，请参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:Fractional sample sizes}} 。
{cmd:nfractional} 选项仅允许用于样本大小确定。

{pstd}
{cmd:power oneslope} 的样本大小和效应大小计算需要迭代。计算过程中使用非中心的学生 t 分布。自由度取决于样本大小，非中心参数取决于样本大小和效应大小。样本大小的默认初始值使用封闭形式的正态近似获得。效应大小的默认初始值使用二分搜索方法获得。可以通过指定 {cmd:init()} 选项更改默认初始值。有关控制迭代过程的其他选项描述，请参见 {help power_zh:[PSS-2] power}。


{marker examples}{...}
{title:示例}

    {title:示例：计算样本大小}

{pstd}
计算在零假设下值为 0 的情况下，检测斜率系数为 0.5 所需的样本大小，双侧检验的功效为 80%，显著性水平为 5%。协变量和误差的标准差已知为 1.{p_end}
{phang2}
{cmd:. power oneslope 0 0.5}

{pstd}
与上述相同，使用 {cmd:diff()} 选项指定零斜率和替代假设下斜率之间的差{p_end}
{phang2}{cmd:. power oneslope 0, diff(0.5)}

{pstd}
与第一个示例相同，使用功效为 90%{p_end}
{phang2}{cmd:. power oneslope 0 0.5, power(0.9)}

{pstd}
与上述相同，已知误差的标准差为 2{p_end}
{phang2}{cmd:. power oneslope 0 0.5, power(0.9) sderror(2)}

{pstd}
与上述相同，已知协变量的标准差为 0.5{p_end}
{phang2}{cmd:. power oneslope 0 0.5, power(0.9) sderror(2) sdx(0.5)}

{pstd}
与第一个示例相同，使用显著性水平为 1% 的单侧检验{p_end}
{phang2}{cmd:. power oneslope 0 0.5, alpha(0.01) onesided}

{pstd}
指定一组替代斜率和两个功效水平，并绘制结果{p_end}
{phang2}{cmd:. power oneslope 0 (0.25(0.05)0.5), power(0.8 0.9) graph}


    {title:示例：计算功效}

{pstd}
计算样本大小为 75、显著性水平为 5% 的单侧检验的功效。已知零假设下和替代假设下斜率系数分别为 0 和 0.5。使用默认值 1 作为协变量和误差的标准差.{p_end}
{phang2}{cmd:. power oneslope 0 0.5, n(75)}{p_end}

{pstd}
与上述相同，已知因变量的标准差为 2{p_end}
{phang2}{cmd:. power oneslope 0 0.5, n(75) sdy(2)}

{pstd}
与第一个示例相同，已知协变量与因变量之间的相关性为 0.3{p_end}
{phang2}{cmd:. power oneslope 0 0.5, n(75) corr(0.3)}

{pstd}
计算多个替代斜率和样本大小的功效，并绘制结果{p_end}
{phang2}{cmd:. power oneslope 0 (0.1 0.3 0.6), n(20(1)35) graph}


    {title:示例：计算目标斜率}

{pstd}
计算在 50 个观察值和 80% 功效下可以检测到的超过 0 的斜率的最小值；假设显著性水平为 5%，协变量和误差的标准差为 1（默认为）。{p_end}
{phang2}{cmd:. power oneslope 0, n(50) power(0.8)}

{pstd}
与上述相同{p_end}
{phang2}{cmd:. power oneslope 0, n(50) power(0.8) direction(upper)}

{pstd}
计算可以检测到的低于 0 的最大斜率值{p_end}
{phang2}{cmd:. power oneslope 0, n(50) power(0.8) direction(lower)}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power oneslope} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}第二类错误的概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}样本大小{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(onesided)}}{cmd:1} 表示为单侧检验，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(b0)}}零假设下的斜率系数{p_end}
{synopt:{cmd: r(ba)}}替代假设下的斜率系数{p_end}
{synopt:{cmd: r(diff)}}替代斜率与零斜率之间的差{p_end}
{synopt:{cmd: r(sdx)}}感兴趣的协变量的标准差{p_end}
{synopt:{cmd: r(sderror)}}回归模型误差项的标准差{p_end}
{synopt:{cmd: r(sdy)}}因变量的标准差{p_end}
{synopt:{cmd: r(corr)}}感兴趣的协变量与响应用变量之间的相关性{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本大小或斜率的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:oneslope}
{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_oneslope.sthlp>}