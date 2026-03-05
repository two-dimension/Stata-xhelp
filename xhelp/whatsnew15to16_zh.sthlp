{smcl}
{* *! version 1.0.1  01jul2019}{...}
{findalias asfrupdate}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{vieweralsosee "stb" "help stb_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}
{help whatsnew15to16:English Version}
{hline}{...}
{title:第16版中的新内容（与第15版相比）}

{pstd}
此文件列出了 Stata 版本 16.0 的变化：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                   年限           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 年至今 {c |}
    {c |} {bf:本文件}         Stata 16.0 新版本       2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017 至 2019 {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本       2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2   2015 至 2017 {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本       2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013 至 2015 {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版本       2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011 至 2013 {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版本       2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009 至 2011 {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版本       2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009 {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版本       2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1 和 9.2     2005 至 2007 {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版本       2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1 和 8.2     2003 至 2005 {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版本       2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001 至 2002 {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版本       2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999 至 2000 {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的变化最先列出。


{hline 3} {hi:最近更新} {hline}

{pstd}
请见 {help whatsnew_zh}。


{hline 3} {hi:Stata 16.0 版本 2019年6月26日} {hline}

{* ------------------------------------------------------------}{...}
      {bf:内容}
{p 11 12 2}1.3  新内容{p_end}
{* ...}{...}

{p 9 12 2}{help whatsnew15to16##highlights:1.3.1  亮点}{p_end}
{* ...}{...}

{p 9 12 2}{help whatsnew15to16##NewStat:1.3.2  统计学的新内容（一般）}{p_end}
{* ...}{...}
{p 9 12 2}{help whatsnew15to16##NewME:1.3.3  统计学的新内容（多级）}{p_end}
{* ...}{...}
{p 9 12 2}{help whatsnew15to16##NewBAYES:1.3.4  统计学的新内容（贝叶斯）}{p_end}
{* ...}{...}
{p 9 12 2}{help whatsnew15to16##NewPSS:1.3.5  统计学的新内容（效能和样本大小）}{p_end}
{* ...}{...}
{p 9 12 2}{help whatsnew15to16##NewXT:1.3.6  统计学的新内容（面板数据）}{p_end}
{* ...}{...}
{p 9 12 2}{help whatsnew15to16##NewSVY:1.3.7  统计学的新内容（调查数据）}{p_end}
{* ...}{...}
{p 9 12 2}{help whatsnew15to16##NewSEM:1.3.8  统计学的新内容（结构方程模型）}{p_end}
{* ...}{...}
{p 9 12 2}{help whatsnew15to16##NewTS:1.3.9  统计学的新内容（时间序列）}{p_end}
{* ...}{...}
{phang2}{help whatsnew15to16##NewIRT:1.3.10  统计学的新内容（项目反应理论）}{p_end}
{* ...}{...}
{phang2}{help whatsnew15to16##NewDSGE:1.3.11  统计学的新内容（DSGE）}{p_end}

{* ...}{...}
{phang2}{help whatsnew15to16##NewFN:1.3.12  统计学的新内容（函数）}{p_end}

{* ...}{...}
{phang2}{help whatsnew15to16##NewG:1.3.13  统计学的新内容（图形）}{p_end}
{* ...}{...}

{phang2}{help whatsnew15to16##NewD:1.3.14  统计学的新内容（数据管理）}{p_end}
{* ...}{...}

{phang2}{help whatsnew15to16##NewP:1.3.15  统计学的新内容（编程）}{p_end}
{* ...}{...}

{phang2}{help whatsnew15to16##NewM:1.3.16  统计学的新内容（Mata）}{p_end}
{* ...}{...}

{phang2}{help whatsnew15to16##NewREPORT:1.3.17  统计学的新内容（报告）}{p_end}
{* ...}{...}

{phang2}{help whatsnew15to16##NewGUI:1.3.18  界面的新内容}{p_end}
{* ...}{...}

{phang2}{help whatsnew15to16##NewMisc:1.3.19  其他新内容}{p_end}

{* ...}{...}

{phang2}{help whatsnew15to16##NewMore:1.3.20  还有更多}{p_end}

{pstd}
    本节面向用过 Stata 旧版本的用户。如果您是 Stata 新手，可以直接跳到 
    {it:{help whatsnew15to16##NewMore:还有更多}}。

{pstd}
    一如既往，Stata 16 完全兼容之前的版本，但我们提醒程序员，在旧的 do 文件和 ado 文件顶部放置 
    {cmd:version 15.1}、{cmd:version} {cmd:15} 或 {cmd:version 14} 等，以确保它们能够如您所期待的那样工作。您在编写这些文件时应该这样做，但如果没有，请现在去做。

{pstd}
    我们将逐项列出所有变化，但首先，以下是亮点。


{* ------------------------------------------------------------}{...}
{marker highlights}{...}
{title:1.3.1  亮点}

{pstd}
以下是 Stata 16 发布的亮点：

{p 5 9 2}
    1.  {help whatsnew15to16##lasso:套索法}
 
{p 5 9 2}
     2.  {help whatsnew15to16##autoreport:自动报告}

{p 5 9 2}
     3.  {help whatsnew15to16##meta:元分析}

{p 5 9 2}
     4.  {help whatsnew15to16##choice:选择模型}

{p 5 9 2}
     5.  {help whatsnew15to16##python:Python 集成}

{p 5 9 2}
     6.  {help whatsnew15to16##bayes:贝叶斯：多链、预测等}

{p 5 9 2}
     7.  {help whatsnew15to16##erms:面板数据的 ERM}

{p 5 9 2}
    8.  {help whatsnew15to16##import:从 SAS 和 SPSS 导入数据}

{p 5 9 2}
    9.  {help whatsnew15to16##npse:非参数序列回归}

{p 4 9 2}
   10.  {help whatsnew15to16##frames:框架：内存中的多个数据集}

{p 4 9 2}
   11.  {help whatsnew15to16##ss:置信区间的样本大小分析}

{p 4 9 2}
   12.  {help whatsnew15to16##nonlinearDSGE:非线性 DSGE 模型}

{p 4 9 2}
   13.  {help whatsnew15to16##irt:多组 IRT}

{p 4 9 2}
   14.  {help whatsnew15to16##pdsel:xtheckman: 面板数据选择模型}

{p 4 9 2}
   15.  {help whatsnew15to16##pharmo:非线性多级模型，包括滞后，及更多：多剂量 PK 模型}

{p 4 9 2}
   16.  {help whatsnew15to16##hetoprobit:异方差有序概率模型}

{p 4 9 2}
   17.  {help whatsnew15to16##sizes:图形大小以打印点、英寸或厘米为单位}

{p 4 9 2}
    18.  {help whatsnew15to16##numinteg:数值积分}

{p 4 9 2}
    19.  {help whatsnew15to16##lp:线性规划}

{p 4 9 2}
    20.  {help whatsnew15to16##korean: Stata 以韩语显示} (Stata 한국어로)

{p 4 9 2}
    21.  {help whatsnew15to16##dofileed: Do-file 编辑器更新}

{p 4 9 2}
    22.  {help whatsnew15to16##mac: Mac 界面更新}

{p 4 9 2}
    23.  {help whatsnew15to16##matsize: 设置 matsize 不再需要} 

{* ------------------------------------------------------------}{...}
{marker lasso}{...}
{title:亮点 1. 套索法}

    {bf:亮点 1，第 1 轮：模型选择与预测}

{pstd}
    套索法和弹性网法同时选择模型和估计其系数。这些估计的系数旨在改善预测。例如，如果我们输入

             {cmd:. lasso linear y x1-x4000}

     或 

             {cmd:. elasticnet linear y x1-x4000}

{pstd}
   那么 {cmd:lasso} 或 {cmd:elasticnet} 将从我们指定的 4,000 个潜在协变量中选择一个子集，例如 x2、x10、x11、x21，等。潜在协变量的数量可以很大，甚至超过数据中的观察数量。

{pstd}
   这些示例使用线性模型来选择连续结果 y 的最佳预测因子。 {cmd:lasso} 和 {cmd:elasticnet} 还可以为二元结果的 logit 和 probit 模型以及计数结果的 Poisson 模型选择协变量。

{pstd}
   在模型选择之后，使用 Stata 的标准 {cmd:predict} 命令获取预测，无论结果类型如何。


    {bf:亮点 1，第 2 轮：推断}

{pstd}
    Stata 16 还提供了用于适用于推断的套索法的命令。这些命令在使用套索法选择需要出现在模型中的其他控制变量时，对系数的子集进行估计和检验。

{pstd}
这些命令分为三组。

{p 8 11 2}
1. {cmd:ds} 命令执行双重选择套索法。
   提供 {help dsregress_zh}、{help dslogit_zh} 和 {help dspoisson_zh}。

{p 8 11 2}
2. {cmd:po} 命令执行部分疏忽套索法。
   提供 {help poregress_zh}、{help pologit_zh} 和 {help popoisson_zh}。
   还提供 {help poivregress_zh} 用于拟合包含内生变量的线性模型。

{p 8 11 2}
3. {cmd:xpo} 命令执行交叉拟合部分疏忽套索法，也称为双重机器学习 1 和 2 （DML1 和 DML2）。提供 
   {help xporegress_zh}、{help xpologit_zh} 和 {help xpopoisson_zh}。
   还提供 {help xpoivregress_zh} 用于拟合包含内生变量的线性模型。

{pstd}
   值得注意的是，这些命令产生的估计值和标准误差对套索法可能犯下的任何模型选择错误都是稳健的。


{marker bayesvarsel}{...}
    {bf:亮点 1，第 3 轮：贝叶斯建模}

{pstd}
    你知道你可以通过使用 {help bayes_regress_zh:bayes:regress} 来拟合贝叶斯套索法线性模型吗？而且推断可以以通常的贝叶斯方式进行，就像对任何其他模型一样？

{pstd}
    套索法使用 L1 限制的最小二乘法来估计其系数。这需要选择一个惩罚参数的值，通常是通过交叉验证来完成的。

{marker laplprior}{...}
{pstd}
    贝叶斯方法有所不同。通过先验分布施加约束。拉普拉斯先验提供了与用于套索法的 L1 惩罚相同解析形式的约束。拉普拉斯先验通过需要从数据中估计的一个新的模型参数引入惩罚参数。

{pstd}
    要拟合套索样式的模型，使用 {help bayes_zh:bayes:} 前缀或带有拉普拉斯先验的 {help bayesmh_zh} 命令。不会自动执行变量选择，但贝叶斯分析提供了多种选择变量的方法。一种方法是使用 {helpb bayesstats summary} 显示每个系数不同于 0 的后验概率表，并基于这些概率选择变量。


    {bf:亮点 1，第 4 轮：文档}

{pstd}
    请参阅
{mansection LASSO lassoLasso:{bf:[LASSO]} {it:Stata Lasso 参考手册}}。


    {it:还有一件事 ...}

{pstd}
    新命令 {manhelp vl D} 对于在拟合套索模型时组装您指定的变量列表特别有用。这些变量列表包含了套索选择的潜在 RHS 变量。这些变量列表可能很长。 {cmd:vl} 使构建它们变得更容易。


{* ------------------------------------------------------------}{...}
{marker autoreport}{...}
{title:亮点 2. 自动报告}

{pstd}
    自动报告是 Stata 的一大特色。用户早已在 do 文件中使用 Stata 的报告功能来创建 

{p 8 11 2}
        1. 可重复的报告和

{p 8 11 2}
        2. 通过在最新数据上重新运行分析来自动更新的报告。

{pstd}
    Stata 的报告功能可以生成 Word（{cmd:.docx}）、Excel（{cmd:.xls}、{cmd:.xlsx}）、PDF 和 HTML 格式的报告。报告可以将您编写的内容与 Stata 的结果和图形结合起来。

{pstd}
    也就是说，您必须自己弄清楚如何做到这一点。

{pstd} 
    Stata 16 当然有新的和改进的功能，但同样重要的是，Stata 的所有报告功能现在都有新 
{mansection RPT rptReporting:{bf:[RPT]} {it:Stata 报告参考手册}} 文档。新手册包含示例和工作流程。

{pstd}
    此外， 

{p 8 8 2}
    现有命令 {help dyndoc_zh} 和 {help markdown_zh} 现在可以从 Markdown 源创建 Word 文档，而不仅仅是 HTML 文档。

{p 8 8 2}
    现有命令 {helpb putdocx} 现在让您在 Word 文档中创建页眉、页脚、页码和文本块。

{p 8 8 2}
    新命令 {help docx2pdf_zh} 将 Word 文档转换为 PDF。

{p 8 8 2}
    新命令 {help html2docx_zh} 将 HTML 文档转换为 Word，并保留 HTML 文档的样式。

    
{* ------------------------------------------------------------}{...}
{marker meta}{...}
{title:亮点 3. 元分析}

{pstd} 
    Stata 16 具有用于执行元分析的新命令套件。该套件包括 {cmd:meta} {cmd:set}、{cmd:meta} {cmd:esize}、{cmd:meta} {cmd:forestplot} 和更多。该套件允许您探索和结合不同研究的结果。
 
{pstd}
    新套件功能广泛，但其独特之处在于其简单性。让我们从简单开始。请参阅
    {help whatsnew15to16##metaex:工作流程}。然后请看 
    {help whatsnew15to16##metafeat:四个表格中的功能概述}。
    同时请参阅 {manhelp meta META}，其中包含所有详细信息。

{marker metaex}{...}
    {bf:工作流程}

{pstd}
    这里是一个可能的工作流程：

{phang2}
1. {help whatsnew15to16##metaset:为元分析准备数据}
{p_end}
{phang2}
2. {help whatsnew15to16##metasum:获取效应大小的摘要}
{p_end}
{phang2}
3. {help whatsnew15to16##metahet:通过使用子组分析和元回归来探索异质性}
{p_end}
{phang2}
4. {help whatsnew15to16##metabias:使用漏斗图调查出版偏倚等}
{p_end}
{phang2}
5. {help whatsnew15to16##metacumul:通过森林图执行累积元分析等}
{p_end}


{marker metaset}{...}
{pstd}
  {ul:{it:工作流程步骤 1：为元分析准备数据}}

{pstd}
    告诉 {cmd:meta} 您的数据已经存储了效应大小及其标准误差，变量名称可能是 {cmd:es} 和
    {cmd:se}， 
{p_end}

{phang2}{cmd:. meta set es se}

{pstd}
    或者您有二元汇总数据并希望计算，例如，对数几率比， 
{p_end}

{phang2}{cmd:. meta esize n11 n12 n21 n22, esize(lnoratio)}

{pstd}
    或者您有连续汇总数据并希望计算，例如，Hedges 的 g 标准化均值
    差异， 
{p_end}

{phang2}{cmd:. meta esize n1 mean1 sd1 n2 mean2 sd2, esize(hedgesg)}


{marker metasum}{...}
{pstd}
{ul:{it:工作流程步骤 2：获取效应大小的摘要}}

{pstd}
    估计总体效应大小及其置信区间（CI），获取异质性
    统计量等：
{p_end}

{phang2}{cmd:. meta summarize}

{pstd}
    或生成森林图：
{p_end}

{phang2}{cmd:. meta forestplot}


{marker metahet}{...}
{pstd}
{ul:{it:工作流程步骤 3：通过使用子组分析和元回归探索异质性}}

{pstd}
    如果您的数据中的研究被分为组，
    可以使用子组森林图探索它们之间的异质性：

{phang2}{cmd:. meta forestplot, subgroup(group)}

{pstd}
通过使用元回归探索由连续调节变量 {cmd:x} 引起的异质性：
{p_end}

{phang2}{cmd:. meta regress x}


{marker metabias}{...}
{pstd}
{ul:{it:工作流程步骤 4：使用漏斗图等调查出版偏倚}}

{pstd}
目测检查漏斗图的不对称性：
{p_end}
   
{phang2}{cmd:. meta funnelplot}

{pstd}
通过使用带轮廓增强的漏斗图检查漏斗图的不对称性是否因出版偏倚而引起：
{p_end}

{phang2}{cmd:. meta funnelplot, contours(1 5 10)}

{pstd}
    正式检验漏斗图的不对称性：
{p_end}

{phang2}{cmd:. meta bias, egger}

{pstd}
    通过使用修剪填充法评估出版偏倚：
{p_end}

{phang2}{cmd:. meta trimfill}


{marker metacumul}{...}
{pstd}
{ul:{it:工作流程步骤 5：通过森林图执行累积元分析等}}

{pstd}
探索总体效应大小的时间趋势，并以表格形式显示结果，
{p_end}

{phang2}{cmd:. meta summarize, cumulative(year)}

{pstd}
或以森林图显示结果：
{p_end}

{phang2}{cmd:. meta forestplot, cumulative(year)}


{marker metafeat}{...}
    {bf:功能概述}

{p2colset 9 40 42 2}{...}
{center:表 1.  三种分析模型}
{p2line}
{p2col:模型}估计值{p_end}
{p2line}
{p2col:共同效应}单一总体效应{p_end}
{p2col:固定效应}研究效应的加权平均{p_end}
{p2col:随机效应}效应分布的均值{p_end}
{p2line}


{center:表 2.  估计方法}
{p2line}
{p2col:模型}方法{p_end}
{p2line}
{p2col:共同效应}逆方差
                              Mantel-Haenszel（双元数据）{p_end}
{p2col:固定效应}逆方差
                              Mantel-Haenszel（双元数据）{p_end}
{p2col:随机效应}REML、ML、经验贝叶斯、
                              DerSimonian-Laird、Sidik-Jonkman、 
                              Hedges、Hunter-Schmidt{p_end}
{p2line}


{center:表 3.  {cmd:meta} 适用于三种类型的数据: 观察值}
{center:记录研究和变量记录 ...}
{p2line}
{p2col:数据集格式}包含独立变量的{p_end}
{p2line}
{p2col:二元结果汇总数据}{it:#} 成功（治疗组）{p_end}
{p2col:}{it:#} 失败（治疗组）{p_end}
{p2col:}{it:#} 成功（对照组）{p_end}
{p2col:}{it:#} 失败（对照组）{p_end}
{p2line}
{p2col:连续结果汇总数据}样本大小（治疗组）{p_end}
{p2col:{space 2}数据}均值（治疗组）{p_end}
{p2col:}标准差（治疗组）{p_end}
{p2col:}样本大小（对照组）{p_end}
{p2col:}均值（对照组）{p_end}
{p2col:}标准差（对照组）{p_end}
{p2line}
{p2col:预先计算的效应尺寸数据}效应大小（相关性、HR、OR、
                           均值差异等）{p_end}
{p2col:}效应大小的标准误差或 CI{p_end}
{p2line}


{center:表 4:  {cmd:meta} 命令}
{p2line}
{p2col:命令}目的{p_end} 
{p2line}
{p2col:{helpb meta set}}声明使用预先计算的效应大小的数据{p_end}
{p2col:{helpb meta esize}}声明数据（计算效应大小）{p_end}
{p2col:{helpb meta update}}修改元数据声明{p_end}
{p2col:{helpb meta query}}报告元数据的设置{p_end}

{p2col:{helpb meta summarize}}总结元分析结果{p_end}
{p2col:{helpb meta forestplot}}图形森林图{p_end}

{p2col:{helpb meta regress}}执行元回归{p_end}
{p2col:{help predict_zh}}预测随机效应等{p_end}
{p2col:{helpb estat bubbleplot}}图形气泡图{p_end}
{p2col:{helpb meta labbeplot}}图形 L'Abbé 图{p_end}

{p2col:{helpb meta funnelplot}}图形漏斗图{p_end}
{p2col:{helpb meta bias}}检验小样本效应 {p_end}
{p2col:{helpb meta trimfill}}修剪和填充分析{p_end}
{p2line}
        {it:注：}
           1. {cmd:meta summarize, subgroup()} 执行子组分析。
           2. {cmd:meta summarize, cumulative()} 执行累积
              元分析。
           3. {cmd:meta forestplot} 与 {cmd:subgroup()} 或
	      {cmd:cumulative()} 的选项执行相同操作，但是以图形方式。
           4. {cmd:meta funnelplot, contours()} 产生轮廓增强的
              漏斗图。


{* ------------------------------------------------------------}{...}
{marker choice}{...}
{title:亮点 4. 选择模型}

{pstd} 
     Stata 的选择模型已重新组织并更新，这样说可能有些轻描淡写。是有新的命令，并且以前的命令得到了改进，并被命名为新命令。结果是一组相关的 {cmd:cm*} 命令，这些命令的工作方式相同，并在新 
{mansection CM cmChoiceModels:{bf:[CM]} {it:Stata 选择模型参考手册}} 中一起记录。

{pstd} 
     新命令更易于使用，但这并不是最好的部分。
     最好的是，{help margins_zh} 现在适用于拟合选择模型后。您可以拟合模型并生成可以解释和向他人解释的结果。您可以回答诸如 $10,000 的收入增加将如何影响人们乘坐公共交通工作概率的问题？要了解更多关于解释的内容，请参见 
     {manlink CM Intro 1}。

{pstd} 
     不用惊慌。旧命令在版本控制下仍然可以工作。
     不过，您会想要使用新命令。

{pstd}
     现在您需要 {help cmset_zh} 数据才能在拟合选择模型之前。
     例如，您可以输入：

               {cmd:. cmset personid transportmethod}

{pstd}
     以前适用于拟合选择模型的相同数据集仍然适用。它们具有每个人或案例的多个观察值，每个观察对一定的可选项占选项。您只需要在拟合模型之前 {cmd:cmset} 数据。

{pstd}
     这是用于拟合选择模型的命令：

{p2line}
{p2col:目的}旧命令{space 7}新命令{p_end}
{p2line}
{p2col:条件逻辑回归}{cmd:asclogit}{space 10}{help cmclogit_zh}{p_end}
{p2col:混合逻辑回归}{cmd:asmixlogit}{space 8}{help cmmixlogit_zh}{p_end}
{p2col:多项式 probit}{cmd:asmprobit}{space 9}{help cmmprobit_zh}{p_end}
{p2col:排名有序 probit}{cmd:asroprobit}{space 8}{help cmroprobit_zh}{p_end}
{p2col:排名有序逻辑回归}{cmd:rologit}{space 11}{help cmrologit_zh}{p_end}
{p2col:面板数据混合逻辑回归}---{space 15}{help cmxtmixlogit_zh}{p_end}
{p2line}
         {it:备注：}
            1.  {cmd:cmxtmixlogit} 是 Stata 16 新增的。
            2.  旧命令在版本控制下仍然可以工作。

{pstd}
        这些是设置数据后可以使用的新命令：
 
{p2line}
{p2col:目的}{space 18}新命令{p_end}
{p2line}
{p2col 9 58 60 2:设置选择建模数据}{help cmset_zh}{p_end}
{p2col 9 58 60 2:按选择的替代品进行汇总}{help cmsummarize_zh}{p_end}
{p2col 9 58 60 2:对选择集进行制表}{help cmchoiceset_zh}{p_end}
{p2col 9 58 60 2:对所选替代品进行制表}{help cmtab_zh}{p_end}
{p2col 9 58 60 2:报告数据中的潜在问题}{help cmsample_zh}{p_end}
{p2line}
         {it:备注：}
             1.  现在您可以在拟合选择模型后使用 {help cm_margins_zh:margins}。


{* ------------------------------------------------------------}{...}
{marker python}{...}
{title:亮点 5. Python 集成}

{pstd}
    现在您可以从 Stata 使用 
{browse "https://en.wikipedia.org/wiki/Python_(programming_language)":Python 编程语言} 
    您可以从命令行、do 文件和 ado 文件中使用它。 如果计算机上尚未安装 Python，请访问 {browse "https://www.python.org/"} 下载。

{pstd}
    Stata 与 Python 的关系类似于与 Mata 的关系。您可以 

{p 8 11 2}
    1. 进入 Python，交互使用并退出。

{p 8 11 2}
    2. 将单行 Python 代码与 Stata 代码混合。

{p 8 11 2}
    3. 在 ado 文件中嵌入 Python 代码，方法与嵌入 Mata 代码相同。

{pstd}
    要以交互方式使用 Python，输入 {cmd:python} 并按回车。
    使用 Python，然后输入 {cmd:end} 退出回到 Stata：

             {cmd:. python}
             {cmd:>>> 2+2}
             {cmd:4}
             {cmd:>>> print("Hello world!")}
             {cmd:Hello World!}
             {cmd:>>> end}

             {cmd:. _}

{pstd}
     要将 Python 代码与 Stata 代码混合，在交互、do 文件或 ado 文件中使用 
     {cmd:python:} 前缀命令：

             {cmd:. python: mypythonfunction(...)}

{pstd}
     您还可以通过使用 {cmd:python} 
     {cmd:script} 命令调用 Python 脚本：

             {cmd:. python script myfile.py}

{pstd}
     以与嵌入 Mata 代码相同的方式在 ado 文件末尾嵌入 Python 程序：

             {hline 40}{cmd:myprogram.ado}{hline 3}
             {cmd:*! version 1.0.0}
         
             {cmd:program myprogram}
             {cmd:        version 16}
             {cmd:        ...}
             {cmd:        ...}
             {cmd:        python: function1(...)}
             {cmd:        ...}
             {cmd:        python: function2(...)}
             {cmd:        ...}
             {cmd:end}

             {cmd:version 16}
             {cmd:python:}
             {cmd:def function1(...)}
             {cmd:    }{it:<code>}
             {cmd:    }{it:<code>}
             {cmd:    }{it:<code>}

             {cmd:def function2(...)}
             {cmd:    }{it:<code>}
             {cmd:    }{it:<code>}
             {cmd:    }{it:<code>}

             {cmd:end}
             {hline 40}{cmd:myprogram.ado}{hline 3}

{pstd}
     Python 代码可以访问并将结果返回到 Stata 和 Mata 中。
     我们提供了 Stata 函数接口（SFI），这是一个用于执行此操作的 Python 模块。

{pstd} 
     我们需要向您推销 Python 吗？ 有很多库可供使用，您可以在 Stata 中使用它们。 您可以使用 Python 绘制 3D 图。 您可以导入并使用数值库，例如 
     {browse "https://en.wikipedia.org/wiki/NumPy":NumPy}
     和
     {browse "https://en.wikipedia.org/wiki/TensorFlow":TensorFlow}。

{pstd}
      请参见 {manhelp python P} 和 {browse "https://www.stata.com/python/api16/":Stata 的 Python API 文档}。


{* ------------------------------------------------------------}{...}
{marker bayes}{...} 
{title:亮点 6. 贝叶斯：多链、预测等}

{pstd}
    以下是新功能的摘要。

    {hline 73}
      {bf:选项或命令      目的}
    {hline 73}
    1. {cmd:nchains({it:#})} 选项     使用 {help whatsnew15to16##bbchains:多链} 拟合模型并报告
                             Gelman-Rubin 收敛诊断的最大值

    {hline 73}
    2. {helpb bayesstats grubin}     估计后报告 {help whatsnew15to16##bbgr:Gelman-Rubin 收敛诊断}
                             每个模型参数的值

    {hline 73}
    3. {help bayespredict_zh}          计算 {help whatsnew15to16##bbpred:贝叶斯预测} 的结果 
                             及其函数，并将其保存在一个新的 
                             Stata 数据集中

                             数据集包含 {it:N}*{it:m} 观察值。
                                 {it:N} = {it:#} 估计数据中的观察值 
                                 {it:m} = {it:#} 模拟抽样

    {hline 73}
    {it:运行（3）后，您可能会获得以下预测结果：}

    4. {help bayesgraph_zh}            {help whatsnew15to16##bbpost:图形摘要}
       {helpb bayesstats ess}        {help whatsnew15to16##bbpost:有效样本大小} 与相关
       {helpb bayesstats summary}    {help whatsnew15to16##bbpost:后验摘要统计}
       {helpb bayestest interval}    {help whatsnew15to16##bbpost:区间假设检验}

    {hline 73}
    5. {help bayespredict_zh} 再次    {help whatsnew15to16##bbpostsum:模拟值的后验摘要}，例如
                             均值、中位数或可信区间，这些值
                             被添加为新变量到估计数据中

    {hline 73}
    6. {helpb bayesreps}             {help whatsnew15to16##bbmcmc:贝叶斯预测的 MCMC 副本}（从所有模拟抽样的随机样本）添加为新变量到估计数据中 
                         
    {hline 73}
    7. {helpb bayesstats ppvalues}   拟合优度的 {help whatsnew15to16##bbppp:后验预测 p-值}

    {hline 73}


{marker bbchains}{...}
    {bf:1. 多链}

{pstd}
    马尔科夫链蒙特卡洛（MCMC）是否收敛？它有没有充分探索目标后验分布？或者你需要更多模拟吗？新的选项 
    {cmd:nchains(}{it:#}{cmd:)} 将帮助回答这些问题。输入 

        {cmd:. bayes, nchains(4): regress y x1 x2}

{pstd}
    将产生四条链，在这种情况下是对 {cmd:y} 在 {cmd:x1} 和 {cmd:x2} 上进行的贝叶斯回归。将比较这些链并报告 Gelman-Rubin 收敛诊断，且这些链将结合起来以产生更准确的最终结果。目的在于检查报告的诊断，然后再解释结果。

{pstd}
    {cmd:nchains()} 可以与 {help bayes_zh:bayes:} 前缀和 {help bayesmh_zh} 命令一起使用。


{marker bbgr}{...}
    {bf:2. Gelman-Rubin 收敛诊断}

{pstd}
   我们刚才提到的诊断实际上是 Gelman-Rubin 收敛诊断的最大值，这些诊断是为每个模型参数计算的。当最大诊断建议不收敛时，您可以查看单个诊断以查明哪些参数存在收敛问题。输入

        {cmd:. bayesstats grubin}

{pstd}
    有时不收敛是因为您未进行足够的模拟。其他时候，可能是因为模型规格存在固有问题。如果在没有收敛的情况下进行了更多模拟，并且同样的参数被确认为存在问题，那么您需要考虑重新指定模型。

{pstd}
    在使用 {help bayes_zh:bayes, nchains():} 或 {help bayesmh_zh:bayesmh ..., nchains()} 估计模型后，请使用新的 {helpb bayesstats grubin} 命令。


{marker bbpred}{...}
    {bf:3. 贝叶斯预测}

{pstd}
    贝叶斯预测是在后验预测分布中模拟的值（或更一般地说，模拟值的函数）。新的命令 {help bayespredict_zh} 计算这些模拟值并将其保存在新的 Stata 数据集中。首先，您必须拟合一个模型。以下是使用 {help bayesmh_zh} 的贝叶斯线性回归拟合示例：

{phang2}
        {cmd:. bayesmh y x1 x2, likelihood(normal({c -(}var{c )-}))}
        {cmd:                   prior({c -(}y:{c )-},  normal(0,100))}
        {cmd:                   prior({c -(}var{c )-}, igamma(1,2))}

{pstd}
    要计算结果 {cmd:y} 的模拟值并将其保存在 {cmd:ysimdata} 中，请输入 

        {cmd:. bayespredict {c -(}_ysim{c )-}, saving(ysimdata)}

{pstd}
    这些模拟值可用于进行模型诊断检查。或者，如果您更改了 {cmd:x1} 和 {cmd:x2} 中记录的值，或为它们添加新值，可以进行预测。

{pstd}
    {cmd:bayespredict} 还可以生成模拟值的函数。要模拟 {cmd:y} 的最小值和最大值，请输入

{phang2}
       {cmd:. bayespredict (ymin:@min({c -(}_ysim{c )-})) (ymax:@max({c -(}_ysim{c )-})),}
       {cmd:                                                   saving(yminmax)}

{pstd}
     这些统计数据可用于比较观察数据与模拟数据的分布。

{pstd}
     我们使用了 Mata 的 {cmd:max()} 和 {cmd:min()} 函数。我们可以使用其他函数，甚至可以在 Stata 或 Mata 中编写自己的函数。

{pstd}
     新命令 {cmd:bayespredict} 可以在 {cmd:bayesmh} 之后使用，但不能在 {cmd:bayes:} 前缀之后使用。


{marker bbpost}{...}
    {bf:4. 使用其他估计后命令的贝叶斯预测}

{pstd}
   您可以使用 {cmd:bayespredict} 生成的贝叶斯预测与以下命令中的任何一个一起使用：

{p2line}
{p2col:估计后命令}目的{p_end}
{p2line}
{p2col:{help bayesgraph_zh}}图形摘要{p_end}
{p2col:{helpb bayesstats ess}}有效样本量及相关统计{p_end}
{p2col:{helpb bayesstats summary}}后验摘要统计{p_end}
{p2col:{helpb bayestest interval}}区间假设检验{p_end}
{p2line}

{pstd}
    您可以输入，例如，

{phang2}
       {cmd:. bayespredict (ymin:@min({c -(}_ysim{c )-})) (ymax:@max({c -(}_ysim{c )-})),}
       {cmd:                                                   saving(yminmax)}

       {cmd:. bayesgraph histogram {c -(}ymin{c )-} {c -(}ymax{c )-} using yminmax}

{pstd}
     这将生成模拟值 {cmd:y} 的最小值和最大值的直方图。


{marker bbpostsum}{...}
    {bf:5. 模拟结果的后验摘要}

{pstd}
    有时，您不需要完整的模拟值集。如果您希望预测每个观察的结果变量的后验均值，模拟值的均值就可以。值得注意的是，因为您在估计数据中可能拥有每个观察的 10,000 个或更多的模拟值。

{pstd}
    {cmd:bayespredict} 也可以生成模拟值的后验摘要。这尤其重要，因为这些值可以存储在您的原始数据中。例如，输入 

        {cmd:. bayespredict pmean, mean}

{pstd}
     新变量 {cmd:pmean} 将包含每个观察的后验均值。输入

        {cmd:. bayespredict pmedian, median}

{pstd}
     新变量 {cmd:pmedian} 将包含每个观察的后验中位数。输入 

        {cmd:. bayespredict cri_l cri_u, cri}

{pstd}
     新变量 {cmd:cri_l} 和 {cmd:cri_u} 将包含每个观察的 
     下限和上限 95% 可信区间。


{marker bbmcmc}{...}
    {bf:6. MCMC 副本}

{pstd}
    新命令 {cmd:bayesreps} 生成 MCMC 副本并将其存储在当前数据集中。这是已经创建的模拟值的随机样本，而这些模拟值之前通过输入 

        {cmd:. bayespredict {c -(}_ysim{c )-}, saving(ysimdata)}

{pstd}
   可能只需要从整个样本中获取 100 个副本，{cmd:bayespredict}可能产生每个观察值 10,000 或更多的副本。如果是这样，您可以输入 

        {cmd:. bayesreps yrep*, nreps(100)}

{pstd} 
    这将在您的数据中创建 100 个新变量，{cmd:yrep1} 到
    {cmd:yrep100}。您可以使用这些变量按观察逐一比较 {cmd:y} 与模型预测的值。


{marker bbppp}{...}
    {bf:7. 后验预测 p-值}

{pstd}
    后验预测 p-值称为 PPPs 或贝叶斯预测 p-值。它们用于评估模型的拟合优度。PPPs 的取值范围为 0 到 1，衡量观察数据与复制数据之间的一致性。

{pstd} 新命令 {helpb bayesstats ppvalues} 计算由 {help bayespredict_zh} 生成的预测的 PPPs。例如，我们之前模拟了结果变量的最小值和最大值， 

{phang2}
       {cmd:. bayespredict (ymin:@min({c -(}_ysim{c )-})) (ymax:@max({c -(}_ysim{c )-})),}
       {cmd:                                                   saving(yminmax)}

{pstd}
    要获得相应的 PPPs，我们输入 

        {cmd: . bayesstats ppvalues {c -(}ymin{c )-} {c -(}ymax{c )-} using yminmax}

{pstd}
    除其他预测摘要外，该命令报告了 PPPs，在本例中是的最小值和最大值模拟值大于观察值的比例。比例越接近 0.5，模型拟合数据的效果越好。


{* ------------------------------------------------------------}{...}
{marker erms}{...}
{title:亮点 7. 面板数据的 ERMs}

{pstd}
    ERMs 是上个版本中的一个重大新功能。而现在，我们在这一版本的 ERMs 中增加了一个重大新功能。您可能还记得，ERMs 代表“扩展回归模型”。ERMs 有两个著名原因：它可以做什么以及
    {browse "https://blog.stata.com/2018/03/27/ermistatas-and-statas-new-erms-commands/":Ermistatas}，出现在 ERMs T 恤上的怪物。可以这样描述本版本的新特点：Ermistatas 现在有了第四只触角。更严肃地说，现在已经有 {cmd:xt} 版本的 ERM 命令。

{pstd}
    {cmd:xt} 是 Stata 命令前缀，用于处理面板数据的估计，也称为纵向数据。它们处理的是面板内的相关性。有的通过随机效应来处理，有的通过固定效应来处理，甚至有的允许您选择。

{pstd}
    新命令 
    {helpb xteregress}、 
    {helpb xteprobit}、 
    {helpb xteoprobit} 和
    {helpb xteintreg}
    拟合线性回归、probit、有序 probit
    和带有面板数据的间隔回归模型。
    它们拟合随机效应
    的线性回归、probit、有序 probit
    和间隔回归模型，并允许随机效应
    在方程之间相关！如果您愿意，其中一些方程可以完全没有随机效应。

{pstd}
    它能做什么？100所大学联合起来研究高中 GPA 对大学 GPA 的影响。您来主导调查。您预计无法观察到的能力会影响两者的 GPA，因此您认为它们是内生的。您还怀疑大学的其他无法观察到特征会影响大学 GPA，但显然不会影响高中 GPA。因此，您想在大学 GPA 方程中放入一个随机效应，但不放入高中 GPA 方程。

{pstd}
    这是您的实质问题，但您也有数据问题。
    您有 2,000 名学生的样本，他们在高中就读并且在 100 所大学之一，但有些大学 GPA 丢失了。它们丢失的原因是某些学生辍学或被开除，无论是哪种原因，造成这种情况的部分因素也是内生的。

{pstd}
    因此，您使用 Stata 的新命令 {cmd:xteregress}。您输入 

{phang2}{cmd:. xteregress gpa income,}
        {cmd:endogenous(hsgpa = income i.hsprivate, nore)}
        {cmd:select(graduate = hsgpa income i.roommate i.program)}


{* ------------------------------------------------------------}{...}
{marker import}{...}
{title:亮点 8. 从 SAS 和 SPSS 导入数据}

{pstd}
    Stata 16 有两个新导入命令，用于导入 SAS 和 SPSS 数据集。

{pstd}
    {helpb import sas} 导入 SAS 版本 7 或更高版本的文件。它从 {cmd:.sas7bdat} 数据文件和从 {cmd:.sas7bcat} 值标签文件导入。

{pstd}
    {helpb import spss} 导入 SPSS 版本 16 或更高版本的文件。
    它导入 IBM SPSS Statistics 文件，即 {cmd:.sav} 和 
    {cmd:.zsav} 文件。

{pstd}
     尝试使用对话框中的这些新命令。您可以预览数据并选择要导入的变量和观察值。


{* ------------------------------------------------------------}{...}
{marker npse}{...}
{title:亮点 9. 非参数序列回归}

{pstd}  
   Stata 16 新的 {helpb npregress series} 命令拟合非参数序列回归，使用多项式、B 样条或协变量的样条逼近因变量的均值。输入

        {cmd:. npregress series  wineoutput  rainfall temperature i.irrigation}

{pstd}
    {cmd:npregress series} 拟合的模型为 

         E(wineoutput) = g(rainfall, temperature, i.irrigation) 

{pstd}
    {cmd:npregress} {cmd:series} 不报告系数，而是报告效应，意即连续变量的平均边际效应和分类变量的对比。结果可能是降雨的平均边际效应为 1，灌溉的对比为 2，这可以被解释为灌溉的平均处理效应。

{pstd}
    作为非参数回归，未知均值由协变量的序列函数近似。尽管如此，我们仍可以获得从参数模型中可以获得的推论。我们只需要使用 {cmd:margins}。我们可以输入

        {cmd:. margins irrigation, at(temperature=(40(10)90))}

{pstd}
    并获得 40、50、...、90 度灌溉水平的平均效应表。我们可以使用 {cmd:marginsplot} 绘制结果。

{pstd}
    {cmd:npregress} 还可以拟合部分类参数（半参数）模型。 {cmd:npregress} 可以拟合如下模型：

                  E(y) = g1(x1,x2) + g2(x3) + g(x4)
    和 
                  E(y) = g(x1,x2) + β₁x3 + β₂x3*x4

{pstd}
    有关非参数序列回归的更多信息，请参见 {manlink R npregress intro}。


{* ------------------------------------------------------------}{...}
{marker frames}{...}
{title:亮点 10. 框架：内存中的多个数据集}

{pstd}
    在某种程度上，没有变化。如果您输入 

             {cmd:. use people}

{pstd} 
    {cmd:people.dta} 就像在以前版本的 Stata 中一样被加载到内存中。您可以像过去一样使用 Stata 16，一次使用一个数据集。然而，在 Stata 16 中，您刚才使用的数据集是加载到一个框架中，您可以有很多框架。框架有名称。{cmd:people.dta} 被加载到名为 {cmd:default} 的框架中。接下来试试这个：

             {cmd:. frame create counties}
             {cmd:. frame counties: use counties}

{pstd}
    现在您在内存中有两个数据集！文件 {cmd:people.dta} 在名为 {cmd:default} 的框架中，文件 {cmd:counties.dta} 在名为 {cmd:counties} 的框架中。您当前的框架仍然是 {cmd:default}，大多数 Stata 命令使用当前框架中的数据。
    如果您输入

             {cmd:. list}

{pstd}
    那么 {cmd:people.dta} 将被列出。如果您输入

             {cmd:. frame counties: list}

{pstd}
    那么 {cmd:counties.dta} 将被列出。或者，您可以通过输入 

            {cmd:. frame change counties}
 
{pstd} 
    将 {cmd:counties} 更改为当前框架，现在如果您输入

             {cmd:. list}

{pstd} 
    那么 {cmd:county.dta} 将被列出，您输入的任何其他 Stata 命令都将针对 {cmd:counties} 框架中的数据运行。当您愿意时，您可以切换回 {cmd:default}：

            {cmd:. frame change default}

{pstd} 
    假设 {cmd:people.dta} -- 在 {cmd:default} 框架中的数据 --
    包含一个名为 {cmd:countycode} 的变量，并且假设 {cmd:counties.dta} -- 在 {cmd:counties} 框架中的数据 -- 也有一个县码变量，但它的名称是 {cmd:cntycode}。如果两个变量使用相同的编码，无论是字符串还是数字，我们可以将两个框架中的观测值关联起来。如果我们这样做，我们将能够从 {cmd:default} 框架中的数据访问存储在 {cmd:counties} 框架中的变量。要链接两个框架，我们输入 

            {cmd:. frlink m:1 countycode, frame(counties cntycode)}

{pstd}
   但忽略它。 {cmd:frlink} 的语法在链接变量具有相同名称时更简单，因此尝试这条命令：

            {cmd:. frame county: rename cntycode countycode}
            {cmd:. frlink m:1 countycode, frame(counties)}

{pstd}
    无论哪种方式，{cmd:default} 框架中的每个个人都与 {cmd:counties} 框架中的适当观测值相链接；在同一县居住的那些人将链接到 {cmd:counties} 中的同一观测值。等一下！
    框架 {cmd:counties} 包含县，但框架 {cmd:default} 包含人？ Stata 不在乎，但这确实令人恼火，因为不一致使句子显得笨拙。我们可以修复它。

           {cmd:. frame rename default people}

{pstd}
    这要好得多。{cmd:counties.dta} 在 {cmd:counties} 框架中，
    {cmd:people.dta} 在 {cmd:people} 框架中，框架 {cmd:people} 链接到框架 {cmd:counties}。即使某些人住在同一县中，链接也将有效，即使存在没有人居住在 {cmd:people} 的县的县，或者某些人住在不在 {cmd:counties} 中定义的县中！

{pstd}
    这就是框架能为您做的事情。还有更多。
    请参见 {helpb frames intro:[D] frames intro}。


    {it:还有一件事 ...}

{pstd}
    由于框架，使用 {cmd:preserve} 的 ado 文件在 Stata/MP 中运行更快。
    而且您还不需要修改它们！
    我们重新编写了 {cmd:preserve} 以秘密使用框架，这意味着在可用内存的情况下，数据集可以以迅雷不及掩耳之势保存。并且同样快速地恢复。

{pstd}
    如果您的计算机上有大量内存，您可能希望将 Stata 的新 {cmd:set} {cmd:max_preservemem} 更改为一个大于默认值 {cmd:1g} 的数字。默认情况下，一旦在 preservation 数据集时消耗 1 GB 内存，{cmd:preserve} 就会回到将数据集保存在磁盘上的旧行为。请参见 {manhelp preserve D}。


{* ------------------------------------------------------------}{...}
{marker ss}{...}
{title:亮点 11. 置信区间的样本大小分析}

{pstd}
    新命令 {help ciwidth_zh} 执行精度和样本大小（PrSS）分析，这是置信区间（CIs）的样本大小分析。问题是在使用 CIs 进行推断时，优化分配研究资源，或换句话说，估计在计划研究中实现所需的 CI 精度所需的样本大小。

{pstd}
    {cmd:ciwidth} 生成 required 的样本大小、精度等 

                1 个均值的 CI
                1 个方差的 CI

                2 个独立均值的 CI 
                2 个配对均值的 CI 

{pstd}
   一个集成 GUI 让您选择分析类型并输入假设以获得所需的结果。

{pstd} 
    {cmd:ciwidth} 允许以自定义表格和图形显示结果。

{pstd}
    {cmd:ciwidth} 命令还提供设施，供您添加自己的方法。

{pstd}
    功率、精度和样本大小是其专门手册的主题。
    请参见 {manlink PSS-3 精度和样本大小分析}。


{* ------------------------------------------------------------}{...}
{marker nonlinearDSGE}{...}
{title:亮点 12. 非线性 DSGE 模型}

{pstd}
    Stata 新的 {help dsgenl_zh} 命令估计非线性动态随机一般均衡（DSGE）模型的参数，我们的实现中的模型可以在参数和方程中纳入非线性。模型的解通过一阶扰动进行近似。
    然后在近似模型上执行参数估计。

{pstd}
    不再需要手动线性化模型，以便可以使用 Stata 的 {cmd:dsge} 命令进行拟合。当您将方程输入到 {cmd:dsgenl} 中时，它会为您线性化。模型可以包括以下方程：

        {cmd:. dsgenl (1 = {beta}*(f.c/c)*(1+r-{delta}) ...}

{pstd}
    上面是欧拉方程。变量是

                  {cmd:c}    消费 
	          {cmd:r}    利率 

{pstd}
    {cmd:{c -(}beta{c )-}} 和 {cmd:{c -(}delta{c )-}} 是待估计的参数。
    此方程可能出现在以下模型中： 

{phang2}
        {cmd:. dsgenl (1 = {beta}*(f.c/c)*(1+r-{delta})}
                 {cmd:(f.r = {rho}*r + (1-{rho}), observed(c) exostate(r)}

{pstd}
    估计后命令 {cmd:estat} {cmd:policy} 和 {cmd:estat}
    {cmd:transition} 报告政策和转移矩阵，正如它们在使用线性 {cmd:dsge} 命令估计模型后所做的那样。

{pstd}
    {helpb estat policy} 报告模型的控制变量作为状态变量的线性函数。

{pstd}
    {helpb dsge estat transition:estat transition} 报告状态变量如何随着时间推移而演变。

{pstd}
    新的 {helpb estat steady}。 它显示模型的稳态，该稳态是模型的变量最终在冲击后达到的状态。

{pstd}
    新的 {helpb dsge estat covariance:estat covariance}。 它显示系统方程的变量隐含的方差、协方差和自协方差。

{pstd}
    当然，您可以使用现有的 {cmd:irf} 命令来创建和显示冲击响应函数。

{pstd}
     请参见 {manlink DSGE Intro 1} 和 {manhelp dsgenl DSGE}。


{* ------------------------------------------------------------}{...}
{marker irt}{...}
{title:亮点 13. 多组 IRT}

{pstd}
    Stata 的 {cmd:irt} 命令现在处理多组分析。您只需添加 {cmd:group(}{varname}{cmd:)} 选项即可将现有的 {cmd:irt} 命令拟合到相应的多组模型。

{pstd}
    {cmd:irt} 拟合 1、2 和 3 参数逻辑模型。它拟合
    分级反应、名义反应、部分信用和评分尺度
    模型，以及它们的任何组合。并且它可以绘制项目特征曲线、测试特征曲线、项目信息函数和测试信息函数。

{pstd}
    在 IRT 分析中估计项目的难度和区分度，一个潜在变量表示项目旨在测量的未观察特征。当只有一个组时，仅可以估计潜在特征的方差。

{pstd}
    组特定均值和方差将被估计。
    组特定项目的难度和区分度也可以通过多组数据进行估计，或者可以约束为在组之间相等。或者可以根据您想要的方式进行约束。 {cmd:irt} 的新 {cmd:constraints} 选项允许您指定哪些参数应在组之间约束为相等，哪些参数不应约束。

{pstd}
    似然比检验也可用，为检测差异项目功能提供 IRT 模型基础的方法。

{pstd}
    请参见 {manhelp irt_group IRT:irt, group()},
        {manhelp irt_constraints IRT:irt constraints} 和
	{manhelp estat_greport IRT:estat greport}。


{* ------------------------------------------------------------}{...}
{marker pdsel}{...}
{title:亮点 14. xtheckman: 面板数据选择模型}

{pstd}
    Stata 16 现在拟合面板数据的 Heckman 选择模型。
    Heckman 选择处理某些结果缺失且这种缺失不是随机的情况。您希望拟合模型

         {it:y}ᵢₜ = {bf:x}ᵢₜ{bf:β} + αᵢ + {it:e}ᵢₜ

{pstd}
    其中 yᵢₜ 有时是缺失的。确定哪些 yᵢₜ 被观察到（哪些没有缺失）的方程是

         {it:y}ᵢₜ 被观察 = ({bf:z}ᵢₜ{bf:γ} + {it:v}ᵢ + {it:u}ᵢₜ > 0)

{pstd}
    在这些方程中，αᵢ、{it:e}ᵢₜ、{it:v}ᵢ 和 {it:u}ᵢₜ
    是未观察的，并将不会被估计。然而，它们的相关性将与 {bf:β} 和 {bf:γ} 一起被估计。

{pstd}
    经典的 Heckman 选择是针对横断面数据而开发的，关注残差中的相关性。在面板数据扩展中，这些残差仍然存在，但我们将其建模为随机效应 αᵢ 和 {it:v}ᵢ。

{pstd}
    考虑一个模型，其中 yᵢₜ 是工资，选择效应是个人是否被雇用。在面板数据中，结果随时间变化，缺失情况也会变化。
    例如，第 22 个人在时间 1 和 2 可能被雇用，在时间 3 失业，在时间 4 再次被雇用。

{pstd}
    在这个例子中，我们可以合理地认为 αᵢ 是无法观察到的与工资有关的能力。我们也可以认为 {it:v}ᵢ 是与工作相关的能力。如果它们是有相关性的，我们就有内生样本选择。我们可以对此进行检验。如果它是显著的，并且相关性为正，则不工作的人员的收入将低于工作的人员。如果是负的，他们的收入将更高。

{pstd}
    请参见 {manhelp xtheckman XT}。


{* ------------------------------------------------------------}{...}
{marker pharmo}{...}
{p 0 0 2}{bf:{ul:亮点 15. 包含滞后等的非线性多级模型：多剂量 PK 模型}}

{pstd}
    现有命令 {help menl_zh} 具有用于拟合可能包含滞后、前导（前向）和差异运算符的非线性多级模型的新功能。此类模型的重要类别是药物动力学（PK）模型。PK 模型与药物的吸收、分布、代谢和排泄有关。单剂量和多剂量模型特别引人注目。每种模型有两种形式，根据药物进入体内的方式进行区分：口服或静脉注射。
    {cmd:menl} 可以拟合所有这些模型。

{pstd}
    以下是如何使用 {cmd:menl} 拟合一个一室开放模型（1-COM），具有静脉注射多剂量和一次消除的功能。1-COM 模型将身体视为单一的均质体积。注射药物后，混合是瞬时的。一阶消除假设在每次注射后，药物浓度呈指数下降。要拟合模型，输入

{phang2}
         {cmd:. menl conc = dose/{V:} + L.{conc:}*exp( -{Cl:}/{V:}*D.time ),}
                {cmd:define(Cl: {cl:weight} * weight * exp({U1[subject]}))}
                {cmd:define( V: {v:weight} * weight *}
                           {cmd:( 1+{c -(}v:apgar{c )-}*1.fapgar ) * exp( {c -(}U2[subject]{c )-}) )}
                {cmd:tsinit({conc:} = dose/{V:})}
                {cmd:tsmissing}
                {cmd:tsorder(time)}

{pstd}
    {cmd:menl} 的新功能还可用于拟合其他模型，例如特定的增长和时间序列非线性多级模型。请参见
{mansection ME menlRemarksandexamplesTime-seriesoperators:{it:时间序列运算符}}和 
{mansection ME menlRemarksandexamplesMultiple-dosepharmacokineticmodeling:{it:多剂量药物动力学建模}}
    在 {bf:[ME] menl} 中。


{* ------------------------------------------------------------}{...}
{marker hetoprobit}{...}
{title:亮点 16. 异方差有序概率模型}

{pstd}
    异方差有序概率模型现在加入了 Stata 先前拟合的有序概率模型。 有序概率模型是从二元概率模型的推广，适用于多个有序结果。考虑一个三值结果。如果 {bind:{it:z} ≤ -1.1} 则结果为“贫”；如果 {-1.1 < {it:z} ≤ 1} 则结果为“好”；如果 {bind:{it:z} > 1} 则结果为“优秀”，其中

               {it:z} = {bf:X}{bf:β} + {it:u}

{pstd}
    {it:u} 是 N(0,1)。

{pstd}
    Stata 新的 {cmd:hetoprobit} 命令允许您将 {it:u} 的方差建模为与同或其他协变量的函数。使用 probit 时，不得忽视异方差。如果这样做，结果将是错误的。

{pstd}
    异方差有序概率模型用于不同受试者具有不同方差的情况。请参见 {manhelp hetoprobit R}。


{* ------------------------------------------------------------}{...}
{marker sizes}{...}
{title:亮点 17. 图形大小以打印点、英寸或厘米为单位}

{pstd}
    图形命令现在允许指定以打印点、英寸或厘米为单位的大小。指定 {cmd:12pt}、{cmd:1in} 或 
    {cmd:1.4cm}。您可以将这些单位用于文本大小、标记大小、边距、线条粗细、行间距、间隙等。您可以在所有大小中使用它们，除了那些显然是相对于图中的其他对象的。

{pstd}
    请参见 {manhelpi size G-4}。


{* ------------------------------------------------------------}{...}
{marker numinteg}{...}
{title:亮点 18. 数值积分}

{pstd}
     Mata 新的 {cmd:Quadrature} 类数值积分 {it:y} = f({it:x})，{it:y} 和 {it:x} 标量，在区间 {it:a} 到 {it:b} 之间，其中 {it:a} 可以是负无穷或有限的，{it:b} 可以是正无穷或有限的。使用自适应求积方法对积分进行近似。

{pstd}
     请参见 {help

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew15to16.sthlp>}