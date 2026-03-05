{smcl}
{* *! version 1.0.4  11feb2011}{...}
{* 此帮助文件由 graph_matrix.dlg 调用}{...}
{vieweralsosee "[G-2] graph matrix" "help graph_matrix_zh"}
{help gdiagonal:English Version}
{hline}{...}
{title:对角线标签}

{pstd}
对角线标签的数量与 {it:varlist} 中的变量数量相同，用于 {bind:{cmd:graph matrix}}。默认情况下，变量标签被用作对角线标签。如果您希望自定义对角线标签，可以在此编辑框中指定字符串列表。

{pstd}
尽管有时您可以不使用它们，但始终明智的是将每个字符串用引号或复合双引号括起来。{bind:string of {cmd:.}} 表示 Stata 应使用默认标签。如果标签数量少于变量数量，其余的将被视为默认变量标签。 


{title:示例:}

{pstd}
{cmd:变量:} price weight mpg

    {cmd:对角线标签:} "美国美元" Pounds "每加仑英里数"
    {cmd:    或          } "美国美元" {cmd:.} "每加仑英里数"
    {cmd:    或          } {cmd:.} "Pounds" "每加仑英里数"
    {cmd:    或          } "美国美元" 

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gdiagonal.sthlp>}