
{help erm_tselopts_table:English Version}
{hline}
{* *! version 1.0.2  26mar2019}{...}
{marker tselopts}{...}
{synoptset 31 tabbed}{...}
{synopthdr:tselopts}
{synoptline}
{syntab :模型}
{p2coldent:* {cmd:ll(}{varname}|{it:#}{cmd:)}}左截断变量或限制{p_end}
{p2coldent:* {cmd:ul(}{varname}|{it:#}{cmd:)}}右截断变量或限制{p_end}
{synopt :{opt main}}将受限选择变量添加到主方程中{p_end}
{synopt :{opt nore}}在 tobit 选择模型中不包含随机效应{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包括在模型中，系数限制为 1{p_end}
{synoptline}
{p 4 6 2}* 你必须指定 {cmd:ll()} 或 {cmd:ul()} 之一。{p_end}