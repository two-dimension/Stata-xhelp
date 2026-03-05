{smcl}
{* *! version 1.2.8  19dec2018}{...}
{viewerdialog xtdpdsys "dialog xtdpdsys"}{...}
{vieweralsosee "[XT] xtdpdsys" "mansection XT xtdpdsys"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtdpdsys postestimation" "help xtdpdsys postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtabond" "help xtabond_zh"}{...}
{vieweralsosee "[XT] xtdpd" "help xtdpd_zh"}{...}
{vieweralsosee "[XT] xtivreg" "help xtivreg_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtregar" "help xtregar_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtdpdsys_zh##syntax"}{...}
{viewerjumpto "Menu" "xtdpdsys_zh##menu"}{...}
{viewerjumpto "Description" "xtdpdsys_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtdpdsys_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtdpdsys_zh##options"}{...}
{viewerjumpto "Examples" "xtdpdsys_zh##examples"}{...}
{viewerjumpto "Stored results" "xtdpdsys_zh##results"}{...}
{viewerjumpto "Reference" "xtdpdsys_zh##reference"}
{help xtdpdsys:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[XT] xtdpdsys} {hline 2}}Arellano-Bover/Blundell-Bond 线性动态面板数据估计{p_end}
{p2col:}({mansection XT xtdpdsys:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:xtdpdsys} {depvar} [{indepvars}] {ifin} [{cmd:,} {it:options}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt la:gs(#)}}使用 {it:#} 个滞后因变量作为协变量；默认值为 {cmd:lags(1)}{p_end}
{synopt :{opt maxld:ep(#)}}用于作为工具变量的因变量最大滞后{p_end}
{synopt :{opt maxlag:s(#)}}用于作为工具变量的预定和内生变量最大滞后{p_end}
{synopt :{opt two:step}}计算两步估计量而不是一步估计量{p_end}

{syntab:预定}
{synopt :{cmd:pre(}{varlist}[{it:...}]{cmd:)}}预定变量；可以多次指定{p_end}

{syntab:内生}
{synopt :{cmdab:end:ogenous(}{varlist}[{it:...}]{cmd:)}}内生变量；可以多次指定{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt gmm} 或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt ar:tests(#)}}使用 {it:#} 作为自相关检验的最大阶数；默认值为 {cmd:artests(2)}{p_end}
{synopt :{it:{help xtdpdsys##display_options:display_options}}}控制间距和行宽{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定面板变量和时间变量；使用 {cmd:xtset}；
参见 {manhelp xtset XT}。
{p_end}
{p 4 6 2}
{it:indepvars} 和所有 {it:varlists}，除了
{cmd:pre(}{it:varlist}[{it:...}]{cmd:)} 和
{cmd:endogenous(}{it:varlist}[{it:...}]{cmd:)}, 可以包含时间序列操作符；
参见 {help tsvarlist_zh}。 {it:depvar} 的规格不能包含时间序列操作符。{p_end}
{p 4 6 2} 
{opt by}, {opt statsby} 和 {cmd:xi} 是允许的；参见 {help prefix_zh}。
{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {helpb xtdpdsys postestimation:[XT] xtdpdsys 估计后}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 横截面/面板数据 > 动态面板数据 (DPD) >}
       {bf:Arellano-Bover/Blundell-Bond 估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtdpdsys} 拟合线性动态面板数据模型，其中未观察到的面板水平效应与因变量的滞后相关。该模型是 Arellano-Bond 估计量的扩展，适用于大自回归参数和面板水平效应与特定误差的方差比大。这被称为 Arellano-Bover/Blundell-Bond 系统估计量。
该估计量旨在用于具有许多面板和少量时期的数据集。
此方法假设特定误差中没有自相关，并要求面板水平效应与因变量第一观测值的差分无相关。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtdpdsysQuickstart:快速入门}

        {mansection XT xtdpdsysRemarksandexamples:备注和示例}

        {mansection XT xtdpdsysMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 参见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt lags(#)} 设置 p，即要包含在模型中的因变量的滞后数量。默认值为 p=1。

{phang}
{opt maxldep(#)} 设置可用作工具变量的因变量的最大滞后数量。默认值为使用所有 T_i-p-2 个滞后。

{phang}
{opt maxlags(#)} 设置可用作工具变量的预定和内生变量的最大滞后数量。
对于预定变量，默认值是使用所有 T_i-p-1 个滞后。
对于内生变量，默认值是使用所有 T_i-p-2 个滞后。

{phang}
{opt twostep} 指定计算两步估计量。

{dlgtab:预定}

{marker options}{...}
{phang}
{cmd:pre(}{varlist} [{cmd:,} {opt lag:struct(prelags, premaxlags)}]{cmd:)} 指定要包含在模型中的一组预定变量。
可选地，可以指定 {it:prelags} 滞后的指定变量也 включены. {it:prelags} 的默认值为 0。指定 {it:premaxlags} 设置可用作工具变量的预定变量的最大滞后数量。默认是包括 T_i-p-1 的滞后水平作为预定变量的工具变量。您可以根据标准 Stata 矩阵大小限制，还可以指定尽可能多的预定变量集。每个预定变量集可以具有其自己的 {it:prelags} 和 {it:premaxlags} 数量。

{dlgtab:内生}

{marker options}{...}
{phang}
{cmdab:end:ogenous(}{varlist} [{cmd:,} 
{opt lag:struct(endlags, endmaxlags)}]{cmd:)} 指定要包含在模型中的一组内生变量。可选地，可以指定 {it:endlags} 滞后的指定变量也被包含。
{it:endlags} 的默认值为 0。指定 {it:endmaxlags} 设置内生变量的最大滞后数量。默认是用 T_i-p-2 的滞后水平作为内生变量的工具变量。您可以根据标准 Stata 矩阵大小限制，指定尽可能多的内生变量集。每个内生变量集可以具有其自己的 {it:endlags} 和 {it:endmaxlags}。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准错误类型，包括由渐近理论推导出来的类型，并且对某些类型的模型失配稳健；参见
{mansection XT xtdpdMethodsandformulas:{it:方法和公式}} 在 {bf:[XT] xtdpd} 中。

{pmore}
{cmd:vce(gmm)}，默认值，使用传统推导方差估计量进行广义矩估计。

{pmore}
{cmd:vce(robust)} 使用稳健估计量。对于一步估计量，这就是 Arellano-Bond 稳健 VCE 估计量。对于两步估计量，这就是 {help xtdpdsys##W2005:Windmeijer (2005)} WC-稳健估计量。

{dlgtab:报告}

{phang}
{opt level(#)}; 参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt artests(#)} 指定要计算的自相关检验的最大阶数。由 {cmd:estat} {cmd:abond} 报告这些检验；参见 {helpb xtdpdsys postestimation:[XT] xtdpdsys 估计后}。在估计时指定最高检验的阶数比在 {cmd:estat} {cmd:abond} 中指定阶数更有效，因为 {cmd:estat} {cmd:abond} 必须重新拟合模型以获得检验统计量。最大阶数必须小于或等于最长面板中的时期数量。默认值为 {cmd:artests(2)}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt vsquish} 和 {opt nolstretch};
    参见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
以下选项可以与 {opt xtdpdsys} 一起使用，但不会在对话框中显示：

{phang}
{opt coeflegend}; 请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse abdata}{p_end}

{pstd}具有严格外生协变量和两个滞后的基本模型{p_end}
{phang2}{cmd:. xtdpdsys n l(0/1).w l(0/2).(k ys) yr1980-yr1984, lags(2)}{p_end}

{pstd}具有稳健VCE的相同模型{p_end}
{phang2}{cmd:. xtdpdsys n l(0/1).w l(0/2).(k ys) yr1980-yr1984, lags(2)}
              {cmd:vce(robust)}{p_end}

{pstd}相同模型的两步估计量{p_end}
{phang2}{cmd:. xtdpdsys n l(0/1).w l(0/2).(k ys) yr1980-yr1984, lags(2) twostep vce(robust)} 
{p_end}

{pstd}现在允许一些协变量为预定的{p_end}
{phang2}{cmd:. xtdpdsys n l(0/1).w l(0/2).(k ys) yr1980-yr1984, lags(2) twostep}
              {cmd:pre(w, lag(1,.)) pre(k,lag(2,.))}{p_end}

{pstd}现在允许一些协变量为内生的{p_end}
{phang2}{cmd:. xtdpdsys n l(0/1).ys yr1980-yr1984, lags(2) twostep}
              {cmd:endogenous(w, lag(1,.)) endogenous(k,lag(2,.))}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:xtdpdsys} 在 {cmd:e()} 中存储以下内容：

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(t_min)}}样本时间的最小值{p_end}
{synopt:{cmd:e(t_max)}}样本时间的最大值{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(arm}{it:#}{cmd:)}}阶数为 {it:#} 的自相关检验{p_end}
{synopt:{cmd:e(artests)}}计算的自相关检验数量{p_end}
{synopt:{cmd:e(sig2)}}sigma_epsilon^2的估计值{p_end}
{synopt:{cmd:e(rss)}}差异残差的平方和{p_end}
{synopt:{cmd:e(sargan)}}Sargan 检验统计量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(zrank)}}工具矩阵的秩{p_end}

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtdpdsys}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(twostep)}}如果指定，{cmd:twostep}{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(system)}}如果是系统估计量，{cmd:system}{p_end}
{synopt:{cmd:e(hascons)}}如果指定，{cmd:hascons}{p_end}
{synopt:{cmd:e(transform)}}指定的变换{p_end}
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
{title:参考}

{marker W2005}{...}
{phang}
Windmeijer, F. 2005. 线性效率二步 GMM 估计量方差的有限样本校正。 {it:经济计量学期刊} 126: 25-51.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtdpdsys.sthlp>}