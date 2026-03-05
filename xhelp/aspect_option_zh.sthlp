{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[G-3] aspect_option" "mansection G-3 aspect_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{vieweralsosee "[G-2] graph box" "help graph_box_zh"}{...}
{vieweralsosee "[G-2] graph dot" "help graph_dot_zh"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{viewerjumpto "Syntax" "aspect_option_zh##syntax"}{...}
{viewerjumpto "Description" "aspect_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "aspect_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "aspect_option_zh##option"}{...}
{viewerjumpto "Suboption" "aspect_option_zh##suboption"}{...}
{viewerjumpto "Remarks" "aspect_option_zh##remarks"}
{help aspect_option:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-3]} {it:aspect_option} {hline 2}}控制绘图区域纵横比的选项{p_end}
{p2col:}({mansection G-3 aspect_option:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col : {it:aspect_option}}描述{p_end}
{p2line}
{p2col : {cmdab:aspect:ratio:(}{it:#} [{cmd:,} {it:pos_option}]{cmd:)}}设定
       绘图区域的纵横比为 {it:#}{p_end}
{p2line}

{p2col : {it:pos_option}}描述{p_end}
{p2line}
{p2col : {cmdab:place:ment:(}{it:{help compassdirstyle_zh}}{cmd:)}}绘图区域的
       放置位置{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:aspectratio()} 选项控制图形绘图区域的高度与宽度之间的关系。
例如，当 {it:#}=1 时，高度和宽度相等（它们的比例为1），绘图区域将是正方形的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 aspect_optionQuickstart:快速入门}

        {mansection G-3 aspect_optionRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
    {cmd:aspectratio(}{it:#} [{cmd:,} {it:pos_option}]{cmd:)} 指定
    纵横比，并可选地指定绘图区域的位置。


{marker suboption}{...}
{title:子选项}

{phang}
    {cmd:placement(}{it:compassdirstyle}{cmd:)} 指定绘图区域
    应放置的位置，以占用限制纵横比后留下的区域。
    参见 {manhelpi compassdirstyle G-4}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:aspectratio(}{it:#}{cmd:)} 选项限制绘图区域的比例为 {it:#}。
因此，如果 {it:#} 为 1，则绘图区域为正方形；如果为 2，则绘图区域的高度是宽度的两倍；如果为 .25，则绘图区域的高度是宽度的四分之一。最常用的设置是 {cmd:aspectratio(1)}，它生成一个正方形的绘图区域。

{pstd}
{cmd:aspectratio()} 选项不会改变图形的总体大小。因此，限制纵横比通常会在水平或垂直方向留下额外的空间。默认情况下，绘图区域将位于此空间的中心，但可以使用 {cmd:placement()} 选项来控制绘图区域的位置。{cmd:placement(right)} 会将绘图区域放置在额外空间的最右侧，左侧留出所有空白空间；{cmd:placement(top)} 会将绘图区域放置在额外空间的顶部，底部留出所有空白空间；{cmd:placement(left)} 和 {cmd:placement(right)} 的效果类似。

{pstd}
指定比图形默认值更大的纵横比会导致绘图区域变窄。相反，指定较小的纵横比会让绘图区域变短。由于标题和图例可能比绘图区域更宽，并且大多数 {help schemes_zh} 不允许标题和图例超出绘图区域的宽度，这有时会导致某些图形元素的间距令人意外；例如，轴可能被迫远离其绘图区域。如果发生这种情况，可以通过在 {help title_options_zh:title()}、{help title_options_zh:subtitle()}、{help legend_options_zh:legend()} 或其他选项中添加 {cmd:span} 子选项来改善间距。{cmd:span} 选项必须添加到每个比绘图区域更宽的元素上。有关示意图，请参见 {it:{help title_options##remarks5:跨越}}在 {manhelpi title_options G-3} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <aspect_option.sthlp>}