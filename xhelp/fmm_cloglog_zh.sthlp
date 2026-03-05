{smcl}
{* *! version 1.0.7  04oct2018}{...}
{viewerdialog "fmm: cloglog" "dialog fmm, message(-cloglog-)"}{...}
{vieweralsosee "[FMM] fmm: cloglog" "mansection FMM fmmcloglog"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cloglog" "help cloglog_zh"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_cloglog_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_cloglog_zh##menu"}{...}
{viewerjumpto "Description" "fmm_cloglog_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_cloglog_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_cloglog_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_cloglog_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_cloglog_zh##results"}
{help fmm_cloglog:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col :{bf:[FMM] fmm: cloglog} {hline 2}}有限混合的互补对数-对数回归模型{p_end}
{p2col:}({mansection FMM fmmcloglog:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:cloglog} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm cloglog##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_betareg##fmmopts:fmmopts}}]{cmd::} {cmd:cloglog}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，并将系数约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列算子；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见
{help cloglog##options:{it:选项}} 在 {manhelp cloglog R} 中。

包含帮助 fmm_options_table
包含帮助 fmm_options_note

包含帮助 fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM (有限混合模型) > 二元结果 > 互补对数-对数回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: cloglog} 拟合互补对数-对数回归模型的混合；
详细信息请参阅 {manhelp fmm FMM} 和 {manhelp cloglog R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见
{manlink FMM fmm intro}。
有关互补对数-对数回归的一般信息，请参见
{manhelp cloglog R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse epay}{p_end}

{pstd}两个互补对数-对数回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: cloglog epay age i.male}{p_end}

{pstd}两个类的成员资格的估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参阅
{help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_cloglog.sthlp>}