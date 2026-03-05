{smcl}
{* *! version 1.0.1  11feb2011}{...}
{* 此帮助文件由 nlcom.dlg 调用}{...}
{vieweralsosee "[R] nlcom" "help nlcom_zh"}
{help nlcom_examples:English Version}
{hline}{...}
{title:{bf:nlcom} 非线性表达式示例}

    {title:单方程模型规格:}

{pmore}
系数表示为 {cmd:_b[}{it:varname}{cmd:]}。

{phang3}
{cmd:_b[x]/_b[y]}

{phang3}
{cmd:exp(_b[x] + _b[y])}


    {title:多方程模型规格:}

{pmore}
要指定一个方程的系数，使用 {cmd:[}{it:equation}{cmd:]_b[}{it:varname}{cmd:]}。在这些示例中，A 是一个方程，x 和 y 是变量名称。  

{phang3}
{cmd:[A]_b[x]/[A]_b[y]} 

{phang3}
{cmd:exp([A]_b[x] + [A]_b[y])}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nlcom_examples.sthlp>}