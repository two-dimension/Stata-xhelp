{smcl}
{* *! version 1.1.5  11may2018}{...}
{findalias asfrexp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 数据类型" "help data_types_zh"}{...}
{vieweralsosee "[FN] 按类别划分的函数" "help functions_zh"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "[U] 13.2 运算符" "help operators"}{...}
{vieweralsosee "[U] 13.7 显式下标" "help subscripting_zh"}{...}
{vieweralsosee "[U] 18.3.5 双引号" "help quotes_zh"}{...}
{viewerjumpto "备注" "exp_zh##remarks"}{...}
{viewerjumpto "示例" "exp_zh##examples"}
{help exp:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frexp}


{marker remarks}{...}
{title:备注}

{pstd}
代数和字符串表达式是采用自然的方式，在标准的层次规则下指定的。你可以自由使用括号来强制进行不同顺序的计算。

{pstd}
例如：

{phang2}{cmd:. generate new = myv+2/oth}

{pstd}
被解释为

{phang2}{cmd:. generate new = myv+(2/oth)}

{pstd}
如果你想要 (myv+2)/oth，你可以输入

{phang2}{cmd:. generate new = (myv+2)/oth}


{pstd}
在 Stata 语言的多个地方都可以找到表达式；参见 {help language_zh}。上面用 {help generate_zh} 命令演示了 "{cmd:=}{it:exp}" 语言元素。"{cmd:if} {it:exp}" 语言元素是另一个允许使用表达式的地方。几乎所有 Stata 命令都允许使用 "{cmd:if} {it:exp}"。例如，在

{phang2}{cmd:. summarize mrg dvc if region=="West" & mrg>.02}

{pstd}
中的 {cmd:region=="West" & mrg>.02} 是一个逻辑表达式。


{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. generate weight2 = weight^2}

{phang}{cmd:. webuse census12, clear}{p_end}
{phang}{cmd:. summarize marriage_rate divorce_rate if region == "West" &}
          {cmd:marriage_rate > .015}

{phang}{cmd:. drop _all}{p_end}
{phang}{cmd:. set obs 10}{p_end}
{phang}{cmd:. generate x = _n^3 - 10*_n^2 + 5*_n}{p_end}
{phang}{cmd:. generate z = x + 50*rnormal()}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <exp.sthlp>}