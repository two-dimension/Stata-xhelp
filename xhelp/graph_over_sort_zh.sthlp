{smcl}
{* *! version 1.1.3  11feb2011}{...}
{* 本帮助文件由图形条形图、箱形图和点图对话框调用}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}
{help graph_over_sort:English Version}
{hline}{...}
{title:与 {it:Over} 指定的 {it:Sort} 相关的选项}

{pstd}
{it:over} 选项可以与几种不同类型的图形（即条形图、箱形图和点图）一起指定。因此，特定图形类型的分组被称为类别。

{col 5}{bf:Sort} 接受{col 31}描述
    {hline -2}
{p 4 32 2}
{it:varname} {space 17} 根据 {it:varname} 对类别进行排序

{p 4 32 2}
{it:#} {space 23} 根据 varlist 中的 {it:#}th 变量对类别进行排序

{p 4 32 2}
{cmd:(}{it:stat}{cmd:)} {it:varname} {space 10}
根据 {it:varname} 的 {it:stat} 对类别进行排序；有关可能的 {it:stat} 列表，请参见 {manhelp collapse D}
{p_end}
    {hline -2}

{p 4 4 2}
{bf:Sort descending} 反转默认或指定的排序顺序。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_over_sort.sthlp>}