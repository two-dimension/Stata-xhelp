{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: truncreg" "dialog fmm, message(-truncreg-)"}{...}
{vieweralsosee "[FMM] fmm: truncreg" "mansection FMM fmmtruncreg"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] truncreg" "help truncreg_zh"}{...}
{viewerjumpto "Syntax" "fmm_truncreg_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_truncreg_zh##menu"}{...}
{viewerjumpto "Description" "fmm_truncreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_truncreg_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_truncreg_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_truncreg_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_truncreg_zh##results"}
{help fmm_truncreg:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col :{bf:[FMM] fmm: truncreg} {hline 2}}截断线性回归模型的有限混合{p_end}
{p2col:}({mansection FMM fmmtruncreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:truncreg} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm truncreg##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_truncreg##fmmopts:fmmopts}}]{cmd::} {cmd:truncreg}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmd:ll(}{varname}|{it:#}{cmd:)}}左截断变量或限制{p_end}
{synopt :{cmd:ul(}{varname}|{it:#}{cmd:)}}右截断变量或限制{p_end}
{synopt :{opth off:set(varname)}}包括 {it:varname} 并将系数约束为1{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细说明，请参见 {help truncreg##options:{it:选项}} 在 {manhelp truncreg R} 中。

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM (有限混合模型) > 连续结果 > 截断回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: truncreg} 拟合截断线性回归模型的混合；有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp truncreg R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见 {manlink FMM fmm intro}。
有关tobit回归的一般信息，请参见 {manhelp truncreg R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse laborsub}{p_end}

{pstd}具有下限截断限制0的两个截断回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: truncreg whrs kl6 k618 wa we, ll(0)}{p_end}

{pstd}两个类别的成员资格估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_truncreg.sthlp>}