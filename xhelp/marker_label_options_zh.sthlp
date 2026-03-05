{smcl}
{* *! version 1.1.11  16apr2019}{...}
{vieweralsosee "[G-3] marker_label_options" "mansection G-3 marker_label_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] anglestyle" "help anglestyle_zh"}{...}
{vieweralsosee "[G-4] clockposstyle" "help clockposstyle_zh"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] markerlabelstyle" "help markerlabelstyle_zh"}{...}
{vieweralsosee "[G-4] size" "help size_zh"}{...}
{vieweralsosee "[G-4] textsizestyle" "help textsizestyle_zh"}{...}
{vieweralsosee "[G-4] textstyle" "help textstyle_zh"}{...}
{viewerjumpto "Syntax" "marker_label_options_zh##syntax"}{...}
{viewerjumpto "Description" "marker_label_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "marker_label_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "marker_label_options_zh##options"}{...}
{viewerjumpto "Remarks" "marker_label_options_zh##remarks"}
{help marker_label_options:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[G-3]} {it:marker_label_options} {hline 2}}指定标记标签的选项{p_end}
{p2col:}({mansection G-3 marker_label_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:marker_label_options}}描述{p_end}
{p2line}
{p2col:{cmdab:ml:abel(}{varname}{cmd:)}}指定标记变量{p_end}

{p2col:{cmdab:mlabsty:le:(}{it:{help markerlabelstyle_zh}}{cmd:)}}标签的整体样式{p_end}
{p2col:{cmdab:mlabp:osition:(}{it:{help clockposstyle_zh}}{cmd:)}}标签的位置{p_end}
{p2col:{cmdab:mlabv:position:(}{varname}{cmd:)}}标签的位置2{p_end}
{p2col:{cmdab:mlabg:ap:(}{it:{help size_zh}}{cmd:)}}标记与标签之间的间距{p_end}
{p2col:{cmdab:mlabang:le:(}{it:{help anglestyle_zh}}{cmd:)}}标签的角度{p_end}
{p2col:{cmdab:mlabt:extstyle:(}{it:{help textstyle_zh}}{cmd:)}}文本的整体样式{p_end}
{p2col:{cmdab:mlabs:ize:(}{it:{help textsizestyle_zh}}{cmd:)}}标签的大小{p_end}
{p2col:{cmdab:mlabc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}标签的颜色和不透明度{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是{it:最右边的}; 请参见 {help repeated options}。

{p 4 6 2}
有时——例如与 {cmd:scatter} 一起使用时——允许在参数内部使用列表。列表是用空格分隔的多个元素的序列。允许使用简写以方便指定列表; 请参见 {manhelpi stylelists G-4}。当允许使用列表时，选项 {cmd:mlabel()} 允许在 {varname} 的位置使用 {varlist}。

{marker description}{...}
{title:描述}

{pstd}
标记标签是出现在标记旁边（或替代标记）的标签。标记是用于标记图中点的位置的墨水。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 marker_label_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{marker options}{...}
{title:选项}

{phang}
{cmd:mlabel(}{varname}{cmd:)}
    指定（通常是字符串）变量，用于逐个观测提供标记 "文本"。
    例如，你可能有

	    {cmd:. sysuse auto}

	    {cmd}. list mpg weight make in 1/4
	    {txt}
		 {c TLC}{hline 30}{c TRC}
		 {c |} {res}mpg   weight   make          {txt}{c |}
		 {c LT}{hline 30}{c RT}
	      1. {c |} {res} 22    2,930   AMC Concord   {txt}{c |}
	      2. {c |} {res} 17    3,350   AMC Pacer     {txt}{c |}
	      3. {c |} {res} 22    2,640   AMC Spirit    {txt}{c |}
	      4. {c |} {res} 20    3,250   Buick Century {txt}{c |}
		 {c BLC}{hline 30}{c BRC}{txt}

{pmore}
    输入

	    {cmd:. scatter mpg weight, mlabel(make)}

{pmore}
    将绘制 {cmd:mpg} 对 {cmd:weight} 的散点图，并根据其 {cmd:make} 标记每个点。(我们建议在上述命令中包含 "{cmd:in 1/10}"。标记标签仅在数据量较少时效果良好。)

{phang}
{cmd:mlabstyle(}{it:markerlabelstyle}{cmd:)}
    指定标记标签的整体外观，包括它们的位置、大小、文本样式等。下面记录的其他选项允许你改变标记标签的每个属性，但 {cmd:mlabstyle()} 是起点。请参见 {manhelpi markerlabelstyle G-3}。

{pmore}
    你不必指定 {cmd:mlabstyle()} 只是因为你想要改变标记的外观，事实上，大多数人很少指定 {cmd:mlabstyle()} 选项。你在另一个样式为你所期望的样式且有助于减少修改时，才指定 {cmd:mlabstyle()}。

{phang}
{cmd:mlabposition(}{it:clockposstyle}{cmd:)}
和
{cmd:mlabvposition(}{varname}{cmd:)}
    指定标签相对于点的位置。 {cmd:mlabposition()} 和 {cmd:mlabvposition()} 是替代选项；第一个为所有点指定一个常量位置，第二个指定一个包含 {it:clockposstyle}（编号 0--12）的变量。如果同时指定这两个选项，则 {cmd:mlabvposition()} 优先。

{pmore}
    如果未指定任何选项，则默认是 {cmd:mlabposition(3)}（3 点钟）——意为位于点的右侧。

{pmore}
    {cmd:mlabposition(12)} 意味着位于点的上方，{cmd:mlabposition(1)} 意味着位于点的上方和右侧，依此类推。{cmd:mlabposition(0)} 意味着标签应直接放在点上方（在这种情况下，请记得还要指定 {cmd:msymbol(i)} 选项，以便标记不会显示；见 {manhelpi marker_options G-3}）。

{pmore}
    {cmd:mlabvposition(}{it:varname}{cmd:)} 指定一个包含值 0--12 的数值变量，这些值用于逐观测地定位标签相对于点的位置。

{pmore}
    有关指定 {it:clockposstyle} 的更多信息，请参见 {manhelpi clockposstyle G-4}。

{phang}
{cmd:mlabgap(}{it:size}{cmd:)}
    指定标记与标签之间的间距。请参见 {manhelpi size G-4}。

{phang}
{cmd:mlabangle(}{it:anglestyle}{cmd:)}
    指定文本的角度。
    默认通常为 {cmd:mlabangle(horizontal)}。
    请参见 {manhelpi anglestyle G-4}。

{phang}
{cmd:mlabtextstyle(}{it:textstyle}{cmd:)}
    指定标记标签文本的整体样式，这里指的是其大小和颜色。当你查看 {manhelpi textstyle G-4} 时，你会发现 {it:textstyle} 定义了更多内容，但所有其他东西对于标记标签而言都是被忽略的。无论如何，下面记录的 {cmd:mlabsize()} 和 {cmd:mlabcolor()} 选项允许你改变大小和颜色，但 {cmd:mlabtextstyle()} 是起点。

{pmore}
    和 {cmd:mlabstyle()} 一样，你不必仅因想要改变标记样式就指定 {cmd:mlabtextstyle()}。当另一个样式存在并完全符合你的期望，或者另一个样式允许你进行更少更改以获得所想效果时，你指定 {cmd:mlabtextstyle()}。

{phang}
{cmd:mlabsize(}{it:textsizestyle}{cmd:)}
    指定文本的大小。 
    请参见 {manhelpi textsizestyle G-4}。

{phang}
{cmd:mlabcolor(}{it:colorstyle}{cmd:)}
    指定文本的颜色和不透明度。
    请参见 {manhelpi colorstyle G-4}。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

	{help marker_label_options##remarks1:典型用法}
	{help marker_label_options##remarks2:消除重叠和溢出}
	{help marker_label_options##remarks3:高级用法}
	{help marker_label_options##remarks4:使用标记标签替代标记}


{marker remarks1}{...}
{title:典型用法}

{pstd}
标记是用于标记图中点的位置的墨水，标记标签可选地在标记旁边出现以标识这些点。例如，如果你绘制国家数据，标记标签将允许你在每个点旁边显示 "阿根廷"、"玻利维亚" 等等。当数据量较少时，标记标签在视觉上效果较好。

{pstd}
要获得标记标签，你需要指定 {cmd:mlabel(}{it:varname}{cmd:)} 选项，例如 {cmd:mlabel(country)}。 {it:varname} 是一个变量的名称，逐观测地指定要标记的文本。 {it:varname} 可以是字符串或数值变量，但通常是字符串。例如，考虑一个关于国家寿命的数据子集：

	{cmd:. sysuse lifeexp}

	{cmd}. list country lexp gnppc if region==2
	{txt}
	     {c TLC}{hline 21}{c -}{hline 6}{c -}{hline 7}{c TRC}
	     {c |} {res}            country   lexp   gnppc {txt}{c |}
	     {c LT}{hline 21}{c -}{hline 6}{c -}{hline 7}{c RT}
	 45. {c |} {res}             加拿大     79   19170 {txt}{c |}
	 46. {c |} {res}               古巴     76       . {txt}{c |}
	 47. {c |} {res} 多米尼加共和国     71    1770 {txt}{c |}
	 48. {c |} {res}        萨尔瓦多     69    1850 {txt}{c |}
	 49. {c |} {res}          危地马拉     64    1640 {txt}{c |}
	     {c LT}{hline 21}{c -}{hline 6}{c -}{hline 7}{c RT}
	 50. {c |} {res}              海地     54     410 {txt}{c |}
	 51. {c |} {res}           洪都拉斯     69     740 {txt}{c |}
	 52. {c |} {res}            牙买加     75    1740 {txt}{c |}
	 53. {c |} {res}             墨西哥     72    3840 {txt}{c |}
	 54. {c |} {res}          尼加拉瓜     68    1896 {txt}{c |}
	     {c LT}{hline 21}{c -}{hline 6}{c -}{hline 7}{c RT}
	 55. {c |} {res}             巴拿马     74    2990 {txt}{c |}
	 56. {c |} {res}        波多黎各     76       . {txt}{c |}
	 57. {c |} {res}特立尼达和多巴哥     73    4520 {txt}{c |}
	 58. {c |} {res}      美国     77   29240 {txt}{c |}
	     {c BLC}{hline 21}{c -}{hline 6}{c -}{hline 7}{c BRC}{txt}

{pstd}
我们可以绘制这些数据，并使用标签来指示国家，输入以下命令：

{phang2}
	{cmd:. scatter lexp gnppc if region==2, mlabel(country)}
{p_end}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc if region==2, mlabel(country)":点击运行})}
{* graph mlab1}{...}


{marker remarks2}{...}
{title:消除重叠和溢出}

{pstd}
在图中，标签 "美国" 超出右边缘，而洪都拉斯和萨尔瓦多的标签则重叠。使用标记标签时，类似的问题不可避免地会发生。 {cmd:mlabposition()} 允许指定标签出现的位置，我们可以尝试

{phang2}
	{cmd:. scatter lexp gnppc if region==2, mlabel(country) mlabpos(9)}

{pstd}
将标签移动到 9 点钟位置，意味着位于点的左侧。然而，在这种情况下，这将引发更多问题而不是解决问题。你可以尝试围绕点的其他时钟位置，但我们未能找到令人满意的解决方案。

{pstd}
如果我们唯一的问题是 "美国" 超出右边，那么一个足够的解决方案可以是扩大 {it:x} 轴，从而为标签 "美国" 留出空间：

	{cmd:. scatter lexp gnppc if region==2, mlabel(country)}
				{cmd:xscale(range(35000))}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc if region==2, mlabel(country) xscale(range(35000))":点击运行})}
{* graph mlab2}{...}

{pstd}
这将解决一个问题，但会留下重叠的问题。解决该问题的方法是将洪都拉斯的标签移到其点的左边，而实现这一点的方法是指定选项 {cmd:mlabvposition(}{it:varname}{cmd:)} 而不是 {cmd:mlabposition(}{it:clockposstyle}{cmd:)}。我们将创建新的变量 {cmd:pos} 来指定我们希望每个标签的位置：

	{cmd}. generate pos = 3

	. replace pos = 9 if country=="Honduras"

	. scatter lexp gnppc if region==2, mlabel(country) mlabv(pos)
				xscale(range(35000)){txt}
	  {it:({stata "gr_example2 markerlabel1":点击运行})}
{* graph markerlabel1}{...}

{pstd}
我们接近解决方案：洪都拉斯标签超出图的左边，但我们知道怎么解决这个问题。你可能会倾向于像解决美国标签问题那样解决这个问题：扩大范围，比如 {cmd:range(-500 35000)}。这将是一个好的解决方案。

{pstd}
然而，在这里，我们将通过添加选项 {cmd:plotregion(margin(l+9))} 来增加绘图区域左边缘和 {it:y} 轴之间的间距；请参见 {manhelpi region_options G-3}。 {cmd:plotregion(margin(l+9))} 表示在左侧增加 9% 的间距，这实际上是处理边距问题的 "正确" 方法：

	. scatter lexp gnppc if region==2, mlabel(country) mlabv(pos)
				xscale(range(35000))
				plotregion(margin(l+9)){txt}
	  {it:({stata "gr_example2 markerlabel2":点击运行})}{txt}
{* graph markerlabel2}{...}

{pstd}
最终结果是令人满意的。如果我们为出版生产此图，我们将把美国的标签移到其点的左侧，就像洪都拉斯的标签一样，而不是加宽 {it:x} 轴。

{marker remarks3}{...}
{title:高级用法}

{pstd}
现在让我们考虑如何正确绘制寿命预期数据并绘制更多数据。这一次，我们将包括南美洲，以及北美和中美洲，并使用对数（GNP）比例绘制数据。

	{cmd}. sysuse lifeexp, clear
	. keep if region==2 | region==3{...}
{col 70}{txt}{it:(注 1)}{cmd}

	. replace gnppc = gnppc / 1000
	. label var gnppc "人均国民生产总值（千美元）"{...}
{col 70}{txt}{it:(注 2)}{cmd}

	. generate lgnp = log(gnp)
	. qui reg lexp lgnp
	. predict hat
	. label var hat "线性预测"{...}
{col 70}{txt}{it:(注 3)}{cmd}

	. replace country = "特立尼达" if country=="特立尼达和多巴哥"
	. replace country = "巴拉圭" if country == "巴拉圭"{...}
{col 70}{txt}{it:(注 4)}{cmd}

	. generate pos = 3
	. replace pos = 9 if lexp > hat{...}
{col 70}{txt}{it:(注 5)}{cmd}

	. replace pos = 3 if country == "哥伦比亚"
	. replace pos = 3 if country == "巴拉圭"
	. replace pos = 3 if country == "特立尼达"
	. replace pos = 9 if country == "美国"{...}
{col 70}{txt}{it:(注 6)}{cmd}

	. twoway (scatter lexp gnppc, mlabel(country) mlabv(pos))
		 (line hat gnppc, sort)
		 , xscale(log) xlabel(.5 5 10 15 20 25 30, grid)
		   legend(off)
		   title("人均国民生产总值与寿命预期")
		   subtitle("北美、中美和南美洲")
		   note("数据来源：世界银行，1998年")
		   ytitle("出生时的寿命（年）"){txt}
	  {it:({stata "gr_example2 markerlabel3":点击运行})}{txt}
{* graph markerlabel3}{...}

{pstd}
备注：

{phang2}
1.  在这些数据中，区域 2 是北美和中美洲，区域 3 是南美洲。

{phang2}
2.  我们将 {cmd:gnppc} 除以 1,000，以防止 {it:x} 轴标签互相重叠。

{phang2}
3.  我们添加一条线性回归预测。我们不能使用 {cmd:graph} {cmd:twoway} {cmd:lfit} 因为我们希望预测基于对数（GNP）的回归，而不是 GNP。

{phang2}
4.  第一次绘制结果时，我们发现无法使这两个国家的名称适应图，因此我们对其进行了缩短。

{phang2}
5.  当寿命预期高于回归线时，我们将在标记的左侧放置标记标签，否则则放在标记的右侧。

{phang2}
6.  为了防止标签重叠，我们需要对少数国家最大化规则（5）。

{pstd}
另见 {manhelpi scale_option G-3} 获取此图的另一种呈现。在该版本中，我们指定了一个额外的选项—— {cmd:scale(1.1)}——将文本和标记的大小增加 10%。

{marker remarks4}{...}
{title:使用标记标签替代标记}

{pstd}
除了指定标记标签相对于标记的位置外，您还可以指定使用标记标签替代标记。{cmd:mlabposition(0)} 意味着标签将出现在标记应该出现的位置。要同时抑制标记的显示，请指定选项 {cmd:msymbol(i)}；见 {manhelpi marker_options G-3}。

{pstd}
在分析图中使用标签替代点通常效果不错，因为我们往往更关注识别异常值。下面我们绘制整个 {cmd:lifeexp.dta} 数据：

{phang2}
	{cmd:. scatter lexp gnppc, xscale(log) mlab(country) m(i)}
{p_end}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc, xscale(log) mlab(country) m(i)":点击运行})}
{* graph mlab3}{...}

{pstd}
在上述图中，我们还指定了 {cmd:xscale(log)} 将 {it:x} 轴转换为对数比例。对数 {it:x} 比例更适合这些数据，但如果我们早些使用它，洪都拉斯和萨尔瓦多的重叠问题将会消失，而我们希望展示如何处理该问题。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <marker_label_options.sthlp>}