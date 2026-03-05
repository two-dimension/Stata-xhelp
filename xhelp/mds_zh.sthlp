{smcl}
{* *! version 2.2.9  12dec2018}{...}
{viewerdialog mds "dialog mds"}{...}
{vieweralsosee "[MV] mds" "mansection MV mds"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mds postestimation" "help mds postestimation"}{...}
{vieweralsosee "[MV] mds postestimation plots" "help mds postestimation plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mdslong" "help mdslong_zh"}{...}
{vieweralsosee "[MV] mdsmat" "help mdsmat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] biplot" "help biplot_zh"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{viewerjumpto "Syntax" "mds_zh##syntax"}{...}
{viewerjumpto "Menu" "mds_zh##menu"}{...}
{viewerjumpto "Description" "mds_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mds_zh##linkspdf"}{...}
{viewerjumpto "Options" "mds_zh##options"}{...}
{viewerjumpto "Examples" "mds_zh##examples"}{...}
{viewerjumpto "Stored results" "mds_zh##results"}{...}
{viewerjumpto "Reference" "mds_zh##reference"}
{help mds:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[MV] mds} {hline 2}}用于双向数据的多维标度
{p_end}
{p2col:}({mansection MV mds:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mds} {varlist} {ifin} {cmd:,} {opth id(varname)}
[{it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opth id(varname)}}用于标识观察值的变量{p_end}
{synopt:{opth met:hod(mds##method:方法)}}执行MDS的方法{p_end}
{synopt:{opth loss:(mds##loss:损失)}}损失函数{p_end}
{synopt:{opth trans:form(mds##tfunction:转换函数)}}允许的不相似性转换{p_end}
{synopt:{opth norm:alize(mds##norm:规范化)}}规范化方法；默认是
	{cmd:normalize(principal)}{p_end}
{synopt:{opt dim:ension(#)}}配置维数；默认是
	{cmd:dimension(2)}{p_end}
{synopt:{opt add:constant}}使距离矩阵为正半定{p_end}

{syntab:模型 2}{...}
{synopt:{cmd:unit}[{cmd:(}{it:{help varlist_zh:变量列表2}}{cmd:)}]}将变量缩放到最小=0和最大=1{p_end}
{synopt:{cmd:std}[{cmd:(}{it:{help varlist_zh:变量列表3}}{cmd:)}]}将变量缩放到均值=0和标准差=1{p_end}
{synopt:{opth mea:sure(测量选项:measure)}}相似性或不相似性测量；默认是 {cmd:measure(L2)} (欧几里得){p_end}
{synopt:{cmd:s2d(}{cmdab:st:andard}{cmd:)}}将相似性转换为不相似性：dissim(ij)=sqrt{c -(}sim(ii)+sim(jj)-2sim(ij){c )-}; 默认{p_end}
{synopt:{cmd:s2d(}{cmdab:one:minus}{cmd:)}}将相似性转换为不相似性：dissim(ij)=1-sim(ij){p_end}

{syntab:报告}
{synopt:{opt neig:en(#)}}显示的特征值的最大数量；默认是 {cmd:neigen(10)}{p_end}
{synopt:{opt con:fig}}显示带有配置坐标的表{p_end}
{synopt:{opt nopl:ot}}抑制配置绘图{p_end}

{syntab:最小化}
{synopt:{opth init:ialize(mds##initopt:initopt)}}以{it:initopt}给定的配置开始{p_end}
{synopt:{opt tol:erance(#)}}配置矩阵的容差；默认是 {cmd:tolerance(1e-4)}{p_end}
{synopt:{opt ltol:erance(#)}}损失标准的容差；默认是 {cmd:ltolerance(1e-8)}{p_end}
{synopt:{opt iter:ate(#)}}进行最多{it:#}次迭代；默认是 {cmd:iterate(1000)}{p_end}
{synopt:{opt prot:ect(#)}}执行{it:#}次优化并报告最佳解；默认是 {cmd:protect(1)}{p_end}
{synopt:[{cmd:no}]{cmd:log}}显示或抑制迭代日志；默认是显示{p_end}
{synopt:{opt tr:ace}}在迭代日志中显示当前配置{p_end}
{synopt:{opt grad:ient}}在迭代日志中显示当前梯度矩阵{p_end}

{synopt:{opt sd:protect(#)}}高级选项；详见 {help mds##sdprotect():{it:选项}}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt id(varname)} 是必需的。
{p_end}
{p 4 6 2}
{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling}, {cmd:statsby} 和
{cmd:xi} 是允许的；详见 {help prefix_zh}。
{p_end}
{p 4 6 2}
在 {cmd:mds} 中允许的最大观察值数是最大矩阵大小；见 {manhelp Limits R}。
{p_end}
{p 4 6 2}
{opt sdprotect(#)} 在对话框中未出现。{p_end}
{p 4 6 2}
见 {manhelp mds_postestimation MV:mds postestimation} 以获取估计后可用的特性。{p_end}


INCLUDE help mds_tables


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > 多维标度 (MDS) >}
     {bf:MDS 数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mds} 执行多维标度 (MDS)，用于根据指定变量之间观察值的不相似性进行分析。提供多种相似性和不相似性测量选项。{cmd:mds} 执行经典的度量MDS，以及现代的度量和非度量MDS。

{pstd}
如果您的接近程度以长格式存储为变量，请参见 {manhelp mdslong MV}。对于矩阵中双向接近数据的MDS，请参见 {manhelp mdsmat MV}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV mdsQuickstart:快速开始}

        {mansection MV mdsRemarksandexamples:备注和示例}

        {mansection MV mdsMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opth id(varname)}
是必需的，用于指定识别观察值的变量。
如果 {it:varname} 有重复的值，将显示警告消息。

INCLUDE help mds_mltn_desc

{phang}{opt dimension(#)}
指定所需近似配置的维数。默认{it:#}为2，且不超过观察值的数量；通常，{it:#}应远小于观察值数量。使用 {cmd:method(classical)} 时，不应超过中心距离矩阵的正特征值数量。

{phang}
{cmd:addconstant} 指定如果双重中心距离矩阵不是正半定（psd），则应向平方距离中添加一个常数以使其正半定，从而变为欧几里得。{cmd:addconstant} 仅允许与经典MDS一起使用。

{dlgtab:模型 2}

{phang}{cmd:unit}[{cmd:(}{it:{help varlist_zh:变量列表2}}{cmd:)}]
指定在计算相似性或不相似性之前将变量转换为最小=0和最大=1。仅使用 {cmd:unit} 不带参数是 {cmd:unit(_all)} 的简写。
在 {cmd:unit()} 中的变量不应包含在 {cmd:std()} 中。

{phang}{cmd:std}[{cmd:(}{it:{help varlist_zh:变量列表3}}{cmd:)}]
指定在计算相似性或不相似性之前将变量转换为均值=0和标准差=1。仅使用 {cmd:std} 不带参数是 {cmd:std(_all)} 的简写。
在 {cmd:std()} 中的变量不应包含在 {cmd:unit()} 中。

{marker measure}{...}
{phang}{opt measure(测量)}
指定相似性或不相似性测量。默认是 {cmd:measure(L2)}，欧几里得距离。此选项不区分大小写。有关支持的测量的详细描述，请参见 {manhelpi measure_option MV}。

{pmore}
如果选择了相似性测量，计算的相似性将首先转换为不相似性，然后再进行缩放；请参见下面的 {opt s2d()} 选项。

{pmore}
经典度量MDS与欧几里得距离等同于主成分分析（见 {manhelp pca MV}）；MDS配置坐标是主成分。

{phang}{cmd:s2d(standard}|{cmd:oneminus)}
指定如何将相似性转换为不相似性。
默认情况下，该命令假定输入数据是不相似性数据。
指定 {opt s2d()} 表示输入数据是相似性数据。

{pmore}
不相似性数据应在对角线上为零（即，物体与其自身完全相同），并在非对角处具有非负值。
不相似性不必满足三角不等式，
D(i,j)^2 {ul:<} D(i,h)^2 + D(h,j)^2。相似性数据应在对角线上为一（即，物体与其自身完全相同），并且非对角值在零和一之间。在这两种情况下，接近度应为对称。

{pmore}
可用的 {cmd:s2d()} 选项，{cmd:standard} 和 {cmd:oneminus} 定义如下：

{p2colset 13 25 27 2}{...}
{p2col:{cmd:standard}}dissim(ij) = sqrt{c -(}sim(ii)+sim(jj)-2sim(ij){c )-} = sqrt(2(1-sim(ij))){p_end}
{p2col:{cmd:oneminus}}dissim(ij) = 1-sim(ij){p_end}
{p2colreset}{...}

{pmore}{cmd:s2d(standard)} 是默认值。

{pmore}{cmd:s2d()} 应仅与相似性形式的测量一起使用。

{dlgtab:报告}

{phang}{opt neigen(#)}
指定将包含在表中的特征值的数量。默认是 {cmd:neigen(10)}。指定 {cmd:neigen(0)} 将抑制表的显示。此选项仅允许与经典MDS一起使用。

{phang}{opt config}
显示近似配置的坐标的表。该表也可以使用估计后的命令 {cmd:estat config} 来显示；见 {manhelp mds_postestimation MV:mds postestimation}。

{phang}{opt noplot}
抑制近似配置的图形。图形仍可以通过 {cmd:mdsconfig} 生成，该命令还允许使用标准图形选项对绘图进行微调；见 {manhelp mds_postestimation_plots MV:mds postestimation plots}。

{dlgtab:最小化}

{phang}这些选项仅在使用 {cmd:method(modern)} 或 {cmd:method(nonmetric)} 时可用：

{marker initialize()}{...}
{phang}{opt initialize(initopt)}
指定标准最小化过程的初始值。

{phang2}{cmd:initialize(classical)}, 默认值，
使用经典度量缩放的解决方案作为初始值。
使用 {cmd:protect()} 时，除了第一次运行外，所有后续运行都将根据经典解决方案进行随机扰动。这些随机扰动是独立的，以正态分布生成，标准误差等于 {opt sdprotect(#)} 和不相似性的标准差的乘积。{cmd:initialize(classical)} 是默认值。

{phang2}{cmd:initialize(random)}
从随机起始配置开始优化过程。
这些随机配置是从独立的正态分布生成的，标准误差等于 {opt sdprotect(#)} 和不相似性的标准差的乘积。配置的均值在MDS中是无关的。

{phang2}{cmd:initialize(from(}{it:matname}{cmd:)} [{cmd:, copy}]{cmd:)}
将初始值设置为 {it:matname}。{it:matname} 应为一个
{it:n} x {it:p} 矩阵，其中 {it:n} 是观察值的数量，{it:p}
是维数，且 {it:matname} 的行应根据 {cmd:id()} 排序。
{it:matname} 的行名称应设置正确，但如果指定了 {cmd:copy}，则会被忽略。使用 {cmd:protect()} 时，倒数第二个运行将来自 {it:matname} 的随机扰动。这些随机扰动是独立的正态分布，标准误差等于 {opt sdprotect(#)} 与不相似性的标准差的乘积。

{phang}{opt tolerance(#)}
指定配置矩阵的容差。当从一个迭代到下一个迭代的配置的相对变化小于或等于 {cmd:tolerance()} 时，满足 {cmd:tolerance()} 收敛标准。 默认值为 {cmd:tolerance(1e-4)}。

{phang}{opt ltolerance(#)}
指定适应标准的容差。当从一个迭代到下一个迭代的适应标准的相对变化小于或等于 {cmd:ltolerance()} 时，满足 {cmd:ltolerance()} 收敛性。默认值为 {cmd:ltolerance(1e-8)}。

{pmore}
满足 {cmd:tolerance()} 和 {cmd:ltolerance()} 两个标准方可收敛。

{phang}{opt iterate(#)}
指定最大迭代次数。默认值为 {cmd:iterate(1000)}。

{phang}{opt protect(#)}
请求执行 {it:#} 次优化，并报告最佳解。默认值为 {cmd:protect(1)}。有关运行的初始值的信息，请参见选项 {helpb mds##initialize():initialize()}。输出包含运行、返回代码、迭代和达到的标准值的表。指定较大的数字，例如 {cmd:protect(50)}，可以合理地了解找到的解决方案是否为全局最小值，而不仅仅是局部最小值。

{pmore}
如果还指定了选项 {cmd:log}、{cmd:trace} 或 {cmd:gradient}，将打印每次优化运行的迭代报告。注意：此选项将产生大量输出。

{phang}
INCLUDE help lognolog

{phang}{opt trace}
在迭代报告中显示配置矩阵。
注意：此选项可能会产生大量输出。

{phang}{opt gradient}
在迭代报告中显示适应标准的梯度矩阵。
注意：此选项可能会产生大量输出。
{p_end}

{pstd}以下选项可用于 {cmd:mds}，但在对话框中未显示：

{marker sdprotect()}{...}
{phang}{opt sdprotect(#)}
为随机配置（{cmd:init(random)}）或给定起始配置的随机扰动（{cmd:init(classical)} 或 {cmd:init(from())}）设置一个比例常数。默认值为 {cmd:sdprotect(1)}。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}

{phang2}{cmd:. sysuse auto}{p_end}
   
{pstd}经典MDS{p_end}

{phang2}
{cmd:. mds price-gear, id(make)}{p_end}
{phang2}
{cmd:. mds price-gear, id(make) dim(3) std noplot}{p_end}
{phang2}
{cmd:. mds price-gear, id(make) std measure(corr) addconstant}{p_end}

{pstd}度量MDS{p_end}

{phang2}
{cmd:. mds price-gear, id(make) loss(strain) transform(identity)}{p_end}
{pmore}(这等同于经典MDS){p_end}

{phang2}
{cmd:. mds price-gear, id(make) method(modern)}{p_end}
{pmore}(注意：假设使用 {cmd:loss(stress)} 和 {cmd:transform(identity)} ){p_end}

{phang2}
{cmd:. mds price-gear, id(make) std loss(stress) transform(power)}{p_end}
{phang2}
{cmd:. mds price-gear, id(make) std loss(sstress) transform(id)}{p_end}
{phang2}
{cmd:. mds price-gear, id(make) method(modern) meas(corr) std}{p_end}

{pstd}非度量MDS{p_end}

{phang2}
{cmd:. mds price-gear, id(make) method(nonmetric) std}{p_end}
{pmore}(注意：假设使用 {cmd:loss(stress)} 和 {cmd:transform(monotonic)} ){p_end}

{phang2}
{cmd:. mds price-gear, id(make) unit loss(stress) transform(monotonic)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd} {cmd:mds} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(p)}}近似配置中的维数{p_end}
{synopt:{cmd:e(np)}}严格正特征值的数量{p_end}
{synopt:{cmd:e(addcons)}}为强迫正半定而添加到平方不相似性的常数{p_end}
{synopt:{cmd:e(mardia1)}}Mardia测量1{p_end}
{synopt:{cmd:e(mardia2)}}Mardia测量2{p_end}
{synopt:{cmd:e(critval)}}损失标准值{p_end}
{synopt:{cmd:e(alpha)}}{cmd:transform(power)} 的参数{p_end}
{synopt:{cmd:e(ic)}}迭代计数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为{cmd:1}，否则为{cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mds}{p_end}
{synopt:{cmd:e(cmdline)}}已输入的命令{p_end}
{synopt:{cmd:e(method)}}{cmd:classical} 或 {cmd:modern} MDS 方法{p_end}
{synopt:{cmd:e(method2)}}{cmd:nonmetric}，如果 {cmd:method(nonmetric)}{p_end}
{synopt:{cmd:e(loss)}}损失标准{p_end}
{synopt:{cmd:e(losstitle)}}损失标准的描述{p_end}
{synopt:{cmd:e(tfunction)}}{cmd:identity}、{cmd:power} 或 {cmd:monotonic}，
转换函数{p_end}
{synopt:{cmd:e(transftitle)}}转换的描述{p_end}
{synopt:{cmd:e(id)}}ID变量名称 ({cmd:mds}){p_end}
{synopt:{cmd:e(idtype)}}{cmd:int} 或 {cmd:str}； {cmd:id()} 变量的类型{p_end}
{synopt:{cmd:e(duplicates)}}如果 {cmd:id()} 中有重复，则为 {cmd:1}，
否则为 {cmd:0}{p_end}
{synopt:{cmd:e(labels)}}ID类别的标签{p_end}
{synopt:{cmd:e(strfmt)}}类别标签的格式{p_end}
{synopt:{cmd:e(varlist)}}用于计算相似性或
不相似性的变量{p_end}
{synopt:{cmd:e(dname)}}相似性或不相似性测量名称{p_end}
{synopt:{cmd:e(dtype)}}{cmd:similarity} 或 {cmd:dissimilarity}{p_end}
{synopt:{cmd:e(s2d)}}{cmd:standard} 或 {cmd:oneminus}（当 {cmd:e(dtype)}
为 {cmd:similarity} 时）{p_end}
{synopt:{cmd:e(unique)}}如果特征值不同，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(init)}}初始化方法{p_end}
{synopt:{cmd:e(irngstate)}}用于 {cmd:init(random)} 的初始随机数状态{p_end}
{synopt:{cmd:e(rngstate)}}解决方案的随机数状态{p_end}
{synopt:{cmd:e(norm)}}规范化方法{p_end}
{synopt:{cmd:e(targetmatrix)}}用于{cmd:normalize(target)}的目标矩阵名称{p_end}
{synopt:{cmd:e(properties)}}现代或非度量MDS的 {cmd:nob noV}；经典MDS的 {cmd:nob noV eigen} {p_end}
{synopt:{cmd:e(estat_cmd)}}实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(D)}}不相似性矩阵{p_end}
{synopt:{cmd:e(Disparities)}}非度量MDS的差异矩阵{p_end}
{synopt:{cmd:e(Y)}}近似配置坐标{p_end}
{synopt:{cmd:e(Ev)}}特征值{p_end}
{synopt:{cmd:e(idcoding)}}整数标识符变量的编码{p_end}
{synopt:{cmd:e(coding)}}变量标准化值；第一列具有
要减去的值，第二列具有除数{p_end}
{synopt:{cmd:e(norm_stats)}}规范化统计{p_end}
{synopt:{cmd:e(linearf)}}定义线性变换的两个元素向量；距离等于第一个元素加上第二个元素乘以不相似性{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{phang}
Sammon, J. W., Jr. 1969.
用于数据结构分析的非线性映射。
{it:IEEE Transactions on Computers} 18: 401-409.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mds.sthlp>}