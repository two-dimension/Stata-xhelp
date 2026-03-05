{smcl}
{* *! version 2.2.6  12dec2018}{...}
{viewerdialog mdslong "dialog mdslong"}{...}
{vieweralsosee "[MV] mdslong" "mansection MV mdslong"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mds postestimation" "help mds_postestimation_zh"}{...}
{vieweralsosee "[MV] mds postestimation plots" "help mds postestimation plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mds" "help mds_zh"}{...}
{vieweralsosee "[MV] mdsmat" "help mdsmat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] biplot" "help biplot_zh"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{viewerjumpto "语法" "mdslong_zh##syntax"}{...}
{viewerjumpto "菜单" "mdslong_zh##menu"}{...}
{viewerjumpto "描述" "mdslong_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mdslong_zh##linkspdf"}{...}
{viewerjumpto "选项" "mdslong_zh##options"}{...}
{viewerjumpto "示例" "mdslong_zh##example"}{...}
{viewerjumpto "存储结果" "mdslong_zh##results"}{...}
{viewerjumpto "参考文献" "mdslong_zh##reference"}
{help mdslong:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[MV] mdslong} {hline 2}}长格式的接近数据的多维尺度分析
{p_end}
{p2col:}({mansection MV mdslong:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmd:mdslong} {depvar} {ifin}
[{it:{help mdslong##weight:权重}}]{cmd:,}
{opt id(var1 var2)} [{it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opt id(var1 var2)}}识别比较对
	(对象1,对象2){p_end}
{synopt:{opth met:hod(mdslong##method:方法)}}执行MDS的方法{p_end}
{synopt:{opth loss:(mdslong##loss:损失函数)}}损失函数{p_end}
{synopt:{opth trans:form(mdslong##tfunction:变换函数)}}允许的非相似度变换{p_end}
{synopt:{opth norm:alize(mdslong##norm:归一化)}}归一化方法；默认是
	{cmd:normalize(principal)}{p_end}
{synopt:{cmd:s2d(}{cmdab:st:andard}{cmd:)}}将相似性转化为
	非相似性：dissim(ij) = sqrt{c -(}sim(ii)+sim(jj)-2sim(ij){c )-}; 默认设置{p_end}
{synopt:{cmd:s2d(}{cmdab:one:minus}{cmd:)}}将相似性转化为
	非相似性：dissim(ij) = 1-sim(ij){p_end}
{synopt:{opt force}}纠正接近信息中的问题{p_end}
{synopt:{opt dim:ension(#)}}配置维度；默认是
	{cmd:dimension(2)}{p_end}
{synopt:{opt add:constant}}使距离矩阵为正半定
	（仅限经典MDS）{p_end}

{syntab:报告}
{p2col:{opt neig:en(#)}}最大显示特征值的数量；默认是
	{cmd:neigen(10)}（仅限经典MDS）{p_end}
{p2col:{opt con:fig}}显示配置坐标表{p_end}
{p2col:{opt nopl:ot}}抑制配置图{p_end}

{syntab:最小化}
{synopt:{opth init:ialize(mdslong##initopt:initopt)}}从给定的配置开始
{it:initopt}{p_end}
{synopt:{opt tol:erance(#)}}配置矩阵的容忍度；
默认是 {cmd:tolerance(1e-4)}{p_end}
{synopt:{opt ltol:erance(#)}}损失标准的容忍度；默认是
{cmd:ltolerance(1e-8)}{p_end}
{synopt:{opt iter:ate(#)}}执行最多{it:#}次迭代；
默认是 {cmd:iterate(1000)}{p_end}
{synopt:{opt prot:ect(#)}}执行{it:#}次优化并报告最佳
	解；默认是 {cmd:protect(1)}{p_end}
{synopt:[{cmd:no}]{cmd:log}}显示或抑制迭代日志；默认是
显示{p_end}
{synopt:{opt tr:ace}}在迭代日志中显示当前配置{p_end}
{synopt:{opt grad:ient}}在迭代日志中显示当前梯度矩阵{p_end}

{synopt:{opt sd:protect(#)}}高级选项；请参阅 {help mdslong##sdprotect():{it:选项}}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt id(var1 var2)} 是必需的。
{p_end}
{p 4 6 2}
{cmd:by} 和 {cmd:statsby} 是允许的；请参见 {help prefix_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s 和 {cmd:fweight}s 适用于 {cmd:modern}
和 {cmd:nonmetric} 方法；请参见 {help weights}。
{p_end}
{p 4 6 2}
允许的最大比较对象数量为最大矩阵大小；
请参见 {manhelp Limits R}。
{p_end}
{p 4 6 2}
{opt sdprotect(#)} 在对话框中不显示。{p_end}
{p 4 6 2}
请参见 {manhelp mds_postestimation MV:mds postestimation} 获取估计后可用的功能。{p_end}


INCLUDE help mds_tables


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > 多维尺度分析 (MDS) >}
     {bf:接近对数据的MDS}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mdslong} 对具有明确相似性或
非相似性测量的双向接近数据进行多维尺度分析（MDS），并且使用长格式的数据。{cmd:mdslong} 同时执行经典MDS
以及现代的度量MDS和非度量MDS。

{pstd}
有关双向接近数据的MDS矩阵，请参见
{manhelp mdsmat MV}。如果您正在寻找基于
观测变量之间非相似度的MDS数据集，请参见
{manhelp mds MV}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV mdslongQuickstart:快速开始}

        {mansection MV mdslongRemarksandexamples:备注和示例}

        {mansection MV mdslongMethodsandformulas:方法与公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt id(var1 var2)}
是必需的。变量对 {it:var1} 和 {it:var2} 应唯一标识比较。 {it:var1} 和 {it:var2} 是字符串或数值变量
，用于标识要比较的对象。 {it:var1} 和 {it:var2} 应具有相同的数据类型；如果它们是值标签，则应标记为相同的值标签。使用值标记的变量或字符串变量通常有助于在图形和表格中识别点。

{tab} {cmd:mdslong proxim, id(i1 i2)} 的示例数据布局。

{space 19}{cmd:proxim    i1    i2}
{space 19}{hline 18}
{space 16}        7     1     2
{space 16}       10     1     3
{space 16}       12     1     4
{space 16}        4     2     3
{space 16}        6     2     4
{space 16}        3     3     4
{space 19}{hline 18}

{pmore}
如果您每对有多个测量，建议将测量的均值指定为接近值，将方差的倒数指定为权重。

INCLUDE help mds_mltn_desc

{phang}{cmd:s2d(标准}|{cmd:一减)}
指定如何将相似性转换为非相似性。
默认情况下，命令假定非相似度数据。
指定 {opt s2d()} 表示您的接近数据为相似性。

{pmore}
非相似度数据应在对角线处为零（即，一个对象与自身相同），并且非对角线值应为非负值。
非相似度无需满足三角不等式，
D(i,j)^2 {ul:<} D(i,h)^2 + D(h,j)^2。相似性数据应在对角线处为1（即，一个对象与自身相同），并且非对角线值应介于零和一之间。在这两种情况下，接近值应是对称的。
如果您的数据违反这些假设，请参见选项 {helpb mdsmat##force:force}。

{pmore}
可用的 {cmd:s2d()} 选项 {cmd:标准} 和 {cmd:一减} 定义如下：

{p2colset 13 25 27 2}{...}
{p2col:{cmd:标准}}dissim(ij) = sqrt{c -(}sim(ii)+sim(jj)-2sim(ij){c )-} = sqrt(2(1-sim(ij))){p_end}
{p2col:{cmd:一减}}dissim(ij) = 1-sim(ij){p_end}
{p2colreset}{...}

{pmore}{cmd:s2d(标准)} 是默认设置。

{pmore}{cmd:s2d()} 应仅与相似性形式的测量一起指定。

{marker force}{...}
{phang}
{opt force} 纠正提供的接近信息中的问题。
在 {cmd:mdslong} 使用的长格式中，可能会有对 (i,j) 的多个测量。
同时包括 (i,j) 和 (j,i) 将被视为多个测量。这是个错误，即使测量相同。选项 {cmd:force} 使用测量的均值。 {cmd:force} 还解决了对角线的问题，即，比较对象与自身的情况；
这些应具有零非相似度或单位相似度。 {cmd:force} 不解决不完整数据，即，(i,j) 的对没有可用测量。超出范围的值也不会被修复。

{phang}{opt dimension(#)}
指定逼近配置的维度。默认是 {cmd:dimension(2)}，且 {it:#} 不应超过中心距离矩阵的正特征值数量。

{phang}{cmd:addconstant}
指定如果双重中心化距离矩阵不是正半定的（psd），应向平方距离添加常数以使其变为psd，从而使其易于欧几里得。这一选项仅限经典MDS。

{dlgtab:报告}

{phang}{opt neigen(#)}
指定要包含在表中的特征值的数量。默认是 {cmd:neigen(10)}。指定 {cmd:neigen(0)} 抑制此表。该选项仅限经典MDS。

{phang}{opt config}
显示逼近配置坐标的表。这张表可以通过估计后命令 {cmd:estat config} 显示；请参见 {manhelp mds_postestimation MV:mds postestimation}。

{phang}{opt noplot}
抑制逼近配置的图形。图形仍然可以通过 {cmd:mdsconfig} 后续生成，该命令也允许使用标准图形选项来微调图形；请参见
{manhelp mds_postestimation_plots MV:mds postestimation plots}。

{dlgtab:最小化}

{phang}这些选项仅在 {cmd:method(modern)} 或
{cmd:method(nonmetric)} 时可用：

{marker initialize()}{...}
{phang}{opt initialize(initopt)}
指定标准最小化过程的初始值。

{phang2}{cmd:initialize(classical)}, 默认设置，
使用经典度量缩放的解决方案作为初始值。
使用 {cmd:protect()} 时，所有除了初始运行以外的运行都从经典解决方案的随机扰动开始。这些随机扰动是独立的，且遵循正态分布，其标准误差等于 {opt sdprotect(#)} 和非相似度的标准偏差的乘积。 {cmd:initialize(classical)} 是默认值。

{phang2}{cmd:initialize(random)}
从随机起始配置开始优化过程。
这些随机配置是根据独立的正态分布生成的，标准误差等于 {opt sdprotect(#)} 和非相似度的标准偏差的乘积。
配置的均值在MDS中无关紧要。

{phang2}{cmd:initialize(from(}{it:matname}{cmd:)}[{cmd:, copy}]{cmd:)}
将初始值设置为 {it:matname}。 {it:matname} 应为一个
{it:n} x {it:p} 矩阵，其中 {it:n} 是观测数量且 {it:p}
是维度数量，并且 {it:matname} 的行
应按照 {cmd:id()} 的顺序排列。
{it:matname} 的行名称应正确设置，但如果指定了 {cmd:copy}，则将被忽略。使用 {cmd:protect()} 时，倒数第二个运行从 {it:matname} 的随机扰动开始。这些随机扰动是独立的，遵循正态分布，其标准误差等于 {opt sdprotect(#)} 和非相似度的标准偏差的乘积。

{phang}{opt tolerance(#)}
指定配置矩阵的容忍度。当从一次迭代到下一次迭代的配置的相对变化小于或等于
{cmd:tolerance()} 时，满足 {cmd:tolerance()} 的收敛标准。
默认是 {cmd:tolerance(1e-4)}。

{phang}{opt ltolerance(#)}
指定拟合标准的容忍度。当从一次迭代到下一次迭代的拟合标准的相对变化小于或
等于 {cmd:ltolerance()} 时，满足 {cmd:ltolerance()} 的收敛标准。
默认是 {cmd:ltolerance(1e-8)}。

{pmore}
必须同时满足 {cmd:tolerance()} 和 {cmd:ltolerance()} 标准才能收敛。

{phang}{opt iterate(#)}
指定最大迭代次数。默认是 {cmd:iterate(1000)}。

{phang}{opt protect(#)}
请求执行 {it:#} 次优化，并报告最佳的解。默认是 {cmd:protect(1)}。请参见选项
{helpb mdslong##initialize():initialize()} 关于运行的起始值。输出包含返回码、达到的标准值和用于生成起始值的随机数的种子表。指定一个大数字，如 {cmd:protect(50)}，可以合理判断找到的解是否为全局最小值，而不仅仅是局部最小值。

{pmore}
如果还指定了 {cmd:log}、{cmd:trace} 或 {cmd:gradient}
中的任何一个选项，则会为每次优化运行打印迭代报告。请小心：该选项将产生大量输出。

{phang}
INCLUDE help lognolog

{phang}{opt trace}
在迭代报告中显示配置矩阵。
请小心：该选项可能会产生大量输出。

{phang}{opt gradient}
在迭代报告中显示拟合标准的梯度矩阵。
请小心：该选项可能会产生大量输出。
{p_end}

{pstd}以下选项在 {cmd:mdslong} 中可用，但在对话框中未显示：

{marker sdprotect()}{...}
{phang}{opt sdprotect(#)}
为随机配置的标准偏差（{cmd:init(random)}）或给定
起始配置的随机扰动（{cmd:init(classical)} 或 {cmd:init(from())}）
设置比例常数。默认是 {cmd:sdprotect(1)}。


{marker example}{...}
{title:示例}

{pstd}
MDS文献中的一个著名示例是关于598名受试者在将一对摩尔斯电码信号为两个数字（1,..,9,0）判断为相同的百分比的数据。我们使用长格式的摩尔斯数据。
条目顺序为1,2,...,9,0。

{phang2}{cmd:. webuse morse_long}{p_end}

{pstd:}接近(2,1)被录入，但(1,2)没有录入。
可以录入任意一个，顺序无所谓。相同对象之间的接近度，例如(2,2)不应录入。首先我们生成对象之间的相似性度量。

{phang2}
{cmd}. gen sim = freqsame/100{txt}{p_end}

{pstd}{txt}经典MDS{p_end}

{phang2}
{cmd}. mdslong sim, id(digit1 digit2) s2d(标准){txt}{p_end}

{pstd}{txt}现代MDS{p_end}

{phang2}
{cmd}. mdslong sim, id(digit1 digit2) method(现代){p_end}
{pmore}{txt}(注意：{cmd:loss(stress)} 和 {cmd:transform(identity)} 被假定){p_end}

{pstd}非度量MDS{p_end}

{phang2}
{cmd}. mdslong sim, id(digit1 digit2) method(非度量){p_end}
{pmore}{txt}(注意：{cmd:loss(stress)} 和 {cmd:transform(monotonic)} 被假定){p_end}


{marker results}{...}
{title:存储结果}

{pstd} {cmd:mdslong} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}基础观测数量{p_end}
{synopt:{cmd:e(p)}}逼近配置中的维度数量{p_end}
{synopt:{cmd:e(np)}}严格的正特征值数量{p_end}
{synopt:{cmd:e(addcons)}}为迫使正半定性而添加到平方非相似度的常数{p_end}
{synopt:{cmd:e(mardia1)}}马尔迪亚测量1{p_end}
{synopt:{cmd:e(mardia2)}}马尔迪亚测量2{p_end}
{synopt:{cmd:e(critval)}}损失标准值{p_end}
{synopt:{cmd:e(npos)}}具有正权重的对的数量{p_end}
{synopt:{cmd:e(wsum)}}权重的总和{p_end}
{synopt:{cmd:e(alpha)}}{cmd:transform(power)}的参数{p_end}
{synopt:{cmd:e(ic)}}迭代计数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛， {cmd:0} 表示未收敛{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mdslong}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(method)}}{cmd:classical} 或 {cmd:modern} MDS 方法{p_end}
{synopt:{cmd:e(method2)}}{cmd:nonmetric}，如果 {cmd:method(nonmetric)}{p_end}
{synopt:{cmd:e(loss)}}损失标准{p_end}
{synopt:{cmd:e(losstitle)}}损失标准的描述{p_end}
{synopt:{cmd:e(tfunction)}}{cmd:identity}、{cmd:power} 或 {cmd:monotonic}，
变换函数{p_end}
{synopt:{cmd:e(transftitle)}}变换描述{p_end}
{synopt:{cmd:e(id)}}两个ID变量名称，用于标识被比较对象对{p_end}
{synopt:{cmd:e(idtype)}}{cmd:int} 或 {cmd:str}；{cmd:id()} 变量的类型{p_end}
{synopt:{cmd:e(duplicates)}}{cmd:1} 表示{id()}中有重复，
{cmd:0} 否则{p_end}
{synopt:{cmd:e(labels)}}ID类别的标签{p_end}
{synopt:{cmd:e(mxlen)}}类别标签的最大长度{p_end}
{synopt:{cmd:e(depvar)}}包含非相似度的因变量{p_end}
{synopt:{cmd:e(dtype)}}{cmd:similarity} 或 {cmd:dissimilarity}; 接近数据的类型{p_end}
{synopt:{cmd:e(s2d)}}{cmd:standard} 或 {cmd:oneminus}（当 {cmd:e(dtype)} 是 {cmd:similarity} 时）{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(unique)}}{cmd:1} 表示特征值是不同的， {cmd:0}否则{p_end}
{synopt:{cmd:e(init)}}初始化方法{p_end}
{synopt:{cmd:e(irngstate)}}用于 {cmd:init(random)} 的初始随机数状态{p_end}
{synopt:{cmd:e(rngstate)}}解决方案的随机数状态{p_end}
{synopt:{cmd:e(norm)}}归一化方法{p_end}
{synopt:{cmd:e(targetmatrix)}}用于 {cmd:normalize(target)} 的目标矩阵名称{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV} 对于现代或非度量MDS; {cmd:nob noV eigen} 对于经典MDS{p_end}
{synopt:{cmd:e(estat_cmd)}}实施 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}实施 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(D)}}非相似度矩阵{p_end}
{synopt:{cmd:e(Disparities)}}非度量MDS的差异矩阵{p_end}
{synopt:{cmd:e(Y)}}逼近配置坐标{p_end}
{synopt:{cmd:e(Ev)}}特征值{p_end}
{synopt:{cmd:e(W)}}权重矩阵{p_end}
{synopt:{cmd:e(idcoding)}}整型标识变量的编码{p_end}
{synopt:{cmd:e(norm_stats)}}归一化统计{p_end}
{synopt:{cmd:e(linearf)}}定义线性变换的两个元素向量；距离等于第一个元素加上第二个元素乘以非相似度{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker S1969}{...}
{phang}
Sammon, J. W., Jr. 1969.
用于数据结构分析的非线性映射。
{it:IEEE Transactions on Computers} 18: 401-409.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mdslong.sthlp>}