{smcl}
{* *! version 1.1.10  16apr2019}{...}
{vieweralsosee "[G-3] added_text_options" "mansection G-3 added_text_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] textbox_options" "help textbox_options_zh"}{...}
{viewerjumpto "Syntax" "added_text_options_zh##syntax"}{...}
{viewerjumpto "Description" "added_text_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "added_text_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "added_text_options_zh##options"}{...}
{viewerjumpto "Suboptions" "added_text_options_zh##suboptions"}{...}
{viewerjumpto "Remarks" "added_text_options_zh##remarks"}
{help added_text_options:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-3]} {it:added_text_options} {hline 2}}向双向图形添加文本的选项{p_end}
{p2col:}({mansection G-3 added_text_options:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 22}{...}
{p2col : {it:added_text_options}}
	描述{p_end}
{p2line}
{p2col : {cmd:text(}{it:text_arg}{cmd:)}}
	在指定的 {it:y} {it:x} 处添加文本{p_end}
{p2col : {cmd:ttext(}{it:text_arg}{cmd:)}}
	在指定的 {it:y} {it:t} 处添加文本{p_end}
{p2line}
{p 4 6 2}
上述选项为 {it:merged-implicit}；请参见 {help repeated options}。

{pstd}
其中 {it:text_arg} 是

	{it:loc_and_text} [{it:loc_and_text} ...] [{cmd:,} {it:textoptions}]

{pstd}
并且 {it:loc_and_text} 是

	{it:#_y} {it:#_x} {cmd:"}{it:text}{cmd:"} [{cmd:"}{it:text}{cmd:"} ...]

{pmore}
{it:text} 可以包含Unicode字符和SMCL标签，以呈现数学符号、斜体等；请参见 {manhelpi graph_text G-4:text}。

{p2col : {it:textoptions}}
	描述{p_end}
{p2line}
{p2col : {cmdab:yax:is:(}{it:#}{cmd:)}}
	如何解释 {it:#_y}{p_end}
{p2col : {cmdab:xax:is:(}{it:#}{cmd:)}}
	如何解释 {it:#_x}{p_end}
{p2col : {cmdab:place:ment:(}{it:{help compassdirstyle_zh}}{cmd:)}}
	相对于 {it:#_y} {it:#_x} 的位置{p_end}
{p2col : {it:{help textbox_options_zh}}}
	文本的外观{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
{cmd:placement()} 也是一个文本框选项，但请忽略那里描述的 {cmd:placement()}，请参见以下描述。


{marker description}{...}
{title:描述}

{pstd}
{cmd:text()} 将指定的文本添加到图形区域的指定位置。

{pstd}
{cmd:ttext()} 是对 {cmd:text()} 的扩展，当时间轴具有时间格式时，可以用日期替换 {it:#_x}；请参见 {help datelist_zh}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 added_text_optionsQuickstart:快速入门}

        {mansection G-3 added_text_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt text(text_arg)} 和 {opt ttext(text_arg)}
    指定要显示的文本和位置。


{marker suboptions}{...}
{title:子选项}

{phang}
{cmd:yaxis(}{it:#}{cmd:)}
和
{cmd:xaxis(}{it:#}{cmd:)}
    指定如何解释 {it:#_y} 和 {it:#_x}，当存在多个 {it:y}、{it:x} 或 {it:t} 轴刻度时；见 {manhelpi axis_choice_options G-3}。

{pmore}
    在通常情况下，存在一个 {it:y} 轴和一个 {it:x} 轴，因此选项 {cmd:yaxis()} 和 {cmd:xaxis()} 不需要指定。
    {it:#_y} 根据 {it:y} 刻度的单位进行指定，{it:#_x} 根据 {it:x} 刻度的单位进行指定。

{pmore}
    在多轴情况下，指定 {cmd:yaxis(}{it:#}{cmd:)} 和/或 {cmd:xaxis(}{it:#}{cmd:)} 来指定您希望使用的单位。
    {cmd:yaxis(1)} 和 {cmd:xaxis(1)} 是默认值。

{phang}
{cmd:placement(}{it:compassdirstyle}{cmd:)} 指定文本框相对于 {it:#_y} {it:#_x} 的显示位置。
    默认通常是 {cmd:placement(center)}。默认设置受方案和 {it:textbox_option} {cmd:tstyle(}{it:textboxstyle}{cmd:)} 的控制；见 {manhelp schemes G-4:方案简介} 和 {manhelpi textbox_options G-3}。
    可用的选项有

{p2colset 12 30 32 2}{...}
{p2col:{it:compassdirstyle}}文本位置{p_end}
{p2line}
{p2col 18 30 32 2:{cmd:c}}在点的正上方和正中间{p_end}
{p2col 18 30 32 2:{cmd:n}}在点的上方，居中{p_end}
{p2col 18 30 32 2:{cmd:ne}}在点的上方和右侧{p_end}
{p2col 18 30 32 2:{cmd:e}}在点的右侧，垂直居中{p_end}
{p2col 18 30 32 2:{cmd:se}}在点的下方和右侧{p_end}
{p2col 18 30 32 2:{cmd:s}}在点的下方，居中{p_end}
{p2col 18 30 32 2:{cmd:sw}}在点的下方和左侧{p_end}
{p2col 18 30 32 2:{cmd:w}}在点的左侧，垂直居中{p_end}
{p2col 18 30 32 2:{cmd:nw}}在点的上方和左侧{p_end}
{p2line}
{p2colreset}{...}

                      {it:north            northwest northeast}
		  {it:west}  X  {it:east}                 X
                      {it:south            southwest southeast}

{pmore}
    您可以查看 {manhelpi compassdirstyle G-4}，但这只会提供 {cmd:c}、{cmd:n}、{cmd:ne}、...、{cmd:nw} 的同义词。

{phang}
{it:textbox_options}
    指定文本的外观；见 {manhelpi textbox_options G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help added_text_options##remarks1:典型用法}
	{help added_text_options##remarks2:高级用法}
	{help added_text_options##remarks3:使用文本框选项 width()}


{marker remarks1}{...}
{title:典型用法}

{pstd}
{cmd:text()} 用于在图形上放置注释。其中一个例子是标记异常值。例如，输入

	{cmd:. sysuse auto}

	{cmd:. twoway qfitci mpg weight, stdf || scatter mpg weight}
	{it:(图形省略)}

{pstd}
一共有四个异常值。首先，我们通过输入命令找到异常值

	{cmd:. quietly regress mpg weight}

	{cmd:. predict hat}

	{cmd:. predict s, stdf}

	{cmd:. generate upper = hat + 1.96*s}

	{cmd:. list make mpg weight if mpg>upper}
	{txt}
             {c TLC}{hline 13}{c -}{hline 5}{c -}{hline 8}{c TRC}
             {c |} {res}make          mpg   weight {txt}{c |}
             {c LT}{hline 13}{c -}{hline 5}{c -}{hline 8}{c RT}
         13. {c |} {res}Cad. Seville   21    4,290 {txt}{c |}
         42. {c |} {res}Plym. Arrow    28    3,260 {txt}{c |}
         57. {c |} {res}Datsun 210     35    2,020 {txt}{c |}
         66. {c |} {res}Subaru         35    2,050 {txt}{c |}
         71. {c |} {res}VW Diesel      41    2,040 {txt}{c |}
             {c BLC}{hline 13}{c -}{hline 5}{c -}{hline 8}{c BRC}{txt}

{pstd}
现在我们可以重新生成图形并标记异常值：

	{cmd}. twoway qfitci  mpg weight, stdf ||
		 scatter mpg weight, ms(O)
		 text(41 2040 "VW Diesel", place(e))
		 text(28 3260 "Plymouth Arrow", place(e))
		 text(35 2050 "Datsun 210 and Subaru", place(e)){txt}
	  {it:({stata `"gr_example auto: twoway qfitci mpg weight, stdf || scatter mpg weight, ms(O) text(41 2040 "VW Diesel", place(e)) text(28 3260 "Plymouth Arrow", place(e)) text(35 2050 "Datsun 210 and Subaru", place(e))"':点击运行})}
{* graph atofig1}{...}


{marker remarks2}{...}
{title:高级用法}

{pstd}
{it:text} 的另一个常见用法是在图形内部添加说明文本框：

	{cmd}. sysuse uslifeexp, clear

        . twoway line  le year ||
		 fpfit le year ||
	  , ytitle("人均寿命，年")
	    xlabel(1900 1918 1940(20)2000)
	    title("出生时的预期寿命")
	    subtitle("美国，1900-1999年")
	    note("来源：国家生命统计报告，Vol. 50 No. 6")
	    legend(off)
	    text( 48.5 1923
		 "1918年流感大流行是美国已知的最严重疫情"
		 "死亡人数超过20世纪所有战斗死亡总和。"
		 , place(se) box just(left) margin(l+4 t+1 b+1) width(85) ){txt}
	  {it:({stata "gr_example2 textop1":点击运行})}
{* graph textop1}{...}

{pstd}
在上述命令中唯一需要注意的是 {cmd:text()} 选项：

	    {cmd}text( 48.5 1923
		 "1918年流感大流行是美国已知的最严重疫情"
		 "死亡人数超过20世纪所有战斗死亡总和。"
		 , place(se) box just(left) margin(l+4 t+1 b+1) width(85) ){txt}

{pstd}
尤其是，我们希望您注意文本的位置和子选项：

	    {cmd}text( 48.5 1923
		 {txt}...{cmd}
		 , place(se) box just(left) margin(l+4 t+1 b+1) width(85) ){txt}

{pstd}
我们将文本放在 {it:y}=48.5，{it:x}=1923，{cmd:place(se)}，这意味着文本框将放置在 {it:y}=48.5，{it:x}=1923 的下方和右侧。

{pstd}
其他子选项 {cmd:box} {cmd:just(left)} {cmd:margin(l+4} {cmd:t+1}
{cmd:b+1)} {cmd:width(85)} 是 {it:textbox_options}。我们指定 {cmd:box} 为文本框绘制边框，并指定了 {cmd:just(left)} -- {cmd:justification(left)} 的缩写 -- 使文本在框内左对齐。{cmd:margin(l+4} {cmd:t+1} {cmd:b+1)} 使得文本框内的文本看起来更好。左侧我们添加了4%，上下各添加了1%；见 {manhelpi textbox_options G-3} 和 {manhelpi size G-4}。
{cmd:width(85)} 是为了处理下面描述的问题而指定的。


{* index width() tt textbox option}{...}
{* index height() tt textbox option}{...}
{* index borders, misplacement of}{...}
{* index text, running outside of borders}{...}
{marker remarks3}{...}
{title:使用文本框选项 width()}

{pstd}
让我们来看一下上述命令的结果，省略 {cmd:width()} 子选项。您在屏幕上看到的 -- 或打印输出 -- 可能与我们刚画的版本几乎相同，或者可能看起来像这样

	  {it:({stata "gr_example2 textop2":点击运行})}
{* graph textop2}{...}

{pstd}
或者像这样：

	  {it:({stata "gr_example2 textop3":点击运行})}
{* graph textop3}{...}

{pstd}
也就是说，Stata 可能会使文本框变得过窄或过宽。在上述插图中，我们夸大了问题的程度，但文本框可能稍微窄或稍微宽。此外，就这个问题而言，图形在您的屏幕上的外观并不能保证在打印时会如何显示。

{pstd}
这个问题出现的原因是Stata使用近似公式来确定文本的宽度。这种近似在某些字体上效果很好，而在其他字体上则较差。

{pstd}
当问题出现时，使用 {it:textbox_option} {cmd:width(}{it:size}{cmd:)} 进行解决。 {cmd:width()} 会覆盖 Stata 的计算。事实上，我们通过故意错误指定 {cmd:width()} 来绘制了上面的两个示例。在第一个情况下，我们指定了 {cmd:width(40)}，在第二个情况下指定了 {cmd:width(95)}。

{pstd}
正确设置 {cmd:width()} 是一个通过试验和错误的过程。正确的宽度几乎总是介于0与100之间。

{pstd}
与 {cmd:width(}{it:size}{cmd:)} 相吻合的，还有 {it:textbox_option} {cmd:height(}{it:size}{cmd:)}，但 Stata 从不会出错地处理高度。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <added_text_options.sthlp>}