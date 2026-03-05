{smcl}
{* *! version 1.1.6  11may2019}{...}
{vieweralsosee "[R] pk" "mansection R pk"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] menl" "help menl_zh"}{...}
{viewerjumpto "描述" "pk_zh##description"}{...}
{viewerjumpto "PDF文档链接" "pk_zh##linkspdf"}{...}
{viewerjumpto "备注" "pk_zh##remarks"}{...}
{viewerjumpto "示例" "pk_zh##examples"}
{help pk:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] pk} {hline 2}}药代动力学（生物制药）数据{p_end}
{p2col:}({mansection R pk:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
术语 pk 指药代动力学数据和所有以字母 pk 开头的 Stata 命令，这些命令旨在对制药行业中常见的某些分析进行处理。该系统旨在分析药代动力学数据，尽管有些命令可用于一般用途。

{pstd}
pk 命令包括

{p2colset 9 26 28 2}{...}
{p2col :{help pkexamine_zh}}计算药代动力学参数{p_end}
{p2col :{help pksumm_zh}}总结药代动力学数据{p_end}
{p2col :{help pkshape_zh}}重塑（药代动力学）拉丁方数据{p_end}
{p2col :{help pkcross_zh}}分析交叉实验{p_end}
{p2col :{help pkequiv_zh}}进行生物等效性测试{p_end}
{p2col :{help pkcollapse_zh}}生成药代动力学测量数据集{p_end}
{p2colreset}{...}

{pstd}
另请参见 {manhelp menl ME}，了解使用非线性混合效应模型拟合药代动力学模型的更多信息；例如，请参见 {mansection ME menlRemarksandexamplesmenlextheoph:示例 15} 以获取 {bf:[ME] menl} 的说明。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R pkRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
制药行业常常进行几种类型的临床试验。示例包括组合试验、多中心试验、等效性试验和主动对照试验。对于每种类型的试验，存在一种最佳研究设计，用于估计感兴趣的效应。pk 系统可用于分析等效性试验，这通常使用交叉设计进行；然而，也可以使用平行设计，并仍然得出关于等效性的结论。

{pstd}
等效性试验评估两个药物之间的生物等效性。虽然证明两个药物表现一致是不可能的，但监管机构相信，如果两个药物的吸收特性相似，那么这两个药物将产生类似的效果，并具有相似的安全性。一般来说，等效性试验的目标是评估一种仿制药是否与现有药物等效。这个目标通常通过比较两个药物药代动力学测量之间的差异的置信区间与根据法规构建的等效限制来实现。如果置信区间完全在等效限制内，则这两个药物被声明为生物等效。访问生物等效性的另一种方法是使用区间假设检验的方法。{cmd:pkequiv} 用于进行这些生物等效性测试。

{pstd}
可以使用几种药代动力学参数来确定药物用于细胞吸收的可用性。最常见的参数是浓度-时间曲线下的面积（AUC）。药物可用性的另一个常见参数是药物在随访期间所达到的最大浓度（Cmax）。Stata 报告这些以及其他一些不太常见的药物可用性参数，包括观察到最大药物浓度的时间和进行测量的时间段的持续时间。Stata 还报告消除率，即药物的代谢速率，以及药物的半衰期，即药物浓度降至其最大浓度一半所需的时间。

{pstd}
{cmd:pkexamine} 计算并报告 Stata 生成的所有药代动力学参数，包括四种 AUC 计算。标准的从 0 到最大观察时间的 AUC (AUC_0,tmax) 使用立方样条或梯形规则进行计算。{cmd:pkexamine} 还计算从 0 到无穷大的 AUC，通过使用三种不同的方法延伸标准浓度-时间曲线。第一种方法通过在最后几个数据点上使用最小二乘线性拟合简单地延伸标准曲线。第二种方法通过在最后几个数据点上拟合一个递减的指数曲线来延伸标准曲线。第三种方法通过在对数浓度上拟合一个最小二乘线性回归线来延伸曲线。这些扩展的数学细节在 {mansection R pkexamineMethodsandformulas:{it:方法和公式}} 中描述。

{pstd}
还可以使用适合特定研究设计的方法分析等效性试验的数据。当您有交叉设计时，{cmd:pkcross} 可用于拟合适当的方差分析模型。交叉设计实际上是受限的拉丁方设计，因此 {cmd:pkcross} 也可以用于分析任何拉丁方设计。

{pstd}
处理等效性试验数据时，一些实际问题出现。首先，数据必须以 Stata 可以使用的方式进行组织。pk 命令包括 {cmd:pkcollapse} 和 {cmd:pkshape}，旨在帮助将数据从通用格式转变为适合在 Stata 中进行分析的格式。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse auc}

{pstd}列出数据{p_end}
{phang2}{cmd:. list, abbrev(14)}

{pstd}计算药代动力学参数{p_end}
{phang2}{cmd:. pkexamine time conc}

    {hline}
    设置
{phang2}{cmd:. webuse pkdata}

{pstd}列出变量 {cmd:id}、{cmd:conc1} 和 {cmd:time}，并按 {cmd:id} 分隔{p_end}
{phang2}{cmd:. list id conc1 time, sepby(id)}

{pstd}生成药代动力学参数的汇总统计{p_end}
{phang2}{cmd:. pksumm id time conc1}

{pstd}生成药代动力学数据集{p_end}
{phang2}{cmd:. pkcollapse time conc1 conc2, id(id) keep(seq) stat(auc)}

{pstd}为 {cmd:pkcross} 和 {cmd:pkequiv} 重新塑造数据{p_end}
{phang2}{cmd:. pkshape id seq auc*, order(RT TR)}

{pstd}进行生物等效性测试{p_end}
{phang2}{cmd:. pkequiv outcome treat period seq id}

{pstd}分析交叉实验{p_end}
{phang2}{cmd:. pkcross outcome}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pk.sthlp>}