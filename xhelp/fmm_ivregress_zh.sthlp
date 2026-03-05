{smcl}
{* *! version 1.0.7  04oct2018}{...}
{viewerdialog "fmm: ivregress" "dialog fmm, message(-ivregress-)"}{...}
{vieweralsosee "[FMM] fmm: ivregress" "mansection FMM fmmivregress"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_ivregress_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_ivregress_zh##menu"}{...}
{viewerjumpto "Description" "fmm_ivregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_ivregress_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_ivregress_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_ivregress_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_ivregress_zh##results"}
{help fmm_ivregress:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col :{bf:[FMM] fmm: ivregress} {hline 2}}有内生协变量的线性回归模型的有限混合{p_end}
{p2col:}({mansection FMM fmmivregress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:ivregress} {depvar}
         [{help varlist_zh:{it:varlist_1}}]
	{cmd:(}{it:varlist_2} {cmd:=} {it:varlist_iv}{cmd:)}
	{bind:[{cmd:,} {it:options}]}


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm ivregress##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_ivregress##fmmopts:fmmopts}}]{cmd::}
	{cmd:ivregress} {depvar}
	[{help varlist_zh:{it:varlist_1}}]
	{cmd:(}{it:varlist_2} {cmd:=} {it:varlist_iv}{cmd:)}
	[{cmd:,} {it:options}]


{phang}
其中 {it:#} 指定类模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:varlist_1} 和 {it:varlist_iv} 可以包含因子变量；
见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:varlist_1} 和 {it:varlist_iv} 可以包含
时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见 
{help ivregress##options:{it:选项}} 在 {manhelp ivregress R}中。

包含 help fmm_options_table
包含 help fmm_options_note

包含 help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 连续结果 > 带有内生协变量的线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: ivregress} 适用于具有内生协变量的线性回归模型的混合；
有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp ivregress R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参阅
{manlink FMM fmm intro}。
有关线性回归的一般信息，请参见 {manhelp ivregress R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fmm_hsng2}{p_end}

{pstd}具有内生协变量 {cmd:hsngval} 的两个回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: ivregress rent pcturban (hsngval = faminc)}{p_end}

{pstd}两个类的成员资格的估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
有关 {help fmm##results:{it:存储结果}} 的信息，请参见 {manhelp fmm FMM}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_ivregress.sthlp>}