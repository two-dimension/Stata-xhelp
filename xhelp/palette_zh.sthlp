{smcl}
{* *! version 1.2.2  19oct2017}{...}
{vieweralsosee "[G-2] palette" "mansection G-2 palette"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph" "help graph_zh"}{...}
{vieweralsosee "[G-2] graph query" "help graph_query_zh"}{...}
{viewerjumpto "Syntax" "palette_zh##syntax"}{...}
{viewerjumpto "Description" "palette_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "palette_zh##linkspdf"}{...}
{viewerjumpto "Options" "palette_zh##options"}{...}
{viewerjumpto "Remarks" "palette_zh##remarks"}
{help palette:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[G-2] palette} {hline 2}}显示可用选择的调色板{p_end}
{p2col:}({mansection G-2 palette:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:palette}
{cmd:color}
{it:{help colorstyle_zh}}
[{it:{help colorstyle_zh}}]
[{cmd:,}
{help scheme_option_zh:{ul:sch}eme({it:schemename})}
{cmd:cmyk}]

{p 8 16 2}
{cmd:palette}
{cmdab:line:palette}
[{cmd:,}
{help scheme_option_zh:{ul:sch}eme({it:schemename})}]

{p 8 16 2}
{cmd:palette}
{cmdab:symbol:palette}
[{cmd:,}
{help scheme_option_zh:{ul:sch}eme({it:schemename})}]

{p 8 16 2}
{cmd:palette}
{cmdab:smcl:symbolpalette}
[{cmd:,}
{help scheme_option_zh:{ul:sch}eme({it:schemename})}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:palette} 生成显示各种可用选择的图表。

{pstd}
{cmd:palette} {cmd:color} 显示特定颜色的外观并允许您比较两种颜色；请参见 {manhelpi colorstyle G-4}。

{pstd}
{cmd:palette} {cmd:linepalette} 展示不同的 {it:linepatternstyles}；请参见 {manhelpi linepatternstyle G-4}。

{pstd}
{cmd:palette} {cmd:symbolpalette} 展示不同的 {it:symbolstyles}；请参见 {manhelpi symbolstyle G-4}。

{pstd}
{cmd:palette} {cmd:smclsymbolpalette} 显示希腊字母和其他符号在图形窗口中的渲染效果以及每个符号的 SMCL 名称；请参见 {manhelpi graph_text G-4:text}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 paletteQuickstart:快速入门}

        {mansection G-2 paletteRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:scheme(}{it:schemename}{cmd:)}
     指定用于绘制图形的方案。通过此命令，{cmd:scheme()} 很少被指定。
     如果您计划在彩色打印机上打印图形，建议指定 {cmd:scheme(color)}；请参见 {manhelpi scheme_option G-3}。

{phang}
{cmd:cmyk} 指定颜色值以 CMYK 而非 RGB 报告；请参见 {manhelpi colorstyle G-4}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:palette} 命令更像是 {cmd:graph} 文档的一部分，而不是其本身有用的命令。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <palette.sthlp>}