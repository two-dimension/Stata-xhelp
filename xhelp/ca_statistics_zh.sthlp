{smcl}
{* *! version 1.0.10  11feb2011}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] mca" "help mca_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] ca postestimation" "help ca_postestimation_zh"}{...}
{vieweralsosee "[MV] mca postestimation" "help mca_postestimation_zh"}
{help ca_statistics:English Version}
{hline}{...}
{title:ca、camat 和 mca 报告的统计数据：惯性分解}

{p2colset 5 26 28 2}{...}
{p2col:统计量}描述{p_end}
{p2line}
{p2col:{cmd:total inertia}}(Pearson X2)/n = 主惯性的总和
{p_end}
{p2col:{cmd:singular values}}（仅 {cmd:ca}）为标准化残差矩阵计算；
奇异值等于行和列坐标的相关性，相当于典范相关
{p_end}
{p2col:{cmd:principal inertia}}奇异值的平方，由主轴解释的惯性
{p_end}
{p2line}
{p2colreset}{...}


{title:行和列点的摘要统计}

{p2colset 5 26 28 2}{...}
{p2col:统计量}描述{p_end}
{p2line}
{p2col:{cmd:overall}}
{p_end}

{p2col:{space 2}{cmd:mass}}质量 = 边际概率 = f(i+) 和 f(+j)。
变量的活动类别上 {cmd:mass} 的总和等于 1
{p_end}
{p2col:{space 2}{cmd:quality}}拟合度量：由所选维度解释的行/列惯性的比例；等价于行/列轮廓与子空间的平方相关；在饱和模型中，{cmd:quality} = 1
{p_end}
{p2col:{space 2}{cmd:%inert}}行/列轮廓的惯性；
表示对应表总惯性的百分比
{p_end}
{p2line}
{p2col:{cmd:dimension_}{it:k}}
{p_end}

{p2col:{space 2}{cmd:coord}}在指定规范化中的维度 k 的坐标
{p_end}
{p2col:{space 2}{cmd:sqcorr}}与维度 k 的轮廓的平方相关性。 {cmd:sqcorr} 在所有维度上的总和等于 {cmd:quality}
{p_end}
{p2col:{space 2}{cmd:contrib}}由轮廓解释的维度 k 的惯性比例。 变量所有类别的 {cmd:contrib} 总和等于 1
{p_end}
{p2line}
{p2colreset}{...}

{pstd}
坐标的规范化在表格标题中指定。有关详细信息，请参见 {manhelp ca MV} 或 {manhelp mca MV}。

{pstd}
在 {cmd:compact} 显示格式中，统计量的名称在列标题中缩写为 {cmd:qualt} ({cmd:quality})、{cmd:%inert}、{cmd:sqcor} ({cmd:sqcorr}) 和 {cmd:contr} ({cmd:contrib})。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ca_statistics.sthlp>}