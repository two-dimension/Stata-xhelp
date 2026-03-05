{smcl}
{* *! version 1.0.2  30may2011}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "[MI] mi estimate using" "help mi_estimate using"}
{help mi_mcerroreform:English Version}
{hline}{...}
{title:蒙特卡洛误差估计未报告指数化结果}

{pstd}
在使用命令 {cmd:mi estimate, mcerror} 进行重放时，如果指定了 {manhelpi eform_option R} 中描述的选项，则不会报告指数化度量的结果的蒙特卡洛误差估计。要获得这些指数化结果的估计，必须在估计过程中使用 {it:eform_option} 结合 {helpb mi estimate} 或 {helpb mi estimate using}。例如，

{phang2}{cmd:  . mi estimate, mcerror eform:}{it: ...}{p_end}

{pstd}
然后，您还可以重新显示原始度量的结果的蒙特卡洛误差估计：

{phang2}{cmd:  . mi estimate, mcerror}{p_end}

{pstd}
或者显示指数化度量的结果：

{phang2}{cmd:  . mi estimate, mcerror eform}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_mcerroreform.sthlp>}