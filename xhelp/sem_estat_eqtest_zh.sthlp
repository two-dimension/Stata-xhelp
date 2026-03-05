{smcl}
{* *! version 1.0.8  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-eqtest-) name(sem_estat_eqtest)"}{...}
{vieweralsosee "[SEM] estat eqtest" "mansection SEM estateqtest"}{...}
{findalias assemeqtest}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] lrtest" "help sem_lrtest_zh"}{...}
{vieweralsosee "[SEM] test" "help sem_test_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_eqtest_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_eqtest_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_eqtest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_eqtest_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_eqtest_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_eqtest_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_eqtest_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_eqtest_zh##results"}
{help sem_estat_eqtest:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[SEM] estat eqtest} {hline 2}}方程级别的检验，所有系数均为零{p_end}
{p2col:}({mansection SEM estateqtest:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:estat} {cmdab:eqt:est} [{cmd:,} {opt tot:al} {opt nosvy:adjust}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 检验与置信区间 > 方程级 Wald 检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat eqtest} 只能在 {cmd:sem} 之后使用，但不能在 {cmd:gsem} 之后使用。

{pstd}
{cmd:estat eqtest} 显示每个方程的 Wald 检验，检验所有系数（不包括截距）是否为 0。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estateqtestRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt total} 在使用 {cmd:sem, group()} 进行估计时使用。它指定检验在各组之间进行汇总。

{phang}
{opt nosvyadjust} 用于 {opt svy} 估计命令。它指定在进行 Wald 检验时不进行默认的设计自由度调整。也就是说，检验是以 {bind:W/k ~ F(k,d)} 的方式进行，而不是以 {bind:(d-k+1)W/(kd) ~ F(k,d-k+1)} 的方式，其中 k 是检验的维度，d 是采样 PSUs 的总数减去总层数。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {findalias semeqtest}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. sem (price <- foreign mpg displacement) (weight <- foreign length),}{break}
	{cmd: cov(e.price*e.weight)}{p_end}

{pstd}检验所有系数是否为零{p_end}
{phang2}{cmd:. estat eqtest}{p_end}

{pstd}具有组别的模型{p_end}
{phang2}{cmd:. sem (price <- turn mpg displacement), group(foreign)}{p_end}

{pstd}检验所有系数是否为零{p_end}
{phang2}{cmd:. estat eqtest}{p_end}

{pstd}在各组之间汇总检验{p_end}
{phang2}{cmd:. estat eqtest, total}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat eqtest} 将以下内容存储在 {cmd:r()} 中：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组的数量{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:r(nobs)}}每组的样本大小{p_end}
{synopt:{cmd:r(test}[{cmd:_}{it:#}]{cmd:)}}检验统计量（针对组 {it:#}）{p_end}
{synopt:{cmd:r(test_total)}}汇总检验统计量（仅限 {cmd:total}）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_eqtest.sthlp>}