{smcl}
{* *! version 1.2.1  19sep2018}{...}
{viewerdialog xtpcse "dialog xtpcse"}{...}
{vieweralsosee "[XT] xtpcse" "mansection XT xtpcse"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtpcse postestimation" "help xtpcse postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] newey" "help newey_zh"}{...}
{vieweralsosee "[TS] prais" "help prais_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[XT] xtgls" "help xtgls_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtregar" "help xtregar_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "语法" "xtpcse_zh##syntax"}{...}
{viewerjumpto "菜单" "xtpcse_zh##menu"}{...}
{viewerjumpto "描述" "xtpcse_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "xtpcse_zh##linkspdf"}{...}
{viewerjumpto "选项" "xtpcse_zh##options"}{...}
{viewerjumpto "示例" "xtpcse_zh##examples"}{...}
{viewerjumpto "存储结果" "xtpcse_zh##results"}{...}
{viewerjumpto "参考" "xtpcse_zh##reference"}
{help xtpcse:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[XT] xtpcse} {hline 2}}线性回归与面板修正的标准误{p_end}
{p2col:}({mansection XT xtpcse:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:xtpcse} {depvar} [{indepvars}] {ifin}
[{it:{help xtpcse##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:stant}}抑制常数项{p_end}
{synopt :{opt c:orrelation}{cmd:({ul:i}ndependent)}}使用独立自相关结构{p_end}
{synopt :{opt c:orrelation}{cmd:({ul:a}r1)}}使用 AR1 自相关结构{p_end}
{synopt :{opt c:orrelation}{cmd:({ul:p}sar1)}}使用面板特定的 AR1 自相关结构{p_end}
{synopt :{opth rho:type(xtpcse##calc:calc)}}指定计算自相关参数的方法；很少使用{p_end}
{synopt :{opt np1}}按面板规模加权面板特有的自相关{p_end}
{synopt :{opt het:only}}假设面板级异方差性错误{p_end}
{synopt :{opt i:ndependent}}假设面板间独立错误{p_end}

{syntab:按/如果/中}
{synopt :{opt ca:sewise}}仅包含完整案例的观测值{p_end}
{synopt :{opt p:airwise}}包含所有可用的观测值，前提是成对非缺失{p_end}

{syntab:标准误}
{synopt :{opt nmk}}标准误按 N-k 进行标准化，而不是 N{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt d:etail}}报告时间序列中的缺口列表{p_end}
{synopt :{it:{help xtpcse##display_options:显示选项}}}控制
包括帮助短描述-显示选项全部

包括帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定一个面板变量和一个时间变量；使用 {help xtset_zh}。
{p_end}
包括帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 
{help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt by} 和 {opt statsby} 是允许的；见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt iweight}s 和 {opt aweight}s 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp xtpcse_postestimation XT:xtpcse 后估计} 了解估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 同时相关 >}
     {bf:带面板修正标准误的回归 (PCSE)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtpcse} 计算线性横截面时间序列模型的面板修正标准误 (PCSE) 估计，其中参数通过 OLS 或 Prais-Winsten 回归进行估计。在计算标准误和方差-协方差估计时，{cmd:xtpcse} 默认假设干扰是异方差的，并且在面板间是同时相关的。

{pstd}
有关这些模型的广义最小二乘估计量，请参见 {help xtgls_zh:[XT] xtgls}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtpcseQuickstart:快速入门}

        {mansection XT xtpcseRemarksandexamples:备注和示例}

        {mansection XT xtpcseMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt correlation(corr)} 指定假设面板内的自相关形式。

{pmore}
{cmd:correlation(independent)}，默认值，指定没有自相关。

{pmore}
{cmd:correlation(ar1)} 指定面板内存在一阶自相关 AR(1)，且 AR(1) 过程的系数对所有面板是共同的。

{pmore}
{cmd:correlation(psar1)} 指定面板内存在一阶自相关，且 AR(1) 过程的系数对每个面板是特有的。{opt psar1} 代表面板特定的 AR(1)。

{marker calc}{...}
{phang}
{opt rhotype(calc)} 指定用于计算自相关参数的方法。{it:calc} 的允许字符串为

{center:{opt reg:ress}    使用滞后进行回归；默认 }
 {center:{opt freg}       使用超前进行回归                 }
 {center:{opt tsc:orr}     时间序列自相关计算}
 {center:{opt dw}         Durbin-Watson 计算              }

{pmore}
上述所有方法都是一致且渐近等效的；这是一个很少使用的选项。

{phang}
{opt np1} 指定在估计所有面板的共同 rho 时，面板特有的自相关按 T_i 而不是默认的 T_i-1 加权，其中 T_i 是面板 i 中的观测数。此选项仅在面板不平衡且指定了 {cmd:correlation(ar1)} 选项时有效。

{phang}
{opt hetonly} 和 {opt independent} 指定所假设的干扰跨面板的协方差的替代形式。如果两者都未指定，则假设干扰是异方差的（每个面板具有自己的方差），并且在面板间是同时相关的（每对面板有其自己的协方差）。这是标准的 PCSE 模型。

{pmore}
{opt hetonly} 指定假设干扰仅为面板级异方差性，而在面板间没有同时相关。

{pmore}
{opt independent} 指定假设干扰在面板间是独立的；即，所有观测具有一个共同的干扰方差。

{dlgtab:按/如果/中}

{phang}
{opt casewise} 和 {opt pairwise} 指定在估计干扰的面板间协方差矩阵时如何处理不平衡面板中的缺失观测。默认情况下选择 {opt casewise}。

{pmore}
{opt casewise} 指定协方差矩阵仅在所有面板可用的观测（期）上计算。如果某个观测缺失数据，则当估计干扰的协方差矩阵时将排除该期的所有观测。指定 {opt casewise} 可确保估计的协方差矩阵将是满秩的并且是正定的。

{pmore}
{opt pairwise} 指定，对于协方差矩阵中的每个元素，使用共同于两个面板的所有可用观测（期）来计算协方差。

{pmore}
{opt casewise} 和 {opt pairwise} 选项仅在面板不平衡且未指定 {opt hetonly} 或 {opt independent} 时有效。

{dlgtab:SE}

{phang}
{opt nmk} 指定标准误按 N-k 进行标准化，其中 k 是估计的参数数量，而不是 N，即观测的数量。不同作者使用了一种或另一种标准化。
{help xtpcse##G2018:Greene (2018, 313)} 备注说自由度校正是否改善小样本特性仍然是一个悬而未决的问题。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt detail} 指定报告系列中的任何缺口的详细列表。

包括帮助 displayopts_list

{pstd}
以下选项适用于 {opt xtpcse} 但不在对话框中显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse grunfeld}{p_end}
{phang2}{cmd:. xtset company year, yearly}{p_end}

{pstd}拟合线性回归，假设面板内不存在自相关，且具有面板修正标准误{p_end}
{phang2}{cmd:. xtpcse invest mvalue kstock}{p_end}

{pstd}指定面板内的一阶自相关{p_end}
{phang2}{cmd:. xtpcse invest mvalue kstock, correlation(ar1)}{p_end}

{pstd}指定面板特定的一阶自相关；使用时间序列方法估计自相关参数{p_end}
{phang2}{cmd:. xtpcse invest mvalue kstock, correlation(psar1) rhotype(tscorr)}{p_end}

{pstd}指定面板内的一阶自相关；允许面板级干扰为异方差，但不同时相关{p_end}
{phang2}{cmd:. xtpcse invest mvalue kstock, correlation(ar1) hetonly}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtpcse} 在 {cmd:e()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_g)}}组数量{p_end}
{synopt:{cmd:e(N_gaps)}}缺口数量{p_end}
{synopt:{cmd:e(n_cf)}}估计系数数量{p_end}
{synopt:{cmd:e(n_cv)}}估计协方差数量{p_end}
{synopt:{cmd:e(n_cr)}}估计相关性数量{p_end}
{synopt:{cmd:e(n_sigma)}}用于估计 {cmd:Sigma} 元素的观测值{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df)}}自由度{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtpcse}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(panels)}}同时协方差结构{p_end}
{synopt:{cmd:e(corr)}}相关结构{p_end}
{synopt:{cmd:e(rhotype)}}估计的相关性类型{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(cons)}}{cmd:noconstant} 或 ""{p_end}
{synopt:{cmd:e(missmeth)}}{cmd:casewise} 或 {cmd:pairwise}{p_end}
{synopt:{cmd:e(balance)}}{cmd:balanced} 或 {cmd:unbalanced}{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Sigma)}}Sigma 估计矩阵{p_end}
{synopt:{cmd:e(rhomat)}}自相关参数估计向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker G2018}{...}
{phang}
Greene, W. H. 2018. {browse "http://www.stata.com/bookstore/ea.html":{it:计量经济学分析}. 第8版.}
纽约: Pearson.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtpcse.sthlp>}