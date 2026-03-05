{smcl}
{* *! version 1.0.7  19oct2017}{...}
{viewerdialog test "dialog test"}{...}
{vieweralsosee "[SEM] test" "mansection SEM test"}{...}
{findalias assembequal}{...}
{findalias assemcorr}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat eqtest" "help sem_estat_eqtest_zh"}{...}
{vieweralsosee "[SEM] estat stdize" "help sem_estat_stdize_zh"}{...}
{vieweralsosee "[SEM] lincom" "help sem_lincom_zh"}{...}
{vieweralsosee "[SEM] lrtest" "help sem_lrtest_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "sem_test_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_test_zh##menu"}{...}
{viewerjumpto "Description" "sem_test_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_test_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_test_zh##options"}{...}
{viewerjumpto "Remarks" "sem_test_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_test_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_test_zh##results"}
{help sem_test:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[SEM] test} {hline 2}}Wald检验线性假设{p_end}
{p2col:}({mansection SEM test:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}
{cmdab:te:st}
{it:{help test##coeflist:coeflist}}

{phang2}
{cmdab:te:st}
{it:{help test##exp:exp}} {cmd:=} {it:{help test##exp:exp}} [{cmd:=} ...]

{phang2}
{cmdab:te:st}
{cmd:[}{it:{help test##eqno:eqno}}{cmd:]}
[{cmd::} {it:{help test##coeflist:coeflist}}]

{phang2}
{cmdab:te:st}
{cmd:[}{it:{help test##eqno:eqno}} {cmd:=}
            {it:{help test##eqno:eqno}} [{cmd:=} ...]{cmd:]}
[{cmd::} {it:{help test##coeflist:coeflist}}]

{p 8 14 2}
{cmdab:te:st}
{cmd:(}{it:{help test##spec:spec}}{cmd:)}
[{cmd:(}{it:{help test##spec:spec}}{cmd:)} ...]
[{cmd:,} {it:{help test_zh:test_options}}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 测试与置信区间 > 线性假设的 Wald 测试}


{marker description}{...}
{title:描述}

{pstd}
{cmd:test} 是在 {cmd:sem}、{cmd:gsem} 和其他 Stata 估计命令之后使用的后估计命令。

{pstd}
{cmd:test} 执行您指定的假设或假设的 Wald 检验。 在 {cmd:sem} 和 {cmd:gsem} 的情况下，您必须使用 {cmd:_b[]} 系数符号。

{pstd}
请参见 {help test_zh:[R] test}。 此外，还在那里记录了 {cmd:testparm}。{cmd:testparm} 不能在 {cmd:sem} 或 {cmd:gsem} 之后使用，因为它的语法依赖于使用简写引用系数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM testRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
请参见 {it:{help test##options_test:测试的选项}} 在 {help test_zh:[R] test} 中。


{marker remarks}{...}
{title:备注}

{pstd}    
请参见 {findalias sembequal} 和 {findalias semcorr}。

{pstd}    
{cmd:test} 在 SEM 的度量中工作，也就是说路径系数、方差和协方差。 如果您想以标准化系数和相关的形式来框定您的测试，并且您使用 {cmd:sem} 拟合模型，而不是 {cmd:gsem}，那么请在 {cmd:test} 前加上 {cmd:estat stdize:}; 请参见 {help sem_estat_stdize_zh:[SEM] estat stdize}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5)}{p_end}

{pstd}显示系数图例{p_end}
{phang2}{cmd:. sem, coeflegend}{p_end}

{pstd}检验 Affective 所有系数是否为零{p_end}
{phang2}{cmd:. test _b[a1:Affective] = _b[a2:Affective] = _b[a3:Affective]}{break}
	{cmd: = _b[a4:Affective] = _b[a5:Affective]}{p_end}

{pstd}检验 {cmd:a1} 和 {cmd:a2} 的误差方差是否相等{p_end}
{phang2}{cmd:. test _b[/var(e.a1)] =  _b[/var(e.a2)]}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {it:{help test##results:存储结果}} 在
{help test_zh:[R] test}.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_test.sthlp>}