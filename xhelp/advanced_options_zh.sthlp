{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[G-3] advanced_options" "mansection G-3 advanced_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{viewerjumpto "语法" "advanced_options_zh##syntax"}{...}
{viewerjumpto "描述" "advanced_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "advanced_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "advanced_options_zh##options"}{...}
{viewerjumpto "备注" "advanced_options_zh##remarks"}
{help advanced_options:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[G-3]} {it:advanced_options} {hline 2}}很少指定的选项，用于 graph twoway{p_end}
{p2col:}({mansection G-3 advanced_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col : {it:标题选项}}描述{p_end}
{p2line}
{p2col : {cmdab:pcyc:le:(}{it:#}{cmd:)}}绘制前 {help pstyle_zh:pstyles}
     循环{p_end}

{p2col : {cmdab:yvarl:abel:(}{it:quoted_strings}{cmd:)}}重新指定
     {it:y}变量标签{p_end}
{p2col : {cmdab:xvarl:abel:(}{it:quoted_string}{cmd:)}}重新指定
     {it:x}变量标签{p_end}

{p2col : {cmdab:yvarf:ormat:(}{help format_zh:{bf:%}{it:fmt}} [...]{cmd:)}}重新指定 {it:y}变量格式{p_end}
{p2col : {cmdab:xvarf:ormat:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}重新指定
     {it:x}变量格式{p_end}

{p2col : {opt yoverhang:s}}调整 {it:y}轴标签的边距{p_end}
{p2col : {opt xoverhang:s}}调整 {it:x}轴标签的边距{p_end}

{p2col : {cmd:recast(}{it:newplottype}{cmd:)}}将图形视为 {it:newplottype}
       {p_end}
{p2line}
{p 4 6 2}
上述选项是 {it:rightmost}; 参见 {help repeated options}。

{pstd}
其中 {it:quoted_string} 是一个引号字符串，{it:quoted_strings} 是
一个或多个引号字符串，例如

	{cmd:"}{it:plot 1 label}{cmd:"}

	{cmd:"}{it:plot 1 label}{cmd:"} {cmd:"}{it:plot 2 label}{cmd:"}

{p2col : {it:newplottype}}
	描述{p_end}
{p2line}
{p2col : {cmdab:sc:atter}}
	视为 {helpb graph twoway scatter}{p_end}
{p2col : {cmdab:li:ne}}
	视为 {helpb graph twoway line}{p_end}
{p2col : {cmdab:con:nected}}
	视为 {helpb graph twoway connected}{p_end}
{p2col : {cmd:bar}}
	视为 {helpb graph twoway bar}{p_end}
{p2col : {cmd:area}}
	视为 {helpb graph twoway area}{p_end}
{p2col : {cmd:spike}}
	视为 {helpb graph twoway spike}{p_end}
{p2col : {cmd:dropline}}
	视为 {helpb graph twoway dropline}{p_end}
{p2col : {cmd:dot}}
	视为 {helpb graph twoway dot}{p_end}

{p2col : {cmd:rarea}}
	视为 {helpb graph twoway rarea}{p_end}
{p2col : {cmd:rbar}}
	视为 {helpb graph twoway rbar}{p_end}
{p2col : {cmd:rspike}}
	视为 {helpb graph twoway rspike}{p_end}
{p2col : {cmd:rcap}}
	视为 {helpb graph twoway rcap}{p_end}
{p2col : {cmd:rcapsym}}
	视为 {helpb graph twoway rcapsym}{p_end}
{p2col : {cmd:rline}}
	视为 {helpb graph twoway rline}{p_end}
{p2col : {cmd:rconnected}}
	视为 {helpb graph twoway rconnected}{p_end}
{p2col : {cmd:rscatter}}
	视为 {helpb graph twoway rscatter}{p_end}

{p2col:{cmd:pcspike}}
	视为 {helpb graph twoway pcspike}{p_end}
{p2col:{cmd:pccapsym}}
	视为 {helpb graph twoway pccapsym}{p_end}
{p2col:{cmd:pcarrow}}
	视为 {helpb graph twoway pcarrow}{p_end}
{p2col:{cmd:pcbarrow}}
	视为 {helpb graph twoway pcbarrow}{p_end}
{p2col:{cmd:pcscatter}}
	视为 {helpb graph twoway pcscatter}{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
每个分组中的 {it:newplottypes}（{cmd:scatter} 到
{cmd:dot}， {cmd:rarea} 到 {cmd:rscatter}，以及 {cmd:pcspike} 到
{cmd:pcscatter}）应该只在其自身之间重新指定。


{marker description}{...}
{title:描述}

{pstd}
{it:advanced_options} 并非真正的高级选项，而是相对较难解释且很少使用的选项。 但在需要时，这些选项是非常宝贵的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 advanced_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:pcycle(}{it:#}{cmd:)}
    指定在下一图形的 {help pstyle_zh} 重新开始时绘制多少张图形
    从 {cmd:p1}开始，下一张图形使用 {cmd:p2}，依此类推。 大多数 {help schemes_zh} 的默认值为 {it:#} 为 {cmd:pcycle(15)}。

{phang}
{cmd:yvarlabel(}{it:quoted_strings}{cmd:)}
和
{cmd:xvarlabel(}{it:quoted_string}{cmd:)}
     指定要视为第一个、第二个......、{it:y}变量和 {it:x}
     变量的变量标签的字符串。

{phang}
{cmd:yvarformat(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}
和
{cmd:xvarformat(%}{it:fmt}{cmd:)}
     指定的显示格式将被视为第一个、第二个......、{it:y}变量和
     {it:x}变量的显示格式。

{phang}
{opt yoverhangs} 和 {opt xoverhangs} 尝试调整图形区域
边距，以防止 {it:y} 或 {it:x} 轴上的长标签超出图形边缘。 仅考虑
轴上最小和最大刻度值的标签以进行调整。
{opt yoverhangs} 和 {opt xoverhangs} 在指定了 {help by_option_zh:by()} 时将被忽略。

{phang}
{cmd:recast(}{it:newplottype}{cmd:)}
     指定新的图形类型用于原始
     {cmd:graph} {cmd:twoway} {it:plottype} 命令的重新指定; 参见 
     {manhelp graph_twoway G-2:graph twoway} 以查看可用的 
     {it:plottype}。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help advanced_options##remarks1:使用 yvarlabel() 和 xvarlabel()}
	{help advanced_options##remarks2:使用 yvarformat() 和 xvarformat()}
	{help advanced_options##remarks3:使用 recast()}


{marker remarks1}{...}
{title:使用 yvarlabel() 和 xvarlabel()}

{pstd}
例如，当你输入，

	{cmd:. scatter mpg weight}

{pstd}
坐标轴是使用 {cmd:mpg} 和 {cmd:weight} 的变量标签进行标记的，或者如果变量没有变量标签，则使用变量本身的名称。选项 {cmd:yvarlabel()} 和 {cmd:xvarlabel()} 允许你指定字符串，这些字符串会作为变量标签和名称的优先选择。

{phang2}
	{cmd:. scatter mpg weight, yvarl("Miles per gallon")}

{pstd}
将 {it:y} 轴标记为 "Miles per gallon"（省略引号），
无论变量 {cmd:mpg} 的标签如何。 类似地，

{phang2}
	{cmd:. scatter mpg weight, xvarl("Weight in pounds")}

{pstd}
将 {it:x} 轴标记为 "Weight in pounds"，无论变量 {cmd:weight} 的标签如何。

{pstd}
显然，你可以同时指定两个选项。

{pstd}
在这两种情况下，实际的变量标签不会改变。 选项 {cmd:yvarlabel()} 和 {cmd:xvarlabel()} 将指定的字符串视为变量标签。 {cmd:yvarlabel()} 和 {cmd:xvarlabel()} 在这种处理上是字面意义的。 例如，如果你指定 {cmd:xvarlabel("")}，变量标签将被视为不存在，因此变量名称将用于标记 {it:x} 轴。

{pstd}
这两个选项之所以被称为 "高级" 不仅是因为它们影响坐标轴的命名方式，还因为它们在变量标签可能被使用的地方替代了指定的字符串。 变量标签同样用于图例的构建（参见 
{manhelpi legend_options G-3}）。


{marker remarks2}{...}
{title:使用 yvarformat() 和 xvarformat()}

{pstd}
选项 {cmd:yvarformat()} 和 {cmd:xvarformat()} 的工作方式很像 {cmd:yvarlabel()} 和 {cmd:xvarlabel()}，不同之处在于它们不覆盖变量标签，而是覆盖变量格式。
如果你输入

{phang2}
	{cmd:. scatter mpg weight, yvarformat(%9.2f)}

{pstd}
那么 {it:y} 轴上的值将标记为 10.00、20.00、30.00 和 40.00，
而不是 10、20、30 和 40。


{marker remarks3}{...}
{title:使用 recast()}

{cmd:scatter}、{cmd:line}、{cmd:histogram}，... -- 直接出现在 {cmd:graph} {cmd:twoway} 后面的单词称为 {it:plottype}。
图形类型有两种形式：{it:base} {it:plottypes} 和 {it:derived} {it:plottypes}。

{pstd}
基本图形类型根据某种样式以给定的方式绘制数据。
{cmd:scatter} 和 {cmd:line} 是基本图形类型的例子。

{pstd}
派生图形类型并不按给定方式绘制数据，而是从数据中派生某些内容，然后使用基本图形类型之一绘制。 {cmd:histogram} 是派生图形类型的一个例子。它从数据中派生出某些 {it:x} 范围的频率值，然后使用基本图形类型 {cmd:graph} {cmd:twoway} {cmd:bar} 绘制该派生数据。 {cmd:lfit} 是另一种派生图形类型的例子。它对数据进行线性回归拟合，然后将结果传递给 {cmd:graph} {cmd:twoway} {cmd:line}。

{pstd}
{cmd:recast()} 在使用派生图形类型时非常有用。它指定数据将被派生，就像它们通常会被派生一样，但不是将派生数据传递给默认的基本图形类型进行绘图，而是将它们传递给指定的基本图形类型。

{pstd}
例如，如果我们输入

{phang2}
	{cmd:. twoway lfit mpg weight, pred(resid)}

{pstd}
我们将得到残差的图形，因为 {cmd:lfit} 图形类型产生线图。 如果我们输入

{phang2}
	{cmd:. twoway lfit mpg weight, pred(resid) recast(scatter)}

{pstd}
我们将得到残差的散点图。 {cmd:graph} {cmd:twoway}
{cmd:lfit} 将使用 {cmd:graph} {cmd:twoway} {cmd:scatter} 而不是
{cmd:graph} {cmd:twoway} {cmd:line} 来绘制它派生的数据。

{pstd}
{cmd:recast(}{it:newplottype}{cmd:)} 可用于派生和基本图形类型，
尽管在与派生图形结合使用时最有用。

{pin}
{it:技术说明:}{break}
在 {manhelp scatter G-2:graph twoway scatter} 中显示的 {cmd:scatter} 的语法图
虽然很详细，但不完整，手册中显示的其他所有图形类型语法图也是如此。

{pin}
考虑如果你指定

	    {cmd:. scatter} ...{cmd:,} ... {cmd:recast(bar)}

{pin}
你将指定 {cmd:scatter} 被视为 {cmd:bar}。
结果将与输入

	    {cmd:. twoway bar} ...{cmd:,} ...

{pin}
的结果相同，但我们暂且忽略这一点，假设你输入了 {cmd:recast()} 版本。
如果你想指定条形的外观该怎么办？你可以输入

{pin2}
	    {cmd:. scatter} ...{cmd:,} ... {it:bar_options} {cmd:recast(bar)}

{pin}
也就是说，{cmd:scatter} 允许 {cmd:graph} {cmd:twoway} {cmd:bar} 的选项，
尽管它们并未出现在 {cmd:scatter} 的语法图中。 同样，
{cmd:graph} {cmd:twoway} {cmd:bar} 允许所有 {cmd:scatter} 的选项；
你可以输入

{pin2}
	    {cmd:. twoway bar} ...{cmd:,} ... {it:scatter_options} {cmd:recast(scatter)}

{pin}
所有其他基本图形类型对中同样适用，结果是所有基本图形类型允许所有基本图形类型选项。 这里的重点在于基本：派生图形类型不允许这种共享。

{pin}
如果你在不使用 {cmd:recast()} 的情况下使用基本图形类型，并且如果你从其他基本类型指定不相关的选项，这不是错误，但不相关的选项将被忽略。 在基本图形类型的语法图中，我们仅列出了相关选项，前提是假设你没有指定 {cmd:recast}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <advanced_options.sthlp>}