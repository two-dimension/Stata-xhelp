{smcl}
{* *! version 1.0.0  08jul2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] ereturn" "help ereturn_zh"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[R] pwcompare" "help pwcompare_zh"}{...}
{viewerjumpto "Syntax" "set_buildfvinfo_zh##syntax"}{...}
{viewerjumpto "Description" "set_buildfvinfo_zh##description"}
{help set_buildfvinfo:English Version}
{hline}{...}
{title:标题}

{p2colset 4 27 29 2}{...}
{p2col:{hi:[P] set buildfvinfo} {hline 2}}将额外的因子变量信息构建到参数估计中
{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:buildfvinfo}
{c -(}{cmd:on} | {cmd:off}{c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:buildfvinfo}
允许您控制是否从数据集中构建因子变量信息
并将其与 {cmd:e(b)} 的列条带存储在一起。此信息
识别因子和交互中的空单元格；它
还有助于识别可估计的函数在
{help contrast_zh}，
{help margins_zh} 和
{help pwcompare_zh} 中。

{pstd}
{cmd:set} {cmd:buildfvinfo} 是一个程序员设置，当设置为 {cmd:off} 时
可以帮助加快模拟和基于复制的方差估计速度。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_buildfvinfo.sthlp>}