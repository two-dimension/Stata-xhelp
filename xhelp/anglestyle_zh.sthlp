{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] anglestyle" "mansection G-4 anglestyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] marker_label_options" "help marker_label_options_zh"}{...}
{viewerjumpto "Syntax" "anglestyle_zh##syntax"}{...}
{viewerjumpto "Description" "anglestyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "anglestyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "anglestyle_zh##remarks"}
{help anglestyle:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-4]} {it:anglestyle} {hline 2}}文本显示角度的选择{p_end}
{p2col:}({mansection G-4 anglestyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col : {it:anglestyle}}描述{p_end}
{p2line}
{p2col : {cmd:horizontal}}水平；从左向右读取{p_end}
{p2col : {cmd:vertical}}垂直；从下向上读取{p_end}
{p2col : {cmd:rvertical}}垂直；从上向下读取{p_end}
{p2col : {cmd:rhorizontal}}水平；倒置{p_end}

{p2col : {cmd:0}}0度；与 {cmd:horizontal} 相同{p_end}
{p2col : {cmd:45}}45度{p_end}
{p2col : {cmd:90}}90度；与 {cmd:vertical} 相同{p_end}
{p2col : {cmd:180}}180度；与 {cmd:rhorizontal} 相同{p_end}
{p2col : {cmd:270} 或 {cmd:-90}}270度；与 {cmd:rvertical} 相同{p_end}

{p2col : {it:#}}{it:#}度；您希望的任何角度；{it:#} 可以是正数或负数{p_end}
{p2line}
{p2colreset}{...}

{p 4 6 2}
其他 {it:anglestyles} 可能可用；输入

	    {cmd:.} {bf:{stata graph query anglestyle}}

{p 4 6 2}
以获取您计算机上安装的完整列表。
如果存在其他 {it:anglestyles}，它们只是附加在数值上的字词。


{marker description}{...}
{title:描述}

{pstd}
{it:anglestyle} 指定文本显示的角度。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 anglestyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{it:anglestyle} 在选项中指定，例如标记标签选项
{cmd:mlabangle()} (见 {manhelpi marker_label_options G-3}),

{p 8 16 2}
{cmd:. graph}
...{cmd:,} ...
{cmd:mlabel(...) mlabangle(}{it:anglestylelist}{cmd:)} ...

{pstd}
或轴标签子选项 {cmd:angle()}
(见 {manhelpi axis_label_options G-3})：

{p 8 16 2}
{cmd:. graph}
...{cmd:,} ...
{cmd:ylabel(}...{cmd:, angle(}{it:anglestyle}{cmd:)} ...{cmd:)} ...

{pstd}
对于 {cmd:mlabangle()}，允许使用 {it:anglestylelist}。 
{it:anglestylelist} 是由空格分隔的一系列 {it:anglestyles}。
为了简化列表的指定，允许使用简写；见 
{manhelpi stylelists G-4}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <anglestyle.sthlp>}