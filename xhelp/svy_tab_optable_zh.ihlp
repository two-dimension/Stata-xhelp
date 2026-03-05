
{help svy_tab_optable:English Version}
{hline}
{* *! version 1.0.8  01mar2017}{...}
{marker svy_options}{...}
{synopthdr:svy_options}
{synoptline}
{syntab:if/in}
{synopt :{opt sub:pop}{cmd:(}[{varname}] [{it:{help if_zh}}]{cmd:)}}识别一个子群体{p_end}

{syntab:SE}
{synopt :{it:{help bootstrap_options_zh}}}更多
	允许与自助变异估计一起使用的选项{p_end}
{synopt :{it:{help brr_options_zh}}}更多
	允许与BRR变异估计一起使用的选项{p_end}
{synopt :{it:{help jackknife_options_zh}}}更多
	允许与切块变异估计一起使用的选项{p_end}
{synopt :{it:{help sdr_options_zh}}}更多
	允许与SDR变异估计一起使用的选项{p_end}
{synoptline}
{p 4 6 2}
{cmd:svy}要求使用
{cmd:svyset} 识别调查设计变量；请参见 {manhelp svyset SVY}。
{p_end}
{p 4 6 2}
请参见 {manhelp svy_postestimation SVY:svy postestimation}，以获取估计后可用的功能。{p_end}
{p 4 6 2}
警告：使用 {cmd:if} 或 {cmd:in} 限制通常不会生成正确的子群体变异估计。要计算子群体的估计值，请使用 {cmd:subpop()} 选项。
{p_end}