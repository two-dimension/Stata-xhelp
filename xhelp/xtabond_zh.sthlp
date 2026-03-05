{smcl}
{* *! version 1.3.6  19sep2018}{...}
{viewerdialog xtabond "dialog xtabond"}{...}
{vieweralsosee "[XT] xtabond" "mansection XT xtabond"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtabond postestimation" "help xtabond postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtdpd" "help xtdpd_zh"}{...}
{vieweralsosee "[XT] xtdpdsys" "help xtdpdsys_zh"}{...}
{vieweralsosee "[XT] xtivreg" "help xtivreg_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtregar" "help xtregar_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtabond_zh##syntax"}{...}
{viewerjumpto "Menu" "xtabond_zh##menu"}{...}
{viewerjumpto "Description" "xtabond_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtabond_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtabond_zh##options"}{...}
{viewerjumpto "Examples" "xtabond_zh##examples"}{...}
{viewerjumpto "Stored results" "xtabond_zh##results"}{...}
{viewerjumpto "References" "xtabond_zh##references"}
{help xtabond:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[XT] xtabond} {hline 2}}Arellano-Bond 线性动态面板数据估计{p_end}
{p2col:}({mansection XT xtabond:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:xtabond} {depvar} [{indepvars}] {ifin} [{cmd:,} {it:options}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth diff:vars(varlist)}}已经差分的外生变量{p_end}
{synopt :{opth inst(varlist)}}额外的工具变量{p_end}
{synopt :{opt la:gs(#)}}将依赖变量的 {it:#} 个滞后用作协变量；默认为 {cmd:lags(1)}{p_end}
{synopt :{opt maxld:ep(#)}}可作为工具的依赖变量的最大滞后数{p_end}
{synopt :{opt maxlag:s(#)}}可作为工具的预定和内生变量的最大滞后数{p_end}
{synopt :{opt two:step}}计算两步估计量，而不是一步估计量{p_end}

{syntab:预定的}
{synopt :{cmd:pre(}{varlist}[{it:...}]{cmd:)}}预定变量；可以多次指定{p_end}

{syntab:内生的}
{synopt :{cmdab:end:ogenous(}{varlist}[{it:...}]{cmd:)}}内生变量；可以多次指定{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt gmm} 或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心级别；默认为 {cmd:level(95)}{p_end}
{synopt :{opt ar:tests(#)}}将 {it:#} 作为 AR 测试的最大阶数；默认为 {cmd:artests(2)}{p_end}
{synopt :{it:{help xtabond##display_options:显示选项}}}控制间距和行宽{p_end}

{p 4 6 2}
必须指定面板变量和时间变量；使用 {cmd:xtset}；见 {manhelp xtset XT}。
{p_end}
{p 4 6 2}
{it:indepvars} 和所有 {it:varlists}，除了 {cmd:pre(}{it:varlist}[{it:...}]{cmd:)} 和 {cmd:endogenous(}{it:varlist}[{it:...}]{cmd:)}, 可以包含时间序列操作符；见 {help tsvarlist_zh}。依赖变量的 {it:depvar} 的规定不可包含时间序列操作符。{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt statsby} 和 {cmd:xi}；见 {help prefix_zh}。{p_end}
{p 4 6 2}
选项 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用特性的，请参见 {manhelp xtabond_postestimation XT:xtabond 后估计}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 动态面板数据 (DPD) >}
     {bf:Arellano-Bond 估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtabond} 拟合一个线性动态面板数据模型，其中未观察到的面板级效应与依赖变量的滞后相关联，这就是 Arellano-Bond 估计量。该估计量旨在处理面板数量多而时间段少的数据集，并要求特异性误差中没有自相关。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtabondQuickstart:快速入门}

        {mansection XT xtabondRemarksandexamples:备注和示例}

        {mansection XT xtabondMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant};
见 {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opth diffvars(varlist)} 指定一组已差分的变量，以作为严格外生协变量。 {opt diffvars()} 不可用于具有常数的模型或规定级方程工具的模型。

{phang}
{opth inst(varlist)} 指定一组变量作为额外的工具。这些工具在包含到工具矩阵之前不会被 {cmd:xtabond} 差分。

{phang}
{opt lags(#)} 设置 p，依赖变量的滞后数以包含在模型中。默认为 p=1。

{phang}
{opt maxldep(#)} 设置可作为工具的依赖变量的最大滞后数。默认为使用所有 T_i-p-2 个滞后。

{phang}
{opt maxlags(#)} 设置可作为工具的预定和内生变量的最大滞后数。对于预定变量，默认为使用所有 T_i-p-1 个滞后。对于内生变量，默认为使用所有 T_i-p-2 个滞后。

{phang}
{opt twostep} 指定计算两步估计量。

{dlgtab:预定的}

{marker options}{...}
{phang}
{cmd:pre(}{varlist} [{cmd:,} {opt lag:struct(prelags, premaxlags)}]{cmd:)} 指定将一组预定变量包含在模型中。可以选择性地指定指定变量的 {it:prelags} 个滞后也包含在内。 {it:prelags} 的默认值为 0。指定 {it:premaxlags} 设置可作为工具的预定变量的最大滞后数。默认情况下，将包括 T_i-p-1 个滞后水平作为预定变量的工具。您可以在标准 Stata 矩阵大小限制内，指定尽可能多的预定变量集。每个预定变量集可以有自己数量的 {it:prelags} 和 {it:premaxlags}。

{dlgtab:内生的}

{marker options}{...}
{phang}
{cmdab:end:ogenous(}{varlist} [{cmd:,} 
{opt lag:struct(endlags, endmaxlags)}]{cmd:)} 指定将一组内生变量包含在模型中。可以选择性地指定指定变量的 {it:endlags} 个滞后也包含在内。 {it:endlags} 的默认值为 0。指定 {it:endmaxlags} 设置可作为工具的内生变量的最大滞后数。默认情况下，将包括 T_i-p-2 个滞后水平作为内生变量的工具。您可以在标准 Stata 矩阵大小限制内，指定尽可能多的内生变量集。每个内生变量集可以有自己数量的 {it:endlags} 和 {it:endmaxlags}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论推导的类型，并对某些类型的错误规范具有稳健性；见 {mansection XT xtabondRemarksandexamples:{it:备注和示例}} 在 {bf:[XT] xtabond} 中。

{pmore}
{cmd:vce(gmm)}，默认为使用常规推导的广义时刻法估计的方差估计器。

{pmore}
{cmd:vce(robust)} 使用稳健估计器。一步估计后，这是 Arellano-Bond 稳健 VCE 估计器。两步估计后，这是 {help xtabond##W2005:Windmeijer (2005)} 的 WC-稳健估计器。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt artests(#)} 指定生成的自相关测试的最大阶数。测试由 {cmd:estat} {cmd:abond} 报告；见 {helpb xtabond postestimation:[XT] xtabond 后估计}。在估计时指定最高测试的阶数比在 {cmd:estat} {cmd:abond} 中指定要高效，因为 {cmd:estat} {cmd:abond} 必须重新拟合模型以获得测试统计量。最大阶数必须小于或等于最长面板中的时间数。默认为 {cmd:artests(2)}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt vsquish} 和 {opt nolstretch}；
    见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
以下选项在 {opt xtabond} 中可用，但在对话框中未显示：

{phang}
{opt coeflegend}; 见 {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse abdata}{p_end}

{pstd}将依赖变量的两个滞后作为回归变量的基本模型{p_end}
{phang2}{cmd:. xtabond n l(0/1).w l(0/2).(k ys) yr1980-yr1984, lags(2)}{p_end}
{phang2}{cmd:. xtabond n l(0/1).w l(0/2).(k ys) yr1980-yr1984, lags(2)}
              {cmd:vce(robust)}{p_end}
{phang2}{cmd:. xtabond n l(0/1).w l(0/2).(k ys) yr1980-yr1984, lags(2) twostep}
{p_end}

{pstd}将 {cmd:w} 和 {cmd:k} 作为预定变量，并包括 {cmd:w}、{cmd:L.w}、{cmd:k}、{cmd:L.k} 和 {cmd:L2.k} 作为额外的回归变量{p_end}
{phang2}{cmd:. xtabond n l(0/2).ys yr1980-yr1984, lags(2)}
{cmd:pre(w, lag(1,.)) pre(k, lag(2,.))}{p_end}

{pstd}将 {cmd:L.w} 和 {cmd:L2.k} 视为内生的，并包括 {cmd:w}、{cmd:L.w}、{cmd:k}、{cmd:L.k} 和 {cmd:L2.k} 作为额外的回归变量{p_end}
{phang2}{cmd:. xtabond n l(0/2).ys yr1980-yr1984, lags(2)}
              {cmd:endogenous(w, lag(1,.)) endogenous(k, lag(2,.))}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtabond} 将以下内容存储在 {cmd:e()} 中：

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(t_min)}}样本中的最小时间{p_end}
{synopt:{cmd:e(t_max)}}样本中的最大时间{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(arm}{it:#}{cmd:)}}自相关阶数 # 的检验{p_end}
{synopt:{cmd:e(artests)}}计算的 AR 测试数量{p_end}
{synopt:{cmd:e(sig2)}}sigma_epsilon^2 的估计值{p_end}
{synopt:{cmd:e(rss)}}平方差残差的和{p_end}
{synopt:{cmd:e(sargan)}}萨尔甘检验统计量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(zrank)}}工具矩阵的秩{p_end}

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtabond}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}依赖变量的名称{p_end}
{synopt:{cmd:e(twostep)}}{cmd:twostep}，如果指定{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(system)}}{cmd:system}，如果是系统估计量{p_end}
{synopt:{cmd:e(transform)}}指定的变换{p_end}
{synopt:{cmd:e(diffvars)}}已差分的外生变量{p_end}
{synopt:{cmd:e(datasignature)}}来自 {cmd:datasignature} 的校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于执行 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于执行 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许 {cmd:margins} 进行预测{p_end}

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 19 tabbed}{...}
{p2col 5 19 23 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker AB1991}{...}
{phang}
Arellano, M., and S. Bond. 1991.
一些面板数据的规范测试：蒙特卡洛证据及其在就业方程中的应用。
{it:经济研究评论} 58: 277-297。

{marker W2005}{...}
{phang}
Windmeijer, F. 2005. 线性高效两步 GMM 估计量方差的有限样本修正。 {it:计量经济学期刊} 126: 25-51。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtabond.sthlp>}