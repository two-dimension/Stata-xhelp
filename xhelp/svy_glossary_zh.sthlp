{smcl}
{* *! version 1.1.14  14may2018}{...}
{vieweralsosee "[SVY] 术语表" "mansection SVY Glossary"}{...}
{viewerjumpto "描述" "svy_glossary_zh##description"}{...}
{viewerjumpto "术语表" "svy_glossary_zh##glossary"}
{help svy_glossary:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[SVY] 术语表} {hline 2}}术语表{p_end}
{p2col:}({mansection SVY Glossary:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}常用术语在此定义。


{marker glossary}{...}
{title:术语表}

{phang}
{bf:100% 样本}。见 {it:{help svy glossary##census:普查}}。

{marker BRR}{...}
{phang}
{bf:平衡重复复制}。平衡重复复制（BRR）是一种用于两 PSUs 在每个层中的设计方差估计方法。与线性方差估计器相比，BRR 方差估计器对于该设计通常提供更合理的方差估计，这可能导致较大的值和不理想的宽置信区间。BRR 方差估计器在 {manlink SVY Variance estimation} 中描述。

{phang}
{bf:自助法}。自助法是一种方差估计方法。调查数据的自助方差估计器在 {manlink SVY Variance estimation} 中描述。

{phang}
{bf:BRR}。
见 {it:{help svy glossary##BRR:平衡重复复制}}。

{marker calibration}{...}
{phang}
{bf:校准}。校准是一种调整抽样权重的方法，通常用于考虑人群中代表性不足的群体。这通常会导致偏差降低，因为它调整了非响应和人群中的代表性不足的群体。校准还往往会导致更小的方差估计。

{pmore}
校准的标准应用使用人口总数来调整抽样权重。人口总数通常取自普查或其他来自调查的独立来源。

{marker census}{...}
{phang}
{bf:普查}。当对人群进行普查时，普遍的每个个体都会参与调查。由于时间、费用和其他限制，普查中收集的数据通常限于可以快速和轻松确定的项目，通常通过问卷形式进行。

{marker cluster}{...}
{phang}
{bf:聚类抽样}。聚类是一组作为一个整体被抽样的个体。尽管在时间和金钱上的成本可以大大减少，聚类抽样通常会导致与独立抽样设计相比更大的方差估计。

{marker DEFF}{...}
{phang}
{bf:DEFF} 和 {bf:DEFT}。DEFF 和 DEFT 是设计效应。设计效应比较给定调查数据集的样本与样本的变异性与来自人群中抽取相同数量个体的假设简单随机抽样（SRS）设计。

{pmore}
DEFF 是两个方差估计的比率。设计基础的方差在分子中；假设 SRS 方差在分母中。

{pmore}
DEFT 是两个标准误差估计的比率。设计基础的标准误差在分子中；假设 SRS 带替换的标准误差在分母中。如果给定的调查设计是通过替代抽样的，DEFT 是 DEFF 的平方根。

{phang}
{bf:增量法}。见 
{it:{help svy_glossary##linearization:线性化}}。

{phang}
{bf:设计效应}。见 {help svy glossary##DEFF:{it:DEFF} 和 {it:DEFT}}。

{marker direct_std}{...}
{phang}
{bf:直接标准化}。
直接标准化是一种估计方法，允许比较来自不同频率分布的比率。

{pmore}
估计的比率（均值、比例和比率）根据来自标准人群的频率分布进行调整。标准人群被划分为称为标准层的类别。标准人群的分层频率称为标准权重。标准化的频率分布通常来自普查数据，标准层通常通过诸如年龄、性别和种族等人口统计信息来识别。

{marker FPC}{...}
{phang}
{bf:有限人群校正}。
有限人群校正（FPC）是因无替换抽样而对点估计方差施加的一种调整，导致其方差估计比可与替换抽样设计的方差估计要小。

{phang}
{bf:FPC}。
见 {it:{help svy glossary##FPC:有限人群校正}}。

{phang}
{bf:哈达玛矩阵}。
哈达玛矩阵是一个具有 {it:r} 行和列的方阵，具有以下性质

            {it:H}_{it:r}'{it:H}_{it:r} ={it:rI}_{it:r}

{pmore}
其中 {it:I}_{it:r} 是阶数为 {it:r} 的单位矩阵。生成一个阶数为 {it:r}=2^{it:p} 的哈达玛矩阵非常简单。从阶数为 2 的哈达玛矩阵（{it:H}_2）开始，通过反复应用克罗内克乘积与 {it:H}_2 构建你的 {it:H}_{it:r}。

{phang}
{bf:插值法}。插值法是一种依赖于数据的方法，用于估计统计量（例如均值、比率或回归系数）的方差。与 BRR 不同，插值法可以应用于几乎任何调查设计。插值方差估计器在 {manlink SVY Variance estimation} 中描述。

{marker linearization}{...}
{phang}
{bf:线性化}。线性化是泰勒线性化的简称。也称为增量法或 Huber/White/鲁棒三明治方差估计器，线性化是一种衍生点估计方差（例如比率或回归系数）近似值的方法。线性方差估计器在 {manlink SVY Variance estimation} 中描述。

{marker MEFF}{...}
{phang}
{bf:MEFF} 和 {bf:MEFT}。MEFF 和 MEFT 是错误规制效应。错误规制效应将给定调查数据集的方差估计与错误规制模型的方差进行比较。在 Stata 中，错误规制模型是不加权、聚类或分层拟合的。

{pmore}
MEFF 是两个方差估计的比率。设计基础的方差在分子中；错误规制方差在分母中。

{pmore}
MEFT 是两个标准误差估计的比率。设计基础的标准误差在分子中；错误规制标准误差在分母中。MEFT 是 MEFF 的平方根。

{phang}
{bf:错误规制效应}。见
{help svy glossary##MEFF:{it:MEFF} 和 {it:MEFT}}。

{phang}
{bf:点估计}。点估计是统计量（如均值或回归系数）的另一名称。

{phang}
{bf:后分层}。后分层是一种调整抽样权重的方法，通常用于考虑人群中代表性不足的群体。这通常会导致因非响应和人群中代表性不足的群体而导致的偏差降低。后分层也往往会导致更小的方差估计。

{pmore}
人群被划分为称为后分层的类别。抽样权重被调整，以使每个后分层内的权重总和等于相应的后分层大小。后分层大小是人口中处于该后分层的个体数量。后分层的频率分布通常来自普查数据，后分层通常通过诸如年龄、性别和种族等人口统计信息来识别。

{phang}
{bf:预测边际}。预测边际提供了一种探索拟合模型响应面的方法，涵盖任何感兴趣的响应指标——均值、线性预测、概率、边际效应、风险差异等。预测边际是对由因子变量的各级表示的群体的响应（或结果）的估计，以控制不同群体之间协变量分布的差异。它们是在调查数据和非线性响应中对于线性模型通常称为估计的边际均值或最小二乘均值的类比。

{pmore}
由于这些边际是对估算样本或子样本的人口加权平均，并且考虑了协变量的抽样分布，它们可用于对人群的处理效应进行推断。

{marker PSU}{...}
{phang}
{bf:初级抽样单位}。
初级抽样单位（PSU）是第一抽样阶段中抽样的聚类；见 {it:{help svy glossary##cluster:聚类抽样}}。

{phang}
{bf:概率权重}。概率权重是抽样权重的另一个术语。

{phang}
{bf:伪似然}。伪似然是一种用于点估计的加权似然。伪似然不是实在的似然，因为它不代表调查样本数据的分布函数。抽样分布是由调查设计决定的。

{phang}
{bf:PSU}。
见 {it:{help svy glossary##PSU:初级抽样单位}}。

{phang}
{bf:复制权重变量}。复制权重变量包含为调整重抽样数据而设定的抽样权重值；有关进一步的细节，请参见 {manlink SVY Variance estimation}。

{phang}
{bf:重抽样}。重抽样是指从数据集中进行抽样的过程。在删除一个的插值法中，数据集通过去掉一个 PSU 并生成点估计的复制进行重抽样。在 BRR 方法中，数据集通过去掉每层中一个 PSU 的组合进行重抽样。得到的点估计复制用于估计其方差和协方差。

{phang}
{bf:样本}。样本是从人群中选定的个体集合，这些个体是作为调查的一部分被选中的。样本还用于指代从被抽样个体收集的数据，通常以回答问题的形式。

{phang}
{bf:抽样阶段}。复杂调查数据通常使用多级聚类抽样进行收集。在第一阶段，PSU 在每一层中被独立选择。在第二阶段，在 PSU 中选择较小的抽样单位。在后续阶段，从前一阶段的聚类中选择越来越小的抽样单位。

{phang}
{bf:抽样单位}。抽样单位是在人群中可以在给定调查设计的特定阶段选择的个体或个体集合。抽样单位的示例包括城市街区、高中、医院和住宅。

{phang}
{bf:抽样权重}。给定调查设计，个体的抽样权重是被抽样概率的倒数。被抽样的概率来源于调查设计中的分层和聚类。抽样权重通常被认为是被抽样个体所代表的人口中的个体数量。

{phang}
{bf:有无替换抽样}。
在使用有替换抽样的设计中，抽样单位可以被选择多次。
在使用无替换抽样的设计中，抽样单位最多只能选择一次。
来自具有替换设计的方差估计往往比来自相应的无替换设计的方差估计要大。

{phang}
{bf:SDR}。
见 {it:{help svy_glossary##SDR:连续差异复制}}。

{marker SSU}{...}
{phang}
{bf:次级抽样单位}。
次级抽样单位（SSU）是从 PSU 中在第二抽样阶段抽样的聚类。SSU 也作为一个通用术语，表示任何不来自第一抽样阶段的抽样单位。

{marker SRS}{...}
{phang}
{bf:简单随机抽样}。
在简单随机样本（SRS）中，个体是独立抽样的——每个个体被选中的概率相同。

{phang}
{bf:SRS}。
见 {it:{help svy glossary##SRS:简单随机样本}}。

{phang}
{bf:SSU}。
见 {it:{help svy glossary##SSU:次级抽样单位}}。

{phang}
{bf:标准层}。见
{it:{help svy glossary##direct_std:直接标准化}}。

{phang}
{bf:标准权重}。见
{it:{help svy glossary##direct_std:直接标准化}}。

{phang}
{bf:分层}。人群被划分为明确界定的个体群体，称为层。在第一抽样阶段，从每层中独立抽取 PSU。在后续抽样阶段，在该阶段的每层内独立抽取 SSU。

{pmore}
使用分层的调查设计通常会导致比不使用分层的相似设计更小的方差估计。当抽样单位在层内的相似程度高于层之间的相似程度时，分层的效果最为显著。

{phang}
{bf:亚人口估计}。亚人口估计专注于计算部分人群的点和方差估计。方差估计测量假设在使用相同的调查设计从人群中选择个体进行观察时的样本与样本之间的变异性。这种方法所得到的方差与通过将样本限制为亚人口内的个体来测量样本与样本之间变异性的方法得到的方差是不同的；见 {manlink SVY Subpopulation estimation}。

{marker SDR}{...}
{phang}
{bf:连续差异复制}。
连续差异复制（SDR）是一种通常应用于系统抽样的方法，观察抽样单位以某种方式排成序列。SDR 方差估计器在 {manlink SVY Variance estimation} 中描述。

{phang}
{bf:调查数据}。调查数据包含按照调查设计从人群中抽样的个体信息。调查数据与其他数据形式的不同之处在于其复杂的个体选择过程。

{pmore}
在调查数据分析中，样本用于推断人群。此外，方差估计测量由于应用于固定人群的调查设计而带来的样本与样本之间的变异性。此方法不同于标准统计分析，在标准统计分析中，样本用于对物理过程进行推断，方差测量由于独立收集来自相同过程的相同数量观察值而产生的样本与样本之间的变异性。

{phang}
{bf:调查设计}。调查设计描述了如何从人群中抽样。调查设计通常包括一个或多个阶段中的分层和聚类抽样。

{phang}
{bf:泰勒线性化}。见 
{it:{help svy_glossary##linearization:线性化}}。

{phang}
{bf:方差估计}。方差估计指用于测量点估计样本间变异量的方法集合；见 {manlink SVY Variance estimation}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_glossary.sthlp>}