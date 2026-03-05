
{help ciw_paralleloptdes:English Version}
{hline}
{* *! version 1.0.0  27feb2019}{...}
{phang}
{opt parallel} 请求对至少两个研究参数所指定的数字列表进行并行计算，作为命令参数，星号选项允许使用 {it:{help numlist_zh}}，或两者兼有。也就是说，当指定 {opt parallel} 时，第一个计算使用每个数字列表中的第一个值，第二个计算使用第二个值，以此类推。 如果指定的数字列表大小不同，较短列表中的最后一个值将在剩余计算中使用。 默认情况下，结果是针对所有数字列表的组合进行计算。

{pmore}
例如，让 a_1 和 a_2 为一个研究参数的值列表，让 b_1 和 b_2 为另一个研究参数的值列表。默认情况下，{cmd:ciwidth} 将计算两个研究参数中所有可能的值组合的结果：(a_1,b_1)、(a_1,b_2)、(a_2,b_1) 和 (a_2,b_2)。如果指定了 {opt parallel}，{cmd:ciwidth} 将只计算两个组合的结果：(a_1,b_1) 和 (a_2,b_2)。
{p_end}