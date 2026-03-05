{smcl}
{* *! version 1.3.0  13sep2017}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew11to12:English Version}
{hline}{...}
{title:版本 12.0 的新特性（与版本 11 的比较）}

{pstd}
此文件列出了与 Stata 版本 12.0 创建对应的更改：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                        年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版本            2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本            2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2   2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本            2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013 至 2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版本            2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011 至 2013    {c |}
    {c |} {bf:此文件}          Stata 12.0 新版本            2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版本            2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版本            2007            {c |}
    {c |} {help whatsnew9_zh}        Stata 9.0、9.1 和 9.2       2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata 9.0 新版本            2005            {c |}
    {c |} {help whatsnew8_zh}        Stata 8.0、8.1 和 8.2       2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata 8.0 新版本            2003            {c |}
    {c |} {help whatsnew7_zh}        Stata 7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata 7.0 新版本            2000            {c |}
    {c |} {help whatsnew6_zh}        Stata 6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改优先列出。

{hline 3} {hi:最近更新} {hline}

{pstd}
见 {help whatsnew12_zh}。

{hline 3} {hi:Stata 12.0 版本日期 2011年7月25日} {hline}

{title:备注}

{pstd}
我们将逐项列出所有更改，但首先，以下是亮点。

{marker highlights}{...}
    {title:新特性（亮点）}

{pstd}
以下是亮点。 还有更多，不要因为我们提到一个类别就假设我们提到了该类别中的所有新内容。
详细部分跟随亮点。

{phang2}
1.
    {bf:自动内存管理}，这意味着您不再需要 {cmd:set} {cmd:memory}，并且不再会被告知由于设置内存过小而没有空间！
    Stata 会根据当前需求自动调整其内存使用。

{pmore2}
    内存管理器是可调的。 我们建议使用默认设置。
    如果您感兴趣，请参见 {help memory_zh:[D] memory}。

{pmore2}
    旧的 do-file 仍然可以 {cmd:set} {cmd:memory}。 Stata 仅作出回应：
    "{cmd:set memory} 被忽略"。

{phang2}
2.
    {bf:结构方程模型（SEM）}，通过新的 {cmd:sem} 命令本身即为新
    {mansection SEM sem:{it:Stata 结构方程模型参考手册}} 的主题。 
    SEM 拟合多元线性模型，能够包含观察到的
    和潜在变量。这些模型包括 
    证实性因子分析、 
    线性模型、 
    工具变量、 
    2SLS、3SLS、 
    多元回归、
    表面不相关最小二乘法、 
    递归系统、
    同时系统、
    路径分析、 
    潜变量、
    MIMIC、 
    直接和间接效应建模，
    以及更多。
    以上所有模型均可通过最大似然估计，包括缺失值，使用 GLS 或 ADF
    （渐近分布自由，也称为 GMM）。
    缺失值使用 FIML 处理。
    报告原始和标准化系数及效应。
    所有模型可在各组间进行拟合，并包括组不变性测试。
    提供修改指数和评分检验。

{pmore2}
    可以通过命令或交互式路径图指定和报导模型。有关详细信息，请参阅 {help sem_zh:[SEM] sem}。

{phang2}
3.
    {bf:MI}，多重插补， 

{phang3}
a.
        {bf:链式方程}，即完全条件
        规格 
        用于根据连续、二进制、序数、基数或计数变量的任意模式填补缺失值。
        见 {helpb mi impute chained:[MI] mi impute chained}。

{phang3}
b.
        {bf:四种新的插补方法}。 你可以插补

                1) 截断数据，
                2) 区间左截断数据，
                3) 计数数据，
                4) 过度离散的计数数据。

{pmore2}
见 
               {helpb mi impute truncreg:[MI] mi impute truncreg},
               {helpb mi impute intreg:[MI] mi impute intreg},
               {helpb mi impute poisson:[MI] mi impute poisson}，和
               {helpb mi impute nbreg:[MI] mi impute nbreg}。

{phang3}
c. 
        {bf:条件插补}现在受到所有单变量 
        插补方法的支持，意味着您可以在有约束的情况下插补
        变量的值，例如，插补怀孕次数仅针对女性，即使女性本身也是插补的。
        请参见 {mansection MI miimputeRemarksandexamplesConditionalimputation:{it:条件插补}}
         在 {bf:[MI] mi impute}
        中以及单变量插补条目中的新选项 {cmd:conditional()} 
        例如 {helpb mi impute regress:[MI] mi impute regress}。

{phang3}
d.
        {bf:按组插补}，即，可以对数据的不同组进行单独插补。 
        见新选项 {cmd:by()} 在 
        {helpb mi impute:[MI] mi impute} 中。

{phang3}
e.
        {bf:通过从引导样本中绘制后验估计进行插补}。
        请参见单变量插补条目中的新选项 {cmd:bootstrap} 
        例如 {helpb mi impute regress:[MI] mi impute regress}。

{phang3}
f.
        {bf:面板数据和多级模型} 现在得到 
        {cmd:mi estimate} 的支持。  
        包括 
        {cmd:xtcloglog}、 
        {cmd:xtgee}、 
        {cmd:xtlogit}、 
        {cmd:xtmelogit}、 
        {cmd:xtmepoisson}、 
        {cmd:xtmixed}、 
        {cmd:xtnbreg}、 
        {cmd:xtpoisson}、 
        {cmd:xtprobit}、 
        {cmd:xtrc} 和
        {cmd:xtreg}。
        见 {helpb mi estimation:[MI] estimation}。

{phang3}
g.
        {bf:MI 估计后线性和非线性预测}
        使用新命令 {cmd:mi predict} 和 {cmd:mi predictnl}。
        见 {helpb mi predict:[MI] mi predict}。

{phang3}
h.
        {bf:蒙特卡洛自助法误差估计}
        通过省略一个插补，然后重新应用组合规则以获得的。 
        见 {helpb mi estimate:[MI] mi estimate} 中的新选项 {cmd:mcerror}。

{phang2}
4. {bf:纵向/面板数据},

{phang3}
a. {bf:xtmixed 的调查特征支持}包括 
    多级采样权重和稳健方差估计。
    见 {help xtmixed_zh:[XT] xtmixed}。

{phang3}
b. {bf:xtmixed、xtmelogit 和 xtmepoisson 的文档}
	      {bf:已修改，以采用文献中关于分层模型的标准 "级别" 术语。}
	      请参阅 {bf:[XT] xtmixed} 和 {bf:[XT] xtmelogit} 中的
	      {it:简介}部分。

{phang3}
c. {bf:xtmixed 现在使用最大似然（ML）作为默认}
	  {bf:估计方法}。 见 {help xtmixed_zh:[XT] xtmixed}。

{phang2}
5. 
    {bf:等高线图}。  可用填充和轮廓图。
    见 {helpb twoway contour:[G-2] graph twoway contour} 和
        {helpb twoway contourline:[G-2] graph twoway contourline}。

{phang2}
6.
    {bf:对比}，即，涉及因子变量及其交互作用的线性假设检验，
    从最近拟合的模型中，该模型可以是 Stata 能拟合的几乎任何模型。
    检验包括主效应的 ANOVA 风格检验、简单
    效应、交互效应和嵌套效应。效应可以分解为
    与参考类别的比较、相邻水平的比较、
    与总体均值的比较等。
    见 {help contrast_zh:[R] contrast} 和
        {helpb margins contrast:[R] margins, contrast}。

{phang2}
7.
    {bf:均值的成对比较}，预计单元均值、预计 
    边际均值、线性和非线性响应的预测边际、 
    截距和斜率。
    除了 ANOVA 风格的比较外，还可以进行
    人口平均的比较。
    见 {help pwmean_zh:[R] pwmean}、 {help pwcompare_zh:[R] pwcompare} 和
        {helpb margins pwcompare:[R] margins, pwcompare}。

{phang2}
8.
    {bf:边际、边际效应、对比和成对} 
    {bf:比较的图形}。 可以从线性或
    非线性（例如，概率）响应中获得边际和效应。 见
    {help marginsplot_zh:[R] marginsplot}。

{phang2}
9.
     {bf:时间序列}， 

{phang3}
a.
        {bf:MGARCH}，即多元 GARCH，即
        多元广义自回归条件异方差模型的波动性估计，
        包括常数、动态和变化的条件相关性，也称为
        CCC、DCC 和 VCC 模型。
        这些模型中的创新可以遵循多元正态或学生 t 分布。
        见 {help mgarch_zh:[TS] mgarch}。 

{phang3}
b.
        {bf:UCM}，即未被观察的成分模型，也称为
        结构时间序列模型，将一个序列分解为趋势、
        季节性和周期性成分，并且流行于
        {help whatsnew11to12##H1989:Harvey (1989)}。
        见 {help ucm_zh:[TS] ucm}。

{phang3}
c.
        {bf:ARFIMA}，即自回归分数集成
        移动平均模型，适用于长记忆过程。
        见 {help arfima_zh:[TS] arfima}。

{phang3}
d.
        {bf:用于提取商业周期和季节性周期的过滤器}。 提供了四种
        流行的时间序列过滤器：
        巴克斯特-金过滤器
	    和克里斯蒂亚诺-菲茨杰拉德带通过滤器，
        以及巴特沃斯和霍德里克-普雷斯科特
        高通过滤器。 见 {help tsfilter_zh:[TS] tsfilter}。

{p 7 12 2}
10.
    {bf:营业日期}允许您定义自己的日历，以便 
    它们能够正确显示并且滞后和提前能够正常工作。
    您可以创建文件 {cmd:lse.stbcal}，记录
    伦敦证券交易所开的日期（或关闭的日期），然后 Stata 将理解 
    格式 {cmd:%tblse}，就像它理解常规日期格式
    {cmd:%td} 一样。 一旦您定义了日历，Stata 就能够深入理解它。 例如，您可以轻松地在 {cmd:%tblse} 和 {cmd:%td}
    值之间进行转换。 见
    {helpb datetime business calendars:[D] datetime business calendars}。  

{p 7 12 2}
11.
    {bf:改进的日期和时间变量文档}。
    任何曾经对 Stata 的日期和时间变量感到困惑的人， 
    也就是任何使用它们的人，都应该查看
    {help datetime_zh:[D] datetime}、 
    {helpb datetime translation:[D] datetime translation} 
    和 {helpb datetime display formats:[D] datetime display formats}。

{p 7 12 2}
12.
     {bf:调整协变量的 ROC}，这意味着您可以建模 ROC 曲线并获取系数、标准误差和图形。
     支持非参数和参数估计。
     见 {help rocreg_zh:[R] rocreg} 和 {help rocregplot_zh:[R] rocregplot}。

{p 7 12 2}
13.
    {bf:调查 SDR 权重}，即，连续差异重抽样权重，许多来自美国人口普查局的数据集均提供此权重。 
    见 {helpb svy sdr:[SVY] svy sdr}。 

{p 7 12 2}
14.
    {bf:使用用户提供的引导重复权重进行调查数据的自助法标准误差}。 
    见 {helpb svy bootstrap:[SVY] svy bootstrap}。
    
{p 7 12 2}
15.
    {bf:导入与导出}， 

{phang3}
a.
        {bf:Excel 文件}。 
        新的导入预览工具可以让您在导入数据之前查看数据。
        见 {helpb import excel:[D] import excel}。  

{phang3}
b.
       {bf:EBCDIC 文件，导入}。 
        您可以在 EBCDIC 和 ASCII 格式之间转换；
        见 {help infile2_zh:[D] infile (fixed format)} 和
            {help filefilter_zh:[D] filefilter}。

{phang3}
c.
        {bf:ODBC 连接字符串}。
        见 {help odbc_zh:[D] odbc}。

{phang3}
d.
        {bf:图形和日志的 PDF 导出}让您可以直接从 Stata 结果创建 
        PDF 文件。
        见 {helpb graph export:[G-2] graph export} 和 
        {help translate_zh:[R] translate}。

{p 7 12 2}
16. 
    {bf:重命名变量组}现在很简单，使用 {cmd:rename} 的新语法与其旧语法完全兼容。
    您可以更改名称、交换名称、重新编号变量名称中的索引 
    等等。 见 {helpb rename group:[D] rename group}。 

{p 7 12 2}
17.
    {bf:Stata 界面}，

{phang3}
a.
        {bf:新布局}更宽，并且适合大多数屏幕。

{phang3}
b.
        {bf:新属性窗口}
        让您管理变量的属性，包括
        名称、标签、值标签、
        笔记、显示格式和存储类型。  
        您还可以管理数据集的属性。

{phang3}
c.
        {bf:审查和变量窗口的过滤}让您
        输入文本并只查看匹配的项。

{phang3}
d. 
        {bf:结果窗口中的搜索}让您找到结果。

{phang3}
e.
        {bf:表达式生成器现在可以访问参数估计、}
        {bf:返回结果、宏等}，
        因此您可以为 {cmd:nlcom} 和 {cmd:testnl} 构建表达式。值得测试。

{phang3}
f.
        {bf:Mac 的统一接口}意味着再也没有丢失窗口；
        所有 Stata 窗口都连接在一起。

{phang3}
g.
        {bf:Mac 的手势支持}使更改字体大小和向前、向后移动变得容易。

{phang3}
h. 
        {bf:Mac 的标签图形}。
      
{phang3}
i.
        {bf:Windows 的文件拖放} -- Stata 对于 Mac 已经有
        它 -- 现在 Windows 的 Stata 也有它。

{p 7 12 2}
18.
    {bf:数据编辑器}，

{phang3}
a. 
        {bf:管理变量的新工具} 
        允许您隐藏/显示变量（并包括过滤！），
        对变量进行排序，并通过拖放重新排序变量。
        并且它包括 Stata 的新属性工具，因此您可以更轻松地从数据编辑器管理数据。尝试一下。点击工具栏中的变量工具。

{phang3}
b.
        {bf:新的剪贴板预览工具} 
        让您在将数据粘贴到 Stata 之前查看数据，
        并让您控制数据的粘贴方式。

{phang3}
c. 
        {bf:剪贴板在 Stata 内部复制和粘贴数据时保留变量属性}，
        如显示格式和类型。

{p 7 12 2}
19.
    {bf:全新查看器}， 

{phang3}
a.
        {bf:快速访问对话框、部分和 "也见" 参考}，通过
        三个下拉菜单位于查看器顶部以便于快速导航
        在帮助文件内。

{phang3}
b.
        {bf:标签化的查看器}让您打开多个帮助文件和文档并切换它们。 
 
{p 7 12 2}
20.
    {bf:Do 文件编辑器}，

{phang3}
a.
        {bf:Mac 和 Unix 的标签化} -- Windows 的 Stata 已经有它 --
        现在 Mac 和 Unix 的 Stata 也有它。

{phang3}
b.
        {bf:Mac 的语法高亮和书签} -- Windows 的 Stata 已经有它 --
        现在 Mac 的 Stata 也有它。

{p 7 12 2}
21.
    {bf:改进的估计输出}，

{phang3}
a.
        {bf:基线赔率现在显示}，这意味着 {cmd:logistic} 和 {cmd:logit} 会显示指数化的 
        截距。 实际上，当指定选项 {cmd:or} 时，所有估计命令都显示指数化的截距。 
        例如， {cmd:poisson} 显示基线发生率
        当指定选项 {cmd:irr} 时。

{phang3}
b.
        {bf:隐含的零系数现在显示}。 当系数被省略时，现显示为零，并且省略的原因 -- 共线性、基数、空状态 -- 会显示在
        标准误差列中。 （如果由于共线性省略，则显示“省略”字样。）

{phang3}
c.
        {bf:您可以设置系数表中} 
        {bf:所有值的显示精度}，使用 {cmd:set} {cmd:cformat}、 
        {cmd:set} {cmd:pformat} 和 {cmd:set} {cmd:sformat}。
        或者，您还可以在所有估计命令上使用现在允许的选项 
        {cmd:cformat()}、{cmd:pformat()} 和 
        {cmd:sformat()}。
        见 {helpb set cformat:[R] set cformat} 和
            {helpb estimation options:[R] estimation options}。

{phang3}
d.
         估计命令现在遵循结果窗口的宽度。
        此特性可以通过新的显示选项 {cmd:nolstretch} 关闭。
        见 {helpb estimation options:[R] estimation options}。

{phang3}
e.
        {bf:您现在可以设置是否显示基线水平、空单元和省略的项} 
        使用 {cmd:set} {cmd:showbaselevels}、 
        {cmd:set} {cmd:showemptycells} 和 
        {cmd:set} {cmd:showomitted}。  
        见 {helpb set showbaselevels:[R] set showbaselevels}。

{p 7 12 2}
22.
    {bf:更多 MP 速度提升}，意味着 Stata/MP 的执行更快。

{phang3}
a.
        {bf:对估计中使用的因子变量的 MP 支持改进}。
        当有很多级别时，执行速度大大提高。

{phang3}
b.
        {bf:当协变量数量庞大时，最大似然执行更快}。
        当协变量达到 300 个或更多时，通过变量分配处理器
        会导致性能改善。

{phang3}
c.
        {bf:在 16 个或更多核心上性能提高}，得益于更好的调优。

{phang3}
d.
        {bf:现在支持高达 64 个核心}，而之前为 32 个。

{p 7 12 2}
23.
    {bf:提供安装资格}的新工具
    您可以免费下载。  
    该工具生成一份报告以提交给监管机构 
    例如 FDA，以建立 Stata 的安装是
    正确的。
    访问 
    {browse "http://www.stata.com/support/installation-qualification/":http://www.stata.com/support/installation-qualification/}。


    {title:图形用户界面和命令界面的新特性}

{phang2}
1.
    {bf:亮点，}{p_end}
{phang3}a. {bf:新布局。}
{p_end}
{phang3}b. {bf:新属性窗口。}
{p_end}
{phang3}c. {bf:审查和变量窗口的过滤。}
{p_end}
{phang3}d. {bf:结果窗口中的搜索。}
{p_end}
{phang3}e. {bf:表达式生成器可以访问参数估计，....}
{p_end}
{phang3}f. {bf:Mac 的统一接口。}
{p_end}
{phang3}g. {bf:Mac 的手势支持。}
{p_end}
{phang3}h. {bf:Mac 的标签图形。}
{p_end}
{phang3}i. {bf:Windows 的文件拖放。}
{p_end}
{phang3}j. {bf:数据编辑器，管理变量的新工具。}
{p_end}
{phang3}k. {bf:数据编辑器，新的剪贴板预览工具。}
{p_end}
{phang3}l. {bf:数据编辑器，剪贴板保留变量属性。}
{p_end}
{phang3}m. {bf:新查看器，快速访问对话框、部分，....}
{p_end}
{phang3}n. {bf:新查看器，标签化。}
{p_end}
{phang3}o. {bf:Do-file 编辑器，Mac 和 Unix 的标签化。}
{p_end}
{phang3}p. {bf:Do-file 编辑器，Mac 的语法高亮和书签。}
{p_end}
{pmore2}见 {it:{help whatsnew11to12##highlights:新特性（亮点）}}。

{phang2}
2.
    {bf:Windows 7 中查看器的 Aero Snap 功能。}

{phang2}
3.
    {bf:Unix 的 Stata 对话框现在具有完整的变量列表控件。}


    {title:数据管理的新特性}

{phang2}
1. 
    {bf:亮点，}{p_end}
{phang3}a. {bf:自动内存管理。}
              见 {help memory_zh:[D] memory}。

{phang3}b. {bf:Excel 文件，导入和导出。}
              见 {helpb import excel:[D] import excel}。

{phang3}c. {bf:EBCDIC 文件，导入。}
              见 {help infile2_zh:[D] infile (fixed format)} 和
                  {help filefilter_zh:[D] filefilter}。

{phang3}d. {bf:ODBC 连接字符串，导入和导出。}
              见 {help odbc_zh:[D] odbc}。

{phang3}e. {bf:PDF 文件，图形和日志的导出。}
              见 {help translate_zh:[R] translate}。

{phang3}f. {bf:营业日期。}
              见
           {helpb datetime business calendars:[D] datetime business calendars}。

{phang3}g. {bf:改进的日期和时间变量文档。}
              见 {help datetime_zh:[D] datetime}、 
                  {helpb datetime translation:[D] datetime translation} 和
                  {helpb datetime display formats:[D] datetime display formats}。

{phang3}h. {bf:重命名变量组。}
              见 {helpb rename group:[D] rename group}. 

{pmore2}见 {it:{help whatsnew11to12##highlights:新特性（亮点）}}。

{phang2}
2.
    {bf:新函数，}

{phang3}
a.
        {bf:土耳其的学生化范围}，总计和逆， 
        {cmd:tukeyprob()} 和 {cmd:invtukeyprob()}。

{phang3}
b.
        {bf:邓尼特的多重范围}，总计和逆， 
        {cmd:dunnettprob()} 和 {cmd:invdunnettprob()}。

{phang3}
c.
        {bf:新的日期转换函数}
         {cmd:dofb()} 和 {cmd:bofd()} 在商业日期 
         和标准日历日期之间进行转换。
         见
          {helpb datetime business calendars:[D] datetime business calendars}。

{pmore2}
    见 {help functions_zh:[FN] 按类别的函数}。

{phang2}
3.
    {bf:Oracle Solaris 的 ODBC 支持。}
    见 {help odbc_zh:[D] odbc}。

{phang2}
4.
   {bf:新的 Stata 命令 getmata 和 putmata} 使得
   将数据传输到 Mata、操纵数据、然后再传回 Stata 变得容易。  
   {cmd:getmata} 和 {cmd:putmata} 特别设计用于交互式使用。 
   见 {help putmata_zh:[D] putmata}。

{phang2}
5.
   {bf:新的 Stata 命令 import sasxport、export sasxport，以及}
   {bf:import sasxport、describe} 替代现有的命令 {cmd:fdause}、
   {cmd:fdasave} 和 {cmd:fdadescribe}。 
   {cmd:fdause}、{cmd:fdasave} 和 {cmd:fdadescribe} 被理解为同义词。 
   见 {helpb import sasxport:[D] import sasxport}。

{phang2}
6.
    {bf:Mac 的 xshell 支持}。
    见 {help shell_zh:[D] shell}。


    {title:统计学（一般）的新特性}

{phang2}
1. 
    {bf:亮点，}{p_end}
{phang3}a. {bf:对比}。
              见 {help contrast_zh:[R] contrast} 和 
              {helpb margins contrast:[R] margins, contrast}。

{phang3}b. {bf:成对比较}。
              见 {help pwmean_zh:[R] pwmean}、 
              {help pwcompare_zh:[R] pwcompare} 和 
              {helpb margins pwcompare:[R] margins, pwcompare}。

{phang3}c. {bf:边际、边际效应、对比的图形，....}
              见 {help marginsplot_zh:[R] marginsplot}。

{phang3}d. {bf:调整协变量的 ROC。}
              见 {help rocreg_zh:[R] rocreg} 和 
              {help rocregplot_zh:[R] rocregplot}。

{phang3}e. {bf:估计输出改进}:{break}
              {bf:--现显示基线赔率。}{break}
              {bf:--现显示隐含的零系数。}{break}
              {bf:--您可以设置显示精度。}见
              {helpb set cformat:[R] set cformat}
                  和 {helpb estimation options:[R] estimation options}.{break}
              {bf:--估计命令现在遵循结果窗口的宽度。}
                   见 {helpb estimation options:[R] estimation options}.{break}
	      {bf:--您现在可以设置基线水平、空单元和}
	      {bf:省略项的显示。}见
              {helpb set showbaselevels:[R] set showbaselevels} 和
              {helpb estimation options:[R] estimation options}。

{pmore2}见 {it:{help whatsnew11to12##highlights:新特性（亮点）}}。

{phang2}
2.
    {bf:不使用 _b[] 符号的不带系数名称的检验现在被允许}，
    即使指定的变量在当前数据集中不再存在。
    见 {help test_zh:[R] test}。

{phang2}
3. 
      {bf:areg 现在更快。}
      当存在数百个吸收组时，即使您没有运行 Stata/MP，
      {cmd:areg} 的速度也要快得多。 
      见 {help areg_zh:[R] areg}。

{phang2}
4. 
    {bf:misstable summarize 现在将创建记录 }
    {bf:缺失值模式的汇总变量}。 见新选项 {cmd:generate()} 
    适用于 {cmd:summarize} 的 {help misstable_zh:[R] misstable}。

{phang2}
5.
    {bf:margins 命令支持对比}。
    见 {helpb margins contrast:[R] margins, contrast} 和 
    {help contrast_zh:[R] contrast}。

{phang2}
6.
    {bf:sfrancia 使用更好的算法}。
    {cmd:sfrancia} 现在使用基于对数变换的算法，为
    测试正态性近似 W' 统计量的采样分布。 旧的算法使用
    Box-Cox 变换，可以通过版本控制或者
    新的 {cmd:boxcox} 选项获得。 根据模拟，新算法在样本量超过 1,000 时具有更好的功效，
    在样本量少于 1,000 时与旧算法相比是相当的。 同样，类似于 {cmd:swilk}， 
    {cmd:sfrancia} 现在允许在使用 {cmd:noties} 选项时抑制处理平局的情况。 
    见 {help swilk_zh:[R] swilk}。

{phang2}
7.
    {bf:logistic 现在允许选项 noconstant。}
    见 {help logistic_zh:[R] logistic}。

{phang2}
8.
    {bf:概率预测现已可用。}
    {cmd:predict} 在计数数据模型（如 {cmd:poisson} 和 
    {cmd:nbreg}）之后现在可以预测任何计算或计数范围的概率。
    见 {helpb nbreg postestimation:[R] nbreg postestimation}、 
    {helpb poisson postestimation:[R] poisson postestimation}、 
    {helpb tnbreg postestimation:[R] tnbreg postestimation}、 
    {helpb tpoisson postestimation:[R] tpoisson postestimation}、 
    {helpb zinb postestimation:[R] zinb postestimation} 和 
    {helpb zip postestimation:[R] zip postestimation}。

{phang2}
9.
    {bf:现已可用的截断计数数据模型}。
    新的估计命令 {cmd:tpoisson} 和 {cmd:tnbreg} 
    适用于任何形式的左截断计数数据的计数数据结果模型， 
    该命令逐观察地包含不同的截断。  
    这些新命令取代了 {cmd:ztp} 和 {cmd:ztnb}。 
    见 {help tpoisson_zh:[R] tpoisson} 和 {help tnbreg_zh:[R] tnbreg}。

{p 7 12 2}
10.
   {bf:cnsreg 在估算前检查共线性变量}并具有新选项 {cmd:collinear}， 
   可以保留共线性变量，而不是省略它们。 之前始终保留共线性
   变量的旧行为在版本控制下保留。 
   见 {help cnsreg_zh:[R] cnsreg}。

{p 7 12 2}
11.
    {bf:ml 改进，}

{phang3}a.
        {cmd:ml} 现在将 {cmd:technique(nr)} 生成的 Hessian 矩阵与
	其他计算替代 Hessian 矩阵的技术区分开。
	这意味着 {cmd:ml} 将计算二次导数的真实 Hessian 矩阵，以确定收敛，当所有
	其他收敛容忍度都满足时，并且 {cmd:technique(bfgs)}、
        {cmd:technique(bhhh)} 或 {cmd:technique(dfp)} 处于作用中。

{pmore3}
         旧行为是使用 {cmd:nrtolerance()} 值与
         与当前实施的 {cmd:technique()} 相关联的 H 矩阵以确定收敛;
         此行为在版本控制下保留。

{phang3}b.
        {cmd:ml} 具有新选项 {cmd:qtolerance()}，
        在指定 {cmd:technique(bfgs)}、{cmd:technique(bhhh)} 或
        {cmd:technique(dfp)} 时将其与 {cmd:nrtolerance()} 区分开。 
        当指定 {cmd:technique(bfgs)}、{cmd:technique(bhhh)} 或
        {cmd:technique(dfp)} 时，选项 {cmd:qtolerance()} 替代 {cmd:nrtolerance()}。

{pmore2}
    见 {help ml_zh:[R] ml} 和 {help maximize_zh:[R] maximize}。

{p 7 12 2}
12.
    {bf:margins 具有新选项 estimtolerance() 设置容忍度} 
    用于确定可估计函数。
    见 {help margins_zh:[R] margins}。

{p 7 12 2}
13.
     {bf:选项 addplot() 现在可以将添加的图形放置在顶部或底部。}
     允许使用选项 {cmd:addplot()} 的命令 
     现在可以将添加的图形放置在命令图形的顶部或底部。 


    {title:时间序列统计的新特性}

{phang2}
1. 
    {bf:亮点，} 

{phang3}a. {bf:MGARCH。}
              见 {help mgarch_zh:[TS] mgarch}。

{phang3}b. {bf:UCM。}
              见 {help ucm_zh:[TS] ucm}。

{phang3}c. {bf:ARFIMA。}
              见 {help arfima_zh:[TS] arfima}。

{phang3}d. {bf:用于提取商业和季节性周期的过滤器。}
              见 {help tsfilter_zh:[TS] tsfilter}。

{phang3}e. {bf:营业日期。}
              见
            {helpb datetime business calendars:[D] datetime business calendars}。

{phang3}f. {bf:改进的日期和时间变量文档。}
              见
              {help datetime_zh:[D] datetime}、 
              {helpb datetime translation:[D] datetime translation}、 
              和 {helpb datetime display formats:[D] datetime display formats}。

{phang3}g. {bf:对比}在许多时间序列估计命令后可用。 
              见 {help contrast_zh:[R] contrast} 和 
              {helpb margins contrast:[R] margins, contrast}。

{phang3}h. {bf:成对比较}
              在许多时间序列估计命令后可用。
              见 {help pwcompare_zh:[R] pwcompare} 和 
              {helpb margins pwcompare:[R] margins, pwcompare}。

{phang3}i. {bf:边际、边际效应、对比和}
	   {bf:成对比较的图形}可在大多数时间序列估计命令后获得。 
           见 {help marginsplot_zh:[R] marginsplot}。

{phang3}j. {bf:估计输出改进。}{break}
              {bf:--现显示隐含的零系数。}{break}
              {bf:--您可以设置显示精度。}
              见 {helpb set cformat:[R] set cformat} 和
               {helpb estimation options:[R] estimation options}.{break}
              {bf:--估计命令现在遵循结果窗口的宽度。}
                   见 {helpb estimation options:[R] estimation options}.{break}
	      {bf:--您现在可以设置基线水平、空单元和}
	      {bf:省略项的显示。}见
                {helpb set showbaselevels:[R] set showbaselevels} 和
                {helpb estimation options:[R] estimation options}。

{pmore2}见 {it:{help whatsnew11to12##highlights:新特性（亮点）}}。

{phang2}
2.
    {bf:来自参数模型的谱密度}通过新的后估计命令 {cmd:psdensity} 使您能够使用 {cmd:arfima}、{cmd:arima}
    和 {cmd:ucm} 进行估计，然后获得隐含的谱密度。 见 {help psdensity_zh:[TS] psdensity}。

{phang2}
3.
    {bf:dvech 被重命名为 mgarch dvech。} 适用于拟合对角 VECH 模型的命令现在命名为 {cmd:mgarch dvech}，并且创新可能遵循多元正态或学生 t 分布。 
    见 {help mgarch_zh:[TS] mgarch}。

{phang2}
4.
    {bf:所有 64 位 Windows 上都支持从 Haver Analytics 加载数据。}
    见 {help haver_zh:[TS] haver}。

{phang2}
5.
     {bf:选项 addplot() 现在可以将添加的图形放置在顶部或底部。}
     允许使用选项 {cmd:addplot()} 的图形命令 
     现在可以将添加的图形放置在命令图形的顶部或底部。 
     可受此影响的命令有 
     {cmd:corrgram}、{cmd:cumsp}、{cmd:pergram}、{cmd:varstable}、{cmd:vecstable}、{cmd:wntestb} 和
     {cmd:xcorr}。


    {title:调查统计的新特性}

{phang2}
1.
    {bf:亮点，} 

{phang3}a. {bf:对比}在调查估计之后可用。
              见 {help contrast_zh:[R] contrast} 和 
              {helpb margins contrast:[R] margins, contrast}。

{phang3}b. {bf:成对比较}在调查估计之后可用。
              见 
              {help pwcompare_zh:[R] pwcompare} 和 
              {helpb pwcompare postestimation:[R] pwcompare postestimation}。

{phang3}c. {bf:边际、边际效应、对比和成对} 
              {bf:比较的图形在调查估计之后可用。}  
              见 {help marginsplot_zh:[R] marginsplot}。

{phang3}d. {bf:调查 SDR 权重。}
              见 {helpb svy sdr:[SVY] svy sdr}。

{phang3}e. {bf:调查数据的自助法标准误差。}
              见 {helpb svy bootstrap:[SVY] svy bootstrap}。

{phang3}f. {bf:估计输出改进。}{break}
              {bf:--现显示基线赔率。}{break}
              {bf:--现显示隐含的零系数。}{break}
              {bf:--您可以设置显示精度。}
              见 {helpb set cformat:[R] set cformat} 和
                {helpb estimation options:[R] estimation options}.{break}
              {bf:--估计命令现在遵循结果窗口的宽度。}
                   见 {helpb estimation options:[R] estimation options}.{break}
	      {bf:--您现在可以设置基线水平、空单元和}
	      {bf:省略项的显示。} 见 
               {helpb set showbaselevels:[R] set showbaselevels} 和
               {helpb estimation options:[R] estimation options}。

{pmore2}见 {it:{help whatsnew11to12##highlights:新特性（亮点）}}。

{phang2}
2.  
    {bf:调查估计可以与新的 SEM} 进行结构方程建模进行结合。
    见 {helpb svy estimation:[SVY] svy estimation} 和
    {help sem_zh:[SEM] sem}。

{phang2}
3.
    {bf:logistic、logit 和 probit 后可用的调查拟合优度}，使用新命令 {cmd:estat gof}。
    见 {helpb svy estat:[SVY] estat}。

{phang2}
4.
    {bf:调查变异系数（CV）可用的新命令 {cmd:estat cv}。} 
    见 {helpb svy estat:[SVY] estat}。


    {title:生存分析统计的新特性}

{phang2}
1. 
    {bf:亮点，} 

{phang3}a. {bf:对比}在 {cmd:stcox}、{cmd:stcrreg} 和 {cmd:streg} 之后可用。
              见 {help contrast_zh:[R] contrast} 和 
              {helpb margins contrast:[R] margins, contrast}。

{phang3}b. {bf:成对比较}在 {cmd:stcox}、{cmd:stcrreg} 和 {cmd:streg} 之后可用。
              见 {help pwcompare_zh:[R] pwcompare} 和 
              {helpb margins pwcompare:[R] margins, pwcompare}。

{phang3}c. {bf:边际、边际效应、对比和}
         {bf:成对比较的图形在 {cmd:stcox}、{cmd:stcrreg} 和 {cmd:streg} 之后可用。}  
              见 {help marginsplot_zh:[R] marginsplot}。

{phang3}d. {bf:估计输出改进。}{break}
              {bf:--现显示隐含的零系数。}{break}
              {bf:--您可以设置显示精度。}{break}
              {bf:--估计命令现在遵循结果窗口的宽度。}
              见 {helpb set cformat:[R] set cformat} 和
                 {helpb estimation options:[R] estimation options}。

{pmore2}见 {it:{help whatsnew11to12##highlights:新特性（亮点）}}。

{phang2}
2.
     {bf:Gonen 和 Heller 的 K 一致性系数}在 Cox 比例风险估计之后可用。 K 对删失数据是稳健的。
     见新选项 {cmd:gheller} 适用于 {cmd:estat concordance} 在
     {helpb stcox postestimation:[ST] stcox postestimation}。

{phang2}
3.
     {bf:选项 addplot() 现在可以将添加的图形放置在顶部或底部。}
     允许使用选项 {cmd:addplot()} 的图形命令 
     现在可以将添加的图形放置在命令图形的顶部或底部。 
     可受此影响的命令有 
     {cmd:ltable}、{cmd:stci}、{cmd:stcoxkm}、{cmd:stcurve}、{cmd:stphplot}、 
     {cmd:strate}、{cmd:sts graph} 和 {cmd:tabodds}。 


    {title:多变量统计的新特性}

{phang2}
1. 
    {bf:亮点，} 

{phang3}a. {bf:结构方程模型（SEM）。}
              见 {help sem_zh:[SEM] sem}。

{phang3}b. {bf:对比。}
              见 {help contrast_zh:[R] contrast} 和 
              {helpb margins contrast:[R] margins, contrast}。

{phang3}c. {bf:成对比较。}
              见 {help pwcompare_zh:[R] pwcompare} 和 
              {helpb margins pwcompare:[R] margins, pwcompare}。

{phang3}d. {bf:边际、边际效应、对比和成对} 
              {bf:比较的图形。} 见 {help marginsplot_zh:[R] marginsplot}。

{pmore2}见 {it:{help whatsnew11to12##highlights:新特性（亮点）}}。

{phang2}
2.
     {bf:选项 addplot() 现在可以将添加的图形放置在顶部或底部。}
     允许使用选项 {cmd:addplot()} 的图形命令 
     现在可以将添加的图形放置在命令图形的顶部或底部。 
     可受此影响的命令有
     {cmd:screeplot} 和 {cmd:cluster} {cmd:dendrogram}；见
     {help screeplot_zh:[MV] screeplot} 和
     {helpb cluster dendrogram:[MV] cluster dendrogram}。 


    {title:多重插补统计的新特性}

{phang2}
1. 
    {bf:亮点，} 

{phang3}a. {bf:链式方程。}
              见 {helpb mi impute chained:[MI] mi impute chained}。

{phang3}b. {bf:四种新的插补方法。}
              见 {helpb mi impute truncreg:[MI] mi impute truncreg}、 
                  {helpb mi impute intreg:[MI] mi impute intreg}、 
                  {helpb mi impute poisson:[MI] mi impute poisson} 和 
                  {helpb mi impute nbreg:[MI] mi impute nbreg}。

{phang3}c. {bf:条件插补。}
              见 
   {mansection MI miimputeRemarksandexamplesConditionalimputation:{it:条件插补}}
             在 {bf:[MI] mi impute}
              中，以及在单变量插补条目中的新选项 {cmd:conditional()} 
              例如 {helpb mi impute regress:[MI] mi impute regress}。

{phang3}d. {bf:按组插补。}
              见在 {helpb mi impute:[MI] mi impute} 中的新选项 {cmd:by()}。

{phang3}e. {bf:通过从引导样本中绘制后验估计进行插补。}
              见在单变量插补条目中的新选项 {cmd:bootstrap} 
              例如 {helpb mi impute regress:[MI] mi impute regress}。

{phang3}f. {bf:现在支持面板数据和多级模型。}
              包括 
              {cmd:xtcloglog}、 
              {cmd:xtgee}、 
              {cmd:xtlogit}、 
              {cmd:xtmelogit}、 
              {cmd:xtmepoisson}、 
              {cmd:xtmixed}、 
              {cmd:xtnbreg}、 
              {cmd:xtpoisson}、 
              {cmd:xtprobit}、 
              {cmd:xtrc} 和
              {cmd:xtreg}。
              见 {helpb mi estimation:[MI] mi estimation}。

{phang3}g. {bf:MI 估计后的线性和非线性预测。}
        见 {helpb mi estimate postestimation:[MI] mi estimate postestimation}。

{phang3}h. {bf:蒙特卡洛自助法误差估计。} 
              见 {helpb mi estimate:[MI] mi estimate} 中的新选项 {cmd:mcerror}。

{phang3}i. {bf:估计输出改进。}{break}
              {bf:--现显示基线赔率。}{break}
              {bf:--现显示隐含的零系数。}{break}
              {bf:--您可以设置显示精度。}
              见 {helpb set cformat:[R] set cformat} 和
                {helpb estimation options:[R] estimation options}.{break}
              {bf:--估计命令现在遵循结果窗口的宽度。}
                   见 {helpb estimation options:[R] estimation options}.{break}
	      {bf:--您现在可以设置基线水平、空单元和}
	      {bf:省略项的显示。}见
              {helpb set showbaselevels:[R] set showbaselevels} 和
              {helpb estimation options:[R] estimation options}。

{pmore2}见 {it:{help whatsnew11to12##highlights:新特性（亮点）}}。

{phang2}
2.
        {bf:处理分类数据插补时的完美预测。}
        通过使用 {cmd:logit}、{cmd:ologit} 和 {cmd:mlogit} 进行插补。
        见 {mansection MI miimputeRemarksandexamplesTheissueofperfectpredictionduringimputationofcategoricaldata:{it:处理分类数据插补时的完美预测}} 在 
        {helpb mi impute:[MI] mi impute}
        中，以及在 {helpb mi impute logit:[MI] mi impute logit}、 
        {helpb mi impute ologit:[MI] mi impute ologit} 和 
        {helpb mi impute mlogit:[MI] mi impute mlogit} 中的新选项 {cmd:augment}。

{phang2}
3.
    {bf:插补速度更快。} 
    {cmd:mi impute} 不再秘密地转换为 {cmd:flongsep} 然后再转换回来。

{phang2}
4.
    {bf:mi estimate 现在支持总计。}  
    见 {helpb mi estimation:[MI] estimation}。

{phang2}
5. 
    {bf:misstable summarize 现在将创建记录}
    {bf:缺失值模式的汇总变量}。 见新选项 {cmd:generate()} 
    适用于 {cmd:summarize} 的 {help misstable_zh:[R] misstable}。
    请注意，{cmd:mi} {cmd:misstable} 不具备此新选项。
    新选项在数据插补之前非常有用。

{phang2}
6. 
    {bf:mi estimate} 和 {bf:mi estimate using} 现在在计算缺失信息比例时使用小样本调整，并且随后在计算相对效率时，当指定的
    估计命令提供完全数据自由度时。之前，这些统计数据的计算一直假定为大样本。使用 {cmd:vartable} 选项时会报告缺失信息比例和相对效率。旧行为在版本控制下保留。

{phang2}
7. 
    {bf:mi impute monotone} 在插补模型中保留在插补样本中不包含缺失值的插补变量。
    之前，{bf:mi impute monotone} 假设被省略的变量与插补变量间独立，因此省略此类变量。
    旧行为在版本控制下保留。


    {title:图形的新特性}

{phang2}
1. 
    {bf:亮点，} 

{phang3}a. {bf:边际、边际效应、对比的图形，....}
              见 {help marginsplot_zh:[R] marginsplot}。

{phang3}b. {bf:等高线图。}
              见 {helpb twoway contour:[G-2] graph twoway contour} 和
                  {helpb twoway contourline:[G-2] graph twoway contourline}。

{phang3}c.
        {bf:图形和日志的 PDF 导出}允许您直接创建
        PDF 文件来自 Stata 图形。
        见 {helpb graph export:[G-2] graph export} 和
            {help translate_zh:[R] translate}。

{pmore}见 {it:{help whatsnew11to12##highlights:新特性（亮点）}}。

{phang2}
2. {bf:时间序列运算符现在得到支持}， 
          通过 {cmd:twoway lfit}、 
          {cmd:twoway lfitci}、 
          {cmd:twoway qfit} 和
          {cmd:twoway qfitci}。
          见 
          {helpb twoway lfit:[G-2] graph twoway lfit}、
          {helpb twoway lfitci:[G-2] graph twoway lfitci}、
          {helpb twoway qfit:[G-2] graph twoway qfit} 和
          {helpb twoway qfitci:[G-2] graph twoway qfitci}。

{phang2}
3.
     {bf:边际和协变量特定的 ROC 曲线图形}。
     新命令 {cmd:rocregplot} 在 {cmd:rocreg} 之后绘制拟合的 ROC 曲线。 
     见 {help rocregplot_zh:[R] rocregplot}。

{phang2}
4.
     {bf:选项 addplot() 现在可以将添加的图形放置在顶部或底部。}
     允许使用选项 {cmd:addplot()} 的图形命令 
     现在可以将添加的图形放置在命令图形的顶部或底部。 


    {title:编程的新特性}

{phang2}
1. 
      {bf:存储的结果 r() 和 e() 可以标记为隐藏或历史}，
      这意味着它们在用户输入 {cmd:return} {cmd:list} 
      或 {cmd:ereturn} {cmd:list} 时不会显示，
      除非用户还指定选项 {cmd:all}。 见 {help return_zh:[P] return}。

{phang2}
2. 
     {bf:估计命令现在同时存储在 r() 和 e() 中}。
     {cmd:r()} 值在估计时和重放后存储。
     存储内容包括

{phang3}a.
        {cmd:r(level)}，一个标量，包含置信区间的
        置信水平。

{phang3}b.
        {cmd:r(label}{it:#}{cmd:)}, 一个宏，包含与第 {it:#}
        个系数一起显示的标签，例如 "(base)"、"(omitted)"、 
        或 "(empty)"。

{phang3}c.
        {cmd:r(table)}，一个矩阵，包含在系数表中显示的所有数据。 
        该矩阵是系数表的转置；
        每列包含系数及相关统计量。
        要理解该矩阵，请执行以下操作：

                {cmd}. sysuse auto, clear
                . regress mpg weight displ
                . matrix list r(table){txt}

{pmore2}见 {help ereturn_zh:[P] ereturn}。

{phang2}
3.
   {bf:ereturn display 提供新的选项来控制系数表的外观。}

{phang3}a. 选项 {cmd:noomitted}、{cmd:vsquish}、{cmd:noemptycells}、
{cmd:baselevels} 和 {cmd:allbaselevels} 控制行间距和
省略变量及基线和空单元的显示。 

{phang3}b. 格式显示选项 {cmd:cformat(%}{it:fmt}{cmd:)},
     {cmd:pformat(%}{it:fmt}{cmd:) 和 {cmd:sformat(%}{it:fmt}{cmd:)} 控制
     系数表中数字的格式。

{phang3}c. {cmd:ereturn display} 现在遵循结果窗口的宽度。 此功能可以通过新的显示选项
      {cmd:nolstretch} 关闭。

{pmore2}见 {helpb estimation options:[R] estimation options}。

{phang2}
4.
    {bf:矩阵可以仅包含方程名称的表}
    使用新选项 {cmd:coleqonly} 和 {cmd:roweqonly}。
    见 {help matlist_zh:[P] matlist}。

{phang2}
5.
    {bf:matrix accum 允许选项 absorb()} 在组内累积偏差} 
    {bf:与均值。} 见 {helpb matrix accum:[P] matrix accum}。

{phang2}
6. 
    {bf:随机数生成器的版本控制}现在在设置种子时确定，而不是在使用生成器函数时； 
    见 {help version_zh:[P] version}。 新的 {cmd:creturn} 结果 {cmd:c(version_rng)}
    记录当前对随机数生成器有效的版本号； 
    见 {help creturn_zh:[P] creturn}。

{phang2}
7. 
    {bf:fvrevar 具有新选项 stub()}， 
    生成 stub+index 变量，而不是临时变量。 
    见 {help fvrevar_zh:[R] fvrevar}。

{phang2}
8. 
    {bf:mprobit 现在将基本结果方程发布到 e(b)。}
    见 {help mprobit_zh:[R] mprobit}。

{phang2}
9.
    {bf:网络超时的默认时间已减少。} 
    {cmd:timeout1} 已从 120 秒减少到 30 秒， 
    而 {cmd:timeout2} 已从 300 秒减少到 180 秒。
    见 {help netio_zh:[R] netio}。


    {title:Mata 的新特性}

{phang2}
1.
   {bf:新的 Stata 命令 getmata 和 putmata} 使得
   将数据传输到 Mata、操纵数据、然后再传回 Stata 变得容易。  
   {cmd:getmata} 和 {cmd:putmata} 特别设计用于交互式使用。 
   见 {help putmata_zh:[D] putmata}。

{phang2}
2.
    {bf:从 Stata 导入的新函数，}

{phang3}
a.
        {bf:土耳其的学生化范围}，总计和逆， 
        {cmd:tukeyprob()} 和 {cmd:invtukeyprob()}。

{phang3}
b.
        {bf:邓尼特的多重范围}，总计和逆， 
        {cmd:dunnettprob()} 和 {cmd:invdunnettprob()}。

{phang3}
c.
        {bf:新日期转换函数}
         {cmd:dofb()} 和 {cmd:bofd()} 在商业日期 
         和标准日历日期之间进行转换。
         见 {helpb datetime business calendars:[D] datetime business calendars}。

{pmore2}
    见 {help functions_zh:[FN] 按类别的函数}、
    {help mf_normal_zh:[M-5] normal()} 和 {help mf_date_zh:[M-5] date()}。

{phang2}
3.
    {bf:支持隐藏和历史保存的结果}。
    现有的 Mata 函数 {cmd:st_global()}、{cmd:st_numscalar()} 和
    {cmd:st_matrix()} 现在允许可选的第三个参数指定 
    隐藏或历史状态。
    三个新函数 --  {cmd:st_global_hcat()}、 
    {cmd:st_numscalar_hcat()}、 
    {cmd:st_matrix_hcat()} -- 允许您确定保存的隐藏或
    历史状态。 
    见 {help mf_st_global_zh:[M-5] st_global()}、
    {help mf_st_numscalar_zh:[M-5] st_numscalar()} 和
    {help mf_st_matrix_zh:[M-5] st_matrix()}。 

{phang2}
4.
    {bf:支持新的 ML 特性}。
    Stata 的 {cmd:ml} 现在将由 
    {cmd:technique(nr)} 生成的 Hessian 矩阵与其他计算 Hessian 矩阵替代的技术区分开。
    这意味着 {cmd:ml} 将计算真实的 Hessian
    二次导数矩阵，以在所有其他收敛容忍度得到满足且 {cmd:technique(bfgs)}、 
    {cmd:technique(bhhh)} 或 {cmd:technique(dfp)} 处于生效期间来确定收敛。

{pmore2}
    Mata 的命令 {cmd:optimize()} 和 {cmd:moptimize()} 也进行同样的更改。 
    见 {help mf_optimize_zh:[M-5] optimize()} 和 
        {help mf_moptimize_zh:[M-5] moptimize()}。


    {title:其他}

{pstd}
我们未列出所有更改，但列出了重要的更改。

{pstd}
Stata 不断更新，并且这些更新可以通过互联网免费获取。
您所需做的就是输入 

{phang2}
{cmd:. update query}

{pstd}
并按照说明进行操作。

{pstd}
要了解自本手册印刷以来添加的内容，请选择 
{bf:帮助 > 新特性？} 或输入 

{phang2}
{cmd:. help whatsnew}

{pstd}
希望您喜欢 Stata 12。


    {title:参考}

{marker H1989}{...}
{phang}
Harvey, A. C. 1989.
{it:预测、结构时间序列模型及卡尔曼滤波器}。
剑桥：剑桥大学出版社。


{hline 8} {hi:以前的更新} {hline}

{pstd}
见 {help whatsnew11_zh}.{p_end}

{hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew11to12.sthlp>}