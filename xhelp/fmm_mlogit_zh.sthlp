{smcl}
{* *! version 1.0.8  14feb2019}{...}
{viewerdialog "fmm: mlogit" "dialog fmm, message(-mlogit-)"}{...}
{vieweralsosee "[FMM] fmm: mlogit" "mansection FMM fmmmlogit"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "语法" "fmm_mlogit_zh##syntax"}{...}
{viewerjumpto "菜单" "fmm_mlogit_zh##menu"}{...}
{viewerjumpto "描述" "fmm_mlogit_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "fmm_mlogit_zh##linkspdf"}{...}
{viewerjumpto "备注" "fmm_mlogit_zh##remarks"}{...}
{viewerjumpto "示例" "fmm_mlogit_zh##examples"}{...}
{viewerjumpto "储存结果" "fmm_mlogit_zh##results"}
{help fmm_mlogit:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col :{bf:[FMM] fmm: mlogit} {hline 2}}多项式逻辑回归模型的有限混合{p_end}
{p2col:}({mansection FMM fmmmlogit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:mlogit} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm mlogit##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_mlogit##fmmopts:fmmopts}}]{cmd::} {cmd:mlogit}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类别模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt b:aseoutcome(#)}}{depvar} 的值将是基础结果{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见 {help mlogit##options:{it:选项}} 在 {manhelp mlogit R} 中。

包含 help fmm_options_table
包含 help fmm_options_note

包含 help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 多项式逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: mlogit} 拟合多项式逻辑回归模型的混合；有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp mlogit R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见 {manlink FMM fmm intro}。
有关逻辑回归的一般信息，请参见 {manhelp mlogit R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sim_car}{p_end}

{pstd}两个多项式逻辑回归模型的混合{p_end}
{phang2}{cmd:. fmm 2, lcinvariant(cons): mlogit model i.female income}{p_end}

{pstd}在两个类别中成员资格的估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:储存结果}

{pstd}
有关结果的详细信息，请参见 {help fmm##results:{it:储存结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_mlogit.sthlp>}