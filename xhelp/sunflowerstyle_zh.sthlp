{smcl}
{* *! version 1.0.8  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] sunflower" "help sunflower_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] areastyle" "help areastyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] markerstyle" "help markerstyle_zh"}{...}
{viewerjumpto "Syntax" "sunflowerstyle_zh##syntax"}{...}
{viewerjumpto "Description" "sunflowerstyle_zh##description"}
{help sunflowerstyle:English Version}
{hline}{...}
{title:标题}

{p2colset 5 29 31 2}{...}
{p2col :{hi:[G-4] {it:sunflowerstyle}} {hline 2}}绘图整体外观的选择{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:sunflowerstyle}{col 30}描述
	{hline 57}
	{cmd:p1} - {cmd:p15}{...}
{col 30}用于第一个图、第二个图，...
	{hline 57}

{p 8 8 2}
其他 {it:sunflowerstyles} 可能是可用的；输入

	    {cmd:.} {bf:{stata graph query sunflowerstyle}}

{p 8 8 2}
以获得您计算机上安装的完整列表。


{marker description}{...}
{title:描述}

{p 4 4 2}
一个 {it:sunflowerstyle} -- 始终在选项 {cmd:pstyle(}{it:sunflowerstyle}{cmd:)} 内指定 -- 指定密度分布太阳花图的整体样式，并且是 {it:{help pstyle_zh}} 和多个 {it:{help linestyle_zh}} 及 {it:{help areastyle_zh}} 的组合。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sunflowerstyle.sthlp>}