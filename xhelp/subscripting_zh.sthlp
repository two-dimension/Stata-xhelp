{smcl}
{* *! version 1.1.4  07apr2017}{...}
{findalias asfrsubscripts}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[U] 11 语言语法 (by)" "help by_zh"}{...}
{vieweralsosee "[U] 11.4 变量名和变量列表" "help varlist_zh"}{...}
{vieweralsosee "[U] 13 函数和表达式 (expression)" "help exp_zh"}{...}
{vieweralsosee "[U] 13.4 系统变量 (_variables)" "help _variables_zh"}{...}
{viewerjumpto "备注" "subscripting_zh##remarks"}{...}
{viewerjumpto "示例" "subscripting_zh##examples"}
{help subscripting:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frsubscripts}


{marker remarks}{...}
{title:备注}

{pstd}
变量和矩阵的单个元素可以通过下标引用。有关矩阵下标的帮助，请参阅 {manhelp matrix_define P:matrix define}。这里讨论了 {help variables} 的下标。

{pstd}
变量上的单个观察值可以通过对变量进行下标引用。显式下标通过在变量名后面加上方括号来指定，方括号中包含一个 {help expression}。下标表达式的结果会截断为整数，并返回指定观察值的变量值。如果下标表达式的值小于 1 或大于 _N（见 {help _variables_zh}），则返回缺失值。

{pstd}例如：

{phang2}{cmd:. generate xlag = x[_n-1]}

{pstd}生成变量 {cmd:xlag}，其包含 {cmd:x} 的滞后值。 {cmd:_n} 被 Stata 理解为当前观察的观察号。 {cmd:_n-1} 计算为上一观察的观察号。因为当 {cmd:_n} 为 1 时，{cmd:x[_n-1]} 引用的是 {cmd:x} 的不存在的零元素，所以 {cmd:xlag} 的第一观察值为缺失。 （请参见 {findalias frtsvarlists}，讨论时间序列运算符提供了一种更健壮和方便的方法来生成变量的滞后和超前值。）

{pstd}
{help by_zh} 前缀命令可以与 {cmd:_n} 结合使用，以便在组内进行下标。

{pstd}例如：

{phang2}{cmd:. by pid (time), sort: generate growth = (bp - bp[_n-1])/bp}

{pstd}生成 {cmd:growth} 变量，作为每个 {cmd:pid} 的 {cmd:bp} 的相对第一差。对于每个 {cmd:pid} 的 {cmd:growth} 的第一观察值将缺失，因为 {cmd:_n} 相对于每个独立的 {cmd:pid} 进行解释。


{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse womenwage}{p_end}
{phang}{cmd:. by wagecat: keep if _n == 1}{p_end}
{phang}{cmd:. generate wage1 = wagecat[_n-1]}

{phang}{cmd:. webuse evignet, clear}{p_end}
{phang}{cmd:. by caseid (pref), sort: generate best = pref == pref[_N]}
              {cmd:if job == 1}

{phang}{cmd:. webuse mfail, clear}{p_end}
{phang}{cmd:. stgen nf = nfailures()}{p_end}
{phang}{cmd:. egen newid = group(id nf)}{p_end}
{phang}{cmd:. by newid (t), sort: replace t = t - t0[1]}{p_end}
{phang}{cmd:. by newid: generate newt0 = t0 - t0[1]}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <subscripting.sthlp>}