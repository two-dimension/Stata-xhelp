
{help mds_mltn_desc:English Version}
{hline}
{* *! version 1.0.9  04dec2014}{...}
{marker method()}{...}
{phang}
{opt method(method)} 指定 MDS 的方法。

{phang2}
{cmd:method(classical)} 指定经典的度量标定，也称为“主坐标分析”，当与欧几里得距离一起使用时。经典 MDS 获得与现代 MDS 相同的结果，当使用 {cmd:loss(strain)} 和 {cmd:transform(identity)} 时不考虑权重。经典 MDS 的计算速度较快；因此，经典 MDS通常用于为现代 MDS 提供初始值。如果未指定 {cmd:loss()} 和 {cmd:transform()} 选项，则 {cmd:mds} 计算经典解，同样如果指定 {cmd:method(classical)}，则不允许 {cmd:loss()} 和 {cmd:transform()}。

{phang2}
{cmd:method(modern)} 指定现代标定。如果指定 {cmd:method(modern)} 但未指定 {cmd:loss()} 或 {cmd:transform()}，则假设使用 {cmd:loss(stress)} 和 {cmd:transform(identity)}。所有 {cmd:loss()} 和 {cmd:transform()} 的值在 {cmd:method(modern)} 下均有效。

{phang2}
{cmd:method(nonmetric)} 指定非度量标定，这是一种现代标定类型。如果指定 {cmd:method(nonmetric)}，则假设使用 {cmd:loss(stress)} 和 {cmd:transform(monotonic)}。不允许其他 {cmd:loss()} 和 {cmd:transform()} 的值。

{marker loss()}{...}
{phang}
{opt loss(loss)} 指定损失标准。

{phang2}
{cmd:loss(stress)} 指定使用应力损失函数，并以平方欧几里得距离标准化。该标准通常称为 Kruskal 的压力-1。{cmd:loss(stress)} 和 {cmd:loss(nstress)} 的最优配置在一个比例因子内是等价的，但迭代路径可能不同。{cmd:loss(stress)} 是默认值。

{phang2}
{cmd:loss(nstress)} 指定使用应力损失函数，并以平方差异（即，转换的不相似度）标准化。{cmd:loss(stress)} 和 {cmd:loss(nstress)} 的最优配置在一个比例因子内是等价的，但迭代路径可能不同。

{phang2}{cmd:loss(sstress)} 指定使用平方应力损失函数，并以欧几里得距离的四次方标准化。

{phang2}{cmd:loss(nsstress)} 指定使用平方应力标准，并以差异（转换的不相似度）的四次方标准化。

{marker loss(strain)}{...}
{phang2}{cmd:loss(strain)} 指定应变损失标准。经典标定等同于 {cmd:loss(strain)} 和 {cmd:transform(identity)}，但是通过更快的非迭代算法计算的。指定 {cmd:loss(strain)} 仍允许进行转换。

{phang2}{cmd:loss(sammon)} 指定 {help mdslong##S1969:Sammon (1969)} 损失标准。

{marker transform()}{...}
{phang}
{opt transform(tfunction)} 指定不相似度的允许转换类；转换后的不相似度称为差异。

{phang2}{cmd:transform(identity)} 指定唯一允许的转换是身份转换；即，差异等于不相似度。{cmd:transform(identity)} 是默认值。

{phang2}{cmd:transform(power)} 指定差异与不相似度通过幂函数相关，

            disparity = dissimilarity^alpha, alpha>0

{phang2}{cmd:transform(monotonic)} 指定差异是一个弱单调函数的不相似度。这也称为非度量 MDS。平局的不相似度由主要方法处理；即，可能会打破平局，但不一定会打破。{cmd:transform(monotonic)} 仅在 {cmd:loss(stress)} 下有效。

{phang}{opt normalize(norm)} 指定配置的归一化方法。请记住，MDS 配置的位置和方向未定义（“未识别”）；配置的等距变换（即平移、反射或正交旋转）保持点间的欧几里得距离。

{phang2}{cmd:normalize(principal)} 执行主要归一化，其中配置列的均值为零，并对应于主成分，对 {cmd:id()} 值最低的观察具有正系数。{cmd:normalize(principal)} 是默认值。

{phang2}{cmd:normalize(classical)} 通过距离保持的 Procrustean 变换对配置进行归一化，朝向主归一化中的经典配置；见 {manhelp procrustes MV}。如果指定 {cmd: method(classical)}，则 {cmd:normalize(classical)} 无效。

{phang2}{cmd:normalize(target(}{it:matname}{cmd:)} [{cmd:, copy}]{cmd:)} 通过距离保持的 Procrustean 变换对 {it:matname} 进行归一化；见 {manhelp procrustes MV}。{it:matname} 应为 {it:n} x {it:p} 矩阵，其中 {it:n} 是观察值的数量，而 {it:p} 是维度的数量，并且 {it:matname} 的行应根据 {cmd:id()} 有序。{it:matname} 的行名应正确设置，但如果 {cmd:copy} 也被指定，则将被忽略。

{pmore}
注意 {cmd:normalize(classical)} 和 {cmd:normalize(target())}：Procrustes 变换包括平移、反射和正交旋转的任意组合——这些变换保持距离。膨胀（均匀缩放）将拉伸距离，不应用。然而，输出报告膨胀因子，并且报告的 Procrustes 统计量是针对膨胀配置的。