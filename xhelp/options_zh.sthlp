{smcl}
{* *! version 1.1.2  11feb2011}{...}
{findalias asfrsyntaxop}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 Language syntax" "help language_zh"}{...}
{viewerjumpto "Description" "options_zh##description"}{...}
{viewerjumpto "Examples" "options_zh##examples"}
{help options:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frsyntaxop}


{marker description}{...}
{title:描述}

{pstd}
选项通过将逗号放在命令的末尾，然后用空格逐个列出选项来指定：

{phang2}{cmd:. tabulate region agecat, chi2 row col}

{pstd}
在此示例中：

          {cmd:tabulate}            是   命令，
          {cmd:region} 和 {cmd:agecat}   是  变量名称，和
          {cmd:chi2}、{cmd:row} 和 {cmd:col}  是  选项。

{pstd}
选项之间没有逗号。

{pstd}
大多数选项是切换项 -- 它们指示是否要执行某个操作。上面的示例有三个选项，都是切换项。

{pstd}
某些选项接受参数。根据选项的不同，它可能会要求一个数字、字符串、变量，或多个变量（一个 {varlist}）或多个数字（一个 {it:{help numlist_zh}}）。

{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse citytemp2}{p_end}
{phang}{cmd:. tabulate region agecat, chi2 row col}

{phang}{cmd:. webuse hanley}{p_end}
{phang}{cmd:. roctab disease rating, table detail}

{phang}{cmd:. webuse regsmpl}{p_end}
{phang}{cmd:. regress ln_wage age c.age#c.age tenure, vce(cluster id) level(90)}

{phang}{cmd:. sysuse uslifeexp}{p_end}
{phang}{cmd:. line le_wm year, ylabel(0 20(10)80)}

{phang}{cmd:. webuse hbp3}{p_end}
{phang}{cmd:. decode female, generate(sex)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <options.sthlp>}