{smcl}
{* *! version 1.1.11  15may2018}{...}
{vieweralsosee "[G-3] connect_options" "mansection G-3 connect_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 概念：线" "help lines_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 颜色样式" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] 连接样式" "help connectstyle_zh"}{...}
{vieweralsosee "[G-4] 线对齐样式" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] 线条模式样式" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] 线条样式" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] 线宽样式" "help linewidthstyle_zh"}{...}
{viewerjumpto "语法" "connect_options_zh##syntax"}{...}
{viewerjumpto "描述" "connect_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "connect_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "connect_options_zh##options"}{...}
{viewerjumpto "备注" "connect_options_zh##remarks"}
{help connect_options:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[G-3]} {it:connect_options} {hline 2}}连接数据点的线条选项{p_end}
{p2col:}({mansection G-3 connect_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 27}{...}
{p2col:{it:connect_options}}描述{p_end}
{p2line}
{p2col:{cmdab:c:onnect:(}{it:{help connectstyle_zh}}{cmd:)}}如何连接点
      {p_end}
{p2col:{cmd:sort}[{cmd:(}{varlist}{cmd:)}]}连接前如何排序{p_end}
{p2col:{cmdab:cmis:sing:(}{c -(}{cmd:y}|{cmd:n}{c )-} ...{cmd:)}}忽略
       缺失值{p_end}

{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}线条模式
      (实线、虚线等){p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}线条厚度
      {p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}线条的颜色和透明度{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}线条
	对齐方式 (内部、外部、居中){p_end}
{p2col:{cmdab:lsty:le:(}{it:{help linestyle_zh}}{cmd:)}}线条的整体样式
      {p_end}

{p2col:{cmdab:psty:le:(}{it:{help pstyle_zh}}{cmd:)}}整体绘图样式，
      包括线条样式{p_end}

{p2col:{help advanced_options_zh:{bf:recast(}{it:newplottype}{bf:)}}}高级选项；
      将绘图视为 {it:newplottype}{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是 {it:右侧}; 请参见 {help repeated options}。
如果同时指定 {cmd:sort} 和 {cmd:sort(}{it:varlist}{cmd:)}，
则忽略 {cmd:sort}，并采用 {cmd:sort(}{it:varlist}{cmd:)}。


{marker description}{...}
{title:描述}

{pstd}
{it:connect_options} 指定图形上点之间的连接方式。

{pstd}
在某些上下文中（例如，{cmd:scatter}; 参见
{manhelp scatter G-2:graph twoway scatter}），
可以为 {cmd:lstyle()}、{cmd:lpattern()}、{cmd:lwidth()}、{cmd:lcolor()} 和
{cmd:lalign()} 选项指定一个元素列表，第一个元素应用于第一个变量，第二个元素应用于第二个变量，以此类推。有关指定列表的信息，请参见
{manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 connect_optionsRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt connect(connectstyle)} 指定是否连接点，如果连接，线条的形状；见
{manhelpi connectstyle G-4}。每对点之间的线条可以直接连接或阶梯形连接。

{phang}
{cmd:sort} 和 {cmd:sort(}{varlist}{cmd:)}
    指定在连接点之前如何对数据进行排序。

{pmore}
    {cmd:sort} 指定数据应按 {it:x}
    变量进行排序。

{pmore}
    {cmd:sort(}{it:varlist}{cmd:)} 指定数据应按指定的变量
    进行排序。

{pmore}
    {cmd:sort} 通常是指定的选项。
    除非您要创建特殊效果或数据已经排序，不要忘记指定此选项。
    如果您希望创建特殊效果，并且数据尚未排序，您可以指定 {cmd:sort(}{it:varlist}{cmd:)} 来精确指定数据的排序方式。

{pmore}
    在不必要时指定 {cmd:sort} 或 {cmd:sort(}{it:varlist}{cmd:)} 会稍微降低 {cmd:graph} 的速度。
    如果您指定 {cmd:twoway} 选项 {cmd:by()}，尤其如果包括子选项 {cmd:total}，通常需要指定 {cmd:sort}。

{pmore}
    在同一绘图中，选项 {cmd:sort} 和 {cmd:sort(}{it:varlist}{cmd:)} 不能重复。

{phang}
{cmd:cmissing(}{c -(}{cmd:y}|{cmd:n}{c )-} ...{cmd:)}
    指定是否忽略缺失值。默认是
    {cmd:cmissing(y} {cmd:...)}, 意味着它们被忽略。
    考虑以下数据：

	    {txt}
		 {c TLC}{hline 8}{c -}{hline 3}{c TRC}
		 {c |} {res}  rval   x {txt}{c |}
		 {c LT}{hline 8}{c -}{hline 3}{c RT}
	      1. {c |} {res}  .923   1 {txt}{c |}
	      2. {c |} {res} 3.046   2 {txt}{c |}
	      3. {c |} {res} 5.169   3 {txt}{c |}
	      4. {c |} {res}     .   . {txt}{c |}
	      5. {c |} {res} 9.415   5 {txt}{c |}
		 {c LT}{hline 8}{c -}{hline 3}{c RT}
	      6. {c |} {res}11.538   6 {txt}{c |}
		 {c BLC}{hline 8}{c -}{hline 3}{c BRC}{txt}

{pmore}
假设您通过使用 "{cmd:line} {cmd:rval} {cmd:x}" 或
等效的 "{cmd:scatter} {cmd:rval} {cmd:x,} {cmd:c(l)}" 绘制这些数据。
您希望在 3 和 5 之间的线条中断吗？如果是，您可以编写

	    {cmd:. line rval x, cmissing(n)}

{pmore}
或等效的

	    {cmd:. scatter rval x, c(l) cmissing(n)}

{pmore}
如果您省略该选项（或编码 {cmd:cmissing(y)}），则将数据视为包含

		 {c TLC}{hline 8}{c -}{hline 3}{c TRC}
		 {c |} {res}  rval   x {txt}{c |}
		 {c LT}{hline 8}{c -}{hline 3}{c RT}
	      1. {c |} {res}  .923   1 {txt}{c |}
	      2. {c |} {res} 3.046   2 {txt}{c |}
	      3. {c |} {res} 5.169   3 {txt}{c |}
	      4. {c |} {res} 9.415   5 {txt}{c |}
	      5. {c |} {res}11.538   6 {txt}{c |}
		 {c BLC}{hline 8}{c -}{hline 3}{c BRC}{txt}

{pmore}
这意味着将在 {bind:(3, 5.169)} 和
{bind:(5, 9.415)} 之间绘制一条线。

{pmore}
如果您绘制多个变量，您可以指定一系列的
{cmd:y}/{cmd:n} 答案。

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)},
{cmd:lwidth(}{it:linewidthstyle}{cmd:)},
{cmd:lcolor(}{it:colorstyle}{cmd:)},
{cmd:lalign(}{it:linealignmentstyle}{cmd:)}
和
{cmd:lstyle(}{it:linestyle}{cmd:)}
    决定连接点的线条外观；见 
    {help lines_zh}。请注意 {cmd:lpattern()} 选项，它 
    允许您指定线条是实线、虚线等；
    参见 {manhelpi linepatternstyle G-4} 获取线条模式选择列表。

{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)}
    指定绘图的整体样式，包括不仅仅是
    {it:{help linestyle_zh}}，还包括绘图外观的所有其他设置。
    只有 {it:linestyle} 影响线图的外观。见
    {manhelpi pstyle G-4} 获取可用绘图样式的列表。

{phang}
{cmd:recast(}{it:newplottype}{cmd:)}
        是一个高级选项，允许将图表从一种类型转变为
        另一种类型，例如，从 {help twoway line:线图} 转为
        {help twoway scatter:散点图}; 参见
        {manhelpi advanced_options G-3}。大多数，但并非所有，图表允许 
        {cmd:recast()}。


{marker remarks}{...}
{title:备注}

{pstd}
所有上述选项中，重要的选项是 {cmd:connect()}，它决定了
点是否连接及连接方式。点不一定要连接
（{cmd:connect(i)}），这也是 {cmd:scatter} 的默认值。或者点可以通过直线连接（{cmd:connect(l)}），这是 {cmd:line} 的默认值（在 {cmd:scatter} 中也可用）。 {cmd:connect(i)} 和
{cmd:connect(l)} 是常见指定，但还有其他可能性
如 {cmd:connect(J)}，它阶梯形连接，适用于经验分布。
请见 {manhelpi connectstyle G-4} 获取完整选择列表。

{pstd}
与 {cmd:connect()} 同样重要的是 {cmd:sort}。如果您不指定此选项，点将以遇到的顺序连接。这在创建特殊效果时可能有用，但通常，您希望将点按其 {it:x} 变量的升序排序。这就是 {cmd:sort} 的作用。

{pstd}
剩余的连接选项指定线条外观：是实线还是虚线？是红色还是绿色？线条有多厚？选项 {cmd:lpattern()} 可能非常重要，尤其是在打印到单色打印机时。有关线条的一般讨论（即在连接点之外的其他上下文中出现），请参见 {help lines_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <connect_options.sthlp>}