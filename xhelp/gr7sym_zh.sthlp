
{smcl}
{* *! version 1.0.5  13apr2010}{...}
{cmd:help gr7sym}{right:(过时的命令)}
{hline}
{help gr7sym:English Version}
{hline}

{title:警告}

{pstd}
本帮助文件记录了 Stata 的 {hi:旧} 版本 {cmd:graph} 命令。
有关现代版本，请参见 {help graph_zh}。

{pstd}
当 {cmd:graph} 在版本控制下调用时（参见 {help version_zh}），或当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时，Stata 将运行 {cmd:graph} 的旧版本。

{title:{cmd:graph7} 命令的常用选项 -- 符号和线条选项}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}] [{cmd:,} {it:graph_type}
{it:specific_options} {it:common_options}]

{p 4 4 2}线条和符号 {it:common_options} 包括

{p 8 8 2}
{cmdab:xli:ne}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:yli:ne}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:rli:ne}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:tli:ne}[{cmd:(}{it:numlist}{cmd:)}]
{cmdab:c:onnect:(}{it:c}[{cmd:[}{it:p}{cmd:]}] {it:...} {it:c}[{cmd:[}{it:p}{cmd:]}]{cmd:)}
{cmdab:ba:nds:(}{it:#}{cmd:)}
{cmdab:d:ensity:(}{it:#}{cmd:)}
{cmdab:s:ymbol:(}{it:s...s}{cmd:)}
{cmdab:tr:im:(}{it:#}{cmd:)}
{cmdab:ps:ize:(}{it:#}{cmd:)}

{p 8 8 2}可用的 {it:c} ({cmd:connect()} 符号) 有{p_end}
{p 16 21 2}{cmd:.}{space 4}不连接（默认）{p_end}
{p 16 21 2}{cmd:l}{space 4}在点之间绘制直线{p_end}
{p 16 21 2}{cmd:L}{space 4}在升序的 x 点之间绘制直线{p_end}
{p 16 21 2}{cmd:m}{space 4}使用直线连接中位数带{p_end}
{p 16 21 2}{cmd:s}{space 4}使用三次样条连接中位数带{p_end}
{p 16 21 2}{cmd:J}{space 4}以直角连接，形成阶梯形{p_end}
{p 16 21 2}{cmd:||}{space 3}垂直连接两个变量{p_end}
{p 16 21 2}{cmd:II}{space 3}与 {cmd:||} 相同，但封顶和底部加粗

{p 8 8 2}可用的 {it:p} ({cmd:connect()} 线条模式) 是任意组合的{p_end}
{p 16 21 2}{cmd:l}{space 4}实线（默认）{p_end}
{p 16 21 2}{cmd:_}{space 4}（下划线）长虚线{p_end}
{p 16 21 2}{cmd:-}{space 4}（短横线）中等虚线{p_end}
{p 16 21 2}{cmd:.}{space 4}短虚线（几乎是点）{p_end}
{p 16 21 2}{cmd:#}{space 4}空格

{p 8 8 2}可用的 {it:s} ({cmd:symbol()} 标识符) 是{p_end}
{p 16 26 2}{cmd:O} {space 7} 大圆{p_end}
{p 16 26 2}{cmd:S} {space 7} 大方块{p_end}
{p 16 26 2}{cmd:T} {space 7} 大三角形{p_end}
{p 16 26 2}{cmd:o} {space 7} 小圆{p_end}
{p 16 26 2}{cmd:d} {space 7} 小菱形{p_end}
{p 16 26 2}{cmd:p} {space 7} 小加号{p_end}
{p 16 26 2}{cmd:x} {space 7} x{p_end}
{p 16 26 2}{cmd:.} {space 7} 点{p_end}
{p 16 26 2}{cmd:i} {space 7} 隐形{p_end}
{p 16 26 2}{cmd:[}{it:varname}{cmd:]} 变量内容用于文本符号{p_end}
{p 16 26 2}{cmd:[_n]} {space 4} 使用观测数作为符号

{p 4 4 2}
关于 {cmd:graph7} 命令和不同 {it:graph_types} 的信息可在 {help graph7_zh} 中找到。此条目详细说明了符号和线条的 {it:common_options}。其他 {it:common_options} 的帮助也可用。请参阅 {help gr7axes_zh} 了解标题和坐标轴；{help gr7color_zh} 了解颜色和阴影；{help gr7other_zh} 了解保存、打印和多图像。

{title:选项}

{p 4 8 2}{cmd:xline}[{cmd:(}{it:numlist}{cmd:)}],
{cmd:yline}[{cmd:(}{it:numlist}{cmd:)}],
{cmd:rline}[{cmd:(}{it:numlist}{cmd:)}] 和
{cmd:tline}[{cmd:(}{it:numlist}{cmd:)}] 在图形上绘制线条（使用笔 1）。{cmd:yline} 和 {cmd:rline} 绘制水平线，{cmd:xline} 和 {cmd:tline} 绘制垂直线。如果未指定绘制线条的值，将为您选择“圆整”值。

{p 4 8 2}{cmd:connect(}{it:c...c}{cmd:)} 指定是否在 {cmd:twoway}（参见 {help gr7twoway_zh}）和 {cmd:matrix}（参见 {help gr7matrix_zh}）图中连接点。 {cmd:connect()} 可以缩写为 {cmd:c()}。指定连接符号 c 如下：

{p 12 17 2}{cmd:.} {space 2} 不连接（默认）{p_end}
{p 12 17 2}{cmd:l} {space 2} 在点之间绘制直线{p_end}
{p 12 17 2}{cmd:L} {space 2} 在升序的 x 点之间绘制直线{p_end}
{p 12 17 2}{cmd:m} {space 2} 使用直线连接中位数带{p_end}
{p 12 17 2}{cmd:s} {space 2} 使用三次样条连接中位数带{p_end}
{p 12 17 2}{cmd:J} {space 2} 以直角连接，形成阶梯形{p_end}
{p 12 17 2}{cmd:||} {space 1} 垂直连接两个变量{p_end}
{p 12 17 2}{cmd:II} {space 1} 与 {cmd:||} 相同，但封顶和底部加粗

{p 8 8 2}{cmd:l}, {cmd:L}, 和 {cmd:J} 按数据顺序连接点。要按 {it:x} 轴的顺序连接，另需指定 {cmd:sort} 选项。"{cmd:graph7 a b c , c(.l) sort}" 绘制 a 对 c, 不连接点，和 b 对 c, 连接点形成直线。

{p 8 8 2}在每种类型的线中，您都可以指定线条的模式。可以通过在线条类型后添加 {cmd:[}{it:pattern}{cmd:]} 来实现，其中 {it:pattern} 是以下任意组合的：

{p 12 17 2}{cmd:l}{space 4}实线（默认）{p_end}
{p 12 17 2}{cmd:_}{space 4}（下划线）长虚线{p_end}
{p 12 17 2}{cmd:-}{space 4}（短横线）中等虚线{p_end}
{p 12 17 2}{cmd:.}{space 4}短虚线（几乎是点）{p_end}
{p 12 17 2}{cmd:#}{space 4}空格

{p 8 8 2}键入 "{cmd:graph7 a b c, c(.l[_.]) sort}" 绘制 a 对 c 不连接点，和 b 对 c 连接点形成长短长短的虚线。

{p 8 8 2}请注意，{cmd:symbol(i)}（见下文）和 {cmd:connect()} 可以有效结合:{p_end}
{p 12 16 2}{cmd:. regress y x}{p_end}
{p 12 16 2}{cmd:. predict hat}{p_end}
{p 12 16 2}{cmd:. graph7 y hat x, c(.l) s(Oi) sort}

{p 8 8 2}要绘制高低图：
"{cmd:graph7 close high low time, s(oii) c(.||)}"

{p 4 8 2}{cmd:bands(}{it:#}{cmd:)} 与 {cmd:connect(m)} 和 {cmd:connect(s)} 一起使用；它指定了在 {it:x} 轴上数据分组的带数，以计算 x 和 y 的中位数。默认值为 {cmd:bands(200)}。减少数量会导致显著平滑：
"{cmd:graph7 y x, s(o) c(s) bands(12)}"。

{p 4 8 2}{cmd:density(}{it:#}{cmd:)} 仅与 {cmd:connect(s)} 一起使用；它指定了在线性样条上计算的点数。默认值为 {cmd:density(5)}。增加密度会导致图像看起来更平滑：" {cmd:graph7 y x, s(o) c(s) bands(12) density(100)}"。

{p 4 8 2}{cmd:symbol(}{it:s...s}{cmd:)} 指定在 {cmd:twoway}（参见 {help gr7twoway_zh}）和 {cmd:matrix}（参见 {help gr7matrix_zh}）图7样式中绘制点的符号。 {cmd:symbol()} 可以缩写为 {cmd:s()}。指定符号标识符 s 如下：

{p 12 21 2}{cmd:O} {space 7} 大圆（{cmd:twoway} 的默认值）{p_end}
{p 12 21 2}{cmd:S} {space 7} 大方块{p_end}
{p 12 21 2}{cmd:T} {space 7} 大三角形{p_end}
{p 12 21 2}{cmd:o} {space 7} 小圆（{cmd:twoway} 的默认值，带有 {cmd:by}，或 {cmd:matrix}）{p_end}
{p 12 21 2}{cmd:d} {space 7} 小菱形{p_end}
{p 12 21 2}{cmd:p} {space 7} 小加号{p_end}
{p 12 21 2}{cmd:x} {space 7} x{p_end}
{p 12 21 2}{cmd:.} {space 7} 点{p_end}
{p 12 21 2}{cmd:i} {space 7} 隐形{p_end}
{p 12 21 2}{cmd:[}{it:varname}{cmd:]} 变量内容用于文本符号{p_end}
{p 12 21 2}{cmd:[_n]} {space 4} 使用观测数作为符号

{p 8 8 2}在 {cmd:[}{it:varname}{cmd:]} 的情况下，{it:varname} 可以是字符串或数值变量。例如，{it:varname} 可以是一个包含 "Ca"、"Wa" 和 "Or" 的字符串变量，作为其前 3 个观测值。然后文本 {hi:Ca} 将被用于标记第一个观测值的位置，{hi:Wa} 用于第二个，而 {hi:Or} 用于第三个。

示例：
{p 16 20 2}{cmd:. graph7 y x, symbol(o)}{p_end}
{p 16 20 2}{cmd:. graph7 y x, s(.)}{p_end}
{p 16 20 2}{cmd:. graph7 y1 y2 x, s(OS)}{p_end}
{p 16 20 2}{cmd:. graph7 y1 y2 x, s(oo)}{p_end}
{p 16 20 2}{cmd:. graph7 y x, s([state])}{p_end}
{p 16 20 2}{cmd:. graph7 y x, s([_n])}{p_end}
{p 16 20 2}{cmd:. graph7 y1 y2 x, s([state]o)}{p_end}
{p 16 20 2}{cmd:. graph7 y1 y2 x, s([state][_n])}{p_end}
{p 16 20 2}{cmd:. graph7 y1 y2 x, s([state]o)}{p_end}
{p 16 20 2}{cmd:. graph7 a b c d, matrix s(.)}

{p 4 8 2}{cmd:trim(}{it:#}{cmd:)} 仅在一个或多个绘图符号为 {cmd:[}{it:varname}{cmd:]} 时使用。 {it:#} 指定用于生成每个坐标的 {it:varname} 中的最大字符数，默认为 8。可以设置为小于或大于 8。例如，如果 state 是一个字符串变量，在其前 3 个观测值中包含 "California"、"Washington" 和 "Oregon"，"{cmd:graph7 y x, s([state]) trim(2)}" 将使用 {hi:Ca} 作为第一个观测值的绘图符号，{hi:Wa} 作为第二个，而 {hi:Or} 作为第三个。

{p 4 8 2}{cmd:psize(}{it:#}{cmd:)} 指定 {cmd:[}{it:varname}{cmd:]} 和 {cmd:[_n]} 绘图符号的大小。默认值为 100，表示正常尺寸的 100%。 {cmd:psize(150)} 使用更大的符号，而 {cmd:psize(75)} 使用更小的符号。

{title:另请参见}

{psee}
{space 2}帮助： {manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7bar_zh},
{help gr7box_zh}, {help gr7color_zh}, {help gr7hist_zh},
{help gr7matrix_zh}, {help gr7oneway_zh},
{help gr7other_zh}, {help gr7pie_zh}, {help gr7star_zh}, {help gr7twoway_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7sym.sthlp>}