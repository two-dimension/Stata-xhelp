
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7axes}{right:(过时的命令)}
{hline}
{help gr7axes:English Version}
{hline}

{title:警告}

{pstd}
本帮助文件记录了 Stata 的 {hi:旧版} {cmd:graph} 命令。请参见 {help graph_zh} 以获取现代版本的信息。

{pstd}
当在版本控制下调用 {cmd:graph} 时，Stata 会运行旧版 {cmd:graph}（参见 {help version_zh}），或者当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时。

{title:{cmd:graph7} 命令常见选项 -- 标题和坐标轴选项}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}] [{cmd:,} {it:graph_type} {it:specific_options}
{it:common_options}]

{p 4 4 2}
标题和坐标轴的 {it:common_options} 包括

{p 8 8 2}
{cmdab:noax:is}
[{cmdab:no:}]{cmdab:bor:der}
{cmdab:g:ap:(}{it:#}{cmd:)}{break}
{cmdab:lo:g}
{cmdab:ylo:g}
{cmdab:xlo:g}
{cmdab:rlo:g}

{p 8 8 2}
{cmdab:ti:tle:("}{it:text}{cmd:")}
{cmdab:t1:title:("}{it:text}{cmd:")}
{cmdab:t2:title:("}{it:text}{cmd:")}
{cmdab:b1:title:("}{it:text}{cmd:")}
{cmdab:b2:title:("}{it:text}{cmd:")}
{cmdab:l1:title:("}{it:text}{cmd:")}
{cmdab:l2:title:("}{it:text}{cmd:")}
{cmdab:r1:title:("}{it:text}{cmd:")}
{cmdab:r2:title:("}{it:text}{cmd:")}

{p 8 8 2}
{cmd:key1(}[{it:symbol}] [{it:connect}] [{it:pen}] [{cmd:"}{it:text}{cmd:"}]{cmd:)}{break}
{cmd:key2(}[{it:symbol}] [{it:connect}] [{it:pen}] [{cmd:"}{it:text}{cmd:"}]{cmd:)}{break}
{cmd:key3(}[{it:symbol}] [{it:connect}] [{it:pen}] [{cmd:"}{it:text}{cmd:"}]{cmd:)}{break}
{cmd:key4(}[{it:symbol}] [{it:connect}] [{it:pen}] [{cmd:"}{it:text}{cmd:"}]{cmd:)}

{p 8 8 2}
{cmdab:xla:bel}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:yla:bel}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:rla:bel}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:tla:bel}[{cmd:(}{it:numlist}{cmd:)}]

{p 8 8 2}
{cmdab:xt:ick}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:yt:ick}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:rt:ick}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:tt:ick}[{cmd:(}{it:numlist}{cmd:)}]

{p 8 8 2}
{cmdab:xs:cale:(}{it:#}[{cmd:,}]{it:#}{cmd:)}
{cmdab:ys:cale:(}{it:#}[{cmd:,}]{it:#}{cmd:)}
{cmdab:rs:cale:(}{it:#}[{cmd:,}]{it:#}{cmd:)}

{p 4 4 2}
有关 {cmd:graph7} 命令和不同 {it:graph_types} 的信息请参见 {help graph7_zh}。此条目详细描述了标题和坐标轴的 {it:common_options}。其他 {it:common_options} 的帮助也可用。请参见 {help gr7sym_zh} 了解符号和线条； {help gr7color_zh} 了解颜色和阴影； {help gr7other_zh} 了解保存、打印和多张图片。

{title:选项}

{p 4 8 2}{cmd:noaxis} 请求不绘制轴。

{p 4 8 2}[{cmd:no}]{cmd:border} 请求或抑制边框样式的轴。{cmd:border} 请求边框样式。偶尔，{cmd:graph7} 会自行决定边框会更好。在这些情况下，{cmd:noborder} 请求只绘制轴。“{cmd:graph7 y x, border}” 表示以边框样式的轴绘制 y 对 x。

{p 8 8 2}{cmd:border} 也用于 {cmd:matrix}（见 {help gr7matrix_zh}），表示对角项应有边框。

{p 8 8 2}边框与坐标轴一样，总是使用笔 1 绘制。

{p 4 8 2}{cmd:gap(}{it:#}{cmd:)} 设置左侧标题与沿坐标轴值之间的间隔量，在任何包含轴的样式中。默认值为 8，尽管应该是 9。如果是 9，则值标签永远不可能与左侧标题重叠。然而，在大多数情况下，8 已经足够，9 会导致视觉上不美观的过多间隙。您可以缩小或扩大间距。

{p 4 8 2}{cmd:log}、{cmd:ylog}、{cmd:xlog} 和 {cmd:rlog} 指定对数刻度。{cmd:log} 用于 {cmd:histogram}（见 {help gr7hist_zh}），其余选项用于 {cmd:twoway}（见 {help gr7twoway_zh}）。{cmd:rlog} 指的是右侧刻度，仅在包含两个竖直刻度的 {cmd:twoway} 中允许。所有标签、刻度、线条等的值均以自然（未登记）单位指定。

	示例：
{p 16 20 2}{cmd:. graph7 y, log}{p_end}
{p 16 20 2}{cmd:. graph7 y x, ylog xlog}{p_end}
{p 16 20 2}{cmd:. graph7 y x, ylog}{p_end}
{p 16 20 2}{cmd:. graph7 y x, xlog}{p_end}
{p 16 20 2}{cmd:. graph7 y1 y2 x, rescale rlog}

{p 4 8 2}{cmd:title("}{it:text}{cmd:")} 在图表底部添加大字标题。通常，如果文本不包含特殊字符，则可以省略引号。如果文本本身包含引号，则必须使用复合双引号（{cmd:`"} 和 {cmd:"'}）。

	示例：
{p 16 20 2}{cmd:. graph7 y x, title(Figure 1.  Raw data)}{p_end}
{p 16 20 2}{cmd:. graph7 y x, title("Figure 1.  Raw data")}{p_end}
{p 16 20 2}{cmd:. graph7 y x, title(`"Figure 1.  "Raw" data"')}

{p 4 8 2}{cmd:t1title("}{it:text}{cmd:")}, {cmd:t2title("}{it:text}{cmd:")},
{cmd:b1title("}{it:text}{cmd:")}, {cmd:b2title("}{it:text}{cmd:")},
{cmd:l1title("}{it:text}{cmd:")}, {cmd:l2title("}{it:text}{cmd:")},
{cmd:r1title("}{it:text}{cmd:")}, 和 {cmd:r2title("}{it:text}{cmd:")} 是更多标题选项。每一侧均有两个标题。侧面分别称为 {cmdab:t:op}、{cmdab:b:ottom}、{cmdab:l:eft} 和 {cmdab:r:ight}。{cmd:b1title()} 也可以简单称为 {cmd:title()}。这些标题选项可通过前两个字符缩写。{cmd:b2()} 与 {cmd:b2title()} 相同。某一侧的第一个（#1）标题总是离图形更远。

{p 4 8 2}
{cmd:key1(}[{it:symbol}] [{it:connect}] [{it:pen}] [{cmd:"}{it:text}{cmd:"}]{cmd:)},
{cmd:key2(}[{it:symbol}] [{it:connect}] [{it:pen}] [{cmd:"}{it:text}{cmd:"}]{cmd:)},
{cmd:key3(}[{it:symbol}] [{it:connect}] [{it:pen}] [{cmd:"}{it:text}{cmd:"}]{cmd:)}, 和
{cmd:key4(}[{it:symbol}] [{it:connect}] [{it:pen}] [{cmd:"}{it:text}{cmd:"}]{cmd:)}
指定一个关键字出现在图表顶部的 {cmd:t1title()} 和 {cmd:t2title()} 区域。指定 {it:symbol} 为 {cmd:symbol(}{it:s}{cmd:)}，并将 {it:connect} 指定为 {cmd:connect(}{it:c}[{cmd:[}{it:p}{cmd:]}]{cmd:)}, 详见 {help gr7sym_zh}。将 {it:pen} 指定为 {cmd:p(}{it:#}{cmd:)}, 详见 {help gr7color_zh}。

{p 8 8 2}总共可以指定四个键。如果未指定标题，Stata 会生成默认的键定义。这些定义可以通过使用 {cmd:key1()}、{cmd:key2()}、{cmd:key3()} 和 {cmd:key4()} 由用户指定。如果您有多个键并指定其中一个，则必须指定所有键，才能显示所有键。一旦指定了 {cmd:key}{it:#}{cmd:()}，则不会生成默认键。

{p 4 8 2}{cmd:xlabel}[{cmd:(}{it:numlist}{cmd:)}]、
{cmd:ylabel}[{cmd:(}{it:numlist}{cmd:)}]、
{cmd:rlabel}[{cmd:(}{it:numlist}{cmd:)}]，以及
{cmd:tlabel}[{cmd:(}{it:numlist}{cmd:)}] 指定坐标轴标签。{cmd:graph7} 通常仅标记数据的最小值和最大值。在任何具有数值 {it:x} 轴的样式中，例如 {cmd:histogram}（见 {help gr7hist_zh}）或 {cmd:twoway}（见 {help gr7twoway_zh}），您都可以指定 {cmd:xlabel}。没有参数时，{cmd:graph7} 会为您选择“整”值；有参数时，您指定的值将被标记。{cmd:ylabel}、{cmd:rlabel} 和 {cmd:tlabel} 的工作原理类似。{cmd:ylabel} 指的是 {it:y} 轴；{cmd:rlabel} 指右轴（如果存在），{cmd:tlabel} 指上侧轴（如果存在）。

{p 8 8 2}"{cmd:graph7 y x, ylabel xlabel}" 以圆形标签绘制 y 对 x。

{p 8 8 2}"{cmd:graph7 y x, ylabel xlabel(0 10 to 40)}" 同样执行，但在 {it:x} 轴上标记值 0、10、...、40。

{p 8 8 2}这些选项在 {cmd:matrix} 中不允许使用（见 {help gr7matrix_zh}）。相反，{cmd:label} 选项，不带参数，提供整圆标签。

{p 4 8 2}{cmd:xtick}[{cmd:(}{it:numlist}{cmd:)}]、
{cmd:ytick}[{cmd:(}{it:numlist}{cmd:)}]、
{cmd:rtick}[{cmd:(}{it:numlist}{cmd:)}]，和
{cmd:ttick}[{cmd:(}{it:numlist}{cmd:)}] 在坐标轴上放置刻度标记。默认情况下，{cmd:graph7} 在任何标记轴的地方放置刻度标记，因此这些选项允许指定额外的刻度。{cmd:xtick}等选项的工作方式与上述 {cmd:xlabel} 等选项相同。

{p 4 8 2}{cmd:xscale(}{it:#}[{cmd:,}]{it:#}{cmd:)},
{cmd:yscale(}{it:#}[{cmd:,}]{it:#}{cmd:)}, 和
{cmd:rscale(}{it:#}[{cmd:,}]{it:#}{cmd:)} 可以扩展，但不能缩小，坐标轴的刻度。默认情况下，{cmd:graph7} 根据坐标轴上所有内容的最小值和最大值来决定对每个坐标轴的缩放。这包括数据以及您指定的任何标签或刻度。这些选项在此计算中添加了两个数字。任何一个都可以指定为 "{cmd:.}" 来表示其未从 {cmd:graph7} 所选择的内容更改。

{p 8 8 2}假设 x 的范围是 1 到 9。"{cmd:graph7 y x, xscale(.,5)}" 将对缩放没有影响：它不会单独绘制 x 在 1 到 5 之间的数据。"{cmd:graph7 y x if x<=5}" 将达到预期效果。

{p 8 8 2}"{cmd:graph7 y x, xscale(0,.)}" 将使 x 轴范围为 0 到 9。{p_end}
{p 8 8 2}"{cmd:graph7 y x, xscale(.,10)}" 将使 x 轴范围为 1 到 10。{p_end}
{p 8 8 2}"{cmd:graph7 y x, xscale(0,10)}" 将使 x 轴范围为 0 到 10。

{title:另见}

{psee}
{space 2}帮助:  {manhelp graph7 G-2}, {help gr7bar_zh}, {help gr7box_zh},
{help gr7color_zh}, {help gr7hist_zh}, {help gr7matrix_zh}, {help gr7oneway_zh},
{help gr7other_zh}, {help gr7pie_zh}, {help gr7star_zh}, {help gr7sym_zh},
{help gr7twoway_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7axes.sthlp>}