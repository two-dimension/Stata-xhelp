{smcl}
{* *! version 1.1.5  30may2019}{...}
{viewerdialog margins "dialog margins"}{...}
{vieweralsosee "[R] margins, contrast" "mansection R margins,contrast"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[R] margins postestimation" "help margins_postestimation_zh"}{...}
{vieweralsosee "[R] margins, pwcompare" "help margins_pwcompare_zh"}{...}
{vieweralsosee "[R] pwcompare" "help pwcompare_zh"}{...}
{viewerjumpto "语法" "margins contrast##syntax"}{...}
{viewerjumpto "菜单" "margins contrast##menu"}{...}
{viewerjumpto "描述" "margins contrast##description"}{...}
{viewerjumpto "子选项" "margins contrast##suboptions"}{...}
{viewerjumpto "示例" "margins contrast##examples"}{...}
{viewerjumpto "存储结果" "margins contrast##results"}
{help margins_contrast:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[R] margins, contrast} {hline 2}}边际的对比
{p_end}
{p2col:}({mansection R margins,contrast:查看完整的 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:margins} [{it:{help fvvarlist_zh:marginlist}}] 
{ifin}
[{it:{help margins contrast##weight:weight}}]
[{cmd:,} 
{opt contr:ast}
{it:{help margins##response_options:margins_options}}] 

{p 8 16 2}
{cmd:margins} [{it:{help fvvarlist_zh:marginlist}}] 
{ifin}
[{it:{help margins contrast##weight:weight}}]
[{cmd:,} 
{opt contr:ast}{cmd:(}{it:{help margins_contrast##contrast_options:suboptions}}{cmd:)}
{it:{help margins##response_options:margins_options}}] 


{pstd}
其中 {it:marginlist} 是当前估计结果中出现的因子变量或交互项的列表。变量可以带或不带 {help contrast##operators:contrast operators}，您可以使用任何因子变量语法：

		. {cmd:margins sex##group, contrast}

		. {cmd:margins sex##g.group, contrast}

		. {cmd:margins sex@group, contrast}

{pstd}
有关对比操作符的列表，请参见 {it:{help contrast##operators:operators (op.)}} 表。在 {cmd:margins} 的 {cmd:over()} 和 {cmd:within()} 选项中也可以指定对比操作符，以便在这些变量的层次之间执行对比。

{marker contrast_options}{...}
{synoptset 24 tabbed}{...}
{synopthdr:子选项}
{synoptline}
{syntab :对比}
{synopt:{opt overall}}增加
	所有指定对比的联合假设检验{p_end}
{synopt:{opt lincom}}将用户定义的对比视为线性组合{p_end}
{synopt:{opt pred:ict}{cmd:(}{it:op}[{cmd:._predict}]{cmd:)}在
	由多个 {opt predict()} 选项定义的组中应用
	{it:op}{cmd:.} 对比操作符
	{p_end}
{synopt:{opt at:contrast}{cmd:(}{it:op}[{cmd:._at}]{cmd:)}在
	由 {opt at()} 定义的组中应用
	{it:op}{cmd:.} 对比操作符
	{p_end}
{synopt:{opt pred:ictjoint}}在多个 {opt predict()} 选项定义的所有组之间联合检验
	{p_end}
{synopt:{opt at:joint}}在由 {opt at()} 定义的所有组之间联合检验
        {p_end}
{synopt:{opt over:joint}}在未操作 {opt over()} 变量的所有层次之间联合检验{p_end}
{synopt:{opt within:joint}}在未操作 {opt within()} 变量的所有层次之间联合检验{p_end}
{synopt:{opt marginsw:ithin}}在 {it:marginlist} 中未操作项的层次内进行对比{p_end}

{synopt:{opt ci:effects}}显示带有置信区间的效应表{p_end}
{synopt:{opt pv:effects}}显示带有 p 值的效应表{p_end}
{synopt:{opt eff:ects}}显示带有置信区间和 p 值的效应表
	{p_end}
{synopt:{opt nowald}}抑制沃尔德检验表{p_end}
{synopt:{opt noatlev:els}}仅报告使用 {cmd:@} 或嵌套 {cmd:|} 操作符的项的整体沃尔德检验{p_end}
{synopt:{opt nosvy:adjust}}对调查结果计算未经调整的沃尔德检验
	{p_end}
{synoptline}

{marker weight}{...}
{pstd}
允许使用 {cmd:fweight}s、{cmd:aweight}s、{cmd:iweight}s 和 {cmd:pweight}s；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
带有 {cmd:contrast} 选项或对比操作符的 {cmd:margins} 执行边际的对比。这扩展了 {cmd:contrast} 在任何非线性响应、预测边际或其他可以通过 {cmd:margins} 估计的边际上的能力。


{marker suboptions}{...}
{title:子选项}

{dlgtab:对比}

{phang}
{opt overall}
指定在所有项上执行联合假设检验。

{phang}
{opt lincom}
指定将用户定义的对比视为线性组合。默认要求所有用户定义的对比和为零。
（和为零是对比的定义部分。）

{phang}
{opt predict}{cmd:(}{it:op}{cmd:._predict}{cmd:)}
指定将 {it:op}{cmd:.} 对比操作符应用于由多个 {help margins_zh} 的 {opt predict()} 选项定义的组。
相比之下，默认行为是在这些组内执行检验和对比。

{phang}
{opt atcontrast}{cmd:(}{it:op}{cmd:._at}{cmd:)}
指定将 {it:op}{cmd:.} 对比操作符应用于由 {opt at()} 选项定义的组。相比之下，默认行为是在由 {opt at()} 选项定义的组内执行检验和对比。

{pmore}
请参见 {mansection R margins,contrastRemarksandexamplesex6:示例 6} 在 {it:备注和示例} 中 {bf:[R] margins, contrast}。

{phang}
{opt predictjoint} 指定在多个 {help margins_zh} 的 {opt predict()} 选项所定义的所有组之间执行联合检验。
相比之下，默认行为是在每个组内执行对比和检验。

{phang}
{opt atjoint} 指定在由 {opt at()} 选项定义的所有组之间执行联合检验。相比之下，默认行为是在每个组内执行对比和检验。

{pmore}
请参见 {mansection R margins,contrastRemarksandexamplesex5:示例 5} 在 {it:备注和示例} 中 {bf:[R] margins, contrast}。

{phang}
{opt overjoint}
指定如何处理 {opt over()} 选项中的未操作变量。

{pmore}
{opt over()} 选项中的每个变量可以带或不带对比操作符来指定。对于有对比操作的变量，总是会执行指定的对比比较。

{pmore}
{opt overjoint} 指定在未操作变量的所有层次之间执行联合检验。相比之下，默认行为是在未操作变量的所有层次组合内执行对比和检验。

{pmore}
请参见 {mansection R margins,contrastRemarksandexamplesex3:示例 3} 在 {it:备注和示例} 中 {bf:[R] margins, contrast}。

{phang}
{opt withinjoint} 指定如何处理 {opt within()} 选项中的未操作变量。

{pmore}
{opt within()} 选项中的每个变量可以带或不带对比操作符来指定。对于有对比操作的变量，总是会执行指定的对比比较。

{pmore}
{opt withinjoint} 指定在未操作变量的所有层次之间执行联合检验。相比之下，默认行为是在未操作变量的所有层次组合内执行对比和检验。

{phang}
{opt marginswithin} 指定如何处理 {it:marginlist} 中的未操作变量。

{pmore}
{it:marginlist} 中的每个变量可以带或不带对比操作符来指定。对于有对比操作的变量，总是会执行指定的对比比较。

{pmore}
{opt marginswithin} 指定在每个未操作变量的层次组合内执行对比和检验。相比之下，默认行为是对未操作变量的所有层次执行联合检验。

{pmore}
请参见 {mansection R margins,contrastRemarksandexamplesex4:示例 4} 在 {it:备注和示例} 中 {bf:[R] margins, contrast}。

{phang} 
{opt cieffects}
指定报告包含每个单独对比的置信区间的表格。

{phang} 
{opt pveffects} 
指定报告包含每个单独对比的 p 值的表格。

{phang}
{opt effects} 
指定报告包含每个单独对比的置信区间和 p 值的单一表格。

{phang}
{opt nowald} 
抑制沃尔德检验表。

{phang}
{opt noatlevels}
指示仅报告包含在使用 {cmd:@} 或 {cmd:|} 操作符的项中的整体沃尔德检验。

{phang}
{opt nosvyadjust}
用于 {opt svy} 估计命令。它指定在没有对设计自由度的默认调整的情况下进行沃尔德检验。也就是说，该检验作为 {bind:W/k ~ F(k,d)} 而不是 {bind:(d-k+1)W/(kd) ~ F(k,d-k+1)} 进行，其中 k 是检验的维度，d 是样本 PSUs 的总数减去总分层数。


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在快速参考。有关 {cmd:margins,}、{cmd:contrast} 的概念概述以及讨论的示例，请参见 {bf:{mansection R margins,contrastRemarksandexamples:备注和示例}} 在 {bf:{mansection R margins,contrast:[R] margins, contrast}} 中。

{phang2}{cmd:. webuse margex}{p_end}
{phang2}{cmd:. logistic outcome treatment##group age c.age#c.age treatment#c.age}{p_end}
{phang2}{cmd:. margins, dydx(treatment)}{p_end}
{phang2}{cmd:. margins r.treatment}{p_end}
{phang2}{cmd:. margins treatment#group, contrast(wald)}{p_end}
{phang2}{cmd:. margins treatment@group, contrast(wald)}{p_end}
{phang2}{cmd:. margins treatment, over(group) contrast(wald overjoint)}{p_end}
{phang2}{cmd:. margins treatment, over(group) contrast(wald)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:margins,} {cmd:contrast} 在 {cmd:r()} 中存储以下附加结果：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(k_terms)}}参与对比的项数{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(cmd)}}{cmd:contrast}{p_end}
{synopt:{cmd:r(cmd2)}}{cmd:margins}{p_end}
{synopt:{cmd:r(overall)}}{opt overall} 或为空{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(L)}}施加于边际的对比矩阵{p_end}
{synopt:{cmd:r(chi2)}}卡方统计量的向量{p_end}
{synopt:{cmd:r(p)}}与 {cmd:r(chi2)} 对应的 p 值的向量{p_end}
{synopt:{cmd:r(df)}}与 {cmd:r(p)} 对应的自由度向量{p_end}
{p2colreset}{...}

{pstd}
{cmd:margins,} {cmd:contrast} 带 {opt post} 选项时，还在 {cmd:e()} 中存储以下附加结果：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(k_terms)}}参与对比的项数{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:contrast}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:margins}{p_end}
{synopt:{cmd:e(overall)}}{opt overall} 或为空{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(L)}}施加于边际的对比矩阵{p_end}
{synopt:{cmd:e(chi2)}}卡方统计量的向量{p_end}
{synopt:{cmd:e(p)}}与 {cmd:e(chi2)} 对应的 p 值的向量{p_end}
{synopt:{cmd:e(df)}}与 {cmd:e(p)} 对应的自由度向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <margins_contrast.sthlp>}