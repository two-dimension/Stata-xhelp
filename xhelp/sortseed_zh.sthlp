{smcl}
{* *! version 1.0.6  24may2013}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{viewerjumpto "Syntax" "sortseed_zh##syntax"}{...}
{viewerjumpto "Description" "sortseed_zh##description"}{...}
{viewerjumpto "Remarks" "sortseed_zh##remarks"}{...}
{viewerjumpto "Example" "sortseed_zh##example"}
{help sortseed:English Version}
{hline}{...}
{title:标题}

{p 4 26 2}
{hi:[P] 设置排序种子} {hline 2} 设置用来随机打破排序中平局的默认种子


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:set} {opt sortseed} {it:#} 


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:sortseed} 指定用于随机数生成器的种子，当数据被排序时用于打破键值之间的平局。 这影响到 {help sort_zh} 和 {help gsort_zh} 命令，以及任何使用排序作为计算一部分的命令。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:set sortseed} 应该很少使用。只有在进行重复性研究时，才提供访问排序种子的权限，因为有时需要设置排序种子以产生在多次运行时结果可能微小变化的计算的数字完全相同的结果。 这些变化通常发生在命令显示的数字之后，但在重复性研究中仍可能会进行比较。

{pstd}
可以在发出 {cmd:query} {cmd:sortseed} 命令后，通过访问存储的结果 {cmd:r(sortseed)} 来获取当前的 {cmd:sortseed} 值。

{pstd}
强烈不建议在此类比较之外使用 {cmd:set sortseed}。许多数据操作依赖于排序的完全和正确指定，设置排序种子可能掩盖数据管理中的逻辑问题。有关讨论，请参见 
{stata "view browse http://www.stata.com/statalist/archive/2005-09/msg00582.html":关于此主题的 Statalist 帖子}。
{p_end}


{marker example}{...}
{title:示例}

{pstd}获取排序种子，执行一些改变数据排序顺序（从而改变排序种子）的操作，然后重置排序种子。{p_end}
{phang2}{cmd:. query sortseed}{p_end}
{phang2}{cmd:. local origseed = r(sortseed)}{p_end}
{phang2}...任何改变数据排序顺序的命令...{p_end}
{phang2}{cmd:. set sortseed `origseed'}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sortseed.sthlp>}