{smcl}
{* *! version 1.3.1  11may2018}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew8to9:English Version}
{hline}{...}
{title:版本 9.0 的新功能（与版本 8 比较）}

{pstd}
此文件列出了与 Stata 版本 9.0 的创建对应的更改：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版本           2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017至2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本           2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0, 14.1 和 14.2   2015至2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本           2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013至2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版本           2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011至2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版本           2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0, 11.1 和 11.2   2009至2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版本           2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007至2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版本           2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0, 9.1 和 9.2     2005至2007    {c |}
    {c |} {bf:此文件}        Stata  9.0 新版本           2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0, 8.1 和 8.2     2003至2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版本           2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001至2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版本           2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999至2000    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列在最前面。


{hline 3} {hi:更近期的更新} {hline}

{pstd}
请查看 {help whatsnew9_zh}。


{hline 3} {hi:Stata 9.0 发布 2005年4月22日} {hline}

{title:备注}

{pstd}
一些重要的新功能包括

{p 8 12 2}
1.  新的矩阵编程语言 Mata。

{p 8 12 2}
2.  新的调查功能，包括
    平衡重复复制（BRR）
    和捷克方差估计，
    对多阶段设计的全面支持，
    和后分层。

{p 8 12 2}
3.  线性混合模型的估计，包括所有方差分量的标准误和
    置信区间。

{p 8 12 2}
4.  多项式概率模型的估计，
    包括支持几种相关结构和用户定义结构。

{p 8 12 2}
5.  新的多变量分析，包括多维缩放、
    对应分析和 Procrustes 分析，以及
    分析接近度矩阵和原始数据的能力。

{p 8 12 2}
6.  改进的图形用户界面，包括多个 Do-file 编辑器、多个查看器、
     和多个图形窗口；多个窗口偏好设置；可停靠
     窗口；等等。

{pstd}
还有其他主要功能，提到所有内容将需要我们另外 30 页。

{pstd}
新功能根据以下标题呈现

		{helpb whatsnew8to9##mata:新矩阵语言}

		{helpb whatsnew8to9##survey:调查统计}

		{helpb whatsnew8to9##panel:纵向/面板数据}
		
		{helpb whatsnew8to9##timeseries:时间序列统计}

		{helpb whatsnew8to9##multivariate:多变量统计}

		{helpb whatsnew8to9##survival:生存分析}

		{helpb whatsnew8to9##general:通用统计}

		{helpb whatsnew8to9##ml:新 ML 功能}

		{helpb whatsnew8to9##functions:函数和表达式}

		{helpb whatsnew8to9##data:数据管理}

		{helpb whatsnew8to9##graphics:图形}

		{helpb whatsnew8to9##gui:用户界面}

		{helpb whatsnew8to9##programming:编程}

		{helpb whatsnew8to9##documentation:文档}


{marker mata}{...}
{title:新功能： 新矩阵语言}

{pstd}
Stata 具有全新的矩阵语言 Mata，这一语言有自己的手册，即 {bf:[M] Mata 参考手册}。
希望以矩阵形式思考并进行交互式矩阵计算的用户可以使用 Mata，而想要向 Stata 增加功能的程序员也可以使用它。

{pstd}
Mata 已被用于实现许多在本次版本中发现的新功能。Mata 是编译过的、经过优化的，且速度快。

{pstd}
Stata 之前存在的 {cmd:matrix} 命令继续被记录。两者之间存在一种不尽如人意的关系，但 {cmd:matrix} 继续得以使用。然而，对于较为复杂的计算，您肯定会希望使用新语言。

{pstd}
请参见 {help mata_zh:[M-0] 介绍} -- 或 {cmd:help} {cmd:mata} -- 其中提供了一个介绍和组织的阅读列表。您首先阅读的将是 {help m1_first_zh:[M-1] 首要}。

 
{marker survey}{...}
{title:新功能： 调查统计}

{pstd}
Stata 9 在调查分析和相关数据分析方面显著扩展了 Stata 的功能，通过添加计算标准错误的另外两种方法 -- 平衡重复复制（BRR）和调查捷克法。

{pstd}
Stata 9 还全面支持多阶段抽样和后分层。  

{pstd}
用于声明调查数据设计和拟合模型的新统一语法已经被采用。有关所有调查设施的概述，请参见 {help survey_zh:{bf:[SVY] survey}}。

{pstd}
所有旧语法在版本控制下继续有效，尽管调查估计命令并不要求这样，但如果您使用旧语法，则新功能将不可用。

{p 5 9 2} 
1. 现有命令 {cmd:svyset} 用于声明调查设计的新语法支持 Stata 的调查分析功能中大量新特性的：

{p 9 13 2}
    a.  已为先前可用的线性化方差估计器添加了 BRR 和捷克方差估计器。
        此外，当您 {cmd:svyset} 或在估计时，现在可以指定 BRR 或捷克法（或线性化）的使用。

{p 9 13 2}
    b.  现在可以声明多阶段设计，并且可以具有主要、次要和低级采样单位。线性化方差估计器充分利用了多阶段设计中的信息。

{p 9 13 2}
    c.  现在允许在所有阶段进行分层，使得方差估计在可以利用分层的地方更加高效。

{p 9 13 2}
    d.  现在可以进行后分层，类似于分层，也使得方差估计更加有效。后分层调整权重，改善方差估计，并在已知人口或其他分组时考虑偏差。

{p 9 13 2}
    e.  现在在所有阶段允许进行有限人口校正。

{p 9 13 2}
    f.  在所有三个方差估计器下，处理采样权重。

{p 9 9 2} 
    有关详细信息，请参见 {manhelp svyset SVY}。
    之前的 {cmd:svyset} 语法在版本控制下继续有效。

{p 5 9 2}
2. 新前缀命令 {cmd:svy:} 是您告知估计器您有调查数据的方式。您不再输入 {cmd:svyregress}；您输入 {cmd:svy: regress}。这不仅仅是风格的问题； {cmd:svy} 实际上是一个前缀命令，事实上，您甚至可以在您编写的估计命令中使用它作为前缀。此外，{cmd:svy:} 为访问 Stata 的调查功能提供了统一的标准语法。{cmd:svy:} 易于使用，因为它自动应用您之前 {cmd:svyset} 的所有设置，包括设计。

{p 9 9 2} 
以下估计器可以与 {cmd:svy:} 前缀一起使用：

{p2colset 14 36 38 2}{...}
{p 9 9 2}
{bf:描述性统计}

{p2col :{helpb "svy: mean"}}总体和亚总体均值{p_end}
{p2col :{helpb "svy: proportion"}}总体和亚总体比例{p_end}
{p2col :{helpb "svy: ratio"}}总体和亚总体比率{p_end}
{p2col :{helpb "svy: total"}}总体和亚总体总计{p_end}

{p2col :{helpb "svy: tabulate oneway"}}调查数据的一维表{p_end}
{p2col :{helpb "svy: tabulate twoway"}}调查数据的二维表{p_end}

{p 9 9 2}
{bf:回归模型}

{p2col :{helpb "svy: regress"}}线性回归{p_end}
{p2col :{helpb "svy: ivreg"}}工具变量回归{p_end}
{p2col :{helpb "svy: intreg"}}区间和审查回归{p_end}

{p2col :{helpb "svy: logistic"}}逻辑回归，报告赔率比{p_end}
{p2col :{helpb "svy: logit"}}逻辑回归，报告系数{p_end}
{p2col :{helpb "svy: probit"}}Probit 回归{p_end}

{p2col :{helpb "svy: mlogit"}}多项式逻辑回归{p_end}
{p2col :{helpb "svy: ologit"}}有序逻辑回归{p_end}
{p2col :{helpb "svy: oprobit"}}有序 Probit 模型{p_end}

{p2col :{helpb "svy: poisson"}}泊松回归{p_end}
{p2col :{helpb "svy: nbreg"}}负二项回归{p_end}
{p2col :{helpb "svy: gnbreg"}}广义负二项回归{p_end}

{p2col :{helpb "svy: heckman"}}Heckman 选择模型{p_end}
{p2col :{helpb "svy: heckprob"}}带选择的 Probit 模型{p_end}

{p 9 9 2} 
    先前存在的调查估计命令，例如 {cmd:svyregress}、{cmd:svymean} 和 {cmd:svypoisson} 继续按之前的方式工作，但仅当您的调查设计使用 {cmd:version 8: svyset} 声明或您使用的是旧的 Stata 8 数据集时。有关旧估计命令与新语法的映射，请参见 {help svy8_zh}。 (新的前缀 {cmd:svy:} 适用于在早期 Stata 版本中已执行 {cmd:svyset} 的数据集。)

{p 9 9 2} 
    除了三个方差估计器和对多阶段抽样的支持，新 {cmd:svy:} 前缀还提供了其他增强功能，包括

{p 9 13 2}
    a.  选项 {cmd:subpop()} 允许更灵活地选择亚总体，意味着现在允许更一般的 {cmd:if} 条件。

{p 9 13 2}
    b.  现在更好地处理仅有一个采样单位（有时称为孤立 PSUs）的层次 -- 现在报告系数，但标准误缺失。现在可以使用 {cmd:svydes} 来查找和描述这些层次；
    请参见 {manhelp svydes SVY}。

{p 9 13 2}
    c.  使用 BRR 方差估计时，可以使用 Hadamard 矩阵替代 BRR 权重，并可以指定 Fay 的调整；
    请参见 {manhelpi brr_options SVY}。

{p 5 9 2}
3. 新命令 {cmd:svy:} {cmd:proportion} 替代 {cmd:svyprop}。
    （顺便说一句，新命令 {cmd:proportion} 可以在不使用 {cmd:svy:} 前缀的情况下使用；请参见 {manhelp proportion R}。）
    与 {cmd:svyprop} 不同的是，{cmd:svy:} {cmd:proportion} 是一个估计命令，并计算所有估计比例的完全协方差矩阵，允许后估计功能，如比例的线性和非线性组合的测试（{help test_zh} 和 {help testnl_zh}）或创建具有置信区间的线性和非线性组合（{help lincom_zh} 和 {help nlcom_zh}）。

{p 5 9 2}
4. 新命令 {cmd:svy:}  {cmd:ratio}、{cmd:total} 和
    {cmd:mean}，用于 {cmd:svy:} 前缀，
    使用逐例删除并为估计估算完整的协方差矩阵。

{p 5 9 2}
5. 新命令 {cmd:svy: tabulate oneway} 解决了缺失的特性。
    之前，任何想要进行一维表格的人都必须创建一个常数，并使用该常数执行二维调查表格。

{p 5 9 2}
6. 新命令 {cmd:estat} 计算并报告使用 {cmd:svy:} 前缀后估计的额外统计信息和信息：

{p 9 13 2}
    a. {cmd:estat} {cmd:svyset} 报告有关调查设计的完整信息。

{p 9 13 2}
    b. {cmd:estat} {cmd:effects} 计算并报告设计效果 -- DEFF 和 DEFT -- 以及误设定效果 -- MEFF 和 MEFT -- 的任何组合。

{p 9 13 2}
    c. {cmd:estat} {cmd:effects} 还可以计算子总体的 DEFF 和 DEFT 使用来自整体人口或子总体的简单随机样本估计。 {cmd:estat}
	{cmd:effects} 替代并扩展了之前可用于调查估计器的 {cmd:deff}，{cmd:deft}，{cmd:meff} 和 {cmd:meft} 选项。

{p 9 13 2}
    d. {cmd:estat} {cmd:lceffects} 计算并报告任何线性组合的调查设计效果和误设定效果估计参数。

{p 9 13 2}
    e. {cmd:estat} {cmd:size} 报告每个子总体的样本和人口大小，使用 {cmd:svy:} {cmd:mean}、 
	{cmd:svy:} {cmd:proportion}、 {cmd:svy:} {cmd:ratio}、
    和 {cmd:svy:} {cmd:total}。

{p 9 9 2}
     有关调查估计后的 {cmd:estat} 的详细信息，
     请参见 {help svy estat:{bf:[SVY] estat}}。

{p 5 9 2}
7. 现有命令 {cmd:svydes} 具有多个新特性和选项：

{p 9 13 2}
	a. 新选项 {cmd:stage()} 允许您选择报告样本统计的采样阶段。

{p 9 13 2}
	b. 新选项 {cmd:generate()} 识别单个采样单位的层次。

{p 9 13 2}
	c. 新选项 {cmd:finalstage} 替代 {cmd:bypsu} 并按最终阶段的采样单位报告观察样本统计。

{p 5 9 2}
8. 新选项 {cmd:stdize()} 和 {cmd:stdweight()} 在命令 {cmd:svy: mean}、 {cmd:svy: ratio}、 {cmd:svy: proportion}、
    {cmd:svy: tabulate oneway} 和 {cmd:svy: tabulate twoway} 中，允许对均值、比率、比例和表进行直接标准化，使用任何三个调查方差估计器中的一个。

{p 5 9 2}
9. 估计命令的程序员几乎可以自动获得对调查和相关数据的完整支持。 该支持包括对多阶段设计、加权、分层、后分层和有限人口校正的正确处理，以及访问所有三个方差估计器的能力。
请参见 {help program properties:{bf:[P] program properties}}。

{p 4 9 2}
10. [SVY] 手册现在包含定义调查分析中常用术语的词汇表，并解释这些术语在手册中的使用方式；请参见 {bf:[SVY] 词汇表}。


{marker panel}{...}
{title:新功能： 纵向/面板数据}

{p 5 9 2} 
1.  大新闻是新命令 {cmd:xtmixed} -- Stata 现在适合线性混合模型，也称为分层模型或多级模型。

{p 9 9 2} 
    混合模型包括社会科学家所称的随机效应模型，包括单向、双向、多向以及层次模型，并且包括随机系数模型。

{p 9 9 2} 
    通过最大似然法（ML）、限制最大似然法（REML）或期望最大化（EM）来获得估计。随机效应之间的协方差被估计，并且可以是独立的（没有协方差）、可交换的（共同协方差）或非结构化的（每对效应的唯一协方差）。

{p 9 9 2} 
    {cmd:xtmixed} 会为固定参数估计标准误和置信区间，并估计随机效应的标准差（方差）和相关性（协方差）以及它们之间的完整 VCE 矩阵。

{p 9 9 2} 
    有关详细信息，请参见 {manhelp xtmixed XT}。

{p 9 9 2} 
    在 {cmd:xtmixed} 后进行估计， 

{p 9 13 2}
    a.  {cmd:estat} {cmd:recovariance} 报告为每个级别估计的随机效应的方差-协方差矩阵。

{p 9 13 2}
    b.  {cmd:estat} {cmd:group} 概括嵌套组的组成，提供每个级别的最小、平均和最大组大小。

{p 9 9 2} 
    在 {cmd:xtmixed} 之后的 {cmd:predict} 可以计算每个随机效应的最佳线性无偏预测（BLUP）。它还可以计算线性预测、线性预测的标准误、拟合值（线性预测加上随机效应的贡献）、残差和标准化残差。

{p 5 9 2}
2. 对于没有封闭解并且需要对似然函数进行数值评估的最大似然估计器，已经添加了新功能。这些估计器包括 {help xtlogit_zh}、{help xtprobit_zh}、{help xtpoisson_zh}、{help xtcloglog_zh}、{help xtintreg_zh} 和 {help xttobit_zh}。

{p 9 13 2} 
    a.  现在可以使用自适应 Gauss-Hermite 求积（新的默认选项）或非自适应求积（以前的默认选项）来近似似然函数。自适应求积
    显著提高了近似的准确性，尤其是在数据有大面板尺寸或随机效应的方差较大等困难问题上。

{p 9 13 2} 
    b.  现在可以使用新选项 {cmd:constraints()} 施加线性约束。约束按照标准方式指定；见 {manhelp constraint R}。

{p 9 13 2} 
    c. 新选项 {cmd:intpoints()} 替代旧选项 {cmd:quad()}，尽管 {cmd:quad()} 仍然可以使用。
    新名称更有意义，特别是在与采用其他方法积分似然的估计器一起使用时。

{p 5 9 2}
3. 现有命令 {cmd:xtreg} 现在允许在估计固定效应（FE）和随机效应（RE）模型时使用选项 {cmd:robust} 和 {cmd:cluster()}；见 {manhelp xtreg XT}。

{p 5 9 2}
4. 之前不允许时间序列操作符的大多数 {cmd:[XT]} 命令现在支持它们。这些命令包括
    {help xtgls_zh}、{help xtreg_zh}、{help xtsum_zh}、 
    {help xtcloglog_zh}、{help xtintreg_zh}、{help xtlogit_zh}、{help xtpoisson_zh}、{help xtprobit_zh}、{help xttobit_zh} 和 {help xtgee_zh}。

{p 5 9 2}
5. 新命令 {cmd:xtrc} 是旧命令 {cmd:xtrchh} 的重命名，并具有新功能。
    新选项 {cmd:beta} 报告组特定系数的最佳线性预测（BLUP），以及它们的标准误和置信区间。有关详细信息，
    请参见 {manhelp xtrc XT}。

{p 5 9 2}
6. 在 {cmd:xtrc} 之后的 {cmd:predict} 有新选项 {cmd:group()} 用于计算使用系数的 BLUP 的因变量。

{p 5 9 2}
7. 新命令 {cmd:xtline} 绘制面板数据并允许为每个面板绘制叠加或单独的图；
    请参见 {manhelp xtline XT}

{p 5 9 2}
8. 新部分 {bf:[XT]} {bf:词汇表} 定义常用术语及其使用方式。


{marker timeseries}{...}
{title:新功能： 时间序列统计}

{p 5 9 2}
1. 现有命令 {cmd:arima} 现在可以估计乘法季节性 ARIMA (SARIMA) 模型；见新选项 {cmd:sarima()}、{cmd:mar()} 和
    {cmd:mma()} 在 {help arima_zh:[TS] arima}。

{p 5 9 2}
2. 新命令 {cmd:rolling} 执行滚动窗口或递归估计（包括回归），并收集每个窗口的估计统计量；
    见 {manhelp rolling TS}。

{p 5 9 2}
3. {bf:[TS]} 手册现在有一个词汇表，定义时间序列分析中常用的术语，并解释我们如何在手册中使用它们；见
    {bf:[TS]} {bf:词汇表}。

{p 5 9 2}
4. 许多现有命令之前不允许时间序列操作符，现在可以了。这些
    命令包括 {cmd:areg}、{cmd:binreg}、{cmd:biprobit}、 
    {cmd:boxcox}、{cmd:cloglog}、{cmd:cnsreg}、{cmd:glm}、{cmd:heckman}、
    {cmd:heckprob}、{cmd:hetprob}、{cmd:impute}、{cmd:intreg}、 
    {cmd:logistic}、{cmd:logit}、{cmd:lowess}、{cmd:mvreg}、{cmd:nbreg}、
    {cmd:orthog}、{cmd:pcorr}、{cmd:poisson}、{cmd:probit}、{cmd:pwcorr}、
    {cmd:rreg}、{cmd:testparm}、{cmd:treatreg}、{cmd:truncreg}、 
    {cmd:xtcloglog}、{cmd:xtgls}、{cmd:xtintreg}、{cmd:xtlogit}、 
    {cmd:xtpoisson}、{cmd:xtprobit}、{cmd:xtgee}、{cmd:xtreg}、 
    {cmd:xtsum} 和 {cmd:xttobit}。  

{p 5 9 2}
5. 许多需要时间序列数据的命令现在将对从面板数据集中选择的单个面板有效，当该面板使用 {cmd:if}
    表达式或 {cmd:in} 限定符进行选择时。那些命令包括 {cmd:ac}、{cmd:corrgram}、{cmd:cumsp}、{cmd:dfgls}、{cmd:dfuller}、{cmd:pac}、
    {cmd:pergram}、{cmd:pperron}、{cmd:wntestb}、{cmd:wntestq} 和 {cmd:xcorr}。新命令 {cmd:estat} {cmd:archlm}、{cmd:estat}
    {cmd:bgodfrey}、{cmd:estat} {cmd:dwatson} 和 {cmd:estat}
    {cmd:durbinalt}，替代命令 {cmd:archlm}、{cmd:bgodfrey}、{cmd:dwstat} 和 {cmd:durbina}，同样适用于来自面板
    数据集的单个面板。

{p 5 9 2}
6. 分析 IRF 结果的对话框得到了极大的改善。对话框现在会根据当前的 IRF 结果填充可以选择的模型和变量列表，以生成表和图形。改进的对话框包括 {bf:{stata db irf cgraph}}、 
   {bf:{stata db irf ctable}}、 
   {bf:{stata db irf graph}}、
   {bf:{stata db irf ograph}} 和 
   {bf:{stata db irf table}}。

{p 5 9 2}
7. 现有命令 
    {cmd:dfuller} 有新选项 {cmd:drift} 用于测试随机游走的漂移的零假设。计算 MacKinnon 的
    近似 p 值的算法在 p 值相对较大时也变得更加准确；见 {help dfuller_zh:[TS] dfuller}。

{p 5 9 2}
8. 现有命令 
    {cmd:corrgram} 和 {cmd:pac} 有新选项 {cmd:yw}，使用 Yule-Walker 方程计算部分自相关；见 {manhelp corrgram TS}。

{p 5 9 2}
9. 在估计和其他结果表中，时间序列操作符现在得到了更好的显示。

{p 4 9 2}
10. 新命令 {cmd:estat} -- 用于在 {cmd:regress} 之后 -- 汇总了之前由命令 {cmd:dwstat}、{cmd:durbina}、 
    {cmd:bgodfrey} 和 {cmd:archlm} 完成的工作。
    新命令是 
    {cmd:estat dwatson}、 
    {cmd:estat durbina}、 
    {cmd:estat bgodfrey} 和
    {cmd:estat archlm}。
    见 {helpb regress postestimationts:[R] regress postestimation time series}。

{p 4 9 2}
11. {cmd:arima} 和 {cmd:arch} 通过观察到的信息矩阵（OIM）或梯度外积（OPG）估计标准误的能力已经在新 {cmd:vce()}
    选项下整合。

{pstd}
(以下内容首次在 Stata 8.2 中发布。)

{p 4 9 2}
12. 新命令 {cmd:vec} 适合协整的向量误差修正模型（VECMs），使用约翰森的方法；见 {manhelp vec TS}。

{p 4 9 2}
13. 新命令 {cmd:vecrank} 生成用于确定 VECM 中协整向量数量的统计量，包括约翰森的迹和最大特征值测试；见 
    {manhelp vecrank TS}。

{p 4 9 2}
14. 新命令 {cmd:fcast} -- 替代旧命令 {cmd:varfcast} -- 生成和图示动态预测在拟合 VAR、SVAR 或 VECM 之后的因变量；见 
    {manhelp fcast TS}。

{p 4 9 2}
15. 新命令 {cmd:irf} -- 替代旧命令 {cmd:varirf} -- 完成旧命令所做的一切及更多。 {cmd:irf} 估计冲击响应函数、累积冲击响应函数、正交化冲击响应函数、结构冲击响应
函数和拟合 VAR、SVAR 或 VECM 之后的预测误差方差分解。{cmd:irf} 还可以生成结果的图表和表格。
    请参见 {help irf_zh:[TS] irf}。

{p 9 9 2}
    {cmd:varirf} 继续有效，但不再记录。 {cmd:irf} 接受由 {cmd:varirf} 创建的 {cmd:.vrf} 结果文件。

{p 4 9 2}
16. 现有命令 {cmd:varsoc} 现在可以用于获得 VECMs 和 VARs 的滞后顺序选择统计量；
    见 {help varsoc_zh:[TS] varsoc}。

{p 4 9 2}
17. 新命令 {cmd:veclmar} 在拟合 VECM 之后计算自相关的拉格朗日乘数统计；见 
    {help veclmar_zh:[TS] veclmar}。

{p 4 9 2}
18. 新命令 {cmd:vecnorm} 测试 VECM 中的干扰是否呈正态分布。对于每个方程和所有方程联合，计算三个统计量：偏度统计量、峰度统计量和 Jarque-Bera 统计量。见 
    {help vecnorm_zh:[TS] vecnorm}。

{p 4 9 2}
19. 新命令 {cmd:vecstable} 在拟合 VECM 之后检查特征值稳定性条件；见 {help vecstable_zh:[TS] vecstable}。

{p 4 9 2}
20. 新命令 {cmd:vecstable} 和现有命令 {cmd:varstable} 有一个新的图形选项用于呈现
    稳定性结果。见 
    {help vecstable_zh:[TS] vecstable} 和 
    {help varstable_zh:[TS] varstable}。

{p 4 9 2}
21. 以下命令的输出格式已被标准化以改善格式：{cmd:var}、{cmd:svar}、{cmd:vargranger}、
    {cmd:varlmar}、{cmd:varnorm}、{cmd:varsoc}、{cmd:varstable} 和 {cmd:varwle}。

{p 4 9 2}
22. 新命令 {cmd:haver} 使加载和分析可从 Haver Analytics 获取的经济和金融数据库变得容易；
    见 {help haver_zh:[TS] haver}。



{marker multivariate}{...}
{title:新功能： 多变量统计}

{pstd}
Stata 有四种全新的方法来分析多变量数据，以及许多对现有方法的扩展。此外，大多数方法现在支持直接分析矩阵和原始数据。

{pstd}
请确保查看您使用的多变量估计器的后估计文档；许多重要的新特性在其中有所记录。特别是，所有多变量命令大量使用新命令 {cmd:estat} 来提供估计后的额外统计数据和结果。

{p 5 9 2}
1.  新命令 {cmd:mds}、{cmd:mdslong} 和 {cmd:mdsmat} 执行经典的度量多维缩放：{cmd:mds} 根据距离（不相似性）对观察进行缩放，{cmd:mdslong} 在长数据集中进行缩放，每个观察代表两个点或物体之间的距离，而 {cmd:mdsmat} 在距离矩阵上进行缩放。
    请参见 {help mds_zh:{bf:[MV] mds}}、 {help mdslong_zh:{bf:[MV] mdslong}} 和 
    {help mdsmat_zh:{bf:[MV] mdsmat}}。

{p 9 9 2}
    {cmd:mds} 支持 Stata 中可用的 33 种相似性/不相似性度量；见 
    {help measure_option_zh:{bf:[MV]} {it:measure_option}}。

{p 9 9 2}
    以下新的 {cmd:estat} 命令在 {cmd:mds}、{cmd:mdslong} 或 {cmd:mdsmat} 后工作，提供额外的统计数据和结果：

{p 9 13 2}
    a.  {cmd:estat} {cmd:config} 报告逼近配置的坐标。

{p 9 13 2}
    b.  {cmd:estat} {cmd:correlations} 报告不相似性与每个对象的逼近距离之间的皮尔逊和斯皮尔曼相关性。

{p 9 13 2}
    c.  {cmd:estat} {cmd:pairwise} 报告每对比较的一组统计数据；它报告不相似性、逼近距离和原始残差。

{p 9 13 2}
    d.  {cmd:estat} {cmd:quantiles} 报告每个观察（在 {cmd:mds} 后）或对象（在 {cmd:mdslong} 或 {cmd:mdsmat} 后）的残差的分位数。

{p 9 13 2}
    e.  {cmd:estat} {cmd:stress} 报告转化不相似性和每个对象拟合距离之间的 Kruskal 压力
    （损失）度量。

{p 9 9 2}
    请参见 {help mds postestimation:{bf:[MV] mds postestimation}} 以获取更多信息。

{p 9 9 2}
    此外，还有两个新命令用于绘制多维缩放的结果：

{p 9 13 2}
    a.  {cmd:mdsconfig} 绘制前两个维度的逼近欧几里得配置；见 
	{help mds postestimation plots##mdsconfig:{bf:[MV] mds postestimation plots}}。

{p 9 13 2}
    b.  {cmd:mdsshepard} 在逼近欧几里得距离上产生不相似性的 Shepard 图；见 
    {help mds postestimation plots##mdsshepard:{bf:[MV] mds postestimation plots}}。

{p 9 9 2}
    在任何多维缩放命令之后执行 {cmd:predict} 将产生 

{p 9 13 2}
    a. 包含逼近配置的变量
	({cmd:predict} {it:newvarlist}{cmd:,} {cmd:config});

{p 9 13 2}
    b. 包含不相似性、距离和原始残差的变量
	({cmd:predict} {it:newvarlist}{cmd:,} {cmd:pairwise})

{p 9 9 2}
    请参见 {help mds postestimation##predict:{bf:[MV] mds postestimation}} 以获取更多信息。

{p 5 9 2}
2. 新命令 {cmd:ca} 和 {cmd:camat} 使用多种可用的规范化形式进行双向对应分析。
    {cmd:ca} 在两个分类变量的交叉表上执行分析；{cmd:camat} 在计数矩阵上执行分析；见 {help ca_zh:{bf:[MV] ca}} 以获取有关两者的更多信息。

{p 9 9 2}
    以下新的 {cmd:estat} 命令在 {cmd:ca} 和 {cmd:camat} 后工作，提供额外的统计数据和结果：

{p 9 13 2}
    a.  {cmd:estat} {cmd:coordinates} 报告行空间和列空间中的坐标。

{p 9 13 2}
    b.  {cmd:estat} {cmd:distances} 报告行形态和列形态之间的卡方距离，包括与边际分布（通常称为中心）的距离。可使用观察到的或拟合的形态。

{p 9 13 2}
    c.  {cmd:estat} {cmd:inertia} 报告各单元的惯性贡献。

{p 9 13 2}
    d.  {cmd:estat} {cmd:profiles} 报告行形态和列形态 -- 条件分布，给定其他维度。

{p 9 13 2}
    e.  {cmd:estat} {cmd:summarize} 报告估计样本中行变量和列变量的摘要信息。

{p 9 13 2}
    f.  {cmd:estat} {cmd:table} 报告出拟合的对应表、观察到的“对应”表或在独立假定下的预期表。

{p 9 9 2}
    请参见 {help ca postestimation:{bf:[MV] ca postestimation}} 以获取更多信息。

{p 9 9 2}
    此外，还有两个新命令用于绘制对应分析的结果：

{p 9 13 2}
    a.  {cmd:cabiplot} 生产每个行类别和每个列类别的双重图；
        见 {help ca postestimation plots##cabiplot:{bf:[MV] ca postestimation plots}}。

{p 9 13 2}
    b.  {cmd:caprojection} 生成显示行类别和列类别在分析每个主维度上的排序的图。
        每个主维度由一条垂直线表示；标记在行类别和列类别投影到维度的线上绘制；见 
	{help ca postestimation plots##caprojection:{bf:[MV] ca postestimation plots}}。

{p 9 9 2}
    在 {cmd:ca} 和 {cmd:camat} 之后，{cmd:predict} 计算拟合值和任何维度的行或列得分；见
    {help ca postestimation##predict:{bf:[MV] ca postestimation}}。

{p 5 9 2}
3. 新命令 {cmd:procrustes} 执行 Procrustes 分析，用于比较和测量两组变量之间的相似性：
    源和目标。如果数据集在记录之前合并，则还可以比较两个数据集。

{p 9 9 2}
    以下新的 {cmd:estat} 命令在 {cmd:procrustes} 后工作，并提供额外的统计数据和结果：

{p 9 13 2}
    a.  {cmd:estat} {cmd:compare} 报告 Procrustes 分析中三种变换的拟合统计算法：正交、倾斜和不受限制。

{p 9 13 2}
    b.  {cmd:estat} {cmd:mvreg} 报告与当前 Procrustes 分析相关的多变量回归。

{p 9 13 2}
    c.  {cmd:estat} {cmd:summarize} 报告估计样本中两组变量的摘要信息。

{p 9 9 2}
    请参见 
    {help procrustes postestimation:{bf:[MV] procrustes postestimation}} 以获取更多信息。

{p 9 9 2}
    在 {cmd:procrustes} 之后的新命令 {cmd:procoverlay} 创建一个覆盖图，以比较目标变量和由源变量推导的拟合值；见 
    {help procrustes postestimation##procoverlay:{bf:[MV] procrustes postestimation}}。

{p 9 9 2}
    在 {cmd:procrustes} 之后的 {cmd:predict} 产生所有变量的拟合值、所有变量的残差或特定目标变量的残差平方和；见 
    {help procrustes postestimation##predict:{bf:[MV] procrustes postestimation}}。

{p 5 9 2}
4. 新命令 {cmd:biplot} 执行数据集的双重图分析，并生成结果的二维双重图。双重图同时显示观察（行）和变量的相对位置（列）。观察投影到两个维度，使得观察之间的距离大致保留。
双变量以箭头方式绘制，箭头之间角度余弦的大小近似表示变量之间的相关性。
请参见 {help biplot_zh:[MV] biplot}。

{p 5 9 2}
5. 新命令 {cmd:tetrachoric} 为一组二元变量计算四分之三相关矩阵。 {cmd:tetrachoric} 在 {bf:[R]} 中有文档，但常用于多变量分析；见 {help tetrachoric_zh:{bf:[R] tetrachoric}}。

{p 9 9 2} 
    {cmd:tetrachoric} 的结果可以在后续因子分析或主成分分析中使用，使用新的 {cmd:factormat} 和 {cmd:pcamat} 命令。见 
    {help factor_zh:[MV] factor} 和 {help pca_zh:[MV] pca}。

{p 5 9 2} 
6. 现有命令 {cmd:canon} 现在允许分析和展示多个线性组合，并有新选项报告原始或标准化系数以及报告典型相关性的显著性测试；见 {help canon_zh:{bf:[MV] canon}}。

{p 9 9 2}
    下面新的 {cmd:estat} 命令在 {cmd:canon} 后工作，提供额外的统计数据和结果：

{p 9 13 2}
    a. {cmd:estat} {cmd:correlations} 报告所有变量之间的相关性。

{p 9 13 2}
    b. {cmd:estat} {cmd:loadings} 报告典型负载的矩阵。

{p 9 9 2}
    请参见 
    {help canon postestimation:{bf:[MV] canon postestimation}} 以获取更多信息。

{p 5 9 2}
7. 现有命令 {cmd:cluster dendrogram} 具有许多新特性，
    包括水平树状图和标记分支计数的能力。
    图的外观现在可以更改（标题、轴、颜色等）；见 {help cluster dendrogram:{bf:[MV] cluster dendrogram}}。

{p 5 9 2}
8. 现有的分层聚类命令现在有新选项 {cmd:measure()}，指定用于计算观察之间不相似性时要使用的接近度度量。可以指定 33 种度量；见 
    {help measure_option_zh:{bf:[MV]} {it:measure_option}}。当然，大多数度量以前在其他选项名称下可用；这些选项继续工作，但未记录。见 
    {help cluster_zh:{bf:[MV] cluster}}。

{p 5 9 2}
9. 现有命令 {cmd:cluster stop} 具有新选项 {cmd:varlist()}，指定在计算停止规则时使用的替代变量；见 {help cluster stop:{bf:[MV] cluster stop}}。


{title:新功能： 接近度矩阵分析}

{pstd}
所有依赖于距离、相似性、不相似性、协方差、相关性或其他接近度度量的 Stata 多变量分析设施现在都可以直接使用您计算或从其他来源获取的接近度矩阵。

{pstd}
之前，所有这些设施仅适用于原始数据集。新命令在矩阵上实现分析。它们共享接受完整矩阵或代表对称接近矩阵的下三角或上三角的向量的共同能力。

{p 4 9 2} 
10. 新命令 {cmd:clustermat} 将 Stata 的所有分层聚类功能扩展到不相似度测量的矩阵分析（有时称为距离或接近度测量）。这包括所有七种链结方法和创建结果的树状图的能力；见 {help clustermat_zh:{bf:[MV] clustermat}}。

{p 4 9 2} 
11. 新命令 {cmd:factormat} 针对相关矩阵执行因子分析，扩展现有命令 {help factor_zh:[MV] factor} 的所有新功能和以前可用功能，适用于预先计算的相关矩阵；见 {help factor_zh:{bf:[MV] factor}}。

{p 4 9 2} 
12. 新命令 {cmd:pcamat} 针对现有相关或协方差矩阵执行主成分分析；见 
    {help pca_zh:{bf:[MV] pca}}。

{p 4 9 2}
13. 新的 {cmd:matrix} 子命令 {cmd:dissimilarity} 使用连续数据的 19 种接近度度量和二元数据的 14 种度量计算相似度、不相似度或距离矩阵；见 
    {help measure_option_zh:{bf:[MV]} {it:measure_option}}，并见 
    {help matrix dissimilarity:{bf:[MV] matrix dissimilarity}}。


{title:新功能：因子和主成分分析的扩展}

{p 5 5 2} 
除了使用 {helpb factormat} 和 {helpb pcamat} 直接分析相关和协方差矩阵之外，Stata 的因子分析和主成分分析（PCA）方法已得到扩展，
特别通过为报告和绘制结果添加后估计命令。

{p 4 9 2} 
14. 命令 {cmd:factor} 具有新报告选项 
    {cmd:altdivisor}，指定将相关矩阵的迹用作比例的除数，而不是默认值（所有特征值的总和）。

{p 4 9 2}
15.  
    新的 {cmd:estat} 命令在 {cmd:factor} 和 {cmd:factormat} 之后使用，提供额外的统计数据和
    结果：

{p 9 13 2}
    a.  {cmd:estat} {cmd:common} 报告共同因子的相关矩阵，并且更感兴趣的是斜方旋转后的输出结果。

{p 9 13 2}
    b.  {cmd:estat} {cmd:factors} 报告分析中保留的所有因子的模型选择标准（AIC 和 BIC）。

{p 9 13 2}
    c.  {cmd:estat} {cmd:rotatecompare} 报告未旋转因子负载与最近旋转负载的比较。

{p 9 13 2}
    d.  {cmd:estat} {cmd:structure} 报告因子结构 -- 变量与共同因子之间的相关性。

{p 9 9 2}
    请参见 {help factor postestimation:{bf:[MV] factor postestimation}} 
    以获取更多信息。

{p 4 9 2} 
16. 现有命令 {cmd:pca} 允许几种新选项：

{p 9 13 2}
        a. 选项 {cmd:vce(normal)} 计算特征值和特征向量的 VCE，假设多变量正态分布。  

{p 9 13 2}
            这使您可以访问 Stata 的许多后估计设施，以便分析估计结果，包括特征值与特征向量显著性测试、线性和非线性组合的测试 ({help test_zh:[R] test} 和 {help testnl_zh:[R] testnl})，
            以及带有置信区间的线性和非线性组合 ({help lincom_zh:[R] lincom} 和 {help nlcom_zh:[R] nlcom})，
            以及带有置信区间的非线性预测 ({help predictnl_zh:[R] predictnl})。

{p 9 13 2}
	    {cmd:vce(normal)} 还生成用于添加置信区间到说明图所需的成分； 
	    见 {help screeplot_zh:{bf:[MV] screeplot}}。

{p 9 13 2}
	b.  选项 {cmd:level()}、{cmd:blanks()}、{cmd:novce} 和 
            {cmd:norotated} 允许更灵活地控制显示结果。

{p 9 13 2}
	c.  选项 {opt components(#)} 
            指定要保留的成分数，并且是旧选项 {cmd:factor()} 的同义词。

{p 9 13 2}
	d.  选项 {cmd:tol()} 和 {cmd:ignore} 提供计算困难问题的高级控制。

{p 9 9 2}
     详见 {help pca_zh:{bf:[MV] pca}} 
     用于获取更多信息。

{p 4 9 2} 
17. 新 {cmd:estat} 命令在任何因子分析或 
     任何主成分分析（即在 
     {cmd:factor} 或 {cmd:factormat} 或在 {cmd:pca} 或 {cmd:pcamat} 之后）使用
     提供额外的统计数据和结果：

{p 9 13 2}
    a.  {cmd:estat} {cmd:anti} 报告反图像相关和
        反图像方差矩阵。

{p 9 13 2}
    b.  {cmd:estat} {cmd:kmo} 报告凯泽-梅耶-奥尔金抽样充足性度量。

{p 9 13 2}
    c.  {cmd:estat} {cmd:residuals} 报告观察到的相关或协方差矩阵与使用保留因子的拟合（再现）矩阵之间的差异。

{p 9 13 2}
    d.  {cmd:estat} {cmd:smc} 报告每个变量与所有其他变量之间的平方多重相关性（SMC）。SMC 是共有度数的理论下限，因此是未解释方差的上限。

{p 9 9 2}
     请参见 
     {help factor postestimation:{bf:[MV] factor postestimation}}和 
     {help pca postestimation:{bf:[MV] pca postestimation}} 
     以获取更多信息。

{p 4 9 2} 
18. 在任何因子分析（{cmd:factor} 和 {cmd:factormat}）或任何主成分分析（{cmd:pca} 和 {cmd:pcamat}）之后， 
     三个新的图表可用：

{p 9 13 2}
    a.  {cmd:scoreplot} 生成散点图，以比较因子或组件之间的每一对；见 {help scoreplot_zh:{bf:[MV] scoreplot}}。

{p 9 13 2}
    b.  {cmd:loadingplot} 生成散点图，以比较每一对因子或组件的负载；见 {help scoreplot_zh:{bf:[MV] scoreplot}}。

{p 9 13 2}
    c.  {cmd:screeplot} 绘制协方差或相关矩阵的特征值；见 {help screeplot_zh:{bf:[MV] screeplot}}。
	({cmd:screeplot} 替代 {cmd:greigen} 并具有更多功能； 
	{cmd:greigen} 继续工作但未记录。）

{p 4 9 2} 
20. 新命令 {cmd:rotate} 在 {help factor_zh}、{helpb factormat}、{help pca_zh} 和 {helpb pcamat} 后执行正交和倾斜旋转。
     可用的旋转包括 varimax、quartimax、equamax、parsimax、
     最小熵、Comrey 的串联 1 和 2、promax 权重、biquartimax、
     biquartimin、covarimin、oblimin、因子简约，Crawford-Ferguson
     系列、Bentler 的不变模式、oblimax、quartimin 和目标及部分目标矩阵；见 {help rotate_zh:{bf:[MV] rotate}}。

{p 9 9 2} 
    新命令 {cmd:rotatemat} 在任何 Stata 矩阵上执行相同的线性变换（旋转）。


{marker survival}{...}
{title:新功能： 生存分析}

{p 5 9 2}
1.  {cmd:[ST]} 手册现在有一个词汇表，定义生存（或持续时间）分析中常用的术语，并通常解释这些术语在手册中的使用方式；见 {bf:[ST]} {bf:词汇表}。

{p 5 9 2}
2. 新命令 {cmd:estat} 可在 {cmd:stcox} 和 {cmd:streg} 之后使用。
    除了标准的 {cmd:estat} 统计信息 -- 信息标准、估计样本摘要和格式化的方差-协方差
    矩阵（VCE） -- 特定于比例风险估计器的统计信息也可在 {cmd:stcox} 之后获得。这些统计信息包括

{p 9 13 2}
	a.  {cmd:estat concordance} 计算 
            Harrell 的 C 和 Somer's D 统计量，测量一致性 -- 
	    预测与观察到的故障顺序的一致性。

{p 9 13 2}
        b.  {cmd:estat phtest} 替代现有的
            {cmd:stphtest}，用于计算比例风险假设的测试和图形。{cmd:stphtest} 继续有效。

{p 9 9 2}
        请参见
        {helpb stcox postestimation:[ST] stcox postestimation}
        和 
        {helpb streg postestimation:[ST] streg postestimation}。

{p 5 9 2}
3. 现有命令 {cmd:sts graph} 具有新选项 {cmd:cihazard} 
    和 {cmd:per(}{it:#}{cmd:)}。 {cmd:cihazard} 绘制平滑的危害函数周围的点置信带，而 {cmd:per()} 指定报告生存或失败率时使用的单位。见 
    {help sts_zh:[ST] sts}。

{p 5 9 2}
4. 现有命令 {cmd:stcurve} 现在
    绘制均匀间隔网格上的平滑曲线，即使在小样本中；
    见 {help stcurve_zh:[ST] stcurve}。

{p 5 9 2}
5. 现有命令 {cmd:sts graph} 具有新选项 {cmd:atriskopts()} 和
    {cmd:lostopts()} 允许您控制风险和丢失观察值的标签的外观（颜色、字体大小等）；见 
    {help sts_zh:[ST] sts}。

{p 5 9 2}
6. 现有命令 {cmd:stci} 具有新选项，用于控制绘制的生存线的外观（颜色、粗细等）和添加标题、控制图例以及图表的所有其他特征；
    见 {help stci_zh:[ST] stci}。


{marker general}{...}
{title:新功能： 通用统计}

{p 5 9 2}
1. 新的估计命令 {cmd:asmprobit} 拟合多项式概率（MNP）模型到
    分类数据，常用于基于选择的建模。
    {cmd:asmprobit}
    允许对替代方案的几种相关结构，包括完全未结构化，所有可能的
    相关性都被估计。它还允许在替代方案之间存在异方差或同方差的方差，允许替代方案的方差或相关性之间的任意模式。
    {cmd:asmprobit} 的语法使得指定案例特定
    和替代的案例特定回归变得简单。

{p 9 9 2}
    除了公共的后估计命令，例如 {cmd:mfx} 
    用于计算边际效应，新的命令 {cmd:estat} 
    提供
    额外的统计数据和结果：

{p 9 13 2}
    a. {cmd:estat} {cmd:alternatives} 报告关于每个替代方案的摘要统计数据，并提供标记替代品的索引号与它们在数据集中关联的值和标签之间的映射。

{p 9 13 2}
    b. {cmd:estat} {cmd:covariance} 计算并报告替代方案的估计协方差矩阵。

{p 9 13 2}
    c. {cmd:estat} {cmd:correlation} 报告矩阵形式的替代方案之间的相关性。

{p 9 9 2}
    {cmd:asmprobit} 之后的预测统计量包括线性预测变量、选择替代方案的概率以及线性预测变量的标准误。

{p 9 9 2}
    参见 
    {help asmprobit_zh:{bf:[R] asmprobit}},
    和 
    {help asmprobit postestimation:{bf:[R] asmprobit postestimation}}。

{p 5 9 2}
2. 新的估计命令 {cmd:mprobit} 也拟合多项式概率模型，但在仅具有案例特定协变量的简化情况下（如多项式逻辑回归，
    {cmd:mlogit}）。
    在这种情况下优化似然过程速度更快
    因为似然的数值近似较简单。
    参见 
    {help mprobit_zh:{bf:[R] mprobit}}。

{p 5 9 2}
3. 新的估计命令 {cmd:slogit} 为分类因变量拟合 stereotype 逻辑回归模型。 该模型可以视为
    多项逻辑回归模型({cmd:mlogit}) 或有序逻辑回归模型({cmd:ologit}) 的推广，放松了比例赔率假设。
    见 {help slogit_zh:{bf:[R] slogit}}。

{p 9 9 2}
    在 {cmd:slogit} 之后的预测统计量包括线性预测变量、
    任何或所有结果的概率以及线性预测变量的标准误。
    见 {help slogit postestimation:{bf:[R] slogit postestimation}}。

{p 5 9 2}
4. 新的估计命令 {cmd:ivprobit} 为具有内生回归变量的二元结果拟合 Probit 回归模型。 估计可以通过最大似然估计（MLE）或 Newey 的最小卡方
    两步估计来执行，但某些后估计设施，
    例如使用 {cmd:mfx} 计算边际效应，仅在 ML 估计后可用 -- 两步骤估计施加的转换
    使得许多后估计结果失效。  
    见 {help ivprobit_zh:{bf:[R] ivprobit}}。

{p 5 9 2}
5. 新的估计命令 {cmd:ivtobit} 通过最大似然估计或 Newey 的最小卡方估计拟合具有截断因变量的线性回归模型（但请参见关于
    上述 4 中两步估计的说明）。
    见 {help ivtobit_zh:{bf:[R] ivtobit}}。

{p 5 9 2}
6. 新的估计命令 {cmd:ztp} 拟合事件计数的零截断 Poisson 模型，截断点为零。

{p 9 9 2}
    估计 {cmd:ztp} 之后的预测统计量包括线性预测变量及其
    标准误，预测事件数量，发生率，条件均值和似然得分
    见 {help ztp_zh:{bf:[R] ztp}}
    和 
    {help ztp postestimation:{bf:[R] ztp postestimation}}。

{p 5 9 2}
7. 新的估计命令 {cmd:ztnb} 拟合截断在零的事件计数的零截断负二项模型，并且存在过度或不足的离散情况。

{p 9 9 2}
    估计 {cmd:ztnb} 之后的预测统计量包括线性预测变量及其
    标准误，预测事件数量，发生率，条件均值和似然得分
    见 {help ztnb_zh:{bf:[R] ztnb}}
    和
    {help ztnb postestimation:{bf:[R] ztnb postestimation}}。

{p 5 9 2}
8. 新的估计命令 {cmd:mean}、{cmd:ratio}、{cmd:proportion} 和
    {cmd:total} 在整个样本或样本内的组上估计均值、比率、比例和总计。在对组进行估计时，整个协方差矩阵（VCE）被估计。这是
    完整的估计命令，支持一系列后估计设施，
    例如各组间的线性和非线性测试（{help test_zh} 和
    {help testnl_zh}）和组级统计的线性和非线性组合（{help lincom_zh} 和
    {help nlcom_zh}）。所有四个命令支持几种 SE 和 VCE 估计：稳健、集群稳健、自助法、捷克法和观察信息矩阵（默认值）。

{p 9 9 2}
    {cmd:mean}、{cmd:ratio} 和 {cmd:proportion} 还支持使用 {cmd:stdize()} 和
    {cmd:stdweight()} 选项，进行跨层（组）的直接标准化。

{p 9 9 2}
    见 {help mean_zh:{bf:[R] mean}},
        {help ratio_zh:{bf:[R] ratio}},
        {help proportion_zh:{bf:[R] proportion}},
    和 {help total_zh:{bf:[R] total}}。

{p 5 9 2}
9. 为避免与新命令 {cmd:mean} 冲突，现有命令 {cmd:means} 已更名为
    {cmd:ameans}，并且具有同义词 {cmd:gmeans} 和 {cmd:hmeans}。

{p 4 9 2}
10. 现有命令 {cmd:nl} 具有新语法，使得估计非线性最小二乘回归变得更加容易。对于大多数模型，估计
    现在只需输入非线性表达式即可。复杂模型仍保留完全的可编程性，旧语法继续有效。

{p 9 9 2}
    {cmd:nl} 现在还支持稳健（Huber/White/三明治）和
    集群稳健 SE 和 VCE 估计，包括两种流行的
    调整，这可以显著改善稳健 SE 和 VCE 估计的小样本表现。

{p 9 9 2}
    还增加了一些新的报告和估计选项。
    见 {help nl_zh:{bf:[R] nl}}。


{p 4 9 2}
11. 新选项 {cmd:vce()} 选择大多数估计命令如何估计标准误（SE）和估计参数的协方差矩阵。
     选择为 {cmd:vce(oim)}、 
     {cmd:vce(opg)}、 
     {cmd:vce(robust)}、 
     {cmd:vce(jackknife)} 和 
     {cmd:vce(bootstrap)}，尽管选择可能因估计者而异。
     {cmd:vce(robust)} 是 {cmd:robust} 的同义词，您可以使用任一个。
     新选项是 {cmd:vce(jackknife)} 和 {cmd:vce(bootstrap)}。


{p 9 9 2}
     {cmd:vce(bootstrap)} 指定标准误、显著性测试和置信区间为基于正常的自助法估计，
     而不是基于观察到的信息矩阵的默认分析估计。您还可以在估计后使用 {cmd:estat bootstrap} 生成基于百分位数或偏差修正的置信区间；
     见 {helpb bootstrap postestimation:[R] bootstrap postestimation}。  

{p 9 9 2}
     {cmd:vce(jackknife)} 指定标准误、显著性测试和置信区间为自助法估计。

{p 9 9 2}
     {cmd:vce(bootstrap)} 和 {cmd:vce(jackknife)} 将自动执行观察或集群抽样，无论哪个对估计器来说是合适的。

{p 9 9 2}
     值得注意的是， {cmd:vce(bootstrap)} 和 {cmd:vce(jackknife)} 计算的是完整 VCE 矩阵的自助法或捷克法估计。这
     意味着 Stata 的很多后估计命令都是可用的。您可以形成参数的线性和非线性组合或函数，并使用 {manhelp lincom R} 和 {manhelp nlcom R} 获取组合的捷克法或基于正常的自助法标准误和置信区间。类似地，您可以使用 {manhelp test R} 和 {manhelp testnl R} 执行线性和非线性测试。


{p 4 9 2}
12. 新命令 {cmd:estat}
     集中 
     在估计后计算和报告其他统计信息，就像 {cmd:predict} 预测一样。
     {cmd:estat} 允许子命令。例如， {cmd:estat} {cmd:summarize} 报告
     估计样本的汇总统计，并可在任何估计者之后使用。
     {cmd:estat} 还允许特定于估计命令的子命令。要查找在什么命令之后可用， 
     请参见相应的后估计条目。例如，在 {bf:[R] regress} 之后，请查看 
     {help regress postestimation:{bf:[R] regress postestimation}};
     在 {bf:[XT] xtmixed} 之后，请查看 
     {help xtmixed postestimation:{bf:[XT] xtmixed postestimation}}。

{p 9 9 2}
    现有的后估计命令已被整合到 
    {cmd:estat} 框架中：


	         估计       旧命令       新 {cmd:estat}
	         命令          命令           命令
	         {hline 50}
                 {cmd:regress}          {cmd:ovtest}       {cmd:estat} {cmd:ovtest}
                                  {cmd:hettest}      {cmd:estat} {cmd:hettest}
                                  {cmd:szroeter}     {cmd:estat} {cmd:szroeter}
                                  {cmd:vif}          {cmd:estat} {cmd:vif}
                                  {cmd:imtest}       {cmd:estat} {cmd:imtest}
        
                 {cmd:regress}          {cmd:dwstat}       {cmd

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew8to9.sthlp>}