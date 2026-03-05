{smcl}
{* *! version 1.1.28  15may2018}{...}
{viewerdialog tabulate "dialog tabulate1"}{...}
{viewerdialog "tabulate ..., generate()" "dialog tabulategen"}{...}
{viewerdialog tab1 "dialog tab1"}{...}
{vieweralsosee "[R] tabulate oneway" "mansection R tabulateoneway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{vieweralsosee "[SVY] svy: tabulate oneway" "help svy_tabulate_oneway_zh"}{...}
{vieweralsosee "[SVY] svy: tabulate twoway" "help svy_tabulate_twoway_zh"}{...}
{vieweralsosee "[R] table" "help table_zh"}{...}
{vieweralsosee "[R] tabstat" "help tabstat_zh"}{...}
{vieweralsosee "[R] tabulate, summarize()" "help tabulate_summarize_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{vieweralsosee "[XT] xttab" "help xttab_zh"}{...}
{viewerjumpto "Syntax" "tabulate_oneway_zh##syntax"}{...}
{viewerjumpto "Menu" "tabulate_oneway_zh##menu"}{...}
{viewerjumpto "Description" "tabulate_oneway_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tabulate_oneway_zh##linkspdf"}{...}
{viewerjumpto "Options" "tabulate_oneway_zh##options"}{...}
{viewerjumpto "Examples" "tabulate_oneway_zh##examples"}{...}
{viewerjumpto "Video example" "tabulate_oneway_zh##video"}{...}
{viewerjumpto "Stored results" "tabulate_oneway_zh##results"}
{help tabulate_oneway:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[R] tabulate oneway} {hline 2}}单向频数表{p_end}
{p2col:}({mansection R tabulateoneway:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
单向表

{p 8 17 2}
{cmdab:ta:bulate}
{varname}
{ifin}
[{it:{help tabulate oneway##weight:权重}}]
[{cmd:,} {it:{help tabulate_oneway##tabulate1_options:tabulate1_options}}]


{pstd}
每个变量的单向表 {c -} 方便工具

{p 8 17 2}
{cmd:tab1}
{varlist}
{ifin}
[{it:{help tabulate oneway##weight:权重}}]
[{cmd:,} {it:{help tabulate_oneway##tab1_options:tab1_options}}]


{marker tabulate1_options}{...}
{synoptset 21 tabbed}{...}
{synopthdr:tabulate1_options}
{synoptline}
{syntab:主选项}
{synopt:{opth subpop(varname)}}排除 {it:varname} = 0 的观察值{p_end}
{synopt:{opt m:issing}}将缺失值视为其他值{p_end}
{synopt:{opt nof:req}}不显示频数{p_end}
{synopt:{opt nol:abel}}显示数字代码而不是值标签{p_end}
{synopt:{opt p:lot}}生成相对频率的条形图{p_end}
{synopt:{opt sort}}按频数降序显示表格{p_end}

{syntab:高级选项}
{synopt:{opt g:enerate(stubname)}}为 {it:stubname} 创建指示变量{p_end}
{synopt:{opt matcell(matname)}}将频数保存到 {it:matname}；程序员选项{p_end}
{synopt:{opt matrow(matname)}}将 {varname} 的唯一值保存到 {it:matname}；程序员选项{p_end}
{synoptline}

{marker tab1_options}{...}
{synopthdr:tab1_options}
{synoptline}
{syntab:主选项}
{synopt:{opth subpop(varname)}}排除 {it:varname} = 0 的观察值{p_end}
{synopt:{opt m:issing}}将缺失值视为其他值{p_end}
{synopt:{opt nof:req}}不显示频数{p_end}
{synopt:{opt nol:abel}}显示数字代码而不是值标签{p_end}
{synopt:{opt p:lot}}生成相对频率的条形图{p_end}
{synopt:{opt sort}}按频数降序显示表格{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 可与 {opt tabulate} 和 {opt tab1} 一起使用；请参阅 {manhelp by D}。
	{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s、{opt aweight}s 和 {opt iweight}s 是被允许的；
见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

    {title:tabulate oneway}

{phang2}
{bf:统计 > 摘要、表格和检验 > 频数表 > 单向表}

    {title:tabulate ..., generate()}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
       {bf:创建指示变量}

    {title:tab1}

{phang2}
{bf:统计 > 摘要、表格和检验 > 频数表 > 多个单向表}


{marker description}{...}
{title:描述}

{pstd}
{opt tabulate} 生成一个频数计数的单向表。

{pstd}
有关双向频数表以及关联度量的信息，包括常见的 Pearson 卡方、似然比卡方、Cram{c e'}r 的 V、Fisher 精确检验、Goodman 和 Kruskal 的 gamma 以及 Kendall 的 tau-b，请参见
{manhelp tabulate_twoway R:tabulate twoway}。

{pstd}
{opt tab1} 为 {varlist} 中每个指定的变量生成单向表。

{pstd}
如果您想要频数的单向、双向或 n 向表以及各种各样的统计量，请参见 {manhelp table R} 和 {manhelp tabstat R}。有关带有 {opt summarize()} 选项的 {opt tabulate} 的描述，请参见 {manhelp tabulate_summarize R:tabulate, summarize()}；它生成均值和标准差的表格（分解）。 {opt table} 比 {cmd:tabulate, summarize()} 更好，但 {cmd:tabulate, summarize()} 更快。有关流行病学家感兴趣的 2 x 2 表格及其统计信息，请参见 {manhelp Epitab R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R tabulateonewayQuickstart:快速入门}

        {mansection R tabulateonewayRemarksandexamples:注释和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opth subpop(varname)} 在计算频数时排除 {it:varname} = 0 的观察值。 {cmd:tabulate ..., subpop(myvar)} 的数学结果与 {cmd:tabulate ... if myvar != 0} 相同，但表格的呈现可能不同。行和列的身份将根据所有数据确定，包括 {it:myvar} = 0 组，因此表格中可能会出现频数为 0 的条目。

{pmore}
考虑对 {opt answer} 进行制表，这个变量的取值为 1、2 和 3，但考虑仅对 {cmd:male==1} 的子群体进行制表。假设在该组中 {opt answer} 从不等于 2。 {cmd:tabulate answer if male==1} 会生成一个包含两行的表：一行为答案 1，另一行为答案 3。因为答案 2 从未观察到，所以没有答案 2 的行。 {cmd:tabulate answer, subpop(male)} 生成一个包含三行的表。答案 2 的行将显示为频数为 0。

{phang}
{opt missing} 请求在计算计数、百分比和其他统计量时将缺失值视为其他值。

{phang}
{opt nofreq} 抑制频数的打印。

{phang}
{opt nolabel} 导致显示数字代码而不是值标签。

{phang}
{opt plot} 生成单向表的相对频率的条形图。（另请参见 {manhelp histogram R}。）

{phang}
{opt sort} 将表按频数降序排列（并在频数相等的情况下按变量升序排列）。

{dlgtab:高级选项}

{phang}
{opt generate(stubname)} 创建一组指示变量
({it:stubname}{cmd:1}, {it:stubname}{cmd:2}, ...)
反映被制表变量的观察值。
{opt generate()} 选项不得与 {opt by} 前缀一起使用。

{phang}
{opt matcell(matname)} 将报告的频数保存到 {it:matname}。此选项供程序员使用。

{phang}
{opt matrow(matname)} 将 r x 1 行存根的数值保存到 {it:matname}。此选项供程序员使用。{opt matrow()} 如果行变量是字符串，则不能指定。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse census}{p_end}

{pstd}单向频数表{p_end}
{phang2}{cmd:. tabulate region}

{pstd}按频数降序显示表格{p_end}
{phang2}{cmd:. tabulate region, sort}

{pstd}为 {cmd:region} 创建指示变量，命名为 {cmd:reg1}、{cmd:reg2}、...{p_end}
{phang2}{cmd:. tabulate region, gen(reg)}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. tabulate rep78}{p_end}
{phang2}{cmd:. tabulate foreign}{p_end}

{pstd}上述两个命令的简写{p_end}
{phang2}{cmd:. tab1 rep78 foreign}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=3WpMRtTNZsw":Stata 中的表格和交叉表}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:tabulate} 和 {cmd:tab1} 将以下内容存储在 {cmd:r()}：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值的数量{p_end}
{synopt:{cmd:r(r)}}行数{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tabulate_oneway.sthlp>}