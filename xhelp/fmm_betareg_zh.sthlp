{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: betareg" "dialog fmm, message(-betareg-)"}{...}
{vieweralsosee "[FMM] fmm: betareg" "mansection FMM fmmbetareg"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] betareg" "help betareg_zh"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_betareg_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_betareg_zh##menu"}{...}
{viewerjumpto "Description" "fmm_betareg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_betareg_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_betareg_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_betareg_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_betareg_zh##results"}
{help fmm_betareg:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col :{bf:[FMM] fmm: betareg} {hline 2}}有限混合beta回归模型{p_end}
{p2col:}({mansection FMM fmmbetareg:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:betareg} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm betareg##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_betareg##fmmopts:fmmopts}}]{cmd::} {cmd:betareg}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类别模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt li:nk(linkname)}}指定条件均值的链接函数；默认是 {cmd:link(logit)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见 {it:{help betareg##options:选项}} 在 {manhelp betareg R} 中。

{marker linkname}{...}
{synoptset 26}{...}
{synopthdr:linkname}
{synoptline}
{synopt :{opt logit}}logit{p_end}
{synopt :{opt prob:it}}probit{p_end}
{synopt :{opt clog:log}}补充对数-对数{p_end}
{synoptline}

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM (有限混合模型) > beta回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: betareg} 拟合beta回归模型的混合，用于取值范围在0到1之间的分数型结果；有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp betareg R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见 {manlink FMM fmm intro}。
有关beta回归的一般信息，请参见 {manhelp betareg R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sprogram}{p_end}

{pstd}两个beta回归模型的混合，带有下界限0{p_end}
{phang2}{cmd:. fmm 2: betareg prate i.summer freemeals pdonations}{p_end}

{pstd}两个类别的估计成员概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_betareg.sthlp>}