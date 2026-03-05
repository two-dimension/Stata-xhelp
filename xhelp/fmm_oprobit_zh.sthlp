{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: oprobit" "dialog fmm, message(-oprobit-)"}{...}
{vieweralsosee "[FMM] fmm: oprobit" "mansection FMM fmmoprobit"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_oprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_oprobit_zh##menu"}{...}
{viewerjumpto "Description" "fmm_oprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_oprobit_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_oprobit_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_oprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_oprobit_zh##results"}
{help fmm_oprobit:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col :{bf:[FMM] fmm: oprobit} {hline 2}}有序Probit回归模型的有限混合{p_end}
{p2col:}({mansection FMM fmmoprobit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:oprobit} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm oprobit##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_oprobit##fmmopts:fmmopts}}]{cmd::} {cmd:oprobit}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类别模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname} ，其系数约束为 1{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见 {help oprobit##options:{it:选项}} 在 {manhelp oprobit R} 中。

包含 help fmm_options_table
包含 help fmm_options_note

包含 help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 有序结果 > 有序Probit回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: oprobit} 拟合有序Probit回归模型的混合；有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp oprobit R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的概述，请参见 {manlink FMM fmm intro}。
有关逻辑回归的通用信息，请参见 {manhelp oprobit R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fmm_health}{p_end}

{pstd}使用 {cmd:lcinv(cons)} 将两个有序Probit回归模型的切点约束为相等{p_end}
{phang2}{cmd:. fmm 2, lcinv(cons): oprobit health area weight i.female i.rural}{p_end}

{pstd}两个类的成员资格的估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
有关详细信息，请参见 {help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_oprobit.sthlp>}