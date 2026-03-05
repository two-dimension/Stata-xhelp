{smcl}
{* *! version 1.2.22  19oct2017}{...}
{viewerdialog pca "dialog pca"}{...}
{viewerdialog pcamat "dialog pcamat"}{...}
{vieweralsosee "[MV] pca" "mansection MV pca"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] pca postestimation" "help pca postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] alpha" "help alpha_zh"}{...}
{vieweralsosee "[MV] biplot" "help biplot_zh"}{...}
{vieweralsosee "[MV] canon" "help canon_zh"}{...}
{vieweralsosee "[D] corr2data" "help corr2data_zh"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[R] tetrachoric" "help tetrachoric_zh"}{...}
{viewerjumpto "Syntax" "pca_zh##syntax"}{...}
{viewerjumpto "Menu" "pca_zh##menu"}{...}
{viewerjumpto "Description" "pca_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pca_zh##linkspdf"}{...}
{viewerjumpto "Options" "pca_zh##options"}{...}
{viewerjumpto "Options unique to pcamat" "pca_zh##options_pcamat"}{...}
{viewerjumpto "Technical note" "pca_zh##technote"}{...}
{viewerjumpto "Examples" "pca_zh##examples"}{...}
{viewerjumpto "Stored results" "pca_zh##results"}{...}
{viewerjumpto "References" "pca_zh##references"}
{help pca:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[MV] pca} {hline 2}}主成分分析
{p_end}
{p2col:}({mansection MV pca:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
对数据进行主成分分析

{p 8 12 2}
{cmd:pca} {varlist} {ifin}
[{it:{help pca##weight:权重}}]
[{cmd:,} {it:{help pca##pcaopts:选项}}]


{pstd} 
对相关性或协方差矩阵进行主成分分析

{p 8 15 2}
{cmd:pcamat} {it:matname} {cmd:,} {opt n(#)}
[{it:{help pca##pcaopts:选项}}
{it:{help pca##pcamatopts:pcamat_options}}]


{phang}
{it:matname} 是一个 k x k 对称矩阵，或一个包含相关性或协方差矩阵上三角或下三角的 k(k+1)/2 长行或列向量。

{synoptset 19 tabbed}{...}
{marker pcaopts}{...}
{synopthdr}
{synoptline}
{syntab:模型 2}
{synopt:{opt com:ponents(#)}}保留最多 {it:#} 个主成分；
	{opt fa:ctors()} 是同义词{p_end}
{synopt:{opt mine:igen(#)}}保留大于 {it:#} 的特征值；默认值是
	{cmd:1e-5}{p_end}
{synopt:{opt cor:relation}}对相关矩阵进行 PCA；默认值{p_end}
{synopt:{opt cov:ariance}}对协方差矩阵进行 PCA{p_end}
{synopt:{cmd:vce(}{cmdab:non:e}{cmd:)}}不计算特征值和特征向量的 VCE；默认值{p_end}
{synopt:{cmd:vce(}{cmdab:nor:mal}{cmd:)}}假设多元正态性计算特征值和特征向量的 VCE{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}
{synopt:{opt bl:anks(#)}}当
	|loadings| < {it:#} 时将加载显示为空白{p_end}
{synopt:{opt novce}}即使计算了 SEs，也抑制 SEs 的显示{p_end}
{p2coldent:# {opt me:ans}}显示变量的摘要统计{p_end}

{syntab:高级}
{synopt:{opt tol(#)}}高级选项；详细信息见 {help pca##options_advanced:{it:选项}}{p_end}
{synopt:{opt ignore}}高级选项；详细信息见 {help pca##options_advanced:{it:选项}}{p_end}

{synopt:{opt norot:ated}}显示未旋转的结果，即使旋转结果可用（仅重放时）{p_end}
{synoptline}
{p 4 6 2}
# {opt means} 不允许与 {cmd:pcamat} 一起使用。{p_end}
{p 4 6 2}
{opt norotated} 在对话框中不可用。{p_end}

{marker pcamatopts}{...}
{synopthdr:pcamat_options}
{synoptline}
{syntab:模型}
{synopt:{cmdab:sh:ape:(}{cmdab:f:ull}{cmd:)}}{it:matname} 是一个正方形对称矩阵；默认值{p_end}
{synopt:{cmdab:sh:ape:(}{cmdab:l:ower}{cmd:)}}{it:matname} 是一个包含行序下三角（含对角线）的向量{p_end}
{synopt:{cmdab:sh:ape:(}{cmdab:u:pper}{cmd:)}}{it:matname} 是一个包含行序上三角（含对角线）的向量{p_end}
{synopt:{opt nam:es(namelist)}}变量名称；如果 {it:matname}
是三角形，则为必需{p_end}
{synopt:{opt forcepsd}}将 {it:matname} 修改为半正定{p_end}
{p2coldent:* {opt n(#)}}观测数量{p_end}
{synopt:{opt sds(matname2)}}包含变量标准差的向量{p_end}
{synopt:{opt means(matname3)}}包含变量均值的向量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:n()} 是 {cmd:pcamat} 的必需项。{p_end}

{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:rolling}、{cmd:statsby} 和
{cmd:xi} 都允许与 {cmd:pca} 一起使用；详见 {help prefix_zh}。然而，
{cmd:bootstrap} 和 {cmd:jackknife} 的结果应该谨慎解释；{cmd:pca} 参数的识别涉及依赖于数据的限制，可能导致严重偏差和过分散的估计
({help pca##MW1995:Milan 和 Whittaker 1995}).
{p_end}
{p 4 6 2}权重在 {help bootstrap_zh} 前缀下不被允许。{p_end}
{p 4 6 2}{cmd:aweight} 在 {help jackknife_zh} 前缀下不被允许。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight} 和 {cmd:fweight} 允许用于 {cmd:pca}；详见 {help weight_zh}。
{p_end}
{p 4 6 2}
有关评估后的功能，请参见 {manhelp pca_postestimation MV:pca postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

    {title:pca}

{phang2}
{bf:统计 > 多变量分析 >}
    {bf:因子与主成分分析 >}
    {bf:主成分分析 (PCA)}

    {title:pcamat}

{phang2}
{bf:统计 > 多变量分析 >}
    {bf:因子与主成分分析 >}
    {bf:相关或协方差矩阵的 PCA}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pca} 和 {cmd:pcamat} 显示来自主成分分析（PCA）特征分解的特征值和特征向量。特征向量以正交标准形式返回，即不相关并且标准化。

{pstd}
{cmd:pca} 可用于减少变量数量或了解数据的潜在结构。{cmd:pcamat} 直接提供相关性或协方差矩阵。对于 {cmd:pca}，相关性或协方差矩阵是根据 {varlist} 中的变量计算的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV pcaQuickstart:快速入门}

        {mansection MV pcaRemarksandexamples:备注和示例}

        {mansection MV pcaMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型 2}

{phang}{opt components(#)} 和 {opt mineigen(#)}
指定要保留的最大成分（特征向量或因子）数量。{cmd:components()} 直接指定数量，而
{cmd:mineigen()} 间接指定，通过保留大于所指示值的所有成分。选项可以单独指定、一起指定，或不指定。{cmd:factors()} 是
{cmd:components()} 的同义词。

{pmore}{opt components(#)}
设置要保留的最大成分（因子）数量。{cmd:pca} 和 {cmd:pcamat} 总是显示完整的特征值集，但仅为保留的成分显示特征向量。指定的数字大于 {varlist} 中变量的数量等同于指定 {it:varlist} 中变量的数量，并且是默认值。

{pmore}
{opt mineigen(#)}
设置要保留的特征值的最小值。默认值是
{cmd:1e-5} 或指定的 {cmd:tol()} 的值。

{pmore}
指定 {cmd:components()} 和 {cmd:mineigen()} 仅影响要显示和存储在 {cmd:e()} 中的成分的数量；它不强制其他特征值为 0。特别是，当指定 {cmd:vce(normal)} 时报告的标准误差并不依赖于保留的成分数量。

{phang}{opt correlation} 和 {opt covariance}
分别指定对相关矩阵和协方差矩阵计算主成分。默认值是 {cmd:correlation}。与因子分析不同，PCA 不是尺度不变的；协方差矩阵的特征值和特征向量与相关矩阵的特征值和特征向量不同。通常，只有当变量在相同单位中表示时，对协方差矩阵进行 PCA 意义才大。

{pmore}
对于 {cmd:pcamat}，不要将要分析的矩阵类型与 {it:matname} 的类型混淆。显然，如果 {it:matname} 是相关矩阵且未指定 {cmd:sds()} 选项，则无法对协方差矩阵进行 PCA。

{phang}{cmd:vce(}{cmd:none}|{cmd:normal}{cmd:)}
指定是否计算特征值、特征向量和（累积）解释方差的标准误差（确认性 PCA）。这些标准误差假设数据的多元正态性，仅对协方差矩阵的 PCA 有效。对相关矩阵应用这些标准误差时应谨慎。

{dlgtab:报告}

{phang}{opt level(#)}
指定置信区间的置信水平，以百分比表示。默认值是 {cmd:level(95)} 或 {helpb set level} 设置的值。{cmd:level()}
仅与 {cmd:vce(normal)} 一起使用。

{phang}{opt blanks(#)}
显示绝对值小于 {it:#} 的加载的空白。与 {cmd:vce(normal)} 一起指定时此选项会被忽略。

{phang}{opt novce}
即使计算了标准误差，也抑制标准误差的显示，并以矩阵/表格样式显示 PCA 结果。可以在估计过程中与 {cmd:vce(normal)} 结合指定 {cmd:novce}。更可能的是，您希望在重放时使用 {cmd:novce}。

{phang}{opt means}
显示在估计样本中的变量摘要统计。此选项在 {cmd:pcamat} 中不可用。

{marker options_advanced}{...}
{dlgtab:高级}

{phang}{opt tol(#)}
是一个高级的、很少使用的选项，仅在 {cmd:vce(normal)} 下可用。如果特征值 {it:ev_i} 被归类为接近零，则满足 {bind:{it:ev_i} < {it:tol} * max({it:ev})}。如果两个特征值 {it:ev_1} 和 {it:ev_2} "接近"，则满足 {bind:abs({it:ev_1}-{it:ev_2}) < tol*max({it:ev})}。
默认值是 {cmd:tol(1e-5)}。查看选项 {cmd:ignore} 和下面的 {it:{help pca##technote:技术注释}}。

{phang}{opt ignore}
是一个高级的、很少使用的选项，仅在 {cmd:vce(normal)} 下可用。即使某些特征值非常接近零或非常接近其他特征值，违反了用于估计标准误差和测试的渐近理论的重要假设，也会继续计算标准误差和测试。请参阅下面的 
{it:{help pca##technote:技术注释}}。

{pstd}
以下选项可用于 {cmd:pca} 和 {cmd:pcamat} ，但在对话框中未显示：

{phang}{opt norotated}
即使旋转组件可用，也显示未旋转的主成分。此选项只能在重放结果时指定。


{marker options_pcamat}{...}
{title:pcamat 特有的选项}

{dlgtab:模型}

{marker shape()}{...}
{phang}{opt shape(shape_arg)}
指定协方差或相关矩阵 {it:matname} 的形状（存储模式）。支持以下形状：

{p 8 12 2}{cmd:full} 指定 k 个变量的相关或协方差结构作为对称 k x k 矩阵存储。在这种情况下指定 {cmd:shape(full)} 是可选的。

{p 8 12 2}{cmd:lower} 指定 k 个变量的相关或协方差结构作为一个向量，包含 k(k+1)/2 个元素，以行序下三角形式存储：

{p 16 20 2}
C(11) C(21) C(22) C(31) C(32) C(33) ... C(k1) C(k2) ... C(kk)

{p 8 12 2}{cmd:upper} 指定 k 个变量的相关或协方差结构作为一个向量，包含 k(k+1)/2 个元素，以行序上三角形式存储：

{p 16 20 2}
C(11) C(12) C(13) ... C(1k) C(22) C(23) ... C(2k) ...
C(k-1 k-1) C(k-1 k) C(kk)

{phang}{opt names(namelist)}
指定 k 个不同名称的列表，用于记录输出和标记估计结果，并由 {cmd:predict} 用作变量名。默认情况下，{cmd:pcamat} 会验证 {it:matname} 的行名和列名以及来自 {opt sds()} 和 {opt means()} 选项的 {it:matname2} 和 {it:matname3} 的行名或列名之间是否一致。使用 {opt names()} 选项将关闭此检查。

{phang}
{opt forcepsd} 将矩阵 {it:matname} 修改为正半定（psd），以便成为一个适当的协方差矩阵。如果 {it:matname} 不是正半定的，则会具有负特征值。通过将负特征值设为 0 并重建，可以获得对 {it:matname} 的最小二乘正半定近似。该近似是一个奇异的协方差矩阵。

{phang}{opt n(#)}
是必需的，并指定观测的数量。

{phang}{opt sds(matname2)}
指定一个 k x 1 或 1 x k 矩阵，包含变量的标准差。行名或列名应与变量名匹配，除非指定了 {opt names()} 选项。仅当 {it:matname} 是相关矩阵时，{cmd:sds()} 可以被指定。

{phang}{opt means(matname3)}
指定一个 k x 1 或 1 x k 矩阵，包含变量的均值。行名或列名应与变量名匹配，除非指定了 {opt names()} 选项。如果您的数据集中有变量并希望在 {cmd:pcamat} 后使用 {cmd:predict}，请指定 {cmd:means()}。


{marker technote}{...}
{title:技术注释}

{pstd}
{cmd:pca} 和 {cmd:pcamat} 在使用 {cmd:vce(normal)} 选项时假设

{p 8 13 2}
(A1) 变量是多元正态分布的，并且

{p 8 13 2}
(A2) 观测的方差-协方差矩阵具有全部不同且严格正的特征值。

{pstd}
在假设 A1 和 A2 下，样本协方差矩阵的特征值和特征向量可以视为对总体类比的最大似然估计，并且渐近上是（多元）正态分布的 ({help pca##A1963:Anderson 1963}; {help pca##J2003:Jackson 2003})。有关椭圆分布的相关结果，请参见 {help pca##T1981:Tyler (1981)}。在解释时应谨慎，因为渐近方差对假设 A1（和 A2）的违反非常敏感。与假设 A2 相冲突的假设的 Wald 检验（例如，检验第一个和第二个特征值相同）会产生不正确的 p 值。

{pstd}
由于相关矩阵的 PCA 的统计理论要复杂得多，{cmd:pca} 和 {cmd:pcamat} 将相关矩阵的标准误差和测试计算得像协方差矩阵一样。这种做法与 {help pca##J2003:Jackson (2003)} 中的渐近理论应用一致。这通常会导致对标准误差的某些低估，但我们相信此问题小于偏离正态性带来的后果。

{pstd}
您可以使用 {cmd:mvtest} {cmd:normality} 命令进行多元正态性测试（请参见
{manhelp mvtest_normality MV:mvtest normality}）。


{marker examples}{...}
{title:示例}

    标准 PCA 用于描述
        {cmd:. sysuse auto}
        {cmd:. pca trunk weight length headroom}
        {cmd:. pca trunk weight length headroom, comp(2) covariance}

    假设数据具有多元正态性进行 PCA
        {cmd:. webuse bg2}
	{cmd:. pca bg2cost*, vce(normal)}

    协方差或相关矩阵的 PCA
        {cmd:. matrix S = ( 10.167, 22.690,  2.040  \ ///}
        {cmd:               22.690, 56.949,  3.788  \ ///}
        {cmd:                2.040,  3.788,  0.688  ) }
        {cmd:. matrix rownames S = visual hearing taste}
        {cmd:. matrix colnames S = visual hearing taste}
        {cmd:. pcamat S, n(979) comp(2)}

    上述相同
        {cmd:. matrix S = ( 10.167, 22.690, 2.040, ///}
        {cmd:                       56.949, 3.788, ///}
        {cmd:                               0.688 )}
{phang2}{cmd:. pcamat S, n(979) shape(upper) comp(2)}
       {cmd:names(visual hearing taste)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:pca} 和 {cmd:pcamat} 在没有 {cmd:vce(normal)} 选项时，将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(f)}}保留的成分数量{p_end}
{synopt:{cmd:e(rho)}}解释方差的比例{p_end}
{synopt:{cmd:e(trace)}} {cmd:e(C)} 的迹{p_end}
{synopt:{cmd:e(lndet)}} {cmd:e(C)} 的行列式的自然对数{p_end}
{synopt:{cmd:e(cond)}} {cmd:e(C)} 的条件数{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:pca} （即使是 {cmd:pcamat}）{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(Ctype)}}{cmd:correlation} 或 {cmd:covariance}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}输出中的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV eigen}{p_end}
{synopt:{cmd:e(rotate_cmd)}}用于实现 {cmd:rotate} 的程序{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}由 {cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(C)}} p x p 相关或协方差矩阵{p_end}
{synopt:{cmd:e(means)}} 1 x p 的均值矩阵{p_end}
{synopt:{cmd:e(sds)}} 1 x p 的标准差矩阵{p_end}
{synopt:{cmd:e(Ev)}} 1 x p 的特征值矩阵（已排序）{p_end}
{synopt:{cmd:e(L)}} p x f 的特征向量矩阵 = 组成部分{p_end}
{synopt:{cmd:e(Psi)}} 1 x p 的未解释方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:pca} 和 {cmd:pcamat} 在使用 {cmd:vce(normal)} 选项时存储上述内容，以及以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(v_rho)}} {cmd:e(rho)} 的方差{p_end}
{synopt:{cmd:e(chi2_i)}}独立性检验的卡方统计量{p_end}
{synopt:{cmd:e(df_i)}}独立性检验的自由度{p_end}
{synopt:{cmd:e(p_i)}}独立性检验的 p 值{p_end}
{synopt:{cmd:e(chi2_s)}}球形检验的卡方统计量{p_end}
{synopt:{cmd:e(df_s)}}球形检验的自由度{p_end}
{synopt:{cmd:e(p_s)}}球形检验的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(vce)}}{cmd:multivariate normality}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V eigen}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}} 1 x p+fp 系数向量（所有特征值和保留的特征向量）{p_end}
{synopt:{cmd:e(Ev_bias)}} 1 x p 的特征值偏差矩阵{p_end}
{synopt:{cmd:e(Ev_stats)}} p x 5 的解释方差统计矩阵{p_end}
{synopt:{cmd:e(V)}} 估计的方差-协方差矩阵 {cmd:e(b)}{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker A1963}{...}
{phang}
Anderson, T. W. 1963. 主成分分析的渐近理论。
{it:数学统计年鉴} 34: 122-148。

{marker J2003}{...}
{phang}
Jackson, J. E. 2003. {it:用户指南：主成分分析}。
纽约：Wiley。

{marker MW1995}{...}
{phang}
Milan, L. 和 J. Whittaker. 1995. 参数自助法在包含奇异值分解的模型中的应用。
{it:应用统计学} 44: 31-49。

{marker T1981}{...}
{phang}
Tyler, D. E. 1981. 特征向量的渐近推断。
{it:统计年鉴} 9: 725-736。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pca.sthlp>}