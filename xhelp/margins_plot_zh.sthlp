{smcl}
{* *! version 1.0.1  18feb2015}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{viewerjumpto "Syntax" "margins_plot_zh##syntax"}{...}
{viewerjumpto "Description" "margins_plot_zh##description"}{...}
{viewerjumpto "Options" "margins_plot_zh##options"}
{help margins_plot:English Version}
{hline}{...}
{title:标题}

{p2colset 4 24 26 2}{...}
{p2col:{hi:[R] margins, plot()}}{hline 2} 一步执行边际效果和边际图
{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:margins} [{it:{help fvvarlist_zh:marginlist}}] 
{ifin} {weight}
[{cmd:,} 
{help marginsplot##syntax:{bf:plot}}
{it:{help margins##response_options:response_options}}
{it:{help margins##options:options}}] 

{p 8 16 2}
{cmd:margins} [{it:{help fvvarlist_zh:marginlist}}] 
{ifin} {weight}
[{cmd:,} 
{help marginsplot##syntax:{bf:plot(}{it:options}{bf:)}}
{it:{help margins##response_options:response_options}}
{it:{help margins##options:options}}] 


{marker description}{...}
{title:描述}

{pstd}
带有 {cmd:plot} 或 {cmd:plot()} 选项的 {cmd:margins} 指定使用 {cmd:margins} 输出中报告的统计数据调用 {help marginsplot_zh} 命令。


{marker options}{...}
{title:选项}

{phang}
{opt plot} 指定使用输出中报告的统计数据调用 {help marginsplot_zh}。
{p_end}

{phang}
{opt plot(options)} 指定使用输出中报告的统计数据调用 {help marginsplot_zh}，并允许指定 {cmd:marginsplot} 的选项。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <margins_plot.sthlp>}