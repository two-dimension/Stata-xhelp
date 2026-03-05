{smcl}
{* *! version 1.2.15  23oct2017}{...}
{viewerdialog tetrachoric "dialog tetrachoric"}{...}
{vieweralsosee "[R] tetrachoric" "mansection R tetrachoric"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] biprobit" "help biprobit_zh"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{vieweralsosee "[R] spearman" "help ktau"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{viewerjumpto "Syntax" "tetrachoric_zh##syntax"}{...}
{viewerjumpto "Menu" "tetrachoric_zh##menu"}{...}
{viewerjumpto "Description" "tetrachoric_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tetrachoric_zh##linkspdf"}{...}
{viewerjumpto "Options" "tetrachoric_zh##options"}{...}
{viewerjumpto "Examples" "tetrachoric_zh##examples"}{...}
{viewerjumpto "Stored results" "tetrachoric_zh##results"}{...}
{viewerjumpto "Reference" "tetrachoric_zh##reference"}
{help tetrachoric:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[R] tetrachoric} {hline 2}}二元变量的 tetrachoric 相关系数{p_end}
{p2col:}({mansection R tetrachoric:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{cmd:tetrachoric} {varlist} {ifin}
[{it:{help tetrachoric##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 16 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{cmd:stats(}{it:{help tetrachoric##statlist:统计列表}}{cmd:)}}要显示的统计信息列表；最多选择 4 个统计信息；默认值为 {cmd:stats(rho)}{p_end}
{synopt:{opt ed:wards}}使用非迭代的 Edwards 和 Edwards 估计量；默认值为最大似然估计量{p_end}
{synopt:{opt p:rint(#)}}显示系数的显著性水平{p_end}
{synopt:{opt st:ar(#)}}以星号显示的显著性水平{p_end}
{synopt:{opt b:onferroni}}使用 Bonferroni 调整的显著性水平{p_end}
{synopt:{opt sid:ak}}使用 Sidak 调整的显著性水平{p_end}
{synopt:{opt pw:}}通过使用所有可用数据（成对删除）计算所有成对相关系数{p_end}
{synopt:{opt ze:roadjust}}当一个单元有零计数时调整频率{p_end}
{synopt:{opt mat:rix}}以矩阵形式显示输出{p_end}
{synopt:{opt notab:le}}抑制相关性显示{p_end}
{synopt:{opt pos:def}}修改相关矩阵为正半定{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 10}{...}
{marker statlist}{...}
{synopthdr :统计列表}
{synoptline}
{synopt:{cmd:rho}}tetrachoric 相关系数{p_end}
{synopt:{cmd:se}}rho 的标准误差{p_end}
{synopt:{cmd:obs}}观察次数{p_end}
{synopt:{cmd:p}}双尾Fisher精确检验的p值（适用于前两个变量）{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
允许使用 {cmd:by}；见 {manhelp by D}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}；见 {help weight_zh}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 摘要、表格和检验 >}
    {bf:摘要和描述性统计 > tetrachoric 相关系数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tetrachoric} 计算 {varlist} 中二元变量的 tetrachoric 相关系数的估计值。所有这些变量应为 0、1 或 {help missing_zh} 值。

{pstd}
Tetrachoric 相关假设每对变量 ({it:v1}, {it:v2}) 的潜在二元正态分布为 ({it:X1}, {it:X2})，对显性变量的阈值模型为 {bind:{it:vi} = 1} 当且仅当 {bind:{it:Xi} > 0}。潜在变量的均值和方差未被识别，但可以根据 {it:v1} 和 {it:v2} 的联合分布估计相关性 {it:r}，这被称为 tetrachoric 相关系数。

{pstd}
{cmd:tetrachoric} 通过使用没有解释变量的双变量 probit 的（迭代）最大似然估计量计算成对的 tetrachoric 相关估计（见 {manhelp biprobit R}），并以 {help tetrachoric##EE1984:Edwards 和 Edwards (1984)} 的非迭代估计量作为初始值。

{pstd}
成对相关矩阵以 {cmd:r(Rho)} 返回，并可用于通过使用 {cmd:factormat} 或 {cmd:pcamat} 命令执行二元变量的因子分析或主成分分析；见 {manhelp factor MV} 和 {manhelp pca MV}。



{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R tetrachoricQuickstart:快速入门}

        {mansection R tetrachoricRemarksandexamples:备注和示例}

        {mansection R tetrachoricMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:stats(}{it:{help tetrachoric##statlist:统计列表}}{cmd:)} 指定要在输出矩阵中显示的统计信息。默认值为 {cmd:stats(rho)}。最多允许指定四个统计信息。 {cmd:stats(rho se p obs)} 将显示 tetrachoric 相关系数、其标准误差、显著性水平和观察次数。如果 {varlist} 仅包含两个变量，则所有统计信息以表格形式显示。 {cmd:stats()}、{cmd:print()} 和 {cmd:star()} 在未指定 {cmd:matrix} 选项时无效。

{phang}
{opt edwards} 指定使用非迭代的 Edwards 和 Edwards 估计量。默认值为最大似然估计量。如果您分析许多二元变量，则可能希望使用 {help tetrachoric##EE1984:Edwards 和 Edwards (1984)} 提出的快速非迭代估计量。然而，如果您有偏斜变量，则该近似效果不佳。

{phang}
{opt print(#)} 指定打印的相关系数的最大显著性水平。在矩阵中，显著性水平较大的相关系数留空。输入 {cmd:tetrachoric} ...{cmd:, print(.10)} 将仅列出显著性水平在 10% 或更低的相关系数。

{phang}
{opt star(#)} 指定标记为星号的相关系数最大显著性水平。输入 {cmd:tetrachoric} ...{cmd:, star(.05)} 将“星标”所有在 5% 或更低显著性水平的相关系数。

{phang}
{opt bonferroni} 对计算的显著性水平进行 Bonferroni 调整。此选项影响打印的显著性水平以及 {opt print()} 和 {opt star()} 选项。因此，{cmd:tetrachoric} ...{cmd:, print(.05) bonferroni} 会打印 Bonferroni 调整的显著性水平为 0.05 或以下的系数。

{phang}
{opt sidak} 对计算的显著性水平进行 Sidak 调整。此选项影响打印的显著性水平以及 {opt print()} 和 {opt star()} 选项。因此，{cmd:tetrachoric} ...{cmd:, print(.05) sidak} 会打印 Sidak 调整的显著性水平为 0.05 或以下的系数。

{phang}{opt pw}
指定通过使用所有可用数据计算 tetrachoric 相关。默认情况下，{cmd:tetrachoric} 使用案例删除，即如果 {varlist} 中的任何指定变量缺失，则忽略观察值。

{phang}
{opt zeroadjust} 指定当一个单元有零计数时，应用频率调整，以便将零增加到一半并保持行和列的总和。

{phang}
{opt matrix} 强制 {cmd:tetrachoric} 以矩阵形式显示统计信息，即使 {varlist} 仅包含两个变量。如果指定超过两个变量，将隐含使用 {cmd:matrix}。

{phang}{opt notable}
抑制输出。

{phang}{opt posdef}
修改相关矩阵，使其为正半定，即一个合适的相关矩阵。修改结果是与通过正半定矩阵的 tetrachoric 相关矩阵的最小二乘近似相关联的相关矩阵。如果相关矩阵被修改，则标准误差和显著性水平不显示，且未在 {cmd:r()} 中返回。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse familyvalues}

{pstd}皮尔逊相关系数{p_end}
{phang2}{cmd:. correlate RS074 RS075 RS076}

{pstd}通过 tetrachoric 生成的相关系数{p_end}
{phang2}{cmd:. tetrachoric RS074 RS075 RS076}

{pstd}皮尔逊相关系数{p_end}
{phang2}{cmd:. correlate RS056-RS063}

{pstd}通过 tetrachoric 生成的相关系数{p_end}
{phang2}{cmd:. tetrachoric RS056-RS063}

{pstd}根据需要调整相关矩阵为正半定{p_end}
{phang2}{cmd:. tetrachoric RS056-RS063 in 1/20, posdef}



{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:tetrachoric} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(rho)}}变量 1 和 2 之间的 tetrachoric 相关系数{p_end}
{synopt:{cmd:r(N)}}观察次数{p_end}
{synopt:{cmd:r(nneg)}}负特征值的数量（{cmd:posdef} 仅适用）{p_end}
{synopt:{cmd:r(se_rho)}}{cmd:r(rho)} 的标准误差{p_end}
{synopt:{cmd:r(p)}}双尾 Fisher 的精确检验的 p 值（适用于前两个变量）{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(method)}}使用的估计量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(Rho)}}tetrachoric 相关矩阵{p_end}
{synopt:{cmd:r(Se_Rho)}}{cmd:r(Rho)} 的标准误差{p_end}
{synopt:{cmd:r(Nobs)}}用于计算相关的观察次数{p_end}
{synopt:{cmd:r(P)}}双尾 Fisher 精确检验的 p 值矩阵{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker EE1984}{...}
{phang}
Edwards, J. H., and A. W. F. Edwards. 1984.
近似 tetrachoric 相关系数。
{it:Biometrics} 40: 563.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tetrachoric.sthlp>}