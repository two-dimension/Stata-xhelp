{smcl}
{* *! version 1.2.4  15may2018}{...}
{vieweralsosee "[FN] 按类别的函数" "mansection FN Functionsbycategory"}{...}
{vieweralsosee "[FN] 按名称的函数" "mansection FN Functionsbyname"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{vieweralsosee "[M-4] 引言" "help m4_intro_zh"}{...}
{findalias asfrfunctions}{...}
{viewerjumpto "描述" "functions_zh##description"}{...}
{viewerjumpto "简介" "functions_zh##intro"}{...}
{viewerjumpto "示例" "functions_zh##examples"}
{help functions:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[FN] 按类别的函数}}
{p_end}
{p2col:({mansection FN Functionsbycategory:查看完整的 PDF 手册条目})}{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

    以下类型的函数提供快捷参考：

        {c TLC}{hline 30}{c TT}{hline 25}{c TRC}
        {c |} 函数类型{space 13}{c |} 查看帮助                {c |}
        {c LT}{hline 30}{c +}{hline 25}{c RT}
        {c |} 日期和时间 {space 15}{c |} {help datetime functions}      {c |}
        {c |}{space 30}{c |}{space 25}{c |}
        {c |} 数学 {space 16}{c |} {help mathematical functions}  {c |}
        {c |}{space 30}{c |}{space 25}{c |}
        {c |} 矩阵 {space 22}{c |} {help matrix functions}        {c |}
        {c |}{space 30}{c |}{space 25}{c |}
        {c |} 编程 {space 17}{c |} {help programming functions}   {c |}
        {c |}{space 30}{c |}{space 25}{c |}
        {c |} 随机数 {space 15}{c |} {help random-number functions} {c |}
        {c |}{space 30}{c |}{space 25}{c |}
        {c |} 选择时间跨度 {space 8}{c |} {help time-series functions}   {c |}
        {c |}{space 30}{c |}{space 25}{c |}
        {c |} 统计 {space 17}{c |} {help statistical functions}   {c |}
        {c |}{space 30}{c |}{space 25}{c |}
        {c |} 字符串 {space 22}{c |} {help string functions}        {c |}
        {c |}{space 30}{c |}{space 25}{c |}
        {c |} 三角函数 {space 15}{c |} {help trigonometric functions} {c |}
        {c |}{space 30}{c |}{space 25}{c |}
        {c BLC}{hline 30}{c BT}{hline 25}{c BRC}


{marker intro}{...}
{title:简介}

{pstd}
函数在表达式中使用，简写为 {help exp_zh} 在语法图中。例如，{help generate_zh} 的简化语法为

{phang2}{cmd:generate} {it:newvar} {cmd:=} {it:exp}

{pstd}
因此，你可能会输入 "{cmd:generate loginc = ln(income)}"。{cmd:ln()} 是一个函数。

{pstd}
函数可以在任何表达式中指定。函数的参数可以是任何表达式，包括其他函数。

{pstd}
函数的参数用括号括起来，如果有多个参数，用逗号分隔。

{pstd}
当函数的值未定义时，函数返回 {it:missing} ({hi:.})。


{marker examples}{...}
{title:示例}

{phang}{cmd:. generate y = sqrt(abs(z*z-x*x-y))}

{phang}{cmd:. gen str20 new = cond(sex=="m","Mr. ", "Ms. ") + proper(name)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <functions.sthlp>}