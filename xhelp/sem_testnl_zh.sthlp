{smcl}
{* *! version 1.0.6  19oct2017}{...}
{viewerdialog testnl "dialog testnl"}{...}
{vieweralsosee "[SEM] testnl" "mansection SEM testnl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat eqtest" "help sem_estat_eqtest_zh"}{...}
{vieweralsosee "[SEM] estat stdize" "help sem_estat_stdize_zh"}{...}
{vieweralsosee "[SEM] lrtest" "help sem_lrtest_zh"}{...}
{vieweralsosee "[SEM] nlcom" "help sem_nlcom_zh"}{...}
{vieweralsosee "[SEM] test" "help sem_test_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] testnl" "help testnl_zh"}{...}
{viewerjumpto "Syntax" "sem_testnl_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_testnl_zh##menu"}{...}
{viewerjumpto "Description" "sem_testnl_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_testnl_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_testnl_zh##options"}{...}
{viewerjumpto "Remarks" "sem_testnl_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_testnl_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_testnl_zh##results"}
{help sem_testnl:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[SEM] testnl} {hline 2}}非线性假设的Wald检验{p_end}
{p2col:}({mansection SEM testnl:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 33 2}
{cmd:testnl} {it:{help testnl##exp:exp}} {cmd:=} {it:{help testnl##exp:exp}}
       [{cmd:=} ...] [{cmd:,} {it:{help testnl_zh:options}}]

{p 8 33 2}
{cmd:testnl} {cmd:(}{it:{help testnl##exp:exp}} {cmd:=}
       {it:{help testnl##exp:exp}}
     [{cmd:=} ...]{cmd:)}
     [{cmd:(}{it:{help testnl##exp:exp}} {cmd:=} {it:{help testnl##exp:exp}}
     [{cmd:=} ...]{cmd:)} {it:...}]
     [{cmd:,} {it:{help testnl_zh:options}}] 


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 测试和置信区间 > 非线性假设的Wald检验}


{marker description}{...}
{title:说明}

{pstd}
{cmd:testnl} 是在 {cmd:sem}、{cmd:gsem} 和其他 Stata 估计命令之后使用的后估计命令。

{pstd}
{cmd:testnl} 执行非线性假设的Wald检验。在 {cmd:sem} 和 {cmd:gsem} 的情况下，您必须使用 {cmd:_b[]} 系数表示法。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM testnlRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
请参见 {it:{help testnl##options:选项}} 在 {help testnl_zh:[R] testnl} 中。


{marker remarks}{...}
{title:备注}

{pstd} 
{cmd:testnl} 是基于 SEM 的度量工作，这意味着路径系数、方差和协方差。如果您想以标准化系数和相关性的形式来框架您的检验，并且您使用 {cmd:sem} 而不是 {cmd:gsem} 拟合模型，则在 {cmd:testnl} 前加上 {cmd:estat stdize:}；请参见 {help sem_estat_stdize_zh:[SEM] estat stdize}。

{pstd} 
{cmd:estat stdize:} 是不必要的，因为在使用 {cmd:testnl} 时，您希望每个的位置标准化系数或相关性时，您可以直接输入公式。如果您这么做，您将获取相同的答案，除了数值精度。在这种情况下，使用 {cmd:estat stdize:} 前缀生成的答案会更加准确，因为 {cmd:estat stdize:} 能够在计算的某一部分替代一个分析导数，而 {cmd:testnl} 在执行整个计算时会被迫使用数值导数。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5)}{p_end}

{pstd}测试一个非线性约束{p_end}
{phang2}{cmd:. testnl _b[c3:Cognitive] = 1/_b[c2:Cognitive]}{p_end}

{pstd}测试多个非线性约束{p_end}
{phang2}{cmd:. testnl (_b[c3:Cognitive] = 1/_b[c2:Cognitive])}{break}
	{cmd: (_b[a3:Affective] = 1/_b[a2:Affective])}{p_end}

{pstd}分别测试多个非线性约束，并使用Holm方法调整p值{p_end}
{phang2}{cmd:. testnl (_b[c3:Cognitive] = 1/_b[c2:Cognitive])}{break}
	{cmd: (_b[a3:Affective] = 1/_b[a2:Affective]), mtest(holm)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {it:{help testnl##results:存储结果}} 在
{help testnl_zh:[R] testnl}.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_testnl.sthlp>}