{smcl}
{* *! version 1.0.6  15oct2018}{...}
{viewerdialog roctab "dialog roctab"}{...}
{viewerdialog roccomp "dialog roccomp"}{...}
{viewerdialog rocgold "dialog rocgold"}{...}
{vieweralsosee "[R] roc" "mansection R roc"}{...}
{viewerjumpto "描述" "roc_zh##description"}{...}
{viewerjumpto "参考" "roc_zh##reference"}
{help roc:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] roc} {hline 2}}接收器操作特征 (ROC) 分析
{p_end}
{p2col:}({mansection R roc:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
ROC 分析量化了诊断测试或其他用于区分两种状态或条件的评估方法的准确性，这里称为正常和异常或对照和病例。诊断测试的区分准确性通过其正确分类已知正常和异常主体的能力来衡量。出于这个原因，我们通常将诊断测试称为分类器。该分析使用 ROC 曲线，它是诊断测试的敏感性与 1-特异性的图。敏感性是正确分类的阳性病例比例，而特异性是正确分类的阴性病例比例。因此，敏感性是真阳性率，特异性是真阴性率。

{pstd}
共有六个 ROC 命令：

{p2colset 9 25 27 2}{...}
{p2col: 命令}描述{p_end}
{p2line}
{p2col :{help roccomp_zh}}ROC 区域相等性测试{p_end}
{p2col :{helpb rocgold}}与标准 ROC 曲线的 ROC 区域相等性测试{p_end}
{p2col :{help rocfit_zh}}参数 ROC 模型{p_end}
{p2col :{help rocreg_zh}}非参数和参数 ROC 回归模型{p_end}
{p2col :{help rocregplot_zh}}绘制边际和协变量特定的 ROC 曲线
{p_end}
{p2col :{help roctab_zh}}非参数 ROC 分析{p_end}
{p2line}

{pstd}
在 {cmd:rocfit} 和 {cmd:rocreg} 之后，可以使用后估计命令；请查看 {manhelp rocfit_postestimation R:rocfit 后估计} 和 {manhelp rocreg_postestimation R:rocreg 后估计}。

{pstd}
已经建议使用非参数和参数（半参数）方法生成 ROC 曲线。{cmd:roctab} 命令执行单一分类器的非参数 ROC 分析。{cmd:roccomp} 将 {cmd:roctab} 的非参数 ROC 分析功能扩展到需要比较和测试多个诊断测试的情况。{cmd:rocgold} 命令也提供多个分类器的 ROC 分析。{cmd:rocgold} 将每个分类器的 ROC 曲线与“金标准” ROC 曲线进行比较，并在分析中进行多重比较调整。{cmd:rocgold} 和 {cmd:roccomp} 还通过二元适合允许 ROC 曲线的参数估计。在二元适合中，对照组和病例组的分布均为正态分布。

{pstd}
{cmd:rocfit} 命令通过二元适合估计分类器的 ROC 曲线。与 {cmd:roctab}、{cmd:roccomp} 和 {cmd:rocgold} 不同，{cmd:rocfit} 是一个估计命令。在后估计中，可以生成 ROC 曲线和置信区间的图。还可以对参数进行额外的测试。

{pstd}
ROC 分析可以被解释为一个两阶段过程。首先，假设正态模型或使用无分布的估计技术，估计分类器的对照分布。使用对照分布标准化分类器至 1-百分位值，即假阳性率。其次，估计 ROC 曲线为标准化分类器值的病例分布。

{pstd}
协变量可能影响 ROC 分析的两个阶段。第一阶段可能会受到影响，从而生成协变量调整后的 ROC 曲线。第二阶段也可能受到影响，产生多个协变量特定的 ROC 曲线。

{pstd}
{cmd:rocreg} 命令在两种协变量效应下执行 ROC 分析。{cmd:rocreg} 可以使用参数（半参数）和非参数方法。与 {cmd:rocfit} 类似，{cmd:rocreg} 是一个估计命令，并提供许多后估计功能。

{pstd}
诊断测试的全局性能通常通过 ROC 曲线下面积（AUC）来总结。该面积可以解释为随机选择的异常主体的诊断测试结果大于随机选择的正常主体的同一诊断测试结果的概率。AUC 越大，诊断测试的全局性能越好。每个 ROC 命令都提供 AUC 的计算。

{pstd}
由于缺乏 AUC 的临床相关性，建议了其他 ROC 汇总度量。这些包括特定假阳性率 t 的 ROC 曲线下的部分面积 [pAUC(t)]。这是从假阳性率 0 到 t 的 ROC 曲线下的面积。在特定假阳性率下的 ROC 值和特定 ROC 值的假阳性率也是 ROC 曲线有用的汇总度量。这三种度量在模型拟合或后估计阶段由 {cmd:rocreg} 直接估计。其他 ROC 命令计算 ROC 值的点估计，但不报告标准误。

{pstd}
有关 ROC 分析的讨论，请参见 {help roc##P2003:Pepe (2003)}。Pepe 发布了用于重现书中结果的 Stata 数据集和程序
({browse "https://www.stata.com/bookstore/pepe.html":https://www.stata.com/bookstore/pepe.html})。

{marker reference}{...}
{title:参考}

{marker P2003}{...}
{phang}
Pepe, M. S. 2003.
{browse "https://www.stata.com/bookstore/pepe.html":{it:分类和预测的医学测试的统计评估}}.
纽约：牛津大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <roc.sthlp>}