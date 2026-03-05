{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog splitsample "dialog splitsample"}{...}
{vieweralsosee "[D] splitsample" "mansection D splitsample"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] sample" "help sample_zh"}{...}
{viewerjumpto "语法" "splitsample_zh##syntax"}{...}
{viewerjumpto "菜单" "splitsample_zh##menu"}{...}
{viewerjumpto "描述" "splitsample_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "splitsample_zh##linkspdf"}{...}
{viewerjumpto "选项" "splitsample_zh##options"}{...}
{viewerjumpto "示例" "splitsample_zh##examples"}{...}
{viewerjumpto "存储结果" "splitsample_zh##results"}
{help splitsample:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[D] splitsample} {hline 2}}将数据拆分为随机样本{p_end}
{p2col:}({mansection D splitsample:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:splitsample}
[{varlist}]
{ifin}{cmd:,}
{opt gen:erate}{cmd:(}{newvar}[{cmd:,} {opt replace}]{cmd:)} 
[{it:options}]

{phang}
{it:varlist} 会检查缺失值，如果任何变量在 {it:varlist} 中缺失，则样本 ID 变量 {it:newvar} 被设置为缺失。可以为 {it:varlist} 指定 {cmd:_all} 或 {cmd:*}。

{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{p2coldent:* {opt gen:erate}{cmd:(}{newvar}[{cmd:,} {cmd:replace}]{cmd:)}}创建新的样本 ID 变量；可选择替换现有变量{p_end}
{synopt :{opt nsplit(#)}}将数据分为 {it:#} 个大小相等的随机样本{p_end}
{synopt :{opth split(numlist)}}指定用于拆分的 {it:numlist} 比例或比率{p_end}
{synopt :{opt rround}}在无法进行精确拆分时随机四舍五入样本大小{p_end}
{synopt :{opth values(numlist)}}指定样本 ID 变量的 {it:numlist} 值{p_end}
{synopt :{opt cl:uster(clustvar)}}按 {it:clustvar} 定义的聚类进行拆分，而不是按观察{p_end}
{synopt :{opt bal:ance(balvars)}}根据指定的样本比例独立地拆分每个由 {it:balvars} 的不同值定义的组{p_end}

{syntab:高级}
{synopt :{opt strok}}检查 {varlist} 中的字符串变量是否缺失；默认情况下，字符串变量被忽略{p_end}
{synopt :{opt rseed(#)}}指定随机数种子{p_end}
{synopt :{opt show}}显示一个表格，展示拆分的样本大小{p_end}
{synopt :{opt percent}}在展示拆分的表格中显示百分比{p_end}
{synoptline}
{p 4 6 2}
* {cmd:generate()} 是必需的。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量创建命令}
     {bf:> 将数据拆分为随机样本}


{marker description}{...}
{title:描述}

{pstd}
{cmd:splitsample} 根据指定的样本数量和每个样本的指定比例将数据拆分为随机样本。拆分也可以基于聚类进行。样本拆分还可以在指定变量之间保持平衡。平衡拆分可用于匹配处理分配。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D splitsampleQuickstart:快速入门}

        {mansection D splitsampleRemarksandexamples:备注和示例}

        {mansection D splitsampleMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt generate}{cmd:(}{newvar}[{cmd:,} {cmd:replace}]{cmd:)} 创建一个新变量，其中包含随机样本的 ID 值。变量 {it:newvar} 默认值为 1、2、…… 选项 {opth values(numlist)} 可用于指定不同的 ID 值。 {cmd:generate()} 是必需的。

{pmore}
{opt replace} 允许替换任何名为 {it:newvar} 的现有变量。

{phang}
{opt nsplit(#)} 将数据拆分为 {it:#} 个大小相等的随机样本，或尽可能接近相等。如果未指定 {cmd:nsplit()} 或 {cmd:split()}，则数据将拆分为两个样本。

{phang}
{opth split(numlist)} 是指定拆分的 {cmd:nsplit()} 的替代方法。此选项将数据拆分为样本，其大小与 {it:numlist} 的值成比例。 {it:numlist} 的值可以是任何正数。您可以指定比例使其总和为 1，或者可以指定定义样本大小比率的整数。无论您是指定小于 1 的小数还是整数，拆分的比例由 {it:numlist} 中的值除以它们的总和给出。

{phang}
{opt rround} 指定在无法进行精确拆分时随机四舍五入样本大小。当可以进行精确拆分时，此选项无效。当与 {opth split(numlist)} 一起指定 {cmd:rround} 时，{it:numlist} 必须由整数构成，且这些整数不应含有公因子。例如，应使用 {cmd:split(1 1 2)}，而不是 {cmd:split(25 25 50)}。有关解释，请参见
{mansection D splitsampleMethodsandformulas:{it:方法和公式}}。

{pmore}
默认情况下，拆分的样本大小使用确定性舍入公式计算。也就是说，如果使用不同的随机数种子重复拆分，您将得到完全相同的样本大小。指定 {cmd:rround} 会生成随机四舍五入的样本大小，使得样本大小的期望值与指定的拆分比例完全匹配。

{pmore}
选项 {cmd:rround} 设计用于与 {cmd:balance()} 选项一起使用，当每个平衡组中的观察数量较少时。当组大小较小（尤其是小于拆分数时），{cmd:rround} 确保整体实际样本拆分比例接近指定的拆分比例。

{phang}
{opth values(numlist)} 指定使用 {it:numlist} 作为样本 ID 变量的值，而不是默认值 1、2、……。 {it:numlist} 中的值的数量必须与数据拆分的样本数量相对应，并且必须是升序的非负整数。

{phang}
{opt cluster(clustvar)} 指定根据 {it:clustvar} 定义的聚类进行数据拆分。也就是说，聚类中的所有观察都保留在同一个拆分样本中。拆分的比例基于聚类的数量，而不是观察的数量。 {it:clustvar} 可以是数值或字符串变量。

{phang}
{opt balance(balvars)} 指定根据指定的样本比例独立拆分每个由 {it:balvars} 的不同值定义的组。这确保了 {it:balvars} 值在拆分样本中的分布平衡或大致平衡。当每个组中的观察（或聚类）数量与拆分样本数量大致相同（或更少）时，建议使用选项 {cmd:rround}。 {it:balvars} 可以是数值或字符串变量。

{dlgtab:高级}

{phang}
{opt strok} （仅在指定 {varlist} 时适用）指定检查 {it:varlist} 中任何字符串变量是否缺失值。对于缺失值的观察，生成的样本 ID 变量被设置为缺失。默认情况下，{it:varlist} 中的字符串变量被忽略。

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现结果。 {opt rseed(#)} 相当于在运行 {cmd:splitsample} 之前输入 {cmd:set} {cmd:seed} {it:#}。有关更多信息，请参见 {help set_seed_zh:[R] set seed}。

{phang}
{opt show} 显示一个表格，展示拆分的样本大小。当指定 {cmd:cluster()} 时，它显示样本中的聚类数量。当指定 {opt balance(balvars)} 时，它显示一个表格，其中每一行对应于 {it:balvars} 的不同值集合，列中显示的是属于该平衡组的每个拆分样本的观察（或聚类）数量。

{phang}
{opt percent} 指定在表格中显示百分比，而不是观察（或聚类）的数量。 {opt percent} 只能与选项 {opt show} 一起指定。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. set obs 101}{p_end}

{pstd}将 101 个观察拆分为随机样本，使用 {cmd:svar} 作为新生成的变量{p_end}
{phang2}{cmd:. splitsample, generate(svar)}

{pstd}列出 {cmd:svar}{p_end}
{phang2}{cmd:. tabulate svar}

{pstd}将上述数据拆分为三个样本，替换 {cmd:svar} 变量{p_end}
{phang2}{cmd:. splitsample, generate(svar, replace) nsplit(3)}

{pstd}将上述数据拆分成 1 号样本占 25%、2 号样本占 25%、3 号样本占 50%，并显示展示拆分的样本大小的表格，替换 {cmd:svar} 变量{p_end}
{phang2}{cmd:. splitsample, generate(svar, replace) split(0.25 0.25 0.50) show}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:splitsample} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察的总数量{p_end}
{synopt:{cmd:r(N_clust)}}聚类的总数量{p_end}
{synopt:{cmd:r(n_samples)}}拆分样本的数量{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:r(balancevars)}}平衡变量的名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <splitsample.sthlp>}