{smcl}
{* *! version 1.2.6  19dec2018}{...}
{viewerdialog xtdpd "dialog xtdpd"}{...}
{vieweralsosee "[XT] xtdpd" "mansection XT xtdpd"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtdpd postestimation" "help xtdpd postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{vieweralsosee "[XT] xtabond" "help xtabond_zh"}{...}
{vieweralsosee "[XT] xtdpdsys" "help xtdpdsys_zh"}{...}
{vieweralsosee "[XT] xtivreg" "help xtivreg_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtregar" "help xtregar_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtdpd_zh##syntax"}{...}
{viewerjumpto "Menu" "xtdpd_zh##menu"}{...}
{viewerjumpto "Description" "xtdpd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtdpd_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtdpd_zh##options"}{...}
{viewerjumpto "Examples" "xtdpd_zh##examples"}{...}
{viewerjumpto "Stored results" "xtdpd_zh##results"}{...}
{viewerjumpto "Reference" "xtdpd_zh##reference"}
{help xtdpd:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[XT] xtdpd} {hline 2}}线性动态面板数据估计{p_end}
{p2col:}({mansection XT xtdpd:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:xtdpd} {depvar} [{indepvars}] {ifin}
      {cmd:,} {cmdab:dg:mmiv(}{varlist} [...]{cmd:)} [{it:options}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opt dg:mmiv}{cmd:(}{varlist}[{it:...}]{cmd:)}}差分方程的 GMM 类型工具变量；可以指定多次{p_end}
{synopt :{opt lg:mmiv}{cmd:(}{varlist}[{it:...}]{cmd:)}}水平方程的 GMM 类型工具变量；可以指定多次{p_end}
{synopt :{cmd:iv(}{varlist}[{it:...}]{cmd:)}}差分和水平方程的标准工具变量；可以指定多次{p_end}
{synopt :{cmd:div(}{varlist}[{it:...}]{cmd:)}}仅差分方程的标准工具变量；可以指定多次{p_end}
{synopt :{cmd:liv(}{varlist}{cmd:)}}仅水平方程的标准工具变量；可以指定多次{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt two:step}}计算二步估计量而不是一步估计量{p_end}
{synopt :{opt h:ascons}}仅检查独立变量的水平之间的共线性；默认情况下，检查发生在水平和差分之间{p_end}
{synopt :{opt fod:eviation}}使用前向正交差分而不是一阶差分{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt gmm} 或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt ar:tests(#)}}在 AR 测试中使用 {it:#} 作为最大阶数；默认值为 {cmd:artests(2)}{p_end}
{synopt :{it:{help xtdpd##display_options:display_options}}}控制间距和行宽{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:dgmmiv()} 是必需的。{p_end}
{p 4 6 2}
必须指定面板变量和时间变量；使用 {cmd:xtset}；参见 {manhelp xtset XT}。
{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和所有 {it:varlists} 可以包含时间序列操作符；参见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt statsby} 和 {opt xi}；参见 {help prefix_zh}。{p_end}
{p 4 6 2}
{opt coeflegend} 在对话框中不出现。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {helpb xtdpd postestimation:[XT] xtdpd 估计后}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 动态面板数据 (DPD) >}
    {bf:线性 DPD 估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtdpd} 拟合一个线性动态面板数据模型，其中未被观察的面板级效应与因变量的滞后值相关。该命令能够拟合 Arellano-Bond 和 Arellano-Bover/Blundell-Bond 模型，如 {help xtabond_zh} 和 {help xtdpdsys_zh} 拟合的那样。然而，它还允许具有低阶移动平均相关性在特有误差中或具有比 {cmd:xtabond} 或 {cmd:xtdpdsys} 所允许的更复杂结构的预先确定变量的模型。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtdpdQuickstart:快速入门}

        {mansection XT xtdpdRemarksandexamples:备注和示例}

        {mansection XT xtdpdMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:dgmmiv(}{varlist} [{cmd:,} {opt l:agrange}{cmd:(}{it:flag}
[{it:llag}]{cmd:)}]{cmd:)} 指定差分方程的 GMM 类型工具变量。使用变量的水平来形成差分方程的 GMM 类型工具变量。使用所有可能的滞后，除非 {opt lagrange}{cmd:(}{it:flag} {it:llag}{cmd:)} 限制滞后从 {it:flag} 开始，以 {it:llag} 结束。您可以根据标准 Stata 矩阵大小限制，在差分方程中指定任意数量的 GMM 类型工具变量集。每个集合可以有自己的 {it:flag} 和 {it:llag}。 {cmd:dgmmiv()} 是必需的。

{phang}
{cmd:lgmmiv(}{varlist} [{cmd:,} {opt l:ag}{cmd:(}{it:#}{cmd:)}]{cmd:)} 指定水平方程的 GMM 类型工具变量。使用变量的差分来形成水平方程的 GMM 类型工具变量。使用差分的第一个滞后，除非 
{opt lag}{cmd:(}{it:#}{cmd:)} 指定，指示使用差分的 {it:#} 阶滞后。您可以根据标准 Stata 矩阵大小限制，在水平方程中指定任意数量的 GMM 类型工具变量集。每个集合可以有自己的 {it:lag}。

{phang}
{cmd:iv(}{varlist} [{cmd:,} {opt nodi:fference}]{cmd:)} 指定差分和水平方程的标准工具变量。作为差分方程的工具变量使用变量的差分，除非 {opt nodifference} 被指定，这会请求使用水平。作为水平方程的工具变量使用变量的水平。您可以根据标准 Stata 矩阵大小限制，在差分和水平方程中指定任意数量的标准工具变量集。

{phang}
{cmd:div(}{varlist} [{cmd:,} {opt nodi:fference}]{cmd:)} 指定差分方程的额外标准工具变量。指定的变量不能包含在 {opt iv()} 或 {opt liv()} 中。除非 {opt nodifference} 被指定，这会请求将变量的水平作为差分方程的工具变量。您可以根据标准 Stata 矩阵大小限制，在差分方程中指定任意数量的额外标准工具变量集。

{phang}
{cmd:liv(}{varlist}{cmd:)} 指定水平方程的额外标准工具变量。指定的变量不能包含在 {opt iv()} 或 {opt div()} 中。作为水平方程的工具变量使用变量的水平。您可以根据标准 Stata 矩阵大小限制，在水平方程中指定任意数量的额外标准工具变量集。

{phang}
{opt noconstant}；见 {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt twostep} 指定计算二步估计量。

{phang}
{opt hascons} 指定 {cmd:xtdpd} 仅检查独立变量的水平之间的共线性；默认情况下，检查发生在水平和差分之间。

{phang}
{opt fodeviation} 指定使用前向正交差分而不是一阶差分。{cmd:fodeviation} 在数据中存在缺口或指定了 {cmd:lgmmiv()} 时不允许使用。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括从渐近理论派生的类型，并且对某些类型的模型失配是稳健的；见 {mansection XT xtdpdMethodsandformulas:{it:方法和公式}} 在 {bf:[XT] xtdpd} 中。

{pmore}
{cmd:vce(gmm)}，默认情况下，使用常规派生的方差估计器用于广义矩法估计。

{pmore}
{cmd:vce(robust)} 使用稳健估计器。对于一阶段估计器，这是 Arellano-Bond 稳健 VCE 估计器。对于二阶段估计器，这是 {help xtdpd##W2005:Windmeijer (2005)} WC-稳健估计器。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt artests(#)} 指定要计算的自相关 test 的最高阶。测试由 {cmd:estat} {cmd:abond} 报告；见 {helpb xtdpd postestimation:[XT] xtdpd 估计后}。在估计时指定最高测试的阶数比指定给 {cmd:estat} {cmd:abond} 更有效，因为 {cmd:estat} {cmd:abond} 必须重新拟合模型以获取测试统计量。最大阶数必须小于或等于最长面板中的时间段数。默认值为 {cmd:artests(2)}。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt vsquish} 和 {opt nolstretch}；
    见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
以下选项在 {opt xtdpd} 中可用，但未在对话框中显示：

{phang}
{opt coeflegend}；见 {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse abdata}{p_end}

{pstd}包含因变量两期滞后的 Arellano-Bond 估计量作为回归变量和严格外生的协变量{p_end}
{phang2}{cmd:. xtdpd l(0/2).n l(0/1).(w ys) k, dgmmiv(n) div(l(0/1).(w ys) k)}{p_end}
{phang2}{cmd:. xtdpd l(0/2).n l(0/1).(w ys) k year yr1980-yr1984, dgmmiv(n) div(l(0/1).(w ys) k year)  div(yr1980-yr1984) nocons hascons}{p_end}

{pstd}包含因变量两期滞后的 Arellano-Bond 估计量作为回归变量、严格外生协变量和稳健 VCE{p_end}
{phang2}{cmd:. xtdpd l(0/2).n l(0/1).(w ys) k year yr1980-yr1984, dgmmiv(n) div(l(0/1).(w ys) k year)  div(yr1980-yr1984) nocons hascons twostep vce(robust)}{p_end}

{pstd}包含因变量两期滞后的 Arellano-Bover/Blundell-Bond 系统估计量作为回归变量和严格外生的协变量{p_end}
{phang2}{cmd:. xtdpd l(0/2).n l(0/1).(w ys) k, dgmmiv(n) lgmmiv(n) div(l(0/1).(w ys) k )}{p_end}

{pstd}包含因变量两期滞后的 Arellano-Bond 估计量作为回归变量、内生协变量和稳健 VCE{p_end}
{phang2}{cmd:. xtdpd L(0/1).(n w k) year yr1979-yr1984, dgmmiv(n w k) div(year yr1979-yr1984) nocons hascons vce(robust)}{p_end}

{pstd}包含因变量两期滞后的 Arellano-Bover/Blundell-Bond 系统估计量作为回归变量、内生协变量和稳健 VCE{p_end}
{phang2}{cmd:. xtdpd L(0/1).(n w k) year yr1979-yr1984, dgmmiv(n w k) lgmmiv(n w k) div(year yr1979-yr1984) nocons hascons vce(robust)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtdpd} 将以下内容存储在 {cmd:e()} 中：

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(t_min)}}样本中的最小时间{p_end}
{synopt:{cmd:e(t_max)}}样本中的最大时间{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(arm}{it:#}{cmd:)}}阶数为 {it:#} 的自相关检验{p_end}
{synopt:{cmd:e(artests)}}计算的 AR 检验数{p_end}
{synopt:{cmd:e(sig2)}}sigma_epsilon^2 的估计值{p_end}
{synopt:{cmd:e(rss)}}平方差残差之和{p_end}
{synopt:{cmd:e(sargan)}}Sargan 检验统计量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(zrank)}}工具矩阵的秩{p_end}

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtdpd}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(twostep)}}如果指定则为 {cmd:twostep}{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(system)}}如果是系统估计器，则为 {cmd:system}{p_end}
{synopt:{cmd:e(hascons)}}如果指定则为 {cmd:hascons}{p_end}
{synopt:{cmd:e(transform)}}指定的转换{p_end}
{synopt:{cmd:e(diffvars)}}已差分的变量{p_end}
{synopt:{cmd:e(datasignature)}}来自 {cmd:datasignature} 的校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}由 {cmd:margins} 允许的预测{p_end}

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker W2005}{...}
{phang}
Windmeijer, F. 2005. A finite sample correction for the variance of linear
efficient two-step GMM estimators. {it:经济计量学期刊} 126: 25-51.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtdpd.sthlp>}