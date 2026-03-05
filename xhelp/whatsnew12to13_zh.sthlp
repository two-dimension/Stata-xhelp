{smcl}
{* *! version 1.2.4  21jun2019}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew12to13:English Version}
{hline}{...}
{title:13.0 版本的新特性（与 12.0 版本相比）}

{pstd}
本文件列出了 Stata 13.0 发布相关的变更：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                          年份          {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版本              2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1           2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本              2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2     2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本              2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1           2013 至 2015    {c |}
    {c |} {bf:本文件}           Stata 13.0 新版本              2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1           2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版本              2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2     2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版本              2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1           2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版本              2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1 和 9.2       2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版本              2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1 和 8.2       2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版本              2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版本              2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}
{hline}

{pstd}
最新的变更列表在前面。

{hline 3} {hi:更新信息} {hline}

{pstd}
请参见 {help whatsnew13_zh}。

{hline 3} {hi:Stata 13.0 版本发布于 2013年6月17日} {hline}

{title:说明}

{pstd}
我们将逐条列出所有更改，但首先来看看亮点。

{marker highlights}{...}
    {title:新特性（亮点）}

{pstd}
以下是亮点。 还有更多功能，不能因为我们提到某一类别就认为该类别的新特性都已列出。
详细部分在亮点后面。

{marker WnStrls}{...}
{phang2}
1.  {bf:长字符串/BLOBs}.{break}
    字符串变量的最大长度从 244 增加到 2,000,000,000 字符。  标准字符串存储类型 {cmd:str1}、{cmd:str2}、...、{cmd:str244} 现已扩展至 {cmd:str2045}，而后面是 {cmd:strL}，发音为 sturl。  所有 Stata 的字符串函数均可与两亿字符长的字符串一起使用，Stata 的其他功能也一样，包括导入、导出和 ODBC。  {cmd:strL} 变量可以包含二进制字符串。 新函数
     {helpb whatsnew12to13##fileread():fileread()}
    和
     {helpb whatsnew12to13##filewrite():filewrite()},
    使您可以轻松读取和写入整个文件到 {cmd:strL}。

{pmore2}
    请参见 {findalias frstr}。

{pmore2}
    （BLOB 代表二进制大型对象，数据库程序员使用的术语。）

{marker WnTreatmentEffects}{...}
{phang2}
2.  {bf:处理效果。}{break}
    一套新功能让您可以估计平均处理效果（ATE）、受处理者的平均处理效果（ATET）和潜在结果均值（POMs）。 支持二元、多级和多值处理。 您可以建模连续、二元、计数或非负的结果。

{pmore2}
    处理效果估计量可以衡量处理对观察数据中结果的因果影响。

{pmore2}
    针对不同情况提供不同的处理效果估计量。

{pmore2}
    当您知道参与的决定因素（但不知道结果的决定因素）时，提供的是反向概率权重（IPW）和倾向得分匹配。

{pmore2}
    当您知道结果的决定因素（但不知道参与的决定因素）时，提供的是回归调整和协变量匹配。

{pmore2}
    当您同时知道两者的决定因素时，提供增强型 IPW 和与回归调整相结合的 IPW 的双重稳健方法。这些方法是双重稳健的，因为您只需要对结果或参与的规范正确。

{pmore2}
    还提供两种不需要条件独立性的估计量。 条件独立性意味着在观察到的协变量条件下，处理和观察到的结果不相关。 反过来，条件独立性意味着选择可观察数据。 新估计命令 {cmd:etregress} 和 {cmd:etpoisson} 放宽了这个假设。  ({cmd:etregress} 是旧命令 {cmd:treatreg} 的更新版本； {cmd:etpoisson} 是新的。)

{pmore2}
    请查看全新的
    {mansection TE teTreatmentEffects:{it:Stata Treatment-Effects Reference Manual}},
    特别是，查看 {helpb teffects intro:[TE] teffects intro}。

{pmore2}
    顺便说，如果您对处理效果感兴趣，还可以查看 {findalias gsemtreat}，我们在那里使用 {cmd:gsem} -- Stata 13 的另一项新功能 -- 来拟合一个内生处理效果模型，可以修改为允许广义线性结果和多级效果。

{marker WnGsem}{...}
{phang2}
3.  {bf:多级混合效应和广义线性结构方程建模（SEM）。}{break}
    除了标准线性 SEM，Stata 现在提供我们称之为广义 SEM 的新功能。  
    广义 SEM 允许广义线性响应函数并允许多级混合效应。

{pmore2}
    广义线性响应函数包括二元结果（probit、logit、cloglog）、计数结果（Poisson、负二项）、分类结果（多项 logit）、有序结果（有序 probit、有序 logit、有序 cloglog）等等，也就是说，广义线性模型（GLM）。  

{pmore2}
    多级混合效应包括嵌套随机效应，例如患者在医生和医院中的效果，以及交叉随机效应。多级混合效应还包括随机截距和随机斜率。

{pmore2}
    在 SEM 的术语中，“多级混合效应”意味着数据的不同层次的潜在变量。这意味着 Stata 13 可以拟合多级测量模型和多级结构方程模型。

{pmore2}
    参见 {manlink SEM Intro 1}。

{pmore2}
    经济学家：请参见 {findalias gsemsel}，我们展示如何使用 Stata 13 的新 SEM 功能来拟合 Heckman 选择模型，该模型可以扩展为广义线性结果和随机效应及随机斜率。

{marker WnMestar}{...}
{phang2}
4.  {bf:新的多级混合效应模型。}{break}
    多级混合效应估计得到了改进和扩展，现已成为单独的手册主题。 Stata 以前有 3 个多级估计命令；现在有 11 个。

{pmore2}
    八个新的多级混合效应估计命令是

                {help melogit_zh}     逻辑回归
                {help meprobit_zh}    probit 回归
                {help mecloglog_zh}   互补对数-对数回归
                {help meologit_zh}    有序逻辑回归
                {help meoprobit_zh}   有序 probit 回归
                {help mepoisson_zh}   Poisson 回归
                {help menbreg_zh}     负二项回归
                {help meglm_zh}       广义线性模型

{pmore2}
    这些新的估计命令允许为方差分量施加约束，提供稳健和集群稳健标准误，并且运行速度快。

{pmore2}
    现有的三个多级估计命令已被重命名： {cmd:xtmixed} 现在是 {help mixed_zh}，{cmd:xtmelogit} 现在是 {help meqrlogit_zh}，{cmd:xtmepoisson} 现在是 {help meqrpoisson_zh}。 现在这三者默认以方差度量而不是标准差度量呈现结果。

{pmore2}
    正如我们所说，多级混合效应建模现在是其自己的手册主题。请参阅
    {mansection ME me:{it:Stata Multilevel Mixed-Effects Reference Manual}},
    特别是，查看 {help me_zh:[ME] me}。

{marker WnForecast}{...}
{phang2}
5.  {bf:基于方程组的预测。}{break}
    Stata 的新 {cmd:forecast} 命令允许您结合来自多个 Stata 命令或其他来源的估计结果，生成动态或静态预测，并生成预测区间。

{pmore2}
    您可以通过使用 Stata 的估计命令拟合模型方程，或者输入您在其他地方获得的结果来开始。 然后，使用 {cmd:forecast} 指定身份和外生变量，获得基准预测。 
    一旦生成基准预测，您可以为某些变量指定替代路径，并根据这些替代路径获得预测。 因此，您可以在不同场景下生成预测，并探讨不同政策的影响。

{pmore2}
    例如，您可以使用 {cmd:forecast} 来生成宏观经济预测。

{pmore2}
    此外，{cmd:forecast} 特别容易使用，因为 {cmd:forecast} 还提供一个直观的交互式控制面板来指导您，如果您做错了什么，{cmd:forecast} 本身会提供关于如何解决问题的建议。

{pmore2}
    请参见 {help forecast_zh:[TS] forecast}。

{marker WnPSS}{...}
{phang2}
6.  {bf:功效和样本量。}{break}
    新的 {cmd:power} 命令执行功效和样本量分析。 
    包括内容：

                对均值与参考值的比较
                对比例与参考值的比较
                对方差与参考值的比较
                对相关性与参考值的比较

                对两个独立均值的比较
                对两个独立比例的比较
                对两个独立方差的比较
                对两个独立相关性的比较

                对两个配对均值的比较
                对两个配对比例的比较

{pmore2}
    结果可以在可自定义的表格和图形中显示。

{pmore2}
    集成的 GUI 让您选择分析类型、输入假设并获得所需结果。 

{pmore2}
    功效和样本大小是单独手册的主题。 
    请参见 {it:Stata Power and Sample-Size Reference Manual}；开始时请查看 {bf:[PSS] 简介}。

{marker WnXtstar}{...}
{phang2}
7.  {bf:新的和扩展的面板数据估计量。}{break}
    新增两个随机效应面板数据估计命令：

                {help xtoprobit_zh}   有序 probit 回归
                {help xtologit_zh}    有序逻辑回归

{pmore2}
    这些新命令允许集群稳健标准误。

{pmore2}
    以下以前存在的随机效应面板数据估计命令现在允许集群稳健标准误：

                {help xtprobit_zh}    probit 回归
                {help xtlogit_zh}     逻辑回归
                {help xtcloglog_zh}   互补对数-对数回归
                {help xtpoisson_zh}   Poisson 回归

{pmore2}
    请参见 {help xt_zh:[XT] xt}，获取 Stata 所有面板数据估计量的完整列表。  

{marker WnEsize}{...}
{phang2}
8.  提供用于计算效应大小的新命令，按照行为科学家，尤其是心理学家希望看到的方式。 Cohen 的 d、Hedges 的 g、Glass 的 Delta、eta^2 和 omega^2，现在提供置信区间：
       
{phang3}
a.  新命令 {cmd:esize} 和 {cmd:esizei} 计算 
            比较两个组的连续变量均值之差的效应大小。请查看
            {help esize_zh:[R] esize}。

{phang3}
b.  新的后估计命令 {cmd:estat} {cmd:esize}
	    计算 {cmd:anova} 和 {cmd:regress} 之后线性模型的效应大小。请查看
	    {helpb regress postestimation:[R] regress postestimation}。

{marker WnProjectManager}{...}
{phang2}
9.  {bf:项目管理器。}{break}
    新的项目管理器让您组织分析文件——您的 do 文件、ado 文件、数据集、原始文件等。
    您可以有多个项目，每个项目可以包含数百个文件，或只有几个。

{pmore2}
    您可以一目了然地查看项目中的所有文件，根据文件名进行筛选，单击打开、编辑或运行。

{pmore2}
    项目是可移植的，这意味着您可以一次性携带整个集合并将其移动到其他计算机或与同事共享。

{pmore2}
    试一试。从 Do 文件编辑器开始，选择 
    {bf:文件 > 新建 > 项目 ...}

{pmore2}
    请查看 {helpb Project Manager:[P] Project Manager}。

{marker WnJava}{...}
{p 7 12 2}
10.  {bf:Java 插件}.{break}
    现在您可以直接从 Stata 调用 Java 方法。 
    您可以利用大量现有的 Java 库或编写自己的 Java 代码。   
    您使用 Stata 的新 {cmd:javacall} 命令调用 Java。
    请查看 {helpb java:[P] java} 和查看 
    Java-Stata API 规范，请访问 
    {browse "http://www.stata.com/java/api/":http://www.stata.com/java/api/}。

{pmore2}
    最近，Java 遇到了一些关于安全问题的负面宣传。  
    那些宣传是关于 Java 和网页浏览器自动加载和运行来自不受信任网站的 Java 代码。 它不适用于 Stata 的 Java 实现。 Stata 的实现是运行已安装在您计算机上的来自已知和受信任源的 Java 代码。


    {title:您想知道的新特性}

{marker WnCls}{...}
{p 7 12 2}
11.  {bf:您可以清除结果窗口。}{break}
        使用新的 {cmd:cls} 命令。请查看 {help cls_zh:[R] cls}。

{p 7 12 2}
12.  {bf:用于标记输出的因子变量的值标签。}{break}
        您使用变量 {cmd:i.sex}，输出现在显示 {cmd:male} 和 
	{cmd:female} 在您的模型中，而不是 {cmd:0} 和 {cmd:1}，如果变量
	{cmd:sex} 有值标签。您可以控制输出的外观。有关详细信息，请查看
	{helpb whatsnew12to13##WnFacvarsVallabs:[U] 1.3.3 统计学（一般）中的新特性}。

{p 7 12 2}
13.  {bf:程序员可以从 Stata 创建 Word 和 Excel 文件。}{break}
        您可以添加段落、插入图像、插入表格、操作单元格等。

{pmore2} 请查看 {help mf__docx_zh:[M-5] _docx*()} 以创建 Word 文档。

{pmore2} 请查看 {help putexcel_zh:[P] putexcel} 和
         {help mf_xl_zh:[M-5] xl()} 以与 Excel 文件进行交互。

{pmore2} 顺便说一句，Stata 已经可以导入和导出 Excel 文件；请查看 
        {helpb import excel:[D] import excel}。 

{marker WnSearch}{...}
{p 7 12 2}
14.  {bf:搜索功能得到了改进。}{break}
	原因如下：

{phang3}
a.  {bf:帮助 > 搜索...} 和 {cmd:search} 命令 
                现在默认搜索互联网以及 Stata 的
                本地关键词数据库。 如果您不希望这样，请键入
                {cmd:set searchdefault local, permanently} 将
                Stata 13 设置为旧默认。

{phang3}
b.  {cmd:search} 不带选项时，结果现在在查看器中显示，而不是在结果窗口中。
                （如果指定了任何选项，则结果将出现在
                结果窗口中。）

{phang3}
c.  现有命令 {cmd:findit} 不再文档化
                但仍然可用。 对 {cmd:search} 的更改 
                使得 {cmd:search} 成为 {cmd:findit} 的等效命令。

{pmore2} 请参见 {help search_zh:[R] search}。

{marker WnHelp}{...}
{p 7 12 2}
15.  {bf:帮助现在在未找到帮助时进行搜索。}{break}
        {cmd:help} {it:xyz} 现在在未找到时会调用 {cmd:search} {it:xyz}。
        请参见 {help help_zh:[R] help}。

{p 7 12 2}
16.  Stata 现在支持安全 HTTP (HTTPS) 和 
        FTP。例如，您可以使用 {cmd:use} 从使用这两种协议的网站获取数据集。  
        请参见 {findalias frweb}。
        
{p 7 12 2}
17.  关于数据编辑器， 

{phang3}
a.  现在允许非连续列的选择。 

{phang3}
b.  {cmd:encode}、{cmd:decode}、{cmd:destring} 和 {cmd:tostring} 
                已添加为可对所选变量执行的操作。

{phang3}
c.  现在可以使用 {it:Delete} 键删除数据。

{pmore2} 请参见 {bf:[GS] 6 使用数据编辑器}
   ({mansection GSM 6UsingtheDataEditor:GSM},
    {mansection GSU 6UsingtheDataEditor:GSU} 或
    {mansection GSW 6UsingtheDataEditor:GSW}）。

{p 7 12 2}
18.  关于 Do 文件编辑器， 

{phang3}
a.  匹配的花括号被高亮显示。 

{phang3}
b.  添加了一个可调的列指引。  

{phang3}
c.  现在您可以放大或缩小。 

{phang3}
d.  您现在可以在 Windows 和 Mac、Unix 使用的 
                不同的行结束符之间进行转换。

{pmore2} 请参见 {bf:[GS] 13 使用 Do 文件编辑器---自动化 Stata}
   ({mansection GSM 13UsingtheDo-fileEditor---automatingStata:GSM},
    {mansection GSU 13UsingtheDo-fileEditor---automatingStata:GSU} 或
    {mansection GSW 13UsingtheDo-fileEditor---automatingStata:GSW}）。

{p 7 12 2}
19.  关于 Stata 的 GUI， 

{phang3}
a.  属性窗口现在显示已排序的变量。 

{phang3}
b.  查看器中的 {bf:跳至} 菜单现在允许您跳转到页面顶部。

{phang3}
c.  Stata for Windows 现在支持 Windows 高对比度主题。

{marker WnDta}{...}
{p 7 12 2}
20.  {bf:.dta 文件格式已更改。}{break}
        文件格式因新的 {cmd:strL}
        变量而更改。 Stata 13 当然可以读取旧格式数据集。
        如果您需要创建数据集的旧格式 -- Stata 11 和 Stata 12 使用的格式 -- 请使用 {cmd:saveold} 命令。 
        请参见 {help save_zh:[D] save}。 如果您想了解新 
        {cmd:.dta} 格式的详细信息，请键入 {cmd:help dta}。

{p 7 12 2}
21.  {bf:官方目录 ado/updates 不再使用。}{break}
        官方 ado 文件更新不再存储在 
        目录 {it:installation-directory}{cmd:/ado/updates/}中。
        更新现在直接应用于 {cmd:ado/base}。 现代操作系统不允许应用程序（如 Stata）
        具有多个同名文件。 更新过程保持不变。

{p 7 12 2}
22.  {bf:视频。}{break}
        输入 {cmd:help videos}列出并链接 Stata 的 YouTube 渠道上的视频。我们提供了数十个 Stata 功能的教程。

{p 7 12 2}
23.  {bf:快速 PDF 手册导航。}{break}
        现在每个手册条目的顶部都有链接，直接跳转到章节标题，在每个页面的标题上也有链接，可以将您带到条目的开始。 

{pmore2} 如果您还不知道，可以单击帮助文件标题中的蓝色手册引用跳转到 PDF
        文档。

{p 7 12 2}
24.  {bf:手册中有彩色图表。}{break}
        如果您想使用我们在手册中使用的相同彩色图表方案，请输入 {cmd:set scheme s2gcolor}。 
        请参见 {helpb scheme s2:[G-4] scheme s2}。

{marker vignettes}{...}
{p 7 12 2}
25.  {bf:十个新小册子。}{break}
        科学历史爱好者想要阅读以下内容： 

{phang3}
a. {mansection G-2 graphpieRemarksandexamplesv_nightingale:佛罗伦斯·南丁格尔}

{phang3}
b. {mansection R correlateMethodsandformulasv_david:佛罗伦斯·南丁格尔·大卫}，
         与佛罗伦斯·南丁格尔是不同的人

{phang3}
c. {mansection FN StatisticalfunctionsFunctionsv_dunnett:查尔斯·威廉·邓尼特}

{phang3}
d. {mansection TS ucmMethodsandformulasv_harvey:安德鲁·查尔斯·哈维}

{phang3}
e. {mansection R esizeMethodsandformulasv_hays:威廉·李·海斯}

{phang3}
f. {mansection R esizeMethodsandformulasv_kerlinger:弗雷德·尼科尔斯·克尔林格}

{phang3}
g. {mansection R EpitabAcknowledgmentsv_laneclaypon:珍妮特·伊丽莎白·莱恩-克莱庞}

{phang3}
h. {mansection ST stcoxpostestimationRemarksandexamplesv_martingale:马丁格尔}

{phang3}
i. {mansection R IntroRemarksandexamplesv_scott:伊丽莎白·L·“贝蒂”·斯科特}

{phang3}
j. {mansection R EpitabAcknowledgmentsv_snow:约翰·斯诺}


{pstd}
在 Stata 12 发布期间添加了以下两个项目： 

{p 7 12 2}
26.  新命令 {cmd:icc} 计算单向随机效应模型、双向随机效应模型和双向混合效应模型的组内相关系数。 组内相关系数衡量一致性或绝对一致性。
        请参见 {help icc_zh:[R] icc}。

{p 7 12 2}
27.  新后估计命令 {cmd:estat icc} 计算通过 {cmd:mixed} 和 {cmd:melogit} 拟合的嵌套随机效应模型在每个嵌套层次的组内相关性。
        请参见 {helpb mixed postestimation:[ME] mixed postestimation} 和 
        {helpb melogit postestimation:[ME] melogit postestimation}。  


    {title:统计学的新特性（一般）}

{pstd}
已提到的发布亮点包括 
{help whatsnew12to13##WnTreatmentEffects:处理效果}， 
{help whatsnew12to13##WnGsem:广义 SEM}，
{help whatsnew12to13##WnMestar:多级混合效应模型}， 
{help whatsnew12to13##WnPSS:功效和样本量}， 
以及
{help whatsnew12to13##WnXtstar:面板数据估计量}。
以下也是新的：

{p 7 12 2}
28.  关于样本选择估计命令， 

{phang3}
a.  新估计命令 {cmd:heckoprobit} 拟合样本选择的有序 probit 模型的参数。 
                请参见 {help heckoprobit_zh:[R] heckoprobit}。 

{phang3}
b.  现有估计命令 {cmd:heckprob} 已重命名为 
                {cmd:heckprobit}。请参见 {help heckprobit_zh:[R] heckprobit}。

{p 7 12 2}
29.  现有估计命令 {cmd:hetprob} 已重命名
        为 {cmd:hetprobit}。请参见 {help hetprobit_zh:[R] hetprobit}。

{p 7 12 2}
30.  新命令 {cmd:ivpoisson} 拟合具有内生回归量的 Poisson 回归模型的参数。 
        可以使用 GMM 或控制函数估计量获得估计值。  
        请参见 {help ivpoisson_zh:[R] ivpoisson}。

{p 7 12 2}
31.  新命令 {cmd:mlexp} 允许您在不编写评估器程序的情况下指定最大似然模型。
        您可以像使用 {cmd:nl}、{cmd:nlsur} 或 {cmd:gmm} 一样，指定一个表示
	对数似然函数的表达式。请参见 {help mlexp_zh:[R] mlexp}。

{p 7 12 2}
32.  关于分数多项式， 

{phang3}
a.  新的前缀命令 {cmd:fp:} 替代 {cmd:fracpoly} 用于拟合具有分数多项式回归量的模型。  
                您输入 

                . {cmd:fp} ...{cmd::} {it:估计命令}

{pmore2} 结果是相同的。新的 {cmd:fp} 命令 
                支持更多估计命令，更易于使用：
                并更灵活。您现在可以在估计命令的多个地方替换同一分数多项式，
                这在多方程模型中特别有用。您现在可在估计命令中使用因素变量符号。

{phang3}
b.  {help fp_zh:fp generate} 替代 {cmd:fracgen}。 

{phang3}
c.  {helpb fp plot}
                替代 {cmd:fracplot}。 

{phang3}
d.  {helpb fp predict}
                替代 {cmd:fracpred}。 

{phang3}
e.  命令 {cmd:fracpoly} 和 {cmd:fracgen} 不再文档化，但继续有效。命令 
                {cmd:fracplot} 和 {cmd:fracpred} 仍然文档化，以便在 {help mfp_zh} 之后使用。 

{pmore2} 请参见 {help fp_zh:[R] fp}。 

{p 7 12 2}
33.  关于分位数回归估计命令， 

{phang3}
a.  现有估计命令 {cmd:qreg} 现在接受选项 {cmd:vce(robust)}。

{phang3}
b.  现有估计命令 {cmd:qreg}、{cmd:iqreg}、
		 {cmd:sqreg} 和 {cmd:bsqreg} 现在允许使用因素变量。

{pmore2} 请参见 {help qreg_zh:[R] qreg}。

{p 7 12 2}
34.  {cmd:predict} 的语法和方法在 {cmd:boxcox} 之后有所变化。
        预测值现在默认使用杜安的抹平方法计算。 之前的 
        反变换预测值估计在指定 {cmd:predict} 的 {cmd:btransform} 选项时提供，并在版本控制下。 请参见
	{helpb boxcox postestimation:[R] boxcox postestimation}。

{marker WnFacvarsVallabs}{...}
{p 7 12 2}
35.  因子变量的值标签现在默认用于标记估算输出。 数值值（级别）先前用于，如果因子变量未标记，则仍然继续使用。 有三个新显示选项可以在估计命令中使用，影响此功能：

{phang3}
a.  选项 {cmd:nofvlabel} 显示因子变量的级别 
                值，就像 Stata 12 先前那样。（您可以 
                {cmd:set fvlabel off} 使 {cmd:nofvlabel} 成为 
                默认。）

{phang3}
b.  选项 {opt fvwrap(#)} 指定在长值标签必须换行时允许的行数。  
		需要超过 {it:#} 行的标签会被截断。
		{cmd:fvwrap(1)} 是默认值。您可以通过使用 {cmd:set fvwrap} {it:#} 来更改默认值。

{phang3}
c.  选项 {cmd:fvwrapon()} 指定换行的值标签是否会在单词边界处换行。

{pmore3} {cmd:fvwrapon(word)} 是默认设置，表示在单词边界处换行。 

{pmore3} {cmd:fvwrapon(width)} 指定可以随意发生换行，以最大化可用空间的使用。

{pmore3} 您可以通过使用 {cmd:set fvwrapon width} 或 {cmd:set fvwrapon word} 来更改默认设置。

{pmore2} 当前的默认设置通过 {cmd:query} 显示，并且还存储在 {cmd:c(fvlabel)}、{cmd:c(fvwrap)} 和 {cmd:c(fvwrapon)} 中。

{pmore2} 请参见 {helpb set showbaselevels:[R] set showbaselevels} 和
             {help creturn_zh:[P] creturn}. 

{p 7 12 2}
36.  现有估计命令 {cmd:proportion} 现在在计算置信区间的限制时使用 logit
        变换。 如果指定新的 {cmd:citype(normal)} 选项，则保留使用正态近似的原始行为。 请参见 {help proportion_zh:[R] proportion}。

{p 7 12 2}
37.  关于现有命令 {cmd:margins}， 

{phang3}
a.  选项 {cmd:at()} 具有新的子选项 {cmd:generate()}，
                允许您指定一个表达式来替换模型中任何连续变量的值。 例如，您可以通过输入

                . {cmd:margins, at(x = generate(x+1))}

                来计算 {cmd:x+1} 的预测边际。

{pmore3} {cmd:at(generate())} 可以与对比结合，以
                估计给每个受试者额外给予一个 {cmd:x} 的影响，

                . {cmd:margins, at((asobserved) _all) at(x= generate(x+1)) ///}
		       {cmd:contrast(at(r._at))}

{pmore3}
      请参见 {mansection R margins,contrastRemarksandexamplesEstimatingtreatmenteffectswithmargins:{it:使用边际估计处理效应}}在
                 {bf:[R] margins, contrast}中。

{phang3}
b.  {cmd:margins} 在计算 p 值和置信区间时自动使用 t 分布
                 适用，这发生在进行线性回归和 ANOVA 之后以及随时将自由度发布到
                 {cmd:e(df_r)} 时。

{pmore3} 以前始终对所有 p 值和
                 置信区间使用标准正态分布的默认行为在版本控制下保留。

{phang3}
c.   新选项 {opt df(#)} 指定 
		  {cmd:margins} 应在不使用 t 分布的情况下仍然采用 t 分布。

{pmore2} 请参见 {help margins_zh:[R] margins}。

{p 7 12 2}
38.  {cmd:nlcom} 和 {cmd:predictnl} 
        现在使用标准正态分布计算 p 值和置信区间。  
        原来的行为是在某些情况下基于 t 分布计算 p 值和置信区间。  在版本控制下保留原有行为。  此外，如果您想要使用 t 分布计算 p 值和置信区间，可以使用新 
        选项 {opt df(#)} 指定自由度。

{pmore2} {cmd:testnl} 计算的检验统计量现在是卡方而不是 F，除非您指定了 
        {cmd:df()} 选项。

{pmore2}
        请参见 {help nlcom_zh:[R] nlcom}、{help predictnl_zh:[R] predictnl} 和
	{help testnl_zh:[R] testnl}。

{p 7 12 2}
39.  {cmd:contrast}、{cmd:pwcompare} 和 {cmd:lincom}
        具有新选项 {opt df(#)}，在计算 p 值和置信区间时使用 t 分布。
        对于 {cmd:contrast}，此选项还会导致 Wald 表使用 
        F 分布。 

{pmore2} 请参见 {help contrast_zh:[R] contrast}、{help pwcompare_zh:[R] pwcompare}，
        和 {help lincom_zh:[R] lincom}。 

{p 7 12 2} 
40.  {cmd:estimates table} 的选项 {cmd:label} 已重命名
        为 {cmd:varlabel}。 
        原始选项 {cmd:label} 在版本控制下保留。 
	请参见 {helpb estimates table:[R] estimates table}。

{p 7 12 2}
41.  先前存在的 {cmd:sampsi} 命令不再文档化，因为它已被新的 {cmd:power} 命令替代--这是发布的亮点。请参见 {help power_zh:[PSS] power}。

{p 7 12 2}
42.  现有函数 
        {opt normalden(x,mu,sigma)}
        和 
        {opt lnnormalden(x,mu,sigma)}
        现在允许您省略
        参数 mu 或
        参数 mu 和 sigma。 
        mu=0 和 sigma=1 被假定。
        请参见 {helpb normalden()}、{helpb lnnormalden()}， 
        和 {help functions_zh:[FN] 按类别的函数}。

{marker WnSDF}{...}
{p 7 12 2}
43.  添加了以下新函数：

{p2colset 15 35 37 2}{...}
{synopt:{cmd:t(}{it:df}{cmd:,}{it:t}{cmd:)}}累积的 Student's {it:t} 分布{p_end}
{synopt:{cmd:invt(}{it:df}{cmd:,}{it:p}{cmd:)}}反累积的 Student's {it:t} 分布{p_end}

{synopt:{cmd:ntden(}{it:df}{cmd:,}{it:np}{cmd:,}{it:t}{cmd:)}}非中心 Student's {it:t} 分布的密度{p_end}
{synopt:{cmd:nt(}{it:df}{cmd:,}{it:np}{cmd:,}{it:t}{cmd:)}}累积的非中心 Student's {it:t} 分布{p_end}
{synopt:{cmd:npnt(}{it:df}{cmd:,}{it:np}{cmd:,}{it:t}{cmd:)}}非中心 Student's {it:t} 分布的非中心参数{p_end}
{synopt:{cmd:nttail(}{it:df}{cmd:,}{it:np}{cmd:,}{it:t}{cmd:)}}右尾的非中心 Student's {it:t} 分布{p_end}
{synopt:{cmd:invnttail(}{it:df}{cmd:,}{it:np}{cmd:,}{it:p}{cmd:)}}右尾的非中心 Student's {it:t} 分布的反函数{p_end}

{synopt:{cmd:nF(}{it:df_1}{cmd:,}{it:df_2}{cmd:,}{it:np}{cmd:,}{it:f}{cmd:)}}累积的非中心 {it:F} 分布{p_end}
{synopt:{cmd:npnF(}{it:df_1}{cmd:,}{it:df_2}{cmd:,}{it:f}{cmd:,}{it:p}{cmd:)}}非中心 {it:F} 分布的非中心参数{p_end}

{synopt:{cmd:chi2den(}{it:df}{cmd:,}{it:x}{cmd:)}}卡方分布的密度{p_end}

{synopt:{cmd:fileread(}{it:f}{cmd:)}}以字符串的形式返回文件的内容{p_end}
{synopt:{cmd:filewrite(}{it:f}{cmd:,}{it:s}[{cmd:,}{it:r}]{cmd:)}}用字符串的内容创建或覆盖文件{p_end}
{synopt:{cmd:fileexists(}{it:f}{cmd:)}}检查文件是否存在{p_end}
{synopt:{cmd:filereaderror(}{it:s}{cmd:)}}使用 {cmd:fileread()} 返回的结果来确定是否发生了 I/O 错误{p_end}
{p2colreset}{...}

{pmore2} 请查看 {cmd:help} {it:functionname}{cmd:()} 和
    {help functions_zh:[FN] 按类别的函数}。 


    {title:统计学中的新特性（SEM）}

{pstd}
我们已经提到 
{help whatsnew12to13##WnGsem:发布的亮点}， 
新的 {cmd:gsem}（请参见 {manlink SEM Intro 1}）命令，用于拟合
广义 SEM。 还有以下新功能： 

{p 7 12 2}
44.  现有估计命令 {cmd:sem} 现在有新选项 {cmd:noestimate}，
        当您遇到收敛问题时非常有用；您可以使用它将起始值放入
        Stata 矩阵（向量）中，然后可以修改以用作替代起始值。请参见 {manlink SEM Intro 12}。

{p 7 12 2}
45.  {cmd:sem} 现在支持对所有观察变量的时间序列运算符。   请参见 {help sem_command_zh:[SEM] sem}。

{p 7 12 2}
46.  现在您可以在 {cmd:sem} 之后使用后估计命令 {cmd:margins}。
        请参见 {manlink SEM Intro 7}。

{p 7 12 2}
47.  {cmd:sem} 不再在估计输出中报告任何零值约束
        在外生变量之间的协方差上；协方差缺失表示该约束的存在。 
        原始行为在版本控制下保留。  

{p 7 12 2}
48.  控制因子变量显示的新的值标签选项
        在 {helpb whatsnew12to13##WnFacvarsVallabs:[U] 1.3.3 统计学（一般）中提到} -- 
        {cmd:nofvlabel}、{opt fvwrap(#)} 和
	{opt fvwrapon(word|width)} -- 可用于 {it:varname} 的 
        {cmd:sem,} {opt group(varname)}。 
        {cmd:sem} 本身不允许因子变量，但因子变量显示选项仍然适用于 
        {opt group(varname)}。

{pmore2} 因此，旧选项 {cmd:wrap()} 和 {cmd:nolabel} 现在正式为 
        {cmd:fvwrap()} 和 {cmd:fvnolabel}，尽管旧的选项名称仍然有效。 请参见
	{helpb sem reporting options:[SEM sem reporting options}。

{p 7 12 2}
49.  现在我们在手册中每个估计示例的末尾展示如何构建路径图。 
        请参见 {findalias semsfmm}、 
            {findalias semtfmm} 等....


{marker newts}{...}
    {title:统计学中的新特性（时间序列）}

{pstd}
我们已经提到了一项 
{help whatsnew12to13##WnForecast:发布的亮点}，新的 
{help forecast_zh:[TS] forecast} 命令。 还有以下新特性：

{marker import_haver}{...}
{p 7 12 2}
50.  新命令 {cmd:import haver}（仅适用于 Stata for Windows）
        替代旧命令 {cmd:haver}。 {cmd:import haver}
        从 Haver Analytics 数据库导入经济和金融数据。  请参见 {helpb import haver:[D] import haver}。

{p 7 12 2}
51.  现有命令 {cmd:tsreport} 现在提供有关时间序列和面板数据集中的间隙的更好信息，
        包括每个间隙的长度。

{pmore2} 此外，{cmd:tsreport} 将提供有关变量中缺失值的信息，即使没有间隙。

{pmore2} 请参见 {help tsreport_zh:[TS] tsreport}。

{pmore2} 另请参见 {help whatsnew12to13##bcal_create:55} 中的项目 
{helpb whatsnew12to13##newdm:[U] 1.3.8 数据管理中的新特性}关于新命令 {cmd:bcal create}的信息。


    {title:统计学中的新特性（纵向/面板数据）}

{p 7 12 2}
我们已经提到了一项 
{help whatsnew12to13##WnXtstar:发布的亮点}，
新的和扩展的面板数据估计量。


    {title:统计学中的新特性（生存分析）}

{p 7 12 2}
52.  当存在延迟输入或观察时间存在间隙时，无法拟合共享脆弱生存模型。
       换句话说，{cmd:stcox} 和 {cmd:streg} 在存在延迟输入或间隙时不再允许选项
       {cmd:shared()}。使用共享脆弱模型来拟合截断生存数据，
       除非脆弱性分布独立于协变量和截断点，否则会导致不一致的结果，这在实践中很少发生。
       如果您拥有这样的数据并且可以做独立性假设——这不太可能——可以通过指定未记录的
       {cmd:forceshared} 选项来强制估计。请参见 {help stcox_zh:[ST] stcox} 和
       {help streg_zh:[ST] streg}。有关 {cmd:forceshared} 选项的信息，请参见 {help st_forceshared_zh}。

{p 7 12 2}
53.  现有命令 {cmd:stset}、{cmd:streset} 和
        {cmd:cttost} 生成的输出更准确地标记风险时间。 
        之前标记为“总风险时间”的现在标记为“总风险时间和观察时间”。 
        请参见 {help stset_zh:[ST] stset} 和 {help cttost_zh:[ST] cttost}。


{marker newdm}{...}
    {title:数据管理中的新特性}

{pstd}
我们已经提到一项
{help whatsnew12to13##WnStrls:发布的亮点}，
长字符串/BLOBs。

{p 7 12 2}
54.  新命令 {cmd:import delimited} 和 {cmd:export} {cmd:delimited}
替代旧命令 {cmd:insheet} 和 {cmd:outsheet}。这不仅仅是重命名。 

{pmore2} {cmd:import delimited} 支持几种不同的引号方法。
        一些软件包，例如，在字符串中间使用 {cmd:""} 表示嵌入的双引号。 其他的软件包则不是。

{pmore2} {cmd:import delimited} 现在允许列和行范围（子集）。 

{pmore2} 使用 {cmd:import delimited} 的 GUI 来预览数据及其读取方式。您还可以自定义该 GUI。 

{pmore2} 当然， {cmd:import delimited} 和 {cmd:export delimited} 支持
        Stata 13 的新 {cmd:strL}。 

{pmore2} 请参见 {helpb import delimited:[D] import delimited}。

{marker bcal_create}{...}
{p 7 12 2}
55.  现有命令 {cmd:bcal} 新增子命令 {cmd:create} 
        自动根据当前数据集创建业务日历。 {cmd:bcal create} 
        从数据中的空隙推断出业务节假日和关闭时间。 
        请参见 {help bcal_zh:[D] bcal}。 

{p 7 12 2}
56.  字符表达式现在通过
        乘法支持字符串复制。例如，{cmd:3*"abc"} 计算为 
        {cmd:"abcabcabc"}。请参见 {helpb strdup()} 或
	{help functions_zh:[FN] 按类别的函数}。 

{p 7 12 2}
57.  关于长字符串，即 {cmd:strL}， 

{phang3}
a.  现有命令 {cmd:compress} 新增选项 {cmd:nocoalesce}，以支持新的 {cmd:strL} 字符串存储类型。 
默认情况下，{cmd:compress} 合并用于存储重复的 {cmd:strL} 值的存储空间。
{cmd:nocoalesce} 可防止这种情况。

{pmore3} 此外，{cmd:compress} 始终考虑降级
                {cmd:strL} 变量为 {cmd:str}{it:#} 变量，以节省内存。

{pmore3} 请参见 {help compress_zh:[D] compress}。 

{phang3}
b.  现有命令 {cmd:memory} 的输出已更改，
		现在包含有关新字符串存储类型 {cmd:strL} 的信息。
		请参见 {help memory_zh:[D] memory}。

{phang3}
c.  现有命令 {cmd:ds} 的选项，如 {cmd:has()}
	       和 {cmd:not()}，现在了解 {cmd:string} 是同时指 
	       {cmd:strL} 和 {cmd:str}{it:#}， {cmd:strL} 表示 
	       {cmd:strL}，而 {cmd:str#} 表示 {cmd:str1}、{cmd:str2}、
	       ..., {cmd:str2045}。请参见 {help ds_zh:[D] ds}。

{phang3}
d.  现有命令 {cmd:type} 新增选项 {opt lines(#)}，可列出文件的前 {it:#} 行。请参见 {help type_zh:[D] type}。

{pmore2} 另请参见 {help whatsnew12to13##import_haver:50} 中的项目 
{helpb whatsnew12to13##newts:[U] 1.3.5 统计学（时间序列）中的新特性}
关于新命令 {cmd:import haver}的信息。


    {title:矩阵中的新特性}

{p 7 12 2}
58.  {bf:程序员可以从 Stata 创建 Word 和 Excel 文件。}{break}
        您可以添加段落、插入图像、插入表格、操作
        单元格等等。  

{pmore2} 请查看 {help mf__docx_zh:[M-5] _docx*()} 以创建 Word 文档。

{pmore2} 请查看 {help putexcel_zh:[P] putexcel} 和 
             {help mf_xl_zh:[M-5] xl()} 以与 Excel 文件进行交互。 

{pmore2} 顺便说一句，Stata 已经可以导入和导出 Excel 文件；请查看
        {helpb import excel:[D] import excel}.  

{p 7 12 2}
59.  新函数 {cmd:solvenl()} 允许您求解 
        任意非线性方程组。  
        提供高斯-塞德尔、阻尼高斯-塞德尔、布罗伊登-鲍威尔和 
        牛顿-拉夫森技术。 
        请参见 {help mf_solvenl_zh:[M-5] solvenl()}。 

{p 7 12 2}
60.  添加到 Stata 的相同统计函数也已添加到 Mata，
        即
        
                非中心 Student's t
                {it:p} = {cmd:nt(}{it:df}{cmd:,} {it:np}{cmd:,} {it:t}{cmd:)}
                {it:d} = {cmd:ntden(}{it:df}{cmd:,} {it:np}{cmd:,} {it:t}{cmd:)}
                {it:q} = {cmd:nttail(}{it:df}{cmd:,} {it:np}{cmd:,} {it:t}{cmd:)}
                {it:t} = {cmd:invnttail(}{it:df}{cmd:,} {it:np}{cmd:,} {it:q}{cmd:)}
               {it:np} = {cmd:npnt(}{it:df}{cmd:,} {it:t}{cmd:,} {it:p}{cmd:)}

                Student's t
                {it:p} = {cmd:t(}{it:df}{cmd:,} {it:t}{cmd:)}
                {it:t} = {cmd:invt(}{it:df}{cmd:,} {it:p}{cmd:)}

                非中心 F
                {it:p} = {cmd:nF(}{it:df_1}{cmd:,} {it:df_2}{cmd:,} {it:np}{cmd:,} {it:f}{cmd:)}
               {it:np} = {cmd:npnF(}{it:df_1}{cmd:,} {it:df_2}{cmd:,} {it:f}{cmd:,} {it:p}{cmd:)}

                卡方分布
                {it:d} = {cmd:chi2den(}{it:df}{cmd:,} {it:x}{cmd:)}

{pmore2} 请参见 {help mf_normal_zh:[M-5] normal()}。

{p 7 12 2}
61.  新函数 {cmd:selectindex()} 返回一个向量，包含
          v{cmd:[}j{cmd:]} 不等于 0 的索引。例如，
          如果 v = (6, 0, 7, 0, 8)，那么
	  {cmd:selectindex(}v{cmd:)} = (1, 3, 5)。
	  {cmd:selectindex()} 在逻辑表达式中非常有用，
	  比如 {cmd:x[selectindex(x:>1000)]}。 请参见
	  {help mf_select_zh:[M-5] select()}。


    {title:编程中的新特性}

{pstd}
我们已经提到 
{help whatsnew12to13##WnProjectManager:项目管理器} 和 
{help whatsnew12to13##WnJava:Java 插件} 作为发布的亮点。 
以下也是新的：

{p 7 12 2}
62.  新命令 {cmd:putexcel} 将 Stata 表达式、矩阵、
         和存储的结果写入 Excel 文件。支持 Excel 1997/2003 ({cmd:.xls})
         文件和 Excel 2007/2010 ({cmd:.xlsx}) 文件。
         请参见 {help putexcel_zh:[P] putexcel}。 

{pmore2} Mata 程序员还会对 
         {help mf_xl_zh:[M-5] xl()} 感兴趣，这是一种与 Excel 文件进行交互的类。 

{p 7 12 2}
63.  一组新的 Mata 函数提供了创建 Word 文档的能力。
         请参见 {help mf__docx_zh:[M-5] _docx*()}. 

{p 7 12 2}
64.  关于 {cmd:strL}， 

{phang3}
a.  {cmd:strL} 现在是一个保留字。

{phang3}
b.  字符串表达式中字符串的最大长度从 244 增加到 20 亿字符。
             请参见 {help limits_zh}。 
            
{phang3}
c. 新的 {cmd:c(maxstrlvarlen)} 返回 {cmd:strL} 变量的最大可能长度。

{phang3}
d.  {cmd:confirm} ... {cmd:variable}现在理解 {cmd:str}{it:#} 表示任何 {cmd:str1}、{cmd:str2}、
             ..., {cmd:str2045} 变量；
             {cmd:strL} 表示 {cmd:strL}；以及 {cmd:string} 意味着 {cmd:str}{it:#} 或 {cmd:strL}。
             请参见 {help confirm_zh:[P] confirm}。

{marker fileread()}{...}
{phang3}
e.  新函数 {cmd:fileread(}{it:filename} [{cmd:,} {it:startpos}
[{cmd:,} {it:length}]]{cmd:)} 返回 {it:filename} 的内容。 
             请参见 {helpb fileread()} 和 
             {help functions_zh:[FN] 按类别的函数}。

{marker filewrite()}{...}
{phang3}
f.  新函数 {cmd:filewrite(}{it:filename}{cmd:,} {it:s}
	     [{cmd:,} {c -(}{cmd:1}|{cmd:2}{c )-}]{cmd:)} 将 {it:s} 写入
	     指定的 {it:filename}，可选地覆盖 {cmd:1} 或
	     附加 {cmd:2}。 请参见 {helpb filewrite()} 和
	     {help functions_zh:[FN] 按类别的函数}。

{phang3}
g.  新函数 {opt fileexists(filename)} 返回 
	    {cmd:1} 如果指定的 {it:filename} 存在，并返回 
	    {cmd:0} 如果不存在。 

{phang3}
h.  新函数 {opt filereaderror(s)} 返回 {cmd:0} 或正整数，该值具有返回
	    代码的解释。用法如下 

{p 16 18 2}
{cmd:. generate strL} {it:s} {cmd:= fileread(}{it:filename}{cmd:)}
     {cmd:if fileexists(}{it:filename}{cmd:)}{p_end}
{p 16 18 2}
{cmd:. assert filereaderror(}{it:s}{cmd:)==0}

{pmore3}或这样 

{p 16 18 2}
{cmd:. generate strL} {it:s} {cmd:= fileread(}{it:filename}{cmd:)}
      {cmd:if fileexists(}{it:filename}{cmd:)}{p_end}
{p 16 18 2}
{cmd:. generate} {it:rc} {cmd:= filereaderror(}{it:s}{cmd:)}

{pmore3}
    也就是说，{opt filereaderror(s)} 用于返回 {opt fileread(filename)}返回的结果，以判定是否发生了 I/O 错误。

{pmore3}
    在示例中，我们仅 {cmd:fileread()} 文件，{cmd:fileexist()} 是必须的。 
    如果文件不存在，{cmd:filereaderror()} 将作为错误进行检测。 
    在我们展示示例的方式中，我们不想将缺失的文件视为错误。 
    如果我们想将缺失文件视为错误，编码方法是

{p 16 18 2}
{cmd:. generate strL} {it:s} {cmd:= fileread(}{it:filename}{cmd:)}{p_end}
{p 16 18 2}
{cmd:. assert filereaderror(}{it:s}{cmd:)==0} 

{pmore3}
    或

{p 16 18 2}
{cmd:. generate strL} {it:s} {cmd:= fileread(}{it:filename}{cmd:)}{p_end}
{p 16 18 2}
{cmd:. generate} {it:rc} {cmd:= filereaderror(}{it:s}{cmd:)}

{p 7 12 2}
65.  新命令 {cmd:expr_query} {it:exp} 在 {cmd:r()} 中返回表达式 {it:exp} 中使用的变量。 
        请参见 {help undocumented_zh} 和参考 {help expr_query_zh}。 

{p 7 12 2}
66.  numlist 中的最大元素数量从 1,600 增加到 2,500。 请参见 {findalias frnumlist}。

{p 7 12 2}
67.  现有命令 {cmd:ereturn} {cmd:post} 现在允许发布非整数和整数
        {cmd:dof()} 值。

{p 7 12 2}
68.  新 {cmd:c(hostname)} 返回计算机的主机名。
        请参见 {help creturn_zh:[P] creturn}。

{p 7 12 2}
69. 新 {cmd:c(maxvlabellen)} 返回值标签的最大可能长度。


    {title:仅适用于 Mac 的新特性}

{pstd}
    除了适用于所有平台的上述所有新特性外，Stata for Mac 还有几个自己的新功能：

{p 7 12 2}
70.  Stata for Mac 中的 Do 文件编辑器已完全重写。 
        现在包括 

{phang3} o  代码折叠 

{phang3} o  更强大的语法高亮， 与 Windows 和 Unix 
         的高亮保持一致

{phang3} o 更多颜色选项用于自定义其外观

{phang3} o 保存语法高亮颜色为单独主题的能力

{phang3} o 线结尾的保护和规范化，这在用于交换
         Windows 和 Mac 之间的 do 文件的混合平台环境中 
         有用

{phang3} o 文本大小的缩放 
         而无需更改字体或字号

{phang3} o 更多的拖放选项

{phang3} o 在打印文件的外观上拥有更强的控制

{p 7 12 2}
71.  Stata for Mac 中的命令窗口现在具有与 Do 文件编辑器相同的语法高亮显示。 

{p 7 12 2}
72.  现在有一个新的路径控制，不仅显示当前工作目录，还可以更改当前工作目录
        并打开 Stata 文件，而无需使用打开对话框。

{p 7 12 2}
73.  Mac OS X 10.7 GUI 增强功能
        例如全屏支持和纹理背景已受到支持。

{p 7 12 2}
74.  有一个新的界面用于保存和管理保存的首选项。

{p 7 12 2}
75.  Applescript 得到了更好的支持，使用户能够直接访问
        Stata 宏、标量、存储的结果和数据集。

{p 7 12 2}
76.  Stata for Mac 现在仅为 64 位，并允许应用程序
        的文件大小减少约 67%。 


    {title:更多新特性}

{pstd}
我们没有列出所有更改，但列出了一些重要的更改。

{pstd}
Stata 正在不断更新。在版本之间的更新可以通过互联网免费获得。 

{pstd}
输入 {cmd:update query} 并按照说明进行操作。

{pstd}
我们希望您喜欢 Stata 13。


{hline 8} {hi:之前的更新} {hline}

{pstd}
请参见 {help whatsnew12_zh}.{p_end}

{hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew12to13.sthlp>}