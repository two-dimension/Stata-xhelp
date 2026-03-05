{smcl}
{* *! version 1.3.4  05sep2018}{...}
{viewerdialog contrast "dialog contrast"}{...}
{vieweralsosee "[R] contrast" "mansection R contrast"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast postestimation" "help contrast postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[R] margins, contrast" "help margins contrast"}{...}
{vieweralsosee "[R] pwcompare" "help pwcompare_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "contrast_zh##syntax"}{...}
{viewerjumpto "Menu" "contrast_zh##menu"}{...}
{viewerjumpto "Description" "contrast_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "contrast_zh##linkspdf"}{...}
{viewerjumpto "Options" "contrast_zh##options"}{...}
{viewerjumpto "Examples" "contrast_zh##examples"}{...}
{viewerjumpto "Video example" "contrast_zh##video"}{...}
{viewerjumpto "Stored results" "contrast_zh##results"}
{help contrast:English Version}
{hline}{...}
{p2colset 4 17 19 2}{...}
{p2col:{bf:[R] contrast}}{hline 2} 估计后的对比和线性假设检验
{p_end}
{p2col:}({mansection R contrast:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:contrast} {it:termlist}
[{cmd:,}
	{it:{help contrast##options_table:选项}}]

{pstd}
其中 {it:termlist} 是当前估计结果中出现的因子变量或交互项的列表。变量可以带或不带 {help contrast##operators:对比操作符} 输入，您可以使用任何 {help fvvarlist_zh:因子变量语法}。

{pstd}
请参见下面的 {it:{help contrast##operators:操作符 (op.)}} 表以获取对比操作符的列表。

{marker options_table}{...}
{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt over:all}}添加
	对所有指定对比进行联合假设检验{p_end}
{synopt:{opt asobs:erved}}将所有因子变量视为观察到的{p_end}
{synopt:{opt lincom}}将用户自定义对比视为线性组合{p_end}

{syntab:方程}
{synopt:{opt eq:uation(eqspec)}}对 {it:termlist} 中的对比进行
	方程 {it:eqspec} 的检验{p_end}
{synopt:{opt ateq:uations}}在每个方程内进行 {it:termlist} 中的对比{p_end}

{syntab:高级}
{synopt:{opt emptycells}{cmd:(}{it:{help contrast##empspec:empspec}{cmd:)}}}对空单元进行处理以适应平衡因子{p_end}
{synopt:{opt noestimcheck}}抑制可估计性检查{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opth mcomp:are(contrast##method:method)}}对多重比较进行调整；默认值为 {cmd:mcompare(noadjust)}{p_end}
{synopt:{opt noeff:ects}}抑制个体对比的表格{p_end}
{synopt:{opt ci:effects}}显示带有置信区间的效应表{p_end}
{synopt:{opt pv:effects}}显示带有 p 值的效应表{p_end}
{synopt:{opt eff:ects}}显示带有置信区间和 p 值的效应表{p_end}
{synopt:{opt nowald}}抑制 Wald 检验的表格{p_end}
{synopt:{opt noatlev:els}}仅报告使用内嵌 {cmd:@} 或嵌套 {cmd:|} 操作符的术语的整体 Wald 检验{p_end}
{synopt:{opt nosvy:adjust}}计算未调整的 Wald 检验对于调查结果{p_end}
{synopt:{opt sort}}在每个术语中按个体对比值进行排序{p_end}
{synopt:{opt post}}将对比及其 VCE 作为估计结果后处理{p_end}
{synopt :{it:{help contrast##display_options:display_options}}}控制
       列格式、行间距、行宽和因子变量标签{p_end}
{synopt :{opt df(#)}}使用 {it:#} 自由度的 t 分布计算 p 值和置信区间{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt df(#)} 不显示在对话框中。
{p_end}

{marker term}{...}
{synoptset 23 tabbed}{...}
{p2col 5 30 32 2:术语}描述{p_end}
{synoptline}
{syntab:主要效应}
{synopt:{cmd:A}}对 {cmd:A} 的主要效应进行联合检验{p_end}
{synopt:{it:r.}{cmd:A}}使用 {it:r.} 对 {cmd:A} 进行个体对比{p_end}
	
{syntab:交互效应}
{synopt:{cmd:A#B}}对 {cmd:A} 和 {cmd:B} 的双向交互效应进行联合检验{p_end}
{synopt:{cmd:A#B#C}}对 {cmd:A}、{cmd:B} 和 {cmd:C} 的三向交互效应进行联合检验{p_end}
{synopt:{it:r.}{cmd:A#}{it:g.}{cmd:B}}定义为 {it:r.} 和 {it:g.} 的 {cmd:A} 和 {cmd:B} 的每个交互的个体对比{p_end}
	
{syntab:部分交互效应}
{synopt:{it:r.}{cmd:A#B}}在由 {it:r.}{cmd:A} 定义的每个对比中对 {cmd:A} 和 {cmd:B} 的交互进行联合检验{p_end}
{synopt:{cmd:A#}{it:r.}{cmd:B}}在由 {it:r.}{cmd:B} 定义的每个对比中对 {cmd:A} 和 {cmd:B} 的交互进行联合检验{p_end}
	
{syntab:简单效应}
{synopt:{cmd:A@B}}在每个 {cmd:B} 的水平内对 {cmd:A} 的效应进行联合检验{p_end}
{synopt:{cmd:A@B#C}}在 {cmd:B} 和 {cmd:C} 的每个水平组合下对 {cmd:A} 的效应进行联合检验{p_end}
{synopt:{it:r.}{cmd:A@B}}使用 {it:r.} 对 {cmd:A} 的个体对比进行分解出来{p_end}
{synopt:{it:r.}{cmd:A@B#C}}使用 {it:r.} 对 {cmd:A} 的个体对比进行分解出来{p_end}
	
{syntab:其他条件效应}
{synopt:{cmd:A#B@C}}在 {cmd:C} 的每个水平下对 {cmd:A} 和 {cmd:B} 的交互效应进行联合检验{p_end}
{synopt:{cmd:A#B@C#D}}在 {cmd:C} 和 {cmd:D} 的每个水平组合下对 {cmd:A} 和 {cmd:B} 的交互效应进行联合检验{p_end}
{synopt:{it:r.}{cmd:A#}{it:g.}{cmd:B@C}}使用 {it:r.} 和 {it:g.} 对 {cmd:A} 和 {cmd:B} 的每个交互进行个体对比，定义为对 {cmd:A#B@C} 的分解{p_end}

{syntab:嵌套效应}
{synopt:{cmd:A|B}}对嵌套在 {cmd:B} 每个水平中的 {cmd:A} 的效应进行联合检验{p_end}
{synopt:{cmd:A|B#C}}对嵌套在 {cmd:B} 和 {cmd:C} 每个组合水平中的 {cmd:A} 的效应进行联合检验{p_end}
{synopt:{cmd:A#B|C}}在 {cmd:C} 每个水平内对 {cmd:A} 和 {cmd:B} 的交互效应进行联合检验{p_end}
{synopt:{cmd:A#B|C#D}}在 {cmd:C} 和 {cmd:D} 每个组合水平内对 {cmd:A} 和 {cmd:B} 的交互效应进行联合检验{p_end}
{synopt:{it:r.}{cmd:A|B}}使用 {it:r.} 对 {cmd:A} 的个体对比进行分解 {cmd:A|B}{p_end}
{synopt:{it:r.}{cmd:A|B#C}}使用 {it:r.} 对 {cmd:A} 的个体对比进行分解 {cmd:A|B#C}{p_end}
{synopt:{it:r.}{cmd:A#}{it:g.}{cmd:B|C}}在 {cmd:C} 每个水平内定义为 {it:r.} 和 {it:g.} 的 {cmd:A} 和 {cmd:B} 的每个交互的个体对比{p_end}
	
{syntab:斜率效应}
{synopt:{cmd:A#}{cmd:c.}{cmd:x}}对 {cmd:A} 在 {cmd:x} 斜率上的 效应进行联合检验{p_end}
{synopt:{cmd:A#}{cmd:c.}{cmd:x#}{cmd:c.}{cmd:y}}对 {cmd:A} 在 {cmd:x} 和 {cmd:y} 的乘积（交互）斜率上的效果进行联合检验{p_end}
{synopt:{cmd:A#B#}{cmd:c.}{cmd:x}}对 {cmd:A} 和 {cmd:B} 对 {cmd:x} 的斜率交互效应进行联合检验{p_end}
{synopt:{cmd:A#B#}{cmd:c.}{cmd:x#}{cmd:c.}{cmd:y}}对 {cmd:A} 和 {cmd:B} 对 {cmd:x} 和 {cmd:y} 的乘积（交互）斜率的交互效应进行联合检验{p_end}
{synopt:{it:r.}{cmd:A#}{cmd:c.}{cmd:x}}使用 {it:r.} 对 {cmd:A} 的效应在 {cmd:x} 斜率上的个体对比{p_end}
	
{syntab:分母}
{synopt:{cmd:.../}{it:term2}}在前面条款的 F 检验中使用 {it:term2} 作为分母{p_end}
{synopt:{cmd:.../}}在前面条款的 F 检验中使用残差作为分母（如果没有其他 {cmd:/} 被指定，则为默认选项）{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:A}、{cmd:B}、{cmd:C} 和 {cmd:D} 表示当前估计结果中的任何因子变量。{p_end}
{p 4 6 2}
{cmd:x} 和 {cmd:y} 表示当前估计结果中的任何连续变量。{p_end}
{p 4 6 2}
{it:r}和 {cmd:g.} 表示任何对比操作符。请参见 {help contrast##operators:下文} 表。{p_end}
{p 4 6 2}
{cmd:c.} 指定一个变量被视为连续；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}
操作符被允许在任何在 {cmd:@} 或 {cmd:|} 右侧不出现的因子变量上。操作符将相关因子变量的效应分解为自由度为 1 的效应（对比）。
{p_end}
{p 4 6 2}
在表中出现的任何地方均允许更高级别的交互（{cmd:#}）出现。{p_end}
{p 4 6 2}
如果在估计中使用了时间序列操作符，也允许使用时间序列操作符。{p_end}
{p 4 6 2}
{cmd:_eqns} 在 {help manova_zh}、{help mlogit_zh}、{help mprobit_zh} 和 {help mvreg_zh} 中指定方程，并且可以在因子变量出现的任何位置指定。{p_end}
{p 4 6 2}
{cmd:/} 仅在 {help anova_zh}、{help cnsreg_zh}、{help manova_zh}、{help mvreg_zh} 或 {help regress_zh} 之后被允许。{p_end}

{marker operators}{...}
{synoptset 23 tabbed}{...}
{synopthdr:操作符 (op.)}
{synoptline}
{synopt:{cmd:r}.}与参考（基准）水平的差异；
	默认值{p_end}
{synopt:{cmd:a}.}与下一个水平的差异（相邻对比）{p_end}
{synopt:{cmd:ar}.}与前一个水平的差异（反向相邻对比）{p_end}

{syntab:作为平衡操作符}
{synopt:{cmd:g}.}与平衡总体均值的差异{p_end}
{synopt:{cmd:h}.}与后续水平的平衡均值的差异（Helmert 对比）{p_end}
{synopt:{cmd:j}.}与前面水平的平衡均值的差异（反向 Helmert 对比）{p_end}
{synopt:{cmd:p}.}水平值的正交多项式{p_end}
{synopt:{cmd:q}.}水平序列的正交多项式{p_end}

{syntab:作为观察到的操作符}
{synopt:{cmd:gw}.}与观察加权总体均值的差异{p_end}
{synopt:{cmd:hw}.}与后续水平的观察加权均值的差异{p_end}
{synopt:{cmd:jw}.}与前面水平的观察加权均值的差异{p_end}
{synopt:{cmd:pw}.}观察加权水平值中的正交多项式{p_end}
{synopt:{cmd:qw}.}观察加权水平序列中的正交多项式{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
可以通过使用 {it:op#.} 或 {it:op}{cmd:(}{it:{help numlist_zh}}{cmd:).} 语法选择一个或多个单独的对比。例如，{cmd:a3.A} 选择 {cmd:A} 的第 3 级的相邻对比，而 {cmd:p(1/2).B} 选择 {cmd:B} 的线性和二次效应。请参阅 {it:{mansection R contrastRemarksandexamplesOrthogonalpolynomialcontrasts:正交多项式对比}} 和 {it:{mansection R contrastRemarksandexamplesBeyondlinearmodels:超越线性模型}} 在 {manlink R contrast} 中。{p_end}


{marker custom}{...}
{synoptset 23}{...}
{p2col 5 30 32 2:自定义对比}描述{p_end}
{synoptline}
{synopt:{cmd:{c -(}}{cmd:A} {it:{help numlist_zh}}{cmd:{c )-}}}用户定义
	因子 {cmd:A} 的水平上的对比{p_end}
{synopt:{cmd:{c -(}}{cmd:A#B} {it:{help numlist_zh}}{cmd:{c )-}}}用户定义
        在 {cmd:A} 和 {cmd:B} 之间的交互水平上的对比{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
自定义对比可以是一个术语的一部分，例如 
{cmd:{c -(}}{cmd:A} {it:numlist}{cmd:{c )-}}{cmd:#B}, 
{cmd:{c -(}}{cmd:A} {it:numlist}{cmd:{c )-}}{cmd:@B}, 
{cmd:{c -(}}{cmd:A} {it:numlist}{cmd:{c )-}}{cmd:|B},
{cmd:{c -(}}{cmd:A#B} {it:numlist}{cmd:{c )-}}, 和 
{cmd:{c -(}}{cmd:A} {it:numlist}{cmd:{c )-}}{cmd:#}{cmd:{c -(}}{cmd:B} {it:numlist}{cmd:{c )-}}。 
更高阶的自定义对比也是如此，
例如 
{cmd:{c -(}}{cmd:A#B} {it:numlist}{cmd:{c )-}}{cmd:@C}, 
{cmd:{c -(}}{cmd:A#B} {it:numlist}{cmd:{c )-}}{cmd:#}{it:r}{cmd:.C}, 和 
{cmd:{c -(}}{cmd:A#B} {it:numlist}{cmd:{c )-}}{cmd:#}{cmd:c.x}.{p_end}
{p 4 6 2}
最多允许八个因子变量的高阶交互与自定义对比。{p_end}


{marker method}{...}
{synoptset 22}{...}
{synopthdr:方法}
{synoptline}
{synopt:{opt noadj:ust}}不对多重比较进行调整；默认为{p_end}
{synopt:{opt bon:ferroni} [{opt adjustall}]}Bonferroni 方法；在所有术语中进行调整{p_end}
{synopt:{opt sid:ak} [{opt adjustall}]}Sidak 方法；在所有术语中进行调整{p_end}
{synopt:{opt sch:effe}}Scheffe 方法{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 估计后的处理}


{marker description}{...}
{title:描述}

{pstd}
{cmd:contrast} 测试线性假设并形成涉及因子变量及其交互的对比，来源于最近拟合的模型。检验包括主要效应、简单效应、交互效应和嵌套效应的 ANOVA 风格检验。{cmd:contrast} 可以使用命名对比将这些效应分解为与参考类别的比较、相邻层次的比较、与总体均值的比较、正交多项式等。也可以指定自定义对比。

{pstd}
{cmd:contrast} 可以与 {cmd:svy} 估计结果一起使用；请参见 {manhelp svy_postestimation SVY:svy 后估计}。

{pstd}
也可以对线性和非线性响应的边际进行对比；请参见 {manhelp margins_contrast R:margins, contrast}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R contrastQuickstart:快速入门}

        {mansection R contrastRemarksandexamples:备注和示例}

        {mansection R contrastMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt overall}
指定对所有术语进行联合假设检验。

{phang}
{opt asobserved}
指定使用估计样本中观察到的单元频次评估因子协变量。默认情况下，所有因子协变量被视为在每个级别中都有相等数量的观察。

{phang}
{opt lincom}
指定将用户定义的对比视为线性组合。默认情况下，要求所有用户定义的对比的总和为零。
（总和为零是对比的定义部分。）

{dlgtab:方程}

{phang}
{opt equation(eqspec)}
指定从中计算对比的方程。默认情况下，从第一个方程计算对比。

{phang}
{opt atequations}
指定在每个方程内计算对比。

{dlgtab:高级}

{marker empspec}{...}
{phang}
{opt emptycells(empspec)}
指定在与因子变量交互时如何处理空单元，这些因子变量被视为平衡的。

{phang2}
{cmd:emptycells(strict)}
是默认值；它指定将涉及空单元的对比视为不可估计。

{phang2}
{cmd:emptycells(reweight)}
指定增加观察单元的效应以适应任何缺失单元。这使得对比可估计，但改变了其解释。

{phang}
{opt noestimcheck}
指定 {cmd:contrast} 不检查可估计性。默认情况下，请求的对比会被检查，并报告那些被发现不可估计的对比。不估计性通常是由空单元造成的。如果指定了 {cmd:noestimcheck}，则按通常方式计算估计，并报告，即使结果估计可操控，这意味着它们可能在不同参数化的等效模型之间有所不同。

{dlgtab:报告}

{phang}
{opt level(#)}
指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{phang}
{opt mcompare(method)}
指定在因子变量术语内计算 p 值和置信区间的方法，以考虑多重比较。

{pmore}
大多数方法调整比较错误率 alpha_c，以实现预先指定的实验错误率 alpha_e。

{phang2}
{cmd:mcompare(noadjust)} 
是默认值；它指定不进行调整。

{center: alpha_c = alpha_e}

{phang2}
{cmd:mcompare(bonferroni)} 
基于 Bonferroni 不等式的上限调整比较错误率

{center: alpha_e <= m * alpha_c}

{pmore2}
其中 {it:m} 是术语内的比较数量。

{pmore2}
调整后的比较错误率为

{center: alpha_c = alpha_e/m}

{phang2}
{cmd:mcompare(sidak)}
基于概率不等式的上限调整比较错误率

{center:alpha_e <= 1 - (1 - alpha_c)^m}

{pmore2}
其中 {it:m} 是术语内的比较数量。

{pmore2}
调整后的比较错误率为

{center:alpha_c = 1 - (1 - alpha_e)^(1/m)}

{pmore2}
当 {it:m} 之间的比较是独立的时，此调整是精确的。

{phang2}
{cmd:mcompare(scheffe)}
使用 F 或卡方分布控制实验错误率，自由度等于术语的秩。

{phang2}
{cmd:mcompare(}{it:method} {cmd:adjustall)} 指定多重比较调整计入所有术语中所有比较，而不是逐项进行多重比较。这会导致在 {it:marginslist} 中指定多个变量或术语时进行更保守的调整。此选项仅与 {cmd:bonferroni} 和 {cmd:sidak} 方法兼容。

{phang}
{opt noeffects}
抑制带有置信区间的个体对比表。默认情况下当指定了 {cmd:mcompare()} 选项或者当 {it:termlist} 中的某个术语暗示了所有个体对比时，会生成该表。

{phang} 
{opt cieffects}
指定报告包含每个个体对比的置信区间的表。

{phang} 
{opt pveffects} 
指定报告包含每个个体对比的 p 值的表。

{phang}
{opt effects} 
指定报告包含每个个体对比的置信区间和 p 值的单个表。

{phang} 
{opt nowald} 
抑制 Wald 检验的表。

{phang}
{opt noatlevels}
指明仅对每个包含内嵌或嵌套 ({cmd:@} 或 {cmd:|}) 操作符的术语报告整体 Wald 检验。

{phang}
{opt nosvyadjust}
适用于 {opt svy} 估计命令。它指定进行 Wald 检验时不进行设计自由度的默认调整。即进行检验为
{bind:W/k ~ F(k,d)} 而不是 {bind:(d-k+1)W/(kd) ~ F(k,d-k+1)}，其中 k 是检验的维数，d 是样本 PSU 的总数减去总的层数。

{phang}
{opt sort} 
指定按每个术语中的对比值对个体对比表进行排序。

{phang} 
{opt post} 
使 {cmd:contrast} 像 Stata 估计（e-class）命令一样工作。
{cmd:contrast} 将估计对比的向量以及估计的方差-协方差矩阵发布到 {cmd:e()}，因此您可以将估计对比视为来自任何其他估计命令的结果。例如，您可以使用 {cmd:test} 对对比进行假设的同时检验，或者使用 {cmd:lincom} 创建线性组合。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt vsquish},
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}, 和
{opt nolstretch}。

{phang2}
{opt vsquish} 
指定抑制因子变量项与模型中其他变量之间的空白空间。

{phang2}
{opt nofvlabel} 显示因子变量水平值而不是附加的值标签。此选项将覆盖 {cmd:fvlabel} 设置；请参见 
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrap(#)} 指定在必须换行的长值标签时允许多少行。需要超过 {it:#} 行的标签将被截断。此选项将覆盖 {cmd:fvwrap} 设置；请参见
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrapon(style)} 指定换行的值标签是按字边界断开还是根据可用空间断开。

{phang3}
{cmd:fvwrapon(word)}，默认值，指定值标签在字边界断开。

{phang3}
{cmd:fvwrapon(width)} 指定值标签根据可用空间断开。

{pmore2}
此选项将覆盖 {cmd:fvwrapon} 设置；请参见
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt cformat(%fmt)} 指定如何格式化对比、标准误差和估计对比表中的置信区间。

{phang2}
{opt pformat(%fmt)} 指定如何格式化估计对比表中的 p 值。

{phang2}
{opt sformat(%fmt)} 指定如何格式化估计对比表中的检验统计量。

{phang2}
{opt nolstretch} 指定不自动扩展估计对比表的宽度以适应较长的变量名称。默认情况下，{cmd:lstretch}会自动扩展估计对比表的宽度，以适应结果窗口的宽度。要更改默认值，请使用 
{help lstretch_zh:set lstretch off}。
{opt nolstretch} 不在对话框中显示。
{p_end}

{marker eform_option}{...}
{phang}
{it:eform_option} 指定对比表以指数形式显示。exp(contrast) 显示而不是对比。标准误差和置信区间也会被转换。有关可用选项的列表，请参见 {manhelpi eform_option R}。

{pstd}
以下选项适用于 {opt contrast}，但不在对话框中显示：

{phang}
{opt df(#)} 指定使用 {it:#} 自由度的 t 分布计算 p 值和置信区间。
默认值为使用 {cmd:e(df_r)} 的自由度或如果 {cmd:e(df_r)} 缺失则使用标准正态分布。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}单向模型的设置{p_end}
{phang2}{cmd:. webuse cholesterol}{p_end}
{phang2}{cmd:. regress chol i.agegrp}{p_end}

{pstd}检验所有年龄组的单元均值是否相同，
即，检验年龄组的主要效应{p_end}
{phang2}{cmd:. contrast agegrp}{p_end}

{pstd}参考类别对比{p_end}
{phang2}{cmd:. contrast r.agegrp}{p_end}

{pstd}反向相邻对比{p_end}
{phang2}{cmd:. contrast ar.agegrp}{p_end}

{pstd}正交多项式对比{p_end}
{phang2}{cmd:. contrast p.agegrp}{p_end}

{pstd}单向模型的设置{p_end}
{phang2}{cmd:. anova chol i.race}{p_end}

{pstd}总体均值对比，使用 Bonferroni 的调整调整 p 值{p_end}
{phang2}{cmd:. contrast g.race, mcompare(bonferroni)}{p_end}

{pstd}参考类别效应的用户定义对比，检验类别 1 的单元均值是否等于类别 2 的单元均值，以及类别 1 的单元均值是否等于类别 3 的单元均值{p_end}
{phang2}{cmd:. contrast {c -(}race -1 1 0{c )-} {c -(}race -1 0 1{c )-}}{p_end}

    {hline}
{pstd}双向模型的设置{p_end}
{phang2}{cmd:. webuse bpchange}{p_end}
{phang2}{cmd:. anova bpchange dose##gender}{p_end}

{pstd}性别的简单效应{p_end}
{phang2}{cmd:. contrast r.gender@dose}{p_end}

{pstd}剂量的反向相邻简单效应{p_end}
{phang2}{cmd:. contrast ar.dose@gender}{p_end}

{pstd}交互效应分解为单个对比{p_end}
{phang2}{cmd:. contrast ar.dose#r.gender}{p_end}

{pstd}主要效应分解为单个对比{p_end}
{phang2}{cmd:. contrast ar.dose r.gender}

{pstd}部分交互效应{p_end}
{phang2}{cmd:. contrast ar.dose#gender}{p_end}
{phang2}{cmd:. contrast dose#r.gender}{p_end}

    {hline}
{pstd}嵌套模型的设置{p_end}
{phang2}{cmd:. webuse sat}{p_end}
{phang2}{cmd:. anova score method / class|method /}{p_end}

{pstd}在方法内嵌套的班级的简单效应{p_end}
{phang2}{cmd:. contrast class|method}

{pstd}带嵌套误差项的主要效应并对空单元进行重加权{p_end}
{phang2}{cmd:. contrast method / class|method, emptycells(reweight)}{p_end}

    {hline}
{pstd}不平衡数据的设置{p_end}
{phang2}{cmd:. webuse cholesterol}{p_end}

{pstd}不平衡数据的 ANOVA 模型{p_end}
{phang2}{cmd:. anova chol race##agegrp}{p_end}

{pstd}将所有因子视为平衡的参考类别效应{p_end}
{phang2}{cmd:. contrast r.race}{p_end}

{pstd}使用观察到的边际频率的参考类别效应{p_end}
{phang2}{cmd:. contrast r.race, asobserved}

{pstd}使用观察到的单元频率的总体均值对比{p_end}
{phang2}{cmd:. contrast gw.race}{p_end}

{pstd}使用观察到的边际频率的加权总体均值对比{p_end}
{phang2}{cmd:. contrast gw.race, asobserved wald cieffects}{p_end}

    {hline}
{pstd}连续协变量的设置{p_end}
{phang2}{cmd:. webuse census3}{p_end}
{phang2}{cmd:. anova brate region##c.medage}{p_end}

{pstd}地区对截距的参考类别效应{p_end}
{phang2}{cmd:. contrast r.region}{p_end}

{pstd}地区对 {cmd:medage} 斜率的参考类别效应{p_end}
{phang2}{cmd:. contrast r.region#c.medage}{p_end}

    {hline}
{pstd}非线性模型的设置{p_end}
{phang2}{cmd:. webuse hospital}{p_end}
{phang2}{cmd:. logistic satisfied hospital##illness}{p_end}

{pstd}主要效应和交互效应的 ANOVA 样式的检验表{p_end}
{phang2}{cmd:. contrast hospital##illness}{p_end}

    {hline}
{pstd}多元响应的设置{p_end}
{phang2}{cmd:. webuse jaw}{p_end}
{phang2}{cmd:. mvreg y1 y2 y3 = gender##fracture}{p_end}

{pstd}检验 {cmd:gender}、{cmd:fracture} 及其在第一个方程中的交互效应{p_end}
{phang2}{cmd:. contrast gender##fracture}{p_end}

{pstd}在方程 {cmd:y2} 中检验这些效应{p_end}
{phang2}{cmd:. contrast gender##fracture, equation(y2)}{p_end}

{pstd}对每个方程检验相同的效应，抑制术语间的空格{p_end}
{phang2}{cmd:. contrast gender##fracture, atequations vsquish}{p_end}

{pstd}检验因变量间均值的边际效应{p_end}
{phang2}{cmd:. contrast _eqns}{p_end}

{pstd}检验性别的主要效应是否在因变量之间存在差异{p_end}
{phang2}{cmd:. contrast gender#_eqns}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=XaeStjh6n-A":Stata 中对比的介绍：单向 ANOVA}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:contrast} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(df_r)}}方差的自由度{p_end}
{synopt:{cmd:r(k_terms)}}{it:termlist} 中的项数{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(cmd)}}{cmd:contrast}{p_end}
{synopt:{cmd:r(cmdline)}}输入的命令{p_end}
{synopt:{cmd:r(est_cmd)}}来自原始估计结果的 {cmd:e(cmd)}{p_end}
{synopt:{cmd:r(est_cmdline)}}来自原始估计结果的 {cmd:e(cmdline)}{p_end}
{synopt:{cmd:r(title)}}输出中的标题{p_end}
{synopt:{cmd:r(overall)}}{cmd:overall} 或空{p_end}
{synopt:{cmd:r(emptycells)}}来自 {cmd:emptycells()} 的 {it:empspec}{p_end}
{synopt:{cmd:r(mcmethod)}}来自 {opt mcompare()} 的 {it:method}{p_end}
{synopt:{cmd:r(mctitle)}}来自 {opt mcompare()} 的 {it:method} 的标题{p_end}
{synopt:{cmd:r(mcadjustall)}}{cmd:adjustall} 或空{p_end}
{synopt:{cmd:r(margin_method)}}{cmd:asbalanced} 或 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}对比估计{p_end}
{synopt:{cmd:r(V)}}对比估计的方差-协方差矩阵{p_end}
{synopt:{cmd:r(error)}}对比可估计性代码；{break}
	{cmd:0} 表示可估计，{break}
	{cmd:8} 表示不可估计{p_end}
{synopt:{cmd:r(L)}}应用于模型系数的对比矩阵{p_end}
{synopt:{cmd:r(table)}}包含对比及其标准误、检验统计量、p 值和置信区间的矩阵{p_end}
{synopt:{cmd:r(F)}} F 统计量的向量；{cmd:r(df_r)} 存在{p_end}
{synopt:{cmd:r(chi2)}}卡方统计量的向量；{cmd:r(df_r)} 不存在{p_end}
{synopt:{cmd:r(p)}}对应于 {cmd:r(F)} 或 {cmd:r(chi2)} 的 p 值的向量{p_end}
{synopt:{cmd:r(df)}}对应于 {cmd:r(p)} 的自由度的向量{p_end}
{synopt:{cmd:r(df2)}}对应于 {cmd:r(F)} 的分母自由度的向量{p_end}
{p2colreset}{...}


{pstd}
{cmd:contrast} 与 {opt post} 选项在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(df_r)}}方差的自由度{p_end}
{synopt:{cmd:e(k_terms)}}{it:termlist} 中的项数{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:contrast}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(est_cmd)}}来自原始估计结果的 {cmd:e(cmd)}{p_end}
{synopt:{cmd:e(est_cmdline)}}来自原始估计结果的 {cmd:e(cmdline)}{p_end}
{synopt:{cmd:e(title)}}输出中的标题{p_end}
{synopt:{cmd:e(overall)}}{cmd:overall} 或空{p_end}
{synopt:{cmd:e(emptycells)}}来自 {cmd:emptycells()} 的 {it:empspec}{p_end}
{synopt:{cmd:e(margin_method)}}{cmd:asbalanced} 或 {cmd:asobserved}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}对比估计{p_end}
{synopt:{cmd:e(V)}}对比估计的方差-协方差矩阵{p_end}
{synopt:{cmd:e(error)}}对比可估计性代码；{break}
	{cmd:0} 表示可估计，{break}
	{cmd:8} 表示不可估计{p_end}
{synopt:{cmd:e(L)}}应用于模型系数的对比矩阵{p_end}
{synopt:{cmd:e(F)}}未调整的 F 统计量的向量；{cmd:e(df_r)} 存在{p_end}
{synopt:{cmd:e(chi2)}}卡方统计量的向量；{cmd:e(df_r)} 不存在{p_end}
{synopt:{cmd:e(p)}}对应于 {cmd:e(F)} 或 {cmd:e(chi2)} 的未调整 p 值的向量{p_end}
{synopt:{cmd:e(df)}}对应于 {cmd:e(p)} 的自由度的向量{p_end}
{synopt:{cmd:e(df2)}}对应于 {cmd:e(F)} 的分母自由度的向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <contrast.sthlp>}