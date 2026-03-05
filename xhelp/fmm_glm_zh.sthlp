{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: glm" "dialog fmm, message(-glm-)"}{...}
{vieweralsosee "[FMM] fmm: glm" "mansection FMM fmmglm"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_glm_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_glm_zh##menu"}{...}
{viewerjumpto "Description" "fmm_glm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_glm_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_glm_zh##remarks"}{...}
{viewerjumpto "Stored results" "fmm_glm_zh##results"}
{help fmm_glm:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col :{bf:[FMM] fmm: glm} {hline 2}}广义线性回归模型的有限混合{p_end}
{p2col:}({mansection FMM fmmglm:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:glm} {depvar} [{indepvars}]
[{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm glm##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_glm##fmmopts:fmmopts}}]{cmd::} {cmd:glm}
{depvar} [{indepvars}]
{bind:[{cmd:,} {it:options}]}


{pstd}
其中 {it:#} 指定类模型的数量。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth f:amily(fmm_glm##family:familyname)}}{depvar}的分布；
默认是 {cmd:family(gaussian)}{p_end}
{synopt :{opth l:ink(fmm_glm##link:linkname)}}链接函数；默认因家庭而异{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})
且系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}
且系数约束为 1{p_end}
{synopt :{opt asis}}保留完全预测变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参见
{help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参阅 
{help glm##options:{it:选项}} 在 {manhelp glm R} 中。

{marker family}{...}
{synoptset 26}{...}
{synopthdr:familyname}
{synoptline}
{synopt :{opt gau:ssian}}高斯（正态）；默认{p_end}
{synopt :{opt be:rnoulli}}伯努利{p_end}
{synopt :{opt beta}}贝塔{p_end}
{synopt :{opt bi:nomial} [{it:#}|{varname}]}二项分布；二项试验的默认数量为 1{p_end}
{synopt :{opt p:oisson}}泊松{p_end}
{synopt :{opt nb:inomial} [{opt mean}|{opt cons:tant}]}负二项分布；
默认离散系数为 {opt mean}{p_end}
{synopt :{opt e:xponential}}指数{p_end}
{synopt :{opt gam:ma}}伽马{p_end}
{synopt :{opt logn:ormal}}对数正态{p_end}
{synopt :{opt logl:ogistic}}对数逻辑{p_end}
{synopt :{opt wei:bull}}威布尔{p_end}
{synoptline}
{p 4 6 2}
{cmd:bernoulli}、{cmd:beta}、{cmd:exponential}、{cmd:lognormal}、
{cmd:loglogistic}和 {cmd:weibull} 是 {cmd:fmm: glm} 扩展的可用选项，
而在 {cmd:glm} 中不可用。

{marker link}{...}
{synopthdr:linkname}
{synoptline}
{synopt :{opt iden:tity}}恒等{p_end}
{synopt :{opt log}}对数{p_end}
{synopt :{opt logit}}logit{p_end}
{synopt :{opt prob:it}}probit{p_end}
{synopt :{opt clog:log}}补充对数-对数{p_end}
{synoptline}

包含 help fmm_options_table
包含 help fmm_options_note

包含 help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 广义线性模型（GLM）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: glm} 拟合广义线性回归模型的混合；
有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp glm R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见
{manlink FMM fmm intro}。
有关广义线性回归的一般信息，请参见
{manhelp glm R}。  


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stamp}{p_end}

{pstd}三种对数正态分布的混合 {cmd:thickness}{p_end}
{phang2}{cmd:. fmm 3: glm thickness, family(lognormal)}{p_end}

{pstd}三类成员的估计概率{p_end}
{phang2}{cmd:. estat lcprob}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
请参见
{help fmm##results:{it:存储的结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_glm.sthlp>}