
{help erm_integration_tab:English Version}
{hline}
{* *! version 1.0.1  15mar2019}{...}
{synopt :{opt intp:oints(#)}}设置在四个或多个维度上用于积分的积分（求积）点的数量；默认值为 {cmd:intpoints(128)}{p_end}
{synopt :{opt triint:points(#)}}设置在三个维度上用于积分的积分（求积）点的数量；默认值为 {cmd:triintpoints(10)}{p_end}
{synopt :{opt reintp:oints(#)}}设置用于随机效应积分的积分（求积）点的数量；默认值为 {cmd:reintpoints(7)}{p_end}
{synopt :{opt reintm:ethod(intmethod)}}随机效应的积分方法； {it:intmethod} 可以是 {cmdab:mv:aghermite}（默认值）或 {cmdab:gh:ermite}{p_end}