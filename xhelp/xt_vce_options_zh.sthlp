{smcl}
{* *! version 1.1.8  12dec2018}{...}
{vieweralsosee "[XT] vce_options" "mansection XT vce_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bootstrap" "help bootstrap_zh"}{...}
{vieweralsosee "[R] jackknife" "help jackknife_zh"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{viewerjumpto "语法" "xt_vce_options_zh##syntax"}{...}
{viewerjumpto "描述" "xt_vce_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "xt_vce_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "xt_vce_options_zh##options"}{...}
{viewerjumpto "备注" "xt_vce_options_zh##remarks"}{...}
{viewerjumpto "参考" "xt_vce_options_zh##reference"}
{help xt_vce_options:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[XT]} {it:vce_options} {hline 2}}方差估计器
{p_end}
{p2col:}({mansection XT vce_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{it:estimation_cmd}
... [{cmd:,} {it:vce_options} ...]

{synoptset 36}{...}
{synopt :{it:vce_options}}描述{p_end}
{synoptline}
{synopt :{cmd:vce(oim)}}观察信息矩阵 (OIM){p_end}
{synopt :{cmd:vce(opg)}}梯度的外乘积 (OPG) 矢量{p_end}
{synopt :{cmd:vce(}{cmdab:r:obust}{cmd:)}}Huber/White/三明治估计{p_end}
{synopt :{cmd:vce(}{cmdab:cl:uster} {it:clustvar}{cmd:)}}集群三明治估计{p_end}
{synopt :{cmd:vce(}{cmdab:boot:strap} [{cmd:,} {it:{help bootstrap_zh:bootstrap_options}}]{cmd:)}}自助估计{p_end}
{synopt :{cmd:vce(}{cmdab:jack:knife} [{cmd:,} {it:{help jackknife_zh:jackknife_options}}]{cmd:)}}删除一个自助法{p_end}

{synopt :{opt nmp}}使用除数 N - P 而不是默认的 N{p_end}
{synopt :{cmdab:s:cale(x2}|{cmd:dev}|{cmd:phi}|{it:#}{cmd:)}}覆盖默认规模参数；仅在总体均值模型可用{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
此条目描述了 {it:vce_options}，这些选项在大多数 xt 估计命令中是通用的。并非所有记录的选项都适用于所有 xt 估计命令；请参阅特定估计命令的文档。如果选项在其中列出，则适用。

{pstd}
{cmd:vce()} 选项指定如何估计相应于参数估计的方差-协方差矩阵 (VCE)。在参数估计表中报告的标准误差是 VCE 的方差（对角元素）的平方根。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT vce_optionsRemarksandexamples:备注和示例}

        {mansection XT vce_optionsMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:SE/Robust}

{phang}
{cmd:vce(oim)} 通常是使用最大似然拟合模型的默认设置。{cmd:vce(oim)} 使用观察信息矩阵 (OIM)；参见 {manhelp ml R}。

{phang}
{cmd:vce(opg)} 使用梯度外乘积 (OPG) 矢量的总和；参见 {manhelp ml R}。当指定 {cmd:technique(bhhh)} 选项时，这是默认 VCE；
参见 {help maximize_zh:[R] 最大化}。

{phang}
{cmd:vce(robust)} 使用稳健或三明治方差估计器。该估计量对某些类型的模型不当指定是稳健的，只要观察值是独立的；参见 {findalias frrobust}。

{pmore}
如果命令允许 {cmd:pweight}，并且您指定了它们，则 {cmd:vce(robust)} 是默认选项；参见 {findalias frwestp}。

{phang}
{cmd:vce(cluster} {it:clustvar}{cmd:)} 指定标准误差允许组内相关性，放宽通常要求观察值独立的要求。也就是说，观察值在组（集群）之间是独立的，但不一定是在组内独立。{it:clustvar} 指定每个观察值属于哪个组，例如，在对个体重复观察的数据中使用 {cmd:vce(cluster personid)}。{cmd:vce(cluster} {it:clustvar}{cmd:)} 影响估计量的标准误差和方差-协方差矩阵，但不影响估计的系数；参见 {findalias frrobust}。

{phang}
{cmd:vce(bootstrap} [{cmd:,} {it:bootstrap_options}]{cmd:)} 使用非参数自助；参见 {manhelp bootstrap R}。使用 {cmd:vce(bootstrap)} 进行估计后，请参阅 {manhelp bootstrap_postestimation R:自助后期估计} 以获得基于百分位数或偏差校正的置信区间。

{phang}
{cmd:vce(jackknife} [{cmd:,} {it:jackknife_options}]{cmd:)} 使用删除一个自助法；参见 {manhelp jackknife R}。

{phang}
{marker nmp}{...}
{opt nmp} 指定使用除数 N-P 而不是默认的 N，其中 N 是观察值的总数，P 是估计的系数的数量。

{phang}
{marker scale()}{...}
{cmd:scale(x2}|{cmd:dev}|{cmd:phi}|{it:#}{cmd:)} 覆盖默认规模参数。默认情况下，离散分布（双二项、负二项和泊松）假定 {cmd:scale(1)}，连续分布（伽马、高斯和逆高斯）假定 {cmd:scale(x2)}。

{pmore}
{cmd:scale(x2)} 指定将规模参数设置为皮尔逊卡方（或广义卡方）统计量除以残差自由度，这一做法被 {help xt_vce_options##MN1989:McCullagh and Nelder (1989)} 推荐为连续分布的一般良好选择。

{pmore}
{cmd:scale(dev)} 将规模参数设置为偏离度除以残差自由度。该选项为连续分布和过于或不足离散的离散分布提供了相对于 {cmd:scale(x2)} 的替代方案。

{pmore}
{cmd:scale(phi)} 指定规模参数从数据中估计。{cmd:xtgee} 的默认缩放使结果与其他估计量一致，并已在 GLM 的背景下由 {help xt_vce_options##MN1989:McCullagh and Nelder (1989)} 推荐。当将结果与其他软件进行比较时，您可能会发现其他软件包没有此功能。在这种情况下，指定 {cmd:scale(phi)} 应该与它们的结果相匹配。

{pmore}
{opt scale(#)} 将规模参数设置为 {it:#}。例如，在 {cmd:family(gamma)} 模型中使用 {cmd:scale(1)} 会导致指数误差回归（如果假设独立的相关结构）。


{marker remarks}{...}
{title:备注}

{pstd}
在处理面板数据模型时，我们强烈建议您使用 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)} 选项，而不是相应的前缀命令。例如，要使用 {cmd:xtlogit} 获取自助标准误差，请输入

{phang2}{cmd:. webuse clogitid}{p_end}
{phang2}{cmd:. xtlogit y x1 x2, fe vce(jackknife)}

{pstd}
如果您希望为自助或删除一个自助法估计指定更多选项，可以在 {cmd:vce()} 选项中包含它们。下面我们重新拟合模型，要求基于 300 次重复的自助标准误差，我们设置随机数种子以便结果可以重现，并抑制复制点的显示。

{phang2}{cmd:. xtlogit y x1 x2, fe vce(bootstrap, reps(300) seed(123) nodots)}


{marker reference}{...}
{title:参考}

{marker MN1989}{...}
{phang}
McCullagh, P., 和 J. A. Nelder. 1989. 
{browse "http://www.stata.com/bookstore/glm.html":{it:广义线性模型}. 第二版.}
伦敦：Chapman & Hall/CRC。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xt_vce_options.sthlp>}