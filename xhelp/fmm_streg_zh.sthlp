{smcl}
{* *! version 1.0.7  04oct2018}{...}
{viewerdialog "fmm: streg" "dialog fmm, message(-streg-)"}{...}
{vieweralsosee "[FMM] fmm: streg" "mansection FMM fmmstreg"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfmmexsurv}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_streg_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_streg_zh##menu"}{...}
{viewerjumpto "Description" "fmm_streg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_streg_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_streg_zh##remarks"}{...}
{viewerjumpto "Example" "fmm_streg_zh##example"}{...}
{viewerjumpto "Stored results" "fmm_streg_zh##results"}
{help fmm_streg:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col :{bf:[FMM] fmm: streg} {hline 2}}有限混合参数生存模型{p_end}
{p2col:}({mansection FMM fmmstreg:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:streg} [{indepvars}] [{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm ivregress##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_streg##fmmopts:fmmopts}}]{cmd::} {cmd:streg}
[{indepvars}]
{bind:[{cmd:,} {it:options}]}


{phang}
其中 {it:#} 指定类模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{p2coldent:* {opt dist:ribution(distname)}}指定生存分布{p_end}
{synopt :{opt time}}使用加速失效时间度量{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数约束为 1{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
*{opt distribution(distname)} 是必需的。{p_end}
{p 4 6 2}
在使用 {cmd:fmm: streg} 之前，您必须 {cmd:stset} 数据；请参阅 {manhelp stset ST}。{p_end}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参阅 {help fvvarlist_zh}。{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；请参阅 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
有关 {it:options} 的详细说明，请参阅 {help streg##options:{it:选项}} 在 {manhelp streg ST} 中。

{marker distname}{...}
{synoptset 26 tabbed}{...}
{synopthdr:distname}
{synoptline}
{synopt :{opt e:xponential}}指数生存分布{p_end}
{synopt :{opt logl:ogistic}}对数逻辑生存分布{p_end}
{synopt :{opt ll:ogistic}} 对 {opt loglogistic} 的同义词{p_end}
{synopt :{opt w:eibull}}威布尔生存分布{p_end}
{synopt :{opt logn:ormal}}对数正态生存分布{p_end}
{synopt :{opt ln:ormal}} 对 {opt lognormal} 的同义词{p_end}
{p2coldent:* {opt gam:ma}}伽马生存分布{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:fmm: streg} 使用伽马生存分布，而不是 {help streg_zh} 所使用的广义伽马分布。
{p_end}

INCLUDE help fmm_options_table
INCLUDE help fmm_options_note

INCLUDE help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 参数生存回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: streg} 拟合有限混合参数生存回归模型；有关详细信息，请参阅 {manhelp fmm FMM} 和 {manhelp streg ST}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见 {manlink FMM fmm intro}。
有关参数生存模型的一般信息，参见 {manhelp streg ST}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lenses}{p_end}
{phang2}{cmd:. stset t, failure(fail)}{p_end}

{pstd}治愈模型作为零点质量分布和威布尔生存模型的混合{p_end}
{phang2}{cmd:. fmm: (pointmass fail) (streg inclength i.sex age10, distribution(weibull))}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_streg.sthlp>}