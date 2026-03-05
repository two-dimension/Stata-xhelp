{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: probit" "dialog fmm, message(-probit-)"}{...}
{vieweralsosee "[FMM] fmm: probit" "mansection FMM fmmprobit"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "语法" "fmm_probit_zh##syntax"}{...}
{viewerjumpto "菜单" "fmm_probit_zh##menu"}{...}
{viewerjumpto "描述" "fmm_probit_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "fmm_probit_zh##linkspdf"}{...}
{viewerjumpto "备注" "fmm_probit_zh##remarks"}{...}
{viewerjumpto "示例" "fmm_probit_zh##examples"}{...}
{viewerjumpto "存储结果" "fmm_probit_zh##results"}
{help fmm_probit:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col :{bf:[FMM] fmm: probit} {hline 2}}有限混合 probit 回归模型{p_end}
{p2col:}({mansection FMM fmmprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:probit} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm probit##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_probit##fmmopts:fmmopts}}]{cmd::} {cmd:probit}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类别模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数设定为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见 {help probit##options:{it:选项}} 在 {manhelp probit R} 中。

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 二元结果 > Probit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: probit} 拟合混合的 probit 回归模型；有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp probit R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见 {manlink FMM fmm intro}。
有关 probit 回归的一般信息，请参见 {manhelp probit R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse epay}{p_end}

{pstd}两个 probit 回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: probit epay age i.male}{p_end}

{pstd}每个类别中 {cmd:epay} 的估计边际概率{p_end}
{phang2}{cmd:. estat lcmean}{p_end}

{pstd}两个类别中成员资格的估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
有关 {help fmm##results:{it:存储结果}} 的信息，请参见 {manhelp fmm FMM}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_probit.sthlp>}