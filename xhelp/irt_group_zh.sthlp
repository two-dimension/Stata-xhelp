{smcl}
{* *! version 1.0.0  14may2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt, group()" "mansection IRT irt,group()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt, group() postestimation" "help irt group postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] DIF" "help dif_zh"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt constraints" "help irt constraints"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "irt group##syntax"}{...}
{viewerjumpto "Menu" "irt group##menu_irt"}{...}
{viewerjumpto "Description" "irt group##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_group_zh##linkspdf"}{...}
{viewerjumpto "Options" "irt group##options"}{...}
{viewerjumpto "Examples" "irt group##examples"}
{help irt_group:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[IRT] irt, group()} {hline 2}}IRT模型用于多个组{p_end}
{p2col:}({mansection IRT irt,group():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
单方程语法

{p 8 15 2}
{cmd:irt} {it:model} {varlist} ...{cmd:,} {opth group(varname)}
	[{help irt_group##options_tbl:{it:选项}}]


{pstd}
多方程语法

{p 8 15 2}
{cmd:irt} {cmd:(}[{it:#}{cmd::}] {it:model}
      {help varlist_zh:{it:varlist_1}}
     [{cmd:,} {help irt_group##mopts_list:{it:mopts}}]{cmd:)}
         {cmd:(}[{it:#}{cmd::}] {it:model}
      {help varlist_zh:{it:varlist_2}}
     [{cmd:,} {help irt_group##mopts_list:{it:mopts}}]{cmd:)} ...{cmd:,}
         {opth group(varname)}
	[{help irt_group##options_tbl:{it:选项}}]


{phang}
{it:#}{cmd::} 指定要拟合{it:model}的组。

{synoptset 16}{...}
{synopthdr:model}
{synoptline}
{synopt :{helpb irt 1pl:1pl}}单参数逻辑模型{p_end}
{synopt :{helpb irt 2pl:2pl}}双参数逻辑模型{p_end}
{synopt :{helpb irt 3pl:3pl}}三参数逻辑模型{p_end}
{synopt :{helpb irt grm:grm}}分级响应模型{p_end}
{synopt :{helpb irt pcm:pcm}}部分信用模型{p_end}
{synopt :{helpb irt pcm:gpcm}}广义部分信用模型{p_end}
{synopt :{helpb irt rsm:rsm}}评分量表模型{p_end}
{synopt :{helpb irt nrm:nrm}}名义响应模型{p_end}
{synoptline}
{p2colreset}{...}

{marker options_tbl}{...}
{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opth group(varname)}}为不同组拟合模型{p_end}

{syntab:模型}
{p2coldent :* {opth cns:(irt_constraints##syntax:spec)}}应用指定的参数约束{p_end}
{synopt:{opt list:wise}}通过清除法处理缺失的观察值{p_end}
{p2coldent :* {opt sepg:uessing}}为每个项目估计一个单独的伪猜测参数{p_end}
{p2coldent :* {opt gsepg:uessing}}为每个组估计单独的伪猜测参数{p_end}

{syntab:标准误/稳健性}
包括 help opt_irt_vce

{syntab:报告}
包括 help opt_irt_report
{synopt :{help irt_group##display_options:{it:display_options}}}控制
包括 help opt_irt_display

{syntab:整合}
{synopt :{cmdab:intm:ethod(}{help irt_group##intmethod:{it:intmethod}}{cmd:)}}整合方法{p_end}
包括 help opt_irt_int

{syntab:最大化}
{synopt :{it:{help irt_group##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:startv:alues(}{it:{help irt_group##startvalues:svmethod}}{cmd:)}}获取起始值的方法{p_end}
包括 help opt_irt_nodb
{synoptline}
{p2colreset}{...}
{marker mopts_list}{...}
{p 4 6 2}
* {it:mopts}为 {cmd:cns()}、 {cmd:sepguessing} 和 {cmd:gsepguessing}.{p_end}

包括 help irt_intmethod_table

{p 4 6 2}
请参见 {manhelp irt_group_postestimation IRT:irt, group() postestimation}以了解
估计后可用的功能。


包括 help menu_irt


{marker description}{...}
{title:描述}

{pstd}
多组IRT模型是在数据的不同组上组合的模型。
它们允许某些参数在组之间变化，而将其他参数约束为相等。
这些组可以是男性和女性、年龄类别等。

{pstd}
当指定 {opth group(varname)} 选项时，{cmd:irt} 命令拟合多组IRT模型。  


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irthybridQuickstart:快速入门}

        {mansection IRT irthybridRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker group_option}{...}
{phang}
{opth group(varname)} 指定模型参数允许在{it:varname}的值之间变化。 {it:varname} 可能是性别，那么参数可以在男性和女性之间变化，或者 {it:varname} 可能是其他值，且可能取多个值。无论 {it:varname} 是什么，{opt group(varname)} 默认约束各组中未指定组标识的每个模型的所有项目系数相等。
潜在特征的均值和方差分别约束为0和1，对于{it:varname}的最小值对应的组（参考组），其余组（焦点组）采用估计值。

{dlgtab:模型}

{marker cns_option}{...}
{phang}
{opt cns(spec)}
	约束项目参数为固定值或
	约束两个或多个参数相等；
	有关详情请见 {manhelp irt_constraints IRT:irt constraints}。

{phang}
{cmd:listwise} 通过清除法处理缺失值，这意味着如果某观察有任何项目缺失，则整个观察将从估计样本中省略。
默认情况下，观察中的所有非缺失项目都包括在似然计算中；只有缺失的项目被排除。

{phang}
{cmd:sepguessing} 指定为每个项目估计单独的伪猜测参数。该选项仅允许与 {cmd:3pl} 模型一起使用；有关详细信息请参见 {manhelp irt_3pl IRT:irt 3pl}。

{phang}
{cmd:gsepguessing} 指定为每个组估计单独的伪猜测参数。该选项仅允许与 {cmd:3pl} 模型一起使用。

{dlgtab:标准误/稳健性}

包括 help irt_vce_opt

{dlgtab:报告}

包括 help irt_display_opts

{dlgtab:整合}

包括 help irt_int_opts

{dlgtab:最大化}

包括 help irt_max_opts

包括 help irt_nodlg_opts


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc2}

{pstd}拟合一个双组2PL模型{p_end}
{phang2}{cmd:. irt 2pl q1-q5, group(female)}

{pstd}对每组的项目 {cmd:q4} 拟合一个双组2PL模型，其中存在单独的区分度和难度参数{p_end}
{phang2}{cmd:. irt (0: 2pl q4) (1: 2pl q4) (2pl q1 q2 q3 q5), group(female)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_group.sthlp>}