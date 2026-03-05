
{smcl}
{* *! version 1.0.2  11feb2011}{...}
{title:过时的命令}

{help varfcast:English Version}
{hline}
{pstd}
2004年7月对Stata 版本8.2时间序列命令的更新使几个命令变得过时。旧命令仍然可以使用，但现在没有文档支持。

{pstd}
下表将旧命令与其替代命令关联起来。

{col 9}{hi:过时命令}{col 35}{hi:替代命令}
{col 9}{hline 39}
{col 9}{cmd:varfcast}{col 35}{help fcast_zh}
{col 9}{cmd:varfcast compute}{col 35}{helpb fcast compute}
{col 9}{cmd:varfcast graph}{col 35}{helpb fcast graph}
{col 9}{cmd:varirf}{col 35}{help irf_zh}
{col 9}{cmd:varirf create}{col 35}{helpb irf create}
{col 9}{cmd:varirf graph}{col 35}{helpb irf graph}
{col 9}{cmd:varirf cgraph}{col 35}{helpb irf cgraph}
{col 9}{cmd:varirf ograph}{col 35}{helpb irf ograph}
{col 9}{cmd:varirf ctable}{col 35}{helpb irf ctable}
{col 9}{cmd:varirf add}{col 35}{helpb irf add}
{col 9}{cmd:varirf describe}{col 35}{helpb irf describe}
{col 9}{cmd:varirf drop}{col 35}{helpb irf drop}
{col 9}{cmd:varirf rename}{col 35}{helpb irf rename}
{col 9}{cmd:varirf set}{col 35}{helpb irf set}
{col 9}{cmd:varirf table}{col 35}{helpb irf table}

{pstd}
命令 {cmd:varfcast clear}、{cmd:varirf dir} 和 {cmd:varirf erase} 已过时且没有替代命令。{cmd:fcast} 的结构并不要求提供 {cmd:varfcast clear} 的等效命令。请用 {help dir_zh} 或 {help erase_zh} 代替 {cmd:varirf dir} 或 {cmd:varirf erase}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varfcast.sthlp>}