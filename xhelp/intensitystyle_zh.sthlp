{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] intensitystyle" "mansection G-4 intensitystyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] shadestyle" "help shadestyle_zh"}{...}
{viewerjumpto "Syntax" "intensitystyle_zh##syntax"}{...}
{viewerjumpto "Description" "intensitystyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "intensitystyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "intensitystyle_zh##remarks"}
{help intensitystyle:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-4]} {it:intensitystyle} {hline 2}}颜色强度的选择{p_end}
{p2col:}({mansection G-4 intensitystyle:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:intensitystyle}}描述{p_end}
{p2line}
{p2col:{cmd:inten0}}0% 强度，完全没有颜色{p_end}
{p2col:{cmd:inten10}}{p_end}

{p2col:{cmd:inten20}}{p_end}

{p2col:{cmd:...}}{p_end}

{p2col:{cmd:inten90}}{p_end}

{p2col:{cmd:inten100}}100% 强度，完全色彩{p_end}

{p2col:{it:#}}{it:#}% 强度，范围从0到100{p_end}
{p2line}
{p2colreset}{...}

{p 4 4 2}
其他 {it:intensitystyles} 可能是可用的；输入

	    {cmd:.} {bf:{stata graph query intensitystyle}}

{p 4 4 2}
以获取您电脑上安装的 {it:intensitystyles} 的完整列表。
如果存在其他 {it:intensitystyles}，它们只是附加于数值的词汇。


{marker description}{...}
{title:描述}

{pstd}
{it:intensitystyles} 指定颜色的强度为0到100之间的百分比，并在 {it:shadestyles} 中使用；请参见 {manhelpi shadestyle G-4}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 intensitystyleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{it:intensitystyle} 主要在 {help scheme files} 中使用，通常不通过交互方式指定，尽管某些选项（例如 {cmd:intensity()} 选项）可能接受样式名称以及数值。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <intensitystyle.sthlp>}