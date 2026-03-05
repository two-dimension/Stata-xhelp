{smcl}
{* *! version 1.3.18  19oct2017}{...}
{viewerdialog ca "dialog ca"}{...}
{viewerdialog camat "dialog camat"}{...}
{vieweralsosee "[MV] ca" "mansection MV ca"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] ca postestimation" "help ca postestimation"}{...}
{vieweralsosee "[MV] ca postestimation plots" "help ca postestimation plots"}{...}
{vieweralsosee "[MV] mca" "help mca_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{viewerjumpto "Syntax" "ca_zh##syntax"}{...}
{viewerjumpto "Menu" "ca_zh##menu"}{...}
{viewerjumpto "Description" "ca_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ca_zh##linkspdf"}{...}
{viewerjumpto "Options" "ca_zh##options"}{...}
{viewerjumpto "Remarks" "ca_zh##remarks"}{...}
{viewerjumpto "Examples" "ca_zh##examples"}{...}
{viewerjumpto "Stored results" "ca_zh##results"}{...}
{viewerjumpto "References" "ca_zh##references"}
{help ca:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[MV] ca} {hline 2}}简单对应分析
{p_end}
{p2col:}({mansection MV ca:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
两个分类变量的简单对应分析

{p 8 16 2}
{cmd:ca} {it:rowvar} {it:colvar} {ifin}
[{it:{help ca##weight:weight}}]
[{cmd:,} {it:options}]


{pstd}
带交叉（堆叠）变量的简单对应分析

{p 8 16 2}
{cmd:ca} {it:row_spec} {it:col_spec} {ifin}
[{it:{help ca##weight:weight}}]
[{cmd:,} {it:options}]


{pstd}
对一个 {it:n_r} x {it:n_c} 矩阵的简单对应分析

{p 8 16 2}
{cmd:camat} {it:matname} [{cmd:,}
{it:options}]


    其中
{p 12 16 2}
{it:spec} = {varname} | {cmd:(}{it:{help newvar_zh}} {cmd::} {varlist}{cmd:)}

{p 8 12 2}
而 {it:matname} 是一个带有 {it:n_r} 和 {it:n_c} 的 {it:n_r} x {it:n_c} 矩阵，且 {it:n_r}、
{it:n_c} {ul:>} 2。


{synoptset 22 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型 2}
{synopt:{opt dim:ensions(#)}}维度数量（因子，轴）；默认值为 {cmd:dim(2)}{p_end}
{synopt:{opth norm:alize(ca##nopts:nopts)}}行与列坐标的标准化{p_end}
{synopt:{opt rows:upp(matname_r)}}补充行的矩阵{p_end}
{synopt:{opt cols:upp(matname_c)}}补充列的矩阵{p_end}
{synopt:{opth rown:ame(strings:string)}}行的标签{p_end}
{synopt:{opth coln:ame(strings:string)}}列的标签{p_end}
{synopt:{opt mis:sing}}将缺失值视为普通值（仅适用于 {cmd:ca}）{p_end}

{syntab:代码（仅适用于 {cmd:ca}）}
{synopt:{cmdab:rep:ort(}{cmdab:v:ariables)}}报告交叉变量的编码{p_end}
{synopt:{cmdab:rep:ort(}{cmdab:c:rossed)}}报告交叉变量的编码{p_end}
{synopt:{cmdab:rep:ort(}{cmdab:a:ll)}}报告交叉及交叉变量的编码{p_end}
{synopt:{cmdab:len:gth(}{cmdab:m:in)}}使用交叉变量的最小长度唯一编码{p_end}
{synopt:{opt len:gth(#)}}使用 {it:#} 作为交叉变量的编码长度{p_end}

{syntab:报告}
{synopt:{opt ddim:ensions(#)}}要显示的奇异值数量；默认是 {cmd:ddim(.)}{p_end}
{synopt:{opt norowp:oints}}抑制包含行类别统计的表格{p_end}
{synopt:{opt nocolp:oints}}抑制包含列类别统计的表格{p_end}
{synopt:{opt comp:act}}以紧凑格式显示表格{p_end}
{synopt:{opt plot}}绘制行和列坐标图{p_end}
{synopt:{opt max:length(#)}}标签的最大字符数；默认值为 {cmd:maxlength(12)}{p_end}
{synoptline}

{marker nopts}{...}
{synoptset 22}{...}
{synopthdr:nopts}
{synoptline}
{synopt:{opt sy:mmetric}}对称坐标（即 {opt ca:normal}）；默认设置{p_end}
{synopt:{opt st:andard}}行和列的标准坐标{p_end}
{synopt:{opt ro:w}}行主坐标，列标准坐标{p_end}
{synopt:{opt co:lumn}}列主坐标，行标准坐标{p_end}
{synopt:{opt pr:incipal}}行和列主坐标{p_end}
{synopt:{it:#}}幂 {cmd:0} <= {it:#} <= {cmd:1} 用于行坐标；很少使用{p_end}
{synoptline}

{p 4 6 2}
{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling} 和 {cmd:statsby} 允许与 {cmd:ca} 一起使用；请参见 {help prefix_zh}。然而，{cmd:bootstrap} 和 {cmd:jackknife} 的结果应谨慎解读；对 {cmd:ca} 参数的识别涉及数据依赖的限制，可能导致严重偏差和过度分散的估计（{help ca##MW1995: Milan 和 Whittaker 1995}）。{p_end}
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{cmd:fweight}s, {cmd:aweight}s 和 {cmd:iweight}s 允许与 {cmd:ca} 一起使用；请参见 {help weight_zh}。{p_end}
{p 4 6 2}
请参见 {manhelp ca_postestimation MV:ca postestimation} 有关估计后可用特性的说明。{p_end}


{marker menu}{...}
{title:菜单}

    {title:ca}

{phang2}
{bf:统计 > 多元分析 > 对应分析 >}
     {bf:双向对应分析（CA）}

    {title:camat}

{phang2}
{bf:统计 > 多元分析 > 对应分析 >}
     {bf:矩阵的双向对应分析}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ca} 执行简单的对应分析（CA），并可选择为两个分类变量或多个交叉变量创建双变量图。{cmd:camat} 类似于 {cmd:ca}，但用于处理包含交叉表或其他非负值的矩阵，其边际是严格递增的。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection MV caQuickstart:快速开始}

        {mansection MV caRemarksandexamples:备注和示例}

        {mansection MV caMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型 2}

{phang}{opt dimensions(#)}
指定要提取的维度数量（=因子=轴）。默认值为 {cmd:dimensions(2)}。如果您指定 {cmd:dimensions(1)}，行和列类别将置于一个维度中。{it:#} 应小于行和列的数量，仅计算活跃的行和列，不包括补充行和列（见选项 {helpb ca##rowsupp():rowsupp()} 和 {helpb ca##colsupp():colsupp()}）。

{pmore}
CA 是一种层次方法，因此提取更多维度不会影响已包含维度的坐标和惯性的分解。各维度的惯性百分比按奇异值的递减顺序排列。第一维度占据最多惯性，紧接着是第二维度，第三维度等。

{phang}{opt normalize(nopts)}
指定标准化方法，即，如何从标准化残差矩阵的奇异向量和奇异值获得行和列坐标。请参见 {it:{help ca##norm:标准化和对应分析的解释}} 讨论这些不同的标准化方法。

{phang2}{opt symmetric}，默认设置，
均匀分配惯性在行和列之间，对行和列进行对称处理。对称标准化也被称为标准或典范标准化。当制作双变量图时，这是最常见的标准化。{cmd:normalize(symmetric)} 等同于 {cmd:normalize(0.5)}。{cmdab:ca:nonical} 是 {cmd:symmetric} 的同义词。

{phang2}{opt standard}
指定行和列坐标应为标准形式（奇异向量除以质量的平方根）。这种标准化方法与任何 {opt normalize(#)} 都不等效。

{phang2}{opt row}
指定主行坐标和标准列坐标。如果您想比较行类别，应选择此选项。应避免解释列类别的相似性。在主图中行和列类别间的关系是适当的。
{cmd:normalize(row)} 等同于 {cmd:normalize(1)}。

{phang2}{opt column}
指定主列坐标和标准行坐标。如果您想比较列类别，应选择此选项。应避免解释行类别的相似性。在主图中行和列类别间的关系是适当的。
{cmd:normalize(column)} 等同于 {cmd:normalize(0)}。

{phang2}{opt principal}
如要在行类别和列类别间进行比较，此标准化方法是最佳选择。在此标准化中，比较行和列点是不合适的。因此，采用此标准化的双变量图最好避免。在主标准化中，行和列坐标是从左奇异向量和右奇异向量获得的，并乘以奇异值。此标准化方法与任何 {opt normalize(#)} 都不等效。

{phang2}{it:#}，{cmd:0} {ul:<} {it:#} {ul:<} {cmd:1}，很少使用；它指定行坐标作为左奇异向量乘以奇异值的 {it:#} 次方获得，而列坐标则等于右奇异向量乘以奇异值的 1-{it:#} 次方。

{marker rowsupp()}{...}
{phang}{opt rowsupp(matname_r)}
指定一个补充行的矩阵。{it:matname_r} 应有 {it:n_c} 列。{it:matname_r} 的行名称用于标签。补充行不会影响维度的计算和惯性的分解。但是，它们包括在图中以及包含行点统计的表格中。由于补充点不贡献于维度，它们在标记为 {cmd:contrib} 列下的条目将留空。

{marker colsupp()}{...}
{phang}{opt colsupp(matname_c)}
指定一个补充列的矩阵。{it:matname_c} 应有 {it:n_r} 行。{it:matname_c} 的列名称用于标签。补充列不会影响维度的计算和惯性的分解。但是，它们包括在图中以及包含列点统计的表格中。由于补充点不贡献于维度，它们在标记为 {cmd:contrib} 列下的条目将留空。

{phang}{opth rowname:(strings:string)} 指定标签来引用矩阵的行。对于 {cmd:ca} 默认值为 {cmd:rowname(rowvar)}，对于 {cmd:camat} 默认值为 {cmd:rowname(rows)}。

{phang}{opth colname:(strings:string)} 指定标签来引用矩阵的列。对于 {cmd:ca} 默认值为 {cmd:colname(colvar)}，对于 {cmd:camat} 默认值为 {cmd:colname(columns)}。

{phang}{opt missing}，仅允许与 {cmd:ca} 一起使用，将 {it:rowvar} 和 {it:colvar} 的缺失值视为分析中要包括的普通类别。默认情况下，包含缺失值的观测将被从分析中排除。

{dlgtab:代码}

{phang}{opt report(opt)}
显示交叉变量、交叉变量的编码信息，或两者的编码信息。如果未指定任何交叉变量，则 {cmd:report()} 被忽略。

{phang2}
{cmd:report(variables)} 显示交叉变量的编码方案，即用于定义交叉变量的变量。

{phang2}
{cmd:report(crossed)} 显示解释交叉变量值标签的表格。

{phang2}
{cmd:report(all)} 显示交叉和交叉变量的编码。

{phang}{opt length(opt)}
指定交叉变量的编码长度。

{phang2}{cmd:length(min)}
指定使用交叉变量的最小长度唯一编码。

{phang2}{opt length(#)}
指定使用交叉变量的编码长度 {it:#}，其中 {it:#} 必须在 4 到 32 之间。

{dlgtab:报告}

{phang}{opt ddimensions(#)}
指定要显示的奇异值数量。默认值为 {cmd:ddimensions(.)}，表示全部显示。

{phang}{cmd:norowpoints}
抑制包含行点（类别）统计的表格。

{phang}{cmd:nocolpoints}
抑制包含列点（类别）统计的表格。

{phang}{opt compact}
指定将点统计表乘以 1,000 显示，如 {help ca##G2007:Greenacre (2007)} 所建议，使得可以显示更多列而不换行输出。对于两维模型，紧凑表可在行尺寸 79 下显示，三维模型下可在行尺寸 99 下显示。

{phang}{opt plot}
显示行和列坐标的二位图。使用行主标准化时，仅绘制行点。使用列主标准化时，仅绘制列点。在其它标准化中，则绘制行点和列点。如果您需要绘制另一组点，或者想进一步细化图形，可以直接使用 {cmd:cabiplot}；请参见 {manhelp ca_postestimation_plots MV:ca postestimation plots}。

{phang}{opt maxlength(#)}
指定图形中行和列标签的最大字符数。默认值为 {cmd:maxlength(12)}。

{pstd}
注意：报告选项可以在估计或重放时指定。


{marker remarks}{...}
{title:备注}

{marker norm}{...}
    {title:标准化和 CA 的解释}

{pstd}
在 CA 中使用的标准化方法决定了行类别的相似性、列类别的相似性以及行变量和列变量之间的关系（关联）是否可以被解释，以及如何根据行和列坐标以及图的原点进行解释。

{pstd}
如何比较行点 -- 前提是标准化方法允许这样的比较？形式上，行点之间的欧氏距离近似于相应行轮廓之间的卡方距离。因此，在双变量图中，映射在一起的行类别有相似的行轮廓；也就是说，列变量的分布相似。映射相距较远的行类别则有不同的行轮廓。此外，行点与原点之间的欧氏距离近似于行轮廓和行中心的卡方距离，因此这表明一个类别与人群的差别有多大。

{pstd}
对列点同样适用类似的解释。

{pstd}
关于行变量和列变量之间的关联：在 CA 的双变量图中，不能将行点 r 和列点 c 之间的距离解释为 r 和 c 之间的关系。相反，应考虑从原点到 r 的向量 (OR) 和从原点到 c 的向量 (OC)。请记住，CA 分解了与独立性 d(r,c) 的标定偏差，并且 d(r,c) 近似于 OR 和 OC 的内积。d(r,c) 的绝对值越大，r 和 c 之间的关联越强。从几何角度看，d(r,c) 可以表示为 OR 的长度、OC 的长度以及 OR 和 OC 之间角度的余弦的乘积。

{pstd}
这意味着什么？首先，考虑角度的影响。如果 OR 和 OC 的方向大致相同，则 (r,c) 之间的关联强烈为正；在独立性下，(r,c) 的频率远高于预期，因此 r 趋于与 c 群聚——如果点 r 和 c 接近在一起。
类似地，如果 OR 和 OC 指向相反方向，则关联强烈为负。在这种情况下，(r,c) 的频率远低于独立下的预期，因此 r 和 c 同时发生的可能性不大。最后，如果 OR 和 OC 大致正交（角度 = +/- 90），则偏离独立的程度较小。

{pstd}
其次，r 和 c 的关联随着 OR 和 OC 的长度增加。远离原点的点往往具有较大的关联。如果某个类别映射接近原点，则与另一变量的类别之间的所有关联都较小：其分布类似于边际分布。

{pstd}
以下是主要的标准化方法所启用的解释，如在 {cmd:normalize()} 选项中所指定。

	{hline 54}
		      相似性   相似性     关联
	方法         行类别    列类别   行 vs 列
	{hline 54}
	{opt symmetric}          不        不             是
	{opt principal}         是        是              不
	{opt row}               是        不             是
	{opt column}             不        是             是
	{hline 54}

{pstd}
如果我们说行类别之间或列类别之间的比较是不可能的，我们实际上是指行轮廓或列轮廓之间的卡方距离实际上是通过权重欧氏距离来近似，其对应的权重是基于维度的惯性，而不是基于标准欧氏距离。

{pstd}
您可能希望在主标准化下进行 CA，以研究变量类别之间的关系，并在对称标准化下进行 CA，以研究行和列类别的关联。


{marker examples}{...}
{title:示例 ca}

{pstd}
{cmd:ca} 从个体层数据创建双向频率表，并对该表执行 CA。

{phang2}{cmd:. webuse ca_smoking}{p_end}
{phang2}{cmd:. ca rank smoking}{p_end}
{phang2}{cmd:. ca rank smoking, dim(3)}{p_end}

{pstd}
我们希望在分析中包含吸烟的分布，这个分布是在一个国家样本中估计的。补充点的数据作为一个行向量输入，具有一行和四列，每列对应一个吸烟类别：

{phang2}{cmd:. matrix SR = (42, 29, 20, 9)}{p_end}
{phang2}{cmd:. matrix rownames SR = national}{p_end}
{phang2}{cmd:. ca rank smoking, rowsupp(SR) plot}{p_end}


{title:带交叉变量的 ca 示例}

{pstd}
您想分析性别和教育如何影响对陈述“我们过于相信科学，而不够相信情感或信仰”的反应，该语句在变量 {cmd:A} 中编码，具有五个类别，其中 1 表示强烈同意，5 表示强烈不同意。变量 {cmd:sex} 包含性别信息（两个类别），变量 {cmd:edu} 包含教育信息（六个类别）。我们将变量 {cmd:sex} 和 {cmd:edu} 视为具有 2x6=12 类别的人口统计分类。 {cmd:ca} 对 5x12 的频率表执行 CA：

{phang2}
{cmd:. webuse issp93}{p_end}
{phang2}
{cmd:. label language short}{p_end}
{phang2}
{cmd:. ca A (demo : sex edu), dim(2) report(c) length(min)}{p_end}


{title:camat 示例}

{pstd}
为了对表格格式的数据进行 CA，将数据存储在 Stata 矩阵中并使用 {cmd:camat} 而不是 {cmd:ca} 是很方便的。考虑这个表：

{center:{txt}{hline 16}{c TT}{hline 31}}
{center:{txt}                {c |}            吸烟            }
{center:{txt}      人员 {c |}   无   轻度  中度   重度}
{center:{hline 16}{c +}{hline 31}}
{center:{txt} 高级经理 {c |}      {res}4       2       3       2}
{center:{txt} 初级经理 {c |}      {res}4       3       7       4}
{center:{txt}高级员工 {c |}     {res}25      10      12       4}
{center:{txt}初级员工 {c |}     {res}18      24      33      13}
{center:{txt}      秘书 {c |}     {res}10       6       7       2}
{center:{txt}{hline 16}{c BT}{hline 31}}

{pstd}
以下代码创建一个 Stata 矩阵 {cmd:F} ，具有频数以及适当的行和列名称。  

{phang2}
{cmd:. matrix F = ( 4,2,3,2 \ 4,3,7,4 \ 25,10,12,4 \ 18,24,33,13 \ 10,6,7,2 )}
{p_end}
{phang2}
{cmd:. matrix colnames F = none light medium heavy}
{p_end}
{phang2}
{cmd:. matrix rownames F = sen_mngr jun_mngr sen_empl jun_employ secr}
{p_end}

{pstd}
要以两个维度（默认值）进行 CA并生成图形，请调用 {cmd:camat} 并处理 {cmd:F}。

{phang2}{cmd:. camat F, rowname(rank) colname(smoking) plot}{p_end}

{pstd}
我们增加两个补充列，展示饮酒与非饮酒的受试者分布。我们创建一个具有五行（每个员工类别一行）和两列的矩阵。

{phang2}{cmd:. matrix SC = ( 0,11 \ 1,17 \ 5,46 \ 10,78 \ 7,18)}{p_end}
{phang2}{cmd:. matrix colnames SC = nondrink drink}{p_end}

{phang2}{cmd:. camat F, rowsupp(SR) colsupp(SC) plot}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
设 {it:r} 为行数，{it:c} 为列数，{it:f} 为保留维度的数量。
{cmd:ca} 和 {cmd:camat} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(f)}}维度数量（因子，轴）；最大值为 min({it:r} - 1,{it:c} - 1){p_end}
{synopt:{cmd:e(inertia)}}总惯性 = {cmd:e(X2)}/{cmd:e(N)}{p_end}
{synopt:{cmd:e(pinertia)}}由 {cmd:e(f)} 个维度解释的惯性{p_end}
{synopt:{cmd:e(X2)}}卡方统计量{p_end}
{synopt:{cmd:e(X2_df)}}自由度 ({it:r} - 1)({it:c} - 1){p_end}
{synopt:{cmd:e(X2_p)}}{it:p}-值对应于 {cmd:e(X2)}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ca}（即使是 {cmd:camat}）{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(Rcrossvars)}}行交叉变量名（仅适用于 {cmd:ca}）{p_end}
{synopt:{cmd:e(Ccrossvars)}}列交叉变量名（仅适用于 {cmd:ca}）{p_end}
{synopt:{cmd:e(varlist)}}行和列变量名（仅适用于 {cmd:ca}）{p_end}
{synopt:{cmd:e(wtype)}}权重类型（仅适用于 {cmd:ca}）{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（仅适用于 {cmd:ca}）{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(ca_data)}}{cmd:variables}或 {cmd:crossed}{p_end}
{synopt:{cmd:e(Cname)}}列名称{p_end}
{synopt:{cmd:e(Rname)}}行名称{p_end}
{synopt:{cmd:e(norm)}}标准化方法{p_end}
{synopt:{cmd:e(sv_unique)}}如果奇异值唯一，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV eigen}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(Ccoding)}}列类别 (1 x {it:c})（仅适用于 {cmd:ca}）{p_end}
{synopt:{cmd:e(Rcoding)}}行类别 (1 x {it:r})（仅适用于 {cmd:ca}）{p_end}
{synopt:{cmd:e(GSC)}}列统计量 ({it:c} x 3(1 + {it:f})){p_end}
{synopt:{cmd:e(GSR)}}行统计量 ({it:r} x 3(1 + {it:f})){p_end}
{synopt:{cmd:e(TC)}}标准化列坐标 ({it:c} x {it:f}){p_end}
{synopt:{cmd:e(TR)}}标准化行坐标 ({it:r} x {it:f}){p_end}
{synopt:{cmd:e(Sv)}}奇异值 (1 x {it:f}){p_end}
{synopt:{cmd:e(C)}}列坐标 ({it:c} x {it:f}){p_end}
{synopt:{cmd:e(R)}}行坐标 ({it:r} x {it:f}){p_end}
{synopt:{cmd:e(c)}}列质量（边际） ({it:c} x 1){p_end}
{synopt:{cmd:e(r)}}行质量（边际） ({it:r} x 1){p_end}
{synopt:{cmd:e(P)}}已分析的矩阵 （{it:r} x {it:c}){p_end}
{synopt:{cmd:e(GSC_supp)}}补充列统计量{p_end}
{synopt:{cmd:e(GSR_supp)}}补充行统计量{p_end}
{synopt:{cmd:e(PC_supp)}}补充列点的主坐标{p_end}
{synopt:{cmd:e(PR_supp)}}补充行点的主坐标{p_end}
{synopt:{cmd:e(TC_supp)}}补充列点的标准化坐标{p_end}
{synopt:{cmd:e(TR_supp)}}补充行点的标准化坐标{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本（仅适用于 {cmd:ca}）{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker G1984}{...}
{phang}
Greenacre, M. J. 1984. {it:理论与对应分析的应用}。伦敦：学术出版社。

{marker G2007}{...}
{phang}
------. 2007. {it:实际中的对应分析}。第2版。
佛罗里达州博卡拉顿：查普曼与霍尔/CRC。

{marker MW1995}{...}
{phang}
Milan, L. 和 J. Whittaker. 1995. 使用参数自助法应用于包含奇异值分解的模型。
{it:应用统计学} 44: 31-49。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ca.sthlp>}