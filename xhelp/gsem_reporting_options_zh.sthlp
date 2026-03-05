{smcl}
{* *! version 1.2.4  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] gsem 报告选项" "mansection SEM gsemreportingoptions"}{...}
{findalias asgsemtirt}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{viewerjumpto "语法" "gsem_reporting_options_zh##syntax"}{...}
{viewerjumpto "描述" "gsem_reporting_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "gsem_reporting_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "gsem_reporting_options_zh##options"}{...}
{viewerjumpto "备注" "gsem_reporting_options_zh##remarks"}{...}
{viewerjumpto "示例" "gsem_reporting_options_zh##examples"}
{help gsem_reporting_options:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[SEM] gsem 报告选项} {hline 2}}影响结果报告的选项{p_end}
{p2col:}({mansection SEM gsemreportingoptions:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:gsem} {help sem_and_gsem path notation:{it:paths}} ...{cmd:,} ...
     {it:reporting_options}

{p 8 12 2}
{cmd:gsem,} {it:reporting_options}


{synoptset 19}{...}
{synopthdr:reporting_options}
{synoptline}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt coefl:egend}}显示系数图例{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt nohead:er}}不显示参数表上方的标题{p_end}
{synopt :{opt nodvhead:er}}不在标题中显示因变量信息{p_end}
{synopt :{opt notable}}不显示参数表{p_end}

{synopt :{opt byparm}}在一个表中显示结果，以参数排列行{p_end}

{synopt :{it:{help gsem_reporting_options##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
这些选项控制 {cmd:gsem} 如何显示估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM gsemreportingoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt coeflegend} 显示图例，揭示如何在 {opt _b[]} 记法中指定估计系数，这在指定后估计命令时有时是必需的。

{phang}
{opt nocnsreport} 抑制约束的显示。
由 {cmd:gsem} 自动设置的零固定约束不会在报告中显示，以保持输出可管理。

{phang}
{opt noheader} 抑制参数表上方的标题的显示，包括报告最终对数似然值、观察次数等。

{phang}
{opt nodvheader} 抑制参数表上方标题中的因变量信息。

{phang}
{opt notable} 抑制参数表的显示。

{phang}
{opt byparm} 指定多个组或潜在类别的估计结果以单个表报告，行按参数排列。 默认情况下, 结果在每个组和潜在类别组合的单独表中报告。

INCLUDE help displayopts_list


{marker remarks}{...}
{title:备注}

{pstd}
在拟合模型时或重新显示结果时，可以指定上述任何选项，后者是通过在 {cmd:gsem} 命令后仅指定选项来实现的：

{phang2}{cmd:. gsem (...) (...), ...}{p_end}
{phang2}{it:(显示原始输出)}

{phang2}{cmd:. gsem}{p_end}
{phang2}{it:(输出重新显示)}

{phang2}{cmd:. gsem, coeflegend}{p_end}
{phang2}{it:(显示系数名称表)}

{phang2}{cmd:. gsem}{p_end}
{phang2}{it:(输出重新显示)}


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cfa}{p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8, logit) (MathAtt -> att1-att5, ologit)}{p_end}

{pstd}显示系数图例{p_end}
{phang2}{cmd:. gsem, coeflegend}{p_end}

{pstd}获得90%的置信区间{p_end}
{phang2}{cmd:. gsem, level(90)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_reporting_options.sthlp>}