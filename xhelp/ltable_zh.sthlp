{smcl}
{* *! version 1.2.17  19oct2017}{...}
{viewerdialog ltable "dialog ltable"}{...}
{vieweralsosee "[ST] ltable" "mansection ST ltable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{viewerjumpto "语法" "ltable_zh##syntax"}{...}
{viewerjumpto "菜单" "ltable_zh##menu"}{...}
{viewerjumpto "描述" "ltable_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "ltable_zh##linkspdf"}{...}
{viewerjumpto "选项" "ltable_zh##options"}{...}
{viewerjumpto "示例" "ltable_zh##examples"}{...}
{viewerjumpto "视频示例" "ltable_zh##video"}
{help ltable:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[ST] ltable} {hline 2}}生存数据的生命表{p_end}
{p2col:}({mansection ST ltable:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:ltable} {it:timevar} [{it:deadvar}] {ifin}
[{it:{help ltable##weight:weight}}]
[{cmd:,} {it:options}]


{phang}
{it:timevar} 指定故障或截尾的时间。如果未指定 {it:deadvar}，则所有 {it:timevar} 的值将被解释为故障时间。
值为缺失的 {it:timevar} 的观察将被忽略。

{phang}
{it:deadvar} 指定如何解释 {it:timevar} 中记录的时间。 
值为 0 的 {it:deadvar} 被视为截尾，所有其他非缺失值表明 {it:timevar} 应被视为故障时间。
值为缺失的 {it:deadvar} 的观察将被忽略。

{pmore}
{it:deadvar} 不指定故障的数量。对于记录故障数量的聚合数据，需指定频率权重。

{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主}
{synopt :{opt nota:ble}}仅显示图形；抑制表格的显示{p_end}
{synopt :{opt g:raph}}以图形和表格形式呈现表格{p_end}
{synopt :{opth by:(varlist:groupvar)}}为每个 {it:groupvar} 的值生成单独的表格（或图形）{p_end}
{synopt :{opt t:est}}报告组间差异的卡方检验（2 个检验）{p_end}
{synopt :{opt overlay}}将图形叠加在同一图表上{p_end}
{synopt :{opt su:rvival}}显示生存表；默认{p_end}
{synopt :{opt f:ailure}}显示累积失败表{p_end}
{synopt :{opt h:azard}}显示风险表{p_end}
{synopt :{opt ci}}图形置信区间{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt noa:djust}}抑制对风险人数的精算调整{p_end}
{synopt :{opth tv:id(varname)}}与时间变化参数一起使用的主体 ID 变量{p_end}
{synopt :{cmdab:i:ntervals:(}{cmd:w}|{it:{help numlist_zh}}{cmd:)}}数据在表中聚合的时间间隔{p_end}
{synopt :{cmdab:sav:ing:(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)}}将生命表数据保存到 {it:filename}；使用 {opt replace} 重写现有的 {it:filename}{p_end}

{syntab:图表}
{synopt :{opth ploto:pts(ltable##plot_options:plot_options)}}影响绘制线条和绘制点的表现{p_end}
{synopt :{cmdab:plot:}{ul:{it:#}}{cmd:opts(}{it:{help ltable##plot_options:plot_options}}{cmd:)}}影响第 {it:#} 条绘制线和绘制点的表现；仅在指定 {opt overlay} 时可用{p_end}

{syntab:置信区间图}
{synopt :{opth ciop:ts(rspike_options)}}影响图形生存、失败或风险的置信区间的表现{p_end}
{synopt :{cmdab:ci:}{ul:{it:#}}{cmd:opts(}{it:{help rspike_options_zh}}{cmd:)}}影响第 {it:#} 条绘制的置信区间的表现；仅在指定 {opt overlay} 时可用{p_end}

{syntab:添加图表}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图中添加其他图表{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}文档中记录的任何选项
    {manhelpi twoway_options G-3}{p_end}
{synopt :{opth byop:ts(by_option:byopts)}}如何组合、标记等子图{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 29}{...}
{marker plot_options}{...}
{synopthdr:plot_options}
{synoptline}
{synopt:{it:connect_options}}改变线的外观或连接方式{p_end}
{synopt:{it:marker_options}}改变标记的外观（颜色、大小等）{p_end}
{synoptline}
{p2colreset}{...}

{marker weight}{...}
{pstd}{opt fweight}是允许的；请参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 汇总统计、检验和表格 >}
       {bf:生存数据的生命表}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ltable} 显示并绘制个体水平或聚合数据的生命表，并可以选择展示组的等价性似然比测试和 log-rank 测试。 {cmd:ltable} 还允许您通过聚合来检查经验风险函数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST ltableQuickstart:快速开始}

        {mansection ST ltableRemarksandexamples:备注和示例}

        {mansection ST ltableMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt notable} 抑制表格的显示。该选项通常与 {opt graph} 一起使用。

{phang}
{opt graph} 请求以图形和表格形式呈现表格；当同时指定 {opt notable} 时，仅呈现图形。当您指定 {opt graph} 时，一次只能计算和绘制一个表格；请参见下面的 {opt survival}、{opt failure} 和 {opt hazard}。

{pmore}
{opt graph} 不能与 {opt hazard} 一起指定。使用 {cmd:sts graph} 来绘制风险函数的估计值。

{phang}
{cmd:by(}{it:{help varlist_zh:groupvar}}{cmd:)} 为每个 {it:groupvar} 的值创建单独的表格（或在同一图像内的图形）。 {it:groupvar} 可以是字符串或数字。

{phang}
{opt test} 提供两个组间差异的卡方检验，分别为同质性的似然比检验和生存函数相等的 log-rank 检验。这两个组通过 {opt by()} 选项标识，因此 {opt by()} 也必须指定。

{phang}
{opt overlay} 导致在同一图表上叠加来自 {opt by()} 选项中识别的每个组的图表。默认情况下为每个组生成单独的图表（在同一图像内）。此选项需要 {opt by()} 选项。

{phang}
{opt survival}、{opt failure} 和 {opt hazard} 指定要显示的表格。如果未指定，则默认显示生存表。
指定 {opt failure} 则显示累积失败表。
指定 {opt survival failure} 会显示生存表和累积失败表。如果指定了 {opt graph}，则不能请求多个表格。

{phang}
{opt ci} 在 {opt survival}、{opt failure} 或 {opt hazard} 周围绘制置信区间。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{marker noadjust}{...}
{phang}
{opt noadjust} 抑制对风险人数的精算调整。 默认情况下，考虑每个区间的调整风险人数为起始总数减去（截尾人数/2）。如果指定了 {opt noadjust}，则风险人数仅是起始总数，对应于标准的 Kaplan-Meier 假设。使用 {cmd:ltable} 列出与 {helpb sts list} 生成的结果相对应的结果时，应该指定 {opt noadjust}。

{phang}
{opth tvid(varname)} 适用于具有时间变化参数的纵向数据。每个受试者在数据中出现多次，相同的 {it:varname} 值标识指向同一受试者的观察。当指定 {opt tvid()} 时，仅使用每个受试者的最后一个观察用于制作表格。数据的顺序无关紧要，这里的 {it:last} 是指时间上的最后一个观察。

{phang}
{cmd:intervals(}{cmd:w}|{it:{help numlist_zh}}{cmd:)} 指定要聚合数据以便进行表格展示的时间间隔。数值参数被解释为区间的宽度。例如，{cmd:interval(2)} 将数据聚合到区间 0<=t<2、2<=t<4 等。未指定 {opt interval()} 相当于指定 {cmd:interval(1)}。因为在大多数数据中，故障时间被记录为整数，所以这没有任何聚合，除了由时间变量的记录所隐含的内容，所以它生成 Kaplan-Meier 的产品极限生存曲线估计（带精算调整；请参见上述 {opt noadjust} 选项）。另见 {manhelp sts_list ST:sts list}。虽然可以在没有聚合的情况下检查生存和失败，但几乎总是需要某种形式的聚合来检查风险。

{pmore}
当指定多个参数时，按指定聚合区间。例如，{cmd:interval(0,2,8,16)} 将数据聚合到区间 [0,2)、[2,8)、[8,16) 和（如有必要）[16,无穷大)。

{pmore}
{cmd:interval(w)} 等价于
{cmd:interval(0,7,15,30,60,90,180,360,540,720)}，对应于 1 周、（大约）2 周、1 个月、2 个月、3 个月、6 个月、1 年、1.5 年和 2 年，当故障时间以天为单位记录时。 {opt w} 意味着扩展区间。

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)} 创建一个包含生命表的 Stata 数据文件（{opt .dta} 文件）。该选项不会将图形保存到磁盘；请参见 {manhelp graph_save G-2:graph save} 将生成的图形保存到磁盘。

{pmore}
{cmd:replace} 指定如果 {it:filename} 已存在，则覆盖该文件。此选项未在对话框中显示。

{dlgtab:图表}

{phang}
{opt plotopts(plot_options)} 影响绘制线条和绘制点的表现；见
{manhelpi connect_options G-3:connect_options} 和
{manhelpi marker_options G-3:marker_options}。

{phang}
{cmd:plot}{it:#}{cmd:opts(}{it:plot_options}{cmd:)} 影响第 {it:#} 条绘制线和绘制点的表现；见
{manhelpi connect_options G-3:connect_options} 和
{manhelpi marker_options G-3}。此选项仅在指定了 {opt overlay} 时有效。

{dlgtab:置信区间图}

{phang}
{opt ciopts(rspike_options)} 影响图形生存、失败或风险的置信区间的表现；见
{manhelpi rspike_options G-3}。

{phang}
{cmd:ci}{it:#}{cmd:opts(}{it:rspike_options}{cmd:)} 影响第 {it:#} 条绘制的置信区间的表现；见 {manhelpi rspike_options G-3}。此选项仅在指定了 {opt overlay} 时有效。

{dlgtab:添加图表}

{phang}
{opt addplot(plot)} 提供了一种将其他图表添加到生成的图中的方式；见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是文档中记录的任何选项
    {manhelpi twoway_options G-3}，不包括 {opt by()}。包括标题选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{phang}
{opt byopts(byopts)} 影响在指定 {cmd:by()} 时组合图的外观，包括整体图标题和子图的组织。见 {manhelpi by_option G-3}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse rat}

{pstd}列出一些数据{p_end}
{phang2}{cmd:. list in 1/5}{p_end}
{phang2}{cmd:. list if died == 0}

{pstd}显示组 1 的生命表{p_end}
{phang2}{cmd:. ltable t died if group == 1}

{pstd}显示组 1 聚合成 30 天区间的生命表{p_end}
{phang2}{cmd:. ltable t died if group == 1, interval(30)}

{pstd}显示组 1 使用指定区间的生命表{p_end}
{phang2}{cmd:. ltable t died if group == 1, interval(120,180,210,240,330)}

{pstd}为每个组显示单独的生命表并聚合成 30 天区间{p_end}
{phang2}{cmd:. ltable t died, by(group) interval(30)}

{pstd}显示组 1 聚合成 30 天区间的失败表{p_end}
{phang2}{cmd:. ltable t died if group == 1, interval(30) failure}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse selvin}

{pstd}列出一些数据{p_end}
{phang2}{cmd:. list in 1/5}

{pstd}获取生存率，并同时显示表格和图形{p_end}
{phang2}{cmd:. ltable t died [freq=pop], graph}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tumor}

{pstd}列出一些数据{p_end}
{phang2}{cmd:. list in 1/6, sep(0)}

{pstd}显示风险表{p_end}
{phang2}{cmd:. ltable t d [freq=pop], hazard interval(0(1)9)}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=f5cb-Us-GyI&list=UUVk4G4nEtBS4tLOyHqustDA":如何构建生命表}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ltable.sthlp>}