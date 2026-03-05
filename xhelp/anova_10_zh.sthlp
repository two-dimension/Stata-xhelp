
{smcl}
{* *! version 1.2.10  22may2009}{...}
{* 基于版本 1.2.6  26apr2007 的 anova.sthlp}{...}
{* 此帮助文件不出现在手册中}{...}
{help anova_10:English Version}
{hline}
{cmd:help anova_10}{right:另见:  {help anova_postestimation_10_zh}}
{right: {help previously documented}{space 2}}
{hline}

{title:标题}

{p2colset 5 18 20 2}{...}
{p2col:{hi:[R] anova} {hline 2}}{cmd:anova} 版本 11 之前的语法{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[{bf:anova} 的语法从版本 11 开始有所更改。此帮助文件记录了 {cmd:anova} 的旧语法，因此可能对您没有兴趣。如果您在旧的 do-files 中将 {help version_zh} 设置为小于 11 的版本，那么您不需要将 {cmd:anova} 转换为现代语法。此帮助文件是为希望调试或理解旧代码的人提供的。请点击 {help anova_zh:这里} 以获取现代 {cmd:anova} 命令的帮助文件。]{rm}

{title:语法}

{p 8 14 2}
{cmdab:an:ova}
{varname}
[{it:term} [{cmd:/}] [{it:term} [{cmd:/}] {it:...}]]
{ifin}
{weight}
[{cmd:,} {it:options}]

{p 8 14 2}
其中 {it:term} 的形式为 {space 2}{it:varname}[{c -(}{cmd:*}|{cmd:|}{c )-}{it:varname}[{it:...}]]

{synoptset 23 tabbed}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opth ca:tegory(varlist)}}{it:terms} 中的变量是分类变量或类别变量{p_end}
{synopt:{opth cl:ass(varlist)}}{cmd:category(}{it:varlist}{cmd:)} 的同义词{p_end}
{synopt:{opth cont:inuous(varlist)}}{it:terms} 中的变量是连续的{p_end}
{synopt:{opth rep:eated(varlist)}}{it:terms} 中的变量是重复测量变量{p_end}
{synopt:{opt p:artial}}使用部分（或边际）平方和{p_end}
{synopt:{opt se:quential}}使用顺序平方和{p_end}
{synopt:{opt nocons:tant}}抑制常数项{p_end}

{syntab:高级模型}
{synopt:{opt bse(term)}}在重复测量 ANOVA 中的组间误差项{p_end}
{synopt:{opth bseunit(varname)}}表示组间误差项中最低单位的变量{p_end}
{synopt:{opth group:ing(varname)}}用于计算合并协方差矩阵的分组变量{p_end}

{syntab:报告}
{synopt:{opt r:egress}}显示回归表{p_end}
{synopt:[{cmdab:no:}]{opt an:ova}}显示或抑制 ANOVA 表{p_end}
{synopt:{opt d:etail}}显示分类变量的值到水平号码的映射{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 是允许的；参见 {help prefix_zh}。
{p_end}
{p 4 6 2}
{opt aweight}s 和 {opt fweight}s 是允许的；参见 {help weight_zh}。
{p_end}
{p 4 6 2}
请参见 {help anova_postestimation_10_zh} 以获取估计后可用的特性。{p_end}

{title:描述}

{pstd}
{opt anova} 命令适用于平衡和不平衡设计的方差分析（ANOVA）和协方差分析（ANCOVA）模型，包括具有缺失单元的设计；重复测量 ANOVA；以及因子设计、嵌套设计或混合设计。{opt anova} 也可以用于那些对 ANOVA 和 ANCOVA 输出没有兴趣的用户生成回归估计。

{pstd}
如果您想拟合单因素 ANOVA 模型，您可能会发现 {opt oneway} 或 {opt loneway} 命令更方便；参见 {manhelp oneway R} 和 {manhelp loneway R}。如果您对 MANOVA 或 MANCOVA 感兴趣，请参见 {manhelp manova MV}。

{title:选项}

{dlgtab:模型}

{phang}
{opth category(varlist)} 指定 {it:terms} 中的哪些变量是分类变量或类别变量。Stata 通常假设所有变量都是分类变量，因此此选项通常不需要指定。然而，如果你指定了此选项，{it:terms} 中未列出的变量将被假定为连续变量。同时也请参见 {cmd:class()} 和 {cmd:continuous()} 选项。

{phang}
{opth class(varlist)} 是 {opt category(varlist)} 的同义词。

{phang}
{opth continuous(varlist)} 指定 {it:terms} 中哪些变量是连续的。Stata 通常假设所有变量都是分类变量。同时也请参见 {cmd:category()} 和 {cmd:class()} 选项。

{phang}
{opth repeated(varlist)} 指定 {it:terms} 中哪些分类变量应被视为重复测量变量，在重复测量 ANOVA 或 ANCOVA 中使用。

{phang}
{opt partial} 使用部分（或边际）平方和展示 ANOVA 表。此设置为默认设置。同时请参见 {opt sequential} 选项。

{phang}
{opt sequential} 使用顺序平方和展示 ANOVA 表。

{phang}
{opt noconstant} 从 ANOVA 或回归模型中抑制常数项（截距）。

{dlgtab:高级模型}

{phang}
{opt bse(term)} 指定在重复测量 ANOVA 中的组间误差项。此选项仅在极少情况下需要，当 {opt anova} 命令无法自动确定组间误差项时。

{phang}
{opth bseunit(varname)} 指定表示在重复测量 ANOVA 中组间误差项的最低单位的变量。此选项很少需要，因为 {opt anova} 命令通常会将组间误差项中列出的第一个变量自动选定为该选项的默认值。

{phang}
{opth grouping(varname)} 指定一个变量，用于确定在计算将合并的协方差矩阵时，应将哪些观察值分组在一起。此选项很少需要，因为 {opt anova} 命令通常会自动选择所有变量组合（首个变量除外或按 {opt bseunit()} 选项指定的组合）作为分组观察值的默认值。

{dlgtab:报告}

{phang}
{opt regress} 提供相应模型的回归输出。指定 {opt regress} 则隐含 {opt noanova} 选项，因此，如果您同时希望得到回归输出和 ANOVA 表，您也必须指定 {opt anova} 选项。您无需在估计时指定 {opt regress} 选项。您可以随时通过输入 {cmd:anova, regress} 获取基础回归估计。

{phang}
[{opt no}]{opt anova} 指示 ANOVA 表是否显示。{opt anova} 命令通常会显示 ANOVA 表，在那些情况下，{opt noanova} 选项则抑制显示。例如，输入 {cmd:anova, detail noanova} 将显示最后一个 ANOVA 模型的 {opt detail} 输出，但抑制 ANOVA 表本身的显示。

{pmore}
如果您指定了 {opt regress} 选项，ANOVA 表将自动被抑制。然后，如果同时指定 {opt anova} 选项，将显示回归输出和 ANOVA 表。

{phang}
{opt detail} 提供一个表，显示分类变量的实际值及其与水平号码的映射。您无需在估计时指定此选项。您可以随时通过输入 {cmd:anova, detail} 获取该输出。

{title:示例}

{pstd}{title:单因素 ANOVA}

{phang2}{cmd:. use http://www.stata-press.com/data/r10/systolic}{p_end}
{phang2}{cmd:. version 10.1: anova systolic drug}{p_end}

{pstd}{title:双因素 ANOVA}

{phang2}{cmd:. version 10.1: anova systolic drug disease}{p_end}

{pstd}{title:双因素交互 ANOVA}

{phang2}{cmd:. version 10.1: anova systolic drug disease drug*disease}{p_end}

{pstd}{title:三因素交互 ANOVA}

{phang2}{cmd:. use http://www.stata-press.com/data/r10/manuf}{p_end}
{phang2}{cmd:. version 10.1: anova yield temp chem temp*chem meth temp*meth chem*meth temp*chem*meth}{p_end}

{pstd}{title:三因素交互 ANCOVA}

{phang2}{cmd:. use http://www.stata-press.com/data/r10/sysage}{p_end}
{phang2}{cmd:. version 10.1: anova systolic drug disease age disease*age, continuous(age){p_end}

{pstd}{title:嵌套 ANOVA}

{phang2}{cmd:. use http://www.stata-press.com/data/r10/machine}{p_end}
{phang2}{cmd:. version 10.1: anova output machine / operator|machine /}{p_end}

{pstd}{title:分割图 ANOVA}

{phang2}{cmd:. use http://www.stata-press.com/data/r10/reading}{p_end}
{phang2}{cmd:. version 10.1: anova score prog / class|prog skill prog*skill / class*skill|prog / group|class*skill|prog /}{p_end}

{pstd}{title:重复测量 ANOVA}

{phang2}{cmd:. use http://www.stata-press.com/data/r10/t43}{p_end}
{phang2}{cmd:. version 10.1: anova score person drug, repeated(drug){p_end}


{title:保存的结果}

{pstd}
{cmd:anova} 在 {cmd:e()} 中保存以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的 R平方{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ss_}{it:#}{cmd:)}}项 {it:#} 的平方和{p_end}
{synopt:{cmd:e(df_}{it:#}{cmd:)}}项 {it:#} 的分子自由度{p_end}
{synopt:{cmd:e(ssdenom_}{it:#}{cmd:)}}项 {it:#} 的分母平方和（使用非残差误差时）{p_end}
{synopt:{cmd:e(dfdenom_}{it:#}{cmd:)}}项 {it:#} 的分母自由度（使用非残差误差时）{p_end}
{synopt:{cmd:e(F_}{it:#}{cmd:)}}项 {it:#} 的 F 统计量（如果计算）{p_end}
{synopt:{cmd:e(N_bse)}}组间误差项的水平数量{p_end}
{synopt:{cmd:e(df_bse)}}组间误差项的自由度{p_end}
{synopt:{cmd:e(box}{it:#}{cmd:)}}特定组合的重复变量的 Box 保守 epsilon ({cmd:repeated()} 仅){p_end}
{synopt:{cmd:e(gg}{it:#}{cmd:)}}特定组合的重复变量的 Greenhouse-Geisser epsilon ({cmd:repeated()} 仅){p_end}
{synopt:{cmd:e(hf}{it:#}{cmd:)}}特定组合的重复变量的 Huynh-Feldt epsilon ({cmd:repeated()} 仅){p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:anova}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(varnames)}}右侧变量的名称{p_end}
{synopt:{cmd:e(term_}{it:#}{cmd:)}}项 {it:#}{p_end}
{synopt:{cmd:e(errorterm_}{it:#}{cmd:)}}项 {it:#} 的误差项（使用非残差误差时）{p_end}
{synopt:{cmd:e(sstype)}}平方和的类型； {cmd:sequential} 或 {cmd:partial}{p_end}
{synopt:{cmd:e(repvars)}}重复变量的名称（{cmd:repeated()} 仅）{p_end}
{synopt:{cmd:e(repvars}{it:#}{cmd:)}}特定组合的重复变量的名称（{cmd:repeated()} 仅）{p_end}
{synopt:{cmd:e(model)}}{cmd:ols}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(properties)}}{cmd:b_nonames V_nonames}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(Srep)}}基于重复测量的协方差矩阵（{cmd:repeated()} 仅）{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{title:另见}

{psee}
手册:  {help previously documented}
{p_end}

{psee}
{space 2}帮助:  {manhelp anova R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <anova_10.sthlp>}