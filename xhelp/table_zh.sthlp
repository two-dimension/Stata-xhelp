{smcl}
{* *! version 1.2.14  19oct2017}{...}
{viewerdialog table "dialog table"}{...}
{vieweralsosee "[R] table" "mansection R table"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{vieweralsosee "[P] tabdisp" "help tabdisp_zh"}{...}
{vieweralsosee "[R] tabstat" "help tabstat_zh"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{viewerjumpto "Syntax" "table_zh##syntax"}{...}
{viewerjumpto "Menu" "table_zh##menu"}{...}
{viewerjumpto "Description" "table_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "table_zh##linkspdf"}{...}
{viewerjumpto "Options" "table_zh##options"}{...}
{viewerjumpto "Limits" "table_zh##limits"}{...}
{viewerjumpto "Examples" "table_zh##examples"}{...}
{viewerjumpto "Video example" "table_zh##video"}
{help table:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] table} {hline 2}}灵活的汇总统计表{p_end}
{p2col:}({mansection R table:View complete PDF manual entry}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:table}
{it:rowvar}
[{it:colvar}
[{it:supercolvar}]]
{ifin}
[{it:{help table##weight:weight}}]
[{cmd:,} {it:options}]


{synoptset 21 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要选项}
{synopt:{opth c:ontents(table##clist:clist)}}表格单元格的内容；最多选择五个统计量；默认是 {cmd:contents(freq)}{p_end}
{synopt:{opth "by(varlist:superrowvarlist)"}}超级行变量
{p_end}

{syntab:选项}
{synopt:{opt cell:width(#)}}单元格宽度{p_end}
{synopt:{opt csep:width(#)}}列间隔宽度{p_end}
{synopt:{opt stubw:idth(#)}}标签宽度{p_end}
{synopt:{opt scsep:width(#)}}超级列间隔宽度{p_end}
{synopt:{opt cen:ter}}居中对齐表格单元格；默认右对齐{p_end}
{synopt:{opt l:eft}}左对齐表格单元格；默认右对齐{p_end}
{synopt:{opt cw}}执行逐案例删除{p_end}
{synopt:{opt row}}添加行总计{p_end}
{synopt:{opt col:umn}}添加列总计{p_end}
{synopt:{opt sc:olumn}}添加超级列总计{p_end}
{synopt:{opt con:cise}}压缩所有缺失项的行{p_end}
{synopt:{opt m:issing}}以小数点显示缺失统计{p_end}
{synopt:{opt replace}}用表格统计替换当前数据{p_end}
{synopt:{opth n:ame(strings:string)}}用前缀 {it:string} 命名新变量{p_end}
{synopt:{cmdab:f:ormat(%}{it:{help fmt}}{cmd:)}}单元格中数字的显示格式；默认是 {cmd:format(%9.0g)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 是允许的；请参见 {manhelp by D}。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是允许的；请参见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt pweight}s 不能与 {opt sd}、{opt semean}、{opt sebinomial} 或 {opt sepoisson} 一起使用。 {opt iweight}s 不能与 {opt semean}、{opt sebinomial} 或 {opt sepoisson} 一起使用。

{synoptset 21 tabbed}{...}
{marker clist}{...}
{syntab:{it:clist} 中的元素可以是}

{synopt:{opt freq}}频数{p_end}
{synopt:{opt m:ean} {varname}}{it:varname} 的均值{p_end}
{synopt:{opt sd} {it:varname}}标准差{p_end}
{synopt:{opt sem:ean} {it:varname}}均值的标准误差 ({cmd:sd/sqrt(n)}){p_end}
{synopt:{opt seb:inomial} {it:varname}}二项分布的均值的标准误差 ({cmd:sqrt(p(1-p)/n)}){p_end}
{synopt:{opt sep:oisson} {it:varname}}泊松分布的均值的标准误差 ({cmd:sqrt(mean)}){p_end}
{synopt:{opt sum} {it:varname}}总和{p_end}
{synopt:{opt rawsum} {it:varname}}不考虑可选指定权重的求和{p_end}
{synopt:{opt count} {it:varname}}非缺失值观测的数量{p_end}
{synopt:{opt n} {it:varname}}同 {opt count} 相同{p_end}
{synopt:{opt max} {it:varname}}最大值{p_end}
{synopt:{opt min} {it:varname}}最小值{p_end}
{synopt:{opt med:ian} {it:varname}}中位数{p_end}
{synopt:{opt p1} {it:varname}}第1百分位数{p_end}
{synopt:{opt p2} {it:varname}}第2百分位数{p_end}
{synopt:{opt ...}}第3至49百分位数{p_end}
{synopt:{opt p50} {it:varname}}第50百分位数（{opt median}）{p_end}
{synopt:{opt ...}}第51至97百分位数{p_end}
{synopt:{opt p98} {it:varname}}第98百分位数{p_end}
{synopt:{opt p99} {it:varname}}第99百分位数{p_end}
{synopt:{opt iqr} {it:varname}}四分位距{p_end}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和测试 > 其他表格 >}
     {bf:灵活的汇总统计表}


{marker description}{...}
{title:描述}

{pstd}
{opt table} 计算并显示统计表格。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R tableQuickstart:快速入门}

        {mansection R tableRemarksandexamples:备注和示例}

        {mansection R tableMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要选项}

{phang}
{opth "contents(table##clist:clist)"} 指定表格单元格的内容；如果未指定，默认使用 {cmd:contents(freq)}。
{cmd:contents(freq)} 生成频数表。
{cmd:contents(mean mpg)} 生成变量 {opt mpg} 的均值表。 {cmd:contents(freq mean mpg sd mpg)} 同时生成变量 {opt mpg} 的频数、均值和标准差表。最多可以指定五个统计量。

{phang}
{opth "by(varlist:superrowvarlist)"} 指定数字或字符串变量作为超级行处理。最多可指定四个变量在 {it:superrowvarlist} 中。选项 {opt by()} 可以与前缀 {opt by} 一起指定。

{dlgtab:选项}

{phang}
{opt cellwidth(#)} 指定单元格的宽度，以数字宽度为单位；10 表示占用 10 个数字的空间，即 {cmd:0123456789}。默认的 {opt cellwidth()} 不是一个固定数字，而是 {opt table} 选择的一个数字，用于在展示合理数量的列时展开表格。

{phang}
{opt csepwidth(#)} 指定列间隔的宽度，以数字宽度为单位。默认不是一个固定数字，而是 {opt table} 根据认为效果最佳的选择的一个数字。

{phang}
{opt stubwidth(#)} 指定表格左侧标签的宽度，以数字宽度为单位。默认不是一个固定数字，而是 {opt table} 根据认为效果最佳的选择的一个数字。

{phang}
{opt scsepwidth(#)} 指定超级列间隔的宽度，以数字宽度为单位。默认不是一个固定数字，而是 {opt table} 选择的一个数字，以实现最佳结果的展示。

{phang}
{opt center} 指定结果在表格单元格中居中。默认是右对齐结果。为了使居中效果良好，通常需要同时指定显示格式。 {cmd:center format(%9.2f)} 是常用格式。

{phang}
{opt left} 指定列标签左对齐。默认是右对齐列标签，以将其与左对齐的超级列标签区分开。

{phang}
{opt cw} 指定逐案例删除。如果未指定 {opt cw}，则计算每个指定统计量时使用所有可能的观测值。{opt cw} 仅在请求包含多个变量统计的表时相关。例如，{cmd:contents(mean mpg mean weight)} 将生成变量 {opt mpg} 和 {opt weight} 的均值报告。如果某个观测的 {opt mpg} 值已知但 {opt weight} 值缺失，则默认情况下该观测将用于计算 {opt mpg} 的均值。如果指定了 {opt cw}，则该观测将排除在 {opt mpg} 和 {opt weight} 的均值计算之外。

{phang}
{opt row} 指定在表格中添加一行，反映各行的总计。

{phang}
{opt column} 指定在表格中添加一列，反映各列的总计。

{phang}
{opt scolumn} 指定在表格中添加一个超级列，反映各超级列的总计。

{phang}
{opt concise} 指定不显示所有缺失项的行。

{phang}
{opt missing} 指定缺失统计以小数点形式显示在表格中（Stata的缺失值指示符）。默认情况下，缺失项留空。

{phang}
{opt replace} 指定用每个单元（行、列、超级列和超级行）包含 1 个观测的数据替换内存中的数据，并用 {opt contents()} 中指定的统计量创建变量。

{pmore}
   此选项很少指定。如果不指定此选项，内存中的数据维持不变。

{pmore}
   如果指定此选项，第一个统计量将命名为 {opt table1}，第二个为 {opt table2}，依此类推。例如，如果指定了 {cmd:contents(mean mpg sd mpg)}，则 {cmd:mpg} 的均值将放在变量 {opt table1} 中，标准差放在 {opt table2} 中。

{phang}
{opth name:(strings:string)} 仅在指定 {opt replace} 时相关。如果指定了 {opt name()}，可以更改 {opt replace} 用于命名与统计量相关的新变量的默认标签。如果指定了 {cmd:name(stat)}，则第一个统计量放在变量 {opt stat1} 中，第二个放在 {opt stat2} 中，依此类推。

{phang}
{cmd:format(%}{it:{help fmt}}{cmd:)} 指定在表格单元格中显示数字的格式。默认是 {cmd:format(%9.0g)}；{cmd:format(%9.2f)} 和 {cmd:format(%9.2fc)} 是常用的替代项。您指定的格式宽度不重要，但 {cmd:%}{it:fmt} 必须有效。单元格的宽度由 {opt table} 选择，以最佳方式显示结果。 {opt cellwidth()} 选项允许您覆盖 {opt table} 的选择。


{marker limits}{...}
{title:限制}

{pstd}
在 {cmd:by()} 中最多可以指定四个变量，因此通过三个行、列和超级列变量，可以显示七维表。

{pstd}
每个单元格中最多可以显示五个统计量。

{pstd}
行、列、超级列和超级行的数量总和称为边际数量。一个表最多可以包含 3,000 个边际。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}单向表；默认显示频数{p_end}
{phang2}{cmd:. table rep78}{p_end}

{pstd}单向表；显示 {cmd:mpg} 的非缺失观测的数量{p_end}
{phang2}{cmd:. table rep78, contents(n mpg)}{p_end}

{pstd}单向表；请求关于 {cmd:mpg} 的多个统计量{p_end}
{phang2}{cmd:. table rep78, c(n mpg mean mpg sd mpg median mpg)}{p_end}

{pstd}添加格式{p_end}
{phang2}{cmd:. table rep78, c(n mpg  mean mpg  sd mpg  median mpg) format(%9.2f)}

{pstd}双向表；默认显示频数{p_end}
{phang2}{cmd:. table rep78 foreign}{p_end}

{pstd}双向表；显示每个单元格的 {cmd:mpg} 均值{p_end}
{phang2}{cmd:. table rep78 foreign, c(mean mpg)}{p_end}

{pstd}添加格式{p_end}
{phang2}{cmd:. table rep78 foreign, c(mean mpg) format(%9.2f) center}{p_end}
{phang2}{cmd:. table foreign rep78, c(mean mpg) format(%9.2f) center}

{pstd}添加行和列总计{p_end}
{phang2}{cmd:. table foreign rep78, c(mean mpg) format(%9.2f) center}
                {cmd:row col}

    {hline}
    设置
{phang2}{cmd:. webuse byssin}{p_end}

{pstd}三向表{p_end}
{phang2}{cmd:. table workplace smokes race [fw=pop], c(mean prob)}{p_end}

{pstd}添加格式{p_end}
{phang2}{cmd:. table workplace smokes race [fw=pop], c(mean prob) format(%9.3f)}
{p_end}

{pstd}请求超级列总计{p_end}
{phang2}{cmd:. table workplace smokes race [fw=pop], c(mean prob)}
               {cmd:format(%9.3f) sc} 

    {hline}
    设置
{phang2}{cmd:. webuse byssin1}{p_end}

{pstd}四向表{p_end}
{phang2}{cmd:. table workplace smokes race [fw=pop], by(sex) c(mean prob)}
                {cmd:format(%9.3f)}{p_end}

{pstd}四向表，包含超级列、行和列总计{p_end}
{phang2}{cmd:. table workplace smokes race [fw=pop], by(sex) c(mean prob)}
                {cmd:format(%9.3f) sc col row}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=Dzg6AMSt10w":在Stata中结合交叉制表和描述性统计}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <table.sthlp>}