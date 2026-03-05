{smcl}
{* *! version 1.1.2  07apr2017}{...}
{findalias asfrvarnew}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "[U] 11.4 变量名和变量列表" "help varname_zh"}{...}
{viewerjumpto "描述" "newvar_zh##description"}{...}
{viewerjumpto "示例" "newvar_zh##examples"}
{help newvar:English Version}
{hline}{...}
{title:标题}

    {hi:newvar} (来自 {findalias frvarnew})


{marker description}{...}
{title:描述}

{pstd}
{it:newvar} 是尚未在数据集中存在的变量的名称。 {it:newvar} 是一个新的 {it:{help varname_zh}}，例如

{p 8 34 2}{cmd:x}{p_end}
{p 8 34 2}{cmd:myvar}{p_end}
{p 8 34 2}{cmd:Myvar}{p_end}
{p 8 34 2}{cmd:inc92}{p_end}
{p 8 34 2}{cmd:reciprocal_of_miles_per_gallon}{p_end}
{p 8 34 2}{cmd:_odd}{p_end}
{p 8 34 2}{cmd:_1994}{p_end}

{pstd}
如果您有兴趣创建新变量的变量列表，请参见 {help newvarlist_zh}。


{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse hbp2}{p_end}
{phang}{cmd:. generate not_white = race!=1}{p_end}
{phang}{cmd:. encode sex, generate(gender)}

{phang}{cmd:. webuse hbp3, clear}{p_end}
{phang}{cmd:. decode female, generate(sex)}

{phang}{cmd:. sysuse auto, clear}{p_end}
{phang}{cmd:. lowess mpg weight, generate(mpghat)}{p_end}
{phang}{cmd:. generate weight2 = weight^2}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <newvar.sthlp>}