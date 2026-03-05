{smcl}
{* *! version 1.0.8  19oct2017}{...}
{viewerdialog lrtest "dialog lrtest"}{...}
{vieweralsosee "[SEM] lrtest " "mansection SEM lrtest"}{...}
{findalias assemmimic}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat eqtest" "help sem_estat_eqtest_zh"}{...}
{vieweralsosee "[SEM] estat stdize" "help sem_estat_stdize_zh"}{...}
{vieweralsosee "[SEM] test" "help sem_test_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lrtest" "help lrtest_zh"}{...}
{viewerjumpto "Syntax" "sem_lrtest_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_lrtest_zh##menu"}{...}
{viewerjumpto "Description" "sem_lrtest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_lrtest_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "sem_lrtest_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_lrtest_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_lrtest_zh##results"}
{help sem_lrtest:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[SEM] lrtest} {hline 2}}似然比检验线性假设{p_end}
{p2col:}({mansection SEM lrtest:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

        {c -(}{cmd:sem}|{cmd:gsem}{c )-} ...{cmd:,} ...{right:(拟合模型 1)       }

{phang2}{cmd:estimates store} {it:modelname1}

        {c -(}{cmd:sem}|{cmd:gsem}{c )-} ...{cmd:,} ...{right:(拟合模型 2)       }

{phang2}{cmd:estimates store} {it:modelname2}

        {cmd:lrtest} {it:modelname1} {it:modelname2}{right:(比较模型)       }

{phang}
其中一个模型是约束模型，另一个是非约束模型。
{cmd:lrtest} 计算参数以确定哪个模型是约束模型，哪个是非约束模型，因此哪个模型是哪个并不重要。


{pstd}
关于与 {cmd:sem} 一起使用的警告：
不要从模型中省略变量（观察到的或潜在的）。相反，应将其系数约束为 0。被比较的模型必须包含相同的变量。这是因为标准 SEM 的似然值是模型中出现的变量的函数。尽管如此，在放宽条件正态性假设下，使用 {cmd:lrtest} 是合适的。

{pstd}
关于 {cmd:gsem} 的说明：上述警告不适用于 {cmd:gsem}，也不适用于其他 Stata 估计命令。无论是省略变量还是将系数约束为 0，结果都是相同的。广义的 SEM 似然是基于外生变量的条件。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 检验与置信区间 > 似然比检验}


{marker description}{...}
{title:描述}

{pstd}    
{cmd:lrtest} 是在 {cmd:sem}、{cmd:gsem} 和其他 Stata 估计命令后使用的后估计命令。

{pstd}    
{cmd:lrtest} 执行比较模型的似然比检验。 
请参见 {help lrtest_zh:[R] lrtest}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM lrtestRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}
    
{pstd}
请参见 {findalias semmimic} 和 {findalias gsemtlevel}。

{pstd}
使用 {cmd:lrtest} 在 {cmd:sem} 之后时，您必须注意比较的模型具有相同的观察和潜在变量。例如，以下是允许的：

{phang2}{cmd:. sem (L1 -> x1 x2 x3) (L1 <- x4 x5) (x1 <- x4) (x2 <- x5)}{p_end}

{phang2}{cmd:. estimates store m1}{p_end}

{phang2}{cmd:. sem (L1 -> x1 x2 x3) (L1 <- x4 x5)}{p_end}

{phang2}{cmd:. estimates store m2}{p_end}

{phang2}{cmd:. lrtest m1 m2}{p_end}

{pstd}
这是允许的，因为两个模型都包含相同的变量，即 {cmd:L1}、{cmd:x1}、...、{cmd:x5}，尽管第二个模型省略了一些路径。

{pstd}
以下会产生无效结果：
    
{phang2}{cmd:. sem (L1 -> x1 x2 x3) (L1 <- x4 x5) (x1 <- x4) (x2 <- x5)}{p_end}

{phang2}{cmd:. estimates store m1}{p_end}

{phang2}{cmd:. sem (L1 -> x1 x2 x3) (L1 <- x4)}{p_end}

{phang2}{cmd:. estimates store m2}{p_end}

{phang2}{cmd:. lrtest m1 m2}{p_end}

{pstd}
它会产生无效结果，因为第二个模型不包括变量 {cmd:x5}，而第一个模型包含。为了正确运行此测试，您应该键入 

   
{phang2}{cmd:. sem (L1 -> x1 x2 x3) (L1 <- x4 x5) (x1 <- x4) (x2 <- x5)}{p_end}

{phang2}{cmd:. estimates store m1}{p_end}

{phang2}{cmd:. sem (L1 -> x1 x2 x3) (L1 <- x4 x5@0)}{p_end}

{phang2}{cmd:. estimates store m2}{p_end}

{phang2}{cmd:. lrtest m1 m2}{p_end}

{pstd}
如果我们使用 {cmd:gsem} 而不是 {cmd:sem}，上述所有操作仍然有效。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_mimic1}{p_end}

{pstd}拟合简化模型{p_end}
{phang2}{cmd:. sem (SubjSES -> s_income s_occpres s_socstat)}{break}
	{cmd: (SubjSES <- income occpres)}{p_end}

{pstd}存储结果{p_end}
{phang2}{cmd:. estimates store mimic1}{p_end}

{pstd}拟合完整模型{p_end}
{phang2}{cmd:. sem (SubjSES -> s_income s_occpres s_socstat)}{break}
	{cmd: (SubjSES <- income occpres) (s_income <- income)}{break}
	{cmd: (s_occpres <- occpres)}{p_end}

{pstd}执行似然比检验{p_end}
{phang2}{cmd:. lrtest mimic1 .}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_melanoma}{p_end}

{pstd}拟合三层负二项模型{p_end}
{phang2}{cmd:. gsem (deaths <- uv M1[nation] M2[nation>region]),}{break}
 	{cmd:nbreg exposure(expected)}{p_end}

{pstd}存储结果{p_end}
{phang2}{cmd:. estimates store nbreg}

{pstd}拟合三层泊松模型{p_end}
{phang2}{cmd:. gsem (deaths <- uv M1[nation] M2[nation>region]),}{break} 
        {cmd:poisson exposure(expected)}{p_end}

{pstd}执行似然比检验{p_end}
{phang2}{cmd:. lrtest nbreg .}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参阅 {it:{help lrtest##results:存储结果}} 在
{help lrtest_zh:[R] lrtest} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_lrtest.sthlp>}