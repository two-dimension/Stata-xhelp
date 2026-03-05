{smcl}
{* *! version 1.0.0  12jun2019}{...}
{vieweralsosee "[D] assertnested" "mansection D assertnested"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] assert" "help assert_zh"}{...}
{vieweralsosee "[CM] Intro 2" "mansection CM Intro2"}{...}
{vieweralsosee "[P] capture" "help capture_zh"}{...}
{vieweralsosee "[SVY] Survey" "help survey_zh"}{...}
{vieweralsosee "[XT] xt" "help xt_zh"}{...}
{findalias asfrdofiles}{...}
{viewerjumpto "Syntax" "assertnested_zh##syntax"}{...}
{viewerjumpto "Description" "assertnested_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "assertnested_zh##linkspdf"}{...}
{viewerjumpto "Options" "assertnested_zh##options"}{...}
{viewerjumpto "Examples" "assertnested_zh##examples"}
{help assertnested:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[D] assertnested} {hline 2}}验证变量的嵌套{p_end}
{p2col:}({mansection D assertnested:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:assertnested}
{varlist}
{ifin} 
[{cmd:,}
{opt within(withinvars)}
{opt miss:ing}]


{phang}
{it:varlist} 中的变量按从大组到小组的顺序排列。

{phang}
允许使用 {cmd:by}；请参见 {manhelp by D}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:assertnested} 验证变量的值是否嵌套在其他变量的值内。如果嵌套，命令不会产生输出。如果未嵌套，{cmd:assertnested} 将通知您它们未嵌套，并发出错误返回代码 459；请参见 {findalias frrc}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D assertnestedQuickstart:快速入门}

        {mansection D assertnestedRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt within(withinvars)} 断言 {varlist} 的值嵌套在 {it:withinvars} 中的每个变量内。也就是说，
{cmd:assertnested} {it:varlist}{cmd:,} 
{opt within(w1 w2 ...)}   
如果任何 
{cmd:assertnested} {it:w1} {it:varlist},
{cmd:assertnested} {it:w2} {it:varlist}, ...
发出错误，则会发出错误。

{phang}
{cmd:missing} 指定将 {varlist} 和 {it:withinvars} 中的缺失值视为与非缺失值相同。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice}{p_end}

{pstd}断言 {cmd:consumerid} 嵌套在 {cmd:gender} 内{p_end}
{phang2}{cmd:. assertnested gender consumerid}

{pstd}断言 {cmd:consumerid} 嵌套在 {cmd:income} 内{p_end}
{phang2}{cmd:. assertnested income consumerid}

{pstd}与上述两个命令相同，但使用 {cmd:within()} 选项一次性进行这些操作{p_end}
{phang2}{cmd:. assertnested consumerid, within(gender income)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse schools}{p_end}

{pstd}断言 {cmd:student} 嵌套在 {cmd:school} 内，并且 {cmd:school} 嵌套在 {cmd:district} 内{p_end}
{phang2}{cmd:. assertnested district school student}

{pstd}学校未嵌套在区内；因此，错误消息 

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <assertnested.sthlp>}