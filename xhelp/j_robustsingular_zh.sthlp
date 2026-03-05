{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[SVY] 调查" "mansection SVY Survey"}{...}
{vieweralsosee "[R] 测试" "mansection R test"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] _稳健" "mansection P _robust"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] 自助法" "help bootstrap_zh"}{...}
{vieweralsosee "[R] 切片法" "help jackknife_zh"}{...}
{viewerjumpto "F 或 chi2 模型统计量报告为缺失" "j_robustsingular_zh##fstat"}{...}
{viewerjumpto "是否有任何标准误缺失？" "j_robustsingular_zh##se"}{...}
{viewerjumpto "您是否在使用自助法或切片法？" "j_robustsingular_zh##boot"}{...}
{viewerjumpto "您是否在使用 svy 估计器，或者是否指定了 vce(cluster clustvar) 选项？" "j_robustsingular_zh##cluster"}{...}
{viewerjumpto "是否有一个回归变量只有一个观测值非零或只属于一个聚类？" "j_robustsingular_zh##nonzero"}
{help j_robustsingular:English Version}
{hline}{...}
{marker fstat}{...}
{title:F 或 chi2 模型统计量报告为缺失}

{pstd}
您的估计结果显示 F 或 chi2 模型统计量报告为缺失。Stata 这样做是为了避免误导，并不是因为您的模型必然存在问题。

{marker se}{...}
{title:是否有任何标准误缺失？}

{pstd}
如果有任何标准误以点的形式报告，则说明您的模型存在问题：一个或多个系数无法在正常统计意义上估计。您需要解决该问题，并忽略本讨论的其他部分。

{marker boot}{...}
{title:您是否在使用 {cmd:bootstrap} 或 {cmd:jackknife}？}

{pstd}
您刚刚估计的 VCE 的秩不足以进行模型测试。这很可能是由于缺乏足够的重复样本。

{pstd}
{cmd:bootstrap} 命令有一个 {opt reps(#)} 选项，如果 {it:#} 小于模型中的系数数量，则 VCE 将具有不足的秩。解决方案是使用更多的重复样本重新运行 {cmd:bootstrap}。

{pstd}
{cmd:jackknife} 命令通过为数据集中的每个观测值重新拟合模型来估计 VCE，每次都将相关观测值排除在估计样本之外。与传统的方差估计器一样，如果观测值的数量少于参数的数量，则 VCE 将是奇异的。如果您在 {cmd:jackknife} 中提供了 {opt cluster()} 选项，请参阅以下讨论。

{marker cluster}{...}
{title:您是否在使用 {cmd:svy} 估计器，或者是否指定了 {cmd:vce(cluster clustvar)} 选项？}

{pstd}
您刚刚估计的 VCE 的秩不足以进行模型测试。如 {manlink R test} 中讨论的那样，使用聚类或调查数据的模型测试分布为 F(k,d-k+1) 或 chi2(k)，其中 k 是约束数量，d=聚类数量或 d=PSU数量减去分层数量。由于 VCE 的秩最多为 d，而模型测试为常数保留了 1 个自由度，因此最多只可以测试 d-1 个约束，因此 k 必须小于 d。您刚刚拟合的模型不满足这一要求。

{pstd}
为简化以下讨论，我们考虑聚类数据的情况。此讨论通常适用于调查估计，只需将“PSUs - strata”替换为“clusters”。

{pstd}
您的模型没有机械问题，但您需要仔细考虑报告的标准误是否有意义。标准误计算的理论在于聚类数量的渐近性，而我们刚刚确定您正在估计的参数数量至少与聚类数量相同。

{pstd}
撇开该问题，模型测试统计量的问题在于您无法同时测试所有系数是否为零，因为信息不足。您可以测试一个子集，但不能全部，因此 Stata 拒绝报告总体模型测试统计量。

{pstd}
此处请注意报告的 chi2 或 F 的自由度。您可能会看到 chi2(6) 或 F(6, 5)。如果您统计在模型测试中约束为 0 的系数的数量，您会发现该数量大于 6。您可以通过在不使用 {cmd:vce(robust)} 和 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项的情况下重新估计模型参数（或者，对于 {help survey_zh} 命令，使用相应的非 {cmd:svy} 估计器）来找出该数量。不管怎样，报告的 6 是可同时测试的系数的最大数量。

{marker nonzero}{...}
{title:是否有一个回归变量只有一个观测值非零或只属于一个聚类？}

{pstd} 
您刚刚估计的 VCE 的秩不足以进行模型测试。这可能发生在您的模型中有一个变量在估计样本中仅对 1 个观测值非零时。同样，当使用聚类稳健 VCE 时，如果一个变量仅对一个聚类非零，也可能发生这种情况。在这种情况下，关于该变量参数的平方和或似然函数的导数对所有观测值都是零。这意味着外积梯度（OPG）方差矩阵是奇异的。由于 OPG 方差矩阵用于计算稳健方差矩阵，因此后者也是奇异的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_robustsingular.sthlp>}