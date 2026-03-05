{smcl}
{* *! version 1.1.6  16apr2019}{...}
{vieweralsosee "scheme entries" "help scheme entries"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] set scheme" "help set_scheme_zh"}{...}
{vieweralsosee "[G-3] scheme_option" "help scheme_option_zh"}
{help scheme_files:English Version}
{hline}{...}
{title:方案文件格式的描述}

{p 3 3 2}
一个 {help scheme} 指定图形的整体外观，并由一个方案文件定义。每个方案文件中的条目指定特定图形元素特定属性的外观，例如符号的颜色或文本的大小。

{p 3 3 2}
此信息主要提供给那些创建自己图形方案的人。我们描述方案文件的格式以及方案文件中的条目对图形的影响。有关图形方案的概述，请参见 {manhelp schemes G-4:Schemes intro}。

{title:备注}

{p 3 3 2}
备注分为以下几个标题：

	{help scheme_files##remarks1:创建自己的方案}
 	{help scheme_files##remarks2:方案文件条目是什么？}
	{help scheme_files##remarks3:绘图条目} 
	{help scheme_files##remarks4:复合条目} 
 	{help scheme_files##remarks5:示例方案文件}
 	{help scheme_files##remarks6:建议}

{p 3 3 2}
请参见 {help scheme entries} 获取完整的方案文件条目定义，但首先请阅读本帮助文件的其余部分。

{marker remarks1}{...}
{title:创建自己的方案}

{p 3 3 2}
方案 {it:schemename} 存储在文件 
{cmd:scheme-}{it:schemename}{cmd:.scheme} 中。
例如，方案 {bf:{help scheme_s2_zh:s2color}} 存储在文件
{cmd:scheme-s2color.scheme} 中。您可以通过输入以下命令找到方案文件的位置：

	{cmd:. which} {cmd:scheme-}{it:schemename}{cmd:.scheme}

{p 3 3 2}
要创建一个新的方案，例如 {cmd:mine}，您只需在个人目录中创建一个名为 {cmd:scheme-mine.scheme} 的文件（请参见 
{manhelp sysdir P}）。您应该始终基于 Stata 自带的方案或基于 Stata 自带的官方方案的其他方案进行您的方案创建。您可以在您的方案中添加一行：

{p 8 8 0}{cmd:#include {it:schemename}}

{p 3 3 2}
在任何方案文件条目之前。如果您希望基于 Stata 在出厂时使用的默认方案，则该行应为：

{p 8 8 0}{cmd:#include s2color}

{p 3 3 2}
使用您的方案绘制的图形将开始看起来就像使用 {cmd:s2color} 绘制的那些，您在方案文件中的条目将作为对 {cmd:s2color} 方案的编辑。

{p 3 3 2}
对于冒险者来说，这可能是足够的信息。查看包含 {cmd:s2color} 方案的文件 {c -} 输入 
{cmd:which scheme-s2color.scheme} 来找到该文件。您会发现文件中的行非常易读，通常可以猜测一行的作用。当您想更改某些内容时，只需在自己的文件中创建类似的行，并将 {it:style}（行中最后一个单词）更改为您喜欢的内容；例如，对于 {cmd:color} 条目将 {cmd:green} 更改为 {cmd:red}。对于不那么冒险的人，请继续阅读。

{marker remarks2}{...}
{title:方案文件条目是什么？} 

{p 3 3 2}
方案文件中的每个条目指定图形元素的特定属性的外观。例如，

	{cmd:symbolsize matrix medium}

{p 3 3 2}
指定散点矩阵中使用的符号大小为 {cmd:medium}。我们知道这一点，因为条目的第一个单词指定了样式类型或受影响的属性；第二个单词是图形元素或受影响的部分（在这里 {cmd:matrix} 是散点矩阵的缩写）；第三个单词是要应用于元素特定属性的样式。

{p 3 3 2}
我们可以将 {cmd:medium} 更改为 {cmd:small}、{cmd:large} 或者任何预定义的 {help markersizestyle_zh} 样式，或者我们可以指定一个数字作为大小。该数字是根据图形的整体高度进行缩放的（或宽度，如果宽度小于高度）；请参见 
{manhelpi size G-4}。每种样式的可用选项，即第三个单词，在 {help scheme entries} 的条目表中进行了文档说明。

{p 3 3 2}
作为第二个示例，我们可以通过将轴标题的文本颜色从 {cmd:black} 更改为 {cmd:red}，来更改线条：

	{cmd:color axis_title black}
{p 3 3 2}
更改为{p_end}
	{cmd:color axis_title red}

{p 3 3 2}
对于 {cmd:color} 条目，可用样式为 {it:colorstyles}，包括显式RGB值，而不仅仅是命名颜色；有关更多信息以及RGB值的讨论，请参见 {manhelpi colorstyle G-4}。这意味着我们可以将条目更改为：

	{cmd:color axis_title "255 0 0"}

{p 3 3 2}
亮红色。请注意，RGB值和任何使用多个标记或词的样式必须用引号括起来。

{marker remarks3}{...}
{title:绘图条目} 

{p 3 3 2}
除了标准条目外，方案文件还有许多针对绘图的条目。

{p 3 3 2}
什么是绘图？当您输入：

	{cmd:. scatter y1 y2 x}

{p 3 3 2}
y1 对 x 的绘制标记集是第一个绘图，y2 对 x 是第二个绘图。第一个绘图的标记看起来与第二个绘图不同 {c -} 可能颜色、大小或两者均不同。使用不同的图形命令，我们可能有两条不同的线，或两组条形，或两个饼图，但在所有情况下我们将其称为 plot1 和 plot2，其外观受 {it:pstyles}（绘图样式的缩写）控制；请参见 
{manhelpi pstyle G-4}。官方方案文件有15个绘图的条目。

{p 3 3 2}
设置第二个绘图的标记大小的条目可能是：

	{cmd:symbolsize p2 medium}
	
{p 3 3 2}
其中 {cmd:p2} 指定 plot2。

{p 3 3 2}
事实证明，Stata 的大多数官方方案对所有绘图使用相同大小的标记。我们只需省略绘图编号，使用以下适用于所有绘图的单一条目：

	{cmd:symbolsize p medium}

{p 3 3 2}
我们之前看到如何基于其他方案创建自己的方案，例如官方 {bf:{help scheme_s2_zh:s2color}} 方案，在这种情况下，我们使用单一的 {cmd:p} 时必须小心。因为 {cmd:s2color} 仅为所有绘图定义了一个符号大小，我们可以通过添加以下行来将所有符号的大小更改为 {cmd:large}：

	{cmd:symbolsize p large}

{p 3 3 2}
如果 {cmd:s2color} 更具体并包含单独定义 plot1 - plot15 的标记大小的条目，则那些更具体的条目将优先于我们未指定绘图编号的条目。我们需要为每个绘图制作 {cmd:p1}、{cmd:p2} 等的单独条目。

{p 3 3 2}
请注意，绘图元素有许多属性，因此有许多绘图条目。除了标记大小之外，还有标记颜色条目，

	{cmd:color p1 navy}

{p 3 3 2}
标记符号（形状），

	{cmd:symbol p circle}
 
{p 3 3 2}
以及针对线条、框和其他绘图元素的一组条目。

{p 3 3 2}
我们从 {cmd:s2color} 方案中提取了这两个示例，您可以看到每个绘图的标记颜色不同，而标记符号都是圆形的。

{p 3 3 2}
绘图条目可以比绘图编号更具体。一些条目可以针对特定类型的绘图。例如，条目：

	{cmd:color p3line yellow}

{p 3 3 2}
将使第三条线绘图变为黄色，但不会影响散点图、条形图或其他绘图类型的颜色。虽然 {cmd:s2color} 方案并没有利用这一点，您可以创建具有不同颜色和强度的方案，以适用于每种绘图类型——散点图、线图、条形图、饼图切片等等。

{marker remarks4}{...}
{title:复合条目} 

{p 3 3 2}
当我们说每个条目指定特定属性时，这是一种简化。一些条目指定如何为图形元素的一组属性分配具体属性。我们将这些集合的条目称为复合条目。

{p 3 3 2}
例如，文本框用于标题、标题和许多其他图形文本元素。文本框有11个属性，例如文本大小、文本颜色、背景颜色等；请参见 {manhelpi textboxstyle G-4} 获取完整列表。更改一个 {it:textboxstyle} 条目（这是一个复合条目）可能会改变这11个属性中的所有属性。

{p 3 3 2}
让我们看两个文本框样式的复合条目：

	{cmd:textboxstyle axis_title axis_title}
	{cmd:textboxstyle title      heading}

{p 3 3 2}
第一个条目指定轴标题的 {it:textboxstyle} 应为 {cmd:axis_title} 样式，这似乎是一个好的默认值。同样，第二行指定图形标题的 {it:textboxstyle} 应为 {cmd:heading} 样式。

{p 3 3 2}
我们可以通过将第一个条目中指定的 {it:textboxstyle} 从 {cmd:axis_title} 更改为 {cmd:heading}，使轴标题看起来与图形标题相同：

	{cmd:textboxstyle axis_title heading}

{p 3 3 2}
现在，所有轴标题将看起来像图形标题 {c -} 它们将具有相同的文本大小、相同的文本颜色等。

{p 3 3 2}
请注意，复合条目的更改可能与其他条目的效果相互作用。在第2节中，我们通过将 
{cmd:color axis_title black} 条目更改为 {cmd:color axis_title red}，更改了轴标题文本的颜色。现在，由于轴标题的复合 {it:textboxstyle} 条目不再指定 {cmd:axis_title} 样式，而是 {cmd:heading} 样式，我们的颜色更改将没有效果。我们需要将 {cmd:color heading black} 条目更改为 {cmd:color heading red} 才能更改轴标题的颜色。这也会更改图形标题的颜色，因为它们现在共享 {cmd:heading} {it:textboxstyle}。

{marker remarks5}{...}
{title:示例方案文件}

{p 3 3 2}
如第1节所述，您可以通过在个人目录中创建一个名为 {cmd:scheme-}{it:schemename}{cmd:.scheme} 的文件来创建您自己的方案。让我们来看一个非常简单的方案示例，并将其命名为 {cmd:simple}。

	{hline 3} 开始 scheme-simple.scheme {hline 24}
	{cmd:#include s2color}
	{cmd:color background  white}
	{hline 3} 结束 scheme-simple.scheme {hline 26}

{p 3 3 2}
该方案基于 {bf:{help scheme_s2_zh:s2color}} 方案；我们可以通过 {cmd:#include s2color} 行判断（参见第1节）。它仅更改一项内容——背景颜色设置为 {cmd:white}。  
如果我们通过在图形命令中包含 {cmd:scheme(simple)} 选项来使用 {cmd:simple}（有关设置方案的更多方法，请参见 {manhelp schemes G-4:Schemes intro}），那么图形区域将不再是蓝灰色，而是白色。所有引用背景颜色的其他图形元素也将变为白色。

{p 3 3 2}
现在，让我们看一个稍微复杂一些的示例，我们将其称为 {cmd:mine}。

	{hline 3} 开始 scheme-mine.scheme {hline 26}
	{cmd:* 这是我们更好的演示方案。}
	{cmd:* 我们可能应该在这里进一步描述它。}

	{cmd:*! version 1.0.0   12nov2004}

	{cmd:#include s2color}

	{cmd:color background  white}
	{cmd:color major_grid  "200 200 200"}

	{cmd:color p1          "  0 255   0"}
	{cmd:color p2          magenta}

	{cmd:anglestyle vertical_tick    horizontal}

	{cmd:clockdir   legend_position  4}
	{cmd:numstyle   legend_cols      1}
	{cmd:linestyle  legend           none}
	{cmd:margin     legend           "5 0 0 0"}
	{hline 3} 结束 scheme-mine.scheme {hline 28}

{p 3 3 2}
前两行只是注释，以帮助我们日后识别我们的方案。请注意，在方案文件中，注释只能作为整行输入，并且行必须以“*”开头。第三行只是一个 fancy 注释，标识我们方案的版本号和最后更新的日期。

{p 3 3 2}
行 {cmd:#include s2color} 包含官方 {cmd:s2color} 方案的全部内容。再次强调，这只是我们更改的起点。

{p 3 3 2}
与 {cmd:simple} 相同，行 {cmd:color background  white} 将背景颜色设置为白色。同样，行 
{bind:{cmd:color major_grid "200 200 200"}} 指定网格线以浅灰色绘制。在这里我们使用的是RGB值，而不是命名的 {help colorstyle_zh}；有关更多条目与网格线相关，请参见 {help scheme grids}。

{p 3 3 2}
接下来的两个条目，

	{cmd:color p1          "  0 255   0"}
	{cmd:color p2          magenta}

{p 3 3 2}
更改前两个绘图的外观。第一个条目将第一个绘图的颜色更改为使用RGB值 {cmd:"0 255 0"} 的亮绿色。请注意，在RGB值中多余的空格并不是必需的；它仅是为了使条目在文件中对齐。第二个条目将第二个绘图的颜色更改为使用命名的 {help colorstyle_zh} {cmd:magenta}。

{p 3 3 2}
{cmd:anglestyle vertical_tick horizontal} 条目将用于标记y轴刻度的文本的角度（由 {cmd:vertical_tick} 指定）更改为 {cmd:horizontal}，因此它们不会像在 {cmd:s2color} 方案中一样被“侧转”。有关更多与轴相关的条目，请参见 {help scheme axes}。

{p 3 3 2}
最后四个条目更改图例的显示位置和方式。 
{bind:{cmd:clockdir legend_position 4}} 条目将图例从其默认位置（图形底部）移动到4点钟位置 {c -} 右侧并与图形底部对齐。  
{bind:{cmd:numstyle legend_cols 1}} 将图例中的默认列数从2更改为1，而 {bind:{cmd:linestyle legend none}} 关闭图例的外框。最后， {bind:{cmd:margin legend "5 0 0 0"}} 为图例左侧设定一个小边距，即图形大小的 {cmd:5}%，而右侧、顶部或底部的边距为零（{cmd:0}）。有关这些条目和其他图例设置的详细信息，请参见 {help scheme legends}。

{p 3 3 2}
在10行中，我们改变了使用我们方案绘制的图形的外观。您可以点击 {stata scm_mine:这里} 来创建您当前工作目录中 {cmd:scheme-mine.scheme} 的副本，然后您可以使用新方案绘制一些图形。首先尝试：

{p 8 10 0}. {stata sysuse auto}{p_end}
{p 8 10 0}. {stata scatter trunk turn weight, scheme(s2color)}{p_end}
{p 8 10 0}. {stata scatter trunk turn weight, scheme(mine)}{p_end}

{p 3 3 2}
并比较差异。尝试绘制一些其他的条形图或其他图形，使用新方案。

{marker remarks6}{...}
{title:建议}

{p 3 3 2}
第一个也是最好的建议是尝试一下。图形的基础方案文件 {cmd:scheme-s2color.scheme} 有超过1700个条目。由于复合条目通常会改变其他条目的效果（见第4节），因此 {help scheme entries} 中的条目描述至多表明如果您基于 {cmd:s2color} 创建新方案，可能会发生什么；如果您基于其他方案，您可能需要进行实验以获得所需的效果。

{p 3 3 2}
在创建新方案时，采取小步骤并检查图形上的结果也是一个好主意。绘制一个具有您想要控制的所有元素的图形：可能是轴、图例，甚至是第三个散点图。然后创建您的方案文件，并放置一个 {cmd:#include} 语句，以基于现有方案构建您的方案。现在使用您的新方案（但为空）绘制图形，使用 {cmd:scheme({it:your_scheme})} 选项。然后向您的方案添加一个条目，发出 {cmd:discard} 命令，重新发出图形命令，然后观察结果。之后，如有需要，修改条目，或者继续下一个您想要更改的元素。这就是 {cmd:scheme-mine.scheme} 创建的方式。特别是，我们并不确切知道所有对图例的更改会有什么效果，我们在看到初始结果后修改了几个条目。

{p 3 3 2}
每次在重新发出图形命令之前发出 {cmd:discard} 命令至关重要。 {cmd:discard} 会重新初始化图形系统，这也包括清除图形方案。如果您不输入 {cmd:discard}，{cmd:graph} 会注意到您每次都在使用相同的方案，并会使用已加载的方案 {c -} 忽略您在方案文件中所做的更改。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_files.sthlp>}