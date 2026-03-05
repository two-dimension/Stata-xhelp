{smcl}
{* *! version 1.1.12  15may2018}{...}
{viewerdialog svydescribe "dialog svydescribe"}{...}
{vieweralsosee "[SVY] svydescribe" "mansection SVY svydescribe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svyset" "help svyset_zh"}{...}
{vieweralsosee "[SVY] Survey" "help survey_zh"}{...}
{viewerjumpto "Syntax" "svydescribe_zh##syntax"}{...}
{viewerjumpto "Menu" "svydescribe_zh##menu"}{...}
{viewerjumpto "Description" "svydescribe_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "svydescribe_zh##linkspdf"}{...}
{viewerjumpto "Options" "svydescribe_zh##options"}{...}
{viewerjumpto "Examples" "svydescribe_zh##examples"}
{help svydescribe:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[SVY] svydescribe} {hline 2}}描述调查数据{p_end}
{p2col:}({mansection SVY svydescribe:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:svydescribe} [{varlist}] {ifin} [{cmd:,} {it:options}]


{synoptset 20 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt :{opt stage(#)}}采样
	阶段进行描述；默认是 {cmd:stage(1)}{p_end}
{synopt :{opt final:stage}}在
	最终阶段显示每个采样单位的信息{p_end}
{synopt :{opt single}}仅显示
	包含一个采样单位的层{p_end}
{synopt :{opth gen:erate(newvar)}}生成
	一个变量，用于标识包含一个采样单位的层{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:svydescribe} 要求使用 {cmd:svyset} 来识别调查设计变量；请参见 {manhelp svyset SVY}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 调查数据分析 > 设置和工具 >}
      {bf:描述调查数据}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:svydescribe} 显示一个表格，描述在调查数据集中
给定采样阶段的层和采样单位。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SVY svydescribeQuickstart:快速入门}

        {mansection SVY svydescribeRemarksandexamples:备注和示例}

        {mansection SVY svydescribeMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt stage(#)} 指定要描述的采样阶段。
默认值为 {cmd:stage(1)}。

{phang}
{opt finalstage} 指定在最终采样阶段显示每个采样单位的结果；即，对于
最终采样阶段中的每个采样单位，生成一行输出。此选项不允许与 
{opt stage()}、{opt single}或 {opt generate()} 一起使用。

{phang}
{opt single} 指定仅显示表中包含一个采样单位的层。

{phang}
{opth generate(newvar)} 存储一个变量，用于标识在特定采样阶段下包含一个采样单位的层。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. webuse nhanes2b}
{p_end}
{phang}
{cmd:. svyset psuid [pweight=finalwgt], strata(stratid)}
{p_end}
{phang}
{cmd:. svydescribe}
{p_end}
{phang}
{cmd:. svy: mean hdresult}
{p_end}
{phang}
{cmd:. svydescribe hdresult, single}
{p_end}
{phang}
{cmd:. svydescribe hdresult, finalstage}
{p_end}
{phang}
{cmd:. gen newstr = stratid}
{p_end}
{phang}
{cmd:. gen newpsu = psuid}
{p_end}
{phang}
{cmd:. replace newpsu = psuid + 2 if stratid == 1}
{p_end}
{phang}
{cmd:. replace newstr = 2 if stratid == 1}
{p_end}
{phang}
{cmd:. svyset newpsu [pweight=finalwgt], strata(newstr)}
{p_end}
{phang}
{cmd:. svydescribe hdresult, finalstage}
{p_end}
{phang}
{cmd:. svy: mean hdresult}
{p_end}

{phang}
{cmd:. webuse nhanes2b, clear}
{p_end}
{phang}
{cmd:. svy: mean hdresult}
{p_end}
{phang}
{cmd:. svydescribe if e(sample), single}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svydescribe.sthlp>}