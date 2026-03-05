
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7other}{right:(过时命令)}
{hline}
{help gr7other:English Version}
{hline}

{title:警告}

{pstd}
本帮助文件文档记录了 Stata {cmd:graph} 命令的 {hi:旧} 版本。
请参见 {help graph_zh} 以获取现代版本。

{pstd}
当在版本控制下调用 {cmd:graph} 时，Stata 将运行旧版本的 {cmd:graph} 
（参见 {help version_zh}），或者当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时。

{title:{cmd:graph7} 命令 -- 保存、打印和多个图像选项}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}] [{cmd:,} {it:graph_type} {it:specific_options}
{it:common_options}]

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-} {cmd:using}
{it:filename} [{it:filename ...}] [{cmd:,} {it:graph_using_options}]

{p 4 4 2}
{cmd:by} 被允许使用；请参见 {help by_zh}。

{p 4 4 2}
{cmd:graph7} 的保存、打印和多个图像的 {it:common_options} 为

{p 8 8 2}
{cmdab:sa:ving:(}{it:filename}[{cmd:,replace}]{cmd:)}
{cmd:by(}{it:varname}{cmd:)}
{cmdab:to:tal}
{cmdab:bs:ize:(}{it:#}{cmd:)}
{cmdab:R:escale}
{cmdab:xsiz:e:(}{it:#}{cmd:)}
{cmdab:ysiz:e:(}{it:#}{cmd:)}

{p 4 4 2}
{cmd:graph7 using} 的 {it:graph_using_options} 为

{p 8 8 2}
{cmdab:sa:ving:(}{it:filename}[{cmd:,replace}]{cmd:)}
{cmd:margin(}{it:#}{cmd:)}
{cmdab:ti:tle:("}{it:text}{cmd:")}
{cmdab:t1:title:("}{it:text}{cmd:")}
{cmdab:t2:title:("}{it:text}{cmd:")}
{cmdab:b1:title:("}{it:text}{cmd:")}
{cmdab:b2:title:("}{it:text}{cmd:")}
{cmdab:l1:title:("}{it:text}{cmd:")}
{cmdab:l2:title:("}{it:text}{cmd:")}
{cmdab:r1:title:("}{it:text}{cmd:")}
{cmdab:r2:title:("}{it:text}{cmd:")}

{p 4 4 2}
关于 {cmd:graph7} 命令和不同 {it:graph_types} 的信息可以在 {help graph7_zh} 中找到。此条目详细说明了保存、打印和多个图像的 {it:common_options} 和 {it:graph_using_options} 。其他 {it:common_options} 的帮助也可以获得。请参见 {help gr7axes_zh} 以获取标题和坐标轴的信息；{help gr7sym_zh} 以获取符号和线条的信息； {help gr7color_zh} 以获取颜色和阴影的信息。

{title:选项}

{p 4 8 2}{cmd:saving(}{it:filename}[{cmd:,replace}]{cmd:)} 将图表保存到文件中，以便使用 {cmd:graph7 using} 进行查看（参见 {help graph7_zh}）并使用 {cmd:print} 打印。如果您不指定扩展名，默认将假定为 {cmd:.gph}。

{p 4 8 2}{cmd:by(}{it:varname}{cmd:)} 与除 {cmd:matrix} 和 {cmd:star} 之外的所有样式一起使用。它请求为 {it:varname} 定义的组单独绘制图表并合并为一个图像。
"{cmd:graph7 y x, by(region)}" 将为每个区域的值绘制一张图，并将其排列在屏幕上。

{p 8 8 2}对于 {cmd:bar}（参见 {help gr7bar_zh}）和 {cmd:box}（参见 {help gr7box_zh}），{cmd:by()} 绘制一个轴，然后根据 {it:varname} 对条形或盒子进行分组。"{cmd:graph7 y x, by(region) box}" 如果区域取四个不同的值，则将绘制 8 个盒子。

{p 4 8 2}{cmd:total} 仅在与 {cmd:by()} 一起指定时可以使用。它请求添加一个额外的组以反映所有数据。如果区域有四个值，"{cmd:graph7 y x, by(region) total}" 将在一个图像中绘制 5 张图，分别对应每个区域以及一个所有四个区域合计的图。

{p 4 8 2}{cmd:bsize(}{it:#}{cmd:)} 指定用于标记 by-group 的文本大小，默认值为 100（表示正常的 100%）。{cmd:bsize(150)} 会增加标签的大小，而 {cmd:bsize(75)} 会减少它们的大小。{cmd:bsize()} 也与 {cmd:star}（参见 {help gr7star_zh}）一起使用，以设置观察标题的文本大小。另请参见 {help graph7_zh} 中的 {cmd:set textsize} 命令。

{p 4 8 2}{cmd:Rescale} （注意大写）仅与 {cmd:by()} 一起使用。它请求每个 by-group 图表具有自己的刻度。默认情况下，所有图表使用相同的刻度。

{p 4 8 2}{cmd:xsize(}{it:#}{cmd:)} 指定打印图像的宽度，以英寸为单位。默认值为 6 英寸，范围为 1 到 20。

{p 4 8 2}{cmd:ysize(}{it:#}{cmd:)} 指定打印图像的高度，以英寸为单位。默认值为 4 英寸，范围为 1 到 20。

{p 4 8 2}{cmd:margin(}{it:#}{cmd:)} 是 {cmd:graph7 using} 特有的，并指定围绕每个图表放置的边距，作为图形区域的百分比。默认值为 0。{cmd:margin(15)} 通常是一个不错的选择。

{p 4 8 2}{cmd:title("}{it:text}{cmd:")}, {cmd:t1title("}{it:text}{cmd:")},
{cmd:t2title("}{it:text}{cmd:")}, {cmd:b1title("}{it:text}{cmd:")},
{cmd:b2title("}{it:text}{cmd:")}, {cmd:l1title("}{it:text}{cmd:")},
{cmd:l2title("}{it:text}{cmd:")}, {cmd:r1title("}{it:text}{cmd:")}, 和
{cmd:r2title("}{it:text}{cmd:")} 为图表添加标题，详细信息请参见 {help gr7axes_zh}。使用 {cmd:graph7 using} 时，这些选项可以在原始生成图表后为其添加标题。在组合多个图表时，它们还提供边际标题。

{title:另见}

{psee}
{space 2}帮助：{manhelp graph7 G-2}，{help gr7axes_zh}，{help gr7bar_zh}，
{help gr7box_zh}，{help gr7color_zh}，{help gr7hist_zh}，
{help gr7matrix_zh}，{help gr7oneway_zh}，
{help gr7pie_zh}，{help gr7star_zh}，{help gr7sym_zh}，{help gr7twoway_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7other.sthlp>}