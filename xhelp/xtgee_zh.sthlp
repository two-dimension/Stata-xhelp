{smcl}
{* *! version 1.4.2  30may2019}{...}
{viewerdialog xtgee "dialog xtgee"}{...}
{vieweralsosee "[XT] xtgee" "mansection XT xtgee"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtgee postestimation" "help xtgee postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[XT] xtcloglog" "help xtcloglog_zh"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{vieweralsosee "[XT] xtnbreg" "help xtnbreg_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{vieweralsosee "[XT] xtprobit" "help xtprobit_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtregar" "help xtregar_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtgee_zh##syntax"}{...}
{viewerjumpto "Menu" "xtgee_zh##menu"}{...}
{viewerjumpto "Description" "xtgee_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtgee_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtgee_zh##options"}{...}
{viewerjumpto "Examples" "xtgee_zh##examples"}{...}
{viewerjumpto "Correlation structures and the allowed spacing of observations within panel" "xtgee_zh##remarks1"}{...}
{viewerjumpto "Stored results" "xtgee_zh##results"}
{help xtgee:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[XT] xtgee} {hline 2}}通过使用 GEE 拟合总体平均面板数据模型{p_end}
{p2col:}({mansection XT xtgee:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:xtgee} {depvar} [{indepvars}] {ifin}
[{it:{help xtgee##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 21 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{cmdab:f:amily(}{it:{help xtgee##family:分布}}{cmd:)}}{depvar} 的分布{p_end}
{synopt :{cmdab:l:ink(}{it:{help xtgee##link:链接}}{cmd:)}}链接函数{p_end}

{syntab:模型 2}
{synopt :{opth exp:osure(varname)}}在模型中包含 ln({it:varname})，系数约束为 1{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，系数约束为 1{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt asis}}保留完美的预测变量{p_end}
{synopt :{opt force}}即使观察值在时间上不均匀间隔也进行估计{p_end}

{syntab:相关性}
{synopt :{cmdab:c:orr(}{it:{help xtgee##correlation:相关性}}{cmd:)}}组内相关结构{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、{opt r:obust}、{opt boot:strap} 或 {opt jack:knife}{p_end}
{synopt :{opt nmp}}使用除法 N-P，而不是默认的 N{p_end}
{synopt :{opt rgf}}将稳健方差估计乘以 (N-1)/(N-P){p_end}
{synopt :{opt s:cale(parm)}}覆盖默认的尺度参数； {it:parm} 可以是 {cmd:x2}、{cmd:dev}、{cmd:phi} 或 {it:#}{p_end}

{syntab:报告}
{synopt :{opt le:vel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}
{synopt :{opt ef:orm}}报告指数化系数{p_end}
{synopt :{it:{help xtgee##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :{it:{help xtgee##optimize_options:优化选项}}}控制优化过程；很少使用{p_end}

{synopt:{opt nodis:play}}抑制显示标题和系数{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定一个面板变量。其他相关结构除 {cmd:exchangeable} 和 {cmd:independent} 外，要求也必须指定一个时间变量。使用 {help xtset_zh}.{p_end}
INCLUDE help fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt by}、{opt mfp}、{opt mi estimate} 和
{opt statsby} 是被允许的；见 {help prefix_zh}。
{p_end}
INCLUDE help vce_mi
{marker weight}{...}
{p 4 6 2} {opt iweight}s、{opt fweight}s 和 {opt pweight}s 是被允许的；见 {help weight_zh}。权重必须在面板内保持不变.{p_end}
{p 4 6 2}{opt nodisplay} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参见 {manhelp xtgee_postestimation XT:xtgee 事后估计} 了解估计后可用的特性.{p_end}

{marker family}{...}
{synoptset 23}{...}
{synopthdr :family}
{synoptline}
{synopt :{opt gau:ssian}}高斯（正态）； {cmd:family(normal)} 是同义词{p_end}
{synopt :{opt ig:aussian}}逆高斯{p_end}
{synopt :{opt b:inomial}[{it:#}|{varname}]}伯努利/二项式{p_end}
{synopt :{opt p:oisson}}泊松{p_end}
{synopt :{opt nb:inomial}[{it:#}]}负二项式{p_end}
{synopt :{opt gam:ma}}伽马{p_end}
{synoptline}
{p2colreset}{...}

{marker link}{...}
{synoptset 23}{...}
{synopthdr :link}
{synoptline}
{synopt :{opt i:dentity}}恒等； y=y{p_end}
{synopt :{opt log}}对数； ln(y){p_end}
{synopt :{opt logi:t}}逻辑斯谛； ln{y/(1-y)}，概率的自然对数{p_end}
{synopt :{opt p:robit}}概率变换；逆高斯累计{p_end}
{synopt :{opt cl:oglog}}累加 log-log； ln{-ln(1-y)}{p_end}
{synopt :{opt pow:er}[{it:#}]}幂； y^k，其中 k=#；如果未指定，#=1{p_end}
{synopt :{opt opo:wer}[{it:#}]}概率幂； [{y/(1-y)}^k - 1]/k，其中 k=#；如果未指定，#=1{p_end}
{synopt :{opt nb:inomial}}负二项式{p_end}
{synopt :{opt rec:iprocal}}倒数； 1/y{p_end}
{synoptline}
{p2colreset}{...}

{marker correlation}{...}
{synoptset 23}{...}
{synopthdr :correlation}
{synoptline}
{synopt :{opt exc:hangeable}}可交换{p_end}
{synopt :{opt ind:ependent}}独立{p_end}
{synopt :{opt uns:tructured}}无结构{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定{p_end}
{synopt :{opt ar} {it:#}}自回归，阶数为 {it:#}{p_end}
{synopt :{opt sta:tionary} {it:#}}平稳的，阶数为 {it:#}{p_end}
{synopt :{opt non:stationary} {it:#}}非平稳的，阶数为 {it:#}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 >}
   {bf:广义估计方程 (GEE) >}
   {bf:广义估计方程 (GEE)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtgee} 拟合总体平均面板数据模型。特别是，{cmd:xtgee} 拟合广义线性模型并允许您指定面板的组内相关结构。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtgeeQuickstart:快速入门}

        {mansection XT xtgeeRemarksandexamples:说明和示例}

        {mansection XT xtgeeMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt family(family)} 指定 {depvar} 的分布； {cmd:family(gaussian)} 是默认值。

{phang}
{opt link(link)} 指定链接函数；默认值是为指定的 {opt family()} 的典型链接（{cmd:family(nbinomial)} 除外）。

{dlgtab:模型 2}

{phang}
{opth exposure(varname)} 和 {opt offset(varname)} 是指定相同内容的不同方式。 {opt exposure()} 指定一个反映每个观察值中观察到的 {depvar} 事件的暴露量的变量； ln({it:varname}) 其系数设置为 1 被代入回归方程。 {opt offset()} 则指定一个变量，直接代入对数链接函数，且其系数约束为 1；因此，暴露被假定为 e^varname。如果您正在拟合泊松回归模型，例如 {cmd:family(poisson) link(log)}，您将通过指定 {opt offset()} 来考虑暴露时间，该变量包含暴露时间的对数。

{phang}
{opt noconstant} 指定线性预测器没有截距项，从而强制通过链接函数所定义的原点。

{phang}
{opt asis} 强制保留完美的预测变量及其相关的、完美预测的观察值，并可能在最大化时产生不稳定性；参见 {manhelp probit R}。
该选项仅在选项 {cmd:family(binomial)} 的分母为 1 时被允许。

{phang}
{opt force} 指定强制估计，即使时间变量不均匀间隔。这仅与需要时间变量知识的相关结构相关。这些相关结构要求观察值均匀间隔，以便基于滞后的计算对应于恒定的时间变化。如果您指定了一个时间变量，指示观察值不均匀间隔，则不将拟合（时间依赖）模型。如果您还指定了 {opt force}，则模型将被拟合，并将假定基于时间变量排序的数据中的滞后是适当的。

{dlgtab:相关性}

{phang}
{opt corr(correlation)} 指定组内相关结构；默认值对应于相等相关模型，{cmd:corr(exchangeable)}。

{pmore}
当您指定需要滞后的相关结构时，您可以在结构名称后面添加滞后（可带空格或不带空格）；例如，{cmd:corr(ar 1)} 或 {cmd:corr(ar1)}。

{pmore}
如果您指定固定的相关结构，则需要在单词 {cmd:fixed} 后指定包含假设的相关性的矩阵名称，例如，{cmd:corr(fixed myr)}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论派生的类型（{cmd:conventional}）、对某些类型的错误规格稳健的（{cmd:robust}），以及使用自助法或抽样法的方法（{cmd:bootstrap}、{cmd:jackknife}）；参见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
{cmd:vce(conventional)}，默认值，使用传统推导的方差估计量用于广义最小二乘回归。

{pmore}
{cmd:vce(robust)} 指定使用 Huber/White/三明治方差的估计量替换默认的常规方差估计量（请参见 {it:{mansection XT xtgeeMethodsandformulas:方法和公式}} 在 {bf:[XT] xtgee} 中）。使用此选项使得 {cmd:xtgee} 即使在组内的相关性也不符合指定的相关结构的假设时也能够产生有效的标准误。在非典型链接下，它确实要求模型正确指定均值。因此， resulting 的标准误在这种情况下被标记为“半稳健”（而不是“稳健”）。尽管没有 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项，结果就像包含此选项，且您指定了在面板变量上聚类一样。

{phang}
{opt nmp}；请参见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{phang}
{opt rgf} 指定稳健方差估计乘以 (N-1)/(N-P)，其中 N 是观察值的总数，P 是估计的系数数量。此选项只能与 {cmd:family(gaussian)} 一起使用，当 {cmd:vce(robust)} 被指定或通过使用 {opt pweight}s 隐含时。使用此选项意味着稳健方差估计对于任何使用的权重的尺度不是不变的。

{phang}
{cmd:scale(x2}|{cmd:dev}|{cmd:phi}|{it:#}{cmd:)}；请参见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt eform} 显示指数化的系数和相应的标准误及置信区间，如 {help maximize_zh:[R] 最大化} 中所述。
对于 {cmd:family(binomial) link(logit)}（即逻辑回归），指数化结果为比值比；对于 {cmd:family(poisson) link(log)}（即泊松回归），指数化系数为发生率比。

INCLUDE help displayopts_list

{dlgtab:优化}

{phang}
{marker optimize_options}
{it:optimize_options} 控制迭代优化过程。这些选项很少使用。

{pmore}
{opt iter:ate(#)} 指定最大迭代次数。当迭代次数等于 # 时，优化停止并呈现当前结果，即使未达到收敛容忍度。默认值是 {cmd:iterate(100)}。

{pmore}
{opt tol:erance(#)} 指定系数向量的容忍度。当从一个迭代到下一个迭代的系数向量的相对变化小于或等于 # 时，优化过程停止。
默认是 {cmd:tolerance(1e-6)}。

{pmore}
INCLUDE help lognolog

{pmore}
{opt tr:ace} 指定在每次迭代时打印当前估计值。

{pstd}
以下选项可与 {cmd:xtgee} 一起使用，但在对话框中未显示：

{phang}
{opt nodisplay} 为程序员保留。它抑制标题和系数的显示。

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse union}{p_end}
{phang2}{cmd:. xtset id year}{p_end}

{pstd}拟合逻辑斯谛模型{p_end}
{phang2}{cmd:. xtgee union age grade not_smsa south, family(binomial)}
              {cmd:link(logit)}{p_end}

{pstd}拟合具有 AR(1) 相关性的概率模型{p_end}
{phang2}{cmd:. xtgee union age grade not_smsa south, family(binomial)}
              {cmd:link(probit) corr(ar1)}{p_end}


{marker remarks1}{...}
{title:相关结构及面板内观察值的允许间隔}

{center:{space 16}{hline 2}允许的特性{hline 2}}
{center:{space 29}不均等等距   }
{center:相关性     不平衡   间距   间隙}
{center:{hline 43}}
{center:独立        是         是      是}
{center:可交换       是         是      是}
{center:ar k         是 (*)     否       否 }
{center:平稳 k      是 (*)     否       否 }
{center:非平稳 k    是 (*)     否       否 }
{center:无结构       是         是      是}
{center:固定        是         是      是}
{center:{hline 43}}
{center:(*) 所有面板必须至少有 k+1 个观察值。}


    定义：

{phang2}1.  如果每个面板具有相同数量的观察值，则面板是平衡的。

{phang2}2.  如果观察值之间的间隔是恒定的，则面板是均匀的。

{phang2}3.  如果某些观察值缺失，则面板具有间隙。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtgee} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(df_pear)}}Pearson 卡方的自由度{p_end}
{synopt:{cmd:e(chi2_dev)}}偏差的卡方检验{p_end}
{synopt:{cmd:e(chi2_dis)}}偏差分散的卡方检验{p_end}
{synopt:{cmd:e(deviance)}}偏差{p_end}
{synopt:{cmd:e(dispers)}}偏差分散{p_end}
{synopt:{cmd:e(phi)}}尺度参数{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(tol)}}目标容忍度{p_end}
{synopt:{cmd:e(dif)}}获得的容忍度{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtgee}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:pa}{p_end}
{synopt:{cmd:e(family)}}分布族{p_end}
{synopt:{cmd:e(link)}}链接函数{p_end}
{synopt:{cmd:e(corr)}}相关结构{p_end}
{synopt:{cmd:e(scale)}}{cmd:x2}、{cmd:dev}、{cmd:phi} 或 {it:#}；
                   尺度参数{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(nmp)}}如果指定了 {cmd:nmp}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 的作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 的作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(R)}}估计的工作相关矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtgee.sthlp>}