{smcl}
{* *! version 1.0.6  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph" "help graph_zh"}{...}
{vieweralsosee "[R] sunflower" "help sunflower_zh"}{...}
{viewerjumpto "语法" "twoway_sunflower_zh##syntax"}{...}
{viewerjumpto "描述" "twoway_sunflower_zh##description"}{...}
{viewerjumpto "选项" "twoway_sunflower_zh##options"}
{help twoway_sunflower:English Version}
{hline}{...}
{title:标题}

{p 4 30 2}
{hi:[G-2] twoway sunflower} {hline 2} 密度分布向日葵图 

{marker syntax}{...}
{title:语法}

{p 8 25 2}
{cmdab:tw:oway}
{cmd:sunflower} {it:yvar} {it:xvar}
	[{it:weight}] 
	[{cmd:if} {it:exp}] 
	[{cmd:in} {it:range}] [, 
		{it:{help sunflower_zh:sunflower_options}}
		{it:{help scatter_zh:scatter_options}} 
		{it:{help twoway_options_zh}}]
 

{pstd}
允许使用 {cmd:fweight}s，详情见 {help weights}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:sunflower} 是一种特殊的 {cmd:twoway} 图。我们建议使用 {cmd:sunflower} 命令，而不是 {cmd:twoway} {cmd:sunflower}；参见 {manhelp sunflower R}。


{marker options}{...}
{title:选项}
 
{phang}
{it:sunflower_options} 影响向日葵和箱子的绘制；参见 {manhelp sunflower R}。

{phang}
{it:scatter_options} 影响绘制点的显示；参见 {manhelp scatter G-2:graph twoway scatter}。

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中记录的任何选项。这些选项包括图表标题选项（见 {manhelpi title_options G-3}）、将图表保存到磁盘的选项（见 {manhelpi saving_option G-3}）以及 {cmd:by()} 选项（见 {manhelpi by_option G-3}）。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_sunflower.sthlp>}