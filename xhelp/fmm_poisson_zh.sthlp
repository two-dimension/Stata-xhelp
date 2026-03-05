{smcl}
{* *! version 1.0.5  04oct2018}{...}
{viewerdialog "fmm: poisson" "dialog fmm, message(-poisson-)"}{...}
{vieweralsosee "[FMM] fmm: poisson" "mansection FMM fmmpoisson"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfmmexpoisson}{...}
{findalias asfmmexzip}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "语法" "fmm_poisson_zh##syntax"}{...}
{viewerjumpto "菜单" "fmm_poisson_zh##menu"}{...}
{viewerjumpto "描述" "fmm_poisson_zh##description"}{...}
{viewerjumpto "PDF文档链接" "fmm_poisson_zh##linkspdf"}{...}
{viewerjumpto "备注" "fmm_poisson_zh##remarks"}{...}
{viewerjumpto "示例" "fmm_poisson_zh##example"}{...}
{viewerjumpto "储存结果" "fmm_poisson_zh##results"}
{help fmm_poisson:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col :{bf:[FMM] fmm: poisson} {hline 2}}有限混合的泊松回归模型{p_end}
{p2col:}({mansection FMM fmmpoisson:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:poisson} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm poisson##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_poisson##fmmopts:fmmopts}}]{cmd::} {cmd:poisson}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定模型的类数。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数约束为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数约束为1{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因素变量；见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见 {help poisson##options:{it:选项}}于 {manhelp poisson R}。

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 离散结果 > 泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: poisson} 拟合泊松回归模型的混合；有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp poisson R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见 {manlink FMM fmm intro}。
有关泊松回归的一般信息，请参见 {manhelp poisson R}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_mixture}{p_end}

{pstd}两个泊松回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: poisson drvisits private medicaid c.age##c.age actlim chronic}{p_end}


{marker results}{...}
{title:储存结果}

{pstd}
有关储存结果，请参见 {help fmm##results:{it:储存结果}} 于 {manhelp fmm FMM}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_poisson.sthlp>}