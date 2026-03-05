{smcl}
{* *! version 1.1.19  15may2018}{...}
{viewerdialog mca "dialog mca"}{...}
{vieweralsosee "[MV] mca" "mansection MV mca"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mca 后期估计" "help mca postestimation"}{...}
{vieweralsosee "[MV] mca 后期估计图" "help mca postestimation plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] canon" "help canon_zh"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{viewerjumpto "语法" "mca_zh##syntax"}{...}
{viewerjumpto "菜单" "mca_zh##menu"}{...}
{viewerjumpto "描述" "mca_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mca_zh##linkspdf"}{...}
{viewerjumpto "选项" "mca_zh##options"}{...}
{viewerjumpto "示例" "mca_zh##examples"}{...}
{viewerjumpto "存储结果" "mca_zh##results"}{...}
{viewerjumpto "参考文献" "mca_zh##references"}
{help mca:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[MV] mca} {hline 2}}多重和联合对应分析
{p_end}
{p2col:}({mansection MV mca:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
两个或多个分类变量的基本语法

{p 8 12 2}
{cmd:mca} {varlist} {ifin}
[{it:{help mca##weight:权重}}]
[{cmd:,} {it:选项}]


{pstd}
适用于两个或多个分类变量或交叉（堆叠）分类变量的完整语法

{p 8 16 2}
{cmd:mca} {it:speclist} {ifin}
[{it:{help mca##weight:权重}}]
[{cmd:,} {it:选项}]


{marker speclist}{...}
    其中

{p 12 16 2}
{it:speclist} = {it:spec} [{it:spec} ...]

{p 12 16 2}
{it:spec} = {varlist} | {cmd:(}{newvar} {cmd::} {varlist}{cmd:)}

{synoptset 25 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt sup:plementary(speclist)}}补充（被动）变量{p_end}
{synopt:{cmdab:meth:od(}{cmdab:b:urt)}}使用 Burt 矩阵方法
进行 MCA；默认{p_end}
{synopt:{cmdab:meth:od(}{cmdab:i:ndicator)}}使用指标矩阵
方法进行 MCA{p_end}
{synopt:{cmdab:meth:od(}{cmdab:j:oint)}}执行联合对应分析
（JCA）{p_end}
{synopt:{opt dim:ensions(#)}}维数（因子，轴）的数量；
默认是 {cmd:dim(2)}{p_end}
{synopt:{cmdab:norm:alize(}{cmdab:st:andard)}}显示标准坐标；
默认{p_end}
{synopt:{cmdab:norm:alize(}{cmdab:pr:incipal)}}显示主坐标{p_end}
{synopt:{opt iter:ate(#)}}最大{cmd:method(joint)}迭代次数；
默认是 {cmd:iterate(250)}{p_end}
{synopt:{opt tol:erance(#)}}用于{cmd:method(joint)}收敛标准的容忍度；
默认是 {cmd:tolerance(1e-5)}{p_end}
{synopt:{opt miss:ing}}将缺失值视为普通值{p_end}
{synopt:{opt noadj:ust}}抑制特征值的调整
（仅 {cmd:method(burt)}）{p_end}

{syntab:编码}
{synopt:{cmdab:rep:ort(}{cmdab:v:ariables)}}报告交叉变量的编码{p_end}
{synopt:{cmdab:rep:ort(}{cmdab:c:rossed)}}报告交叉变量的编码{p_end}
{synopt:{cmdab:rep:ort(}{cmdab:a:ll)}}报告交叉和交叉变量的编码{p_end}
{synopt:{cmdab:len:gth(}{cmdab:m:in)}}使用最小长度唯一的代码来表示交叉变量{p_end}
{synopt:{opt len:gth(#)}}将 {it:#} 用作交叉变量的编码长度{p_end}

{syntab:报告}
{synopt:{opt ddim:ensions(#)}}显示 {it:#} 个奇异值；
默认是 {cmd:ddim(.)}（所有）{p_end}
{synopt:{opth poi:nts(varlist)}}显示列出变量的表格；
默认是所有变量{p_end}
{synopt:{opt comp:act}}以紧凑格式显示统计表{p_end}
{synopt:{opt log}}显示迭代日志（仅 {cmd:method(joint)}）{p_end}
{synopt:{opt plo:t}}绘制坐标（也就是说，{helpb mcaplot}）{p_end}
{synopt:{opt max:length(#)}}图表标签的最大字符数；
默认是 {cmd:maxlength(12)}{p_end}
{synoptline}
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:rolling} 和 {cmd:statsby}
可与 {cmd:mca} 一起使用；见 {help prefix_zh}。 但是，{cmd:bootstrap} 和
{cmd:jackknife} 的结果应谨慎解释；识别
{cmd:mca} 参数涉及数据依赖性限制，可能导致严重偏倚和过度离散的估计
（{help mca##MW1995:Milan 和 Whittaker 1995}）。
{p_end}
{p 4 6 2}
不允许使用 {help bootstrap_zh} 前缀的权重。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}；见 {help weight_zh}。
{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp mca_postestimation MV:mca postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > 对应分析 >}
      {bf:多重对应分析 (MCA)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mca} 对一系列分类变量执行多重对应分析（MCA）或联合
对应分析（JCA）。 MCA 和
JCA 是对应分析（CA）的两种推广形式，
处理两个变量的交叉表（见 {manhelp ca MV}）到
多个变量的交叉表。

{pstd}
{cmd:mca} 对两个或多个整数值变量进行分析。
也允许对整数值变量进行交叉（也称为堆叠）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV mca快速入门:快速开始}

        {mansection MV mca备注和示例:备注和示例}

        {mansection MV mca方法和公式:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt supplementary(speclist)}
指定 {it:speclist} 为补充变量。这类变量不影响 MCA 解，但其分类会映射到解空间中。对于 {cmd:method(indicator)}，此映射使用 {help mca##G2006:Greenacre (2006)} 所述的第一个方法。
对于 {cmd:method(burt)} 和 {cmd:method(joint)}，
使用 {help mca##G2006:Greenacre (2006)} 中描述的第二种推荐方法，
其中补充列主坐标作为标准行坐标的加权平均，按补充配置加权。
有关 {it:speclist} 的语法，请参见 {it:{help mca##speclist:语法图}}。

{phang}{opt method(method)}
指定 MCA/JCA 的方法。

{phang2}{cmd:method(burt)},
默认情况下，指定 MCA，类似于主成分分析的分类
变量（见 {manhelp pca MV}）。
Burt 方法对 Burt 矩阵进行 CA，Burt 矩阵是所有变量对的二维交叉表的矩阵。

{phang2}{cmd:method(indicator)}
通过对所形成的指标矩阵进行 CA 来指定 MCA。

{phang2}{cmd:method(joint)}
指定 JCA，类似于因子分析的分类变量（见 {manhelp factor MV}）。此方法分析 Burt 矩阵的变种，其中对角块根据 MCA 的较差对角拟合进行迭代调整。

{phang}{opt dimensions(#)}
指定提取的维数（=因子=轴）的数量。默认是 {cmd:dimensions(2)}。如果您指定 {cmd:dimensions(1)}，则类别被放置在一个维度上。维数不得大于活跃变量（常规和交叉）的类别数量减去活跃变量的数量，并且也可以少于此数量。这不包括补充变量。指定大于可用维度的数量将导致提取所有维度。

{pmore}
MCA 是一种分层方法，因此提取更多维度不会影响
已包含的维度的坐标和惯性分解的分布。维度所占的惯性百分比按照奇异值递减顺序排列。第一个维度占据最多氛围，其次是第二个维度，然后是第三个维度，等等。

{phang}{opt normalize(normalization)} 指定归一化方法，即
如何从标准化残差矩阵的奇异向量和奇异值获得行列坐标。

{phang2}{cmd:normalize(standard)}
指定以标准归一化返回坐标（奇异值除以质量的平方根）。这是默认值。

{phang2}{cmd:normalize(principal)}
指定以主归一化返回坐标。主坐标是标准坐标乘以相应的主惯性的平方根。

{phang}{opt iterate(#)}
是技术性和少用的选项，指定最大迭代次数。{cmd:iterate()} 仅与 {cmd:method(joint)} 一起使用。默认是 {cmd:iterate(250)}。

{phang}{opt tolerance(#)}
是技术性和少用的选项，指定对 Burt 矩阵的对角块的后续修改的容忍度。{cmd:tolerance()} 仅与 {cmd:method(joint)} 一起使用。默认是 {cmd:tolerance(1e-5)}。

{phang}{opt missing}
将缺失值视为包含在分析中的普通值。默认情况下，具有缺失值的观察值将从分析中省略。

{phang}{opt noadjust} 抑制主惯性调整，仅与 {cmd:method(burt)} 一起使用。默认情况下，主惯性（Burt 矩阵的特征值）进行调整。未经修改的主惯性呈现出一种悲观的拟合度量，因为 MCA 对 P 的对角线拟合较差（见 {help mca##G1984:Greenacre [1984]}）。

{dlgtab:编码}

{phang}{opt report(opt)} 显示交叉变量、交叉变量或两者的编码信息。如果您没有指定至少一个交叉变量，则 {cmd:report()} 会被忽略。

{phang2}
{cmd:report(variables)} 显示交叉变量的编码方案，即用于定义交叉变量的变量。

{phang2}
{cmd:report(crossed)} 显示一张表，解释交叉变量的值标签。

{phang2}
{cmd:report(all)} 显示交叉和交叉变量的编码。

{phang}{opt length(opt)}
指定交叉变量的编码长度。

{phang2}{cmd:length(min)}
指定使用交叉变量的最小长度唯一代码。

{phang2}{opt length(#)}
指定使用交叉变量的编码长度 {it:#}，其中 {it:#} 必须在 4 到 32 之间。

{dlgtab:报告}

{phang}{opt ddimensions(#)}
指定要显示的奇异值的数量。如果 {cmd:ddimensions()} 大于奇异值的数量，则将显示所有奇异值。默认是 {cmd:ddimensions(.)}，表示所有奇异值。

{phang}{opth points(varlist)}
指示要包括在表中的变量。默认情况下，会为所有变量显示表格。常规分类变量、交叉变量和补充变量可以在 {opt points()} 中指定。

{phang}{opt compact}
指定点统计表显示乘以 1,000，以便在不换行输出的情况下显示更多列。紧凑表格可以在行大小为 79 的两维模型和行大小为 99 的三维模型中显示而无换行。

{phang}{opt log}
显示迭代日志。此选项仅允许与 {cmd:method(joint)} 一起使用。

{phang}{opt plot}
显示行和列坐标的二维图。直接使用 {cmd:mcaplot} 选择不同的绘图点或进行其他图形细化；见
{manhelp mca_postestimation_plots MV:mca postestimation plots}。

{phang}{opt maxlength(#)}
指定图中标签的最大字符数。
默认是 {cmd:maxlength(12)}。 {it:#} 必须小于 32。

{pstd}
注意：报告选项可以在估算期间或重播期间指定。


{marker examples}{...}
{title:示例}

{pstd}
默认情况下，MCA 分析数据的 Burt 矩阵的交叉表并对主惯性进行调整。

{phang2}{cmd:. webuse issp93a}{p_end}
{phang2}{cmd:. mca A B C D}{p_end}

{pstd}
其他方法可与 {cmd:mca} 一起使用。 {cmd:method(indicator)}
等同于分析数据的指标矩阵。 我们提取三个维度并以紧凑形式显示输出。

{phang2}{cmd:. mca A B C D, method(indicator) dim(3) compact}{p_end}

{pstd}{cmd:method(joint)} 执行联合对应分析。
这里添加了一个交叉补充变量 {cmd:demo}，包含性别和教育的统计信息。补充变量不影响估算结果。

{phang2}{cmd:. mca A B C D, method(joint) supp((demo: sex edu))}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mca} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(f)}}维度数量{p_end}
{synopt:{cmd:e(inertia)}}总惯性{p_end}
{synopt:{cmd:e(ev_unique)}}{cmd:1} 如果所有特征值均不同，则为 {cmd:0}
	否则{p_end}
{synopt:{cmd:e(adjust)}}{cmd:1} 如果特征值已调整，则为 {cmd:0}
	否则（仅 {cmd:method(burt)}）{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果成功收敛，则为 {cmd:0} 其他
	（仅 {cmd:method(joint)}）{p_end}
{synopt:{cmd:e(iter)}}迭代次数（仅 {cmd:method(joint)}）{p_end}
{synopt:{cmd:e(inertia_od)}}提取的维度解释的非对角惯性比例（仅 {cmd:method(joint)}）{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mca}{p_end}
{synopt:{cmd:e(cmdline)}}按键入的命令{p_end}
{synopt:{cmd:e(names)}}MCA 变量的名称（交叉或实际）{p_end}
{synopt:{cmd:e(supp)}}补充变量的名称{p_end}
{synopt:{cmd:e(defs)}}每个交叉变量：交叉变量由 
	"{cmd:\}" 分隔{p_end}
{synopt:{cmd:e(missing)}}{cmd:missing}，如果指定{p_end}
{synopt:{cmd:e(crossed)}}{cmd:1} 如果有交叉变量，则为 {cmd:0}
	否则{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}输出中的标题{p_end}
{synopt:{cmd:e(method)}}{cmd:burt}、{cmd:indicator} 或 {cmd:joint}{p_end}
{synopt:{cmd:e(norm)}}{cmd:standard} 或 {cmd:principal}{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV eigen}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(Coding}{it:#}{cmd:)}}包含变量 {it:#} 的编码的行向量{p_end}
{synopt:{cmd:e(A)}}列分类别的标准坐标{p_end}
{synopt:{cmd:e(F)}}列分类别的主坐标{p_end}
{synopt:{cmd:e(cMass)}}列质量{p_end}
{synopt:{cmd:e(cDist)}}到质心的列距离{p_end}
{synopt:{cmd:e(cInertia)}}列惯性{p_end}
{synopt:{cmd:e(cGS)}}列分类别的一般统计信息{p_end}
{synopt:}[.,1]{space 5}列质量{p_end}
{synopt:}[.,2]{space 5}整体质量{p_end}
{synopt:}[.,3]{space 5}惯性/总惯性{p_end}
{synopt:}[.,3*f+1] 维度 f: 在 e(norm) 归一化中的坐标{p_end}
{synopt:}[.,3*f+2] 维度 f: 配置对主轴的贡献{p_end}
{synopt:}[.,3*f+3] 维度 f: 主轴对配置的贡献{p_end}
{synopt:}{space 7}(= 配置和轴的平方相关性){p_end}
{synopt:{cmd:e(rSCW)}}用于行标准坐标的权重矩阵{p_end}
{synopt:{cmd:e(Ev)}}主惯性/特征值{p_end}
{synopt:{cmd:e(inertia_e)}}解释的惯性（百分比）{p_end}
{synopt:{cmd:e(Bmod)}}活跃变量的修改 Burt 矩阵
	（仅 {cmd:method(joint)}）{p_end}
{synopt:{cmd:e(inertia_sub)}}变量逐个的惯性（仅 {cmd:method(joint)}）{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估算样本{p_end}


{marker references}{...}
{title:参考文献}

{marker G1984}{...}
{phang}
Greenacre, M. J. 1984.
{it:对应分析的理论与应用}.
伦敦：学术出版社。

{marker G2006}{...}
{phang}
------. 2006.
从简单到多重对应分析。在
{it:多重对应分析及相关方法}中，由
M. Greenacre 和 J. Blasius 编辑。佛罗里达州博卡拉顿：查普曼和霍尔/CRC。 

{marker MW1995}{...}
{phang}
Milan, L., 和 J. Whittaker. 1995. 参数自助法在包含奇异值分解的模型中的应用。
{it:应用统计} 44: 31-49。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mca.sthlp>}