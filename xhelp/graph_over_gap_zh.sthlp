{smcl}
{* *! version 1.1.3  11feb2011}{...}
{* 此帮助文件由图形条、图形框和图形点对话框调用}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}
{help graph_over_gap:English Version}
{hline}{...}
{title:与 {it:Gap} 相关的选项，指定为 {it:Over}}

{pstd}
{it:over} 选项可以与几种不同类型的图形（即条形图、箱线图和点图）一起指定。因此，特定图形类型的 over 组被简单地称为类别。

{col 5}{bf:Gap} 接受{col 31}描述
    {hline -2}
{p 4 32 2}
{it:#}{space 24} 将 {bf:Over} 组类别之间的间隙指定为百分比。

{p 4 32 2}
{it:*#}{space 23} 将 {bf:Over} 组类别之间的间隙指定为乘数。
{p_end}
{col 5}{hline -2}
{p 4 4 2}

{phang}
{cmd:gap(}{it:#}{cmd:)} 和
{cmd:gap(*}{it:#}{cmd:)}
    指定 {cmd:over} 组中类别之间的间隙。
    {cmd:gap(}{it:#}{cmd:)} 以宽度百分比单位指定，因此
    {cmd:gap(67)} 代表条形图、箱线图或线条的三分之二宽度。
    {cmd:gap(*}{it:#}{cmd:)} 允许修改默认间隙。
    {cmd:gap(*1.2)} 将间隙增加20%，而 {cmd:gap(*.8)} 将间隙减少20%。

{pstd}
{bf:注意：} {it:gap} 选项在点图中很少使用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_over_gap.sthlp>}