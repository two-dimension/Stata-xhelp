{smcl}
{* *! version 1.0.5  13feb2019}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[ME] estat wcorrelation" "mansection ME estatwcorrelation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] menl" "help menl_zh"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{viewerjumpto "语法" "me estat wcorrelation##syntax"}{...}
{viewerjumpto "estat 菜单" "me estat wcorrelation##menu_estat"}{...}
{viewerjumpto "描述" "me estat wcorrelation##description"}{...}
{viewerjumpto "PDF 文档链接" "me_estat_wcorrelation_zh##linkspdf"}{...}
{viewerjumpto "选项" "me estat wcorrelation##option_estat_wcorrelation"}{...}
{viewerjumpto "示例" "me estat wcorrelation##examples"}{...}
{viewerjumpto "存储结果" "me estat wcorrelation##results"}
{help me_estat_wcorrelation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[ME] estat wcorrelation} {hline 2}}显示组内相关性和标准差{p_end}
{p2col:}({mansection ME estatwcorrelation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {opt wcor:relation} [{cmd:,} {it:选项}]

{marker options_estat_wcorrelation}{...}
{synoptset 18}{...}
{synopthdr :选项}
{synoptline}
{synopt :{opt at(at_spec)}}指定要为其获取相关矩阵的聚类; 默认值是数据中遇到的第一个两级聚类{p_end}
{synopt:{opt all}}显示所有数据的相关矩阵{p_end}
{synopt:{opt cov:ariance}}显示协方差矩阵，而非相关矩阵{p_end}
{synopt:{opt list}}列出与相关矩阵对应的数据{p_end}
{synopt:{opt nosort}}按原始数据中出现的顺序列出相关矩阵的行和列{p_end}
{synopt:{opt iter:ate(#)}}计算随机效应的最大迭代次数; 默认是 {cmd:iterate(50)}; 仅用于 {cmd:menl} 之后{p_end}
{synopt:{opt tol:erance(#)}}计算随机效应时的收敛容忍度; 默认是 {cmd:tolerance(1e-6)}; 仅用于 {cmd:menl} 之后{p_end}
{synopt:{opt nrtol:erance(#)}}计算随机效应时的缩放梯度容忍度; 默认是 {cmd:nrtolerance(1e-5)}; 仅用于 {cmd:menl} 之后{p_end}
{synopt:{opt nonrtol:erance}}忽略 {opt nrtolerance()} 选项; 仅用于 {cmd:menl} 之后{p_end}
{synopt :{opth format(%fmt)}}设置显示格式; 默认是 {cmd:format(%6.3f)}{p_end}
{synopt :{help matlist_zh:{it:matlist_options}}}控制矩阵显示样式和格式的选项{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat wcorrelation} 用于在使用 {cmd:menl} 和 {cmd:mixed} 估计后使用。

{pstd}
{cmd:estat wcorrelation} 显示根据随机效应设计及其假定协方差和残差的相关结构计算的特定聚类的整体相关矩阵。这允许比较不同的多层模型在每个模型所隐含的最终组内相关矩阵方面的表现。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME estatwcorrelationRemarksandexamples:备注和示例}

        {mansection ME estatwcorrelationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker option_estat_wcorrelation}{...}
{title:选项}

{marker atspec}{...}
{phang}
{opt at(at_spec)} 指定您希望获取其组内相关矩阵的观察聚类。 {it:at_spec} 是

{phang3}
{it:relevel_var} {cmd:=} {it:value}
   [{it:relevel_var} {cmd:=} {it:value} ...]

{pmore}
例如，如果您指定

{phang3}
{cmd:. estat wcorrelation, at(school = 33)}

{pmore}
您将获得学校 33 中的观察数据的组内相关矩阵。如果您指定

{phang3}
{cmd:. estat wcorrelation, at(school = 33 classroom = 4)}

{pmore}
您将获得学校 33 中教室 4 的相关矩阵。

{pmore}
如果不指定 {cmd:at()}，则获取数据中遇到的第一个二级聚类的相关性。这通常是您想要的结果。

{phang}
{opt all} 指定您希望获取所有数据的相关矩阵。这不推荐，除非您有相对较小的数据集，或者您喜欢查看大的 n x n 矩阵。然而，在某些情况下，这可能会很有用。

{phang}
{opt covariance} 指定显示组内协方差矩阵，而非默认的相关性和标准差。

{phang}
{opt list} 列出显示的相关矩阵中所描绘的观察模型数据。对于线性混合效应模型，如果您有很多随机效应设计变量并希望查看这些设计变量的表示值，此选项也很有用。

{phang}
{opt nosort} 按照原始数据中出现的顺序列出相关矩阵的行和列。通常，{cmd:estat wcorrelation} 将首先按照层次变量、组内变量和时间变量对数据进行排序，以产生行和列遵循自然顺序的相关矩阵。{opt nosort} 会抑制这一排序。

{phang}
{opt iterate(#)} 指定计算随机效应估计时的最大迭代次数。默认值是 {cmd:iterate(50)}。该选项仅用于 {cmd:menl} 之后。

{phang}
{opt tolerance(#)} 指定计算随机效应估计时的收敛容忍度。默认值是 {cmd:tolerance(1e-4)}。该选项仅用于 {cmd:menl} 之后。

{phang}
{opt nrtolerance(#)} 和 {opt nonrtolerance} 控制计算随机效应估计时缩放梯度的容忍度。这些选项仅用于 {cmd:menl} 之后。

{phang2}
{opt nrtolerance(#)} 指定缩放梯度的容忍度。当 g(-H^{-1})g' 小于 {opt nrtolerance(#)} 时收敛被声明，其中 g 是梯度行向量，H 是当前迭代的近似 Hessian 矩阵。默认值是 {cmd:nrtolerance(1e-5)}。

{phang2}
{opt nonrtolerance} 指定禁用默认的 {opt nrtolerance()} 标准。

{phang}
{opth format(%fmt)} 设置标准差向量和相关矩阵的显示格式。默认值是 {cmd:format(%6.3f)}。

{phang}
{it:matlist_options} 是控制矩阵（或多个矩阵）显示样式和格式的选项；请参见 {help matlist_zh:[P] matlist} 获取可用选项的列表。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}{p_end}
{phang2}{cmd:. mixed weight week || id: week, covariance(unstructured)}{p_end}

{pstd}ID 级别的随机效应相关矩阵{p_end}
{phang2}{cmd:. estat recovariance, correlation}{p_end}

{pstd}显示聚类的组内边际标准差和相关性{p_end}
{phang2}{cmd:. estat wcorrelation, format(%4.2g)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse childweight}
{p_end}
{phang2}{cmd:. mixed weight age || id: age, covariance(unstructured)}{p_end}

{pstd}显示第一个聚类的组内相关性{p_end}
{phang2}{cmd:. estat wcorrelation, list}{p_end}

{pstd}显示 ID 258 的组内相关性{p_end}
{phang2}{cmd:. estat wcorrelation, at(id=258) list}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat wcorrelation} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(sd)}}标准差{p_end}
{synopt:{cmd:r(Corr)}}组内相关矩阵{p_end}
{synopt:{cmd:r(Cov)}}组内方差-协方差矩阵{p_end}
{synopt:{cmd:r(G)}}随机效应的方差-协方差矩阵{p_end}
{synopt:{cmd:r(Z)}}基于模型的设计矩阵{p_end}
{synopt:{cmd:r(R)}}一级误差的方差-协方差矩阵{p_end}
{synopt:{cmd:r(path)}}标识相关报告的聚类路径{p_end}
{p2colreset}{...}

{pstd}
结果 {cmd:r(G)}、{cmd:r(Z)} 和 {cmd:r(R)} 仅在执行 {cmd:mixed} 后可用。结果 {cmd:r(path)} 仅在执行 {cmd:menl} 后可用。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <me_estat_wcorrelation.sthlp>}