{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta bias" "mansection META metabias"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta funnelplot" "help meta funnelplot"}{...}
{vieweralsosee "[META] meta regress" "help meta regress"}{...}
{vieweralsosee "[META] meta summarize" "help meta summarize"}{...}
{vieweralsosee "[META] meta trimfill" "help meta trimfill"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "meta_bias_zh##syntax"}{...}
{viewerjumpto "Menu" "meta_bias_zh##menu"}{...}
{viewerjumpto "Description" "meta_bias_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_bias_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_bias_zh##options"}{...}
{viewerjumpto "Examples" "meta_bias_zh##examples"}{...}
{viewerjumpto "Stored results" "meta_bias_zh##results"}{...}
{viewerjumpto "References" "meta_bias_zh##references"}
{help meta_bias:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[META] meta bias} {hline 2}}小样本效应的元分析检验{p_end}
{p2col:}({mansection META metabias:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基于回归的小样本效应检验

{pmore}
使用指定的元分析模型进行检验，该模型通过 meta set 或 meta esize 声明

{p 12 16 2}
{cmd:meta bias}
[{help varlist_zh:{it:moderators}}]
{ifin}{cmd:,}
{help meta_bias##regtest:{it:regtest}}
[{help meta_bias##modelopts:{it:modelopts}}]


{pmore}
随机效应元分析模型

{p 12 16 2}
{cmd:meta bias}
[{help varlist_zh:{it:moderators}}]
{ifin}{cmd:,}
{help meta_bias##regtest:{it:regtest}}
{cmd:random}[{cmd:(}{help meta_funnelplot##remethod:{it:remethod}}{cmd:)}]
[{opth se:(meta_bias##seadj:seadj)}
{help meta_bias##optstbl:{it:options}}]


{pmore}
固定效应元分析模型

{p 12 16 2}
{cmd:meta bias}
{ifin}{cmd:,}
{help meta_bias##regtest:{it:regtest}}
{cmd:common}
[{help meta_bias##optstbl:{it:options}}]


{pmore}
传统检验

{p 12 16 2}
{cmd:meta bias}
{ifin}{cmd:,}
{help meta_bias##regtest:{it:regtest}}
{opt trad:itional}
[{help meta_bias##optstbl:{it:options}}]



{pstd}
用于小样本效应的非参数秩相关检验

{p 12 16 2}
{cmd:meta bias}
{ifin}{cmd:,} {cmd:begg}
[[{cmd:no}]{opt metashow} {opt detail}]


{marker regtest}{...}
{synoptset 22}{...}
{synopthdr:regtest}
{synoptline}
{synopt :{opt egger}}Egger 检验{p_end}
{synopt :{opt harb:ord}}Harbord 检验{p_end}
{synopt :{opt peters}}Peters 检验{p_end}
{synoptline}

{marker modelopts}{...}
{pstd}
{it:modelopts} 是与声明模型相关的任何选项。

{synoptset 22}{...}
包括帮助文档 meta_remethod

{marker optstbl}{...}
{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt tdist:ribution}}报告 t 检验而不是 z 检验{p_end}
{synopt :[{cmd:no}]{opt metashow}}在输出中显示或抑制元设置{p_end}
{synopt :{opt detail}}显示中间估计结果{p_end}

{syntab:最大化}
{synopt :{help meta_bias##maxopts:{it:maximize_options}}}控制研究之间方差的最大化过程{p_end}
{synoptline}
{p 4 6 2}
{it:moderators} 可以包含因子变量；见 {help fvvarlist_zh}。


包括帮助文档 menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta bias} 执行元分析中小样本效应的存在检验，也称为漏斗图不对称性检验和出版偏倚检验。提供三种基于回归的检验和一种非参数秩相关检验。对于基于回归的检验，您可以包括调节变量以考虑潜在的研究间异质性。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection META metabiasQuickstart:快速开始}

        {mansection META metabiasRemarksandexamples:备注和例子}

        {mansection META metabiasMethodsandformulas:方法与公式}

{pstd}
上述章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{pstd}
必须指定 {cmd:egger}、{cmd:harbord}、{cmd:peters} 或 {cmd:begg}（或其同义词）之一。除了传统版本的基于回归的检验外，还有它们的随机效应版本及允许调节变量的扩展。

{phang}
{cmd:egger}（同义词 {cmd:esphillips}）指定执行 {help meta_bias##eggeretal1997:Egger et al. (1997)} 的回归检验。该检验在文献中被称为 Egger 检验。它是在加权回归中对效应值 {cmd:_meta_es} 与其标准误差 {cmd:_meta_se} 的斜率进行检验，选项上可以调整 {it:moderators}。该检验通常在二元结果中有增加的 I 型错误率。

{phang}
{cmd:harbord}（同义词 {cmd:hesterne}）指定执行 {help meta_bias##harbordeggersterne2006:Harbord, Egger, and Sterne (2006)} 的回归检验。该检验在文献中被称为 Harbord 检验。它是在加权回归中对 Z_j/V_j 与 1/√(V_j) 的斜率进行检验，选项上可以调整 {it:moderators}，其中 Z_j 是似然函数的得分，V_j 是得分方差。该检验用于具有效应值为对数比率和对数风险比的二元数据。旨在减少效应值估计及其相应标准误差之间的相关性，这在使用二元数据的 Egger 检验中是固有的。

{phang}
{cmd:peters}（同义词 {cmd:petersetal}）指定执行 {help meta_bias##petersetal2006:Peters et al. (2006)} 的回归检验。该检验在文献中被称为 Peters 检验。它是在加权回归中对效应值 {cmd:_meta_es} 与样本大小的倒数 1/n_j 的斜率进行检验，选项上可以调整 {it:moderators}。Peters 检验在二元数据中用于对数比率。由于它对效应值进行倒数样本大小的回归，因此它们在结构上是独立的。

{phang}
{cmd:begg}（同义词 {cmd:bmazumdar}）指定执行 {help meta_bias##beggmazumdar1994:Begg and Mazumdar (1994)} 的非参数秩相关检验。这不是基于回归的检验，因此仅允许选项 {cmd:metashow}、{cmd:nometashow} 和 {cmd:detail}。该检验在文献中被称为 Begg 检验。该检验在文献中不再推荐，仅为完整性而提供。

{pstd}
选项 {cmd:random()}、{cmd:common} 和 {cmd:fixed} 在与 {cmd:meta bias} 连用以进行基于回归的检验时，会暂时覆盖通过 {helpb meta set} 或 {helpb meta esize} 声明的全局模型。选项 {cmd:random()}、{cmd:common} 和 {cmd:fixed} 不能结合使用。如果省略这些选项，则假定使用声明的元分析模型；详见
{mansection META metadataRemarksandexamplesDeclaringameta-analysismodel:{it:声明元分析模型}}
在 {bf:[META] meta data} 中。另见 
{mansection META IntroRemarksandexamplesMeta-analysismodels:{it:元分析模型}}
在 {bf:[META] Intro} 中。

{phang}
{opt random} 和 {opt random(remethod)} 指定基于回归的检验假定随机效应模型；详见
{mansection META IntroRemarksandexamplesRandom-effectsmodel:{it:随机效应模型}}
在 {bf:[META] Intro} 中。

{marker remethoddes}{...}
{phang2}
{it:remethod} 指定研究之间方差 τ^2 的估计类型。 {it:remethod} 是 {cmd:reml}、{cmd:mle}、{cmd:ebayes}、{cmd:dlaird}、{cmd:sjonkman}、{cmd:hedges} 或 {cmd:hschmidt} 之一。{cmd:random} 是 {cmd:random(reml)} 的同义词。有关更多信息，请参见
{help meta_esize##options:{it:选项}} 在
{help meta_esize_zh:[META] meta esize} 中。

{phang}
{cmd:common} 指定基于回归的检验假定常效应模型；详见
{mansection META IntroRemarksandexamplesCommon-effect(fixed-effect)model:{it:常效应（固定效应）模型}}
在 {bf:[META] Intro} 中。使用逆方差估计方法；详见
{mansection META IntroRemarksandexamplesMeta-analysisestimationmethods:{it:元分析估计方法}}
在 {bf:[META] Intro} 中。另见
{mansection META metadataRemarksandexamplesfixedvscommon:关于常效应与固定效应模型的讨论}
在 {bf:[META] meta data} 中。 {cmd:common} 在存在 {it:moderators} 时不允许使用。

{phang}
{cmd:fixed} 指定基于回归的检验假定固定效应模型；详见
{mansection META IntroRemarksandexamplesFixed-effectsmodel:{it:固定效应模型}}
在 {bf:[META] Intro} 中。使用逆方差估计方法；详见 
{mansection META IntroRemarksandexamplesMeta-analysisestimationmethods:{it:元分析估计方法}}
在 {bf:[META] Intro} 中。另见
{mansection META metadataRemarksandexamplesfixedvscommon:关于常效应与固定效应模型的讨论}
在 {bf:[META] meta data} 中。

{marker seadj}{...}
{phang}
{opt se(seadj)} 指定对系数的标准误差应用调整 {it:seadj}。此外，系数的显著性检验基于 Student's t 分布而不是正态分布。 {cmd:se()} 仅允许与随机效应模型一起使用。

{phang2}
{it:seadj} 是 {opt kh:artung}[{cmd:,} {opt trunc:ated}]。调整 {cmd:khartung} 指定对系数的标准误差应用 Knapp–Hartung 调整
({help meta_bias##hartungknapp2001a:Hartung 和 Knapp 2001a},
{help meta_bias##hartungknapp2001b:2001b};
{help meta_bias##knapphartung2003:Knapp 和 Hartung 2003}),
也称为 Sidik–Jonkman 调整
({help meta_bias##sidikjonkman2002:Sidik 和 Jonkman 2002}）。

{phang}
{opt traditional} 指定执行所选基于回归的检验的传统版本。此选项相当于指定选项 {cmd:fixed}、{cmd:multiplicative} 和 {cmd:tdistribution}。不能与 {it:moderators} 一起指定。

{phang}
{opt multiplicative} 执行固定效应的基于回归检验，通过引入乘法方差参数 φ 来考虑残余异质性。 φ 被称为“（过）离散参数”。有关详细信息，请见
{mansection META metaregressRemarksandexamplesIntroduction:{it:简介}}
在 {bf:[META] meta regress} 中。

{phang}
{opt tdistribution} 报告 t 检验而不是 z 检验。此选项不能与选项 {opt se()} 结合使用。

{phang}
{opt metashow} 和 {opt nometashow} 显示或抑制元设置信息。默认情况下，此信息在输出的顶部显示。您也可以与 {helpb meta update} 一起指定 {opt nometashow} 以抑制整个元分析会话的元设置输出。

{phang}
{opt detail} 指定显示中间估计结果。对于基于回归的检验，将显示来自回归估计的结果。对于非参数检验，将显示来自 {cmd:ktau} 的结果
({help spearman_zh:[R] spearman})。

{dlgtab:最大化}
 
{marker maxopts}{...}
{phang}
{it:maximize_options}: {opt iterate(#)}, {opt tolerance(#)},
{opt nrtolerance(#)}, {opt nonrtolerance}
（见 {help maximize_zh:[R] Maximize}），{opt from(#)}，和 {opt showtrace}。这些选项控制使用随机效应方法 {cmd:reml}、{cmd:mle} 和 {cmd:ebayes} 对研究间方差参数 τ^2 的迭代估计。通常这些选项不被使用。

{phang2}
{opt from(#)} 指定在估计期间 τ^2 的初始值。默认情况下，τ^2 的初始值为非迭代的 Hedges 估计值。

{phang2}
{opt showtrace} 显示迭代日志，包含估计的参数 τ^2、与上一次迭代的值的相对差异及缩放梯度。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pupiliqset}{p_end}

{pstd}使用 Egger 回归检验测试小样本效应{p_end}
{phang2}{cmd:. meta bias, egger}

{pstd}如上所述，但包括调节变量 {cmd:week1} 以考虑由 {cmd:week1} 引起的研究间异质性{p_end}
{phang2}{cmd:. meta bias i.week1, egger}

{pstd}如上所述，但假定在基于回归的检验中使用经验贝叶斯随机效应方法来估计随机效应方差{p_end}
{phang2}{cmd:. meta bias i.week1, egger random(ebayes)}

{pstd}请求 Egger 检验的传统版本{p_end}
{phang2}{cmd:. meta bias, egger traditional}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nsaidsset, clear}

{pstd}使用 Harbord 回归检验测试小样本效应，并显示所执行的元回归的详细输出{p_end}
{phang2}{cmd:. meta bias, harbord detail}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
对于基于回归的检验，{cmd:meta bias} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(beta1)}}主斜率系数的估计{p_end}
{synopt:{cmd:r(se)}}斜率估计的标准误差{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(t)}}t 统计量{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(testtype)}}检验类型： {cmd:egger}、{cmd:harbord} 或 {cmd:peters}{p_end}
{synopt:{cmd:r(model)}}元分析模型{p_end}
{synopt:{cmd:r(method)}}元分析估计方法{p_end}
{synopt:{cmd:r(moderators)}}用于基于回归检验的调节变量{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(table)}}回归结果{p_end}


{pstd}
对于 Begg 检验，{cmd:meta bias} 将以下内容存储在 {cmd:r()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(score)}}Kendall 分数估计{p_end}
{synopt:{cmd:r(se_score)}}Kendall 分数的标准误差{p_end}
{synopt:{cmd:r(z)}}z 检验统计量{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(testtype)}}{cmd:begg}{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker beggmazumdar1994}{...}
{phang}
Begg, C. B., 和 M. Mazumdar. 1994. 漏斗偏倚的秩相关检验的操作特性. {it:生物统计学} 50: 1088–1101.

{marker eggeretal1997}{...}
{phang}
Egger, M., G. Davey Smith, 和 A. N. Phillips. 1997. 元分析：原理和程序. {it:英国医学杂志} 315: 1533–1537.

{marker harbordeggersterne2006}{...}
{phang}
Harbord, R. M., M. Egger, 和 J. A. C. Sterne. 2006. 用于二元终点的对照试验元分析中小样本效应的修正检验. {it:医学统计} 25: 3443–3457.

{marker hartungknapp2001a}{...}
{phang}
Hartung, J., 和 G. Knapp. 2001a. 在元分析中测试整体治疗效果的工作. {it:医学统计} 20: 1771–1782.

{marker hartungknapp2001b}{...}
{phang}
------. 2001b. 一种用于元分析的改良方法，针对具有二元结果的对照临床试验. {it:医学统计} 20: 3875–3889.

{marker knapphartung2003}{...}
{phang}
Knapp, G., 和 J. Hartung. 2003. 随机效应元回归的新检验. {it:医学统计} 22: 2693–2710.

{marker petersetal2006}{...}
{phang}
Peters, J. L., A. J. Sutton, D. R. Jones, K. R. Abrams, 和 L. Rushton. 2006. 在元分析中检测出版偏倚的两种方法的比较. {it:美国医学会期刊} 295: 676–680.

{marker sidikjonkman2002}{...}
{phang}
Sidik, K., 和 J. N. Jonkman. 2002. 元分析的简单置信区间. {it:医学统计} 21: 3153–3159.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_bias.sthlp>}