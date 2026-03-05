{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: ologit" "dialog fmm, message(-ologit-)"}{...}
{vieweralsosee "[FMM] fmm: ologit" "mansection FMM fmmologit"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_ologit_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_ologit_zh##menu"}{...}
{viewerjumpto "Description" "fmm_ologit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_ologit_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_ologit_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_ologit_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_ologit_zh##results"}
{help fmm_ologit:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col :{bf:[FMM] fmm: ologit} {hline 2}}有序逻辑回归模型的有限混合{p_end}
{p2col:}({mansection FMM fmmologit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:ologit} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm ologit##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_ologit##fmmopts:fmmopts}}]{cmd::} {cmd:ologit}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，并将系数约束为1{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参阅 {help fvvarlist_zh}。{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
有关 {it:options} 的详细说明，请参阅
{help ologit##options:{it:选项}} 在 {manhelp ologit R}。

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 有序结果 > 有序逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: ologit} 拟合有序逻辑回归模型的混合体；有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp ologit R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
要了解有限混合模型的一般介绍，请参阅
{manlink FMM fmm intro}。
有关逻辑回归的一般信息，请参见 {manhelp ologit R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fmm_health}{p_end}

{pstd}使用 {cmd:lcinv(cons)} 约束类间切点相等的两个有序逻辑回归模型的混合{p_end}
{phang2}{cmd:. fmm 2, lcinv(cons): ologit health area weight i.female i.rural}{p_end}

{pstd}两个类的成员估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
参见 {help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_ologit.sthlp>}