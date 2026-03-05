{smcl}
{* *! version 1.0.4  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] gsem group options" "mansection SEM gsemgroupoptions"}{...}
{vieweralsosee "[SEM] Intro 6" "mansection SEM Intro6"}{...}
{findalias asgsemgrp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{viewerjumpto "Syntax" "gsem_group_options_zh##syntax"}{...}
{viewerjumpto "Description" "gsem_group_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "gsem_group_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "gsem_group_options_zh##options"}{...}
{viewerjumpto "Remarks" "gsem_group_options_zh##remarks"}{...}
{viewerjumpto "Examples" "gsem_group_options_zh##examples"}
{help gsem_group_options:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[SEM] gsem group options} {hline 2}}对不同组进行模型拟合{p_end}
{p2col:}({mansection SEM gsemgroupoptions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:gsem} {it:paths} ...{cmd:,} ... {it:group_options}

{synoptset 24}{...}
{synopthdr:group_options}
{synoptline}
{synopt :{opth group(varname)}}为不同组拟合模型{p_end}
{synopt :{opt gin:variant(pclassname)}}指定跨组相等的参数{p_end}
{synoptline}

{marker pclassname}{...}
{synoptset 24}{...}
{p2col:{it:pclassname}}描述{p_end}
{p2line}
{p2col:{opt cons}}截距和切点{p_end}

{p2col:{opt coef}}固定系数{p_end}
{p2col:{opt load:ing}}潜变量系数{p_end}

{p2col:{opt errv:ar}}误差的协方差{p_end}
{p2col:{opt scale}}缩放参数{p_end}

{p2col:{opt mean:s}}外生变量的均值{p_end}
{p2col:{opt cov:ex}}外生潜变量的协方差{p_end}
{p2line}
{p2col:{opt all}}以上所有{p_end}
{p2col:{opt none}}以上均不{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
{cmd:ginvariant(cons coef loading)} 是默认选项，如果未指定 {opt ginvariant()}。{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:gsem} 可以在数据的子组上拟合联合模型，同时允许某些参数变化，并对其他参数施加约束以保持跨子组相等。这些子组可以是男性和女性、年龄类别等。

{pstd}
当指定 {opth group(varname)} 选项时，{cmd:gsem} 执行这种估计。 {opt ginvariant(pclassname)} 选项指定哪些参数在组间约束为相等。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM gsemgroupoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth group(varname)}
指定模型如上所述进行拟合。 {it:varname} 指定记录观察属于的组的数值变量名称。

{phang}
{opth ginvariant:(gsem_group_options##pclassname:pclassname)}
指定模型的哪些参数类别在组间约束为相等。类已在上文定义。如果未指定该选项，默认值为 {cmd:ginvariant(cons coef loading)}。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {manlink SEM Intro 6} 和 {findalias gsemgrp}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cancer}{p_end}

{pstd}分层 Weibull 模型{p_end}
{phang2}{cmd:. gsem (studytime <- age, family(weibull, failure(died))),}{break}
	{cmd: group(drug) ginvariant(coef)}{p_end}

{pstd}指定系数和截距在组间相等{p_end}
{phang2}{cmd:. gsem (studytime <- age, family(weibull, failure(died))),}{break}
	{cmd: group(drug) ginvariant(coef cons)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_group_options.sthlp>}