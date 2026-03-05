{smcl}
{* *! version 1.1.3  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem group options" "mansection SEM semgroupoptions"}{...}
{vieweralsosee "[SEM] Intro 6" "mansection SEM Intro6"}{...}
{findalias assemtfmmg}{...}
{findalias assemcnsg}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{viewerjumpto "Syntax" "sem_group_options_zh##syntax"}{...}
{viewerjumpto "Description" "sem_group_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_group_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_group_options_zh##options"}{...}
{viewerjumpto "Remarks" "sem_group_options_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_group_options_zh##examples"}
{help sem_group_options:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[SEM] sem group options} {hline 2}}在不同组上拟合模型{p_end}
{p2col:}({mansection SEM semgroupoptions:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} {it:paths} ...{cmd:,} ... {it:group_options}

{synoptset 24}{...}
{synopthdr:group_options}
{synoptline}
{synopt :{opth group(varname)}}为不同组拟合模型{p_end}
{synopt :{opt gin:variant(pclassname)}}指定各组间相等的参数{p_end}
{synoptline}

{marker pclassname}{...}
{synoptset 24}{...}
包含 help sem_classnames
{p2colreset}{...}
{p 4 6 2}
如果未指定 {opt ginvariant()}，则默认使用 {cmd:ginvariant(mcoef mcons)}。{p_end}

{phang}
{opt meanex}、{opt covex} 和 {opt all} 排除观察的外生变量（即仅包含潜在外生变量），
除非您指定 {opt noxconditional} 选项或该选项已被隐含；见
{help sem_option_noxconditional_zh:[SEM] sem 选项 noxconditional}。这在大多数情况下是您所期望的。

{marker description}{...}
{title:描述}

{pstd}
{cmd:sem} 可以在数据的子组上拟合组合模型，同时允许某些参数变化，约束其他参数在子组间相等。
这些子组可以是男性和女性、年龄类别等。

{pstd}
当指定 {opth group(varname)} 选项时，{cmd:sem} 执行这种估计。
{opt ginvariant(pclassname)} 选项指定哪些参数在组间约束为相等。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM semgroupoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{marker options}{...}
{title:选项}

{phang}
{opth group(varname)}
指定模型如上所述进行拟合。{it:varname} 指定记录观察所属组的数值变量名称。

{p 8 8 2}
如果您使用汇总统计数据代替原始数据，{it:varname} 是 {cmd:ssd describe} 报告的组变量名称；见
{help ssd_zh:[SEM] ssd}。

{phang}
{opth ginvariant:(sem_group_options##pclassname:pclassname)}
指定哪些类参数在各组间约束为相等。类定义如上所述。如果未指定该选项，默认为 
{cmd:ginvariant(mcoef mcons)}。

{marker remarks}{...}
{title:备注}

{pstd}
见 {manlink SEM Intro 6}，并且见 {findalias semtfmmg} 和 {findalias semcnsg}。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmmby}{p_end}

{pstd}有组的二因子测量模型{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
	{cmd: (Par -> parrel1 parrel2 parrel3 parrel4), group(grade)}{p_end}

{pstd}指定所有参数在各组间相等{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
	{cmd: (Par -> parrel1 parrel2 parrel3 parrel4),}{break}
	{cmd: group(grade) ginvariant(all)}{p_end}

{pstd}指定跨组的参数约束{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4), }{break}
	{cmd:group(grade) ginvariant(all) var(1: Peer@v3) var(2: Peer@v4)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_group_options.sthlp>}