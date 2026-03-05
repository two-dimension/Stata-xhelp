{smcl}
{* *! version 1.0.9  10aug2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway histogram" "help twoway_histogram_zh"}{...}
{vieweralsosee "[R] histogram" "help histogram_zh"}{...}
{viewerjumpto "Syntax" "twoway__histogram_gen_zh##syntax"}{...}
{viewerjumpto "Description" "twoway__histogram_gen_zh##description"}{...}
{viewerjumpto "Options" "twoway__histogram_gen_zh##options"}{...}
{viewerjumpto "Stored results" "twoway__histogram_gen_zh##results"}
{help twoway__histogram_gen:English Version}
{hline}{...}
{title:标题}

{p 4 35 2}
{hi:[G-2] twoway__histogram_gen} {hline 2} 直方图子程序


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:twoway__histogram_gen}
	{it:变量名}
	[{it:权重}]
	[{cmd:if} {it:表达式}]
	[{cmd:in} {it:范围}]
	[{cmd:,}
	{c -(}{it:离散选项}|{it:连续选项}{c )-}
	{it:共通选项}]

{pstd}
其中 {it:离散选项} 为

	{it:离散选项}{col 42}描述
	{hline 65}
	{cmdab:d:iscrete}{...}
{col 42}指定数据为离散
	{cmd:width(}{it:#}{cmd:)}{...}
{col 42}在 {it:变量名} 单位中的箱宽
	{cmd:start(}{it:#}{cmd:)}{...}
{col 42}理论最小值
	{hline 65}

{pstd}
而 {it:连续选项} 为

	{it:连续选项}{col 42}描述
	{hline 65}
	{cmd:bin(}{it:#}{cmd:)}{...}
{col 42}{it:#} 个箱
	{cmd:width(}{it:#}{cmd:)}{...}
{col 42}在 {it:变量名} 单位中的箱宽
	{cmd:start(}{it:#}{cmd:)}{...}
{col 42}第一个箱的下限
	{hline 65}

{pstd}
而 {it:共通选项} 为

	{it:共通选项}{col 42}描述
	{hline 65}
	{cmdab:den:sity}{...}
{col 42}绘制为密度（默认）
	{cmdab:frac:tion}{...}
{col 42}绘制为分数
	{cmdab:freq:uency}{...}
{col 42}绘制为频率

	{cmdab:gen:erate:(}{it:h x} [, {cmd:replace} ]{cmd:)}{...}
{col 42}生成变量

	{cmd:display}{...}
{col 42}显示（箱）起点和宽度
	{hline 64}

{pstd}
{cmd:fweight} 是允许的；参见 {help weights}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway__histogram_gen} 生成一个包含 {it:变量名} 的箱（类区间）出现的密度、频率或分数的变量。

{pstd}
该工具用于生成直方图，见
{manhelp twoway_histogram G-2:graph twoway histogram}。


{marker options}{...}
{title:选项}

{phang}
{it:离散选项} 影响绘制离散直方图所需的参数。有关更多详细信息，请参见 {manhelp histogram R}。

{phang}
{it:连续选项} 影响绘制连续直方图所需的参数。有关更多详细信息，请参见 {manhelp histogram R}。

{phang}
{cmd:density}、{cmd:fraction} 和
{cmd:frequency}
    是可供选择的选项。它们指定您希望直方图按密度单位、分数单位或频率进行缩放。{cmd:density} 是默认选项。有关更多详细信息，请参见 {manhelp histogram R}。

{phang}
{cmd:generate(}{it:h} {it:x} [{cmd:,} {cmd:replace}]{cmd:)} 指定要生成的变量名称。每个箱的高度将放入 {it:h} 中，而每个箱的中心将放入 {it:x} 中。{cmd:replace} 选项表示如果这些变量已存在，可以被替换。

{phang}
{cmd:display} 指示显示一个简短的说明，指示箱的数量、第一个箱的下限和箱的宽度。显示的输出取决于是否指定了 {cmd:discrete} 选项。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:twoway__histogram_gen} 将以下结果存储在 {cmd:r()} 中：

{pstd}
标量：

	 {cmd:r(N)}      观察值数量
	 {cmd:r(bin)}    箱的数量
	 {cmd:r(width)}  箱的共通宽度
	 {cmd:r(start)}  {cmd:start()} 值或 {it:变量名} 的最小值
	 {cmd:r(min)}    第一个非空箱的下限
	 {cmd:r(max)}    最后一个箱的上限
	 {cmd:r(area)}   条形的面积

{pstd}
宏：

	 {cmd:r(type)}   "density"、"fraction" 或 "frequency"

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway__histogram_gen.sthlp>}