{smcl}
{* *! version 1.4.16  26sep2018}{...}
{viewerdialog margins "dialog margins"}{...}
{vieweralsosee "[R] margins" "mansection R margins"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] margins, contrast" "help margins_contrast_zh"}{...}
{vieweralsosee "[R] margins, pwcompare" "help margins_pwcompare_zh"}{...}
{vieweralsosee "[R] margins postestimation" "help margins postestimation"}{...}
{vieweralsosee "[R] marginsplot" "help marginsplot_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{vieweralsosee "[R] nlcom" "help nlcom_zh"}{...}
{vieweralsosee "[R] predict" "help predict_zh"}{...}
{vieweralsosee "[R] predictnl" "help predictnl_zh"}{...}
{viewerjumpto "语法" "margins_zh##syntax"}{...}
{viewerjumpto "菜单" "margins_zh##menu"}{...}
{viewerjumpto "描述" "margins_zh##description"}{...}
{viewerjumpto "PDF文档链接" "margins_zh##linkspdf"}{...}
{viewerjumpto "选项" "margins_zh##options"}{...}
{viewerjumpto "示例" "margins_zh##examples"}{...}
{viewerjumpto "视频示例" "margins_zh##video"}{...}
{viewerjumpto "附录：at()语法" "margins_zh##atspec"}{...}
{viewerjumpto "存储结果" "margins_zh##results"}
{help margins:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] margins} {hline 2}}边际均值、预测边际和边际效应
{p_end}
{p2col:}({mansection R margins:查看完整的PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:margins} [{it:{help fvvarlist_zh:marginlist}}] 
{ifin}
[{it:{help margins##weight:weight}}]
[{cmd:,} 
{it:{help margins##response_options:response_options}}
{it:{help margins##options_table:options}}] 

{pstd}
其中 {it:marginlist} 是在当前估计结果中出现的因素变量或交互项的列表。变量可以带或不带 {cmd:i.} 前缀，并且可以使用任意因素变量语法：

		. {cmd:margins i.sex i.group i.sex#i.group}

		. {cmd:margins sex group sex#i.group}

		. {cmd:margins sex##group}

{marker response_options}{...}
{synoptset 22 tabbed}{...}
{synopthdr:response_options}
{synoptline}
{syntab :Main}
{synopt:{opt pr:edict(pred_opt)}}为 {cmd:predict,} {it:pred_opt} 估计边际值{p_end}
{synopt:{opt exp:ression}{cmd:(}{it:{help margins##pnl:pnl_exp}}{cmd:)}}为 {it:pnl_exp} 估计边际值{p_end}
{synopt:{opth dydx(varlist)}}估计 {it:varlist} 中变量的边际效应{p_end}
{synopt:{opth eyex(varlist)}}估计 {it:varlist} 中变量的弹性{p_end}
{synopt:{opth dyex(varlist)}}估计半弹性 -- d({it:y})/d(ln{it:x}){p_end}
{synopt:{opth eydx(varlist)}}估计半弹性 -- d(ln{it:y})/d({it:x}){p_end}
{synopt:{opt cont:inuous}}将因素水平指标视为连续{p_end}
{synoptline}

{marker options_table}{...}
{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :Main}
{synopt:{opt grand}}添加 
	总体边际；如果没有 {it:marginlist} 则为默认值{p_end}

{syntab :At}
{synopt:{cmd:at(}{it:{help margins##atspec:atspec}{cmd:)}}在指定协变量的值下估计边际{p_end}
{synopt:{opt atmeans}}在协变量的均值下估计边际{p_end}
{synopt:{opt asbal:anced}}将所有因素变量视为平衡的{p_end}

{syntab :if/in/over}
{synopt:{opth over(varlist)}}在 {it:varlist} 的唯一值下估计边际{p_end}
{synopt:{cmd:subpop(}{it:{help margins##subspec:subspec}}{cmd:)}}为子人群估计边际{p_end}

{syntab :Within}
{synopt:{opth within(varlist)}}在 {it:varlist} 中嵌套因素的唯一值下估计边际{p_end}

{syntab:Contrast}
{synopt :{it:contrast_options}}任何
	在 {manhelp margins_contrast R:margins, contrast} 中记录的选项
        {p_end}

{syntab:Pairwise comparisons}
{synopt :{it:pwcompare_options}}任何
	在 {manhelp margins_pwcompare R:margins, pwcompare} 中记录的选项{p_end}

{syntab:SE}
{synopt:{cmd:vce(delta)}}使用 delta 方法估计标准误；默认值{p_end}
{synopt:{cmd:vce(unconditional)}}允许协变量抽样估计标准误{p_end}
{synopt:{opt nose}}不估计标准误{p_end}

{syntab :Advanced}
{synopt:{opt noweight:s}}忽略
	在估计过程中指定的权重{p_end}
{synopt:{opt noe:sample}}不将 {cmd:margins} 限制在估计样本中{p_end}
{synopt:{opt emptycells}{cmd:(}{it:{help margins##empspec:empspec}{cmd:)}}对平衡因素的空单元的处理{p_end}
{synopt:{opt estimtol:erance(tol)}}指定用于确定可估计函数的数值容差；默认值为 {cmd:estimtolerance(1e-5)}{p_end}
{synopt:{opt noestimcheck}}禁止可估计性检查{p_end}
{synopt :{opt force}}估计边际
	尽管存在潜在问题{p_end}
{synopt :{opt chain:rule}}在计算导数时使用链式法则{p_end}
{synopt :{opt nochain:rule}}不使用链式法则{p_end}

{syntab:Reporting}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opth mcomp:are(margins##method:method)}}对多重比较进行调整；默认值为 {cmd:mcompare(noadjust)}{p_end}
{synopt:{opt noatlegend}}抑制
	固定协变量值的图例{p_end}
{synopt:{opt post}} 后续边际及其VCE作为估计结果{p_end}
{synopt :{it:{help margins##display_options:display_options}}}控制
       列和列格式、行间距、线宽以及
       因子变量标签
       {p_end}

{synopt :{opt df(#)}}在计算 p 值和置信区间时使用 {it:#} 自由度的 t 分布{p_end}
{synoptline}

{p2colreset}{...}
{marker method}{...}
{synoptset 22}{...}
{synopthdr:method}
{synoptline}
{synopt:{opt noadj:ust}}不对多重比较进行调整；默认值{p_end}
{synopt:{opt bon:ferroni} [{opt adjustall}]}Bonferroni 法；在所有项中进行调整{p_end}
{synopt:{opt sid:ak} [{opt adjustall}]}Sidak 法；在所有项中进行调整{p_end}
{synopt:{opt sch:effe}}Scheffe 法{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
如果在估计中使用，则允许时间序列操作符。
{p_end}
{pstd}
有关 {it:atspec} 的描述，请参见 {bf:{help margins##at_op:at()}} 
在 {it:选项} 下。{p_end}
{marker weight}{...}
{pstd}
{cmd:fweight}s、{cmd:aweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；
见 {help weight_zh}。
{p_end}
{p 4 6 2}
{opt df(#)} 在对话框中不可见。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
边际是根据之前拟合模型在某些协变量的固定值下的预测计算的统计数据，并在其余协变量上取平均或以其他方式整合。

{pstd}
{cmd:margins} 命令为指定协变量的值估计响应的边际，并将结果以表格形式呈现。  

{pstd}
此命令的功能包括估计的边际均值、最小二乘均值、平均和条件边际及部分效应（可报告为导数或弹性）、平均和条件调整预测以及预测边际。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R marginsQuickstart:快速开始}

        {mansection R marginsRemarksandexamples:备注和示例}

        {mansection R marginsMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
{it:警告:}
{it:选项描述较为简短且使用行话。}
{it:如果您是第一次阅读} 
{bf:{mansection R marginsRemarksandexamples:备注和示例}} 在
{bf:[R] margins} 
{it:请跳到} 
{it:这里的内容。}

{dlgtab:Main}

{phang} 
{opt predict(pred_opt)} 和 {opt expression(pnl_exp)} 
    是互斥的；它们指定响应。
    如果都未指定，则响应将是 {cmd:predict} 在基础估计命令后产生的默认预测。
    一些估计命令，
    例如 {helpb mlogit postestimation##margins:mlogit}，
    对 {cmd:margins} 的默认预测已记录，但与 {cmd:predict} 不同。

{phang2}
    {opt predict(pred_opt)} 指定与 
    {cmd:predict} 命令一起使用的选项，以生成用作响应的变量。 例如，在使用 {cmd:logistic} 进行估计后，您可以
    指定 {cmd:predict(xb)} 以获得线性预测，而不是 {cmd:predict} 命令的默认概率。

{pmore2}
    可以指定多个 {opt predict()} 选项，以同时计算多个预测的边际。

{marker pnl}{...}
{phang2}
    {opt expression(pnl_exp)} 指定响应表达式。
    有关 {it:pnl_exp} 的完整描述，请参见 {it:{mansection R predictnlDescription:描述}} 和 
    {it:{mansection R predictnlRemarksandexamples:备注与示例}} 在 
    {bf:[R] predictnl} 中。
    例如，在使用 {cmd:logistic} 进行估计后，您可能希望指定 
    {cmd:expression(exp(predict(xb)))} 
    以使用相对赔率而不是概率作为响应。有关示例，请参见 
    {it:{mansection R marginsRemarksandexamplesExample12Marginsofaspecifiedexpression:示例12：指定表达式的边际}} 在 {manlink R margins}。

{phang}
{opth dydx(varlist)}, {opt eyex(varlist)}, {opt dyex(varlist)} 和
{opt eydx(varlist)} 
    请求 {cmd:margins} 报告响应相对于 {it:varlist} 的导数
    而不是响应本身。
    {cmd:eyex()}、{cmd:dyex()} 和 {cmd:eydx()} 报告弹性导数；详见 
{it:{mansection R marginsRemarksandexamplesExpressingderivativesaselasticities:以弹性形式表达导数}} 在 {manlink R margins}。
    
{phang}
{opt continuous}
    仅在指定 {cmd:dydx()} 或
    {cmd:eydx()} 时相关。
    它指定将因素变量的水平视为连续；见
{it:{mansection R marginsRemarksandexamplesDerivativesversusdiscretedifferences:导数与离散差异对比}} 在 {manlink R margins}。
    如果在 {opt dydx()} 或 {opt eydx()} 中指定了单级因素变量，则隐含采用此选项。

{phang}
{opt grand} 指定报告总体边际。
        当 {it:marginlist} 为空时，默认为 {cmd:grand}。

{dlgtab:At}

{marker at_op}{...}
{phang} 
{opt at(atspec)} 
    指定要视为固定的协变量值。

{phang2}
    {cmd:at(age=20)} 将协变量 {cmd:age} 固定为指定值。
    {cmd:at()} 可用于固定连续或因素协变量。

{phang2}
    {cmd:at(age=20 sex=1)} 同时将协变量 {cmd:age} 
    和 {cmd:sex} 固定为指定值。  

{phang2} 
    {cmd:at(age=(20 30 40 50))} 将年龄固定为 20，然后为 30，....
    {cmd:margins} 为每个指定值产生独立结果。

{phang2}
    {cmd:at(age=(20(10)50))} 的作用与 
    {cmd:at(age=(20 30 40 50))} 相同；您可以指定一个 
    {help numlist_zh}。

{phang2}
    {cmd:at((mean) age{bind:  }(median) distance)} 
    将协变量固定在指定的
    汇总统计量上。
    {cmd:at((p25) _all)} 将所有协变量固定在其 25 百分位数值上。
    请参见 {it:{help margins##atspec:at() 语法}} 
    以获取汇总统计修饰符的完整列表。

{phang2} 
    {cmd:at((mean) _all{bind:  }(median) x{bind:  }x2=1.2{bind:  }z=(1 2 3))}
    从左到右阅读，后面的指定项会覆盖前面的指定项。
    因此，所有协变量都固定在其均值，除了 
    {cmd:x}（固定在其中位数），{cmd:x2}（固定在 1.2），以及 
    {cmd:z}（先固定为 1，然后为 2，最后为 3）。

{phang2} 
    {cmd:at((means) _all{bind:  }(asobserved) x2)}
    是设置所有协变量（除 {cmd:x2} 外）为均值的便捷方式。

{pmore} 
    可以指定多个 {cmd:at()} 选项，每个选项将产生一组不同的边际。

{pmore} 
    有关更多信息，请参见 {it:{help margins##atspec:at()}}。

{phang}
{opt atmeans} 
    指定协变量固定在其均值，并且是 {cmd:at((mean) _all)} 的简写。
    {cmd:atmeans} 
    与 {cmd:at((mean) _all)} 的区别在于，{cmd:atmeans}会影响
    随后的 {cmd:at()} 选项。  
    例如， 

		. {cmd:margins} ...{cmd:, atmeans  at((p25) x)  at((p75) x)} 

{pmore}
    生成两个边际集，评估这两个集在所有协变量的均值下，除了 {cmd:x}。

{phang}
{opt asbalanced}
    是 {cmd:at((asbalanced) _factor)} 的简写，并且指定因素协变量评估为
    像有相等数量的观察那样；见 
    {it:{mansection R marginsRemarksandexamplesObtainingmarginsasthoughthedatawerebalanced:将边际视为数据完成平衡}} 在 {manlink R margins}。
    {cmd:asbalanced} 与 {cmd:at((asbalanced) _factor)} 的区别在于，{cmd:asbalanced} 
    会像 {cmd:atmeans} 一样影响随后 
    的 {cmd:at()} 选项。

{dlgtab:if/in/over}

{phang}
{opth over(varlist)} 指定为 {it:varlist} 定义的组单独估计边际。
    {it:varlist} 中的变量必须包含非负整数（或缺失）值。变量不必是模型中的协变量。当将 {cmd:over()} 与 {cmd:vce(unconditional)} 选项结合使用时，每个组被视为子人群；见 {manlink SVY 子人群估计}。

{marker subspec}{...}
{phang}
{cmd:subpop(}[{varname}] [{it:{help if_zh}}]{cmd:)} 
    旨在与 {cmd:vce(unconditional)} 选项一起使用。  
    它指定为由指示变量或通过 {cmd:if} 表达式或两者标识的单一子人群估计边际。零或缺失表示该观察被排除；非零或非缺失则表示包括该观察。
    有关为什么使用 {cmd:subpop()} 更好的信息，请参见 {manlink SVY 子人群估计}。
    如果在不使用 {cmd:vce(unconditional)} 的情况下使用 {cmd:subpop()}，它
    仅被视为附加的 {cmd:if} 限制。

{dlgtab:Within}

{phang}
{opt within(varlist)} 
    允许嵌套设计。 {it:varlist} 包含用于估计边际的嵌套变量。
    见 
    {it:{mansection R marginsRemarksandexamplesObtainingmarginswithnesteddesigns:获得嵌套设计的边际}} 在 {manlink R margins}。
    与 {cmd:over(}{it:varlist}{cmd:)} 相同，当 
    {cmd:within(}{it:varlist}{cmd:)} 与 
    {cmd:vce(unconditional)} 结合使用时，{it:varlist} 中的变量的每个层次
    都被视为子人群。

{dlgtab:Contrast}

{phang}
{it:contrast_options} 
        是在
        {manhelp margins_contrast R:margins, contrast} 中记录的任何选项。

{dlgtab:Pairwise comparisons}

{phang}
{it:pwcompare_options} 
        是在
        {manhelp margins_pwcompare R:margins, pwcompare} 中记录的任何选项。

{dlgtab:SE}

{phang}
{cmd:vce(delta)} 和 {cmd:vce(unconditional)} 
    指定如何计算 VCE 及其对应的标准误。

{phang2}
    {cmd:vce(delta)} 是默认值。将 delta 方法应用于 
    响应的公式和估计命令的 VCE。
    此方法假设用于计算响应的协变量的值是
    已给定的，或者，如果未使用 {cmd:at()} 固定所有协变量，
    则假定数据是已给定的。

{phang2}
    {cmd:vce(unconditional)} 指定未固定的协变量采用
    处理以考虑这些协变量是如何抽样的。VCE
    采用线性化方法估计。此方法允许异方差性或其他分布假设的违规，并且
    允许同一组观察之间的相关性，类似于 
    {cmd:vce(robust)} 和 {cmd:vce(cluster }{it:...}{cmd:)},
    可能与估计命令一起指定。此方法
    还考虑到复杂调查设计，如果数据是 {cmd:svyset}。请参见
    {it:{mansection R marginsRemarksandexamplesObtainingmarginswithsurveydataandrepresentativesamples:获取调查数据和代表性样本的边际}} 在 {manlink R margins}。
     使用复杂的调查数据时，此方法要求使用
     线性化方差估计方法用于模型。
     请参见 {manlink SVY svy postestimation} 的
     {mansection SVY svypostestimationRemarksandexamplessvypost_repbased:示例}
     {cmd:margins} 与基于重复的方法。

{phang} 
{opt nose}
     抑制 VCE 和标准误的计算。
     请参见 
{it:{mansection R marginsRemarksandexamplesRequirementsformodelspecification:模型规范的要求}} 在 {manlink R margins}
     中有关此选项使用的示例。

{dlgtab:Advanced}

{phang}
{opt noweights}
    指定以前估计命令中指定的任何权重 
    被 {cmd:margins} 忽略。 默认情况下，{cmd:margins} 使用在估计器中指定的权重来平均响应并计算汇总
    统计。如果在
    {cmd:margins} 命令中指定了 {it:weights}，则它们会覆盖以前指定的权重，使得
    不必指定 {cmd:noweights}。对于使用 
    {cmd:svy:} 估计时，不允许 {cmd:noweights} 选项，特别是当  
    {cmd:vce(unconditional)} 选项被指定时。

{pmore}
    对于多级模型，例如 {help meglm_zh}，默认行为是
    为每个观察构造一个权重值，通过将相应的多级权重乘以给定的观察来计算。

{phang}
{opt noesample} 
    指定 {cmd:margins} 不限制其计算在之前估计命令使用的估计样本中。
    见 
    {it:{mansection R marginsRemarksandexamplesExample15Marginsevaluatedoutofsample:示例15: 超出样本的边际}} 在 {manlink R margins}。

{pmore}
    使用默认的 delta 方法 VCE，{opt noesample} 边际可以
    在估计样本以外的样本上估计；这种结果在
    假设所使用的数据被处理为给定的情况下有效。

{pmore}
    您可以同时指定 {cmd:noesample} 和 {cmd:vce(unconditional)}，但
    如果这样做，您应该确保内存中的数据对应于原始的 {cmd:e(sample)}。   为了证明您了解这一点，
    您必须同时指定 {cmd:force} 选项。请注意，在与估计样本不同的样本上进行 {cmd:vce(unconditional)} 
    计算相当于在一组数据上估计系数并在另一组数据上计算线性化的分数；请参见 {manlink P _robust}。
    
{marker empspec}{...}
{phang}
{cmd:emptycells(strict)} 和 {cmd:emptycells(reweight)}
     仅在也指定了 {cmd:asbalanced} 选项时相关。
     {cmd:emptycells()} 指定如何处理在被视为平衡的因素变量交互中涉及的空单元；
     见
{it:{mansection R marginsRemarksandexamplesObtainingmarginsasthoughthedatawerebalanced:将边际视为数据完成平衡}} 在 {manlink R margins}。

{phang2}
    {cmd:emptycells(strict)} 是默认值；它指定边际
    涉及空单元时被视为不可估计。

{phang2}
    {cmd:emptycells(reweight)} 指定将观察到的单元的效果增加以适应任何缺失单元。这使边际可估计，但更改了其解释。
    {cmd:emptycells(reweight)} 在指定 
    {cmd:within()} 选项时被隐含。

{phang}
{opt estimtolerance(tol)} 指定用于确定可估计函数的数值容差。默认值为 {cmd:estimtolerance(1e-5)}。

{pmore}
当模型系数的线性组合 {it:z} 被发现不可估计时：

{pmore2}
{cmd:mreldif(}{it:z}{cmd:,} {it:z*H}{cmd:)} > {it:tol}

{pmore}
其中 {it:H} 在 
{mansection R marginsMethodsandformulas:{it:方法与公式}} 中定义。

{phang}
{opt noestimcheck}
    指定 {cmd:margins} 不检查可估计性。 默认情况下，所请求的边际会被检查，并报告不可估计的边际。不可估计通常是由于空单元造成的。如果指定了 {cmd:noestimcheck}，则以通常的方式计算估计，并报告结果，即使所产生的估计是可操作的，不过也就是说它们可以在不同参数化的等效模型中有所不同。见
{it:{mansection R marginsRemarksandexamplesEstimabilityofmargins: 边际的可估计性}} 在 {manlink R margins}。
    
{phang} 
{opt force} 
    指示 {cmd:margins} 在某些情况下继续运行，而这些情况下它会在假定违反假设时发出错误消息。请勿随意指定 {cmd:force}。您需要了解并全面评估统计问题。有关 
    {cmd:force} 的使用示例，请参见 
{it:{mansection R marginsRemarksandexamplesUsingmarginsaftertheestimatesusecommand:在估计命令后使用边际}} 在 {manlink R margins}。

{phang}
{opt chainrule} 和 {opt nochainrule} 指定 {cmd:margins} 在数值计算导数时是否使用链式法则。
    在使用 {cmd:margins} 之前不需要指定这些选项；{cmd:margins} 将自动选择适当的方法。

{pmore}
    在使用社区贡献命令后指定 {cmd:nochainrule}。 我们建议使用 {cmd:nochainrule}，尽管 {cmd:chainrule}
    通常是安全的，并且总是更快。 {cmd:nochainrule} 更安全，因为它不对参数和协变量如何结合形成响应做出任何假设。 

{pmore}
    当指定 {cmd:expression()} 选项时，隐含要求 {cmd:nochainrule}。

{dlgtab:Reporting}

{phang}
{opt level(#)}
指定置信区间的置信水平，单位为百分比。
默认值为 {cmd:level(95)} 或 {helpb set level} 设置的值。

{phang}
{opt mcompare(method)}
指定在一个因素变量项内对多重比较进行调整的 p 值及置信区间的计算方法。

{pmore}
大多数方法都会调整比较误差率，alpha_c，以实现预设的实验误差率，alpha_e。

{phang2}
{cmd:mcompare(noadjust)} 
是默认值；它指定不进行调整。

{center: alpha_c = alpha_e}

{phang2}
{cmd:mcompare(bonferroni)} 
根据 Bonferroni 不等式的上限调整比较误差率

{center: alpha_e <= m * alpha_c}

{pmore2}
其中 {it:m} 是项目中的比较数量。

{pmore2}
调整后的比较误差率为

{center: alpha_c = alpha_e/m}

{phang2}
{cmd:mcompare(sidak)}
根据概率不等式的上限调整比较误差率

{center:alpha_e <= 1 - (1 - alpha_c)^m}

{pmore2}
其中 {it:m} 是项目中的比较数量。

{pmore2}
调整后的比较误差率为

{center: alpha_c = 1 - (1 - alpha_e)^(1/m)}

{pmore2}
当 {it:m} 个比较相互独立时，此调整是准确的。

{phang2}
{cmd:mcompare(scheffe)}
使用相应的 F 或卡方分布控制实验误差率，自由度等于项的秩。

{phang2}
{cmd:mcompare(}{it:method} {cmd:adjustall)} 指定
多重比较调整计算所有项中的比较，而不是逐项执行多重比较。这在 {it:marginslist} 中指定多个变量或项时，导致更保守的调整。

{phang}
{opt noatlegend} 
    指定抑制显示协变量固定值的图例。

{phang} 
{opt post} 
使 {cmd:margins} 行为像 Stata 估计命令（e 类命令）。
{cmd:margins} 将估计的边际向量和估计的方差-协方差矩阵发布到 {cmd:e()}，因此您可以像对待任何其他估计命令的结果一样处理估计的边际。例如，您可以使用 {cmd:test} 同时进行边际假设测试，或者使用 {cmd:lincom} 创建线性组合。有关示例，参见
{it:{mansection R marginsRemarksandexamplesExample10Testingmargins---contrastsofmargins:示例10：测试边际 -- 边际对比}} 在 {manlink R margins}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci},
{opt nopv:alues},
{opt vsquish},
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}, 和
{opt nolstretch}.

{phang2}
{opt noci} 
抑制在系数表中报告置信区间。

{phang2}
{opt nopvalues}
抑制在系数表中报告 p 值及其统计量。

{phang2}
{opt vsquish} 
指定抑制因子变量项或时间序列操作变量与模型中其他变量之间的空白空间。

{phang2}
{opt nofvlabel} 显示因子变量级别值，而不是附加的值标签。此选项覆盖 {cmd:fvlabel} 设置；见 
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrap(#)} 允许在系数表中将较长的值标签换行出现在前 {it:#} 行。此选项覆盖 {cmd:fvwrap} 设置；参见 {helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrapon(style)} 指定换行值标签是在哪些空格边界处换行，还是根据可用空间换行。

{phang3}
{cmd:fvwrapon(word)} 为默认，指定在单词边界处换行。

{phang3}
{cmd:fvwrapon(width)} 指定根据可用空间换行。

{pmore2}
此选项覆盖 {cmd:fvwrapon} 设置；见
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt cformat(%fmt)} 指定如何格式化边际、标准误和置信极限在估计边际的表中。

{phang2}
{opt pformat(%fmt)} 指定如何在估计边际的表中格式化 p 值。

{phang2}
{opt sformat(%fmt)} 指定在估计边际的表中格式化检验统计量。

{phang2}
{opt nolstretch} 指定估计边际的表的宽度不应自动扩大以适应更长的变量名称。默认值 {cmd:lstretch} 是在估计边际的表中自动扩大宽度至结果窗口宽度。要更改默认值，请使用
{help lstretch_zh:set lstretch off}。 {opt nolstretch} 不在对话框中显示。

{pstd}
以下选项对于 {opt margins} 可用，但未在对话框中显示：

{phang}
{opt df(#)} 指定在计算 p 值和置信区间时使用 {it:#} 自由度的 t 分布。
典型默认值为使用标准正态分布。
但是，如果估计命令计算了残差自由度 ({cmd:e(df_r)})，并且在 {cmd:margins} 中指定了 {cmd:predict(xb)}，则默认值为使用 {cmd:e(df_r)} 自由度的 t 分布。


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在快速参考。有关 {cmd:margins} 的概念概述及带有讨论的示例，请参见
{it:{mansection R marginsRemarksandexamples:备注和示例}} 在
{manlink R margins}。


{title:示例：获得响应的边际}

{pstd}设置{p_end}
{phang2}{cmd:. webuse margex}

{pstd}回归后的简单情况{p_end}
{phang2}{cmd:. regress y i.sex i.group}{p_end}
{phang2}{cmd:. margins sex}{p_end}

{pstd}逻辑回归后的简单情况{p_end}
{phang2}{cmd:. logistic outcome i.sex i.group}{p_end}
{phang2}{cmd:. margins sex}{p_end}

{pstd}平均响应与平均时的响应{p_end}
{phang2}{cmd:. margins sex}{p_end}
{phang2}{cmd:. margins sex, atmeans}{p_end}

{pstd}从一个 {cmd:margins} 命令获得多个边际{p_end}
{phang2}{cmd:. margins sex group}{p_end}

{pstd}带有交互项的边际{p_end}
{phang2}{cmd:. logistic outcome i.sex i.group sex#group}{p_end}
{phang2}{cmd:. margins sex group}{p_end}

{pstd}带有连续变量的边际{p_end}
{phang2}{cmd:. logistic outcome i.sex i.group sex#group age}{p_end}
{phang2}{cmd:. margins sex group}{p_end}

{pstd}连续变量的边际{p_end}
{phang2}{cmd:. logistic outcome i.sex i.group sex#group age}{p_end}
{phang2}{cmd:. margins sex group}{p_end}
{phang2}{cmd:. margins, at(age=40)}{p_end}
{phang2}{cmd:. margins, at(age=(30 35 40 45 50))}{p_end}
{phang3}或者，等效地{p_end}
{phang2}{cmd:. margins, at(age=(30(5)50))}{p_end}

{pstd}交互项的边际{p_end}
{phang2}{cmd:. margins sex#group}{p_end}

{pstd}指定预测的边际{p_end}
{phang2}{cmd:. tobit ycn i.sex i.group sex#group age, ul(90)}{p_end}
{phang2}{cmd:. margins sex, predict(ystar(.,90))}{p_end}

{pstd}指定表达式的边际{p_end}
{phang2}{cmd:. margins sex, expression( predict(ystar(.,90)) / predict(xb) )}

{pstd}具有多个结果（响应）的边际{p_end}
{phang2}{cmd:. mlogit group i.sex age}{p_end}
{phang2}{cmd:. margins sex}{p_end}
{phang2}{cmd:. margins sex, predict(outcome(1))}{p_end}

{pstd}具有多个方程的边际{p_end}
{phang2}{cmd:. sureg (y = i.sex age) (distance = i.sex i.group)}{p_end}
{phang2}{cmd:. margins sex}{p_end}
{phang2}{cmd:. margins sex, predict(equation(y))}{p_end}
{phang2}{cmd:. margins sex,}
     {cmd:expression(predict(equation(y)) - predict(equation(distance)))}{p_end}

{pstd}超出样本的边际评估{p_end}
{phang2}{cmd:. webuse margex}{p_end}
{phang2}{cmd:. tobit ycn i.sex i.group sex#group age, ul(90)}{p_end}
{phang2}{cmd:. webuse peach}{p_end}
{phang2}{cmd:. margins sex, predict(ystar(.,90)) noesample}


{title:示例：获得边际效应}

{pstd}设置{p_end}
{phang2}{cmd:. webuse margex}{p_end}
{phang2}{cmd:. logistic outcome treatment##group age c.age#c.age treatment#c.age}

{pstd}单个协变量的平均边际效应（部分效应）{p_end}
{phang2}{cmd:. margins, dydx(treatment)}{p_end}

{pstd}所有协变量的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(*)}{p_end}

{pstd}沿响应表面的边际效应{p_end}
{phang2}{cmd:. margins group, dydx(treatment) at(age=(20(10)60))}{p_end}


{title:示例：使用调查数据和代表性样本获得边际}

{pstd}对于群体的推断，响应的边际{p_end}
{phang2}{cmd:. webuse margex}{p_end}
{phang2}{cmd:. logistic outcome i.sex i.group sex#group age, vce(robust)}{p_end}
{phang2}{cmd:. margins sex group, vce(unconditional)}{p_end}

{pstd}对于群体的推断，边际效应{p_end}
{phang2}{cmd:. margins, dydx(*) vce(unconditional)}{p_end}

{pstd}使用 svyset 数据的群体推断{p_end}
{phang2}{cmd:}{p_end}
{phang2}{cmd:. webuse nhanes2}{p_end}
{phang2}{cmd:. svyset}{p_end}
{phang2}{cmd:. svy: logistic highbp sex##agegrp##c.bmi}{p_end}
{phang2}{cmd:. margins agegrp, vce(unconditional)}{p_end}


{title:示例：将边际视为数据完成平衡}

{pstd}设置{p_end}
{phang2}{cmd:. webuse acmemanuf}{p_end}

{pstd}使用 asbalanced 进行平衡{p_end}
{phang2}{cmd:. regress y pressure##temp}{p_end}
{phang2}{cmd:. margins, asbalanced}{p_end}

{pstd}平衡非线性响应{p_end}
{phang2}{cmd:. logistic acceptable pressure##temp}{p_end}
{phang2}{cmd:. margins, asbalanced}{p_end}

{pstd}将一部分协变量视为平衡{p_end}
{phang2}{cmd:. webuse margex}{p_end}
{phang2}{cmd:. regress y arm##sex sex##agegroup}{p_end}
{phang2}{cmd:. margins, at((asbalanced) arm)}{p_end}
{phang2}{cmd:. margins, at((asbalanced) arm agegroup)}{p_end}
{phang2}{cmd:. margins, at((asbalanced) arm agegroup sex)}{p_end}

{pstd}在存在空单元的情况下进行平衡{p_end}
{phang2}{cmd:. webuse estimability}{p_end}
{phang2}{cmd:. regress y sex##group}{p_end}
{phang2}{cmd:. margins sex, asbalanced}{p_end}
{phang2}{cmd:. margins sex, asbalanced emptycells(reweight)}{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=XAG4CbIbH0k":Margins 介绍，第 1 部分：分类变量}

{phang}
{browse "http://www.youtube.com/watch?v=L9-PWY79aVA":Margins 介绍，第 2 部分：连续变量}

{phang}
{browse "http://www.youtube.com/watch?v=43uX4D_7uaI":Margins 介绍，第 3 部分：交互}


{marker atspec}{...}
{title:附录：{it:at() 语法}}

{pstd}
在选项 {cmd:at(}{it:atspec}{cmd:)} 中，
{it:atspec} 可以包含以下一种或多种规格：

{p 12 12 2}
{it:varlist}

{p 12 12 2}
{cmd:(}{it:stat}{cmd:)} {it:varlist} 

{p 12 12 2}
{it:varname} {cmd:=} {it:#}

{p 12 12 2}
{it:varname} {cmd:= (}{it:{help numlist_zh}}{cmd:)} 

{p 12 12 2}
{it:varname} {cmd:=} {opth gen:erate(exp)}

{pstd}
其中

{p 12 15 2}
    1. {it:varname} 必须是当前估计结果中的协变量。

{p 12 15 2}
    2. 变量名（无论是在 {it:varname} 还是 {it:varlist} 中） 
       可以是连续变量、因素变量或虚拟水平
       变量，例如 {cmd:age}、{cmd:group} 或 {cmd:3.group}。

{p 12 15 2}
3. {it:varlist} 还可以是三种标准列表之一：
{p_end}
{p 19 22 2}
a. {opt _all}（所有协变量），
{p_end}
{p 19 22 2}
b. {opt _f:actor}（所有因素变量协变量），或
{p_end}
{p 19 22 2}
c. {opt _c:ontinuous}（所有连续协变量）。
{p_end}

{p 12 15 2}
4. 规格由左至右处理，后面的规格会覆盖前面的规格。

{p 12 15 2}
5. {it:stat} 可以是以下任意一个：

{p2colset 5 22 24 2}{...}
{p2line}
{p2col :}         				{space 44}变量{p_end}
{p2col :{it:stat}} 描述{space 32}允许的{p_end}
{p2line}
{p2col :{opt asobs:erved}} 在样本中的观测值（默认）
			{space 1}所有的{p_end}
{p2col :{opt mean}}   均值（{it:varlist} 的默认值）  {space 16}所有的{p_end}
{p2col :{opt median}} 中位数{space 36}连续的{p_end}
{p2col :{opt p1}}     第 1 百分位数		{space 29}连续的{p_end}
{p2col :{opt p2}}     第 2 百分位数		{space 29}连续的{p_end}
{p2col :{it:...}}     第 3-49 百分位数{space 23}连续的{p_end}
{p2col :{opt p50}}    第 50 百分位数（与 {cmd:median} 相同） 
						{space 11}连续的{p_end}
{p2col :{it:...}}     第 51-97 百分位数{space 22}连续的{p_end}
{p2col :{opt p98}}    第 98 百分位数		{space 28}连续的{p_end}
{p2col :{opt p99}}    第 99 百分位数		{space 28}连续的{p_end}
{p2col :{opt min}}    最小值{space 35}连续的{p_end}
{p2col :{opt max}}    最大值{space 35}连续的{p_end}
{p2col :{opt zero}}   固定为零{space 30}连续的{p_end}
{p2col :{opt base}}   基准水平 {space 33}因素{p_end}
{p2col :{opt asbal:anced}} 所有水平同样可能，并总和为 1
						{space 3}因素{p_end}
{p2line}
{p2colreset}{...}

{pstd}
任何 {it:stat} 除了 {cmd:zero}、{cmd:base} 和 {cmd:asbalanced} 之前可以加上 {cmd:o} 来获取总体统计量 -- 在所有 {cmd:over()} 组中的样本。 例如，{cmd:omean}、{cmd:omedian} 和 {cmd:op25}。
仅在指定 {cmd:over()} 或 {cmd:within()} 选项时，总体统计与相应命名的统计彼此之间有差异。 如果未指定 {it:stat}，则假定为 {cmd:mean}。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:margins} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(N_sub)}}子人群观察数{p_end}
{synopt:{cmd:r(N_clust)}}集群数量{p_end}
{synopt:{cmd:r(N_psu)}}样本 PSUs 数，调查数据仅{p_end}
{synopt:{cmd:r(N_strata)}} strata 数，调查数据仅{p_end}
{synopt:{cmd:r(df_r)}}方差自由度，调查数据仅{p_end}
{synopt:{cmd:r(N_poststrata)}}后 strata 数，调查数据仅{p_end}
{synopt:{cmd:r(k_predict)}} {opt predict()} 选项的数量{p_end}
{synopt:{cmd:r(k_margins)}} {it:marginlist} 中的项数{p_end}
{synopt:{cmd:r(k_by)}}子人群的数量{p_end}
{synopt:{cmd:r(k_at)}} {opt at()} 选项的数量{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(cmd)}}{cmd:margins}{p_end}
{synopt:{cmd:r(cmdline)}}命令按输入{p_end}
{synopt:{cmd:r(est_cmd)}}{cmd:e(cmd)} 来自原始估计结果{p_end}
{synopt:{cmd:r(est_cmdline)}}{cmd:e(cmdline)}
	来自原始估计结果{p_end}
{synopt:{cmd:r(title)}}输出中的标题{p_end}
{synopt:{cmd:r(subpop)}}{it:subspec} 来自 {cmd:subpop()}{p_end}
{synopt:{cmd:r(model_vce)}}{it:vcetype} 来自估计命令{p_end}
{synopt:{cmd:r(model_vcetype)}}标准错误的标题来自估计命令{p_end}
{synopt:{cmd:r(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:r(vcetype)}}用于标记标准错误的标题{p_end}
{synopt:{cmd:r(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:r(margins)}}{it:marginlist}{p_end}
{synopt:{cmd:r(predict}{it:#}{cmd:_opts)}}第 {it:#} 个 {cmd:predict()} 选项{p_end}
{synopt:{cmd:r(predict}{it:#}{cmd:_label)}}第 {it:#} 个 {cmd:predict()} 选项的标签{p_end}
{synopt:{cmd:r(expression)}}响应表达式{p_end}
{synopt:{cmd:r(xvars)}}{it:varlist} 来自 {cmd:dydx()}、{cmd:dyex()},
					{cmd:eydx()} 或 {cmd:eyex()}{p_end}
{synopt:{cmd:r(derivatives)}}"", "dy/dx", "dy/ex", "ey/dx", "ey/ex"{p_end}
{synopt:{cmd:r(over)}}{it:varlist} 来自 {cmd:over()}{p_end}
{synopt:{cmd:r(within)}}{it:varlist} 来自 {cmd:within()}{p_end}
{synopt:{cmd:r(by)}}{cmd:r(over)} 和 {cmd:r(within)} 列表的并集{p_end}
{synopt:{cmd:r(by}{it:#}{cmd:)}}交互符号，标识第 {it:#} 个
					子人群{p_end}
{synopt:{cmd:r(atstats}{it:#}{cmd:)}}第 {it:#} 个 {cmd:at()} 规格
{p_end}
{synopt:{cmd:r(emptycells)}}{it:empspec} 来自 {cmd:emptycells()}{p_end}
{synopt:{cmd:r(mcmethod)}}{it:method} 来自 {opt mcompare()}{p_end}
{synopt:{cmd:r(mcadjustall)}}{opt adjustall} 或空{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}估计值{p_end}
{synopt:{cmd:r(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:r(Jacobian)}}雅可比矩阵{p_end}
{synopt:{cmd:r(_N)}}每个边际估计对应的样本大小{p_end}
{synopt:{cmd:r(at)}}来自 {cmd:at()} 选项的值矩阵{p_end}
{synopt:{cmd:r(chainrule)}}来自拟合模型的链式法则信息{p_end}
{synopt:{cmd:r(error)}}边际可估计性代码；{break}
        {cmd:0} 表示可估计,{break}
        {cmd:8} 表示不可估计{p_end}
{synopt:{cmd:r(table)}}矩阵
        包含边际及其标准误、检验统计量、
        p 值和置信区间{p_end}
{p2colreset}{...}


{pstd}
{cmd:margins} 使用 {cmd:post} 选项后还会在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_sub)}}子人群观察数{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(N_psu)}}样本 PSUs 数，调查数据仅{p_end}
{synopt:{cmd:e(N_strata)}} strata 数，调查数据仅{p_end}
{synopt:{cmd:e(df_r)}}方差自由度，调查数据仅{p_end}
{synopt:{cmd:e(N_poststrata)}}后 strata 数，调查数据仅{p_end}
{synopt:{cmd:e(k_predict)}} {opt predict()} 选项的数量{p_end}
{synopt:{cmd:e(k_margins)}} {it:marginlist} 中的项数{p_end}
{synopt:{cmd:e(k_by)}}子人群的数量{p_end}
{synopt:{cmd:e(k_at)}} {opt at()} 选项的数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:margins}{p_end}
{synopt:{cmd:e(cmdline)}}命令按输入{p_end}
{synopt:{cmd:e(est_cmd)}}{cmd:e(cmd)} 来自原始估计结果{p_end}
{synopt:{cmd:e(est_cmdline)}}{cmd:e(cmdline)}
	来自原始估计结果{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}输出中的标题{p_end}
{synopt:{cmd:e(subpop)}}{it:subspec} 来自 {cmd:subpop()}{p_end}
{synopt:{cmd:e(model_vce)}}{it:vcetype} 来自估计命令{p_end}
{synopt:{cmd:e(model_vcetype)}}标准错误的标题来自估计命令{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准错误的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}，或者如果 {cmd:nose} 被指定，则仅为 {cmd:b}{p_end}
{synopt:{cmd:e(margins)}}{it:marginlist}{p_end}
{synopt:{cmd:e(asbalanced)}}因素变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因素变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}
{synopt:{cmd:e(predict}{it:#}{cmd:_opts)}}第 {it:#} 个 {cmd:predict()} 选项{p_end}
{synopt:{cmd:e(predict}{it:#}{cmd:_label)}}第 {it:#} 个 {cmd:predict()} 选项的标签{p_end}
{synopt:{cmd:e(expression)}}预测表达式{p_end}
{synopt:{cmd:e(xvars)}}{it:varlist} 来自 {cmd:dydx()}、{cmd:dyex()},
					{cmd:eydx()} 或 {cmd:eyex()}{p_end}
{synopt:{cmd:e(derivatives)}}"", "dy/dx", "dy/ex", "ey/dx", "ey/ex"{p_end}
{synopt:{cmd:e(over)}}{it:varlist} 来自 {cmd:over()}{p_end}
{synopt:{cmd:e(within)}}{it:varlist} 来自 {cmd:within()}{p_end}
{synopt:{cmd:e(by)}}并集 {cmd:r(over)} 和 {cmd:r(within)} 列表{p_end}
{synopt:{cmd:e(by}{it:#}{cmd:)}}交互符号，标识第 {it:#} 个
					子人群{p_end}
{synopt:{cmd:e(atstats}{it:#}{cmd:)}}第 {it:#} 个 {cmd:at()} 规格
{p_end}
{synopt:{cmd:e(emptycells)}}{it:empspec} 来自 {cmd:emptycells()}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}估计值{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:e(Jacobian)}}雅可比矩阵{p_end}
{synopt:{cmd:e(_N)}}每个边际估计对应的样本大小{p_end}
{synopt:{cmd:e(error)}}与 {cmd:e(b)} 对应的错误代码{p.end}
{synopt:{cmd:e(at)}}来自 {cmd:at()} 选项的值矩阵{p_end}
{synopt:{cmd:e(chainrule)}}链式法则信息来自拟合模型{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <margins.sthlp>}