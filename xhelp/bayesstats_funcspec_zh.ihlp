
{help bayesstats_funcspec:English Version}
{hline}
{* *! version 1.0.0  03apr2019}{...}
{marker funcspec}{...}
{marker args}{...}
{p 4 6 2}
{it:funcspec} 是 [{it:label}{cmd::}]{cmd:@}{it:func}{cmd:(}{it:arg1}[{cmd:,}
{it:arg2}]{cmd:)}, 其中
{it:label} 是一个有效的 Stata 名称；{it:func} 是一个官方或用户定义的
Mata 函数，该函数操作于列向量并返回一个实数标量；
而 {it:arg1} 和 {it:arg2} 是 {cmd:{c -(}_ysim}[{it:#}]{cmd:{c )-}},
{cmd:{c -(}_resid}[{it:#}]{cmd:{c )-}} 或
{cmd:{c -(}_mu}[{it:#}]{cmd:{c )-}} 中的一个。{it:arg2}
主要用于用户定义的 Mata 函数；请参见
{mansection BAYES bayespredictRemarksandexamplesDefiningteststatisticsusingMatafunctions:{it:使用 Mata 函数定义检验统计量}}
在 {bf:[BAYES] bayespredict} 中。
{p_end}