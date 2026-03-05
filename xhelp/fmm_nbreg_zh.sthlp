{smcl}
{* *! version 1.0.5  04oct2018}{...}
{viewerdialog "fmm: nbreg" "dialog fmm, message(-nbreg-)"}{...}
{vieweralsosee "[FMM] fmm: nbreg" "mansection FMM fmmnbreg"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_nbreg_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_nbreg_zh##menu"}{...}
{viewerjumpto "Description" "fmm_nbreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_nbreg_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_nbreg_zh##remarks"}{...}
{viewerjumpto "Example" "fmm_nbreg_zh##example"}{...}
{viewerjumpto "Stored results" "fmm_nbreg_zh##results"}
{help fmm_nbreg:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col :{bf:[FMM] fmm: nbreg} {hline 2}}有限负二项回归模型的混合{p_end}
{p2col:}({mansection FMM fmmnbreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:nbreg} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm nbreg##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_nbreg##fmmopts:fmmopts}}]{cmd::} {cmd:nbreg}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:d:ispersion(}{cmdab:m:ean)}}离散参数化；默认值{p_end}
{synopt :{cmdab:d:ispersion(}{cmdab:c:onstant)}}所有观察情况下的常量离散{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})
并将系数约束为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o} 
并将系数约束为1{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；参见
{help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见 
{help nbreg##options_nbreg:{it:nbreg 的选项}} 在 {manhelp nbreg R} 中。

包含 help fmm_options_table
包含 help fmm_options_note

包含 help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM (有限混合模型) > 计数结果 > 负二项回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: nbreg} 拟合负二项回归模型的混合；有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp nbreg R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上面的部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见
{manlink FMM fmm intro}。
有关负二项回归的一般信息，请参见
{manhelp nbreg R}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_mixture}{p_end}

{pstd}两个负二项回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: nbreg drvisits private medicaid c.age##c.age actlim chronic}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_nbreg.sthlp>}