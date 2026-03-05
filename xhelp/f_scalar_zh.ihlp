
{help f_scalar:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:scalar(}{it:exp}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}限制名称解释为标量和矩阵{p_end}

{p2col:}表达式中的名称可以引用数据集中的变量名称、矩阵名称或标量名称。矩阵和标量可以与数据集中的变量同名。如果名称发生冲突，Stata 会假定您指的是数据集中的变量名称。{p_end}

{p2col:}{helpb matrix()} 和 {cmd:scalar()} 明确指出您所指的是矩阵和标量。{cmd:matrix()} 和 {cmd:scalar()} 是相同的功能；标量和矩阵不能具有相同的名称，因此不会混淆。输入 {cmd:scalar(x)} 明确表示您所指的是名为 {cmd:x} 的标量或矩阵，而不是名为 {cmd:x} 的变量（如果恰好存在一个具有该名称的变量）。{p_end}
{p2col: 域:}任何有效表达式{p_end}
{p2col: 范围:}评估 {it:exp}{p_end}
{p2colreset}{...}