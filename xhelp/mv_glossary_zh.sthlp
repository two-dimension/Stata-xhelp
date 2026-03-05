{smcl}
{* *! version 1.0.21  05sep2018}{...}
{vieweralsosee "[MV] 术语表" "mansection MV Glossary"}{...}
{viewerjumpto "描述" "mv_glossary_zh##description"}{...}
{viewerjumpto "术语表" "mv_glossary_zh##glossary"}{...}
{viewerjumpto "参考文献" "mv_glossary_zh##references"}
{help mv_glossary:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[MV] 术语表} {hline 2}}术语表{p_end}
{p2col:}({mansection MV Glossary:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}此处定义了常用术语。


{marker glossary}{...}
{title:术语表}

{phang}
{marker agglohier}{...}
{bf:聚合层次聚类方法}。聚合层次聚类方法是自底向上的层次聚类方法。每个观察开始时处于一个单独的组。在每次迭代中，将最接近的一对组聚合或合并，直到所有数据都在一个聚类中。这个过程创建了一个聚类的层次结构。与 
{help mv_glossary##divisivehier:分裂层次聚类方法} 相对。

{phang}
{bf:反图相关矩阵} 或 {bf:反图协方差矩阵}。变量的图像定义为通过对所有其他变量进行回归而可以预测的部分；因此，反图是变量中无法预测的部分。反图相关矩阵 {bf:A} 是一个包含变量之间偏相关的负值的矩阵。偏相关表示因子在结果中相互解释的程度。反图相关矩阵的对角线是对个别变量的 Kaiser-Meyer-Olkin 采样充分性的度量。具有较小值的变量应从分析中删除。反图协方差矩阵 {bf:C} 包含偏协方差的负值，并在主对角线上具有一减去平方多重相关。良好因子模型的两个反图矩阵中，大多数非对角元素应该是小的。两者反图矩阵可以通过相关矩阵 {bf:R} 的逆计算得到 

            {bf:A} = {c -(}diag({bf:R}){c )-}^{-1} {bf:R}{c -(}diag({bf:R}){c )-}^{-1}
            {bf:C} = {c -(}diag({bf:R}){c )-}^{-1/2} {bf:R}{c -(}diag({bf:R}){c )-}^{-1/2}

{pmore}
另见 
{help mv_glossary##KMO:Kaiser-Meyer-Olkin 采样充分性度量}。

{phang}
{bf:平均连锁聚类}。平均连锁聚类是一种层次聚类方法，它使用组之间观察值的平均接近度作为两个组之间的接近度度量。

{phang}
{bf:贝叶斯定理}。贝叶斯定理指出，事件 A 在事件 B 条件下的概率通常与事件 B 在事件 A 条件下的概率不同，尽管这两者是相关的。贝叶斯定理为

            P(A|B) = {P(B|A) P(A)}/{P(B)}

{pmore}
其中 P(A) 是 A 的边际概率，P(A|B) 是在给定 B 的情况下 A 的条件概率，对 P(B) 和 P(B|A) 也是如此。

{phang}
{bf:本特勒不变模式简单旋转}。本特勒的 ({help mv glossary##B1977:1977}) 旋转最大化不变模式简单性。这是一种斜旋转，最小化标准函数

{phang3}
   c({bf:Lambda}) = -log[|({bf:Lambda}^2)'{bf:Lambda}^2|] +
         log[|diag{c -(}({bf:Lambda}^2)'{bf:Lambda}^2{c )-}|]

{pmore}
参见 
{help mv_glossary##CFrotate:Crawford-Ferguson 旋转}中对 {bf:Lambda} 的定义。另见 
{help mv_glossary##obliquerotation:斜旋转}。

{phang}
{marker betweenmatrix}{...}
{bf:组间矩阵} 和 {bf:组内矩阵}。组间和组内矩阵是 SSCP 矩阵，分别测量组间和组内的分散。这些矩阵在多变量方差分析及相关假设检验中使用：维克斯的 λ、罗伊的最大根、劳利-霍特林迹和皮莱的迹。

{pmore}
这里我们有 k 个独立的随机样本，大小为 n。组间矩阵 {bf:H} 的表达式为

{phang3}
   {bf:H} = n sum_{i=1}^k ({bf:y}_{i{bf:.}}[bar] -
                           {bf:y}_{{bf:..}}[bar])
                           ({bf:y}_{i{bf:.}}[bar]
                         - {bf:y}_{{bf:..}}[bar])' = sum_{i=1}^k
             1/n {bf:y}_{i{bf:.}}{bf:y}_{i{bf:.}}' -
             1/kn {bf:y}_{{bf:..}}{bf:y}_{{bf:..}}'

{pmore}
组内矩阵 {bf:E} 定义为

{phang3}
{bf:E} = sum_{i=1}^k sum_{j=1}^n({bf:y}_{ij} - {bf:y}_{i{bf:.}}[bar])
             ({bf:y}_{ij} - {bf:y}_{i{bf:.}})' = sum_{i=1}^k 
              sum_{j=1}^n{bf:y}_{ij}{bf:y}_{ij}' -
              sum_{i=1}^k 1/n {bf:y}_{i{bf:.}}{bf:y}_{i{bf:.}}'

{pmore}
另见 {help mv_glossary##SSCP:SSCP 矩阵}。

{phang}
{bf:双画图}。双画图是一个散点图，表示观察值和变量的组合。有很多不同的双画图；双画图中的变量通常用箭头表示，观察值通常用点表示。

{phang}
{bf:双四分位旋转} 或 {bf:双四分位最小旋转}。双四分位旋转和双四分位最小旋转是同义词。它们在 varimax 和 quartimax 标准之间赋予相等的权重，从而简化矩阵的列和行。这是一种斜旋转，相当于 gamma = 0.5 的 oblimin 旋转。另见 
{help mv_glossary##varimaxrotation:varimax 旋转}、 
{help mv_glossary##quartimaxrotation:quartimax 旋转} 和 
{help mv_glossary##obliminrotation:oblimin 旋转}。

{phang}
{bf:边界解} 或 {bf:海伍德解}。见 {help mv_glossary##Heywood:海伍德情况}。

{phang}
{bf:CA}。见 {help mv_glossary##CA:对应分析}。

{phang}
{bf:典范相关分析}。典范相关分析试图通过寻找每组变量的线性组合，以便最大化线性组合之间的相关性，从而描述两组变量之间的关系。

{phang}
{marker canonicaldiscrim}{...}
{bf:典范判别分析}。典范线性判别分析是 LDA，其中描述如何分隔组是主要兴趣所在。另见 {help mv_glossary##LDA:线性判别分析}。

{phang}
{bf:典范载荷}。典范载荷是典范线性判别函数的系数。另见 {help mv_glossary##canonicaldiscrim:典范判别分析} 和 {help mv_glossary##loading:载荷}。

{phang}
{bf:典范变量集}。典范变量集是通过典范相关分析获得的变量的线性组合或加权和。在典范相关分析中会分析两组变量。第一组变量的第一典范变量是标准化形式的线性组合，与第二组变量中的第一个典范变量具有最大相关性。随后的典范变量与前一个不相关，并且在该约束下有最大的相关性。

{phang}
{bf:中心化数据}。中心化数据均值为零。您可以通过计算 {bf:x} - {bf:x}[bar] 来中心化数据。

{phang}
{bf:中心连锁聚类}。中心连锁聚类是一种层次聚类方法，通过计算两组之间的均值之间的接近度来确定两组的相似性或差异性。

{phang}
{marker classscaling}
{bf:经典标定}。经典标定是一种通过特征分解执行 MDS 的方法。这与现代 MDS 相对立，后者是通过最小化损失函数来实现的。另见 {help mv_glossary##MDS:多维标定} 和 {help mv_glossary##modernscaling:现代标定}。

{phang}
{bf:分类}。分类是将观察值分配或分类到组中的行为，作为判别分析的一部分。在某些来源中，分类与聚类分析同义。

{phang}
{marker classfunction}
{bf:分类函数}。分类函数可以在 LDA 或 QDA 后获得。它们是基于马氏距离的函数，用于将观察值分类到组中。见 {help mv_glossary##discrimfunction:判别函数} 了解替代方法。另见 {help mv_glossary##LDA:线性判别分析} 和 {help mv_glossary##QDA:二次判别分析}。

{phang}
{marker classtable}{...}
{bf:分类表}。分类表，也称为混淆矩阵，给出分类分析中每个组的观察值计数。这一元素位于 (i,j) 位置，给出了属于 {it:i} 组但被分类到 {it:j} 组的观察数。在表的对角线上，预计会有高计数，表示观察被正确分类，而对角线外的值则较小。矩阵的列是预测分类的类别，行表示实际组归属。

{phang}
{marker clanalysis}{...}
{bf:聚类分析}。聚类分析是一种确定观察值自然分组或聚类的方法。

{phang}
{bf:聚类树}。见 {help mv_glossary##dendrogram:树状图}。

{phang}
{bf:聚类}。见 {help mv_glossary##clanalysis:聚类分析}。

{phang}
{bf:共同因子}。通过因子分析找到共同因子。它们线性重建原始变量。在因子分析中，重建在原始变量相关矩阵的预测术语中定义。

{phang}
{marker communality}{...}
{bf:共同性}。共同性是由因子分析中的共同因子解释的变量方差比例。它也是“1 - 唯一性”。另见 {help mv_glossary##uniqueness:唯一性}。

{phang}
{bf:完全连锁聚类}。完全连锁聚类是一种层次聚类方法，使用两组之间最远的观察值对来确定两组的接近度。

{phang}
{bf:组件得分}。在 PCA 后计算组件得分。组件得分是原始变量在主成分空间中的坐标。

{phang}
{bf:科米雷的串联 1 和 2 旋转}。{help mv glossary##C1967:Comrey (1967)} 描述了两种旋转，第一种（串联 1）用于判断应丢弃哪些“小”因子，第二种（串联 2）用于“打磨”。

{pmore}
串联原则 1 最小化标准

{phang3}
 c({bf:Lambda}) = < {bf:Lambda}^2, ({bf:LambdaLambda}')^2{bf:Lambda}^2>

{pmore}
串联原则 2 最小化标准

{phang3}
 c({bf:Lambda}) = < {bf:Lambda}^2,
  {c -(}{bf:11}' - ({bf:LambdaLambda}')^2{c )-}{bf:Lambda}^2>

{pmore} 参见 
{help mv_glossary##CFrotate:Crawford-Ferguson 旋转}
中对 {bf:Lambda} 的定义。

{phang}
{bf:配置}。在 MDS 中，配置是一种在低纬度（通常是二维）空间中的表示，低维空间中的距离近似高维空间中的不相似度或差异。另见 {help mv_glossary##MDS:多维标定}、 {help mv_glossary##dissimilarity:不相似度} 和 {help mv_glossary##disparity:差异}。

{phang}
{marker configplot}{...}
{bf:配置图}。配置图在 MDS 后是一个（通常是二维）标记点的图，显示低维近似值与高维空间中的不相似度或差异。另见 {help mv_glossary##MDS:多维标定}、 {help mv_glossary##dissimilarity:不相似度} 和 {help mv_glossary##disparity:差异}。

{phang}
{bf:混淆矩阵}。混淆矩阵是判别分析后分类表的同义词。见 {help mv_glossary##classtable:分类表}。

{phang}
{bf:对比} 或 {bf:对比组}。在 ANOVA 中，k 个总体均值的对比定义为线性组合

{phang3}
delta = c_1 mu_1 + c_2 mu_2 + ... + c_k mu_k

{pmore}
其中系数满足

{phang3}
sum_{i=1}^k c_i = 0

{pmore}
在多变量设置（MANOVA）中，k 个总体均值向量的对比定义为

{phang3}
{bf:delta} = c_1 {bf:mu}_1 +c_2 {bf:mu}_2 + ... c_k {bf:mu}_k

{pmore}
其中系数再次满足

{phang3}
sum_{i=1}^k c_i = 0

{pmore}
在 ANOVA 后，可以使用 {cmd:contrast}（或 {cmd:test}）来检验单变量假设 delta = 0。在 MANOVA 后，可以使用 {cmd:manovatest} 检验多变量假设 {bf:delta} = 0。

{marker CA}{...}
{phang}
{bf:对应分析}。对应分析 (CA) 提供了二维频率表的行和列的几何表示。几何表示有助于理解变量类别之间的相似性和变量之间的关联。CA 通过奇异值分解计算得出。另见 {help mv_glossary##SVD:奇异值分解}。

{phang}
{bf:对应分析投影}。对应分析投影是 CA 后行和列坐标的线图。该图的目的是显示行和列类别在分析的每个主维度上的排序。每个主维度由一条垂直线表示；标记在行和列类别投影到这些维度的线条上绘制。另见 {help mv_glossary##CA:对应分析}。

{phang}
{bf:成本}。在判别分析中，成本是错误分类观察值的成本。

{phang}
{bf:协方差最小化旋转}。协方差最小化旋转是一种正交旋转，等价于 varimax。另见 {help mv_glossary##varimaxrotation:varimax 旋转}。

{phang}
{marker CFrotate}{...}
{bf:Crawford-Ferguson 旋转}。Crawford-Ferguson {help mv glossary##CF1970:(1970)} 旋转是一种通用的斜旋转，具有几个有趣的特殊情况。

{pmore}
Crawford-Ferguson 旋转的特殊情况包括

{p2colset 13 28 30 2}{...}
{p2col :kappa}特殊情况{p_end}
            {hline 36}
{p2col: 0}quartimax / quartimin{p_end}
{p2col: 1/p}varimax / 协方差最小化{p_end}
{p2col: f/(2p)}等量最大{p_end}
{p2col: (f-1)/(p+f-2)}节俭最大{p_end}
{p2col: 1}因子节俭{p_end}
            {hline 36}
{p 12 28 30 2}p = {bf:A} 的行数。{p_end}
{p 12 28 30 2}f = {bf:A} 的列数。{p_end}
{p2colreset}{...}

{pmore}
其中 {bf:A} 是需要旋转的矩阵，{bf:T} 是旋转，{bf:Lambda} = {bf:AT}。Crawford-Ferguson 旋转通过最小化标准实现

{phang3}
c({bf:Lambda}) = (1-kappa)/4 <{bf:Lambda}^2, {bf:Lambda}^2({bf:1 1}'
      - {bf:I})> + kappa/4 < {bf:Lambda}^2, ({bf:1 1}' -
        {bf:I}){bf:Lambda}^2>

{pmore}
另见 {help mv_glossary##obliquerotation:斜旋转}。

{phang}
{marker crossedvars}{...}
{bf:交叉变量} 或 {bf:堆叠变量}。在 CA 和 MCA 中，交叉分类变量可以由两个或更多已有分类变量的交互形成。包含这些交互的变量称为交叉或堆叠变量。

{phang}
{marker crossingvars}{...}
{bf:交叉变量} 或 {bf:堆叠变量}。在 CA 和 MCA 中，交叉或堆叠变量是现有分类变量，其交互形成了交叉或堆叠变量。

{phang}
{bf:维度的诅咒}。维度的诅咒是理查德 {help mv glossary##B1961:Bellman (1961)} 提出的术语，用于描述因在数学空间中增加额外维度而伴随的规模呈指数增长所导致的问题。在单位区间上，10 个均匀分布的点足以在它们之间距离不超过 0.1；然而单位正方形需要 100 个点，单位立方体需要 1000 个点。许多多变量统计程序受到维度的诅咒的影响。增加变量而不增加足够的观察可以导致不精确。

{phang}
{marker dendrogram}{...}
{bf:树状图} 或 {bf:聚类树}。树状图或聚类树图形化地呈现有关观察如何在层次聚类分析中的不同相似性层次上组合在一起的信息。在树状图的底部，每个观察都被视为自己的聚类。每个观察都有垂直线延伸，在不同的 (不) 相似性值下，这些线连接到其他观察的线条。在树状图的顶部，所有观察继续合并在一起。另见 {help mv_glossary##hiercl:层次聚类}。

{phang}
{marker dilation}{...}
{bf:膨胀}。膨胀在 Procrustes 旋转中拉伸或收缩距离。

{phang}
{bf:维度}。维度是定义对象或观察特征所需的参数或测量。维度是数据集中的变量。体重、身高、年龄、血压和药物剂量是健康数据中的维度示例。员工人数、总收入、净收入、税收和年份是公司数据中的维度示例。

{phang}
{marker discrim}{...}
{bf:判别分析}。判别分析用于描述组之间的差异，并在分配（分类）未知组成员身份的观察值时利用这些差异。判别分析在许多参考文献中也称为分类。

{phang}
{marker discrimfunction}{...}
{bf:判别函数}。判别函数是根据 Fisher 的 LDA 方法的特征向量形成的。见 {help mv_glossary##LDA:线性判别分析}。有关替代方案，请参见 {help mv_glossary##classfunction:分类函数}。

{phang}
{bf:判别变量}。判别分析中的判别变量经过分析以确定已知组之间的差异。这些组之间的差异随后在将观察分类到组中时被利用。

{phang}
{marker disparity}{...}
{bf:差异}。差异是转换的不相似性，即通过某种函数转换的不相似值。将不相似性转换为差异的函数类别可以是 (1) 一类度量，或已知函数如线性函数或可以通过实数标量参数化的幂函数，或 (2) 更一般的 (非度量) 函数类，例如任何单调函数。差异在 MDS 中使用。另见 {help mv_glossary##dissimilarity:不相似度}、 {help mv_glossary##MDS:多维标定}、 {help mv_glossary##metricscaling:度量标定} 和 {help mv_glossary##nonmetricscaling:非度量标定}。

{phang}
{marker dissimilarity}{...}
{bf:不相似性}、{bf:不相似性矩阵} 和 {bf:不相似性度量}。不相似性或不相似性度量是量化两个事物之间差异的方法，例如观察、变量或观察组，或量化该差异的方法。 不相似性矩阵是包含不相似性测量的矩阵。 欧几里得距离就是不相似性度量的一个例子。与 {help mv_glossary##similarity:相似性} 对比。另见 {help mv_glossary##proximity:接近度} 和 {help mv_glossary##Euclidean:欧几里得距离}。

{phang}
{marker divisivehier}{...}
{bf:分裂层次聚类方法}。分裂层次聚类方法是自上而下的层次聚类方法。所有数据开始时都是一个大型聚类的一部分；在每次迭代中，一个聚类被分解为两个，以创建两个新聚类。在第一次迭代时有两个聚类，然后三个，以此类推。分裂方法计算成本非常高。与 {help mv_glossary##agglohier:聚合层次聚类方法} 对比。

{phang}
{bf:特征值}。特征值是特征向量被乘的缩放因子。对于许多多变量技术，特征值的大小表示相应特征向量的重要性。另见特征向量。

{phang}
{marker eigenvector}{...}
{bf:特征向量}。线性变换的特征向量是一个非零向量，该向量在变换后要么不受影响，要么仅被乘以一个缩放因子。

{pmore}
这里 {bf:x} 是线性变换 {bf:A} 的特征向量，特征值为 lambda：

{phang3}
{bf:A}{bf:x} = lambda {bf:x}

{pmore}
对于许多多变量技术，特征向量构成分析和解释的基础。另见 {help mv_glossary##loading:载荷}。

{phang}
{bf:等量最大旋转}。等量最大旋转是一种正交旋转，其标准是 varimax 和 quartimax 标准的加权和。等量最大反映了对矩阵行和列的简单结构的关注。相当于 oblimin，gamma = p/2，或 Crawford-Ferguson 家族，kappa = f/2p，其中 p 是要旋转的矩阵的行数，f 是列数。另见 {help mv_glossary##orthorotation:正交旋转}、 {help mv_glossary##varimaxrotation:varimax 旋转}、 {help mv_glossary##quartimaxrotation:quartimax 旋转}、 {help mv_glossary##obliminrotation:oblimin 旋转} 和 {help mv_glossary##CFrotate:Crawford-Ferguson 旋转}。

{phang}
{marker Euclidean}{...}
{bf:欧几里得距离}。两个观察值之间的欧几里得距离是用尺子测量的距离。向量 {bf:P} = (P_1, P_2, ..., P_n) 和 {bf:Q} = (Q_1, Q_2, ..., Q_n) 之间的距离由以下公式给出

{phang3}
D({bf:P}, {bf:Q}) = sqrt{(P_1 - Q_1)^2 + (P_2 - Q_2)^2 + ... + (P_n - Q_n)^2}
 = sqrt{sum_{i=1}^n (P_i - Q_i)^2}

{phang}
{bf:因子}。因子是一个未观察到的随机变量，被认为可以解释观察到的随机变量之间的变异性。

{phang}
{marker factoranalysis}{...}
{bf:因子分析}。因子分析是一种统计技术，用于通过较少的未观察到的随机变量（称为因子）来解释观察到的随机变量之间的变异性。观察变量随后是因子的线性组合加上误差项。

{pmore} 如果观察变量的相关矩阵是 {bf:R}，那么 {bf:R} 通过因子分析分解为

{phang3}
{bf:R} = {bf:Lambda Phi Lambda}' + {bf:Psi}

{pmore}
{bf:Lambda} 是载荷矩阵，{bf:Psi} 包含特定方差，例如未被因子解释的变量的方差。默认的未旋转形式假设共同因子不相关，{bf:Phi} = {bf:I}。

{phang}
{bf:因子载荷图}。因子载荷图生成因子分析后的载荷散点图。

{phang}
{bf:因子载荷}。因子载荷是回归系数，这些系数乘以因子以生成因子分析中的观察变量。

{phang}
{bf:因子节俭}。因子节俭是一种斜旋转，最大化矩阵的列简单性。它相当于 kappa = 1 的 Crawford-Ferguson 旋转。另见 {help mv_glossary##obliquerotation:斜旋转} 和 {help mv_glossary##CFrotate:Crawford-Ferguson 旋转}。

{phang}
{bf:因子得分}。因子得分在因子分析后计算。因子得分是原始变量 {bf:x} 在因子空间中的坐标。得分的两种类型是回归得分 ({help mv glossary##T1951:Thomson 1951}) 和 Bartlett ({help mv glossary##B1937:1937}, {help mv glossary##B1938:1938}) 得分。

{pmore} 使用 {help mv_glossary##factoranalysis:因子分析} 中定义的符号，回归得分的公式为 

{phang3}
{bf:f}[hat] = {bf:Lambda}'{bf:R}^{-1}{bf:x}

{pmore}
在斜旋转的情况下，公式变为

{phang3}
{bf:f}[hat] = {bf:Phi Lambda}'{bf:R}^{-1}{bf:x}

{pmore} Bartlett 得分的公式为

{phang3}
{bf:f}[hat] = {bf:Gamma}^{-1}{bf:Lambda}'{bf:Psi}^{-1}{bf:x}

{pmore}
其中

{phang3}
{bf:Gamma} = {bf:Lambda}'{bf:Psi}^{-1}{bf:Lambda}

{pmore} 另见 {help mv_glossary##factoranalysis:因子分析}。

{phang}
{marker Heywood}{...}
{bf:海伍德情况} 或 {bf:海伍德解}。海伍德情况可能出现在因子分析输出中；这表明产生了边界解，称为海伍德解。似然比测试的几何假设被违反，尽管如果谨慎解读，该测试可能有用。

{phang}
{marker hiercl}{...}
{bf:层次聚类} 和 {bf:层次聚类方法}。在层次聚类中，数据通过迭代步骤放入聚类。与 {help mv_glossary##partitioncl:划分聚类} 对比。另见 {help mv_glossary##agglohier:聚合层次聚类方法} 和 {help mv_glossary##divisivehier:分裂层次聚类方法}。

{phang}
{bf:霍特林的 T 平方广义均值检验}。霍特林的 T 平方广义均值检验是一种多变量检验，如果仅指定一个变量，则减少为标准 t 检验。它检验一个均值集是否为零或两个均值集是否相等。

{phang}
{bf:惯性}。在 CA 中，惯性与应用数学中“惯性矩”的定义相关，是质量乘以到质心的平方距离的积分。惯性定义为两向表的总 Pearson 卡方除以观察总数，或在奇异值分解中找到的平方奇异值的总和。

{phang3}
总惯性 = 1/n chi^2 = sum_k lambda^2_k

{pmore}
在 MCA 中，惯性类似定义。对于指示符或伯特矩阵方法，其公式为

{phang3}
总惯性 = (q/q-1) sum phi_t^2 - (J-q)/q^2

{pmore}
其中 q 是活跃变量的数量，J 是类别的数量，phi_t 是特征分解的 {it:t} 个（未调整的）特征值。在 JCA 中，修正伯特矩阵的总惯性定义为离对角块的惯性之和。另见 {help mv_glossary##CA:对应分析} 和 {help mv_glossary##MCA:多重对应分析}。

{phang}
{bf:迭代主因子法}。迭代主因子法是一种执行因子分析的方法，其中共同性 {h}_i^2[hat] 是通过 {bf:Lambda}[hat] 中的载荷迭代估计而得的

{phang3}
h_i^2[hat] = sum_{j=1}^m lambda_{ij}^2[hat]

{pmore}
另见 {help mv_glossary##factoranalysis:因子分析} 和 {help mv_glossary##communality:共同性}。

{phang}
{bf:JCA}。指联合对应分析；见 {help mv_glossary##MCA:多重对应分析}。

{phang}
{bf:联合对应分析}。见 {help mv_glossary##MCA:多重对应分析}。

{phang}
{marker KMO}{...}
{bf:凯泽-梅耶-奥尔金采样充分性度量}。凯泽-梅耶-奥尔金 (KMO) 采样充分性度量的值在 0 和 1 之间，小值意味着变量之间共同性不足，以至于无法进行因子分析或 PCA。根据历史，KMO 值 {help mv glossary##K1974:Kaiser 1974} 的标签如下：

{p2colset 13 28 30 2}{...}
{p2col: 0.00 到 0.49}    不可接受{p_end}
{p2col: 0.50 到 0.59}    糟糕{p_end}
{p2col: 0.60 到 0.69}    中等{p_end}
{p2col: 0.70 到 0.79}    适中{p_end}
{p2col: 0.80 到 0.89}    优良{p_end}
{p2col: 0.90 到 1.00}    极好{p_end}
{p2colreset}{...}

{phang}
{marker kmeans}{...}
{bf:kmeans}。Kmeans 是执行划分聚类分析的一种方法。用户指定要使用迭代过程创建的聚类数量 k。每个观察值被分配到其均值最接近的组，然后基于该分类确定新的组均值。这些步骤持续进行，直到没有观察值更改组。该算法以 k 个种子值开始，它们充当 k 个组均值。有多种方式可以指定开始的种子值。另见 {help mv_glossary##partitioncl:划分聚类}。

{phang}
{marker kmedians}{...}
{bf:kmedians}。Kmedians 是 kmeans 的一种变体。执行相同的过程，只需计算中位数而不是均值来表示每一步的组中心。另见 {help mv_glossary##kmeans:kmeans} 和 {help mv_glossary##partitioncl:划分聚类}。

{phang}
{bf:KMO}。见 {help mv_glossary##KMO:凯泽-梅耶-奥尔金采样充分性度量}。

{phang}
{bf:KNN}。见 {help mv_glossary##KNN:kth 最近邻}。

{phang}
{marker Kruskalstress}{...}
{bf:克拉斯卡尔应力}。克拉斯卡尔应力度量 {help mv glossary##K1964:Kruskal 1964}; {help mv glossary##CC2001:Cox and Cox 2001, 63} 在 MDS 中的表达式为

{phang3}
Kruskal({bf:D}[hat],{bf:E}) = {c -(}(sum (E_{ij} - D_{ij})^2[hat])/sum E_{ij}^2{c )-}^{1/2}

{pmore}
其中 D_{ij} 是对象 i 和 j 之间的不相似性，1 {ul:<} i,j {ul:<} n，D_{ij}[hat} 是差异，也就是转化的不相似性，E_{ij} 是匹配配置的第 i 行和第 j 行之间的欧几里得距离。 克拉斯卡尔应力是现代 MDS 中损失函数的一个例子。在经典 MDS 后， {bf:estat stress} 给出克拉斯卡尔应力。另见 {help mv_glossary##classscaling:经典标定}、 {help mv_glossary##MDS:多维标定} 和 {help mv_glossary##stress:应力}。

{phang}
{marker KNN}{...}
{bf:kth 最近邻}。{it:k}最近邻 (KNN) 判别分析是一种基于每个观察值最近的 k 个邻居的非参数判别方法。可以通过不同的相似性和不相似性度量处理连续和二元数据。KNN 分析可以区分不规则形状的组，包括多模态组。另见 {help mv_glossary##discrim:判别分析} 和 {help mv_glossary##nonparametricmethods:非参数方法}。

{phang}
{marker Lawley}{...}
{bf:劳利-霍特林迹}。劳利-霍特林迹是用于假设检验 H_0: {bf:mu}_1 = {bf:mu}_2 = ... = {bf:mu}_k 的检验统计量，基于 {bf:E}^{-1}{bf:H} 的特征值 lambda_1, lambda_2, ... , lambda_s。其定义为

{phang3}
U^{(s)} = trace({bf:E}^{-1}{bf:H}) = sum_{i=1}^s lambda_i

{pmore} 其中 {bf:H} 是组间矩阵，{bf:E} 是组内矩阵，见 {help mv_glossary##betweenmatrix:组间矩阵}。

{phang}
{bf:LDA}。见 {help mv_glossary##LDA:线性判别分析}。

{phang}
{marker LOO}{...}
{bf:留一法}。在判别分析中，分类某个观察时将其排除在估计样本之外，以检查分析的稳健性；因此短语“留一法” (LOO)。另见 {help mv_glossary##discrim:判别分析}。

{phang}
{marker LDA}{...}
{bf:线性判别分析}。线性判别分析 (LDA) 是判别分析的一种参数形式。在 Fisher 的 ({help mv glossary##F1936:1936}) LDA 方法中，判别变量的线性组合提供各组之间的最大分隔。{help mv glossary##M1936:Mahalanobis (1936)} 的 LDA 公式假设观察来自多元正态分布，且具有相等的协方差矩阵。另见 {help mv_glossary##discrim:判别分析} 和 {help mv_glossary##parametricmethods:参数方法}。

{phang}
{bf:连锁}。在聚类分析中，连锁是指组或聚类之间的接近度度量。

{phang}
{marker loading}{...}
{bf:载荷}。载荷是线性变换中的系数或权重。载荷在许多多变量技术中发挥着重要作用，包括因子分析、PCA、MANOVA、LDA 和典范相关分析。在某些设置中，载荷是主要关心的内容，并被检查其可解释性。对于许多多变量技术，载荷基于相关或协方差矩阵的特征分析。另见 {help mv_glossary##eigenvector:特征向量}。

{phang}
{bf:载荷图}。载荷图是因子分析、PCA 或 LDA 后的载荷散点图。

{phang}
{bf:逻辑判别分析}。逻辑判别分析是一种基于组的似然比具有指数形式的假设的判别分析方式。多项式逻辑回归为逻辑判别分析提供了基础。由于多项式逻辑回归可以处理二元和连续回归变量，因此逻辑判别分析也适用于二元和连续判别变量。另见 {help mv_glossary##discrim:判别分析}。

{phang}
{bf:LOO}。见 {help mv_glossary##LOO:留一法}。

{phang}
{marker loss}{...}
{bf:损失}。现代 MDS 是通过最小化损失函数（也称为损失标准）来执行的。损失量化了差异和欧几里得距离之间的差异。

{pmore}
损失函数包括克拉斯卡尔的应力及其平方，均已用差异或距离进行归一化，此外还包括当差异等于不相似性时等价于经典度量标定的应变标准以及 {help mv glossary##S1969:Sammon (1969)} 映射标准，即距离与差异之间的平方加权差异的总和，在差异总和上进行归一化。

{pmore}
另见 {help mv_glossary##MDS:多维标定}、 {help mv_glossary##Kruskalstress:克拉斯卡尔应力}、 {help mv_glossary##classscaling:经典标定} 和 {help mv_glossary##disparity:差异}。

{phang}
{bf:马哈拉诺比斯距离}。马哈拉诺比斯距离度量是一种尺度不变的距离测量方式。它考虑了数据集的相关性。

{phang}
{bf:马哈拉诺比斯变换}。马哈拉诺比斯变换采用协方差矩阵的逆的 Cholesky 因子分解 {bf:S}^{-1}，用于转化数据。如果我们有 Cholesky 因子分解 {bf:S}^{-1} = {bf:L}'{bf:L}，那么 {bf:x} 的马哈拉诺比斯变换为 {bf:z} = {bf:Lx}，且 {bf:z}'{bf:z} = D_{M}^2({bf:x})。

{phang}
{bf:MANCOVA}。MANCOVA 是多变量协方差分析。见 {help mv_glossary##MANOVA:多变量方差分析}。

{phang}
{bf:MANOVA}。见 {help mv_glossary##MANOVA:多变量方差分析}。

{phang}
{bf:质量}。在 CA 和 MCA 中，质量是边际概率。活动行或列类别的质量总和等于 1。

{phang}
{marker matchcoef}{...}
{bf:匹配系数}。匹配相似度系数用于比较两个二元变量。如果 a 是两个都值为 1 的观察数，d 是两个都值为 0 的观察数，而 b、c 是 (1,0) 和 (0,1) 的观察数，则匹配系数为

{phang3}
(a + d)/(a+b+c+d)  另见 {help mv_glossary##similarity:相似度度量}。

{phang}
{bf:匹配配置}。在 MDS 中，匹配配置是低维配置，其距离近似高维不相似性或差异。另见 {help mv_glossary##MDS:多维标定}、 {help mv_glossary##dissimilarity:不相似性} 和 {help mv_glossary##disparity:差异}。

{phang}
{bf:匹配配置图}。在 MDS 后，这是匹配配置的散点图。

{phang}
{bf:最大似然因子法}。最大似然因子法是一种进行因子分析的方法，它假设观察呈多元正态分布。它最大化偏相关矩阵的行列式；因此，该解也作为描述性方法对非正态数据有意义。另见 {help mv_glossary##factoranalysis:因子分析}。

{phang}
{bf:MCA}。见 {help mv_glossary##MCA:多重对应分析}。

{phang}
{bf:MDS}。见 {help mv_glossary##MDS:多维标定}。

{phang}
{bf:MDS 配置图}。见 {help mv_glossary##configplot:配置图}。

{phang}
{bf:测量}。测量是表示对象之间接近度的数量或确定对象之间接近度的方法。另见 {help mv_glossary##proximity:接近度}。

{phang}
{bf:中位数连锁聚类}。中位数连锁聚类是一种层次聚类方法，它使用两个组中位数之间的距离来确定两个组的相似性或距离。另见 {help mv_glossary##clanalysis:聚类分析} 和 {help mv_glossary##agglohier:聚合层次聚类方法}。

{phang}
{marker metricscaling}{...}
{bf:度量标定}。度量标定是一种 MDS，其中不相似性通过已知函数类别转换为差异。这与 {help mv_glossary##nonmetricscaling:非度量标定} 对比。另见 {help mv_glossary##MDS:多维标定}。

{phang}
{bf:最小熵旋转}。最小熵旋转是一种正交旋转，通过最小化与均匀性（熵）的偏差实现。最小熵标准 {help mv glossary##J2004:Jennrich 2004} 为

{phang3}
c({bf:Lambda}) = - 1/2 <{bf:Lambda}^2, log {bf:Lambda}^2>

{pmore} 见 {help mv_glossary##CFrotate:Crawford-Ferguson 旋转} 中对 {bf:Lambda} 的定义。另见 {help mv_glossary##orthorotation:正交旋转}。

{phang}
{bf:错误分类率}。在判别分析后计算的错误分类率，最简单的形式是错误分类观察的比例。见 {help mv_glossary##discrim:判别分析}。

{phang}
{marker modernscaling}{...}
{bf:现代标定}。现代标定是一种 MDS，通过最小化比较高维空间中差异（转化的不相似性）和低维空间中距离的损失函数来实现。与 {help mv_glossary##classscaling:经典标定} 对比。另见 {help mv_glossary##dissimilarity:不相似性}、 {help mv_glossary##disparity:差异}、 {help mv_glossary##MDS:多维标定} 和 {help mv_glossary##loss:损失}。

{phang}
{marker MDS}{...}
{bf:多维标定}。多维标定 (MDS) 是一种降维和可视化技术。高维空间中观察值之间的不相似性（例如，欧几里得距离）在一个较低维度的空间中表示，通常是两个维度，使得低维空间的欧几里得距离在某种意义上近似高维空间中的不相似性。通常，高维不相似性首先转换为差异，然后通过低维空间中的距离近似这些差异。另见 {help mv_glossary##dissimilarity:不相似性}、 {help mv_glossary##disparity:差异}、 {help mv_glossary##classscaling:经典标定}、 {help mv_glossary##loss:损失}、 {help mv_glossary##modernscaling:现代标定}、 {help mv_glossary##metricscaling:度量标定} 和 {help mv_glossary##nonmetricscaling:非度量标定}。

{phang}
{marker MCA}{...}
{bf:多重对应分析}。多重对应分析 (MCA) 和联合对应分析 (JCA) 是用于分析分类变量观察值的两种方法。MCA 和 JCA 分析多维表，通常被视为 CA 的扩展。另见 {help mv_glossary##CA:对应分析}。

{phang}
{bf:多变量协方差分析}。见 {help mv_glossary##MANOVA:多变量方差分析}。

{phang}
{marker MANOVA}{...}
{bf:多变量方差分析}。多变量方差分析 (MANOVA) 用于检验均值的假设。在 MANOVA 中通常计算四个多变量统计量：维克斯的 λ、皮莱的迹、劳利-霍特林迹和罗伊的最大根。另见 {help mv_glossary##Wilk:维克斯的 λ}、 {help mv_glossary##Pillai:皮莱的迹}、 {help mv_glossary##Lawley:劳利-霍特林迹} 和 {help mv_glossary##Roy:罗伊的最大根}。

{phang}
{marker mvregression}{...}
{bf:多变量回归}。多变量回归是一种通过 最小二乘回归估计线性（矩阵）模型

{phang3}
{bf:Y} = {bf:X}{bf:B} + {bf:Xi}
多变量回归通过最小二乘回归进行估计，可以用于检验假设，类似于 MANOVA。

{phang}
{bf:最近邻}。见 {help mv_glossary##KNN:kth 最近邻}。

{phang}
{marker nonmetricscaling}{...}
{bf:非度量标定}。非度量标定是一种现代 MDS，其中不相似性可以通过任何单调函数转换为差异，而不是通过已知函数类别。与 {help mv_glossary##metricscaling:度量标定} 对比。另见 {help mv_glossary##MDS:多维标定}、 {help mv_glossary##dissimilarity:不相似性}、 {help mv_glossary##disparity:差异} 和 {help mv_glossary##modernscaling:现代标定}。

{phang}
{marker nonparametricmethods}{...}
{bf:非参数方法}。非参数统计方法，如 KNN 判别分析，不假设总体适合任何参数化分布。

{phang}
{bf:归一化}。归一化以标准形式提供信息以供解释。在 CA 中，行和列坐标可以根据希望如何解释数据采用不同的归一化方式。归一化还用于旋转、MDS 和 MCA。

{phang}
{marker oblimaxrotation}{...}
{bf:oblimax 旋转}。oblimax 旋转是一种斜旋转的方法，最大化高载荷和低载荷的数量。当限制为正交旋转时，oblimax 等价于 quartimax 旋转。oblimax 最小化 oblimax 标准

{phang3}
c({bf:Lambda}) = - log(<{bf:Lambda}^2, {bf:Lambda}^2>) + 2
      log(<{bf:Lambda}, {bf:Lambda}>)

{pmore}
见 {help mv_glossary##CFrotate:Crawford-Ferguson 旋转} 中对 {bf:Lambda} 的定义。另见 {help mv_glossary##obliquerotation:斜旋转}、 {help mv_glossary##orthorotation:正交旋转} 和 {help mv_glossary##quartimaxrotation:quartimax 旋转}。

{phang}
{marker obliminrotation}{...}
{bf:oblimin 旋转}。oblimin 旋转是一种通用的斜旋转方法，通过最小化 oblimin 标准实现

{phang3}
c({bf:Lambda}) = 1/4 <{bf:Lambda}^2, {c -(}{bf:I} - (gamma/p) {bf:1 1}'{c )-}
    {bf:Lambda}^2({bf:1 1}' - {bf:I})>

{pmore}
oblimin 有几个有趣的特殊情况：

{p2colset 13 28 30 2}{...}
{p2col: gamma}特殊情况{p_end}
           {hline 41}
{p2col: 0}quartimax / quartimin{p_end}
{p2col: 1/2}双四分位最大 / 双四分位最小{p_end}
{p2col: 1}varimax / 协方差最小化{p_end}
{p2col: p/2}等量最大{p_end}
           {hline 41}
{p 12 28 30 2}p = {bf:A} 的行数。{p_end}
{p2colreset}{...}

{pmore}
见 {help mv_glossary##CFrotate:Crawford-Ferguson 旋转} 中对 {bf:Lambda} 和 {bf:A} 的定义。另见 {help mv_glossary##obliquerotation:斜旋转}。

{phang}
{marker obliquerotation}{...}
{bf:斜旋转} 或 {bf:斜变换}。斜旋转保持矩阵行的范数，但不保持它们的内积。从几何角度来看，这保持了向量的长度，但不保持它们之间的角度。相比之下，在正交旋转中，两者都被保持。

{phang}
{bf:排序}。排序是对数据点集相对于一个或多个轴进行排序。MDS 是一种排序形式。

{phang}
{marker orthorotation}{...}
{bf:正交旋转} 或 {bf:正交变换}。正交旋转保持矩阵行的范数和内积。从几何角度来看，这保持了向量的长度和它们之间的角度。相对而言，斜旋转仅保持范数，即向量的长度。

{phang}
{marker parametricmethods}{...}
{bf:参数方法}。参数统计方法，如 LDA 和 QDA，假设总体符合参数化分布。例如，对于 LDA，我们假设组是多元正态分布，且具有相等的协方差矩阵。

{phang}
{bf:节俭最大旋转}。节俭最大旋转是一种正交旋转，在行和列之间平衡复杂性。它相当于 Crawford-Ferguson 家族，kappa = (f-1)/(p+f-2)，其中 p 是原始矩阵的行数，f 是列数。见 {help mv_glossary##orthorotation:正交旋转} 和 {help mv_glossary##CFrotate:Crawford-Ferguson 旋转}。

{phang}
{bf:部分指定目标旋转}。部分指定目标旋转最小化标准

{phang3}
c({bf:Lambda}) = |{bf:W} otimes ({bf:Lambda} - {bf:H})|^2

{pmore}
对于给定的目标矩阵 {bf:H} 和非负加权矩阵 {bf:W}（通常是零一值）。见 {help mv_glossary##CFrotate:Crawford-Ferguson 旋转} 中对 {bf:Lambda} 的定义。

{marker partitioncl}{...}
{phang}
{bf:划分聚类} 和 {bf:划分聚类分析方法}。划分聚类方法将观察值分成一定数量的不重叠组。这是在一步中完成的，与层次聚类分析方法不同，后者使用迭代过程。因此，该方法运行较快，并允许比层次聚类方法处理更大的数据集。与 {help mv_glossary##hiercl:层次聚类} 对比。另见 {help mv_glossary##kmeans:kmeans} 和 {help mv_glossary##kmedians:kmedians}。

{phang}
{bf:PCA}。见 {help mv_glossary##PCA:主成分分析}。

{phang}
{marker Pillai}{...}
{bf:皮莱的迹}。皮莱的迹是用于假设检验 H_0: {bf:mu}_1 = {bf:mu}_2 = ... = {bf:mu}_k 的检验统计量，基于 {bf:E}^{-1}{bf:H} 的特征值 lambda_1, ..., lambda_s。其定义为

{phang3}
V^{(s)} = trace[({bf:E} + {bf:H})^{-1}{bf:H}] =
      sum_{i=1}^s lambda_i/(1 + lambda_i)

{pmore} 其中 {bf:H} 是组间矩阵，{bf:E} 是组内矩阵。见 {help mv_glossary##betweenmatrix:组间矩阵}。

{phang}
{marker posteriorprob}{...}
{bf:后验概率}。在判别分析后，后验概率是基于先验概率、训练数据和特定判别模型，给定观察分配到每个组的概率。与 {help mv_glossary##priorprob:先验概率} 对照。

{phang}
{marker PCA}{...}
{bf:主成分分析}。主成分分析 (PCA) 是一种用于数据降维的统计技术。来自变量相关或协方差矩阵的特征分解的主要特征向量描述了一系列不相关的线性组合，这些组合包含大部分方差。除了数据降维外，通常也会检查 PCA 的特征向量，以了解数据的潜在结构。

{phang}
{bf:主因子法}。主因子法是一种因子分析的方法，在该方法中，因子载荷， 有时称为因子模式，是使用平方多重相关作为共同性的估计值计算得出的。另见 {help mv_glossary##factoranalysis:因子分析} 和 {help mv_glossary##communality:共同性}。

{phang}
{marker priorprob}{...}
{bf:先验概率}。在判别分析中，先验概率是观察属于某组的概率，这一概率是在进行判别分析之前计算的。先验概率通常基于群体中各组的普遍性。与 {help mv_glossary##posteriorprob:后验概率} 对照。

{phang}
{bf:Procrustes 旋转}。Procrustes 旋转是一种正交或斜变换，即纯限制的 Procrustes 变换，不包括平移或膨胀（均匀缩放）。

{phang}
{marker Procrustestransform}{...}
{bf:Procrustes 变换}。Procrustes 变换的目标是将源矩阵 {bf:X} 转换为尽可能接近目标 {bf:Y}。允许的变换是膨胀（均匀缩放）、旋转和反射（即正交或斜变换）的任意组合，以及平移。接近度通过残差平方和测量。在某些情况下，期望无约束 Procrustes 变换；这允许数据不仅通过正交或斜旋转进行变换，而是通过所有可适应的规则矩阵 {bf:A}。无约束 Procrustes 变换相当于多变量回归。

{pmore}
该名称来源于希腊神话中的 Procrustes；Procrustes 邀请客人尝试他的铁床。如果客人对床来说太高，Procrustes 会截去客人的脚；如果客人太矮，他会把客人拉展在架子上。

{pmore}
另见 {help mv_glossary##orthorotation:正交旋转}、 {help mv_glossary##obliquerotation:斜旋转}、 {help mv_glossary##dilation:膨胀} 和 {help mv_glossary##mvregression:多变量回归}。

{phang}
{bf:promax 幂旋转}。Promax 幂旋转是一种斜旋转。它不符合大多数其他旋转的最小化标准框架。promax 方法 ({help mv glossary##HW1964:Hendrickson and White 1964}) 是在计算机广泛可用之前提出的。promax 旋转包含三个步骤：

{phang3}
1. 进行正交旋转。

{phang3}
2. 将旋转矩阵的元素提升到某个幂，同时保存元素的符号。通常该幂在 2 {ul:<} power {ul:<} 4 的范围内。这一操作旨在明确区分小值和大值。

{phang3}
3. 第 2 步的矩阵用作来自原始矩阵的斜 Procrustes 变换的目标。

{phang}
{marker proximity}{...}
{bf:接近度}、{bf:接近度矩阵} 和 {bf:接近度度量}。接近度或接近度度量表示两个事物之间的近似或遥远程度，例如观察、变量或观察组，或量化两个事物之间近似或遥远程度的方法。接近度通过相似性或不相似性进行测量。接近度矩阵是一个接近度的矩阵。另见 {help mv_glossary##similarity:相似性} 和 {help mv_glossary##dissimilarity:不相似性}。

{phang}
{bf:QDA}。见 {help mv_glossary##QDA:二次判别分析}。

{phang}
{marker QDA}{...}
{bf:二次判别分析}。二次判别分析 (QDA) 是判别分析的一种参数形式，是 LDA 的推广。和 LDA 一样，QDA 假设观察来自多元正态分布，但与 LDA 不同的是，组不假设具有相等的协方差矩阵。另见 {help mv_glossary##discrim:判别分析}、 {help mv_glossary##LDA:线性判别分析} 和 {help mv_glossary##parametricmethods:参数方法}。

{phang}
{marker quartimaxrotation}{...}
{bf:四分位最大旋转}。四分位最大旋转最大化矩阵行内平方载荷的方差。它是一种正交旋转，相当于最小化标准

{phang3}
c({bf:Lambda}) = sum_i sum_r lambda^4_{ir} = -1/4
       <{bf:Lambda}^2, {bf:Lambda}^2>

{pmore} 见 {help mv_glossary##CFrotate:Crawford-Ferguson 旋转} 中对 {bf:Lambda} 的定义。

{phang}
{bf:四分位最小旋转}。四分位最小旋转是一种斜旋转，当四分位最小限制为正交旋转时，等同于四分位最大旋转。四分位最小相当于 gamma = 0 的 oblimin 旋转。另见 {help mv_glossary##quartimaxrotation:四分位最大旋转}、 {help mv_glossary##obliquerotation:斜旋转}、 {help mv_glossary##orthorotation:正交旋转} 和 {help mv_glossary##obliminrotation:oblimin 旋转}。

{phang}
{bf:反射}。反射是一个换向的正交变换，即涉及在一个或多个维度中对坐标进行负值化的变换。反射是一种 Procrustes 变换。

{phang}
{marker repeatmeasures}{...}
{bf:重复测量}。重复测量数据对受试者在某些维度（如时间）上进行重复测量，例如在课堂开始、中途和结束时的测试得分。重复观察通常不是独立的。重复测量 ANOVA 是分析重复测量数据的一种方法，MANOVA 是另一种。另见 {help mv_glossary##sphericity:球面性}。

{phang}
{bf:旋转}。旋转是一种保持方向的正交变换。旋转是 Procrustes 变换。

{phang}
{marker Roy}{...}
{bf:罗伊的最大根}。罗伊的最大根检验是用于假设检验 H_0: {bf:mu}_1 = ... = {bf:mu}_k 的检验统计量，基于 {bf:E}^{-1}{bf:H} 的最大特征值。其定义为

{phang3}
theta =  lambda_1/(1+lambda_1)


{pmore}
此处 {bf:H} 是组间矩阵，{bf:E} 是组内矩阵。见 {help mv_glossary##betweenmatrix:组间矩阵}。

{phang}
{bf:萨蒙映射标准}。{help mv glossary##S1969:Sammon (1969)} 映射标准是一种用于 MDS 的损失标准；它是距离与差异之间的加权平方差的总和，归一化为差异的总和。另见 {help mv_glossary##MDS:多维标定}、 {help mv_glossary##modernscaling:现代标定} 和 {help mv_glossary##loss:损失}。

{phang}
{bf:得分}。得分是因子分析、PCA 或 LDA 后的观察值得分，是从载荷矩阵的一列得到的，通过载荷中找到的系数对该观察的数据进行线性组合。

{phang}
{bf:得分图}。得分图生成因子分析、PCA 或 LDA 后的得分变量散点图。

{phang}
{bf:碎石图}。碎石图是特征值或奇异值的图，按从大到小的顺序排列，经过特征分解或奇异值分解。碎石图有助于确定特征分析中因子或组件的数量。碎石是位于坡道或悬崖底部的松石或岩石碎片的堆积；这一图形被称为碎石图，因为它看起来像一块碎石坡道。目标是确定山体崩塌的点。

{phang}
{bf:谢泼德图}。谢泼德图是 MDS 后高维不相似性或差异与所生成的低维距离之间的二次元图。另见 {help mv_glossary##MDS:多维标定}。

{phang}
{marker similarity}{...}
{bf:相似性}、{bf:相似性矩阵} 和 {bf:相似性度量}。相似性或相似性度量是量化两个事物相似程度的指标，例如观察、变量或观察组，或量化该相似度的方法。相似性矩阵是包含相似性测量的矩阵。匹配系数是相似性测量的一个示例。与 {help mv_glossary##dissimilarity:不相似性} 对比。另见 {help mv_glossary##proximity:接近度} 和 {help mv_glossary##matchcoef:匹配系数}。

{phang}
{bf:单链聚类}。单链聚类是一种层次聚类方法，计算两组之间的接近度作为两组之间最近观察值对的接近度。

{phang}
{marker SVD}{...}
{bf:奇异值分解}。奇异值分解 (SVD) 是矩阵的分解。如果 {bf:M} 是一个 m*n 矩阵，则存在如下形式的分解

{phang3}
{bf:M} = {bf:U Sigma V}^*

{pmore}
其中 {bf:U} 是一个 m*m 的单元格矩阵，{bf:Sigma} 是一个 m*n 的矩阵，主对角线上有非负数，非主对角线上为零，{bf:V}^* 是 {bf:V} 的共轭转置，{bf:V} 是一个 n*n 的单元格矩阵。如果 {bf:M} 是实矩阵，那么 {bf:V} 也是实矩阵，并且 {bf:V}^* = {bf:V}'。

{phang}
{marker sphericity}{...}
{bf:球面性}。球面性是指为球形的状态或条件。在重复测量 ANOVA 中，球面性涉及到重复测量的后继水平的差异方差的平等性。多变量的替代 ANOVA，称为 MANOVA，不需要假设球面性。另见 {help mv_glossary##repeatmeasures:重复测量}。

{phang}
{marker SSCP}{...}
{bf:SSCP 矩阵}。SSCP 是平方和乘积的缩写。另见 {help mv_glossary##betweenmatrix:组间矩阵}。

{phang}
{bf:堆叠变量}。见 {help mv_glossary##crossedvars:交叉变量}。

{phang}
{bf:堆叠变量}。见 {help mv_glossary##crossingvars:交叉变量}。

{phang}
{bf:标准化数据}。标准化数据均值为零，标准偏差为一。您可以通过 ({bf:x} - {bf:x}[bar])/sigma 来标准化数据，其中 sigma 是数据的标准偏差。

{phang}
{bf:停止规则}。层次聚类分析的停止规则用于确定聚类数量。为每个聚类解决方案计算一个停止规则值（也称为指数），即在层次聚类分析中的每个层次。另见 {help mv_glossary##hiercl:层次聚类}。

{phang}
{marker stress}{...}
{bf:应力}。见 {help mv_glossary##Kruskalstress:克拉斯卡尔应力} 和 {help mv_glossary##loss:损失}。

{phang}
{bf:结构}。结构（如因子结构）是因子分析后变量与共同因子之间的相关性。结构矩阵在因子分析和 LDA 后可用。另见 {help mv_glossary##factoranalysis:因子分析} 和 {help mv_glossary##LDA:线性判别分析}。

{phang}
{bf:补充行或列} 或 {bf:补充变量}。可以在 CA 中包含补充行或列，补充变量可以在 MCA 中包含。它们不会影响 CA 或 MCA 的解，但会包含在绘图和与对应行或列点的统计数据表中。另见 {help mv_glossary##CA:对应分析} 和 {help mv_glossary##MCA:多重对应分析}。

{phang}
{bf:SVD}。见 {help mv_glossary##SVD:奇异值分解}。

{phang}
{bf:目标旋转}。目标旋转最小化标准

{phang3}
c({bf:Lambda}) = 1/2|{bf:Lambda} - {bf:H}|^2

{pmore}
对于给定目标矩阵 {bf:H}。

{pmore} 见 {help mv_glossary##CFrotate:Crawford-Ferguson 旋转} 中对 {bf:Lambda} 的定义。

{phang}
{bf:分类法}。分类法是科学分类的一般原则研究。它还表示分类，特别是根据其自然关系对植物和动物进行分类。聚类分析是创建分类法的工具，并与数字分类同义。另见 {help mv_glossary##clanalysis:聚类分析}。

{phang}
{bf:四分之一相关}。四分之一相关通过假设每对变量的潜在二元正态分布及显性变量的阈值模型来估计二元变量的相关系数。

{phang}
{bf:平局}。在判别分析后，分类中出现平局情况，当两个或多个后验概率在某个观察值上相等时。它们在 KNN 判别分析中

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mv_glossary.sthlp>}