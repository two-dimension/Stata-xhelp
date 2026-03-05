
{smcl}
{* *! version 1.0.3  11feb2011}{...}
{title:过时的命令}

{help hreg:English Version}
{hline}
    与其输入{col 41}请键入
    {hline 29}        {hline 33}
    {cmd:hreg} {it:yvar xvars}{col 41}{cmd:regress} {it:yvar xvars}{cmd:, robust}
    {cmd:hreg} {it:yvar xvars}{cmd:, group(}{it:gvar}{cmd:)}{col 41}{cmd:regress} {it:yvar xvars}{cmd:, cluster(}{it:gvar}{cmd:)}
    {cmd:hreg} {it:yvar xvars} {cmd:[pw=}{it:w}{cmd:]}{col 41}{cmd:regress} {it:yvar xvars} {cmd:[pw=}{it:w}{cmd:]}
    {hline 29}        {hline 33}
{col 41}注意： {cmd:cluster()} 表示 {cmd:robust}
{col 48}{cmd:pweight}s 表示 {cmd:robust}

{pstd}
同样适用于其他 h* 命令：使用基本命令及选项 {cmd:robust} 和 {cmd:cluster()}。

{pstd}
唯一的区别是，新选项 {cmd:robust} 对 VCE 应用的自由度修正，而旧的 h* 命令没有。
{cmd:robust} 更为优越。

    关于等效命令的帮助{col 41}请参见
    {hline 29}{col 41}{hline 29}
    {cmd:hreg}{col 41}help {help regress_zh}
    {cmd:hareg}{col 41}help {help areg_zh}
    {cmd:hlogit}{col 41}help {help logit_zh}
    {cmd:hprobit}{col 41}help {help probit_zh}
    {cmd:hereg}{col 41}help {help streg_zh}
    {hline 29}{col 41}{hline 29}

{pstd}
程序员： {cmd:_huber} 被 {help _robust_zh} 替代。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hreg.sthlp>}