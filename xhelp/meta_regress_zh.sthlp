{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta regress" "mansection META metaregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta regress postestimation" "help meta regress postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta summarize" "help meta summarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "meta_regress_zh##syntax"}{...}
{viewerjumpto "Menu" "meta_regress_zh##menu"}{...}
{viewerjumpto "Description" "meta_regress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_regress_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_regress_zh##options"}{...}
{viewerjumpto "Examples" "meta_regress_zh##examples"}{...}
{viewerjumpto "Stored results" "meta_regress_zh##results"}{...}
{viewerjumpto "References" "meta_regress_zh##references"}
{help meta_regress:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[META] meta regress} {hline 2}}元分析回归{p_end}
{p2col:}({mansection META metaregress:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
使用通过 meta set 或 meta esize 声明的元分析模型进行元回归

{p 8 16 2}
{cmd:meta} {cmdab:reg:ress}
{help varlist_zh:{it:调节变量}}
{ifin}
[{cmd:,} {help meta_regress##reopts:{it:重选项}}
{help meta_regress##optstbl:{it:选项}}]


{pstd}
随机效应元回归

{p 8 16 2}
{cmd:meta} {cmdab:reg:ress}
{help varlist_zh:{it:调节变量}}
{ifin}{cmd:,} 
{cmd:random}[{cmd:(}{help meta_regress##remethod:{it:重选法}}{cmd:)}]
[{help meta_regress##reopts:{it:重选项}}
{help meta_regress##optstbl:{it:选项}}]


{pstd}
固定效应元回归

{p 8 16 2}
{cmd:meta} {cmdab:reg:ress}
{help varlist_zh:{it:调节变量}}
{ifin}{cmd:,} {cmd:fixed}
[{opt mult:iplicative}
{help meta_regress##optstbl:{it:选项}}]


{pstd}
仅常数元回归

{p 8 16 2}
{cmd:meta} {cmdab:reg:ress}
{cmd:_cons}
{ifin}
[{cmd:,}
{help meta_regress##modelopts:{it:模型选项}}]


{marker reopts}{...}
{synoptset 22}{...}
{synopthdr:重选项}
{synoptline}
{synopt :{opt tau2(#)}}使用固定的研究间方差 τ^2 进行灵敏度元分析{p_end}
{synopt :{opt i2(#)}}使用固定的异质性统计量 I^2_{c -(}res{c )-} 进行灵敏度元分析{p_end}
{synopt :{opth se:(meta_regress##seadj:seadj)}}调整系数的标准误差{p_end}
{synoptline}

{marker optstbl}{...}
{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt tdist:ribution}}为系数报告 t 检验而不是 z 检验{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为元分析声明的值{p_end}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :[{cmd:no}]{opt metashow}}在输出中显示或抑制元设置信息{p_end}
{synopt :{it:{help meta_regress##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{help meta_regress##maxopts:{it:最大化选项}}}控制最大化过程；鲜少使用{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p 4 6 2}
{it:调节变量}可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp meta_regress_postestimation R:meta regress postestimation}。

{synoptset 22}{...}
INCLUDE help meta_remethod

{marker modelopts}{...}
{pstd}
{it:模型选项} 是除 {opt noconstant} 以外的任何选项。


INCLUDE help menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta regress} 执行元分析回归或元回归，这是基于研究效应大小对研究级协变量（调节变量）进行的线性回归。元回归调查了研究之间的异质性是否可以通过一个或多个调节变量来解释。你可以将元回归视为标准的元分析，该分析将调节变量纳入模型。{cmd:meta regress} 执行随机效应和固定效应的元回归。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection META metaregressQuickstart:快速开始}

        {mansection META metaregressRemarksandexamples:备注和示例}

        {mansection META metaregressMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:noconstant}; 参见 {help estimation_options_zh:[R] 估计选项}。此选项不允许与仅常数元回归一起使用。

{pstd}
选项 {cmd:random()} 和 {cmd:fixed} 在与 {cmd:meta regress} 一起指定时，会在计算期间临时覆盖通过 {helpb meta set} 或 {helpb meta esize} 声明的全局模型。选项 {cmd:random()} 和 {cmd:fixed} 不能组合使用。如果省略这些选项，则假定声明的元分析模型；请参见 [META] {mansection META metadataRemarksandexamplesDeclaringaconfidencelevelformeta-analysis:{it:为元分析声明置信水平}} 在 {bf:[META] meta data} 中。另请参见 {mansection META IntroRemarksandexamplesMeta-analysismodels:{it:元分析模型}} 在 {bf:[META] Intro} 中。

{phang}
{opt random} 和 {opt random(remethod)} 指定假设元回归使用随机效应模型；请参见 {mansection META IntroRemarksandexamplesRandom-effectsmodel:{it:随机效应模型}} 在 {bf:[META] Intro} 中。

{marker remethoddes}{...}
{phang2}
{it:重选法} 指定用于研究间方差 τ^2 的估计器类型。{it:重选法} 是 {cmd:reml}、{cmd:mle}、{cmd:ebayes}、{cmd:dlaird}、{cmd:sjonkman}、{cmd:hedges} 或 {cmd:hschmidt} 中的一个。{cmd:random} 是 {cmd:random(reml)} 的同义词。有关更多信息，请参见 {help meta_esize##options:{it:选项}} 在 {help meta_esize_zh:[META] meta esize} 中。

{phang}
{cmd:fixed} 指定假设元回归使用固定效应模型；请参见 {mansection META IntroRemarksandexamplesFixed-effectsmodel:{it:固定效应模型}} 在 {bf:[META] Intro} 中。它使用逆方差估计法；请参见 {mansection META IntroRemarksandexamplesMeta-analysisestimationmethods:{it:元分析估计方法}} 在 {bf:[META] Intro} 中。

{phang}
{it:重选项} 包括 {opt tau2(#)}、{opt i2(#)} 和 {cmd:se(khartung}[{cmd:, truncated}]{cmd:)}。这些选项用于随机效应元回归。

{phang2}
{opt tau2(#)} 指定用于随机效应元回归的研究间方差参数 τ^2 的值。此选项对于探索结果对不同研究间异质性水平的敏感性非常有用。只能指定 {cmd:tau2()} 或 {cmd:i2()} 中的一个。

{phang2}
{opt i2(#)} 指定用于随机效应元回归的残差异质性统计量 I^2_{c -(}res{c )-} 的值（以百分比表示）。此选项对于探索结果对不同研究间异质性水平的敏感性非常有用。只能指定 {cmd:i2()} 或 {cmd:tau2()} 中的一个。

{marker seadj}{...}
{phang2}
{opt se(seadj)} 指定调整 {it:seadj} 应用于系数的标准误差。此外，系数的显著性检验是基于学生 t 分布而不是正态分布。

{phang3}
{it:seadj} 是 {opt kh:artung}[{cmd:,} {opt trunc:ated}]。调整 {cmd:khartung} 指定对系数的标准误差应用 Knapp–Hartung 调整 ({help meta_bias##hartungknapp2001a:Hartung 和 Knapp 2001a}，{help meta_bias##hartungknapp2001b:2001b}；{help meta_bias##knapphartung2003:Knapp 和 Hartung 2003})，也称为 Sidik–Jonkman 调整 ({help meta_bias##sidikjonkman2002:Sidik 和 Jonkman 2002})。

{phang}
{opt multiplicative} 执行一个固定效应元回归，通过包括一个乘法方差参数 φ 来处理残余异质性。φ 被称为 "(过)散布参数"。有关详细信息，请参见 {mansection META metaregressRemarksandexamplesIntroduction:{it:简介}} 在 {bf:[META] meta regress} 中。

{phang}
{opt tdistribution} 为系数报告 t 检验而不是 z 检验。此选项在 {cmd:meta regress} 被用于进行漏斗图不对称的基于回归的检验时很有用。传统上，此测试的统计量与来自学生 t 分布的临界值进行比较，而不是默认的正态分布。此选项不能与 {cmd:se()} 选项组合使用。

{dlgtab:报告}
 
{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为元分析会话声明的值；请参见 {mansection META metadataRemarksandexamplesDeclaringaconfidencelevelformeta-analysis:{it:为元分析声明置信水平}} 在 {bf:[META] meta data} 中。另请参见 {helpb meta_set##level:level()} 在 {help meta_set_zh:[META] meta set} 中的选项。

{phang}
{opt noheader} 抑制输出头，无论是在估计时还是在重放时。

{phang}
{opt metashow} 和 {opt nometashow} 显示或抑制元设置信息。默认情况下，此信息会在输出顶部显示。你也可以在整个元分析会话中使用 {helpb meta update} 配合 {opt nometashow} 来抑制元设定输出。

INCLUDE help displayopts_list

{dlgtab:最大化}
 
{marker maxopts}{...}
{phang}
{it:最大化选项}: {opt iter:ate(#)}, {opt tol:erance(#)},
{opt nrtol:erance(#)}, {opt nonrtol:erance}（请参见 {help maximize_zh:[R] 最大化}), {opt from(#)}, 和 {opt showtrace}。这些选项控制随机效应方法 {cmd:reml}、{cmd:mle} 和 {cmd:ebayes} 在研究间方差参数 τ^2 的迭代估计。这些选项很少使用。

{phang2}
{opt from(#)} 指定估计过程中 τ^2 的初始值。默认情况下，τ^2 的初始值是非迭代的 Hedges 估计量。

{phang2}
{opt showtrace} 显示迭代日志，其中包含估计参数 τ^2、其与上一个迭代值的相对差异和缩放梯度。

{pstd}
以下选项与 {cmd:meta regress} 一起使用，但不显示在对话框中：

{phang}
{opt coeflegend}; 参见 {help estimation_options_zh:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bcgset}{p_end}

{pstd}对效应大小 {cmd:_meta_es} 根据协变量（调节变量）{cmd:latitude_c} 进行元回归{p_end}
{phang2}{cmd:. meta regress latitude_c}

{pstd}与上面相同，但假设使用 DerSimonian–Laird 随机效应方法，并请求对系数的标准误差进行 Knapp–Hartung 调整{p_end}
{phang2}{cmd:. meta regress latitude_c, random(dlaird) se(khartung)}

{pstd}假设一个研究间方差的固定值 0.2 进行元回归{p_end}
{phang2}{cmd:. meta regress latitude_c i.alloc, tau2(.1)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:meta regress} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量（研究数量）{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(chi2)}}模型卡方 Wald 检验统计量{p_end}
{synopt:{cmd:e(F)}}模型 F 统计量{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(phi)}}散布参数{p_end}
{synopt:{cmd:e(tau2)}}研究间方差{p_end}
{synopt:{cmd:e(I2_res)}}I^2_{c -(}res{c )-} 异质性统计量{p_end}
{synopt:{cmd:e(H2_res)}}H^2_{c -(}res{c )-} 异质性统计量{p_end}
{synopt:{cmd:e(R2)}}R^2 异质性测量{p_end}
{synopt:{cmd:e(Q_res)}}Cochran 的 Q 残差均匀性检验统计量{p_end}
{synopt:{cmd:e(df_Q_res)}}残差均匀性检验的自由度{p_end}
{synopt:{cmd:e(p_Q_res)}}残差均匀性检验的 p 值{p_end}
{synopt:{cmd:e(seadj)}}标准误差调整{p_end}
{synopt:{cmd:e(level)}}置信区间的置信水平{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则（使用迭代随机效应方法）{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meta regress}{p_end}
{synopt:{cmd:e(cmdline)}}按输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称，{cmd:_meta_es}{p_end}
{synopt:{cmd:e(indepvars)}}自变量名称（调节变量）{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(model)}}元分析模型{p_end}
{synopt:{cmd:e(method)}}元分析估计方法{p_end}
{synopt:{cmd:e(seadjtype)}}标准误差调整的类型{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实施 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实施 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 默认的 {cmd:predict()} 规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差–协方差矩阵{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{pstd}
{cmd:meta regress} 还创建了一个系统变量 {cmd:_meta_regweight}，该变量包含元回归权重。
{p_end}


{marker references}{...}
{title:参考文献}

{marker hartungknapp2001a}{...}
{phang}
Hartung, J. 和 G. Knapp. 2001a. 关于元分析中总体治疗效果的检验。
{it:Statistics in Medicine} 20: 1771–1782.

{marker hartungknapp2001b}{...}
{phang}
------. 2001b. 一种针对具有二元结果的对照临床试验进行元分析的精细方法。{it:Statistics in Medicine} 20: 3875–3889.

{marker knapphartung2003}{...}
{phang}
Knapp, G. 和 J. Hartung. 2003. 针对单一协变量的随机效应元回归的改进检验。
{it:Statistics in Medicine} 22: 2693–2710.

{marker sidikjonkman2002}{...}
{phang}
Sidik, K. 和 J. N. Jonkman. 2002. 元分析的简单置信区间。{it:Statistics in Medicine} 21: 3153–3159.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_regress.sthlp>}