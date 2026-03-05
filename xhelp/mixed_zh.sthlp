{smcl}
{* *! version 1.2.12  12dec2018}{...}
{viewerdialog mixed "dialog mixed"}{...}
{vieweralsosee "[ME] mixed" "mansection ME mixed"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mixed postestimation" "help mixed postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: mixed" "help bayes mixed"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] meglm" "help meglm_zh"}{...}
{vieweralsosee "[ME] menl" "help menl_zh"}{...}
{vieweralsosee "[XT] xtrc" "help xtrc_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{viewerjumpto "语法" "mixed_zh##syntax"}{...}
{viewerjumpto "菜单" "mixed_zh##menu"}{...}
{viewerjumpto "描述" "mixed_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mixed_zh##linkspdf"}{...}
{viewerjumpto "选项" "mixed_zh##options"}{...}
{viewerjumpto "备注" "mixed_zh##remarks"}{...}
{viewerjumpto "示例" "mixed_zh##examples"}{...}
{viewerjumpto "存储结果" "mixed_zh##results"}{...}
{viewerjumpto "参考文献" "mixed_zh##references"}
{help mixed:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[ME] mixed} {hline 2}}多层次混合效应线性回归
{p_end}
{p2col:}({mansection ME mixed:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{opt mixed} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help mixed##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help mixed##weight:权重}}]
	[{cmd:,} {it:{help mixed##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为下列之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help mixed##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量值之间的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}
		[{cmd:,} {it:{help mixed##re_options:随机效应选项}}]

{p 4 4 2}
    {it:levelvar} 是用来识别随机效应的组结构的变量，或者是 {cmd:_all}，表示一个包含所有观测值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:截距}}从固定效应方程中抑制常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(mixed##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:截距}}从随机效应方程中抑制常数项{p_end}
{synopt :{opth fw:eight(exp)}}在更高层次的频率权重{p_end}
{synopt :{opth pw:eight(exp)}}在更高层次的抽样权重{p_end}

{synopt :{opt col:linear}}保留共线变量{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt:{opt ml:e}}通过最大似然法 (ML) 拟合模型；默认{p_end}
{synopt:{opt reml}}通过限制最大似然法 (REML) 拟合模型{p_end}
{synopt:{cmdab:dfm:ethod(}{it:{help mixed##df_method:df_method}}{cmd:)}}指定计算自由度 (DF) 的方法{p_end}
{synopt:{cmd: pwscale(}{it:{help mixed##scale_method:scale_method}}{cmd:)}}控制双层模型中抽样权重的缩放{p_end}
{synopt:{cmdab:res:iduals(}{it:{help mixed##rspec:rspec}}{cmd:)}}残差误差的结构{p_end}

{syntab:标准误/稳健}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}，{cmdab:r:obust} 或 {cmdab:cl:uster} {it:clustvar}；除 {cmd:oim} 之外的类型可能无法与 {cmd:dfmethod()} 结合使用{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt var:iance}}显示随机效应和残差误差参数估计为方差和协方差；默认设置{p_end}
{synopt :{opt stddev:iations}}以标准差和相关性显示随机效应和残差误差参数的估计{p_end}
{synopt :{cmdab:dftab:le(}{it:{help mixed##dftable:dftable}}{cmd:)}}指定固定效应表内容；需要在估计时使用 {cmd:dfmethod()}{p_end}
{synopt :{opt noret:able}}抑制随机效应表{p_end}
{synopt :{opt nofet:able}}抑制固定效应表{p_end}
{synopt :{opt estm:etric}}使用存储在 {cmd:e(b)} 中的度量显示参数估计{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制汇总组的表{p_end}
{synopt :{opt nostd:err}}不估计随机效应参数的标准误{p_end}
{synopt :{it:{help mixed##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab :EM 选项}
{synopt :{opt emiter:ate(#)}}EM迭代的数量；默认值为 {cmd:emiterate(20)}{p_end}
{synopt :{opt emtol:erance(#)}}EM收敛容忍度；默认值为 {cmd:emtolerance(1e-10)}{p_end}
{synopt :{opt emonly}}仅使用EM拟合模型{p_end}
{synopt :{opt emlog}}显示EM迭代日志{p_end}
{synopt :{opt emdot:s}}将EM迭代显示为点{p_end}

{syntab :最大化}
{synopt :{it:{help mixed##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}
{synopt :{opt matsqrt}}通过使用矩阵平方根参数化方差成分；默认设置{p_end}
{synopt :{opt matlog}}通过使用矩阵对数参数化方差成分{p_end}

{synopt :{opt small}}重放小样本推断结果{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{marker vartype}{...}
{synopthdr :vartype}
{synoptline}
{synopt :{opt ind:ependent}}每个随机效应一个唯一的方差参数，所有协方差为 0；除非使用 {bf:R.} 符号，否则为默认值{p_end}
{synopt :{opt exc:hangeable}}随机效应的方差相等，且存在一组共同的成对协方差{p_end}
{synopt :{opt id:entity}}随机效应的方差相等，所有协方差为 0；如果使用 {bf:R.} 符号，则为默认值{p_end}
{synopt :{opt un:structured}}所有方差和协方差被分别估计{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{marker df_method}{...}
{synopthdr :df_method}
{synoptline}
{synopt :{opt res:idual}}残差自由度，n - rank(X){p_end}
{synopt :{opt rep:eated}}重复测量方差分析{p_end}
{synopt :{opt anova}}方差分析{p_end}
{synopt :{opt sat:terthwaite}[{cmd:,} {it:{help mixed##dfopts:dfopts}}]}广义Satterthwaite近似；仅支持REML估计{p_end}
{synopt :{opt kr:oger}[{cmd:,} {it:{help mixed##dfopts:dfopts}}]}Kenward-Roger；仅支持REML估计{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{marker dftable}{...}
{synopthdr :dftable}
{synoptline}
{synopt :{opt def:ault}}测试统计量、p值和置信区间；默认值{p_end}
{synopt :{opt ci}}DF和置信区间{p_end}
{synopt :{opt pv:alue}}DF、测试统计量和p值{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}{it:indepvars} 可能包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}{it:depvar}，{it:indepvars} 和 {it:varlist} 可能包含 
         时间序列运算符；见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}{cmd:bayes}，{cmd:bootstrap}，{cmd:by}，{cmd:jackknife},
{cmd:mi estimate}，{cmd:rolling} 和 {cmd:statsby} 是允许的；见
{help prefix_zh}。更多细节，请见 
{manhelp bayes_mixed BAYES:bayes: mixed}。{p_end}
{p 4 6 2}{cmd:mi estimate} 在指定 {cmd:dfmethod()} 时不被允许。{p_end}
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{marker weight}{...}
{p 4 6 2}{opt pweight} 和 {opt fweight} 是允许的；见 {help weight_zh}。
但是，如果指定了选项 {cmd:reml} 或选项 {cmd:dfmethod()}，则不允许使用任何权重。{p_end}
{p 4 6 2}
{opt small}、{opt collinear} 和 {opt coeflegend} 在对话框中不显示。{p_end}
{p 4 6 2}有关估计后可用功能的信息，请参见 {manhelp mixed_postestimation ME:mixed postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层混合效应模型 > 线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mixed} 拟合线性混合效应模型。这些模型也称为多层模型或层级线性模型。线性混合效应模型的整体误差分布假定为高斯分布，并且可以建模最低级别组内的异方差性和相关性。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME mixedQuickstart:快速入门}

        {mansection ME mixedRemarksandexamples:备注和示例}

        {mansection ME mixedMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt noconstant} 抑制常数（截距）项，可以在固定效应方程和任何随机效应方程中指定。

{phang}{opt covariance(vartype)} 指定随机效应的协方差矩阵的结构，且可以为每个随机效应方程指定。{it:vartype} 是以下之一：{cmd:independent}、{cmd:exchangeable}、{cmd:identity} 或 {cmd:unstructured}。

{phang2}
{cmd:independent} 允许在随机效应方程中为每个随机效应分配不同的方差，并假设所有协方差为 0。

{phang2}
{cmd:exchangeable} 为所有随机效应指定一个共同的方差和一组共同的成对协方差。

{phang2}
{cmd:identity} 是 “单位矩阵的倍数”；即所有方差相等且所有协方差为 0。

{phang2}
{cmd:unstructured} 允许所有方差和协方差被单独估计。如果方程包含 p 个随机效应项，则非结构化的协方差矩阵将具有 p(p+1)/2 个唯一参数。

{pmore}
{cmd:covariance(independent)} 是默认值，除非使用 {bf:R.} 符号，在这种情况下 {cmd:covariance(identity)} 为默认值，并且仅允许 {cmd:covariance(identity)} 和 {cmd:covariance(exchangeable)}。

{phang}
{opth fweight(exp)} 在多层模型中指定更高层次的频率权重，而第一层（观测值层）的频率权重则以通常的方式指定，例如 {cmd:[fw=}{it:fwtvar1}{cmd:]}。{it:exp} 可以是任何有效的 Stata 变量，您可以在多层模型的第二层及更高层指定 {cmd:fweight()}。例如，在双层模型中：

{p 12 16 4}{cmd:. mixed} {it:fixed_portion} {cmd:[fw = wt1]}
{cmd:|| school:} ... {cmd:, fweight(wt2)} ...{p_end}

{pmore}
变量 {cmd:wt1} 将包含第一层（观测层）频率权重，而 {cmd:wt2} 将包含第二层（学校层）频率权重。

{phang}
{opth pweight(exp)} 在多层模型中指定较高层的抽样权重，而第一层（观测层）的抽样权重则以通常的方式指定，例如 {cmd:[pw=}{it:pwtvar1}{cmd:]}。{it:exp} 可以是任何有效的 Stata 变量，您可以在多层模型的每一层的第二层及更高层中指定 {cmd:pweight()}。例如，在双层模型中：

{p 12 16 4}{cmd:. mixed} {it:fixed_portion} {cmd:[pw = wt1]}
{cmd:|| school:} ... {cmd:, pweight(wt2)} ...{p_end}

{pmore}
变量 {cmd:wt1} 将包含第一层（观测层）抽样权重，而 {cmd:wt2} 将包含第二层（学校层）抽样权重。

{pmore}
有关多层模型中抽样权重使用的信息，请参见下面的 {help mixed##sampling:{it:使用抽样权重的备注}}。

{phang}
{opt mle} 和 {opt reml} 指定拟合模型的统计方法。

{phang2}
{opt mle}，默认，指定使用ML拟合模型。
选项 {cmd:dfmethod(satterthwaite)} 和 {cmd:dfmethod(kroger)} 在ML估计下不受支持。

{phang2}
{opt reml} 指定使用REML拟合模型，也称为限制最大似然估计。

{marker options_df_method}{...}
{phang}
{opt dfmethod(df_method)} 请求报告固定效应（系数）的假设检验使用小样本调整。默认情况下，推断基于测试统计量的抽样分布的大样本近似，使用正态和卡方分布。在选择DF方法时应谨慎；有关详细信息，请参见 {mansection ME mixedRemarksandexamplesSmall-sampleinferenceforfixedeffects:{it:固定效应的小样本推断}} 中的 {bf:[ME] mixed}。

{pmore}
当指定 {opt dfmethod(df_method)} 时，测试统计量的抽样分布根据请求的方法进行近似。{it:df_method} 是以下之一：{opt residual}、{opt repeated}、{opt anova}、{opt satterthwaite} 或 {opt kroger}。

{phang2}
{opt residual} 使用残差自由度、n - rank(X)，作为所有固定效应测试的DF。对于没有随机效应的线性模型，具有独立和同分布的误差，固定效应的测试统计量的分布是自由的t分布。对于其他混合效应模型，此方法通常导致测试统计量的实际抽样分布的较差近似。

{phang2}
{opt repeated} 使用重复测量方差分析法计算DF。它适用于具有球形相关误差结构的平衡重复测量设计。它将残差自由度划分为主观间的自由度和主观内的自由度。{cmd:repeated} 仅在双层模型中支持。对于更复杂的混合效应模型或不平衡数据，此方法通常导致测试统计量的实际抽样分布的较差近似。

{phang2}
{opt anova} 使用传统的方差分析法计算DF。根据此方法，给定变量的固定效应测试的DF取决于该变量是否还包含在任何随机效应方程中。对于具有平衡设计的传统方差分析模型，此方法提供了测试统计量的精确抽样分布。对于更复杂的混合效应模型或不平衡数据，此方法通常导致测试统计量的实际抽样分布的较差近似。

{phang2}
{cmd:satterthwaite}[{cmd:,} {it:dfopts}] 实现了 {help mixed##S1946:Satterthwaite（1946）} 的一个推广，使要么不平衡、要么复杂的混合效应模型的未知测试统计量的抽样分布进行近似。此方法仅在REML估计下支持。

{phang2}
{cmd:kroger}[{cmd:,} {it:dfopts}] 实现了 {help mixed##KR1997:Kenward和Roger（1997）} 方法，旨在近似复杂线性混合效应模型的测试统计量的未知抽样分布。此方法仅在REML估计下支持。

{marker dfopts}{...}
{pmore}
{it:dfopts} 是 {opt eim} 或 {opt oim}。

{phang3}
{opt eim} 指定使用期望信息矩阵计算 Satterthwaite 或 Kenward-Roger 自由度。这是默认选项。

{phang3}
{opt oim} 指定使用观察到的信息矩阵计算 Satterthwaite 或 Kenward-Roger 自由度。

{pmore} 
残差、重复和方差分析方法仅在测试统计量的抽样分布已知为 t 或 F 时适用。通常，仅对具有简单协方差结构的某些线性混合效应模型及平衡数据知道这些。这些方法可用于 ML 和 REML 估计。

{pmore}
对于不平衡数据或具有复杂协方差结构的平衡数据，测试统计量的抽样分布未知，只能近似。Satterthwaite 和 Kenward-Roger 方法在这些情况下提供了近似。根据 {help mixed##SMF2002:Schaalje, McBride, 和 Fellingham（2002）}，一般来说，Kenward-Roger 方法应优于 Satterthwaite 方法。然而，在某些情况下，这两种方法预计将表现相似，例如在复合对称协方差结构中。Kenward-Roger 方法的计算需求高于 Satterthwaite 方法。两种方法仅在 REML 估计下可用。有关DF方法的示例和更详细的描述，请参见 {mansection ME mixedRemarksandexamplesSmall-sampleinferenceforfixedeffects:{it:固定效应的小样本推断}} 中的 {it:备注和示例}。

{pmore}
{cmd:dfmethod()} 不能与加权估计、{cmd:mi estimate} 前缀或 {cmd:vce()} 结合使用，除非它是默认值 {cmd:vce(oim)}。

{marker scale_method}{...}
{phang}
{cmd:pwscale(}{it:scale_method}{cmd:)} 控制双层模型中抽样权重（如果指定）的缩放。{it:scale_method} 是以下之一：{cmd:size}、{cmdab:eff:ective} 或 {cmd:gk}。

{phang2}
{cmd:size} 指定第一层（观测层）权重缩放，以便其总和等于相应的第二层簇的样本大小。第二层的抽样权重保持不变。

{phang2}
{cmd:effective} 指定第一层权重缩放，以便其总和等于相应的第二层簇的有效样本大小。第二层的抽样权重保持不变。

{phang2}
{cmd:gk} 指定 {help mixed##GK1996:Graubard 和 Korn（1996）} 方法。在此方法下，第二层权重被设置为第一层和第二层权重的乘积的簇平均值，并将第一层权重设置为 1。

{pmore}
{cmd:pwscale()} 仅在双层模型中支持。有关使用 {cmd:pwscale()} 的更多细节，请参见 {mansection ME mixedRemarksandexamplesSurveydata:{it:调查数据}} 中的 {it:备注和示例}。{cmd:pwscale()} 不能与 {cmd:dfmethod()} 选项结合使用。

{marker rspec}{...}
{phang}{opt residuals(rspec)} 指定线性混合模型中最低级别组（由观测值构成的第二层）的残差误差结构。例如，如果您正在为嵌套在学校中的班级建模随机效应，则 {cmd:residuals()} 指的是班级内观测值的残差方差-协方差结构，最低级别组。{it:rspec} 的语法如下：

{phang3}
{it:restype} [{cmd:,} {help mixed##residual_options:{it:残差选项}}]

{pmore}
{it:restype} 是以下之一：
{cmdab:ind:ependent}、{cmdab:exc:hangeable}、{cmd:ar} {it:#}、{cmd:ma} {it:#}、
{cmdab:un:structured}、{cmdab:ba:nded} {it:#}、{cmdab:to:eplitz} {it:#}，或 {cmdab:exp:onential}。
      
{phang2}
{cmd:independent} 是默认选项，指定所有残差是独立且同分布的高斯分布，具有一个共同的方差。当与 {opth by(varname)} 结合使用时，仍然假设独立性，但您为 {it:varname} 的每个级别估计不同的方差。与下面描述的结构不同，{it:varname} 不需要在组内保持不变。

{phang2}
{cmd:exchangeable} 估计两个参数，一个共同的组内方差和一个共同的成对协方差。当与 {opth by(varname)} 结合使用时，这两个参数为 {it:varname} 的每个级别进行不同估计。因为您要对组内协方差进行建模，所以 {it:varname} 必须在最低级别组内保持不变。

{phang2}
{cmd:ar} {it:#} 假设组内误差具有特定阶数为 {it:#} 的自回归（AR）结构；{cmd:ar 1} 为默认值。{opth t(varname)} 选项是必需的，其中 {it:varname} 是整数值时间变量，用于对组内观测值进行排序以及确定后续观测值之间的滞后。任何不连续的时间值将被视为间隔。对于此结构，估计 {it:#} + 1 个参数（{it:#} 个AR系数和一个整体误差方差）。{it:restype} {cmd:ar} 可与 {opt by(varname)} 结合使用，但 {it:varname} 必须在组内保持不变。

{phang2}
{cmd:ma} {it:#} 假设组内误差具有特定阶数为 {it:#} 的移动平均（MA）结构；{cmd:ma 1} 为默认值。{opth t(varname)} 选项是必需的，其中 {it:varname} 是整数值时间变量，用于对组内观测值进行排序以及确定后续观测值之间的滞后。任何不连续的时间值将被视为间隔。对于此结构，估计 {it:#} + 1 个参数（{it:#} 个MA系数和一个整体误差方差）。{it:restype} {cmd:ma} 可与 {opt by(varname)} 结合使用，但 {it:varname} 必须在组内保持不变。

{phang2}
{cmd:unstructured} 是最通用的结构；它估计每个组内误差的不同方差和每个组内误差对之间的不同协方差。{opth t(varname)} 选项是必需的，其中 {it:varname} 是非负整数值变量，用于识别每组内的观测值。组可以是不平衡的，即并非每个组内都需要观察 {opt t()} 的所有级别，但您不能在任何特定组内重复 {opt t()} 值。当您有 p 个 {opt t()} 的层次时，则估计 p(p+1)/2 个参数。{it:restype} {cmd:unstructured} 可与 {opt by(varname)} 结合使用，但 {it:varname} 必须在组内保持不变。

{phang2}
{cmd:banded} {it:#} 是 {cmd:unstructured} 的一个特例，限制估计为前 {it:#} 个副对角线内的协方差，并将此带外的协方差设为 0。{opth t(varname)} 选项是必需的，其中 {it:varname} 是一个非负整数值变量，用于识别每组内的观测值。{it:#} 是介于 0 和 p-1 之间的整数，p 是 {opt t()} 的级别数量。默认情况下，{it:#} 为 p-1；即协方差矩阵的所有元素均被估计。当 {it:#} 为 0 时，仅对协方差矩阵的对角元素进行估计。{it:restype} {cmd:banded} 可与 {opt by(varname)} 结合使用，但 {it:varname} 必须在组内保持不变。

{phang2}
{cmd:toeplitz} {it:#} 假设组内误差具有 Toeplitz 结构，具体为阶数 {it:#}，其协方差与小于或等于 {it:#} 的时间滞后保持不变，大于 {it:#} 的滞后则为 0。{opth t(varname)} 选项是必需的，其中 {it:varname} 是整数值时间变量，用于对组内观测值进行排序以及确定后续观测值之间的滞后。{it:#} 是介于 1 和最大观察到的滞后（默认值）之间的整数。任何不连续的时间值将被视为间隔。对于此结构，估计 {it:#} + 1 个参数（{it:#} 个相关性和一个整体误差方差）。{it:restype} {cmd:toeplitz} 可与 {opt by(varname)} 结合使用，但 {it:varname} 必须在组内保持不变。

{phang2}
{cmd:exponential} 是 AR 协方差模型的推广，允许不等间隔和非整数值的时间。{opth t(varname)} 选项是必需的，其中 {it:varname} 是实值。对于指数协方差模型，两个误差之间的相关性是参数 rho 的差的绝对值的生成。对于此结构，估计两个参数（相关性参数 rho 和一个整体误差方差）。{it:restype} {cmd:exponential} 可与 {opt by(varname)} 结合使用，但 {it:varname} 必须在组内保持不变。

{marker residual_options}{...}
{pmore}
{it:残差选项} 是 {opth by(varname)} 和 {opt t(varname)}。

{phang2}
{opt by(varname)} 用于 {opt residuals()} 选项，并指定为每个 {it:varname} 的级别估计一组不同的残差误差参数。换句话说，您使用 {opt by()} 来建模异方差性。

{phang2}
{opt t(varname)} 用于 {opt residuals()} 选项以指定 {cmd:ar}、{cmd:ma}、{cmd:toeplitz} 和 {cmd:exponential} 结构的时间变量，或者在 {it:restype} 为 {cmd:unstructured} 或 {cmd:banded} 时识别观测值。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括基于大样本理论（{cmd:oim}）的类型，抗干扰的类型（{cmd:robust}），以及允许组内相关性的类型（{cmd:cluster} {it:clustvar}）；见 {help vce_option_zh:[R] {it:vce_option}}。如果指定了 {cmd:vce(robust)}，则稳健方差在多层模型的最高水平进行聚集。

{phang2}
{cmd:vce(robust)} 和 {cmd:vce(cluster} {it:clustvar}{cmd:)} 在REML估计下不受支持。只有 {cmd:vce(oim)} 可以与 {cmd:dfmethod()} 结合使用。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt variance}，默认显示随机效应和残差误差参数估计值为方差和协方差。

{phang}
{opt stddeviations} 以标准差和相关性显示随机效应和残差误差的参数估计。

{phang}
{opt dftable(dftable)} 指定在使用 {cmd:dfmethod()} 进行估计时，用于小样本推断的固定效应表的内容。
{it:dftable} 是以下之一：{cmd:default}、{cmd:ci} 或 {cmd:pvalue}。

{phang2}
{cmd:default} 显示标准固定效应表的默认标准，其中包含测试统计量、p 值和置信区间。

{phang2}
{cmd:ci} 显示固定效应表，其中统计量和 p 值列被替换为包含系数特定 DF 的列。同样显示置信区间。

{phang2}
{cmd:pvalue} 显示包含 DF 的列的固定效应表，同时包含标准列的测试统计量和 p 值。不显示置信区间。

{phang}
{opt noretable} 将随机效应表抑制在输出中。

{phang}
{opt nofetable} 将固定效应表抑制在输出中。

{phang}
{opt estmetric} 使用存储在 {cmd:e(b)} 中的度量显示所有参数估计。无论在估计时使用的方差成分参数化如何，结果都以相同的度量存储。随机效应参数估计存储为对数标准差和相关性斜率，方程名称根据模型层次进行组织。残差方差参数估计存储为对数标准差，并在适用时为相关性的对数标准差。请注意，固定效应估计总是以相同的度量存储和显示。

{phang}
{opt noheader} 抑制输出头，无论是在估计时还是在重放时。

{phang}
{opt nogroup} 抑制输出头中组汇总信息（组数、平均组大小、最小值和最大值）的显示。

{phang}
{opt nostderr} 防止 {cmd:mixed} 计算估计的随机效应参数的标准误，但标准误仍然提供给固定效应参数。指定此选项将加快计算时间。{opt nostderr} 仅在残差被建模为具有常数方差的独立时可用。

INCLUDE help displayopts_list

{dlgtab:EM 选项}

{pstd}
这些选项控制在估计在切换到基于梯度的方法之前进行的期望最大化（EM）迭代。当残差被建模为独立且具有恒定方差时，EM将收敛到解决方案或者使参数估计接近解决方案。对于其他残差结构或加权估计，EM则会用于获取起始值。

{phang2}
{opt emiterate(#)} 指定要执行的 EM 迭代次数。默认值为 {cmd:emiterate(20)}。

{phang2}
{opt emtolerance(#)} 指定 EM 算法的收敛容忍度。默认值为 {cmd:emtolerance(1e-10)}。EM 迭代将在对数（限制）似然相对变更小于 {it:#} 时停止。此时，优化切换到基于梯度的方法，除非指定了 {opt emonly}，此时最大化停止。

{phang2}
{opt emonly} 指定仅使用 EM 进行似然最大化。指定 {opt emonly} 的好处是 EM 迭代通常比基于梯度的方法快。然而，缺点是 EM 迭代可能收敛缓慢（甚至根本不收敛），并且 EM 不为随机效应参数估计提供标准误的设施。{opt emonly} 仅在未加权的估计和残差被建模为独立且具有恒定方差时可用。

{phang2}
{opt emlog} 指定显示 EM 迭代日志。默认情况下，EM 迭代日志不显示，除非指定了 {opt emonly} 选项。

{phang2}
{opt emdots} 指定将 EM 迭代显示为点。此选项可能很方便，因为 EM 算法可能需要许多迭代才能收敛。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、
[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、
{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}，以及
{opt nonrtol:erance}；见 {help maximize_zh:[R] 最大化}。
需要特别提及的，在 {cmd:mixed} 中列出的如下。

{pmore}
对于 {opt technique()} 选项，默认值为 {cmd:technique(nr)}。不可以指定 {opt bhhh} 算法。

{phang}
{opt matsqrt}（默认值），在优化过程中，通过使用每个模型层次生成的方差-协方差矩阵的矩阵平方根来参数化方差成分。

{phang}
{opt matlog}，在优化过程中，通过使用每个模型层次生成的方差-协方差矩阵的矩阵对数来参数化方差成分。

{pmore}
{opt matsqrt} 参数化确保了方差-协方差矩阵为正半定，而 {opt matlog} 确保了矩阵为正定。对于大多数问题，矩阵平方根在参数空间的边界附近更稳定。然而，如果收敛存在问题，一个选择可能是尝试替代的 {cmd:matlog} 参数化。当收敛不是问题时，两者的参数化结果是等效的。

{pstd}
以下选项在 {opt mixed} 中可用，但在对话框中未显示：

{phang}
{opt small} 重放以前获得的小样本结果。此选项仅在重放时可用，并要求在估计过程中使用 {cmd:dfmethod()} 选项。{cmd:small} 在重放时相当于 {cmd:dftable(default)}。

{phang}
{opt collinear} 指定 {cmd:mixed} 不从随机效应方程中省略共线性变量。通常，没有理由保留共线性变量；实际上，保留共线性通常会导致因共线性引起的矩阵奇异性而导致估计失败。然而，在某些模型（例如，具有完整对比组的随机效应模型）中，变量可能会共线，但由于随机效应协方差结构的限制，该模型被完全识别。在这种情况下，使用 {cmd:collinear} 选项允许在随机效应方程 intact 进行估计。

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
备注被列在以下标题下：

{phang2}{help mixed##remarks1:关于指定随机效应方程的备注}
{p_end}
{phang2}{help mixed##sampling:使用抽样权重的备注}{p_end}
{phang2}{help mixed##denDF:关于固定效应的小样本推断的备注}{p_end}


{marker remarks1}{...}
{title:关于指定随机效应方程的备注}

{pstd}
混合模型由固定效应和随机效应组成。固定效应按照与大多数其他 Stata 估计命令相似的方式，作为回归参数进行指定，即作为一个因变量后跟一组回归变量。模型的随机效应部分是通过首先考虑数据的分组结构来指定的。例如，如果随机效应根据变量 {cmd:school} 进行变化，则 {cmd:mixed} 的调用将具有如下形式：

{p 8 12 4}{cmd:. mixed} {it:fixed_portion} 
{cmd:|| school:} ... {cmd:,}
{it:options}{p_end}

{pstd}
组成每个方程的变量列表描述随机效应如何进入模型，既可以作为随机截距（常数项），也可以作为数据中回归项的随机系数。还可以根据上述四种可用结构指定方程内随机效应的方差-协方差结构。例如，

{p 8 12 4}{cmd:. mixed} {it:f_p}
{cmd:|| school: z1, covariance(unstructured)}
{it:options}{p_end}

{pstd}
将拟合一个包含变量 {cmd:z1} 的随机截距和随机斜率的模型，并将这两个随机效应的方差-协方差结构视为非结构化。

{pstd}
如果数据是通过一系列嵌套组进行组织的，例如，班级在学校内，那么随机效应结构是通过一系列方程来指定的，每个方程之间用 {cmd:||} 分隔。嵌套顺序从左到右。例如，在我们的示例中，学校的方程将首先被指定，然后是班级的方程。作为示例，请考虑：

{p 8 12 4}{cmd:. mixed} {it:f_p} 
{cmd:|| school: z1, cov(un) || class: z1 z2 z3, nocons cov(ex)} {it:options}

{pstd}
其中变量 {cmd:school} 和 {cmd:class} 分别识别学校和班级。这一模型在学校层面有一个随机截距和随机系数，针对变量 {cmd:z1}，并且在班级层面上对变量 {cmd:z1}、{cmd:z2} 和 {cmd:z3} 具有随机系数。班级层随机效应的协方差结构是可交换的，意味着随机效应共享一个共同的方差和共同的成对协方差。

{pstd}
组变量可以重复使用，从而允许根据原始的四种结构构建更一般的协方差结构，形成块对角矩阵。考虑：

{p 8 12 4}{cmd:. mixed} {it:f_p} 
{cmd:|| school: z1 z2, nocons cov(id) || school: z3 z4, nocons cov(un)}
{it:options}

{pstd}
它指定了在学校层面上的四个随机系数。随机效应的方差-协方差矩阵为 4 x 4 矩阵，其中上 2 x 2 对角块为单位矩阵的倍数，且下 2 x 2 对角块为非结构化。实际上，{cmd:z1} 和 {cmd:z2} 上的系数被限制为独立且共享一个共同的方差。{cmd:z3} 和 {cmd:z4} 上的系数各有一个不同的方差，并且与 {cmd:z1} 和 {cmd:z2} 的系数方差不同。它们也被允许相关，但与 {cmd:z1} 和 {cmd:z2} 的系数独立。

{pstd}
对于没有嵌套分组结构的混合模型，将整个估计数据视为一个组是方便的。为此，{cmd:mixed} 允许特殊组标识 {cmd:_all}。{cmd:mixed} 还支持 {cmd:R.}{it:varname} 符号，用于简洁地绘制 {it:varname} 的级别作为一系列指示变量。有关详细信息，请参见 {mansection ME mixedRemarksandexamplesCrossed-effectsmodels:{it:交叉效应模型}} 中的 {bf:[ME] mixed}。

{marker sampling}{...}
{title:使用抽样权重的备注}

{pstd}
在多层模型中，抽样权重的处理方式不同于在标准模型（例如OLS回归）中的处理方式。在多层模型中，观测值级别的权重并不代表整体的包含。相反，它们表示条件于相应簇在下一个更高层级的抽样包含。

{pstd}
例如，如果您在双层模型中仅包含观测值级别的权重，{cmd:mixed} 将假设在第二层的抽样是以相等的概率进行的，这可能不是您想要的。如果在第二层的抽样是加权的，那么仅在第一层包含权重，即使在第一层权重变量中合并了对第二层的加权，也会导致偏差结果。例如，通常的做法是将来自多个层次的条件权重相乘以形成一个整体权重。相反，加权多层分析要求来自每个抽样层次的组成权重。

{pstd}
即使您在所有模型层次中指定了抽样权重，低层次抽样权重的规模也会影响您在多层模型中估计的参数。也就是说，低层次权重的相对大小不仅重要，这些权重的规模也重要。为了解决这个问题，{cmd:mixed} 提供了 {cmd:pwscale()} 选项，用于在双层模型中重新缩放权重；有关 {cmd:pwscale()} 的更多信息，请参见上述 {help mixed##scale_method:缩放方法}。
提供三种缩放方法，每种方法在特定数据情境和假设模型下的表现良好。

{pstd}
一般而言，在使用 {cmd:mixed} 时应谨慎使用抽样权重；有关更多信息，请参见 {mansection ME mixedRemarksandexamplesSurveydata:{it:调查数据}} 中的 {bf:[ME] mixed}。

{marker denDF}{...}
{title:关于固定效应的小样本推断的备注}

{pstd}
默认情况下，{cmd:mixed} 使用大样本推断固定效应，使用渐近正态和卡方分布。这些大样本近似在小样本中可能不合适，t 和 F 分布可能提供更好的近似。您可以指定 {cmd:dfmethod()} 选项以请求固定效应的小样本推断。
{cmd:mixed, dfmethod()} 使用 t 分布进行单假设检验，而在对多重假设检验进行推断时使用 F 分布。它还提供五种计算 DF 的不同方法：{cmd:residual}、{cmd:repeated}、{cmd:anova}、{cmd:satterthwaite} 和 {cmd:kroger}。更多信息见 
{mansection ME mixedRemarksandexamplesSmall-sampleinferenceforfixedeffects:{it:固定效应的小样本推断}} 中的 {bf:[ME] mixed}。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse nlswork}{p_end}

{pstd}随机截距模型，类似于 {cmd:xtreg}{p_end}
{phang2}{cmd:. mixed ln_w grade age c.age#c.age ttl_exp}
          {cmd:tenure c.tenure#c.tenure || id:}{p_end}

{pstd}随机截距和随机斜率（系数）模型{p_end}
{phang2}{cmd:. mixed ln_w grade age c.age#c.age ttl_exp}
           {cmd:tenure c.tenure#c.tenure || id: tenure}{p_end}

{pstd}随机截距和随机斜率（系数）模型，相关的随机
效应{p_end}
{phang2}{cmd:. mixed ln_w grade age c.age#c.age ttl_exp}
            {cmd:tenure c.tenure#c.tenure || id: tenure,}
            {cmd:cov(unstruct)}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse pig}{p_end}

{pstd}双层模型{p_end}
{phang2}{cmd:. mixed weight week || id:}{p_end}

{pstd}具有稳健标准误的双层模型{p_end}
{phang2}{cmd:. mixed weight week || id:, vce(robust)}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse productivity}{p_end}

{pstd}三层嵌套模型，观测值嵌套在 
{cmd:state} 嵌套在 {cmd:region} 中，使用最大似然法拟合{p_end}
{phang2}{cmd:. mixed gsp private emp hwy water other unemp || region: ||}
           {cmd:state:, mle}{p_end}

{pstd}三层嵌套随机交互模型，使用方差分析 DF{p_end}
{phang2}{cmd:. mixed gsp private emp hwy water other unemp || region:water }
	{cmd: || state:other, dfmethod(anova)}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse pig}{p_end}

{pstd}双向交叉随机效应{p_end}
{phang2}{cmd:. mixed weight week || _all: R.id || _all: R.week}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse ovary}{p_end}

{pstd}具有MA 2误差的线性混合模型{p_end}
{phang2}{cmd:. mixed follicles sin1 cos1 || mare: sin1, residuals(ma 2, t(time))}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse childweight}{p_end}

{pstd}具有异方差误差方差的线性混合模型{p_end}
{phang2}{cmd:. mixed weight age || id:age, residuals(independent, by(girl))}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse pig}{p_end}

{pstd}随机截距和随机斜率模型，具有 Kenward-Roger DF{p_end}
{phang2}{cmd:. mixed weight week || id:week, reml dfmethod(kroger)}{p_end}

{pstd}显示包含 p 值的自由度表{p_end}
{phang2}{cmd:. mixed, dftable(pvalue)}{p_end}

{pstd}显示包含置信区间的自由度表{p_end}
{phang2}{cmd:. mixed, dftable(ci)}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse t43}{p_end}

{pstd}重复测量模型，使用重复的 DF{p_end}
{phang2}{cmd:. mixed score i.drug || person:, reml dfmethod(repeated)}{p_end}

{pstd} 重放大样本结果{p_end}
{phang2}{cmd:. mixed}{p_end}

{pstd} 使用重复的 DF 重放小样本结果{p_end}
{phang2}{cmd:. mixed, small}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mixed} 将以下内容存储在 {cmd:e()} 中：

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数的数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数的数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(k_res)}}残差误差参数数量{p_end}
{synopt:{cmd:e(N_clust)}}簇数量{p_end}
{synopt:{cmd:e(nrgroups)}}残差误差 {cmd:by()} 组数量{p_end}
{synopt:{cmd:e(ar_p)}}如果指定，自回归残差误差的阶数{p_end}
{synopt:{cmd:e(ma_q)}}如果指定，移动平均残差误差的阶数{p_end}
{synopt:{cmd:e(res_order)}}如果合适，残差误差结构的阶数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(small)}}如果指定了 {cmd:dfmethod()} 选项，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(F)}}当指定了 {cmd:dfmethod()} 时的整体 F 检验统计量{p_end}
{synopt:{cmd:e(ddf_m)}}模型 DDF{p_end}
{synopt:{cmd:e(df_max)}}最大 DF{p_end}
{synopt:{cmd:e(df_avg)}}平均 DF{p_end}
{synopt:{cmd:e(df_min)}}最小 DF{p_end}
{synopt:{cmd:e(ll)}}对数（限制）似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较测试{p_end}
{synopt:{cmd:e(df_c)}}比较测试的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛，则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mixed}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型（第一层权重）{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}为 {it:k} 层次的 {cmd:fweight} 变量，如果指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}为 {it:k} 层次的 {cmd:pweight} 变量，如果指定{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(redim)}}随机效应维度{p_end}
{synopt:{cmd:e(vartypes)}}方差结构类型{p_end}
{synopt:{cmd:e(revars)}}随机效应协变量{p_end}
{synopt:{cmd:e(resopt)}}{cmd:residuals()} 规格，按输入显示{p_end}
{synopt:{cmd:e(rstructure)}}残差误差结构{p_end}
{synopt:{cmd:e(rstructlab)}}残差误差结构的输出标签{p_end}
{synopt:{cmd:e(rbyvar)}}残差误差 {cmd:by()} 变量，如果指定{p_end}
{synopt:{cmd:e(rglabels)}}残差误差 {cmd:by()} 组标签{p_end}
{synopt:{cmd:e(pwscale)}}抽样权重缩放方法{p_end}
{synopt:{cmd:e(timevar)}}残差误差 {cmd:t()} 变量，若指定{p_end}
{synopt:{cmd:e(dfmethod)}}在 {cmd:dfmethod()} 中指定的 DF 方法{p_end}
{synopt:{cmd:e(dftitle)}}DF 方法的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(clustvar)}}簇变量名称{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(method)}}{cmd:ML} 或 {cmd:REML}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(optmetric)}}{cmd:matsqrt} 或 {cmd:matlog}；随机效应
                 矩阵参数化{p_end}
{synopt:{cmd:e(emonly)}}如果指定，则为 {cmd:emonly}{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginswtype)}}{cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}}{cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(N_g)}}组计数{p_end}
{synopt:{cmd:e(g_min)}}组大小最小值{p_end}
{synopt:{cmd:e(g_avg)}}组大小均值{p_end}
{synopt:{cmd:e(g_max)}}组大小最大值{p_end}
{synopt:{cmd:e(tmap)}}用于非结构化残差误差的 ID 映射{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(df)}}固定效应的参数特定 DF{p_end}
{synopt:{cmd:e(V_df)}}在指定了 {cmd:dfmethod(kroger)} 时的估计量方差-协方差矩阵{p_end}

{synoptset 23 tabbed}{...}
{p2col 5 23 25 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker GK1996}{...}
{phang}
Graubard, B. I., 和 E. L. Korn. 1996. 在健康调查分析中建模抽样设计。
{it:医学研究中的统计方法} 5: 263-281.

{marker KR1997}{...}
{phang}
Kenward, M. G., 和 J. H. Roger. 1997. 从限制最大似然进行固定效应的小样本推断。{it:生物统计学} 53: 983-997.

{marker S1946}{...}
{phang}
Satterthwaite, F. E. 1946. 方差成分估计的近似分布。{it:生物统计学公告} 2: 110-114.

{marker SMF2002}{...}
{phang}
Schaalje, G. B., J. B. McBride, 和 G. W. Fellingham. 2002. 对复杂混合线性模型中测试统计量分布的近似的合理性。{it:农业、生物和环境统计学杂志} 7: 512-524.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mixed.sthlp>}