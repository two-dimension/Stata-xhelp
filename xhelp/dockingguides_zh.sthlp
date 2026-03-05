{smcl}
{* *! version 1.1.2  13jun2019}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "Syntax" "dockingguides_zh##syntax"}{...}
{viewerjumpto "Description" "dockingguides_zh##description"}{...}
{viewerjumpto "Option" "dockingguides_zh##option"}
{help dockingguides:English Version}
{hline}{...}
{title:标题}

{phang}
指定是否为可停靠窗口启用停靠指南
   （仅限 Windows）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set dockingguides} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set dockingguides} 指定在 repositioning 可停靠窗口时是否启用停靠指南。停靠指南是蓝色箭头图标，当用户重新定位另一个窗口时，悬浮在窗口上方以协助用户。该命令仅适用于 Windows 计算机。

{pstd} 
如果启用，当一个可停靠窗口被移动到另一个可停靠窗口上方时，将会出现停靠指南。内侧图标集包括一个选项卡图标，周围紧密环绕着四个箭头图标。这组内侧图标指定了将窗口选项卡化到另一个窗口，或将窗口定位到可用空间的顶部、右侧、底部或左侧。

{pstd} 
除了内侧图标外，还有一组外侧图标，这些图标始终位于主 Stata 窗口的边缘。这四个图标类似于内侧组中的箭头图标，但对应主 Stata 窗口。与内侧箭头图标一样，这些图标允许您将窗口定位到主 Stata 窗口可用空间的顶部、右侧、底部或左侧。

{pstd} 
要选择停靠窗口的位置，请拖动您希望移动的窗口，直到光标选择到您想要的图标。释放鼠标按钮以停止拖动窗口并将其放置到目标位置。

{pstd}
{cmd:on} 指定显示蓝色停靠指南以指示可停靠区域。 {cmd:off} 指定使用正常的窗口轮廓来显示可停靠区域。 {cmd:dockingguides} 的默认值为 {cmd:on}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改外，还要记住该设置并成为您调用 Stata 时的默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dockingguides.sthlp>}