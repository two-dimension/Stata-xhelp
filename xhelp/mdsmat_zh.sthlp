{smcl}
{* *! version 2.2.7  12dec2018}{...}
{viewerdialog mdsmat "dialog mdsmat"}{...}
{vieweralsosee "[MV] mdsmat" "mansection MV mdsmat"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mds postestimation" "help mds_postestimation_zh"}{...}
{vieweralsosee "[MV] mds postestimation plots" "help mds_postestimation plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mds" "help mds_zh"}{...}
{vieweralsosee "[MV] mdslong" "help mdslong_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] biplot" "help biplot_zh"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{viewerjumpto "Syntax" "mdsmat_zh##syntax"}{...}
{viewerjumpto "Menu" "mdsmat_zh##menu"}{...}
{viewerjumpto "Description" "mdsmat_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mdsmat_zh##linkspdf"}{...}
{viewerjumpto "Options" "mdsmat_zh##options"}{...}
{viewerjumpto "Examples" "mdsmat_zh##examples"}{...}
{viewerjumpto "Stored results" "mdsmat_zh##results"}{...}
{viewerjumpto "References" "mdsmat_zh##references"}
{help mdsmat:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MV] mdsmat} {hline 2}}矩阵中近似数据的多维缩放
{p_end}
{p2col:}({mansection MV mdsmat:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmd:mdsmat} {it:matname}
[{cmd:,} {it:options}]


{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opth met:hod(mdsmat##method:method)}}进行MDS的方法{p_end}
{synopt:{opth loss:(mdsmat##loss:loss)}}损失函数{p_end}
{synopt:{opth trans:form(mdsmat##tfunction:tfunction)}}允许的相似性转化{p_end}
{synopt:{opth norm:alize(mdsmat##norm:norm)}}标准化方法；默认为
	{cmd:normalize(principal)}{p_end}
{synopt:{opt nam:es(namelist)}}与矩阵的行和列名称对应的变量名称；在
	所有情况下都需要，除了{cmd:shape(full)}{p_end}
{synopt:{cmdab:sh:ape}{cmd:(}{cmdab:f:ull}{cmd:)}}{it:matname}是一个方形对称矩阵；默认为
{p_end}
{synopt:{cmdab:sh:ape}{cmd:(}{cmdab:l:ower}{cmd:)}}{it:matname}是一个长度为
	n(n+1)/2的向量，包含相似性或不相似性矩阵的行序列下三角（包括对角线）{p_end}
{synopt:{cmdab:sh:ape}{cmd:(}{cmdab:ll:ower}{cmd:)}}{it:matname}是一个长度为
	n(n-1)/2的向量，包含相似性或不相似性矩阵的严格下三角（不包括对角线）{p_end}
{synopt:{cmdab:sh:ape}{cmd:(}{cmdab:u:pper}{cmd:)}}{it:matname}是一个长度为
	n(n+1)/2的向量，包含相似性或不相似性矩阵的行序列上三角（包括对角线）{p_end}
{synopt:{cmdab:sh:ape}{cmd:(}{cmdab:uu:pper}{cmd:)}}{it:matname}是一个长度为
	n(n-1)/2的向量，包含相似性或不相似性矩阵的严格上三角（不包括对角线）{p_end}
{synopt:{cmd:s2d(}{cmdab:st:andard}{cmd:)}}将相似性转换为不相似性：dissim(ij) = sqrt{c -(}sim(ii)+sim(jj)-2sim(ij){c )-}{p_end}
{synopt:{cmd:s2d(}{cmdab:one:minus}{cmd:)}}将相似性转换为不相似性：dissim(ij) = 1-sim(ij){p_end}

{syntab:模型 2}
{synopt:{opt dim:ension(#)}}配置维度；默认为{cmd:dimension(2)}{p_end}
{synopt:{opt force}}修正邻近信息的问题{p_end}
{synopt:{opt add:constant}}使距离矩阵为正半定（仅限经典MDS）{p_end}
{synopt:{opt weight(matname)}}指定具有与邻近矩阵相同形状的权重矩阵{p_end}

{syntab:报告}
{p2col:{opt neig:en(#)}}显示的特征值最大数量；默认为{cmd:neigen(10)}（仅限经典MDS）{p_end}
{p2col:{opt con:fig}}显示配置坐标的表格{p_end}
{p2col:{opt nopl:ot}}抑制配置图{p_end}

{syntab:最小化}
{synopt:{opth init:ialize(mdsmat##initopt:initopt)}}以{it:initopt}中给出的配置开始{p_end}
{synopt:{opt tol:erance(#)}}配置矩阵的容差；默认为{cmd:tolerance(1e-4)}{p_end}
{synopt:{opt ltol:erance(#)}}损失标准的容差；默认为{cmd:ltolerance(1e-8)}{p_end}
{synopt:{opt iter:ate(#)}}执行最多{it:#}次迭代；默认为{cmd:iterate(1000)}{p_end}
{synopt:{opt prot:ect(#)}}执行{it:#}次优化并报告最佳解决方案；默认为{cmd:protect(1)}{p_end}
{synopt:[{cmd:no}]{cmd:log}}显示或抑制迭代日志；默认为显示{p_end}
{synopt:{opt tr:ace}}在迭代日志中显示当前配置{p_end}
{synopt:{opt grad:ient}}在迭代日志中显示当前梯度矩阵{p_end}

{synopt:{opt sd:protect(#)}}高级选项；请参见{help mdsmat##sdprotect():选项}下的内容{p_end}
{synoptline}
{p 4 6 2}
{opt sdprotect(#)}不在对话框中显示。{p_end}
{p 4 6 2}
请参阅{manhelp mds_postestimation MV:mds postestimation}以获取估计后可用的功能。{p_end}


INCLUDE help mds_tables


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > 多维缩放 (MDS) >}
      {bf:MDS邻近矩阵}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mdsmat}对具有显式相似性或不相似性度量的双向邻近数据进行多维缩放（MDS），其中邻近值在用户指定的矩阵中。{cmd:mdsmat}执行经典的度量MDS，以及现代的度量和非度量MDS。

{pstd}
如果你的邻近值以长格式存储为变量，请参见{manhelp mdslong MV}。如果你希望基于观察值之间的非相似性对数据集进行MDS，请参见{manhelp mds MV}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV mdsmatQuickstart:快速开始}

        {mansection MV mdsmatRemarksandexamples:备注和示例}

        {mansection MV mdsmatMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

INCLUDE help mds_mltn_desc

{phang}{opt names(namelist)}
在所有情况下都需要，除了{cmd:shape(full)}。名称的数量应与完整相似性或不相似性矩阵的行（和列）数量相等，并且不应包含重复项。

{phang}{opt shape(shape)}
指定现有相似性或不相似性矩阵{it:matname}的存储模式。允许以下存储模式：

{phang2}{opt full}
指定{it:matname}为对称的n x n矩阵。

{phang2}{opt lower}
指定{it:matname}为长度为n(n+1)/2的行或列向量，包含相似性或不相似性矩阵的行序列下三角（包括对角线）。

{p 16 20 2}
D(11) D(21) D(22) D(31) D(32) D(33) ... D(n1) D(n2) ... D(nn)

{phang2}{opt llower}
指定{it:matname}为长度为n(n-1)/2的行或列向量，包含相似性或不相似性矩阵的严格下三角（不包括对角线）。

{p 16 20 2}
D(21) D(31) D(32) D(41) D(42) D(43) ... D(n1) D(n2) ... D(n,n-1)

{phang2}{opt upper}
指定{it:matname}为长度为n(n+1)/2的行或列向量，包含相似性或不相似性矩阵的行序列上三角（包括对角线）。

{p 16 20 2}
D(11) D(12) ... D(1n) D(22) D(23) ... D(2n) D(33) D(34) ... D(3n) ... D(nn)

{phang2}{opt uupper}
指定{it:matname}为长度为n(n-1)/2的行或列向量，包含相似性或不相似性矩阵的严格上三角（不包括对角线）。

{p 16 20 2}
D(12) D(13) ... D(1n) D(23) D(24) ... D(2n) D(34) D(35) ... D(3n) ... D(n-1,n)

{phang}{cmd:s2d(standard}|{cmd:oneminus)}
指定如何将相似性转换为不相似性。默认情况下，命令假定不相似性数据。指定{opt s2d()}指示您的邻近数据为相似性。

{pmore}
不相似性数据应在对角线处为零（即，一个对象与它自身相同），并且非负的离对角线的值。
不相似性不需要满足三角不等式，
D(i,j)² {ul:<} D(i,h)² + D(h,j)²。相似性数据的对角线应为1（即，一个对象与它自身相同），并且离对角线的值应在零和一之间。在任一情况下，邻近应为对称。有关数据违反这些假设的信息，请参阅选项{helpb mdsmat##force:force}。

{pmore}
可用的{cmd:s2d()}选项，{cmd:standard}和{cmd:oneminus}，定义如下：

{p2colset 13 25 27 2}{...}
{p2col:{cmd:standard}}dissim(ij) = sqrt{c -(}sim(ii)+sim(jj)-2sim(ij){c )-} = sqrt(2(1-sim(ij))){p_end}
{p2col:{cmd:oneminus}}dissim(ij) = 1-sim(ij){p_end}
{p2colreset}{...}

{pmore}{cmd:s2d(standard)}是默认选项。

{pmore}{cmd:s2d()}仅应与相似性形式的度量一起使用。

{dlgtab:模型 2}

{phang}{opt dimension(#)}
指定近似配置的维度。默认为{cmd:dimension(2)}，且{it:#}不应超过中心距离矩阵的正特征值数量。

{marker force}{...}
{phang}
{opt force}修正提供的邻近和权重信息中的问题。
{opt force}规定不相似性矩阵要被对称化；取D(i,j)和D(j,i)的平均值。此外，对角线上的问题（相似度：D(i,i)!=1；不相似度：D(i,i)!=0）也会被修正。
{cmd:force}不修正缺失值或超范围值（即，D(i,j)<0或相似性与D(i,j)>1）。类似地，{opt force}也会对权重矩阵进行对称化。

{phang}{cmd:addconstant}
指定如果双重中心距离矩阵不是正半定（psd），则应添加常数到平方距离以使其变为psd，从而使其为欧几里得。

{phang}
{cmd:weight(}{it:matname}{cmd:)}
指定具有与邻近矩阵相同形状的对称权重矩阵；即，如果指定{cmd:shape(lower)}，则权重矩阵必须具有此形状。权重应为非负。缺失的权重假定为0。权重还必须是不可约的；即，不可能将对象分组为不相交的组，且所有组间权重为0。{cmd:weight()}不允许与{cmd:method(classical)}一起使用，但请参阅{helpb mdsmat##loss(strain):损失( strain)}。

{dlgtab:报告}

{phang}{opt neigen(#)}
指定包含在表中的特征值数量。默认为{cmd:neigen(10)}。指定{cmd:neigen(0)}会抑制此表。此选项仅适用于经典MDS。

{phang}{opt config}
显示近似配置的坐标表。此表也可以使用估计后命令{cmd:estat config}来显示；请参见{manhelp mds_postestimation MV:mds postestimation}。

{phang}{opt noplot}
抑制近似配置的图形。该图仍可通过{cmd:mdsconfig}稍后生成，该命令还允许标准图形选项用于微调图表；请参见{manhelp mds_postestimation_plots MV:mds postestimation plots}。

{dlgtab:最小化}

{phang}这些选项仅在{cmd:method(modern)}或{cmd:method(nonmetric)}的情况下可用：

{marker initialize()}{...}
{phang}{opt initialize(initopt)}
指定标准最小化过程的初始值。

{phang2}{cmd:initialize(classical)}是默认选项，
使用经典度量缩放的解决方案作为初始值。
使用{cmd:protect()}，除了首次运行外，其他运行均采用随机扰动的经典解决方案。这些随机扰动是独立的，且服从正态分布，标准误等于{opt sdprotect(#)}和不相似性的标准偏差的乘积。{cmd:initialize(classical)}是默认选项。

{phang2}{cmd:initialize(random)}
从随机起始配置开始优化过程。
这些随机配置是从独立的正态分布中生成的，标准误等于{opt sdprotect(#)}和不相似性的标准偏差的乘积。配置的均值在MDS中是无关的。

{phang2}{cmd:initialize(from(}{it:matname}{cmd:)}[{cmd:, copy}]{cmd:)}
将初始值设置为{it:matname}。{it:matname}应为一个{it:n} x {it:p}的矩阵，其中{it:n}为观测数量，{it:p}为维度数量，并且{it:matname}的行应根据{cmd:id()}排序。
{it:matname}的行名称应正确设置，但如果指定了{cmd:copy}，则将被忽略。使用{cmd:protect()}，倒数第二次运行会从{it:matname}中随机扰动开始。这些随机扰动是独立正态分布，其标准误等于{opt sdprotect(#)}和不相似性的标准偏差的乘积。

{phang}{opt tolerance(#)}
指定配置矩阵的容差。当来自一次迭代到下一次迭代的配置的相对变化小于或等于{cmd:tolerance()}时，{cmd:tolerance()}收敛标准被满足。默认值为{cmd:tolerance(1e-4)}。

{phang}{opt ltolerance(#)}
指定拟合标准的容差。当拟合标准从一次迭代到下一次迭代的相对变化小于或等于{cmd:ltolerance()}时，{cmd:ltolerance()}收敛也被满足。默认值为{cmd:ltolerance(1e-8)}。

{pmore}
收敛必须同时满足{cmd:tolerance()}和{cmd:ltolerance()}标准。

{phang}{opt iterate(#)}
指定最大迭代次数。默认值为{cmd:iterate(1000)}。

{phang}{opt protect(#)}
请求执行{it:#}次优化，并报告最佳解决方案。默认值为{cmd:protect(1)}。有关运行初始值的输出包含返回代码、达到的标准值以及生成初始值所用随机数的种子表。指定较大的数字，如{cmd:protect(50)}，可以合理地了解找到的解决方案是否为全局最小值，而不仅仅是局部最小值。

{pmore}
如果还指定了选项{cmd:log}、{cmd:trace}或{cmd:gradient}，则将打印每次优化运行的迭代报告。请注意：此选项会产生大量输出。

{phang}
INCLUDE help lognolog

{phang}{opt trace}
在迭代报告中显示配置矩阵。
请注意：此选项可能会产生大量输出。

{phang}{opt gradient}
在迭代报告中显示拟合标准的梯度矩阵。
请注意：此选项可能会产生大量输出。
{p_end}

{pstd}以下选项可与{cmd:mdsmat}一起使用，但未在对话框中显示：

{marker sdprotect()}{...}
{phang}{opt sdprotect(#)}
为随机配置的标准差或给定起始配置的随机扰动设置比例常数。
默认值为{cmd:sdprotect(1)}。


{marker examples}{...}
{title:示例}

{pstd}
MDS文献中的一个著名示例是598个受试者对两组摩尔斯电码信号（1,..,9,0）被宣布为相同的百分比数据。我们输入数据矩阵的下三角，排除对角线。这称为{cmd:llower}形状（注意额外的"l"以将其与包括对角线的{cmd:lower}区分开来）。为了清晰起见，我们将每行输入到单独的行中；我们也可以将数字作为一行长输入。

{cmd}{...}
{tab}. matrix input Morse = (     ///
{tab}    62                       ///
{tab}    16 59                    ///
{tab}     6 23 38                 ///
{tab}    12  8 27 56              ///
{tab}    12 14 33 34 30           ///
{tab}    20 25 17 24 18 65        ///
{tab}    37 25 16 13 10 22 65     ///
{tab}    57 28  9  7  5  8 31 58  ///
{tab}    52 18  9  7  5 18 15 39 79 )
{txt}{...}

{pstd}
这些是相似性格式的邻近数据，但范围为[0,100]而不是{cmd:mdsmat}所要求的[0,1]。

{tab}{cmd:. matrix Morse = 0.01 * Morse}

{pstd}经典MDS{p_end}

{phang2}
{cmd:. mdsmat Morse, shape(llower) s2d(st) names(1 2 3 4 5 6 7 8 9 0)}

{pstd}现代MDS{p_end}

{phang2}
{cmd:. mdsmat Morse, shape(llower) s2d(st) names(1 2 3 4 5 6 7 8 9 0) method(modern)}{p_end}
{pmore}(注意：{cmd:loss(stress)}和{cmd:transform(identity)}假定为默认值){p_end}

{phang2}
{cmd:. mdsmat Morse, shape(llower) s2d(st) names(1 2 3 4 5 6 7 8 9 0) loss(sstress)}{p_end}

{pstd}非度量MDS{p_end}

{phang2}
{cmd:. mdsmat Morse, shape(llower) s2d(st) names(1 2 3 4 5 6 7 8 9 0) loss(stress) transform(monotonic)}


{marker results}{...}
{title:存储结果}

{pstd}{cmd:mdsmat}在{cmd:e()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}行或列的数量（即观测值的数量）{p_end}
{synopt:{cmd:e(p)}}近似配置中的维度数量{p_end}
{synopt:{cmd:e(np)}}严格正特征值的数量{p_end}
{synopt:{cmd:e(addcons)}}为强制正半定而添加到平方不相似性的常数{p_end}
{synopt:{cmd:e(mardia1)}}Mardia测量1{p_end}
{synopt:{cmd:e(mardia2)}}Mardia测量2{p_end}
{synopt:{cmd:e(critval)}}损失标准值{p_end}
{synopt:{cmd:e(wsum)}}权重总和{p_end}
{synopt:{cmd:e(alpha)}}{cmd:transform(power)}的参数{p_end}
{synopt:{cmd:e(ic)}}迭代计数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果已收敛，则为{cmd:1}，否则为{cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mdsmat}{p_end}
{synopt:{cmd:e(cmdline)}}键入的命令{p_end}
{synopt:{cmd:e(method)}}{cmd:classical}或{cmd:modern} MDS方法{p_end}
{synopt:{cmd:e(method2)}}如{cmd:method(nonmetric)}，则为{cmd:nonmetric}{p_end}
{synopt:{cmd:e(loss)}}损失标准{p_end}
{synopt:{cmd:e(losstitle)}}损失标准的描述{p_end}
{synopt:{cmd:e(dmatrix)}}被分析矩阵的名称{p_end}
{synopt:{cmd:e(tfunction)}}{cmd:identity}、{cmd:power}或{cmd:monotonic}，
变换函数{p_end}
{synopt:{cmd:e(transftitle)}}变换的描述{p_end}
{synopt:{cmd:e(dtype)}}{cmd:similarity}或{cmd:dissimilarity};邻近数据的类型{p_end}
{synopt:{cmd:e(s2d)}}{cmd:standard}或{cmd:oneminus}（当{cmd:e(dtype)}为{cmd:similarity}时）{p_end}
{synopt:{cmd:e(unique)}}如果特征值不同，则为{cmd:1}，否则为{cmd:0}{p_end}
{synopt:{cmd:e(init)}}初始化方法{p_end}
{synopt:{cmd:e(irngstate)}}用于{cmd:init(random)}的初始随机数状态{p_end}
{synopt:{cmd:e(rngstate)}}解决方案的随机数状态{p_end}
{synopt:{cmd:e(norm)}}标准化方法{p_end}
{synopt:{cmd:e(targetmatrix)}}用于{cmd:normalize(target)}的目标矩阵的名称{p_end}
{synopt:{cmd:e(properties)}}现代或非度量MDS的{cmd:nob noV}; 经典MDS的{cmd:nob noV eigen}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现{cmd:estat}的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现{cmd:predict}的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}受到{cmd:margins}禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(D)}}不相似矩阵{p_end}
{synopt:{cmd:e(Disparities)}}用于非度量MDS的差异矩阵{p_end}
{synopt:{cmd:e(Y)}}近似配置坐标{p_end}
{synopt:{cmd:e(Ev)}}特征值{p_end}
{synopt:{cmd:e(W)}}权重矩阵{p_end}
{synopt:{cmd:e(norm_stats)}}标准化统计{p_end}
{synopt:{cmd:e(linearf)}}定义线性变换的两个元素向量；距离等于第一个元素加第二个元素乘以不相似性{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker BG2005}{...}
{phang}
Borg, I., 和 P. J. F. Groenen. 2005.
{it:现代多维缩放：理论与应用}. 第二版.
纽约：Springer.

{marker S1969}{...}
{phang}
Sammon, J. W., Jr. 1969.
用于数据结构分析的非线性映射。
{it:IEEE Transactions on Computers} 18: 401-409.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mdsmat.sthlp>}