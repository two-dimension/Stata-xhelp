
{smcl}
{* *! version 1.0.5  14jun2010}{...}
{cmd:ca} 和 {cmd:camat} 报告的统计信息
{hline}
{help ca_statistics_old:English Version}
{hline}

{title:惯性分解}

{p2colset 5 26 28 2}{...}
{p2col:统计量}描述{p_end}
{p2line}
{p2col:{cmd:total inertia}}(Pearson X2)/n = 主惯性的总和
{p_end}
{p2col:{cmd:singular values}}为标准化残差矩阵计算；奇异值等于行和列坐标的相关性，相当于典型相关性
{p_end}
{p2col:{cmd:principal inertia}}奇异值的平方，由主轴解释的惯性
{p_end}
{p2line}
{p2colreset}{...}

{title:行和列点的汇总统计}

{p2colset 5 26 28 2}{...}
{p2col:统计量}描述{p_end}
{p2line}
{p2col:{cmd:overall}}
{p_end}

{p2col:{space 2}{cmd:mass}}质量 = 边际概率 = f(i+) 和 f(+j)。一个变量的活跃类别上 {cmd:mass} 的总和等于 1
{p_end}
{p2col:{space 2}{cmd:quality}}拟合度量：由选定维度解释的行/列惯性的比例；等价于行/列轮廓与子空间的平方相关性；在饱和模型中，{cmd:quality} = 1
{p_end}
{p2col:{space 2}{cmd:inertia}}行/列轮廓的惯性；一个变量的活跃类别惯性的总和等于对应表的总惯性。注意，有些教科书显示一个变量类别中的“惯性百分比”，因此类别的惯性总和等于 100，而不是总惯性。
{p_end}
{p2line}
{p2col:{cmd:dimension_}{it:k}}
{p_end}

{p2col:{space 2}{cmd:coord}}在指定归一化下的维度 k 的坐标
{p_end}
{p2col:{space 2}{cmd:sqcorr}}与维度 k 的轮廓的平方相关性。{cmd:sqcorr} 在所有维度上的总和等于 {cmd:quality}
{p_end}
{p2col:{space 2}{cmd:contrib}}由轮廓解释的维度 k 上惯性的比例。一个变量的所有类别上 {cmd:contrib} 的总和等于 1
{p_end}
{p2line}
{p2colreset}{...}

{pstd}
坐标的归一化在表格的标题中指定。有关详细信息，请参见 {help ca_zh}。

{pstd}
在 {cmd:compact} 显示格式中，列标题中的统计量名称缩写为 {cmd:qualt} ({cmd:quality})、{cmd:inert} ({cmd:inertia})、{cmd:sqcor} ({cmd:sqcorr}) 和 {cmd:contr} ({cmd:contrib})。


{title:另见}

{psee}
{space 2}帮助：{manhelp ca MV}，{manhelp ca_postestimation MV:ca 后估计}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ca_statistics_old.sthlp>}