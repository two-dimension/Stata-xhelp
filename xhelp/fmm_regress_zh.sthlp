{smcl}
{* *! version 1.0.7  04oct2018}{...}
{viewerdialog "fmm: regress" "dialog fmm, message(-regress-)"}{...}
{vieweralsosee "[FMM] fmm: regress" "mansection FMM fmmregress"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfmmexrega}{...}
{findalias asfmmexregb}{...}
{findalias asfmmexregc}{...}
{findalias asfmmexregd}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_regress_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_regress_zh##menu"}{...}
{viewerjumpto "Description" "fmm_regress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_regress_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_regress_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_regress_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_regress_zh##results"}
{help fmm_regress:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col :{bf:[FMM] fmm: regress} {hline 2}}线性回归模型的有限混合{p_end}
{p2col:}({mansection FMM fmmregress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:regress} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm regress##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_regress##fmmopts:fmmopts}}]{cmd::} {cmd:regress}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定模型的类别数。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见
{help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，见 
{help regress##options:{it:选项}} 在 {manhelp regress R}。

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 连续结果 > 线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: regress} 拟合线性回归模型的混合；
详细信息请参见 {manhelp fmm FMM} 和 {manhelp regress R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见
{manlink FMM fmm intro}。
有关线性回归的一般信息，请参见 {manhelp regress R}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stamp}{p_end}

{pstd}三个正态分布的混合 {cmd:thickness}{p_end}
{phang2}{cmd:. fmm 3: regress thickness}{p_end}

{pstd}三个类别的成员资格的估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mus03sub}{p_end}

{pstd}三个线性回归模型的混合{p_end}
{phang2}{cmd:. fmm 3: regress lmedexp income c.age##c.age totchr i.sex}{p_end}

{pstd}将 {cmd:totchr} 包含为类别成员资格的预测因子{p_end}
{phang2}{cmd:. fmm 3, lcprob(totchr): regress lmedexp income c.age##c.age totchr i.sex}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_regress.sthlp>}