{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: tpoisson" "dialog fmm, message(-tpoisson-)"}{...}
{vieweralsosee "[FMM] fmm: tpoisson" "mansection FMM fmmtpoisson"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] tpoisson" "help tpoisson_zh"}{...}
{viewerjumpto "Syntax" "fmm_tpoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_tpoisson_zh##menu"}{...}
{viewerjumpto "Description" "fmm_tpoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_tpoisson_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_tpoisson_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_tpoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_tpoisson_zh##results"}
{help fmm_tpoisson:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col :{bf:[FMM] fmm: tpoisson} {hline 2}}有限混合截断泊松回归模型{p_end}
{p2col:}({mansection FMM fmmtpoisson:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:tpoisson} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm tpoisson##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_tpoisson##fmmopts:fmmopts}}]{cmd::} {cmd:tpoisson}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmd:ll(}{varname}|{it:#}{cmd:)}}截断点；默认值为
	{cmd:ll(0)}，零截断{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}模型中包括 ln({it:varname_e})
系数约束为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}模型中包括 {it:varname_o}
系数约束为1{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；见
{help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见
{help tpoisson##options:{it:选项}} 在 {manhelp tpoisson R}。

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 计数结果 > 截断泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: tpoisson} 拟合截断泊松回归模型的混合；
有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp tpoisson R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见
{manlink FMM fmm intro}。
有关泊松回归的一般信息，请参见 {manhelp tpoisson R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse runshoes}{p_end}

{pstd}默认下截断限为0的两个截断泊松回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: tpoisson shoes distance i.male age}{p_end}

{pstd}两类的成员资格估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
有关 {help fmm##results:{it:存储结果}} 的信息，请参见 {manhelp fmm FMM}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_tpoisson.sthlp>}