{smcl}
{* *! version 1.0.5  04oct2018}{...}
{viewerdialog "fmm: tobit" "dialog fmm, message(-tobit-)"}{...}
{vieweralsosee "[FMM] fmm: tobit" "mansection FMM fmmtobit"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{viewerjumpto "Syntax" "fmm_tobit_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_tobit_zh##menu"}{...}
{viewerjumpto "Description" "fmm_tobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_tobit_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_tobit_zh##remarks"}{...}
{viewerjumpto "Example" "fmm_tobit_zh##example"}{...}
{viewerjumpto "Stored results" "fmm_tobit_zh##results"}
{help fmm_tobit:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col :{bf:[FMM] fmm: tobit} {hline 2}}有限混合 Tobit 回归模型{p_end}
{p2col:}({mansection FMM fmmtobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:tobit} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm tobit##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_tobit##fmmopts:fmmopts}}]{cmd::} {cmd:tobit}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类别模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmd:ll}[{cmd:(}{varname}|{it:#}{cmd:)}]}左限变量或限值{p_end}
{synopt :{cmd:ul}[{cmd:(}{varname}|{it:#}{cmd:)}]}右限变量或限值{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数被限制为 1{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlists}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见 {help tobit##options:{it:选项}} 在 {manhelp tobit R} 中。

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 连续结果 > Tobit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: tobit} 拟合 Tobit 回归模型的混合体；请参见 {manhelp fmm FMM} 和 {manhelp tobit R} 获取详细信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的概述，请参见 {manlink FMM fmm intro}。
有关 Tobit 回归的一般信息，请参见 {manhelp tobit R}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gpa}{p_end}

{pstd}两个 Tobit 回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: tobit gpa2 hsgpa pincome program, ll}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
请参见 {help fmm##results:{it:存储的结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_tobit.sthlp>}