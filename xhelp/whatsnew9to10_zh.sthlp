{smcl}
{* *! version 1.4.0  13sep2017}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew9to10:English Version}
{hline}{...}
{title: 10.0 版本的新功能 (与 9.0 版本相比)}

{pstd}
此文件列出了与 Stata 10.0 版本发布相关的更改：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版本            2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本            2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0, 14.1, 和 14.2   2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本            2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013 至 2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版本            2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版本            2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0, 11.1, 和 11.2   2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版本            2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009    {c |}
    {c |} {bf:此文件}            Stata 10.0 新版本            2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0, 9.1, 和 9.2     2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版本            2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0, 8.1, 和 8.2     2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版本            2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版本            2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改按时间顺序列出。

{hline 3} {hi:更多的更新} {hline}

{pstd}
请查看 {help whatsnew10_zh}。

{hline 3} {hi: Stata 10.0 版本 2007年6月25日} {hline}

{title:备注}

{pstd}
我们将逐项列出所有更改，但首先，以下是一些重要亮点：

{phang2}
1.  Stata 10 拥有一个互动的图形点击编辑器。
    您无需输入任何内容，只需在图形窗口内右键点击并选择 {bf:启动图形编辑器}。
    您可以在任何时候执行此操作，无论是绘制图形时还是在从磁盘 {cmd:graph} {cmd:use} 之后。
    您可以添加文本、线条、标记、标题和注释，无论是在绘图区域外部还是内部；您可以移动坐标轴、标题、图例等；您可以更改颜色和大小、刻度标记的数量等；甚至可以将散点图转换为线图或条形图，反之亦然。
    请参阅 {manhelp graph_editor G-1:图形编辑器}。

{phang2}
2.  现在您可以将估计结果保存到磁盘。 在拟合模型之后，无论是使用 {cmd:regress}、{cmd:logistic}，还是用户编写的命令，您输入 {cmd:estimates} {cmd:save} {it:文件名} 来保存它。 之后输入 {cmd:estimates} {cmd:use} {it:文件名} 可以重新加载。 详见 {manhelp estimates R}。

{phang2}
3.  Stata 现在可以拟合层次模型、混合模型以及具有二元和计数响应的模型；也就是说，您可以拟合具有复杂、嵌套错误成分的逻辑回归模型和泊松回归模型。请参见 {manhelp xtmelogit XT} 和 {manhelp xtmepoisson XT}。

{phang2}
4.  Stata 现在具有精确的逻辑和精确的泊松回归。
    在小样本中，精确方法比渐近方法有更好的覆盖率，并且精确方法是唯一能够从完美预测观察结果的协变量中获得点估计、检验和置信区间的方法。
    请参见 {manhelp exlogistic R} 和 {manhelp expoisson R}。

{phang2}
5.  Stata 现在支持 LIML 和 GMM 估计，除了 2SLS 之外。支持工具变量的相关性检验和超识别限制检验。请参见 {manhelp ivregress R} 和 {manhelp ivregress_postestimation R:ivregress 后估计}。

{phang2}
6.  Stata 现在具有更多的动态面板数据模型估计器，包括 Arellano-Bover/Blundell-Bond 系统估计器。
    该估计器是对动态面板模型的 Arellano-Bond GMM 估计器的扩展。当 AR 过程过于持久时，它更有效且具有更小的偏倚。这些新估计器也可以用来拟合具有序列相关的个体特有误差的模型，以及其预设变量结构比较复杂的模型。这些新估计器能计算 Windmeijer 偏差校正的两步稳健 VCE，以及标准的一步独立、一步稳健和两步独立 VCE。请参见 {manhelp xtabond XT}、{manhelp xtdpdsys XT} 和 {manhelp xtdpd XT}。

{phang2}
7.  新的估计命令 {cmd:nlsur} 运用可行广义最小二乘法拟合一组非线性方程，允许方程之间的协方差。请参见 {manhelp nlsur R}。

{phang2}
8.  Stata 现在具有用于拟合类别和排名结果的新估计命令，这些通常用于选择模型。 新命令允许每个结果的独立方程，并支持易于使用的替代特定符号。 Stata 的替代特定多项式 probit 还包括替代特定条件逻辑回归（McFadden 模型）和替代特定排名排序 probit（用于建模有序结果）。请参见 {manhelp asclogit R} 和 {manhelp asroprobit R}。

{phang2}
9.  Stata 的 {cmd:svy:} 前缀现在可与 48 个估计器一起使用，比以前多出 27 个。最重要的是，{cmd:svy:} 现在可与 Cox 比例风险回归模型 ({cmd:stcox}) 和参数生存模型 ({cmd:streg}) 一起使用。 具体包括

{p2colset 13 25 27 2}{...}
{p2col:{cmd:biprobit}}二元 probit 回归{p_end}
{p2col:{cmd:clogit}}条件（固定效应）逻辑回归{p_end}
{p2col:{cmd:cloglog}}互补逻辑回归{p_end}
{p2col:{cmd:cnreg}}截断正态回归{p_end}
{p2col:{cmd:cnsreg}}约束线性回归{p_end}
{p2col:{cmd:glm}}广义线性模型{p_end}
{p2col:{cmd:hetprob}}异方差 probit 模型{p_end}
{p2col:{cmd:ivregress}}工具变量回归{p_end}
{p2col:{cmd:ivprobit}}具有内生回归变量的 probit 模型{p_end}
{p2col:{cmd:ivtobit}}具有内生回归变量的 tobit 模型{p_end}
{p2col:{cmd:mprobit}}多项式 probit 回归{p_end}
{p2col:{cmd:nl}}非线性最小二乘估计{p_end}
{p2col:{cmd:scobit}}倾斜逻辑回归{p_end}
{p2col:{cmd:slogit}}刻板逻辑回归{p_end}
{p2col:{cmd:stcox}}Cox 比例风险回归{p_end}
{p2col:{cmd:streg}}参数生存模型（5 种估计量）{p_end}
{p2col:{cmd:tobit}}tobit 回归{p_end}
{p2col:{cmd:treatreg}}处理效应模型{p_end}
{p2col:{cmd:truncreg}}截断回归{p_end}
{p2col:{cmd:zinb}}零膨胀负二项回归{p_end}
{p2col:{cmd:zip}}零膨胀泊松回归{p_end}
{p2col:{cmd:ztnb}}零截断负二项回归{p_end}
{p2col:{cmd:ztp}}零截断泊松回归{p_end}

{pmore2}
详见 {manhelp svy_estimation SVY:svy 估计}。

{phang2}
10.  新的 {cmd:stpower} 命令提供生存研究的样本量和效能计算，使用 Cox 比例风险回归、两组的 log-rank 检验或差异在指数分布的危险或对数危险之间。
    可用的选项包括 (1) 所需样本量（给定效应值），(2) 效应值（给定样本量），以及 (3) 最小可检测效应（给定效应值和样本量）。 {cmd:stpower} 允许生成自定义表格，并具有帮助创建图形和效能曲线的选项。
    见 {manhelp stpower ST}。

{phang2}
11.  Stata 10 提供几种判别分析技术，包括线性判别分析 (LDA)、二次判别分析 (QDA)、逻辑判别分析以及 {it:k} 最近邻 (KNN) 判别。
    请参阅 {manhelp discrim MV}。

{phang2}
12.  Stata 现在提供多重对应分析 (MCA) 和联合对应分析 (JCA)。请参见 {manhelp mca MV}。

{phang2}
13.  Stata 现在提供现代和经典的多维尺度 (MDS)，包括度量和非度量 MDS。可用的损失函数包括压力、标准化压力、平方压力、标准化平方压力和 Sammon。可用的变换包括身份、功率和单调。请参见 {manhelp mds MV}。

{phang2}
14.  Stata 10 除了日期变量外，现在还有时间/日期变量，因此现在您可以处理表示事件在 2007 年 5 月 12 日 14:03:22.234 发生的数据，或每天在 14:03:22.234 发生的事件。注意毫秒分辨率。时间变量有两种形式：经过闰秒调整和未经调整。请参见 {help datetime_zh:[D] datetime}。

{phang2}
15.  新的 Mata 函数 {cmd:optimize()} 执行最小化和最大化。您可以仅编写函数，或编写函数及其一阶导数，或编写函数及其一阶和二阶导数。优化技术包括牛顿-拉夫森、Davidon-Fletcher-Powell、Broyden-Fletcher-Goldfarb-Shanno、Berndt-Hall-Hall-Hausman 和单纯形方法 Nelder-Mead。请参阅 {help mf_optimize_zh:[M-5] optimize()}。

{phang2}
16.  Stata 的在线帮助现在提供已保存的结果和示例，您可以运行它们。

{phang2}
17.  Stata for Windows 现在支持自动化，以前称为 OLE 自动化，这意味着程序员可以从其他应用程序控制 Stata 并检索结果。请参见 {manhelp automation P}。

{phang2}
18.  Stata for Unix 现在支持 unixODBC [{it:sic}]，使其更容易连接到 Oracle、MySQL 和 PostgreSQL 等数据库；详见 {manhelp odbc D}。

{pstd}
另一个更改是 Stata/MP 的引入，但这实际上是在 Stata 9 期间发生的。Stata/MP 是 Stata 的并行版本，适用于多 CPU 和多核计算机；请参阅 {help flavors_zh}。
Stata/MP 的运行速度更快。在 Stata 10 中，许多命令现在利用多个处理器，这意味着它们的运行速度也更快。这包括调查和非调查的均值，总计，比例和成比例的估计器以及可用于许多 Stata 估计命令的调查线性化方差估计器。

{pstd}
还有很多其他变化，您可能觉得重要的更改并不是我们列出的亮点。以下是详细信息。

{pstd}
新功能按以下标题呈现：

            {help whatsnew9to10##interface:图形用户界面和命令界面中的新功能}
	    {help whatsnew9to10##data:数据管理中的新功能}
	    {help whatsnew9to10##general:统计中的新功能（一般）}
	    {help whatsnew9to10##paneldata:统计中的新功能（纵向/面板数据）}
	    {help whatsnew9to10##timeseries:统计中的新功能（时间序列）}
	    {help whatsnew9to10##survey:统计中的新功能（调查）}
	    {help whatsnew9to10##survival:统计中的新功能（生存分析）}
	    {help whatsnew9to10##multivariate:统计中的新功能（多变量）}
	    {help whatsnew9to10##graphics:图形中的新功能}
	    {help whatsnew9to10##programming:编程中的新功能}
	    {help whatsnew9to10##mata: Mata 中的新功能}


{marker interface}{...}
{title: 图形用户界面和命令界面中的新功能}

{phang2}
1.  回顾窗口经过重新设计。现在
    它显示每个以前命令的返回代码并突出显示错误。
    从窗口中，您现在可以选择多个命令，而不仅仅是单个命令，以保存或执行。

{phang2}
2.  变量窗口经过重新设计。
    现在它显示每个变量的存储类型和显示格式，以及变量的名称和标签。
    您可以从窗口中更改这些内容，包括名称；只需右键单击即可。

{phang2}
3.  Stata 的查看器经过重新设计。
    除了全新外观之外，还新增了 {bf:前进} 按钮，并且搜索功能现在内置，而不是通过对话框提供。

{phang2}
4.  图形窗口经过重新设计。除了
    提供互动编辑器外，在 Windows 下，它现在允许标签。您
    可以将一个窗口中的多个图形放置在各自的标签中，或者将每个图形放在一个单独的窗口中。

{phang2}
5.  您可以在 Stata 的结果和查看器窗口中以原样模式复制和粘贴，这意味着您可以在文档和幻灯片中包含与屏幕上完全相同的 Stata 输出。

{phang2}
6.  现在可以同时打开多个 do 文件编辑器；只需在打开对话框中单击文件即可。 （Unix 用户：您现在也可以打开多个 do 文件编辑器。）

{phang2}
7.  关于对话框，

{p 12 16 2}
a.  Stata 现在使用子对话框，使 Stata 命令的对话框更易于使用。

{p 12 16 2}
b.  程序员也可以编写子对话框；请参见 {help dialog_programming_zh:[P] 对话框编程}。

{p 12 16 2}
c.  图形对话框的全新外观使得指定
    最重要的项目和选项变得更容易，但仍然提供对 {cmd:graph} 功能的更深入访问。

{p 12 16 2}
d.  需要矩阵的对话框现在允许用户通过
        矩阵输入子对话框创建矩阵，并在原始
        对话框中显示新矩阵。

{p 12 16 2}
e.  需要格式的对话框现在允许用户通过格式生成器指定格式。

{p 12 16 2}
f.  现在可以通过对话框访问 ODBC 源中的数据。

{p 12 16 2}
g.  对话框现在根据 Microsoft Windows 的 DPI 设置进行缩放。

{p 12 16 2}
h.  对话框现在加载得更快。

{phang2}
8.  Stata for Unix 具有全新的更现代的图形用户界面。

{phang2}
9.  Stata 现在在启动时执行 {cmd:sysprofile.do}（如果存在），
    以及 {cmd:profile.do}。这使系统管理员能够提供全局自定义。
    见 {hi:[GS] 附录 A: 关于启动和结束 Stata 的更多信息}。

{p 7 12 2}
10.  新命令 {cmd:adoupdate} 使更新用户编写的 ado 文件的过程自动化；详见 {manhelp adoupdate R}。

{p 7 12 2}
11.  新命令 {cmd:hsearch} 在帮助文件中搜索指定的单词并在查看器中呈现一个排位可点击的列表；详见 {manhelp hsearch R}。

{p 7 12 2}
12.  Stata 的帮助文件现在命名为 {cmd:*.sthlp} 而不是 {cmd:*.hlp}，
    这意味着用户编写的帮助文件可以更轻松地通过电子邮件发送。
    许多电子邮件过滤器将 {cmd:.hlp} 文件标记为潜在的病毒载体，
    因为 Stata 并不是唯一使用 {cmd:.hlp} 后缀的人。
    您无需重命名以前的帮助文件。请参见 {manhelp help R}。

{p 7 12 2}
13.  现在有 Mac 的 Stata/SE 和 Stata/MP 的控制台版本，正如 Unix 一样。
    它们包含在安装 CD 中，并自动安装。

{p 7 12 2}
14.  Stata 的 {cmd:in} 命令修饰符现在接受 {cmd:F} 和 {cmd:L} 作为
    {cmd:f} 和 {cmd:l} 的同义词，分别表示首个和最后一个观察。

{p 7 12 2}
15.  可以同时打开多个日志文件；请见 {manhelp log R}。

{p 7 12 2}
16.  Intercooled Stata 已被重命名为 Stata/IC。

{marker data}{...}
{title: 数据管理中的新功能}

{phang2}
1.  Stata 10 具有新的日期/时间变量，因此您现在可以在一个变量中记录像 14jun2007 09:42:41.106 的值。它们被称为 {cmd:%tc} 和 {cmd:%tC} 变量。第一个未经过闰秒调整；第二个则经过调整。

{pmore2}
    以前称为“日变量”的现在称为 {cmd:%td} 变量。这只是术语上的变化；每日 ({cmd:%td}) 变量依然如故。

{pmore2}
    {cmd:%tc} 和 {cmd:%tC} 变量的工作方式类似： 0 表示 01jan1960 00:00:00。在这种情况下，1 表示 01jan1960 00:00:00.001，1000 表示 01jan1960 00:00:01.000，02jan1960 08:00:00 为 115,200,000。
    基础值很大，因此您重要将其存储为 {cmd:double}；但是，{cmd:%tc} 和 {cmd:%tC} 格式使值可读，就像 {cmd:%td} 格式使日值可读一样。

{pmore2}
    有许多新函数与这种新值类型相配合。如 {cmd:clock()} 可以将字符串如“02jan1960 08:00:00”（或甚至是“8:00 a.m., 1/2/1960”）转换为其数字等值。
    {cmd:dofc()} 将 {cmd:%tc} 值（例如115,200,000，代表02jan1960 08:00:00）转换为其 {cmd:%td} 等值（即1，代表02jan1960）。{cmd:cofd()} 做了反向操作（结果是86,400,000，代表02jan1960 00:00:00）。

{pmore2}
    请参阅 {help datetime_zh:[D] datetime}。

{phang2}
2.  先前存在的 {cmd:date()} 函数现在更智能。除了能够转换字符串如“21aug2005”、“August 21, 2005”，它还可以转换“082105”、“08212005”、“210805”和“21082005”。请参见 {help datetime_zh:[D] datetime}。

{phang2}
3.  新命令 {cmd:datasignature} 允许您对数据集进行签名，之后可以使用该签名确定数据是否已更改。该命令的早期版本在 Stata 9 版本发布时提供。该命令现在被称为 {cmd:_datasignature}，并用作新、改进的 {cmd:datasignature} 的基础。请参见 {manhelp datasignature D} 和 {manhelp _datasignature D}。

{phang2}
4.  现有的 {cmd:clear} 命令现在仅清除数据和值标签。输入 {cmd:clear} {cmd:all} 可清除所有内容。此更改可能会在您最初输入 {cmd:clear} 时引发误解，因为新用户在只输入 {cmd:clear} 时发现它清除了所有内容，而 {cmd:use} {it:文件名}{cmd:,} {cmd:clear} 初始化新数据和值标签，但保留其他内容。新用户觉得这很正确。

{pmore2}
    {cmd:clear} 现在有以下子命令：

{p 12 16 2}
a.  {cmd:clear} {cmd:all} 清除内存中的所有内容。

{p 12 16 2}
b.  {cmd:clear} {cmd:ado} 清除自动加载的 ado 文件程序。

{p 12 16 2}
c.  {cmd:clear} {cmd:programs} 清除所有程序，自动加载的或未自动加载的。

{p 12 16 2}
d.  {cmd:clear} {cmd:results} 清除保存的结果。

{p 12 16 2}
e.  {cmd:clear} {cmd:mata} 从内存中清除 Mata 函数和对象。

{pmore2}
详见 {manhelp clear D}。

{phang2}
5.  Stata for Unix 现在支持 unixODBC [{it:sic}]，使其更容易连接到 Oracle、MySQL 和 PostgreSQL 等数据库；详见 {manhelp odbc D}。

{phang2}
6.  现有的 {cmd:describe} 命令现在允许选项 {cmd:varlist}，之前它仅通过 {cmd:describe} {cmd:using}。现有的命令 {cmd:describe} {cmd:using} {it:文件名} 现在允许选项 {cmd:simple}，以前仅通过 {cmd:describe} 允许。选项 {cmd:varlist} 将变量名称保存到 {cmd:r(varlist)} 中，选项 {cmd:simple} 以紧凑格式显示变量名称。详见 {manhelp describe D}。

{phang2}
7.  现有命令 {cmd:collapse}现在支持四个附加 {it:stat}：
    {cmd:first}，第一个值； {cmd:last}，最后一个值； {cmd:firstnm}，第一个非缺失值；和 {cmd:lastnm}，最后一个非缺失值。请参见 {manhelp collapse D}。

{phang2}
8.  现有命令 {cmd:cf}（比较文件）现在提供了详细的观察差异列出，当指定 {cmd:verbose} 选项时。
   将版本设置为小于 10.0 恢复以前的行为。请参见 {manhelp cf D}。

{phang2}
9.  现有命令 {cmd:codebook} 现在有新选项 {cmd:compact}，生成更紧凑的输出。请参见 {manhelp codebook D}。

{p 7 12 2}
10.  现有命令 {cmd:insheet} 具有新选项 {cmd:case}，在导入数据时保留变量名称的大小写；详见 {manhelp insheet D}。

{p 7 12 2}
11.  现有命令 {cmd:outsheet} 具有新选项 {cmd:delimiter()}，指定备用分隔符；详见 {manhelp outsheet D}。

{p 7 12 2}
12.  现有命令 {cmd:infile} 和 {cmd:infix} 现在可以读取每行最多 524,275 个字符；先前的限制为 32,765。请见 {manhelp infile D} 和 {help infile2_zh:[D] infix（固定格式）}。

{p 7 12 2}
13.  现有命令 {cmd:icd9} 和 {cmd:icd9p} 现在已更新为使用 V24 代码；详见 {manhelp icd9 D}。

{p 7 12 2}
14.  新函数 {cmd:itrim()} 将连续的内部空格合并为一个空格；详见 {helpb string functions:[FN] 字符串函数}。

{p 7 12 2}
15.  新函数 {cmd:lnnormal()} 和 {cmd:lnnormalden()} 提供标准正态分布累积分布和标准正态密度的自然对数；见 {helpb stat functions:[FN] 统计函数}。

{p 7 12 2}
16.  现在提供用于计算累积分布的新函数：

{p2colset 13 38 40 2}{...}
{p2col: {opt binomial(n, k, p)}}二项分布的下尾{p_end}
{p2col: {opt ibetatail(a, b, x)}}累计 Beta 分布的反向（上尾）{p_end}
{p2col: {opt gammaptail(a, x)}}累计 Gamma 分布的反向（上尾）{p_end}
{p2col: {opt invgammaptail(a, p)}}累计 Gamma 分布的反向{p_end}
{p2col: {opt invibetatail(a, b, p)}}累计 Beta 分布的反向{p_end}
{p2col: {opt invbinomialtail(n, k, p)}}右累积二项分布的反向{p_end}

{pmore2}详见 {helpb stat functions:[FN] 统计函数}。
{p2colreset}{...}

{p 7 12 2}
17.  现有函数 {opt Binomial(n, k, p)} 现在更名为 {opt binomialtail(n, k, p)}，使其名称与概率函数命名约定一致。对于非常大的 {it:n}，此函数的准确性也有所提高。在数字线的另一端，当 {it:n} = 0 时，该函数现在返回适当的 0 或 1 值，而不是返回缺失值。{cmd:Binomial()} 仍继续作为 {cmd:binomialtail()} 的同义词使用。

{p 7 12 2}
18.  以下概率函数的行为和准确性得到了改进：

{p 12 16 2}
a.  {opt F(n_1, n_2, f)} 和 {opt Ftail(n_1, n_2, f)} 在 {it:n_1} 较小以及 {it:n_2} 较大时更为准确。此外，当 {it:n_1} 和 {it:n_2} 小于 1 时，{cmd:F()} 也更为准确。

{p 12 16 2}
b.  {opt gammap(a, x)} 在 {it:a} 较大且 {it:x} 接近 {it:a} 时更加精确。

{p 12 16 2}
c.  {opt ibeta(a, b, x)} 在 {it:x} 接近 {it:a}/({it:a}+{it:b}) 并且 {it:a} 或 {it:b} 较大时更为准确。

{p 12 16 2}
d.  {opt invbinomial(n, k, p)}、{opt invchi2(n, p)}、{opt invchi2tail(n, p)}、{opt invF(n_1, n_2, p)} 和 {opt invgammap(a, p)} 在 {it:p} 的小值或者返回接近零的值时更为准确。

{p 12 16 2}
e.  {opt invFtail(n_1, n_2, p)} 和 {opt invibeta(a, b, p)} 在 {it:p} 的小值或返回接近零的值时更为准确。

{p 12 16 2}
f.  {opt invttail(n, p)} 在 {it:p} 的小值或返回接近零的值时更为精确。

{p 12 16 2}
g.  {opt ttail(n, t)} 在 {it:n} 极大时更为准确。

{p 7 12 2}
19.  现有函数 {opt invbinomial(n, k, p)} 现在返回一项试验成功的概率，使得在 {it:n} 次试验中观察到至多 {it:k} 次成功的概率为 {it:p}。{cmd:invbinomial()} 先前的行为在版本控制下恢复。

{p 7 12 2}
20.  新函数 {cmd:fmtwidth()} 返回 {cmd:%}{it:fmt} 字符串的显示宽度；见 {helpb prog functions:[FN] 编程函数}。

{p 7 12 2}
21.  {cmd:%}{it:fmt} 的最大长度从 12 个字符增加到 48 个字符；见 {manhelp format D}。 （这项更改是由于新日期/时间变量而产生的。）

{p 7 12 2}
22.  现有命令 {cmd:corr2data} 和 {cmd:drawnorm} 现在允许奇异相关（或协方差）结构。新选项 {cmd:forcepsd} 将矩阵修改为正半定矩阵，因此成为一个合适的协方差矩阵。请见 {manhelp corr2data D} 和 {manhelp drawnorm D}。

{p 7 12 2}
23.  现有命令 {cmd:hexdump,} {cmd:analyze} 现在将 {cmd:\r\n} 字符的数量保存到 {cmd:r(Windows)} 中，而不是 {cmd:r(DOS)} 中。
    如果版本低于 10，{cmd:r(DOS)} 仍然被设置。请参见 {manhelp hexdump D}。

{marker general}{...}
{title: 统计中的新功能（一般）}

{phang2}
1.  如上所述，您现在可以将估计结果保存到磁盘。您输入 {cmd:estimates} {cmd:save} {it:文件名} 来保存结果并输入 {cmd:estimates} {cmd:use} {it:文件名} 来重新加载它。实际上，整个 {cmd:estimates} 命令已重新设计。新命令 {cmd:estimates} {cmd:notes} 允许您向估计结果添加备注，正如您向数据集添加注释一样。新命令 {cmd:estimates} {cmd:esample} 允许您在重新加载估计后恢复 {cmd:e(sample)}，如果有必要（通常不是）。可以在内存中持有的估计结果的最大数量（与保存在磁盘上的相对）从 20 增加到 300。详见 {manhelp estimates R}。

{phang2}
2.  Stata 现在具有精确的逻辑和精确的泊松回归。
    精确估计器的推断基于充分统计量的条件分布，而不是渐近正态性。在小样本中，精确方法比渐近方法有更好的覆盖率。此外，精确方法是唯一能够从完全预测观察到的结果的协变量获得点估计、检验和置信区间的方法。

{pmore2}
    后估计命令 {cmd:estat} {cmd:se} 报告比率和其渐近标准误差。{cmd:estat} {cmd:predict} 仅在 {cmd:exlogistic} 后可用，计算预测概率、渐近标准误差和单一情况的精确置信区间。

{pmore2}
    详见 {manhelp exlogistic R} 和 {manhelp expoisson R}。

{phang2}
3.  新的估计命令 {cmd:asclogit} 执行特定替代的条件逻辑回归，包括 McFadden 的选择模型。后估计命令 {cmd:estat} {cmd:alternatives} 报告特定替代的总结统计。{cmd:estat} {cmd:mfx} 报告回归因子对每个替代的概率的边际效应。请参见 {manhelp asclogit R} 和 {manhelp asclogit_postestimation R:asclogit 后估计}。

{phang2}
4.  新的估计命令 {cmd:asroprobit} 执行特定替代的排名有序 probit 回归。
    {cmd:asroprobit} 与排名有序逻辑回归 ({cmd:rologit}) 有关，但允许建模特定替代效果和建模替代的协方差结构。
    后估计命令 {cmd:estat} {cmd:alternatives} 提供有关估计样本中替代的总结统计。{cmd:estat} {cmd:covariance} 显示替代的方差-协方差矩阵。{cmd:estat} {cmd:correlation} 显示替代的相关矩阵。{cmd:estat} {cmd:mfx} 计算回归因子对替代概率的边际效应。
    请参见 {manhelp asroprobit R} 和 {manhelp asroprobit_postestimation R:asroprobit 后估计}。

{phang2}
5.  新的估计命令 {cmd:ivregress} 执行单方程工具变量回归，通过二阶段最小二乘法、有限信息最大似然或广义矩法。
    可以请求稳健和 HAC 协方差矩阵。
    后估计命令 {cmd:estat} {cmd:firststage} 提供多种描述性统计和工具变量相关性检验。{cmd:estat} {cmd:overid} 检验超识别限制。
    {cmd:ivregress} 替代以前的 {cmd:ivreg} 命令。
    详见 {manhelp ivregress R} 和 {manhelp ivregress_postestimation R:ivregress 后估计}。

{phang2}
6.  新的估计命令 {cmd:nlsur} 运用可行的广义最小二乘法拟合一组非线性方程，允许方程之间的协方差。请见 {manhelp nlsur R}。

{phang2}
7.  现有的估计命令 {cmd:nlogit} 已重写并拥有更好的新语法，并在有超过两个级别时运行得更快。旧语法在版本控制下仍可用。{cmd:nlogit} 现在默认拟合随机效用最大化 (RUM) 模型以及以前可用的非标准化模型。新的 {cmd:nlogit} 现在允许不平衡的组，并允许组拥有不同的替代集。
    {cmd:nlogit} 现在将整个选择集（案例）排除在外，如果任何替代（观察）有缺失值；可使用新选项 {cmd:altwise} 仅排除缺失值的替代（观察）。
    最后，无论嵌套级数如何，都会允许 {cmd:vce(robust)}。请见 {manhelp nlogit R}。

{phang2}
8.  现有的估计命令 {cmd:asmprobit} 有以下增强功能：

{p 12 16 2}
a.  新的默认参数化法估计与基线替代不同的替代的协方差，使估计对基线选择不变。
	新选项 {cmd:structural} 指定使用以前的结构（未差分）协方差参数化法。

{p 12 16 2}
b.  {cmd:asmprobit} 现在允许估计仅常数模型。

{p 12 16 2}
c.  {cmd:asmprobit} 现在排除整个选择集（案例），如果任何替代（观察）有缺失值；可使用新选项 {cmd:altwise} 仅排除缺失值的替代（观察）。

{p 12 16 2}
d.  新的后估计命令 {cmd:estat mfx} 可在 {cmd:asmprobit} 后计算边际效应。

{pmore2}
    详见 {manhelp asmprobit R} 和 {manhelp asmprobit_postestimation R:asmprobit 后估计}。

{phang2}
9.  现有的估计命令 {cmd:clogit} 现在接受 {cmd:pweight}s，可以与 {cmd:svy:} 前缀一起用。 

{pmore2}
    此外，{cmd:clogit} 以前会在组不嵌套在集群内时产生集群稳健的 VCE。在某些情况下，此 VCE 是一致的，而其他情况下则不是。现在您必须指定新的 {cmd:nonest} 选项，以在组不嵌套在面板内时获取集群稳健的 VCE。

{pmore2}
    在 {cmd:clogit} 后，{cmd:predict} 现在接受计算 Delta(beta) 影响统计量、Delta(chi^2) 拟合优度统计量、Hosmer 和 Lemeshow 杠杆、Pearson 残差和标准化 Pearson 残差的选项。

{pmore2}
    详见 {manhelp clogit R} 和 {manhelp clogit_postestimation R:clogit 后估计}。

{p 7 12 2}
10.  现有的估计命令 {cmd:cloglog} 现在接受 {cmd:pweight}s，现在可以与 {cmd:svy:} 前缀一起使用，并具有新选项 {cmd:eform}，请求报告指数化系数；见 {manhelp cloglog R}。

{p 7 12 2}
11.  现有的估计命令 {cmd:cnreg} 现在接受 {cmd:pweight}s，可以与 {cmd:svy:} 前缀一起使用，并且在使用循环（例如通过 {cmd:statsby}）时，运行明显更快（快至五倍）。请见 {manhelp cnreg R}。

{p 7 12 2}
12.  现有的估计命令 {cmd:cnsreg} 和 {cmd:tobit} 现在接受 {cmd:pweight}s，可以与 {cmd:svy:} 前缀一起使用，并在使用循环（例如通过 {cmd:statsby}）时明显更快（快至五倍）。此外，{cmd:cnsreg} 现在有新高级选项 {cmd:mse1}，将均方误差设置为 1。请见 {manhelp cnsreg R} 和 {manhelp tobit R}。

{p 7 12 2}
13.  现有的估计命令 {cmd:regress} 现在在与循环一起使用时明显更快（快至五倍），例如通过 {cmd:statsby}。
    还包括：

{p 12 16 2}
a.  后估计命令 {cmd:estat} {cmd:hettest} 现在有新的选项 {cmd:iid}，指定执行替代版本的得分检验，该检验不需要正态假设。新选项 {cmd:fstat} 指定执行替代 F 检验，该检验也不需要正态假设。

{p 12 16 2}
b.  现有的后估计命令 {cmd:estat} {cmd:vif} 新增了选项 {cmd:uncentered}，指定计算未中心化方差膨胀因子。

{pmore2}
   请参见 {manhelp regress_postestimation R:regress 后估计}。

{p 7 12 2}
14.  现有的估计命令 {cmd:logit}、{cmd:mlogit}、{cmd:ologit}、{cmd:oprobit} 和 {cmd:probit} 在使用循环时明显更快（快至五倍）；例如通过 {cmd:statsby}。

{p 7 12 2}
15.  对于现有的估计命令 {cmd:probit}，{cmd:predict}
     现在允许 {cmd:deviance} 选项；参见 {helpb probit postestimation:[R] probit 后估计}。

{p 7 12 2}
16.  现有的估计命令 {cmd:nl} 具有以下增强功能：

{p 12 16 2}
a.  选项 {opth vce(vcetype)} 现在被允许，支持的 {it:vcetype} 包括源自渐近理论的类型，对一些类型的拟合错误具有稳健性，允许群体内的相关性并使用自助法或插值法。此外，提供了三种异方差和自相关一致方差估计。

{p 12 16 2}
b.  {cmd:nl} 不再报告整体模型 F 检验，因为在任意非线性模型中，检验除常数外所有参数是否联合为零可能不合适。

{p 12 16 2}
c.  系数表现在报告中以各自的方程形式出现，类似 {cmd:ml} 报告单参数方程的方式。

{p 12 16 2}
d.  {cmd:predict} 在 {cmd:nl} 后拥有新的选项，允许您获取因变量位于给定区间内的概率、在其被截断时的条件期望值以及在其被截断时的条件期望值。这些预测假定误差项呈正态分布。

{p 12 16 2}
e.  {cmd:mfx} 可在 {cmd:nl} 后使用以获得边际效应。

{p 12 16 2}
f.  {cmd:lrtest} 可在 {cmd:nl} 后使用以进行似然比检验。

{pmore2}
详见 {manhelp nl R} 和 {manhelp nl_postestimation R:nl 后估计}。

{p 7 12 2}
17.  现有的估计命令 {cmd:mprobit} 现在允许 {cmd:pweight}s，且可以与 {cmd:svy:} 前缀一起使用，并有新选项 {cmd:probitparam}，指定使用 probit 方差参数化，使差分潜在误差从标准到基线替代的方差固定为 1。请参见 {manhelp mprobit R}。

{p 7 12 2}
18.  现有的估计命令 {cmd:rologit} 现在允许 {cmd:vce(bootstrap)} 和 {cmd:vce(jackknife)}。请参见 {manhelp rologit R}。

{p 7 12 2}
19.  现有的估计命令 {cmd:truncreg} 现在允许 {cmd:pweight}s，并与 {cmd:svy:} 前缀一起工作。见 {hi:[SVY] svy 估计}。

{p 7 12 2}
20.  在现有的估计命令 {cmd:ivprobit} 后，后估计命令 {cmd:estat} {cmd:classification}、{cmd:lroc} 和 {cmd:lsens} 现在可用。
    此外，在 {cmd:ivprobit} 中，输出中的附属参数顺序已更改，以反映在 {cmd:e(b)} 中的顺序。
    见 {manhelp ivprobit R} 和 {manhelp ivprobit_postestimation R:ivprobit 后估计}。

{p 7 12 2}
21.  所有允许选项 {cmd:robust} 和 {cmd:cluster()} 的估计命令现在均允许选项 {opth vce(vcetype)}。{cmd:vce()} 规定如何计算估计量的方差-协方差矩阵（因此也包括标准误）。在 Stata 9 中引入了这种语法，并允许选项如 {cmd:vce(bootstrap)}、{cmd:vce(jackknife)} 和 {cmd:vce(oim)}。

{pmore2}
    在 Stata 10 中，选项 {cmd:vce()} 被扩展为包含稳健（并可选择集群）的方差计算。您以前输入的

{p 12 16 2}
. {it:estimation-command} ...{cmd:, robust}

{pmore2}
    现在您应输入 

{p 12 16 2}
. {it:estimation-command} ...{cmd:, vce(robust)}

{pmore2}
    而您以前输入的 

{p 12 16 2}
. {it:estimation-command} ...{cmd:, robust cluster(}{it:clustervar}{cmd:)}

{pmore2}
    有或无 {cmd:robust}，现在应输入 

{p 12 16 2}
. {it:estimation-command} ...{cmd:, vce(cluster} {it:clustervar}{cmd:)}

{pmore2}
您仍然可以输入旧语法，但它没有文档。新语法强调了稳健和集群计算影响的是标准误，而不是系数。
    请见 {manhelpi vce_option R}。

{pmore2}
    与此变化相伴随着，估计命令现在有默认方差计算的术语。因此，您将看到类似 {cmd:vce(ols)} 和 {cmd:vce(gnr)} 的内容。它们都表示什么：

{p 12 16 2}
a.  {cmd:vce(ols)}。普通最小二乘的方差估计；一种 {it:s}^2(X'X)^{-1}-型计算。

{p 12 16 2}
b.  {cmd:vce(oim)}。基于似然函数的观察信息矩阵；-{it:H}^{-1}-型计算，其中 {it:H} 是海森矩阵。

{p 12 16 2}
c.  {cmd:vce(conventional)}。用于识别与模型相关的传统方差估计的一种通用术语。例如，在 Heckman 两步估计中，{cmd:vce(conventional)} 表示从增广回归中派生的 Heckman 方差矩阵。在两个不同的上下文中，{cmd:vce(conventional)} 可能不一定表示相同的计算。

{p 12 16 2}
d.  {cmd:vce(analytic)}。根据统计学的首原则获得的均值、比例和总计的方差估计。

{p 12 16 2}
e.  {cmd:vce(gnr)}。基于辅助回归的方差矩阵，这类似于 {it:s}^2({it:X}'{it:X})^{-1} 的推广到非线性回归。{cmd:gnr} 代表 Gauss-Newton 回归。

{p 12 16 2}
f.  {cmd:vce(linearized)}。通过对统计量进行一阶泰勒近似计算的方差矩阵，通常称为泰勒线性化方差估计、三明治估计和 White 估计。在其他上下文中，它与 {cmd:vce(robust)} 相同。

{pmore2}
以上用于默认值。{cmd:vce()} 也可以是

{p 12 16 2}
g.  {cmd:vce(robust)}。通过三明治方差估计计算的方差矩阵，VDV 类型计算，其中 {it:V} 为常规方差矩阵，{it:D} 为梯度的外积之和，即 {it:g_ig_i}'。

{p 12 16 2}
h.  {cmd:vce(cluster} {it:varname}{cmd:)}。{cmd:vce(robust)} 的群体版本，其中在由 {it:varname} 形成的组内执行求和，这相当于假设独立性仅在组间，而不是在观察间。

{p 12 16 2}
i.  {cmd:vce(hc2)} 和 {cmd:vce(hc3)}。计算方式与 {cmd:vce(robust)} 类似，但不同的得分替代梯度向量 {it:g_i}。

{p 12 16 2}
j.  {cmd:vce(opg)}。通过梯度外积计算的方差矩阵；一种 (sum_{it:i} {it:g_ig_i}')^{-1}-型计算。

{p 12 16 2}
k.  {cmd:vce(jackknife)}。通过缺失一项、删除 {it:n} 和基于集群的 jackknife 计算的方差矩阵。

{p 12 16 2}
l.  {cmd:vce(bootstrap)}。通过自助法重抽样计算的方差矩阵。

{pmore2}
    您无需记住上述内容；各个命令及其相应的对话框文档明确说明默认值和可用选项。

{p 7 12 2}
22.  使用选项 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)} 指定的估计命令现在在因共线性而丢弃变量时报告通知。

{p 7 12 2}
23.  新选项 {cmd:collinear} 已被添加到许多估计命令，指定估计命令不删除共线性变量。通常情况下，您不想指定此选项。它用于在约束系数时，即使变量是共线的，模型也是完全识别的。详见 {manhelp estimation_options R:估计选项}。

{p 7 12 2}
24.  具有由多个方程组成的模型 Wald 检验的估计命令现在将模型 Wald 检验中的方程数量保存在 {cmd:e(k_eq_model)} 中。

{p 7 12 2}
25.  所有估计命令现将宏 {cmd:e(cmdline)} 保存为原始输入命令行。

{p 7 12 2}
26.  关于现有的估计命令 {cmd:ml}：

{p 12 16 2}
a.  {cmd:ml} 现在还在 {cmd:e(k_eq_model)} 中保存用于计算模型 Wald 检验的方程数量，即使指定了选项 {cmd:lf0()}。

{p 12 16 2}
b.  {cmd:ml} {cmd:score} 具有新选项 {cmd:missing}，指定包含缺失值的变量的观察不从估计样本中排除。

{p 12 16 2}
c.  {cmd:ml} {cmd:display} 具有新选项 {cmd:showeqns}，请求在系数表中显示方程的名称。

{pmore2}
请参见 {manhelp ml R}。

{p 7 12 2}
27.  新命令 {cmd:lpoly} 执行核加权局部多项式回归，并显示带有可选置信区间的平滑值图；见 {manhelp lpoly R}。

{p 7 12 2}
28.  新的前缀命令 {cmd:nestreg:} 报告嵌套模型的比较检验；见 {manhelp nestreg R}。

{p 7 12 2}
29.  现有命令 {cmd:fracpoly}、{cmd:fracgen} 和 {cmd:mfp} 具有新功能：

{p 12 16 2}
a.  {cmd:fracpoly} 和 {cmd:mfp} 现在支持 {cmd:cnreg}、{cmd:mlogit}、{cmd:nbreg}、{cmd:ologit} 和 {cmd:oprobit}。

{p 12 16 2}
b.  {cmd:fracpoly} 和 {cmd:mfp} 有新选项 {cmd:all} ，指定将样本外观察包含在生成变量中。

{p 12 16 2}
c.  {cmd:fracpoly, compare} 现在使用偏差差异在分数多项式模型之间报告闭合检验比较，而不是报告增益；见 {manhelp fracpoly R}。

{p 12 16 2}
d.  {cmd:fracgen} 新选项 {cmd:restrict()} 计算在指定子样本上的调整和缩放。

{pmore2}
请参见 {manhelp fracpoly R} 和 {manhelp mfp R}。

{p 7 12 2}
30.  对于现有后估计命令 {cmd:hausman}，选项 {cmd:sigmaless} 和 {cmd:sigmamore} 现在可以在 {cmd:xtreg} 后使用。这些选项在基于小到中等样本的固定效应和随机效应回归进行比较时改善结果，因为它们确保差分的协方差矩阵将是正定的。
    请参见 {manhelp hausman R}。

{p 7 12 2}
31.  现有后的估计命令 {cmd:testnl} 现在允许绑定在括号中或方括号中的表达式使用逗号。例如，{cmd:testnl _b[x] = M[1,3]} 现在是允许的。详见 {manhelp testnl R}。

{p 7 12 2}
32.  现有后估计命令 {cmd:nlcom} 有新选项 {cmd:noheader}，可抑制输出头；查看 {manhelp nlcom R}。

{p 7 12 2}
33.  现有命令 {cmd:statsby} 现在可以与更多命令一起使用，包括后估计命令。
    {cmd:statsby} 还拥有新选项 {cmd:forcedrop}，用于不允许使用 {cmd:if} 或 {cmd:in} 的命令。
    {cmd:forcedrop} 指定在调用命令之前暂时丢弃 {cmd:by()} 组外的观察。请见 {manhelp statsby D}。

{p 7 12 2}
34.  现有行命令 {cmd:mkspline} 现在将创建限制立方样条以及线性样条。新选项 {cmd:displayknots} 将显示结点的位置。见 {manhelp mkspline R}。

{p 7 12 2}
35.  在现有命令 {cmd:kdensity} 中，现在优先使用 {opt kernel(kernelname)} 来指定内核，但以前仅指定 {it:kernelname} 的方法仍然有效。见 {manhelp kdensity R}。

{p 7 12 2}
36.  现有命令 {cmd:ktau} 的计算现在更快；见 {manhelp spearman R}。

{p 7 12 2}
37.  在现有命令 {cmd:ladder} 中，输出中的转换名称已更改，以匹配 {cmd:gladder} 和 {cmd:qladder} 使用的名称。此外，返回的结果 {cmd:r(raw)} 和 {cmd:r(P_raw)} 已被重命名为 {cmd:r(ident)} 和 {cmd:r(P_ident)}。见 {manhelp ladder R}。

{p 7 12 2}
38.  现有命令 {cmd:ranksum} 现在允许 {it:groupvar} 在选项 {opt by(groupvar)} 中可以是一个字符串；见 {manhelp ranksum R}。

{p 7 12 2}
39.  现有命令 {cmd:tabulate,} {cmd:exact} 现在允许在更大的表上进行精确计算。此外，新选项 {cmd:nolog} 抑制枚举日志。见 {manhelp tabulate_twoway R:tabulate twoway}。

{p 7 12 2}
40.  现有命令 {cmd:tetrachoric} 的计算四氢相关的默认算法已从 Edwards 和 Edwards 估计器更改为最大似然估计器。此外，生成标准误差和双尾显著性检验。Edwards 和 Edwards 估计器仍然可以通过指定新的 {cmd:edwards} 选项使用。在一个单元有零计数时，请求调整频率的新 {cmd:zeroadjust} 选项；见 {manhelp tetrachoric R}。

{p 7 12 2}
41.  现有命令 {cmd:areg} 现在在指定 {cmd:cluster()} 时在指示变量下像 {cmd:regress} 一样工作。请见 {manhelp areg R}。

{marker paneldata}{...}
{title: 统计中的新功能（纵向/面板数据）}

{phang2}
1.  新命令 {cmd:xtset} 声明数据集为面板数据并指定识别面板的变量。在 Stata 的早期版本中，您使用 {opt i(groupvar)} 选项，并有时使用 {opt t(timevar)} 来识别面板。您在想要使用的 {cmd:xt} 命令中指定 {cmd:i()} 和 {cmd:t()} 选项。现在您必须先执行 {cmd:xtset} {it:groupvar} 或 {cmd:xtset} {it:groupvar} {it:timevar}。如果您保存数据集，您设置的值将在一个会话中记住。

{pmore2}
    {cmd:xtset} 还提供了新功能。{cmd:xtset} 允许选项 {cmd:delta()} 指定时间序列数据的频率当您使用 Stata 新的日期/时间变量时。

{pmore2}
     最后，您仍然可以指定旧选项 {cmd:i()} 和 {cmd:t()}，但它们不再记录。类似的旧命令 {cmd:iis} 和 {cmd:tis} 继续正常工作，但不再记录。见 {manhelp xtset XT}。

{phang2}
2.  新估计命令 {cmd:xtmelogit} 和 {cmd:xtmepoisson} 拟合具有二元和计数响应的嵌套、层次和混合模型；也就是说，您可以拟合具有复杂、嵌套错误成分的逻辑和泊松模型。
    语法与 Stata 的线性混合模型估计器 {cmd:xtmixed} 相同。要拟合毕业模型，{cmd:x1} 上有固定系数，{cmd:x2} 在学校级别上有随机系数，以及在学校和课室级别的随机截距，您输入

{p 12 16 2}
{cmd: xtmelogit graduate x1 x2 || school: x2 || class:}

{pmore2}
    {cmd:predict} 在 {cmd:xtmelogit} 和 {cmd:xtmepoisson} 后将计算预测随机效应。请参见
    {manhelp xtmelogit XT}、
    {manhelp xtmelogit_postestimation XT:xtmelogit 后估计}、
    {manhelp xtmepoisson XT} 和
    {manhelp xtmepoisson_postestimation XT:xtmepoisson 后估计}。

{phang2}
3.  现在提供用于拟合动态面板数据模型的新估计命令：

{p 12 16 2}
a.  现有估计命令 {cmd:xtabond} 使用 Arellano-Bond 估计器拟合动态面板数据模型，但现在按水平报告结果，而不是差异。此外，{cmd:xtabond} 现在将计算 Windmeijer 偏差校正的两步稳健 VCE。见 {manhelp xtabond XT}。

{p 12 16 2}
b.  新估计命令 {cmd:xtdpdsys} 使用 Arellano-Bover/Blundell-Bond 系统估计器拟合动态面板数据模型。{cmd:xtdpdsys} 是 {cmd:xtabond} 的扩展，并在 AR 过程过于持久时产生更小的偏差。{cmd:xtdpdsys} 也比 {cmd:xtabond} 更有效。{cmd:xtabond} 基于差分误差生成结果的时点条件，而 {cmd:xtdpdsys} 基于差异和水平的条件。见 {manhelp xtdpdsys XT}。

{p 12 16 2}
c.  新估计命令 {cmd:xtdpd} 扩展 Arellano-Bond 或 Arellano-Bover/Blundell-Bond 系统估计器，以提供更复杂的模型和模型定义的新语法，因此可以拟合更广泛的模型类，{cmd:xtdpd} 可用于拟合具有序列相关个体特有误差的模型，而 {cmd:xtdpdsys} 和 {cmd:xtabond} 假定没有序列相关性。{cmd:xtdpd} 可以与预设变量的结构相比复杂的模型搭配，看到 {manhelp xtdpd XT}。

{p 12 16 2}
d.  新后估计命令 {cmd:estat} {cmd:abond} 测试第一差分误差中的序列相关性。
    见 {manhelp xtabond_postestimation XT:xtabond 后估计}、 
    {manhelp xtdpdsys_postestimation XT:xtdpdsys 后估计} 和 
    {manhelp xtdpd_postestimation XT:xtdpd 后估计}。

{p 12 16 2}
e.  新后估计命令 {cmd:estat} {cmd:sargan} 
    对超识别限制执行 Sargan 检验。
    见 {manhelp xtabond_postestimation XT:xtabond 后估计}、 
    {manhelp xtdpdsys_postestimation XT:xtdpdsys 后估计} 和 
    {manhelp xtdpd_postestimation XT:xtdpd 后估计}。

{phang2}
4.  现有估计命令 {cmd:xtreg,} {cmd:fe} 现在接受 {cmd:aweight}s、{cmd:fweight}s 和 {cmd:pweight}s。新选项 {cmd:dfadj} 指定集群稳健的 VCE 应该调整以适应内部转换。这以前是默认行为。见 {manhelp xtreg XT}。

{phang2}
5.  现有估计命令 {cmd:xtreg,} {cmd:fe} 和 {cmd:xtreg,} {cmd:re} 原本在面板未嵌套在集群内时，会产生集群稳健的 VCE。有时此 VCE 是一致的，有时则不是。现在您必须指定新的 {cmd:nonest} 选项，以在面板未嵌套在群集中时获取集群稳健的 VCE。

{phang2}
6.  评估分布所使用的数值方法，即求积方法已得到改善。此方法由 {cmd:xt} 随机效应估计命令 {cmd:xtlogit}、{cmd:xtprobit}、{cmd:xtcloglog}、{cmd:xtintreg}、{cmd:xttobit} 和 {cmd:xtpoisson, re normal} 使用。

{p 12 16 2}
a.  对于估计命令，默认方法现在是
	{cmd:intmethod(mvaghermite)}。旧的默认方法是
	{cmd:intmethod(aghermite)}。

{p 12 16 2}
b.  对于命令的新选项 {opt intpoints(#)} 现在允许最多 195 个求积点。默认为 12，旧的上限为 30。
	（具有大随机效应的模型通常需要更多的求积点。）

{p 12 16 2}
c.  估计命令现在可以使用约束，无论选择了哪种求积方法。

{p 12 16 2}
d.  命令 {cmd:quadchk} 在估计后用于验证求积近似是否足够准确，现在生成一个更有信息量的比较表。从前，使用四个更少和四个更多的求积点，如果求积点的数量为 {it:n_q} = 12，该方式是合理的。现在您可以指定显着更大的 {it:n_q}，而 {ul:+}4 则不再有用。现在 {cmd:quadchk} 使用 {bind:{it:n_q} - {cmd:int}({it:n_q}/3)} 和 {bind:{it:n_q} + {cmd:int}({it:n_q}/3)}。

{p 12 16 2}
e.  {cmd:quadchk} 有新选项 {cmd:nofrom}，迫使重新拟合的模型从头开始，而不是从以前的估计结果开始。如果您使用旧的 {cmd:intmethod(aghermite)}，则这很重要，但在您使用新的默认 {cmd:intmethod(mvaghermite)} 时并不重要。

{pmore2}
    见 {manhelp quadchk XT}。

{phang2}
7.  所有 {cmd:xt} 估计命令现在接受选项 {opt vce(vcetype)}。如前所述，{cmd:vce(robust)} 和 {cmd:vce(cluster} {it:varname}{cmd:)} 是指定旧选项 {cmd:robust} 和 {cmd:cluster()} 的正确方式，选项 {cmd:vce()} 还允许其他 VCE 计算。

{phang2}
8.  现有估计命令 {cmd:xtcloglog} 有新选项 {cmd:eform}，请求报告指数化系数；见 {manhelp xtcloglog XT}。

{phang2}
9.  现有估计命令 {cmd:xthtaylor} 现在允许用户仅指定内生时间不变的变量、仅内生时间变化的变量或两者。以前两者都是必需的。见 {manhelp xthtaylor XT}。

{p 7 12 2}
10.  大多数 {cmd:xt} 估计命令现在有了新选项 {cmd:collinear}，指定不删除共线性变量。通常，您不希望指定此选项。用于指定约束系数时，即使变量存在共线性，模型也完全识别。见 {manhelp estimation_options XT:估计选项}。

{p 7 12 2}
11.  现有命令 {cmd:xtdes} 已重命名为 {cmd:xtdescribe}。
    {cmd:xtdes} 继续作为 {cmd:xtdescribe} 的同义词工作。见 {manhelp xtdescribe XT}。

{p 7 12 2}
12.  [XT] 手册已扩展了词汇表。


{marker timeseries}{...}
{title: 统计中的新功能（时间序列）}

{phang2}
1.  所有时间序列分析命令现在支持频率高达 1 毫秒 (ms) 的数据，符合 Stata 新的日期/时间变量的要求。由于您的数据可能并不是以毫秒级别记录的，因此现有命令 {cmd:tsset} 具有新选项 {cmd:delta()}，使您能够指定数据的频率。以前，时间被记录为 {it:t}_0、{it:t}_0 + 1、{it:t}_0 + 2，...，如果时间 = {it:t} 在某些观察的情况下，则对应的滞后观察是观察时间 = {it:t}-1。那仍然是默认值。


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew9to10.sthlp>}