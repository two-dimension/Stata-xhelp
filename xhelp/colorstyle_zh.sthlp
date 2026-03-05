{smcl}
{* *! version 1.2.6  07dec2018}{...}
{vieweralsosee "[G-4] colorstyle" "mansection G-4 colorstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] palette" "help palette_zh"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{viewerjumpto "Syntax" "colorstyle_zh##syntax"}{...}
{viewerjumpto "Description" "colorstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "colorstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "colorstyle_zh##remarks"}{...}
{viewerjumpto "Video example" "colorstyle_zh##video"}
{help colorstyle:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-4]} {it:colorstyle} {hline 2}}颜色选项{p_end}
{p2col:}({mansection G-4 colorstyle:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
将<{it:object}>的颜色设置为{it:colorstyle}

{p 8 16 2}
<{it:object}>{opth color:(colorstyle##colorstyle:colorstyle)}


{pstd}
将所有受影响对象的颜色设置为{it:colorstyle}

{p 8 16 2}
{opth color:(colorstyle##colorstyle:colorstyle)}


{pstd}
将<{it:object}>的透明度设置为{it:#}，其中{it:#}是100%透明度的百分比

{p 8 16 2}
<{it:object}>{opt color(%#)}


{pstd}
将所有受影响对象颜色的透明度设置为{it:#}

{p 8 16 2}
{opt color(%#)}


{pstd}
同时设置<{it:object}>的颜色和透明度

{p 8 16 2}
<{it:object}>{cmd:color(}{it:{help colorstyle##colorstyle:colorstyle}}{cmd:%}{it:#}{cmd:)}


{pstd}
同时设置所有受影响对象的颜色和透明度

{p 8 16 2}
<{it:object}>{cmd:color(}{it:{help colorstyle##colorstyle:colorstyle}}{cmd:%}{it:#}{cmd:)}


{marker colorstyle}{...}
{synoptset 20}{...}
{p2col:{it:colorstyle}}描述{p_end}
{p2line}
{p2col:{cmd:black}}{p_end}
{p2col:{cmd:gs0}}灰度：0 = {cmd:black}{p_end}
{p2col:{cmd:gs1}}灰度：非常深的灰色{p_end}
{p2col:{cmd:gs2}}{p_end}
{p2col:.}{p_end}
{p2col:.}{p_end}
{p2col:{cmd:gs15}}灰度：非常浅的灰色{p_end}
{p2col:{cmd:gs16}}灰度：16 = {cmd:white}{p_end}
{p2col:{cmd:white}}{p_end}

{p2col:{cmd:blue}}{p_end}
{p2col:{cmd:bluishgray}}{p_end}
{p2col:{cmd:brown}}{p_end}
{p2col:{cmd:cranberry}}{p_end}
{p2col:{cmd:cyan}}{p_end}
{p2col:{cmd:dimgray}}介于{cmd:gs14}和{cmd:gs15}之间{p_end}
{p2col:{cmd:dkgreen}}深绿色{p_end}
{p2col:{cmd:dknavy}}深海军蓝{p_end}
{p2col:{cmd:dkorange}}深橙色{p_end}
{p2col:{cmd:eggshell}}{p_end}
{p2col:{cmd:emerald}}{p_end}
{p2col:{cmd:forest_green}}{p_end}
{p2col:{cmd:gold}}{p_end}
{p2col:{cmd:gray}}等于{cmd:gs8}{p_end}
{p2col:{cmd:green}}{p_end}
{p2col:{cmd:khaki}}{p_end}
{p2col:{cmd:lavender}}{p_end}
{p2col:{cmd:lime}}{p_end}
{p2col:{cmd:ltblue}}浅蓝色{p_end}
{p2col:{cmd:ltbluishgray}}浅蓝灰色，由方案{cmd:s2color}使用{p_end}
{p2col:{cmd:ltkhaki}}浅卡其色{p_end}
{p2col:{cmd:magenta}}{p_end}
{p2col:{cmd:maroon}}{p_end}
{p2col:{cmd:midblue}}{p_end}
{p2col:{cmd:midgreen}}{p_end}
{p2col:{cmd:mint}}{p_end}
{p2col:{cmd:navy}}{p_end}
{p2col:{cmd:olive}}{pend}
{p2col:{cmd:olive_teal}}{p_end}
{p2col:{cmd:orange}}{p_end}
{p2col:{cmd:orange_red}}{p_end}
{p2col:{cmd:pink}}{p_end}
{p2col:{cmd:purple}}{p_end}
{p2col:{cmd:red}}{p_end}
{p2col:{cmd:sand}}{p_end}
{p2col:{cmd:sandb}}明亮的沙色{p_end}
{p2col:{cmd:sienna}}{p_end}
{p2col:{cmd:stone}}{p_end}
{p2col:{cmd:teal}}{p_end}
{p2col:{cmd:yellow}}{p_end}

{p2col:}所使用的颜色来自{it:经济学人}杂志：{p_end}
{p2col 5 35 37 2:{cmd:ebg}}背景颜色{p_end}
{p2col 5 35 37 2:{cmd:ebblue}}亮蓝色{p_end}
{p2col 5 35 37 2:{cmd:edkblue}}深蓝色{p_end}
{p2col 5 35 37 2:{cmd:eltblue}}浅蓝色{p_end}
{p2col 5 35 37 2:{cmd:eltgreen}}浅绿色{p_end}
{p2col 5 35 37 2:{cmd:emidblue}}中度蓝色{p_end}
{p2col 5 35 37 2:{cmd:erose}}玫瑰色{p_end}

{p2col:{cmd:none}}无颜色；不可见；不绘制任何内容{p_end}
{p2col:{cmd:background} 或 {cmd:bg}}与背景颜色相同{p_end}
{p2col:{cmd:foreground} 或 {cmd:fg}}与前景颜色相同{p_end}

{p2col:{cmd:"}{it:# # #}{cmd:"}}RGB值；{cmd:white} = {cmd:"255 255 255"}{p_end}

{p2col:{cmd:"}{it:# # # #}{cmd:"}}CMYK值；{cmd:yellow} = {cmd:"0 0 255 0"}{p_end}

{p2col:{cmd:"hsv} {it:# # #}{cmd:"}}HSV值；{cmd:white} = {cmd:"hsv 0 0 1"}{p_end}

{p2col:{it:color}{cmd:*}{it:#}}调整强度的颜色{p_end}

{p2col:{cmd:*}{it:#}}默认颜色的调整强度{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
在指定RGB、CMYK或HSV值时，最好将值用引号括起来；输入{cmd:"128} {cmd:128} {cmd:128"}而不是{cmd:128} {cmd:128} {cmd:128}。


{marker description}{...}
{title:描述}

{pstd}
{it:colorstyle}设置图形组件的颜色和透明度，例如线条、背景和条形。一些选项允许使用{it:colorstyle}的序列和{it:colorstylelist}；请参阅{manhelpi stylelists G-4}.


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 colorstyleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{it:colorstyle}设置图形组件的颜色和透明度，例如线条、背景和条形。可以使用命名颜色指定颜色，例如{cmd:black}、{cmd:olive}和{cmd:yellow}，或使用RGB、CMYK或HSV格式的颜色值。{it:colorstyle}还可以将组件设置为匹配背景颜色或前景颜色。此外，{it:colorstyle}可以修改颜色强度，使颜色变得更浅或更深。一些选项允许使用{it:colorstyle}的序列和{it:colorstylelist}；请参阅{manhelpi stylelists G-4}。

{pstd}
要查看命名颜色的列表，请使用{cmd:graph query colorstyle}。请参阅{manhelp graph_query G-2:graph query}。要显示单个颜色或比较两种颜色的调色板，请使用{cmd:palette color}。请参阅{manhelp palette G-2}。

{pstd}
备注按以下标题呈现：

	{help colorstyle##opacity:调整透明度}
	{help colorstyle##intensity:调整强度}
	{help colorstyle##rgb:指定RGB值}
	{help colorstyle##cmyk:指定CMYK值}
	{help colorstyle##hsv:指定HSV值}
	{help colorstyle##export:导出自定义颜色}


{marker opacity}{...}
{title:调整透明度}

{pstd}
透明度是颜色覆盖背景颜色的百分比。也就是说，{cmd:100%}意味着颜色完全隐藏背景，而{cmd:0%}意味着颜色没有覆盖并且完全透明。如果您更喜欢将其视为空透明度，则透明度是透明度的反数。使用{cmd:%}修饰符调整透明度。例如，输入

	{cmd:green%50}
	{cmd:"0 255 0%50"}
	{cmd:%30}

{pstd}
在命令中省略颜色说明将调整对象的透明度，同时保留默认颜色。例如，使用{cmd:mcolor(%30)}与{cmd:graph} {cmd:twoway} {cmd:scatter}指定30%透明度的默认填充颜色。

{pstd}
指定{it:color}{cmd:%0}使对象完全透明，相当于颜色{cmd:none}。


{marker intensity}{...}
{title:调整强度}

{pstd}
可以通过指定颜色、{cmd:*}和一个乘数值来修改颜色强度（亮度）。例如，输入

	{cmd:green*.8}
	{cmd:purple*1.5}
	{cmd:"0 255 255*1.2"}
	{cmd:"hsv 240 1 1*.5"}

{pstd}
值为1保持颜色不变，大于1的值使颜色更暗，低于1的值使颜色更亮。请注意，即使{it:color}是RGB或CMYK的数值，{it:color}和{cmd:*}之间也不要有空格。

{pstd}
在命令中省略颜色说明将调整对象默认颜色的强度。例如，使用{cmd:bcolor(*.7)}与{cmd:graph} {cmd:twoway} {cmd:bar}指定降低亮度的默认填充颜色，或者使用{cmd:bcolor(*2)}增加默认颜色的亮度。

{pstd}
指定{it:color}{cmd:*0}会使颜色尽可能地变得更浅，但这不等同于颜色{cmd:none}。{it:color}{cmd:*255}会使颜色尽可能地变得更深，尽管远小于255的值通常可以达到相同的效果。

{pstd}
有关使用强度调整的示例，请参见{help twoway kdensity##remarks1:{it:典型用法}}中{manhelp twoway_kdensity G-2:graph twoway kdensity}。


{marker rgb}{...}
{title:RGB值}

{pstd}
除了指定命名颜色（例如{cmd:yellow}）外，您还可以使用RGB值指定颜色。RGB值是范围从0到255的数字三元组，描述必须发出多少红、绿和蓝光才能产生给定的颜色。RGB用于定义屏幕显示的颜色和非专业打印。RGB值示例包括

	{cmd:red}     =   {cmd:255    0    0}
	{cmd:green}   =   {cmd:  0  255    0}
	{cmd:blue}    =   {cmd:  0    0  255}
	{cmd:white}   =   {cmd:255  255  255}
	{cmd:black}   =   {cmd:  0    0    0}
	{cmd:gray}    =   {cmd:128  128  128}
	{cmd:navy}    =   {cmd: 26   71  111}


{marker cmyk}{...}
{title:CMYK值}

{pstd}
您可以使用CMYK值指定颜色。您可能只有在期刊或出版商提供CMYK值时才会使用CMYK值。您可以将CMYK值指定为0到255之间的整数，也可以使用从0.0到1.0的实数表示墨水的比例。如果所有四个值都小于或等于1，则这些数字被视为墨水的比例。例如，

	{cmd:red}     =   {cmd:  0  255  255    0}   或等价的，{cmd:   0     1  1     0}
	{cmd:green}   =   {cmd:255    0  255    0}   或等价的，{cmd:   1     0  1     0}
	{cmd:blue}    =   {cmd:255  255    0    0}   或等价的，{cmd:   1     1  0     0}
	{cmd:white}   =   {cmd:  0    0    0    0}   或等价的，{cmd:   0     0  0     0}
	{cmd:black}   =   {cmd:  0    0    0  255}   或等价的，{cmd:   0     0  0     1}
	{cmd:gray}    =   {cmd:  0    0    0  128}   或等价的，{cmd:   0     0  0    .5}
	{cmd:navy}    =   {cmd: 85   40    0  144}   或等价的，{cmd:.334  .157  0  .565}


{marker hsv}{...}
{title:HSV值}

{pstd}
您可以使用HSV（色相、饱和度和明度）指定颜色，也称为HSL（色相、饱和度和亮度）和HSB（色相、饱和度和亮度）。HSV经常用于图像编辑软件。HSV值是三元组数字。为了让Stata能够区分它们与RGB值，HSV颜色必须以{cmd:hsv}为前缀。第一个数字指定色相范围从0到360，第二个数字指定饱和度范围从0到1，第三个数字指定明度（亮度或亮度）范围从0到1。例如，

	{cmd:red}     =   {cmd:hsv   0     1     1}
	{cmd:green}   =   {cmd:hsv 120     1  .502}
	{cmd:blue}    =   {cmd:hsv 240     1     1}
	{cmd:white}   =   {cmd:hsv   0     0     1}
	{cmd:black}   =   {cmd:hsv   0     0     0}
	{cmd:navy}    =   {cmd:hsv 209  .766  .435}


{marker export}{...}
{title:导出自定义颜色}

{pstd}
{cmd:graph export}将所有颜色存储为RGB+透明度值，即RGB值0-255和透明度值0-1。如果您需要Stata中的颜色值以CMYK格式，使用带有{cmd:cmyk(on)}选项的{cmd:graph export}命令，并将图形保存为以下格式之一：PostScript、封装的PostScript或PDF。

{pstd}
您可以通过输入{cmd:translator set Graph2ps cmyk on}来设置Stata始终使用CMYK颜色进行PostScript导出文件，通过输入{cmd:translator set Graph2eps cmyk on}进行EPS导出文件。

{pstd}
在{cmd:graph export}中返回的CMYK值可能与您输入的CMYK值不同。这是因为Stata通过减少所有CMY值直到一个值为0来标准化CMYK值。差异被加到K（黑色）值上。例如，Stata将CMYK值{cmd:10 10 5 0}标准化为{cmd:5 5 0 5}。Stata从CMY值中减去5，以使Y为0，然后将5加到K上。


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=2bK-WZAcGMo":Stata图形中的透明度}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <colorstyle.sthlp>}