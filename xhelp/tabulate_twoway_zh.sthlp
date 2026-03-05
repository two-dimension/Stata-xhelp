{smcl}
{* *! version 1.3.22  15may2018}{...}
{viewerdialog tabulate "dialog tabulate2"}{...}
{viewerdialog tab2 "dialog tab2"}{...}
{viewerdialog tabi "dialog tabi"}{...}
{vieweralsosee "[R] tabulate twoway" "mansection R tabulatetwoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{vieweralsosee "[SVY] svy: tabulate oneway" "help svy_tabulate_oneway_zh"}{...}
{vieweralsosee "[SVY] svy: tabulate twoway" "help svy_tabulate_twoway_zh"}{...}
{vieweralsosee "[R] table" "help table_zh"}{...}
{vieweralsosee "[R] tabstat" "help tabstat_zh"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{vieweralsosee "[R] tabulate, summarize()" "help tabulate_summarize_zh"}{...}
{vieweralsosee "[XT] xttab" "help xttab_zh"}{...}
{viewerjumpto "Syntax" "tabulate twoway##syntax"}{...}
{viewerjumpto "Menu" "tabulate twoway##menu"}{...}
{viewerjumpto "Description" "tabulate twoway##description"}{...}
{viewerjumpto "Links to PDF documentation" "tabulate_twoway_zh##linkspdf"}{...}
{viewerjumpto "Options" "tabulate twoway##options"}{...}
{viewerjumpto "Limits" "tabulate twoway##limits"}{...}
{viewerjumpto "Examples" "tabulate twoway##examples"}{...}
{viewerjumpto "Video examples" "tabulate twoway##video"}{...}
{viewerjumpto "Stored results" "tabulate twoway##results"}
{help tabulate_twoway:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[R] tabulate twoway} {hline 2}}双向频数表{p_end}
{p2col:}({mansection R tabulatetwoway:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
双向表

{p 8 17 2}
{cmdab:ta:bulate}
{it:{help varname_zh:varname1}} {it:{help varname_zh:varname2}}
{ifin}
[{it:{help tabulate twoway##weight:weight}}]
[{cmd:,} {it:options}]


{pstd}
所有可能组合的双向表 {c -} 一个便利工具

{p 8 17 2}
{cmd:tab2}
{varlist}
{ifin}
[{it:{help tabulate twoway##weight:weight}}]
[{cmd:,} {it:options}]


{pstd}
双向列联表的即时形式

{p 8 17 2}
{cmd:tabi} {it:#11} {it:#12} [{it:...}] {cmd:\} {it:#21} {it:#22}
[{it:...}] [{cmd:\} {it:...}] [{cmd:,} {it:options}]


{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt ch:i2}}报告 Pearson 的卡方检验
{p_end}
{synopt:{opt e:xact}[{opt (#)}]}报告 Fisher 的精确检验
{p_end}
{synopt:{opt g:amma}}报告 Goodman 和 Kruskal 的伽马系数
{p_end}
{synopt:{opt lr:chi2}}报告似然比卡方检验
{p_end}
{synopt:{opt t:aub}}报告 Kendall 的 tau-b
{p_end}
{synopt:{opt V}}报告 Cramér 的 V
{p_end}
{synopt:{opt cchi:2}}报告每个单元的 Pearson 卡方
{p_end}
{synopt:{opt co:lumn}}报告每个单元在其列内的相对频率
{p_end}
{synopt:{opt r:ow}}报告每个单元在其行内的相对频率
{p_end}
{synopt:{opt clr:chi2}}报告每个单元的似然比卡方
{p_end}
{synopt:{opt ce:ll}}报告每个单元的相对频率
{p_end}
{synopt:{opt exp:ected}}报告每个单元的期望频率
{p_end}
{synopt:{opt nof:req}}不显示频数
{p_end}
{synopt:{opt rowsort}}按观察到的频率顺序列出行
{p_end}
{synopt:{opt colsort}}按观察到的频率顺序列出列
{p_end}
{synopt:{opt m:issing}}将缺失值视为其他值
{p_end}
{synopt:{opt w:rap}}不换行宽表
{p_end}
{synopt:[{opt no}]{opt key}}报告/抑制单元内容键
{p_end}
{synopt:{opt nol:abel}}显示数字代码而不是值标签
{p_end}
{synopt:{opt nolog}}不显示 Fisher 精确检验的日志
{p_end}
{p2coldent:* {opt first:only}}仅显示包含 {varlist} 中第一个变量的表
{p_end}

{syntab:高级}
{synopt:{opt matcell(matname)}}将频数保存在 {it:matname} 中；程序员选项
{p_end}
{synopt:{opt matrow(matname)}}将 {it:{help varname_zh:varname1}} 的唯一值保存在 {it:matname} 中；程序员选项
{p_end}
{synopt:{opt matcol(matname)}}将 {it:{help varname_zh:varname2}} 的唯一值保存在 {it:matname} 中；程序员选项
{p_end}
{p2coldent:# {opt replace}}用给定单元频率替换当前数据
{p_end}

{synopt :{opt a:ll}}相当于指定 {cmd:chi2 lrchi2 V gamma taub}
{p_end}
{synoptline}
{p 4 6 2}
* {opt firstonly}仅适用于 {cmd:tab2}。{p_end}
{p 4 6 2}
# {opt replace}仅适用于 {cmd:tabi}。{p_end}
{p 4 6 2}
{opt by}允许与 {opt tabulate} 和 {opt tab2} 一起使用；参见 {manhelp by D}。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s、{opt aweight}s 和 {opt iweight}s 被 {opt tabulate} 允许。{opt fweight}s 被 {opt tab2} 允许。参见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt all} 不会出现在对话框中。{p_end}


{marker menu}{...}
{title:菜单}

    {title:tabulate}

{phang2}
{bf:统计 > 摘要、表格和检验 > 频率表 >}
       {bf:带相关性度量的双向表}

    {title:tab2}

{phang2}
{bf:统计 > 摘要、表格和检验 > 频率表 >}
       {bf:所有可能的双向表}

    {title:tabi}

{phang2}
{bf:统计 > 摘要、表格和检验 > 频率表 > 表计算器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tabulate} produces a two-way table of frequency counts, along
with various measures of association, including the common Pearson's
chi-squared, the likelihood-ratio chi-squared, Cramér's V, Fisher's exact
test, Goodman and Kruskal's gamma, and Kendall's tau-b.

{pstd}
行大小受到尊重。 也就是说，如果在运行 {opt tabulate} 之前调整结果窗口的大小，生成的双向列联表将利用可用的水平空间。 Stata for Unix(console) 用户可以使用 {helpb linesize:set linesize} 命令来利用此功能。

{pstd}
{opt tab2} 生成 {varlist} 中指定变量的所有可能的双向列联表。

{pstd}
{opt tabi} 使用指定的值显示 r x c 表，行由 '{cmd:\}' 分隔。如果没有指定选项，则如同为 2 x 2 表指定了 {opt exact}，并且在其他情况下指定了 {opt chi2}。有关即时命令的一般描述，请参见 {help immed_zh}。有关使用 {cmd:tabi} 的示例，请参见 {mansection R tabulatetwowayRemarksandexamplesTableswithimmediatedata:{it:带即时数据的表}}在 {bf:[R] tabulate twoway} 中。

{pstd}
如果您想要单向频数表，请参见 {manhelp tabulate_oneway R:tabulate oneway}。 如果您想要一维、二维或 n 维频数表以及各种摘要统计，请参见 {manhelp table R} 和 {manhelp tabstat R}。有关使用 {opt summarize()} 选项的 {opt tabulate} 的描述，请参见 {manhelp tabulate_summarize R:tabulate, summarize()}；该选项生成一张均值和标准差的表格（分解）。{opt table} 比 {cmd:tabulate, summarize()} 更好，但 {cmd:tabulate, summarize()} 更快。有关流行病学家关注的统计的 2 x 2 表，请参见 {manhelp Epitab R}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R tabulatetwowayQuickstart:快速开始}

        {mansection R tabulatetwowayRemarksandexamples:备注和示例}

        {mansection R tabulatetwowayMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt chi2} 计算并显示 Pearson 的卡方检验，假设双向表中的行和列是独立的。 如果指定了 {opt aweight}s 或 {opt iweight}s，则不能指定 {opt chi2}。

{phang}
{opt exact}[{opt (#)}] 显示由 Fisher 的精确检验计算的显著性，并可应用于 r x c 表以及 2 x 2 表。 对于 2 x 2 表，显示单侧和双侧概率。 对于 r x c 表，显示双侧概率。 可选的正整数 {it:#} 是指命令允许消耗的内存的乘数。 默认值为 1。 对于合理的 r x c 表，该选项通常不必要。 如果命令以错误 910 终止，请尝试 {cmd:exact(2)}。 在计算 Fisher 的精确检验时，允许的最大行或列维度是 {cmd: tabulate} 的最大行或列维度（参见 {help limits_zh}）。

{phang}
{opt gamma} 显示 Goodman 和 Kruskal 的伽马系数及其渐近标准误。 {opt gamma} 仅在两个变量都是序数时适用。 如果指定了 {opt aweight}s 或 {opt iweight}s，则不能指定 {opt gamma}。

{phang}
{opt lrchi2} 显示似然比卡方统计量。 如果指定了 {opt aweight}s 或 {opt iweight}s，则不能指定 {opt lrchi2}。

{phang}
{opt taub} 显示 Kendall 的 tau-b 及其渐近标准误。 {opt taub} 仅在两个变量都是序数时适用。 如果指定了 {opt aweight}s 或 {opt iweight}s，则不能指定 {opt taub}。

{phang}
{opt V}（注意大小写）显示 Cramér 的 V。 如果指定了 {opt aweight}s 或 {opt iweight}s，则不能指定 {opt V}。

{phang}
{opt cchi2} 显示每个单元对双向表中 Pearson 卡方的贡献。

{phang}
{opt column} 显示双向表中每个单元在其列内的相对频率。

{phang}
{opt row} 显示双向表中每个单元在其行内的相对频率。

{phang}
{opt clrchi2} 显示双向表中每个单元对似然比卡方的贡献。

{phang}
{opt cell} 显示双向表中每个单元的相对频率。

{phang}
{opt expected} 显示双向表中每个单元的期望频率。

{phang}
{opt nofreq} 抑制频数的打印。

{phang}
{opt rowsort} 和 {opt colsort} 指定分别按观察频率顺序呈现行和列。

{pmore}
默认情况下，行和列按行和列变量的升序呈现。 例如，如果您输入 {opt tabulate a b} 且 {opt a} 取值为 2、3 和 5，则表的第一行将对应于 {opt a} = 2；第二行将对应于 {opt a} = 3；第三行将对应于 {opt a} = 5。

{pmore}
{opt rowsort} 指定行按观察值的频率降序排列。 如果您输入 {opt twoway a b, rowsort}，则 {opt a} 的最常观察值将列在第一行，第二常观察值将列在第二行，以此类推。 如果有频率相同的行，它们将按 {opt a} 的升序值呈现。 如果 {opt a} = 5 的频率为 1,000，而 {opt a} = 2 和 {opt a} = 3 的频率均为 500，则行将以 {opt a} = 5、{opt a} = 2 和 {opt a} = 3 的顺序呈现。

{pmore}
{opt colsort} 的作用与 {opt rowsort} 相同，只是针对列和列变量。

{pmore}
{opt rowsort} 和 {opt colsort} 可以一起指定。

{phang}
{opt missing} 请求在计算频数、百分比和其他统计量时将缺失值视为其他值。

{phang}
{opt wrap} 请求 Stata 不对宽的双向表进行处理以使其可读。 除非指定 {opt wrap}，否则宽表会被分成几部分以增强可读性。

{phang}
[{opt no}]{opt key} 抑制或强制在双向表上方显示键。 默认情况下，如果请求了多个单元统计，则显示密钥，否则省略。 {opt key} 强制显示密钥。 {opt nokey} 抑制其显示。

{phang}
{opt nolabel} 使数字代码显示而非值标签。

{phang}
{opt nolog} 抑制 Fisher 精确检验日志的显示。 使用 Fisher 精确检验需要计算所有概率超过观测表的概率的表，这些概率根据观测到的行和列总计。 日志逐步计算网络中的每个阶段，从列数开始递减至 1，并在每个阶段显示网络中的节点数。 对于 2 x 2 表，不显示日志。

{phang}
{opt firstonly} 仅适用于 {cmd:tab2}，限制输出仅包含 {varlist} 中第一个变量的表。 使用此选项可以与一组其他变量进行交互作用。

{dlgtab:高级}

{phang}
{opt matcell(matname)} 将报告的频数保存在 {it:matname} 中。 此选项供程序员使用。

{phang}
{opt matrow(matname)} 将 r x 1 行标题的数字值保存在 {it:matname} 中。 此选项供程序员使用。
{opt matrow()} 如果行变量为字符串，则不能被指定。

{phang}
{opt matcol(matname)} 将 1 x c 列标题的数字值保存在 {it:matname} 中。 此选项供程序员使用。
{opt matcol()} 如果列变量为字符串，则不能被指定。

{phang}
{opt replace} 表示将作为参数传递给 {opt tabi} 命令的即时数据替换为当前数据。

{pstd}
以下选项可与 {opt tabulate} 一起使用，但未显示在对话框中：

{phang}
{opt all} 相当于指定 {cmd:chi2 lrchi2 V gamma taub}。 注意省略 {opt exact}。 指定 {opt all} 时，可以在其他选项前加 {opt no}。 {opt all noV} 请求所有相关性度量，除 Cramér 的 V（和 Fisher 的精确）。 {opt all exact} 请求所有相关性度量，包括 Fisher 的精确检验。 如果指定了 {opt aweight}s 或 {opt iweight}s，不能指定 {opt all}。


{marker limits}{...}
{title:限制}

{pstd}
双向表最多可以有 1,200 行和 80 列（Stata/MP 和 Stata/SE）或 300 行和 20 列（Stata/IC）。 如果需要更大的表，请参见 {manhelp table R}。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse citytemp2}

{pstd}双向频数表{p_end}
{phang2}{cmd:. tabulate region agecat}

{pstd}包含行百分比{p_end}
{phang2}{cmd:. tabulate region agecat, row}

{pstd}包含列百分比{p_end}
{phang2}{cmd:. tabulate region agecat, column}

{pstd}包含单元百分比{p_end}
{phang2}{cmd:. tabulate region agecat, cell}

{pstd}包含行百分比，抑制频数计数{p_end}
{phang2}{cmd:. tabulate region agecat, row nofreq}

{pstd}包含行和列独立性检验的卡方检验{p_end}
{phang2}{cmd:. tabulate region agecat, chi2}

    {hline}
    设置
{phang2}{cmd:. webuse dose}

{pstd}包含所有相关性度量，除 Fisher 的精确检验{p_end}
{phang2}{cmd:. tabulate dose function, all}

{pstd}包含所有相关性度量，包括 Fisher 的精确检验{p_end}
{phang2}{cmd:. tabulate dose function, all exact}

    {hline}
{pstd}即时形式{p_end}
{phang2}{cmd:. tabi 30 18 \ 18 14}

{pstd}即时形式，2 x 3 表{p_end}
{phang2}{cmd:. tabi 30 18 38 \ 13 7 22}

{pstd}添加 Fisher 的精确检验{p_end}
{phang2}{cmd:. tabi 30 18 38 \ 13 7 22, chi2 exact}

{pstd}3 x 2 表，所有相关性度量{p_end}
{phang2}{cmd:. tabi 30 13 \ 18 7 \ 38 22, all exact}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=DBsMPZqJj-o":Stata 中的 Pearson 卡方和 Fisher 精确检验}

{phang}
{browse "http://www.youtube.com/watch?v=3WpMRtTNZsw":Stata 中的表和交叉表}

{phang}
{browse "http://www.youtube.com/watch?v=GZIi9zAlzIA":交叉表和卡方检验计算器}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tabulate}、{cmd:tab2} 和 {cmd:tabi} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}
{synopt:{cmd:r(r)}}行数{p_end}
{synopt:{cmd:r(c)}}列数{p_end}
{synopt:{cmd:r(chi2)}}Pearson 的卡方检验{p_end}
{synopt:{cmd:r(p)}}Pearson 的卡方检验的 p 值{p_end}
{synopt:{cmd:r(gamma)}}伽马系数{p_end}
{synopt:{cmd:r(p1_exact)}}单侧 Fisher 的精确 p 值{p_end}
{synopt:{cmd:r(p_exact)}}Fisher 的精确 p 值{p_end}
{synopt:{cmd:r(chi2_lr)}}似然比卡方{p_end}
{synopt:{cmd:r(p_lr)}}似然比检验的 p 值{p_end}
{synopt:{cmd:r(CramersV)}}Cramér 的 V{p_end}
{synopt:{cmd:r(ase_gam)}}伽马的 ASE{p_end}
{synopt:{cmd:r(ase_taub)}}tau_b 的 ASE{p_end}
{synopt:{cmd:r(taub)}}tau_b{p_end}

{pstd}
{cmd:r(p1_exact)} 仅在 2 x 2 表中定义。 此外，{cmd:matrow()}、{cmd:matcol()} 和 {cmd:matcell()} 选项允许您分别获取行值、列值和频数。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tabulate_twoway.sthlp>}