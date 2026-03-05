
{help svy_notes_common:English Version}
{hline}
{* *! version 1.0.9  22dec2014}{...}
{p 4 6 2}
{cmd:svy} 要求使用 {help svyset_zh} 来识别调查设计变量。
{p_end}
{p 4 6 2}
{it:command} 定义要执行的估计命令。 {help by_zh} 前缀不能作为 {it:command} 的一部分。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {helpb svy postestimation:[SVY] svy postestimation}。
{p_end}
{p 4 6 2}
警告：使用 {cmd:if} 或 {cmd:in} 限制通常不会产生子群体的正确方差估计。 要计算子群体的估计值，请使用 {cmd:subpop()} 选项。
{p_end}