{smcl}
{* *! version 1.1.24  12dec2018}{...}
{viewerdialog prais "dialog prais"}{...}
{vieweralsosee "[TS] prais" "mansection TS prais"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] prais postestimation" "help prais postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[TS] mswitch" "help mswitch_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] regress postestimation time series" "help regress_postestimation_ts"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "Syntax" "prais_zh##syntax"}{...}
{viewerjumpto "Menu" "prais_zh##menu"}{...}
{viewerjumpto "Description" "prais_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "prais_zh##linkspdf"}{...}
{viewerjumpto "Options" "prais_zh##options"}{...}
{viewerjumpto "Examples" "prais_zh##examples"}{...}
{viewerjumpto "Stored results" "prais_zh##results"}{...}
{viewerjumpto "References" "prais_zh##references"}
{help prais:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[TS] prais} {hline 2}}Prais-Winsten 和 Cochrane-Orcutt 回归{p_end}
{p2col:}({mansection TS prais:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:prais}
{depvar}
[{indepvars}]
{ifin}
[{cmd:,}
{it:options}]


{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{cmdab:rho:type:(}{opt reg:ress}{cmd:)}}使 rho 基于残差的单滞后 OLS; 默认{p_end}
{synopt:{cmdab:rho:type:(freg)}}使 rho 基于残差的单前导 OLS{p_end}
{synopt:{cmdab:rho:type:(}{opt tsc:orr}{cmd:)}}使 rho 基于残差的自相关{p_end}
{synopt:{cmdab:rho:type:(dw)}}使 rho 基于杜宾-沃森{p_end}
{synopt:{cmdab:rho:type:(}{opt th:eil}{cmd:)}}使 rho 基于调整后的自相关{p_end}
{synopt:{cmdab:rho:type:(}{opt nag:ar}{cmd:)}}使 rho 基于调整后的杜宾-沃森{p_end}
{synopt:{opt corc}}使用 Cochrane-Orcutt 变换{p_end}
{synopt:{opt sse:search}}搜索最小化 SSE 的 rho{p_end}
{synopt:{opt two:step}}在第一轮迭代后停止{p_end}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{synopt:{opt h:ascons}}有用户定义的常数{p_end}
{synopt:{opt save:space}}在估计过程中节省内存{p_end}

{syntab:SE/稳健}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {opt ols}, {opt r:obust},
       {opt cl:uster} {it:clustvar}, {opt hc2}, 或 {opt hc3}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置信心水平; 默认值是 {cmd:level(95)}{p_end}
{synopt:{opt nodw}}不报告杜宾-沃森统计量{p_end}
{synopt :{it:{help prais##display_options:display_options}}}控制
包含帮助 短描述-显示选项 

{syntab:优化}
{synopt:{it:{help prais##optimize_options:optimize_options}}}控制优化过程; 很少使用{p_end}

包含帮助 短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
使用 {cmd:tsset} 设置数据后才能使用 {opt prais}; 参见
{help tsset_zh:[TS] tsset}。
{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符; 参见
{help tsvarlist_zh}。
{p_end}
{p 4 6 2}
允许使用 {opt by}，{opt fp}，{opt rolling} 和 {opt statsby}; 参见
{help prefix_zh}。
{p_end}
{p 4 6 2}
{opt coeflegend} 不会显示在对话框中。{p_end}
{p 4 6 2}
有关估计后可用的功能，请参见 {manhelp prais_postestimation TS:prais postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > Prais-Winsten 回归}


{marker description}{...}
{title:描述}

{pstd}
{opt prais} 使用广义最小二乘法来估计线性回归模型中的参数，其中误差是序列相关的。具体而言，假定误差遵循一阶自回归过程。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS praisQuickstart:快速入门}

        {mansection TS praisRemarksandexamples:备注和示例}

        {mansection TS praisMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt rhotype(rhomethod)} 选择自相关参数 rho 的特定计算方式，{it:rhomethod} 可以是

{p 12 34 2}{cmdab:reg:ress}{space 2}rho_reg {space 2} = 残差回归的 B e_t = B * e_(t-1){p_end}
{p 12 34 2}{cmd:freg} {space 3} rho_freg {space 1} = 残差回归的 B e_t = B * e_(t+1){p_end}
{p 12 34 2}{cmdab:tsc:orr} {space 1} rho_tscorr = e'e_(t-1)/e'e, 其中 e 是残差的向量{p_end}
{p 12 34 2}{cmd:dw} {space 5} rho_dw {space 3} = 1 - dw/2, 其中 dw 是杜宾-沃森 d 统计量{p_end}
{p 12 34 2}{cmdab:th:eil} {space 2} rho_theil{space 2}= rho_tscorr * (N - k)/N{p_end}
{p 12 34 2}{cmdab:nag:ar} {space 2} rho_nagar{space 2}= (rho_dw * N^2 + k^2)/(N^2 - k^2)

{pmore}
   {opt prais} 估计量可以使用 rho 的任何一致估计进行方程转化，每一个这些估计都满足该要求。默认是 {opt regress}，它为 Cochrane-Orcutt 转换生成最小平方和解（{opt ssesearch} 选项）——这些计算中的任何一个都不会为完整的 Prais-Winsten 转换生成最小平方和解。详见 {help prais##J1985:Judge et al. (1985)} 对每个 rho 估计的讨论。

{phang}
{opt corc} 指定使用 Cochrane-Orcutt 变换来估计方程。使用此选项时，不执行对第一个观测值的 Prais-Winsten 变换，并在估计变换方程时省略第一个观测值；详见 {mansection TS praisMethodsandformulas:{it:方法和公式}} 在 {bf:[TS] prais}。

{phang}
{opt ssesearch} 指定对最小化变换方程的平方和误差的 rho 值进行搜索（Cochrane-Orcutt 或 Prais-Winsten 转换）。搜索方法是使用黄金分割的二次和改进的二分搜索的组合。

{phang}
{opt twostep} 指定 {opt prais} 在通过 rho 转化方程的第一轮迭代后停止——二步有效估计量。虽然迭代这些估计量以收敛是惯常作法，但它们在每一步都是有效的。

{phang}
{opt noconstant}; 参见
{bf:{help estimation options##noconstant:[R] 估计选项}}。

{phang}
{opt hascons} 表示在回归中已包含用户定义的常数，或线性组合形成的常数变量。有关某些计算问题，请参见 {help regress_zh:[R] 回归} 中的讨论。

{phang}
{opt savespace} 指定 {opt prais} 尝试尽可能多地节省空间，仅保留进行估计所需的变量。估计后恢复原始数据。此选项很少使用，通常仅在没有空间拟合模型时使用。

{dlgtab:SE/稳健}

{phang}
{opt vce(vcetype)} 指定估计量的方差-协方差矩阵的估计器；详见 {helpb vce_options:[R] {it:vce_options}}。

{phang2}
{cmd:vce(ols)}，默认，使用普通最小二乘回归的标准方差估计器。

{phang2}
{cmd:vce(robust)} 指定使用 Huber/White/三明治估计器。

{phang2}
{cmd:vce(cluster} {it:clustvar}{cmd:)} 指定使用组内相关性估计器。

{phang2}
{cmd:vce(hc2)} 和 {cmd:vce(hc3)} 指定对 {cmd:vce(robust)} 方差计算的替代偏差校正；有关更多信息，请参见 {help regress_zh:[R] 回归}。您只能指定 {cmd:vce(hc2)}、{cmd:vce(hc3)} 或 {cmd:vce(robust)} 中的一个。

{pmore}
   {opt prais} 的所有估计都是基于估计的 rho 值。此处的稳健方差估计对异方差性是稳健的，但通常对功能形式的错误指定或遗漏变量不是稳健的。功能形式的估计与 rho 的估计交织在一起，所有估计都是基于 rho。因此，估计不能对功能形式的错误指定保持稳健。出于这些原因，可能最好将 {cmd:vce(robust)} 解释为 White 在 {help prais##W1980:(1980)} 关于异方差一致协方差矩阵估计的原始论文中的精神。

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 
{bf:{help estimation options##level():[R] 估计选项}}。

{phang}
{opt nodw} 抑制报告杜宾-沃森统计量。

包含帮助 displayopts_list

{marker optimize_options}{...}
{dlgtab:优化}

{phang}
{it:optimize_options}:
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tol:erance(#)}.
{opt iterate()} 指定最大迭代次数。
{opt log}/{opt nolog} 指定是否显示迭代日志（参见 {cmd:set iterlog} 在 {manhelpi set_iter R:set iter} 中）。
{opt tolerance()} 指定系数向量的容忍度；
{cmd:tolerance(1e-6)}是默认值。这些选项很少使用。

{pstd}
以下选项在 {opt prais} 中可用，但未在对话框中显示：

{phang}
{opt coeflegend}; 参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse idle}{p_end}
{phang2}{cmd:. tsset t}{p_end}

{pstd}执行 Prais-Winsten AR(1) 回归{p_end}
{phang2}{cmd:. prais usr idle}

{pstd}执行 Cochrane-Orcutt AR(1) 回归{p_end}
{phang2}{cmd:. prais usr idle, corc}

{pstd}与上述相同，但要求稳健标准误{p_end}
{phang2}{cmd:. prais usr idle, corc vce(robust)}

    {hline}
    设置
{phang2}{cmd:. webuse qsales}

{pstd}执行 Cochrane-Orcutt AR(1) 回归并搜索最小化 SSE 的 rho{p_end}
{phang2}{cmd:. prais csales isales, corc ssesearch}

{pstd}重放结果并设置 99% 置信区间{p_end}
{phang2}{cmd:. prais, level(99)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:prais} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_gaps)}}缺失值数量{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的 R平方{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(rho)}}自相关参数 rho{p_end}
{synopt:{cmd:e(dw)}}变换回归的杜宾-沃森 d 统计量{p_end}
{synopt:{cmd:e(dw_0)}}未变换回归的杜宾-沃森 d 统计量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(tol)}}目标容忍度{p_end}
{synopt:{cmd:e(max_ic)}}最大迭代次数{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:prais}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(cons)}}{cmd:noconstant} 或未报告{p_end}
{synopt:{cmd:e(method)}}{cmd:twostep}、{cmd:iterated} 或 {cmd:SSE search}{p_end}
{synopt:{cmd:e(tranmeth)}}{cmd:corc} 或 {cmd:prais}{p_end}
{synopt:{cmd:e(rhotype)}}在 {cmd:rhotype()} 选项中指定的方法{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype}在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker J1985}{...}
{phang}
Judge, G. G., W. E. Griffiths, R. C. Hill, H. L{c u:}tkepohl 和 T.-C. Lee.
1985. {it:计量经济学的理论与实践}. 第2版. 纽约: Wiley.

{marker W1980}{...}
{phang}
White, H. 1980. 一种异方差性一致的协方差矩阵估计器及异方差性直接检验. {it:经济计量学} 48: 817-838.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <prais.sthlp>}