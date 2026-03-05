{smcl}
{* *! version 1.1.14  22may2018}{...}
{vieweralsosee "[P] matrix dissimilarity" "mansection P matrixdissimilarity"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[MV] measure_option" "help measure_option_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] cluster programming utilities" "help cluster_programming_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{vieweralsosee "[MV] mdsmat" "help mdsmat_zh"}{...}
{vieweralsosee "[MV] parse_dissim" "help parse_dissim_zh"}{...}
{viewerjumpto "Syntax" "matrix_dissimilarity_zh##syntax"}{...}
{viewerjumpto "Description" "matrix_dissimilarity_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_dissimilarity_zh##linkspdf"}{...}
{viewerjumpto "Options" "matrix_dissimilarity_zh##options"}{...}
{viewerjumpto "Remarks" "matrix_dissimilarity_zh##remarks"}{...}
{viewerjumpto "Examples" "matrix_dissimilarity_zh##examples"}{...}
{viewerjumpto "References" "matrix_dissimilarity_zh##references"}
{help matrix_dissimilarity:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[P] matrix dissimilarity} {hline 2}}计算相似度或不相似度度量{p_end}
{p2col:}({mansection P matrixdissimilarity:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 29 2}
{cmdab:mat:rix} {cmdab:dis:similarity}
{it:matname} {cmd:=} [{varlist}]
{ifin}
{bind:[{cmd:,} {it:options}]}

{p2colset 5 23 25 2}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{it:{help measure option:measure}}}相似度或不相似度度量；	默认是 {cmd:L2}（欧几里得）{p_end}
{p2col:{opt obs:ervations}}计算观察值之间的相似度或不相似度；默认{p_end}
{p2col:{opt var:iables}}计算变量之间的相似度或不相似度{p_end}
{p2col:{opth name:s(varname)}}为 {it:matname} 提供行/列名称（允许与 {opt observations} 一起使用）{p_end}
{p2col:{opt allb:inary}}检查所有值是否为0、1或缺失{p_end}
{p2col:{opt prop:ortions}}将值解释为二元值的比例{p_end}
{p2col:{cmd:dissim(}{it:method}{cmd:)}}将相似度度量更改为不相似度度量{p_end}
{p2line}

{pstd}
其中 {it:method} 通过使用

          {opt oneminus}     d_ij = 1 - s_ij
          {opt st:andard}     d_ij = sqrt(s_ii + s_jj - 2*s_ij)

来将相似度转换为不相似度


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix dissimilarity} 计算相似度、不相似度或距离矩阵。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P matrixdissimilarityRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:measure} 指定 Stata 允许的一种相似度或不相似度度量。默认是 {cmd:L2}，欧几里得距离。对于连续数据和二元数据，提供了多种相似度和不相似度度量；请参见 {manhelpi measure_option MV}。

{phang}
{cmd:observations} 和 {cmd:variables} 指定是否计算观察值或变量之间的相似度或不相似度。默认是 {cmd:observations}。

{marker names()}{...}
{phang}
{opth names(varname)} 为 {it:matname} 提供行和列名称。 {it:varname} 必须是一个长度不超过 {ccl namelen} 的字符串变量。您可能希望选择一个 {it:varname}，以获取行和列名称的唯一值。 {cmd:matrix} {cmd:dissimilarity} 不检查值的唯一性。 {cmd:names()} 不允许与 {cmd:variables} 选项一起使用。当计算观察值之间的相似度或不相似度时，默认的行和列名称为 {cmd:obs}{it:#}，其中 {it:#} 是与该行或列相对应的观察编号。

{phang}
{cmd:allbinary} 检查所有值是否为0、1或 {help missing_zh}。Stata 将非零值视为1（不包括缺失值）时，处理应该是二元数据的情况（包括二元相似度 {it:measure}）。如果这些值不是严格的二元值， {cmd:allbinary} 将导致 {cmd:matrix dissimilarity} 退出并显示错误信息。 {cmd:allbinary} 不允许与 {cmd:proportions} 或 {cmd:Gower} {it:measure} 一起使用。

{phang}
{cmd:proportions} 适用于二元相似度 {it:measure}。它指定将值解释为二元值的比例。默认行为将所有非零值视为1（不包括缺失值）。使用 {cmd:proportions} 时，值必须在0到1之间（包括两者）。有关与二元 {it:measure} 一起使用比例的讨论，请参见 {manhelpi measure_option MV}。 {cmd:proportions} 不允许与 {cmd:allbinary} 或 {cmd:Gower} {it:measure} 一起使用。

{phang}
{marker method}{...}
{opt dissim(method)} 指定将相似度度量转换为不相似度度量。 {it:method} 可以是 {cmd:oneminus} 或 {cmd:standard}。 {cmd:oneminus} 使用 d_ij = 1-s_ij 将相似度转换为不相似度
（{help matrix dissimilarity##KR1990:Kaufman 和 Rousseeuw 1990，第21页}）。
{cmd:standard} 使用 d_ij = sqrt(s_ii+s_jj-2*s_ij)
（{help matrix dissimilarity##MKB1979:Mardia、Kent 和 Bibby 1979，第402页}）。当 {it:measure} 已经是一个不相似度或距离时， {cmd:dissim()} 不会执行任何操作。有关相似度的 {it:measure} 的详细信息，请参见 {manhelpi measure_option MV}。


{marker remarks}{...}
{title:备注}

{pstd}
每个观察值（若指定了 {cmd:variables} 选项，则为变量）与其他观察值或变量之间的相似度或不相似度被放置在 {it:matname} 中。 {it:i} 行和 {it:j} 列中的元素给出第 {it:i} 和第 {it:j} 个观察值（或变量）之间的相似度或不相似度。您获得相似度或不相似度取决于请求的 {it:measure}；请参见 {manhelpi measure_option MV}。

{pstd}
如果观察值（或变量）的数量太大，以至于将结果存储在矩阵中不切实际，您可能希望考虑使用 {cmd:cluster measures} 命令，该命令将相似度或不相似度存储在变量中；请参见
{manhelp cluster_programming MV:cluster 编程工具}。

{pstd}
在计算观察值之间的相似度或不相似度时， {it:matname} 的默认行和列名称设置为 {cmd:obs}{it:#}，其中 {it:#} 是观察编号。 
{helpb matrix dissimilarity##names():names()} 选项允许您覆盖此默认设置。对于变量之间的相似度或不相似度， {it:matname} 的行和列名称设置为适当的变量名称。

{pstd}
行和列的顺序与观察值的顺序相对应，当您计算观察值之间的相似度或不相似度时。警告：如果在运行 {cmd:matrix dissimilarity} 后重新排序数据（例如，使用 {cmd:sort} 或 {cmd:gsort}），行和列的顺序将不再与您的数据匹配。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse labtech}

{pstd}创建矩阵 {cmd:De}，持有变量 {cmd:x1}、{cmd:x2} 和 {cmd:x3} 之间所有观察值的欧几里得距离{p_end}
{phang2}{cmd:. matrix dissimilarity De = x1 x2 x3}

{pstd}列出结果{p_end}
{phang2}{cmd:. mat list De}

{pstd}创建矩阵 {cmd:Dc}，持有变量 {cmd:x1}、{cmd:x2} 和 {cmd:x3} 之间所有观察值的堪培拉距离{p_end}
{phang2}{cmd:. matrix dis Dc = x1 x2 x3, Canberra}

{pstd}列出结果{p_end}
{phang2}{cmd:. mat list Dc}

{pstd}创建矩阵 {cmd:Dcvars}，持有所有变量之间的堪培拉距离{p_end}
{phang2}{cmd:. mat dis Dcvars = , Canberra variables}

{pstd}列出结果{p_end}
{phang2}{cmd:. mat list Dcvars}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse homework}

{pstd}创建矩阵 {cmd:M}，持有变量 {cmd:a1} 到 {cmd:a5} 最近五个观察值的匹配系数相似度度量{p_end}
{phang2}{cmd:. mat dis M = a1-a5 in -5/L, matching}

{pstd}列出结果{p_end}
{phang2}{cmd:. mat list M}

{pstd}删除矩阵 M{p_end}
{phang2}{cmd:. mat drop M}

{pstd}与上述相同的 {cmd:matrix dissimilarity} 命令，但同时验证数据为二元{p_end}
{phang2}{cmd:. mat dis M = a1-a5 in -5/L, matching allbinary}{p_end}
    {hline}


{marker references}{...}
{title:参考文献}

{marker KR1990}{...}
{phang}
Kaufman, L., 和 P. J. Rousseeuw. 1990.
{it:Finding Groups in Data: An Introduction to Cluster Analysis}.
纽约：Wiley。

{marker MKB1979}{...}
{phang}
Mardia, K. V., J. T. Kent 和 J. M. Bibby. 1979.
{it:Multivariate Analysis}.  纽约：Academic Press。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_dissimilarity.sthlp>}