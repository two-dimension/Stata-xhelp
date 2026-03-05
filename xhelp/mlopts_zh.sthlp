{smcl}
{* *! version 1.3.3  19feb2019}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Maximize" "help maximize_zh"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{viewerjumpto "语法" "mlopts_zh##syntax"}{...}
{viewerjumpto "描述" "mlopts_zh##description"}{...}
{viewerjumpto "使用 mlopts 的一些官方 Stata 命令" "mlopts_zh##mlopts"}{...}
{viewerjumpto "示例" "mlopts_zh##examples"}{...}
{viewerjumpto "存储的结果" "mlopts_zh##results"}
{help mlopts:English Version}
{hline}{...}
{title:标题}

{p 4 16 2}
{hi:[P] mlopts} {hline 2} ml 命令的解析工具


{marker syntax}{...}
{title:语法}

{phang2}
{cmd:mlopts}
	{it:mlopts}
	[{it:rest}]
	[{cmd:,} {it:options} ]


{marker description}{...}
{title:描述}

{pstd}
{cmd:mlopts} 是一个解析工具，旨在协助对使用 {cmd:ml} 的估计命令进行语法检查和解析。在 {it:options} 中指定的选项将被分组并返回到调用者指定的局部宏中。局部宏的名称由 {it:mlopts} 和 {it:rest} 确定。

{phang}
{it:mlopts} 是必需的，将包含 {cmd:ml} 命令识别为 {help maximize_zh} 选项的那些选项。返回的选项包括

{pmore}
	{opt tr:ace}
	{opt grad:ient}
	{opt hess:ian}
	{cmd:showstep}
	{opt tech:nique(algorithm_specs)}
	{cmd:vce(}{cmd:oim}|{cmdab:o:pg}|{cmdab:r:obust}{cmd:)}
	{opt iter:ate(#)}
	{opt tol:erance(#)}
	{opt ltol:erance(#)}
	{opt nrtol:erance(#)}
	{opt qtol:erance(#)}
	{opt nonrtol:erance}
	{opt showtol:erance}
	{cmdab:dif:ficult}
	{opt const:raints(clist|matname)}
	{opt col:linear}
	{opt nocnsnote:s}

{pmore}
有关上述选项的描述（{cmd:constraints()} 除外），请参见 {help maximize_zh:[R] Maximize}。有关约束的描述，请参见 {manhelp cnsreg R} 和 {manhelp reg3 R}。

{phang}
{it:rest} 是可选的，如果指定，将包含所有未在 {it:mlopts} 中返回的其他选项。如果未指定 {it:rest}，则任何额外选项将导致错误。


{marker mlopts}{...}
{title:使用 {cmd:mlopts} 的一些官方 Stata 命令}

{pstd}
以下命令使用 {cmd:mlopts}。请查看帮助以获取

{pmore}
	{help arch_zh},
	{help arima_zh},
	{help biprobit_zh},
	{help boxcox_zh},
	{help cloglog_zh},
	{help etregress_zh},
	{help frontier_zh},
	{help glm_zh},
	{helpb gnbreg},
	{help heckman_zh},
	{help heckprobit_zh},
	{help hetoprobit_zh},
	{help hetprobit_zh},
	{help hetregress_zh},
	{help intreg_zh},
	{help nbreg_zh},
	{help nlogit_zh},
	{help poisson_zh},
	{help rocfit_zh},
	{help scobit_zh},
	{help svar_zh},
	{help truncreg_zh},
	{help tssmooth_zh},
	{help xtcloglog_zh},
	{help xtfrontier_zh},
	{help xtintreg_zh},
	{help xtlogit_zh},
	{help xtnbreg_zh},
	{help xtpoisson_zh},
	{help xtprobit_zh},
	{help xtrchh_zh},
	{help xttobit_zh},
	{help zinb_zh},
	{help zip_zh}


{marker examples}{...}
{title:示例}

{pstd}
{cmd}. mlopts mlopts, constraints(1/3){text}

{pstd}
{cmd}. mlopts mlopts, constraints(1/3) junk{text}{break}
{err}选项 junk 不允许{break}
{txt}{search r(198):r(198);}

{pstd}
{cmd}. mlopts mlopts options, constraints(1/3) junk{text}{break}

{pstd}
{cmd}. sreturn list

{p 4 11 2}
{txt}宏:{break}
       s(constraints) : "{res}1 2 3{txt}"


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:mlopts} 存储以下内容到 {cmd:s()}：

{pstd}
宏:

        {cmd:s(constraints)}   {cmd:constraints()} 选项的内容
        {cmd:s(collinear)}     {bf:collinear}，如果指定了该选项
        {cmd:s(technique)}     {cmd:technique()} 选项的内容

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mlopts.sthlp>}