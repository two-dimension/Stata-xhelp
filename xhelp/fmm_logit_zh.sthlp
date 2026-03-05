{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: logit" "dialog fmm, message(-logit-)"}{...}
{vieweralsosee "[FMM] fmm: logit" "mansection FMM fmmlogit"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_logit_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_logit_zh##menu"}{...}
{viewerjumpto "Description" "fmm_logit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_logit_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_logit_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_logit_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_logit_zh##results"}
{help fmm_logit:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col :{bf:[FMM] fmm: logit} {hline 2}}有限混合逻辑回归模型{p_end}
{p2col:}({mansection FMM fmmlogit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:logit} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm logit##weight:{it:权重}}]
[{cmd:,} {it:{help fmm_logit##fmmopts:fmm选项}}]{cmd::} {cmd:logit}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包括 {it:varname}，其系数被限制为 1{p_end}
{synopt :{opt asis}}保留完美的预测变量{p_end}
{synoptline}
{p 4 6 2}
{it:indepvars} 可能包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可能包含时间序列算子；参见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见 
{help logit##options:{it:选项}} 在 {manhelp logit R}。

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型）> 二元结果 > 逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: logit} 拟合逻辑回归模型的混合；
有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp logit R}。


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
有关逻辑回归的一般信息，请参见 {manhelp logit R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse epay}{p_end}

{pstd}两个逻辑回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: logit epay age i.male}{p_end}

{pstd}每个类中 {cmd:epay} 的估计边际概率{p_end}
{phang2}{cmd:. estat lcmean}{p_end}

{pstd}在两个类中的成员概率估计{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_logit.sthlp>}