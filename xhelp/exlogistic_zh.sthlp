{smcl}
{* *! version 1.2.8  11dec2018}{...}
{viewerdialog exlogistic "dialog exlogistic"}{...}
{vieweralsosee "[R] exlogistic" "mansection R exlogistic"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] exlogistic postestimation" "help exlogistic_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] binreg" "help binreg_zh"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[R] expoisson" "help expoisson_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{viewerjumpto "Syntax" "exlogistic_zh##syntax"}{...}
{viewerjumpto "Menu" "exlogistic_zh##menu"}{...}
{viewerjumpto "Description" "exlogistic_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "exlogistic_zh##linkspdf"}{...}
{viewerjumpto "Options" "exlogistic_zh##options"}{...}
{viewerjumpto "Technical note" "exlogistic_zh##technote"}{...}
{viewerjumpto "Examples" "exlogistic_zh##examples"}{...}
{viewerjumpto "Stored results" "exlogistic_zh##results"}{...}
{viewerjumpto "Reference" "exlogistic_zh##reference"}
{help exlogistic:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] exlogistic} {hline 2}}精确逻辑回归{p_end}
{p2col:}({mansection R exlogistic:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:exlogistic} {it:depvar} {indepvars} {ifin}
[{it:{help exlogistic##weight:权重}}]
[{cmd:,} {it:选项}] 

{phang}
{it:depvar}可以指定为零或非零变量，或每个试验中的正结果数量。对于零或非零变量，零表示失败，非零表示成功。要将{it:depvar}指定为正结果的数量，还必须指定 
{opt binomial(varname|#)}。

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth cond:vars(varlist)}}在{it:varlist}中对变量进行条件处理{p_end}
{synopt :{opth gr:oup(varname)}}按照{it:varname}的唯一值对组/层进行分层{p_end}
{synopt :{cmdab:bin:omial(}{varname}|{it:#}{cmd:)}}数据采用二项形式，试验的数量包含在{it:varname}或{it:#}中{p_end}
{synopt :{opt estc:onstant}}估计常数项；不对成功数进行条件处理{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}

{syntab :术语}
{synopt :{opt term:s(termsdef)}}术语定义{p_end}

{syntab :选项}
{synopt :{cmdab:mem:ory(}{it:#}[{cmd:b}|{cmd:k}|{cmd:m}|{cmd:g}]{cmd:)}}设置内存使用限制；默认值为{cmd:memory(10m)}{p_end}
{synopt :{opth sav:ing(exlogistic##saving:filename)}}将联合条件分布保存到{it:filename}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为{cmd:level(95)}{p_end}
{synopt :{opt coef}}报告估计的系数{p_end}
{synopt :{opt t:est(testopt)}}报告观察到的充分统计量、条件得分检验或条件概率检验的p值{p_end}
{synopt :{opth mue(varlist)}}计算{it:varlist}的中位数无偏估计{p_end}
{synopt :{opt midp}}使用中p值规则{p_end}
{synopt :[{cmd:no}]{cmd:log}}显示或抑制枚举日志；默认情况下显示{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:by}、{cmd:statsby}和{cmd:xi}均被允许；请参阅{help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}被允许；请参阅{help weight_zh}.{p_end}
{p 4 6 2}
请参见{manhelp exlogistic_postestimation R:exlogistic后估计}以获取估算后可用的功能。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 精确统计 > 精确逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:exlogistic}拟合一个精确逻辑回归模型，该模型在小样本情况下比标准的基于最大似然的逻辑回归估计器产生更准确的推论。它也能更好地处理完全确定的结果。带有{opth group(varname)}选项的{cmd:exlogistic}在分层内对正结果数量进行条件处理，是条件（固定效应）逻辑回归估计器的替代方案。

{pstd}
与Stata的其他估计命令不同，{cmd:exlogistic}必须在估计过程中执行假设检验，而不是在使用标准估计后命令进行估计后处理时进行。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R exlogisticQuickstart:快速入门}

        {mansection R exlogisticRemarksandexamples:备注和示例}

        {mansection R exlogisticMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{marker condvars}{...}
{phang}
{opth condvars(varlist)}指定您不感兴趣的参数估计变量。通过将这些变量从{indepvars}移动到{cmd:condvars()}，您可以节省显著的计算时间和内存。要了解，您对于{cmd:x1}和{cmd:x3}的结果是相同的，无论您是输入

            {cmd:. exlogistic y x1 x2 x3 x4}

{pmore}
还是

            {cmd:. exlogistic y x1 x3, condvars(x2 x4)}

{phang}
{opth group(varname)}指定定义分层的变量（如果有的话）。对于{it:varname}中标识的每个分层假定一个常数项，且自变量的充分统计量在每组内观察到的成功数量上进行条件处理。这使得估计的模型等价于Stata的条件逻辑回归命令{cmd:clogit}所估计的模型（见{manhelp clogit R}）。{cmd:group()}不能与{cmd:noconstant}或{cmd:estconstant}一起指定。

{marker binomial()}{...}
{phang}
{cmd:binomial(}{varname}|{it:#}{cmd:)}表示数据为二项形式，且{depvar}包含成功数量。{it:varname}包含每个观察的试验数量。如果所有观察的试验数量相同，则可以将该数量作为整数指定。试验数量必须是大于等于成功数量的正整数。如果未指定{cmd:binomial()}，则假定数据为伯努利形式，即{it:depvar}等于零或非零值记录一次失败或成功。

{phang}
{cmd:estconstant}估计常数项。默认情况下，模型被假定具有截距（常数），但截距值不会被计算。换句话说，针对{indepvars}的充分统计量的条件分布是根据{depvar}中的成功数量进行计算的，从而将模型的常数项排除在外。如果您希望报告截距的估计，则使用{cmd:estconstant}。{cmd:estconstant}不能与{cmd:group()}一起指定。

{phang}
{opt noconstant}；请参见{helpb estimation options##noconstant:[R] 估计选项}。{cmd:noconstant}不能与{cmd:group()}一起指定。

{dlgtab:术语}

{phang}
{marker terms}{...}
{cmd:terms(}{it:termname} {cmd:=} {it:variable} ... {it:variable}[{cmd:,}
{it:termname} {cmd:=} {it:variable} ... {it:variable} ...]{cmd:)} 
定义您希望{cmd:exlogistic}执行联合显著性假设检验的模型的附加术语。默认情况下，{cmd:exlogistic}针对{indepvars}中的每个变量单独报告检验。例如，如果变量{cmd:x1}和{cmd:x3}在{it:indepvars}中，并且您希望对它们的显著性进行联合检验，则指定{cmd:terms(t1=x1 x3)}。要同时检验{cmd:x2}和{cmd:x4}的联合显著性，请指定{cmd:terms(t1=x1 x3, t2=x2 x4)}。每个变量只能分配到一个术语中。

{pmore}
仅对条件得分检验和条件概率检验计算联合检验。请参见下面的{helpb exlogistic##test:test()}。

{dlgtab:选项}

{phang} {marker memory} 
{cmd:memory(}{it:#}[{cmd:b}|{cmd:k}|{cmd:m}|{cmd:g}]{cmd:)} 设置{cmd:exlogistic}在计算参数充分统计量的条件分布时可以使用的内存量的限制。默认值为{cmd:memory(10m)}，其中{cmd:m}代表兆字节，即1,048,576字节。也提供以下选项：{cmd:b}代表字节；{cmd:k}代表千字节，等于1,024字节；{cmd:g}代表千兆字节，等于1,024兆字节。允许的最小设置为{cmd:1m}，最大为{cmd:2048m}或{cmd:2g}，但请不要尝试使用超过您计算机可用内存的量。还请参见{help exlogistic##enumerations:技术说明}，了解条件分布的计算。

{phang}
{marker saving}
{cmd:saving(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)} 将联合条件分布保存到{it:filename}。该分布是基于在{opt condvars()}中指定的变量进行条件处理的。使用{cmd:replace}替换已存在的{it:filename}文件。创建一个包含参数充分统计量的所有可行值的Stata数据文件。变量名称与{indepvars}中的名称相同，以及一个名为{cmd:_f_}的变量，包含可行值频率（有时称为条件数）。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见{helpb estimation options##level():[R] 估计选项}。
{opt level(#)}选项在重放时不起作用，因为置信区间是基于估算器特定的枚举。要更改置信水平，您必须重新拟合模型。

{phang}
{opt coef}报告估计的系数，而不是比值比（指数化系数）。{opt coef}可以在模型拟合时或重放时指定。{opt coef}仅影响结果的显示方式，而不影响它们的估计。

{phang}
{marker test}
{cmd:test(}{opt suff:icient}|{cmd:score}|{opt p:robability)} 报告与观察到的充分统计量、条件得分检验或条件概率检验相关的p值，默认值为{cmd:test(sufficient)}。如果在规范中包含{cmd:terms()}，则条件得分检验和条件概率检验将应用于每个术语，以为多个参数提供条件推断。所有统计量在估计时计算，不论指定了哪个。因此，这些统计量在估计后也可以显示，而无需重新拟合模型；请参见{helpb exlogistic postestimation:[R] exlogistic后估计}。

{phang}
{opth mue(varlist)}指定对{it:varlist}中的变量报告中位数无偏估计（MUEs）。默认情况下，报告条件最大似然估计（CMLEs），除非这些参数的CMLEs是无限的。如果您希望对所有{indepvars}报告MUEs，请指定{cmd:mue(_all)}。

{phang}
{opt midp}指示{cmd:exlogistic}在计算MUE、p值和置信区间时使用中p值规则。
此调整是为了分布的离散性，并在将观察到的统计量的离散概率加到p值之前将其值减半。中p值规则无法应用于其对应参数CMLE为无限的MUE。

{phang}
{opt log}和{opt nolog}指定是否显示枚举日志，该日志显示计算充分统计量的条件分布的进度。默认情况下显示枚举日志，除非您使用{cmd:set iterlog off}抑制它；请参见{cmd:set iterlog}在{manhelpi set_iter R:set iter}中。


{marker technote}{...}
{marker enumerations}{...}
{title:技术说明}

{pstd}
{opt memory(#)}选项限制了{cmd:exlogistic}在计算参数充分统计量的条件分布时消耗的内存量。{cmd:memory()}与数据最大内存设置（见{cmd:set max_memory}在{help memory_zh:[D] memory}中）独立，且{cmd:exlogistic}在不终止的情况下可能会超过{cmd:set max_memory}中指定的内存限制。默认情况下，提供一份日志，在处理每个观察后显示枚举的数量（条件分布的大小）。通常，您会看到枚举数量增加，然后在某个时刻它们会减少，因为多变量移位算法（{help exlogistic##HMP1987:Hirji, Mehta和Patel 1987}）确定某些枚举无法达到条件变量的观察到的充分统计量。当算法完成时，有必要将参数充分统计量的条件分布存储为数据集。因此，当算法完成时，如果没有足够的内存来存储条件分布，则可能会出现内存错误。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hiv1}{p_end}

{pstd}执行{cmd:hiv}对{cmd:cd4}和{cmd:cd8}的精确逻辑回归{p_end}
{phang2}{cmd:. exlogistic hiv cd4 cd8}{p_end}

{pstd}重放结果，但报告估计系数而不是比值比{p_end}
{phang2}{cmd:. exlogistic, coef}{p_end}

{pstd}重放结果并报告条件得分检验{p_end}
{phang2}{cmd:. exlogistic, test(score)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:exlogistic}将以下内容存储在{cmd:e()}中：

{synoptset 22 tabbed}{...}
{syntab:标量}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(k_groups)}}组数量{p_end}
{synopt:{cmd:e(n_possible)}}在{cmd:sum(sufficient)}等于观察到的{cmd:e(sufficient)}的情况下，可能的不同结果数量{p_end}
{synopt:{cmd:e(n_trials)}}二项试验数量参数{p_end}
{synopt:{cmd:e(sum_y)}}{it:depvar}的总和{p_end}
{synopt:{cmd:e(k_indvars)}}自变量数量{p_end}
{synopt:{cmd:e(k_terms)}}模型术语数量{p_end}
{synopt:{cmd:e(k_condvars)}}条件变量数量{p_end}
{synopt:{cmd:e(condcons)}}关于常数的条件指示{p_end}
{synopt:{cmd:e(midp)}}中p值规则指示{p_end}
{synopt:{cmd:e(eps)}}相对差异容忍{p_end}

{syntab:宏}
{synopt:{cmd:e(cmd)}}{cmd:exlogistic}{p_end}
{synopt:{cmd:e(cmdline)}}以键入的命令{p_end}
{synopt:{cmd:e(title)}}在估计输出中的标题{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(indvars)}}自变量{p_end}
{synopt:{cmd:e(condvars)}}条件变量{p_end}
{synopt:{cmd:e(groupvar)}}组变量{p_end}
{synopt:{cmd:e(binomial)}}二项试验数量变量{p_end}
{synopt:{cmd:e(terms)}}在{cmd:terms()}选项中设置的术语名称{p_end}
{synopt:{cmd:e(level)}}置信水平{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现{cmd:estat}的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins}不允许的预测{p_end}

{syntab:矩阵}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(mue_indicators)}}使用MUE而非CMLE估计的{cmd:e(b)}元素的指示{p_end}
{synopt:{cmd:e(se)}}{cmd:e(b)}的标准误（仅限CMLE）{p_end}
{synopt:{cmd:e(ci)}}{cmd:e(b)}的{cmd:e(level)}置信区间矩阵{p_end}
{synopt:{cmd:e(sum_y_groups)}}每组的{cmd:e(depvar)}总和{p_end}
{synopt:{cmd:e(N_g)}}每组的观测数量{p_end}
{synopt:{cmd:e(sufficient)}}{cmd:e(b)}的充分统计量{p_end}
{synopt:{cmd:e(p_sufficient)}}{cmd:e(sufficient)}的p值{p_end}
{synopt:{cmd:e(scoretest)}}自变量的条件得分检验{p_end}
{synopt:{cmd:e(p_scoretest)}}{cmd:e(scoretest)}的p值{p_end}
{synopt:{cmd:e(probtest)}}自变量的条件概率检验{p_end}
{synopt:{cmd:e(p_probtest)}}{cmd:e(probtest)}的p值{p_end}
{synopt:{cmd:e(scoretest_m)}}模型术语的条件得分检验{p_end}
{synopt:{cmd:e(p_scoretest_m)}}{cmd:e(scoretest_m)}的p值{p_end}
{synopt:{cmd:e(probtest_m)}}模型术语的条件概率检验{p_end}
{synopt:{cmd:e(p_probtest_m)}}{cmd:e(probtest_m)}的p值{p_end}

{syntab:函数}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker HMP1987}{...}
{phang}
Hirji, K. F.，C. R. Mehta 和 N. R. Patel. 1987.
计算精确逻辑回归的分布。
{it:美国统计协会杂志} 82：1110-1117。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <exlogistic.sthlp>}