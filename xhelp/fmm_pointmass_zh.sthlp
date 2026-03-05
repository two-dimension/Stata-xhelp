{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: pointmass" "dialog fmm, message(-pointmass-)"}{...}
{vieweralsosee "[FMM] fmm: pointmass" "mansection FMM fmmpointmass"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfmmexzip}{...}
{findalias asfmmexsurv}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] zinb" "help zinb_zh"}{...}
{vieweralsosee "[R] zioprobit" "help zioprobit_zh"}{...}
{vieweralsosee "[R] zip" "help zip_zh"}{...}
{viewerjumpto "Syntax" "fmm_pointmass_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_pointmass_zh##menu"}{...}
{viewerjumpto "Description" "fmm_pointmass_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_pointmass_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_pointmass_zh##remarks"}{...}
{viewerjumpto "Examples" "fmm_pointmass_zh##examples"}{...}
{viewerjumpto "Stored results" "fmm_pointmass_zh##results"}
{help fmm_pointmass:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col :{bf:[FMM] fmm: pointmass} {hline 2}}在单个点的密度质量的有限混合模型{p_end}
{p2col:}({mansection FMM fmmpointmass:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:fmm} {ifin}
[{help fmm pointmass##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_pointmass##fmmopts:fmmopts}}]{cmd::}
{cmd:(pointmass} {depvar} [{cmd:,} {it:options}]{cmd:)} 
{cmd:(}{it:component_1}{cmd:)}
[{cmd:(}{it:component_2}{cmd:)} ...]

{pstd}
{it:component} 在 {manhelp fmm FMM} 中定义。

{synoptset 26}{...}
{synopthdr}
{synoptline}
{synopt :{opth lcp:rob(varlist)}}指定类概率的独立变量{p_end}
{synopt :{opt value(#)}}质量点的整数值位置{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:depvar} 可以包含时间序列运算符；详见 {help tsvarlist_zh}.{p_end}

{synoptset 26 tabbed}{...}
INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 一般估计和回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: pointmass} 是一种退化分布，以概率1取单个整数值。 此分布不能单独使用，通常与其他 {cmd:fmm} 分布组合，以建模零膨胀结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
以上各节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth lcprob(varlist)} 指定属于质量点成分的线性预测，包括 {it:varlist} 中的变量。
{opt lcinvariant()} 对这些参数没有影响。

{phang}
{opt value(#)} 指定拥有单一点质量的潜在类的 {depvar} 值。 默认值为 {cmd:value(0)}。
只允许整数值的 {it:#}。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见 {manlink FMM fmm intro}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fish2}{p_end}

{pstd}零膨胀泊松模型，作为零处质量点分布和泊松回归模型的混合{p_end}
{phang2}{cmd:. fmm: (pointmass count) (poisson count persons boat)}{p_end}

{pstd}将 {cmd:child} 和 {cmd:camper} 作为点质量成分会员的预测变量{p_end}
{phang2}{cmd:. fmm: (pointmass count, lcprob(child camper)) (poisson count persons boat)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lenses}{p_end}
{phang2}{cmd:. stset t, failure(fail)}{p_end}

{pstd}治疗模型，作为零处质量点分布和Weibull生存模型的混合{p_end}
{phang2}{cmd:. fmm: (pointmass fail) (streg inclength i.sex age10, distribution(weibull))}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_pointmass.sthlp>}