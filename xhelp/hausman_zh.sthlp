{smcl}
{* *! version 1.2.13  08mar2018}{...}
{viewerdialog hausman "dialog hausman"}{...}
{vieweralsosee "[R] hausman" "mansection R hausman"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lrtest" "help lrtest_zh"}{...}
{vieweralsosee "[R] suest" "help suest_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{viewerjumpto "Syntax" "hausman_zh##syntax"}{...}
{viewerjumpto "Menu" "hausman_zh##menu"}{...}
{viewerjumpto "Description" "hausman_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "hausman_zh##linkspdf"}{...}
{viewerjumpto "Options" "hausman_zh##options"}{...}
{viewerjumpto "Remarks" "hausman_zh##remarks"}{...}
{viewerjumpto "Examples" "hausman_zh##examples"}{...}
{viewerjumpto "Stored results" "hausman_zh##results"}
{help hausman:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] hausman} {hline 2}}Hausman 规范性检验{p_end}
{p2col:}({mansection R hausman:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:hausman} {it:name-consistent} [{it:name-efficient}]
[{cmd:,} {it:options}]

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt c:onstant}}在比较中包含估计的截距；默认情况下不包含{p_end}
{synopt :{opt a:lleqs}}使用所有方程进行检验；默认情况下只使用第一个方程{p_end}
{synopt :{opth sk:ipeqs(hausman##eqlist:eqlist)}}在进行检验时跳过指定的方程{p_end}
{synopt :{opth eq:uations(hausman##matchlist:matchlist)}}关联/比较指定编号的方程对{p_end}
{synopt :{opt force}}强制进行检验，即使假设不成立{p_end}
{synopt :{opt df(#)}}使用 {it:#} 自由度{p_end}
{synopt :{opt sig:mamore}}两个（协）方差矩阵基于来自有效估计器的扰动方差估计{p_end}
{synopt :{opt sigmal:ess}}两个（协）方差矩阵基于来自一致估计器的扰动方差估计{p_end}

{syntab :高级}
{synopt :{opth tcon:sistent(strings:string)}}一致估计器列标题{p_end}
{synopt :{opth teff:icient(strings:string)}}有效估计器列标题{p_end}
{synoptline}
{p2colreset}{...}

{phang} 其中 {it:name-consistent} 和 {it:name-efficient} 是通过 {helpb estimates store} 存储的估计结果名称.{p_end}
{phang} 可以使用句点 ({cmd:.}) 来引用最后的估计结果，即使这些结果尚未被存储.{p_end}
{phang} 不指定 {it:name-efficient} 相当于将最后的估计结果指定为 "{cmd:.}"。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后期估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:hausman} 执行 Hausman 的规范性检验。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R hausmanQuickstart:快速入门}

        {mansection R hausmanRemarksandexamples:备注与示例}

        {mansection R hausmanMethodsandformulas:方法与公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt constant} 指定将估计的截距包含在模型比较中；默认情况下，它们被排除。 默认行为适用于截距在两个模型中没有共同解释的模型。

{phang}
{opt alleqs} 指定使用模型中的所有方程来执行 Hausman 检验；默认情况下，只使用第一个方程。

{marker eqlist}{...}
{phang}
{opt skipeqs(eqlist)} 在 {it:eqlist} 中指定要从检验中排除的方程名称。在此上下文中不允许使用方程编号，因为方程名称与变量名称一起用于识别共同系数。

{marker matchlist}{...}
{phang}
{opt equations(matchlist)} 指定要比较的方程对的编号。

{pmore}
{it:matchlist} 在 {opt equations()} 中应遵循以下语法

{pmore2}
{it:#c}{cmd::}{it:#e} [{cmd:,}{it:#c}{cmd::}{it:#e}[{cmd:,} {it:...}]]

{pmore}
其中 {it:#c}({it:#e}) 是始终一致（在 H0 下有效）估计器的方程编号。例如 {cmd:equations(1:1)},
{cmd:equations(1:1, 2:2)}，或 {cmd:equations(1:2)}。

{pmore}
如果不指定 {opt equations()}，则根据方程名称进行匹配。

{pmore}
{opt equations()} 处理一个估计器使用方程名称而另一个不使用的情况。例如，{cmd:equations(1:2)} 表示始终一致估计器的第一个方程要与有效估计器的第二个方程进行检验。{cmd:equations(1:1, 2:2)} 表示第一个方程与第一个方程进行检验，第二个方程与第二个方程进行检验。如果指定 {opt equations()}，则 {opt alleqs} 和 {opt skipeqs} 选项将被忽略。

{phang}
{opt force} 指定进行 Hausman 检验，即使 Hausman 检验的假设似乎未满足，例如，因为估计器是 {cmd:pweight} 的或数据被聚类。

{phang}
{opt df(#)} 指定 Hausman 检验的自由度。默认是两个估计器系数差的方差矩阵的秩。

{phang}
{opt sigmamore} 和 {opt sigmaless} 指定在检验中使用的两个协方差矩阵基于一个共同的扰动方差估计 (sigma2)。

{phang2}
{opt sigmamore} 指定协方差矩阵基于有效估计器的扰动方差估计。这一选项为所谓的外生性和工具变量回归中的过度识别检验提供了合适的对比方差估计。

{phang2}
{opt sigmaless} 指定协方差矩阵基于一致估计器的扰动方差估计。

{pmore}
这些选项只能在两个估计器均存储 {cmd:e(sigma)} 或 {cmd:e(rmse)} 时，或者与 {cmd:xtreg} 命令一起指定。使用 {cmd:fe}或 {cmd:mle} 选项的 {cmd:xtreg} 命令后存储 {cmd:e(sigma_e)}.使用 {cmd:re} 选项的 {cmd:xtreg} 命令后存储 {cmd:e(rmse)}。

{pmore}
在比较固定效应和随机效应线性回归时，推荐使用 {cmd:sigmamore} 或 {cmd:sigmaless}，因为它们更不可能产生非正定的差异协方差矩阵（尽管无论是否指定其中一个选项，检验在渐近上是等价的）。

{dlgtab:高级}

{phang}
{opth tconsistent:(strings:string)} 和 {opt tefficient(string)} 是格式选项。它们允许您指定默认为模型名称的系数列标题。 这些选项主要对程序员感兴趣。


{marker remarks}{...}
{title:备注}

{pstd}
假设一个估计器是有效的（即，具有最小的渐近方差）是一个苛刻的假设。如果您的观察被聚类或加权，或者如果模型在某种程度上被错误指定，则这一假设会被违反。此外，即使假设得到了满足，Hausman 检验可能会存在“小样本”问题。Hausman 的检验是基于通过估计估计器差异的方差 var(b-B) 来得出 var(b)-var(B) 的方差。如果满足假设（1）和（3），则 var(b)-var(B) 是 var(b-B) 的一致估计，但在“有限样本”中不一定是正定的，即在您的应用中。如果是这种情况，Hausman 检验则未定义。不幸的是，这不是一种稀有事件。Stata 支持一种广义 Hausman 检验，克服了这两个问题。有关详细信息，请参见 {manhelp suest R}。

{pstd}
要使用 {cmd:hausman}，请执行以下步骤。

{p 6 10 2}(1) 获取一个无论假说是否成立均一致的估计器；
{p_end}
{p 6 10 2}(2) 使用 {helpb estimates store} 将估计结果存储在 {it:name-consistent} 中；
{p_end}
{p 6 10 2}(3) 获取一个在您正在测试的假设下是 {hi:有效的}（并且 {hi:一致的}），而否则是 {hi:不一致的} 的估计器；
{p_end}
{p 6 10 2}(4) 使用 {helpb estimates store} 将估计结果存储在 {it:name-efficient} 中；
{p_end}
{p 6 10 2}(5) 使用 {cmd:hausman} 来执行检验

{p 14 14 2}{cmd:hausman} {it:name-consistent} {it:name-efficient} [{cmd:,} {it:options}]

{pstd}
可以调换计算这两个估计器的顺序。但需注意，必须将“始终一致”的模型先指定给 {cmd:hausman}，将“在 H0 下有效”的模型后指定。可以跳过存储第二个模型，并通过句点 ({cmd:.}) 引用最后的估计结果。

{pstd}
{cmd:hausman} 可以在任何上下文中使用。您在每个模型中指定的回归变量的顺序无关紧要，但您必须确保估计器和模型是可比较的，并且它们满足理论条件（见上述（1）和（3））。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork4}{p_end}
{phang2}{cmd:. xtreg ln_wage age msp ttl_exp, fe}{p_end}
{phang2}{cmd:. estimates store fixed}{p_end}
{phang2}{cmd:. xtreg ln_wage age msp ttl_exp, re}{p_end}

{pstd}检验随机效应估计器（{cmd:xtreg, re}）的适用性{p_end}
{phang2}{cmd:. hausman fixed ., sigmamore}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sysdsn3}{p_end}
{phang2}{cmd:. mlogit insure age male}{p_end}
{phang2}{cmd:. estimates store all}{p_end}
{phang2}{cmd:. mlogit insure age male if insure != "Uninsure":insure}{p_end}
{phang2}{cmd:. estimates store partial}{p_end}

{pstd}执行 Hausman 检验以检验不相关选择的独立性{p_end}
{phang2}{cmd:. hausman partial all, alleqs constant}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg price}{p_end}
{phang2}{cmd:. estimates store reg}{p_end}
{phang2}{cmd:. heckman mpg price, select(foreign=weight)}{p_end}

{pstd}指定 {cmd:equations()} 选项以强制比较一个使用方程名称而另一个不使用的情况下{p_end}
{phang2}{cmd:. hausman reg ., equation(1:1)}

{pstd}设置{p_end}
{phang2}{cmd:. probit foreign weight}{p_end}
{phang2}{cmd:. estimates store probit_for}{p_end}
{phang2}{cmd:. heckman mpg price, select(foreign=weight)}{p_end}

{pstd}比较 Probit 模型和 Heckman 模型的选择方程{p_end}
{phang2}{cmd:. hausman probit_for ., equation(1:2)}

    {hline}

{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:hausman} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(df)}}统计量的自由度{p_end}
{synopt:{cmd:r(p)}}卡方的 p 值{p_end}
{synopt:{cmd:r(rank)}}{cmd:(V_b-V_B)^(-1)}的秩{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hausman.sthlp>}