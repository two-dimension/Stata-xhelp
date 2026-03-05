{smcl}
{* *! version 1.3.6  19oct2017}{...}
{viewerdialog collapse "dialog collapse"}{...}
{vieweralsosee "[D] collapse" "mansection D collapse"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] contract" "help contract_zh"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] statsby" "help statsby_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{viewerjumpto "Syntax" "collapse_zh##syntax"}{...}
{viewerjumpto "Menu" "collapse_zh##menu"}{...}
{viewerjumpto "Description" "collapse_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "collapse_zh##linkspdf"}{...}
{viewerjumpto "Options" "collapse_zh##options"}{...}
{viewerjumpto "Weights" "collapse_zh##weights"}{...}
{viewerjumpto "Examples" "collapse_zh##examples"}
{help collapse:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] collapse} {hline 2}}创建汇总统计数据集{p_end}
{p2col:}({mansection D collapse:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:collapse}
{it:clist}
{ifin}
[{it:{help collapse##weight:weight}}]
[{cmd:,} {it:{help collapse##table_options:options}}]

{pstd}其中 {it:clist} 必须仅引用数值变量。

{p 8 17 2}
[{opt (stat)}]
{varlist}
[ [{opt (stat)}] {it:...} ]{p_end}

{p 8 17 2}
[{opt (stat)}] {it:target_var}{cmd:=}{varname}
        [{it:target_var}{cmd:=}{varname} {it:...}]
        [ [{opt (stat)}] {it:...}]

{p 4 4 2}或上述 {it:varlist} 或 {it:target_var} 形式的任意组合，且 {it:stat} 是以下之一{p_end}

{p2colset 9 22 24 2}{...}
{p2col :{opt mean}}均值（默认值）{p_end}
{p2col :{opt median}}中位数{p_end}
{p2col :{opt p1}}第1百分位{p_end}
{p2col :{opt p2}}第2百分位{p_end}
{p2col :{it:...}}第3至第49百分位{p_end}
{p2col :{opt p50}}第50百分位（同 {cmd:median}）{p_end}
{p2col :{it:...}}第51至第97百分位{p_end}
{p2col :{opt p98}}第98百分位{p_end}
{p2col :{opt p99}}第99百分位{p_end}
{p2col :{opt sd}}标准差{p_end}
{p2col :{opt sem:ean}}均值的标准误差 ({cmd:sd/sqrt(n)}){p_end}
{p2col :{opt seb:inomial}}均值的标准误差，二项分布 ({cmd:sqrt(p(1-p)/n)}){p_end}
{p2col :{opt sep:oisson}}均值的标准误差，泊松分布 ({cmd:sqrt(mean)}){p_end}
{p2col :{opt sum}}总和{p_end}
{p2col :{opt rawsum}}总和，忽略可选指定的权重，且权重为零的观测值会被排除{p_end}
{p2col :{opt count}}非缺失观测的数量{p_end}
{p2col :{opt percent}}非缺失观测的百分比{p_end}
{p2col :{opt max}}最大值{p_end}
{p2col :{opt min}}最小值{p_end}
{p2col :{opt iqr}}四分位数范围{p_end}
{p2col :{opt first}}第一个值{p_end}
{p2col :{opt last}}最后一个值{p_end}
{p2col :{opt firstnm}}第一个非缺失值{p_end}
{p2col :{opt lastnm}}最后一个非缺失值{p_end}
{p2colreset}{...}

{pstd}
如果未指定 {it:stat}，则默认使用 {opt mean}。

{synoptset 15 tabbed}{...}
{marker table_options}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opth by(varlist)}}计算 {it:stat} 的分组{p_end}
{synopt :{opt cw}}逐案例删除而不是所有可能观测{p_end}

{synopt :{opt fast}}如果用户按下 {hi:Break}，则不恢复原始数据集；程序员命令{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:varlist} 和 {it:varname} 在 {it:clist} 中可以包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt aweight}s、{opt fweight}s、{opt iweight}s 和 {opt pweight}s；请参见 {help weight_zh}，以及以下 {help collapse##weights:权重} 的说明。
{opt pweight}s 不能与 {opt sd}、{opt semean}、{opt sebinomial} 或 {opt sepoisson} 一起使用。{opt iweight}s 不能与 {opt semean}、{opt sebinomial} 或 {opt sepoisson} 一起使用。{opt aweight}s 不能与 {opt sebinomial} 或 {opt sepoisson} 一起使用。{p_end}
{p 4 6 2}
{opt fast} 不会出现在对话框中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或修改数据 > 其他变量转换命令}
     {bf:> 创建均值、中位数等的数据集}


{marker description}{...}
{title:描述}

{pstd}
{opt collapse} 将内存中的数据集转换为均值、总和、中位数等的数据集。 {it:clist} 必须仅引用数值变量。

{pstd}
注意：如果您想将数据集缩减为频率的数据集，请参见 {manhelp contract D}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D collapseQuickstart:快速开始}

        {mansection D collapseRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opth by(varlist)} 指定计算均值等的分组。如果未指定此选项，结果数据集将只包含1个观测。如果指定了，将 {it:varlist} 可以引用字符串或数值变量。

{phang}
{opt cw} 指定逐案例删除。如果未指定 {opt cw}，则使用所有可能观测进行每个计算的统计量。

{pstd}以下选项可与 {opt collapse} 一起使用，但未在对话框中显示：

{phang}
{opt fast} 指定 {opt collapse} 在用户按下 {hi:Break} 时不恢复原始数据集。 {opt fast} 旨在供程序员使用。


{marker weights}{...}
{title:权重}

{pstd}
{opt collapse} 允许使用所有四种权重类型；默认值为 {opt aweight}s。
权重规范化仅影响 {opt sum}、{opt count}、{opt sd}、{opt semean} 和 {opt sebinomial} 统计量。

{pstd}
设 j 为观测索引，i 为分组索引。以下是带权重的 {opt count} 和 {opt sum} 的定义：

{p2colset 9 37 39 2}{...}
{p2col 6 37 39 2 :{opt count}:}{p_end}
{p2col :未加权:}N_i，组 i 中的观测数量{p_end}
{p2col :{opt aweight}:}N_i，组 i 中的观测数量{p_end}
{p2col :{opt fweight, iweight, pweight}:}在组 i 中观测值的权重总和 w_j{p_end}
{p2col 6 37 39 2 :{opt sum}:}{p_end}
{p2col :未加权:}sum(x_j)，在组 i 中观测值的 x_j 总和{p_end}
{p2col :{opt aweight}:}在组 i 中的观测值总和 sum(v_j*x_j)；v_j = 权重规范化到总和为 N_i{p_end}
{p2col :{opt fweight, iweight, pweight}:}在组 i 中观测值的总和 sum(w_j*x_j){p_end}

{pstd}
当未指定 {opt by()} 选项时，整个数据集视为一个组。

{pstd}
带权重的 {opt sd} 统计量返回偏差校正后的标准差，基于因子 sqrt(N_i/(N_i-1))，其中 N_i 是观测数量。统计量 {opt sd}、{opt semean}、{opt sebinomial} 和 {opt sepoisson} 不允许与 {opt pweight} 数据一起使用。否则，统计量通过加权计数进行计算，效果如上所述。

{pstd}
例如，考虑数据集中有25个观测的情况，以及一个权重变量总和为57。在未加权的情况下，未指定权重，计数为25。在加权的情况下，计数仍然为25；权重的规模无关紧要。然而，在频率加权的情况下，计数为57，即权重的总和。

{pstd}
带 {opt aweight}s 的 {opt rawsum} 统计量忽略权重，唯一例外是：权重为零的观测不会被包括在总和中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse college}{p_end}
{phang2}{cmd:. describe}{p_end}
{phang2}{cmd:. list}

{pstd}创建一个包含每个 {cmd:year} 的 {cmd:gpa} 第25百分位的数据集{p_end}
{phang2}{cmd:. collapse (p25) gpa [fw=number], by(year)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse college, clear}

{pstd}创建一个包含每个 {cmd:year} 的 {cmd:gpa} 和 {cmd:hour} 的均值和中位数的数据集，并分别将中位数存储在 {cmd:medgpa} 和 {cmd:medhour} 中{p_end}
{phang2}{cmd:. collapse (mean) gpa hour (median) medgpa=gpa medhour=hour}
     {cmd:[fw=number], by(year)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse college, clear}

{pstd}创建一个包含 {cmd:gpa} 和 {cmd:hour} 的计数及其最小值的数据集，并将最小值存储在 {cmd:mingpa} 和 {cmd:minhour} 中{p_end}
{phang2}{cmd:. collapse (count) gpa hour (min) mingpa=gpa minhour=hour}
     {cmd:[fw=number], by(year)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse college, clear}{p_end}
{phang2}{cmd:. replace gpa = . in 3}{p_end}

{pstd}创建一个包含每个 {cmd:year} 的非缺失 {cmd:gpa} 和 {cmd:hours} 加权计数百分比的数据集{p_end}
{phang2}{cmd:. collapse (percent) gpa hour [fw=number], by(year)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse college, clear}{p_end}
{phang2}{cmd:. replace gpa = . in 2/4}

{pstd}创建一个包含每个 {cmd:year} 的 {cmd:gpa} 和 {cmd:hour} 的均值的数据集，但在计算均值时忽略所有缺失值的观测{p_end}
{phang2}{cmd:. collapse (mean) gpa hour [fw=number], by(year) cw}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <collapse.sthlp>}