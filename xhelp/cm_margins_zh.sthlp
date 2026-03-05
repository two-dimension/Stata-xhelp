{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog margins "dialog margcm"}{...}
{vieweralsosee "[CM] margins" "mansection CM margins"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] margins, contrast" "help margins contrast"}{...}
{vieweralsosee "[R] margins, pwcompare" "help margins pwcompare"}{...}
{vieweralsosee "[R] margins postestimation" "help margins postestimation"}{...}
{viewerjumpto "Syntax" "cm_margins_zh##syntax"}{...}
{viewerjumpto "Menu" "cm_margins_zh##menu"}{...}
{viewerjumpto "Description" "cm_margins_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cm_margins_zh##linkspdf"}{...}
{viewerjumpto "Options" "cm_margins_zh##options"}{...}
{viewerjumpto "Examples" "cm_margins_zh##examples"}{...}
{viewerjumpto "Stored results" "cm_margins_zh##results"}
{help cm_margins:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[CM] margins} {hline 2}}调整后的预测、预测边际和边际效应{p_end}
{p2col:}({mansection CM margins:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:margins}
[{it:marginlist}]
[{cmd:,} {it:options}]

{phang}
{it:marginlist} 是当前估计结果中出现的因子变量或交互项列表。

{phang}
有关完整语法，请参见 {manhelp margins R}。

{synoptset 32}{...}
{synopthdr}
{synoptline}
{synopt :{cmdab:outc:ome(}{help cm_margins##outcomes:{it:outcomes}}[{cmd:,} {cmdab:altsub:pop}]{cmd:)}}为指定的结果估计边际{p_end}
{synopt :{opth alt:ernative(cm_margins##alts:alts)}}为指定的替代方案估计边际{p_end}
{synopt :{cmdab:alt:ernative(}{cmdab:sim:ultaneous)}}同时更改所有替代方案的边际估计{p_end}
{synopt :{opt contr:ast}}对 {it:marginlist} 中的元素水平进行差异的联合检验{p_end}
{synopt :{opth contr:ast(cm_margins##contrast_options:contrast_options)}}按 {it:contrast_options} 中指定的结果或替代方案对边际进行对比{p_end}
{synopt :{opt noe:sample}}不将 {cmd:margins} 限制为估计样本{p_end}
{synopt :{it:other_margins_options}}有关更多选项，请参见 {manhelp margins R} {p_end}
{synoptline}

{synopthdr:contrast_options}
{synoptline}
{synopt :{opt out:comejoint}}对所有结果进行差异的联合检验{p_end}
{synopt :{cmdab:out:comecontrast(}{it:op}[{cmd:._outcome}]{cmd:)}对结果应用 {it:op}{cmd:.} 对比运算符{p_end}
{synopt :{opt alt:ernativejoint}}对替代方案进行差异的联合检验{p_end}
{synopt :{cmdab:alt:ernativecontrast(}{it:op}[{cmd:.}{it:altvar}]{cmd:)}对针对替代性的协变量的替代方案水平应用 {it:op}{cmd:.} 对比运算符{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:margins} 根据之前拟合的模型的预测计算统计数据。这些统计数据可以在所有协变量上平均计算，或者在某些协变量的固定值上进行计算，并在其余协变量上进行平均。拟合选择模型后，{cmd:margins} 提供诸如边际预测选择概率、调整后的预测和边际效应的估计，从而使您能够轻松解释选择模型的结果。

{pstd}
对于选择模型，可以计算许多可能的边际。因此，{cmd:margins} 具有特殊的选择模型选项，用于选择估计哪些结果或选择哪些替代方案是固定或在其中平均。这些选项在以下情况下可用：
{help cmclogit_zh},
{help cmmixlogit_zh}, 
{help cmxtmixlogit_zh}, 
{help cmmprobit_zh}, 和 
{help cmroprobit_zh}。

{pstd}
带有 {cmd:contrast} 选项或使用 {help contrast##operators:对比运算符} 的 {cmd:margins} 可以执行边际的对比（比较）。拟合选择模型后，还提供了特殊选项以选择结果或替代方案的对比。

{pstd}
本条目重点介绍了使用 {cmd:margins} 的特殊选择模型选项。有关 {cmd:margins} 的全部功能，请参见 {manhelp margins R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM marginsQuickstart:快速入门}

        {mansection CM marginsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{marker outcomes}{...}
{phang}
{cmd:outcome(}{it:outcomes}[{cmd:, altsubpop}]{cmd:)} 指定仅为指定的结果估计边际。默认是为所有结果估计边际。

{pmore}
{it:outcomes} 是一个或多个结果的列表，这些是替代变量的值；请参见 {manhelp cmset CM}。 {it:outcomes} 可以通过以下方式指定：
{pin2}
{cmd:#1}, {cmd:#2}, ...，其中 {cmd:#1} 表示替代变量的第一级，{cmd:#2} 表示第二级，等等。;

{pin2}
替代变量的数值（如果是数值变量）;

{pin2}
替代变量的标签（如果有空格，需用引号括起来）;

{pin2}
替代变量的字符串值（如果是字符串变量，需用引号括起来）;或

{pin2}
{cmd:_all} 或 {cmd:*} 表示所有替代变量的级别。

{pmore}
子选项 {cmd:altsubpop} 仅适用于选择集不平衡的样本。对于平衡样本，默认与指定 {cmd:altsubpop} 相同。 此选项用于结合替代特定协变量和不平衡选择集，以指定仅对具有该替代方案的选择集的子群体进行计算。默认情况下，样本被视为平衡，未包含在选择集中的替代方案被视为具有零选择概率的替代方案。 {cmd:altsubpop} 适用于不同选择集的非平衡实验设计。

{marker alts}{...}
{phang}
{opt alternative(alts)} 仅在 {it:marginlist} 的一个或多个替代特定协变量中指定时适用，适用于 {cmd:at()} 选项或边际效应选项之一 {cmd:dydx()} 等。此选项指定仅为指定的替代方案估计边际。默认情况下，估计所有替代方案的边际。 {it:alts} 的指定方式与 {opt outcome(outcomes)} 中相同。

{phang}
{cmd:alternative(simultaneous)} 仅在 {cmd:margins} 的指定中包含替代特定协变量时适用。默认情况下，每个替代特定协变量对每个替代方案分别更改（例如，设置为指定值），为每个替代方案提供结果。此选项指定每个替代特定协变量将在所有替代方案上同时更改，以产生单个结果。

{pmore}
例如，假设 {it:xvar} 是具有替代方案 {it:A}、{it:B} 和 {it:C} 的替代特定变量，指定 {cmd:margins,}
{cmd:at(}{it:xvar}{cmd:=1)}。默认情况下，{it:xvar} 首先在替代 {it:A} 上设置为 1，而在 {it:B} 和 {it:C} 上保持其样本值，然后同样适用于替代 {it:B}，再适用于替代 {it:C}，为三个替代方案提供结果。
{cmd:alternative(simultaneous)} 选项在各替代方案 {it:A}、{it:B} 和 {it:C} 上同时将 {it:xvar} 设置为 1，从而为这些替代方案作为组产生单一结果。

{marker contrast_options}{...}
{phang}
{cmd:contrast} 仅在 {it:marginlist} 指定时适用。如果 {it:marginlist} 的一个元素仅包含特定案例的协变量，此选项将显示预测概率在每个结果的元素水平之间的差异的联合检验。如果该元素包含替代特定协变量，则此选项将显示在每个结果和替代方案组合的元素水平之间的预测概率差异的联合检验。它还将显示所有差异的联合检验。

{phang}
{cmd:contrast(outcomejoint)} 显示对所有结果的差异的联合检验。这是一个检验零假设：在每个替代方案内，元素在 {it:marginlist} 中的水平之间预测概率的差异在每个结果中是相同的。

{phang}
{cmd:contrast(outcomecontrast(}{it:op}[{cmd:._outcome}]{cmd:))} 将对比运算符 {it:op}{cmd:.} 应用于结果。有关所有对比运算符的列表，请参见 {help contrast##operators:{it:op}{bf:.} 表} 在 {manhelp contrast R} 中。可选的 {cmd:._outcome} 无实际作用，但添加它将使代码更具可读性，显示 {it:op}{cmd:.} 正在作用于的内容。

{phang}
{cmd:contrast(alternativejoint)} 仅在 {cmd:margins} 的指定中包含替代特定协变量时适用。此选项显示所有替代方案的差异的联合检验。这是一个检验零假设：在每个结果中，元素在 {it:marginlist} 中的水平之间预测概率的差异在每个替代方案中是相同的。

{phang}
{cmd:contrast(alternativecontrast(}{it:op}[{cmd:.}{it:altvar}]{cmd:))} 仅在 {cmd:margins} 的指定中包含替代特定协变量时适用。此选项将对比运算符 {help contrast##operators:{it:op}{bf:.}} 应用于替代方案。 {it:altvar} 是与 {help cmset_zh} 一起使用的替代协变量的名称。可选的 {cmd:.}{it:altvar} 无实际作用，但添加它将使代码更具可读性，显示 {it:op}{cmd:.} 正在作用于的内容。

{phang}
{cmd:noesample} 指定 {cmd:margins} 不将其计算限制于先前估计命令所用的估计样本。如果估计命令使用案例删除（默认情况下），则 {cmd:margins} 也会逐案例省略缺失值。如果估计命令使用替代删除（选项 {cmd:altwise}），则 {cmd:margins} 也使用替代删除。

{phang}
{it:other_margins_options}; 有关更多选项，请参见 {manhelp margins R}。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice}{p_end}
{phang2}{cmd:. cmset consumerid car}{p_end}
{phang2}{cmd:. xtile income_cat = income, nquantiles(4)}{p_end}
{phang2}{cmd:. cmclogit purchase dealers, casevars(i.gender i.income_cat)}{p_end}

{pstd}获得不同水平的 {cmd:income_cat} 的平均预测概率{p_end}
{phang2}{cmd:. margins income_cat}{p_end}

{pstd}显示各收入水平之间概率差异的联合检验{p_end}
{phang2}{cmd:. margins income_cat, contrast}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
除了在 {manhelp margins R} 中显示的结果外，{cmd:margins} 在 {cmd:cm} 估计器之后还存储以下内容在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(k_alt)}}替代变量的级别数{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(altvar)}}替代变量名称{p_end}
{synopt :{cmd:r(alt}{it:#}{cmd:)}}替代变量的第 {it:#} 级{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:r(altvals)}}包含替代变量级别的向量{p_end}

{pstd}
带有 {cmd:post} 选项的 {cmd:margins} 还会将以下内容存储在 {cmd:e()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:e(k_alt)}}替代变量的级别数{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:e(altvar)}}替代变量名称{p_end}
{synopt :{cmd:r(alt}{it:#}{cmd:)}}替代变量的第 {it:#} 级{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:e(altvals)}}包含替代变量级别的向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cm_margins.sthlp>}