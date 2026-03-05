
{smcl}
{* *! version 1.3.12  31may2018}{...}
{cmd:help ml_11}{right:{help prdocumented_zh:之前已记录}}
{hline}
{help ml_11:English Version}
{hline}

{p2colset 4 14 16 2}{...}
{p2col:{hi:[R] ml} {hline 2}}最大似然估计{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[与{bf:ml}的评估器类型相关的名称已在版本11中更改。
本帮助文件记录了{cmd:ml}的旧语法，因此可能对您没有兴趣。您无需将旧的do文件中对{cmd:ml}的调用转换为现代语法，因为Stata继续理解旧语法和新语法。此帮助文件面向希望调试或理解旧代码的用户。
点击{help ml_zh:这里}查看现代{cmd:ml}命令的帮助文件。]{rm}


{title:语法}

{pstd}
ml模型的交互模式

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:method progname eq}
[{it:eq ...}]
{ifin}
{weight}
[{cmd:,}
{it:{help ml_11##model_options:model_options}}
{opt svy}
{it:{help ml_11##diparm_options:diparm_options}}]

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:method} {it:funcname}{cmd:()} {it:eq}
[{it:eq ...}]
{ifin}
{weight}
[{cmd:,}
{it:{help ml_11##model_options:model_options}}
{opt svy}
{it:{help ml_11##diparm_options:diparm_options}}]


{pstd}
ml模型的非交互模式

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:method progname eq}
[{it:eq ...}]
{ifin}
{weight}{cmd:,}
{opt max:imize}
[{it:{help ml_11##model_options:model_options}}
{opt svy}
{it:{help ml_11##diparm_options:diparm_options}}
{it:{help ml_11##noninteractive_options:noninteractive_options}}]

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:method} {it:funcname}{cmd:()} {it:eq}
[{it:eq ...}]
{ifin}
{weight}{cmd:,}
{opt max:imize}
[{it:{help ml_11##model_options:model_options}}
{opt svy}
{it:{help ml_11##diparm_options:diparm_options}}
{it:{help ml_11##noninteractive_options:noninteractive_options}}]


{pstd}
通过指定{opt maximize}选项来调用非交互模式。在{opt ml}被用作另一个ado-file或程序的子程序时，使用{opt maximize}并希望在一个命令中完成从定义到结果发布的问题。

{p 8 20 2}
{cmd:ml clear}

{p 8 20 2}
{cmd:ml} {opt q:uery}

{p 8 20 2}
{cmd:ml check}

{p 8 20 2}
{cmd:ml} {opt sea:rch}{space 2}
	[[{cmd:/}]{it:eqname}[{cmd::}]
		{it:#lb} {it:#ub} ]
	[{it:...}]
	[{cmd:,}
	{it:{help ml_11##search_options:search_options}}]

{p 8 20 2}
{cmd:ml} {opt pl:ot}{space 4}
	[{it:eqname}{cmd::}]{it:name}
	[{it:#} [{it:#} [{it:#}]]]
	[{cmd:,}
	{cmdab:sav:ing:(}{it:filename}[{cmd:,} {opt replace}]{cmd:)}]

{p 8 20 2}
{cmd:ml init}{space 4}
	{c -(}
	[{it:eqname}{cmd::}]{it:name}{cmd:=}{it:#} |
	{cmd:/}{it:eqname}{cmd:=}{it:#}
	{c )-}
	[{it:...}]

{p 8 20 2}
{cmd:ml init}{space 5}{it:#} [{it:#} {it:...}]{cmd:,} {opt copy}

{p 8 20 2}
{cmd:ml init}{space 5}{it:matname} [{cmd:,} {opt copy} {opt skip} ]

{p 8 20 2}
{cmd:ml} {opt rep:ort}

{p 8 20 2}
{cmd:ml trace}{space 4}{c -(} {opt on} | {opt off} {c )-}

{p 8 20 2}
{cmd:ml count}{space 4}[ {opt clear} | {opt on} | {opt off} ]

{p 8 20 2}
{cmd:ml} {opt max:imize} [{cmd:,}
	{it:{help ml_11##ml_maximize_options:ml_maximize_options}}
	{it:{help ml_11##display_options:display_options}}
	{it:{help ml_11##eform_option:eform_option}}]

{p 8 20 2}
{cmd:ml} {opt gr:aph}{space 4}[{it:#}]
	[{cmd:,}
	{cmdab:sav:ing:(}{it:filename}[{cmd:,} {opt replace}]{cmd:)}
	]

{p 8 20 2}
{cmd:ml} {opt di:splay}{space 2}[{cmd:,}
	{it:{help ml_11##display_options:display_options}}
	{it:{help ml_11##eform_option:eform_option}}]

{p 8 20 2}
{cmd:ml} {opt foot:note}

{p 8 20 2}
{cmd:ml} {opt score} {newvar} {ifin}
      [{cmd:,} {it:{help ml_score_zh:ml_score_options}}]

{p 8 20 2}
{cmd:ml} {opt score} {it:newvarlist} {ifin}
      [{cmd:,} {bf:{help ml_score_zh:{ul:miss}ing}}]
 
{p 8 20 2}
{cmd:ml} {opt score} [{it:type}] {it:stub}{cmd:*} {ifin}
      [{cmd:,} {bf:{help ml_score_zh:{ul:miss}ing}}]
 
{phang}
其中{it:method}为以下之一

{col 13}{opt lf}{col 25}{opt d0}{col 37}        {col 49}{opt v0}
                {col 25}{opt d1}{col 37}{opt e1}{col 49}{opt v1}
                {col 25}{opt d1debug}{col 37}{opt e1debug}{col 49}{opt v1debug}
                {col 25}{opt d2}{col 37}{opt e2}{col 49}{opt v2}
                {col 25}{opt d2debug}{col 37}{opt e2debug}{col 49}{opt v2debug}

{phang}
{it:eq}为要估计的方程，用括号括起来，并可选择性地给方程命名，以冒号前缀，

{p 12 16 2}
{cmd:(}
	[{it:eqname}{cmd::}]
	[{it:varlist_y} {cmd:=}]
	[{it:varlist_x}]
	[{cmd:,} {it:eq_options}]
{cmd:)}

{pmore}
或{it:eq}是参数名称，例如sigma，前面带有斜杠

{p 12 12 2}
{cmd:/}{it:eqname}{space 6}等同于{space 4}{cmd:(}{it:eqname}{cmd::)}

{pmore}
{marker diparm_options}{...}
并且{it:diparm_options}是一个或多个{opt diparm(diparm_args)}选项，其中{it:diparm_args}可以是{opt __sep__}或任何被“未记录”的{opt _diparm}命令接受的内容；请参见{manhelp _diparm P}。

{marker eq_options}{...}
{synoptset 28}{...}
{synopthdr:eq_options}
{synoptline}
{synopt:{opt nocons:tant}}在方程中不包括截距
{p_end}
{synopt:{opth off:set(varname:varname_o)}}将{it:varname_o}包含在模型中，并且
	系数约束为1
	{p_end}
{synopt:{opth exp:osure(varname:varname_e)}}在模型中包含ln({it:varname_e})，并且
	系数约束为1
	{p_end}
{synoptline}
{p2colreset}{...}

{marker model_options}{...}
{synoptset 28}{...}
{synopthdr:model_options}
{synoptline}
{synopt:{opth vce(vcetype)}}{it:vcetype}可以是{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt oim}或{opt opg}{p_end}
{synopt:{opth const:raints(numlist)}}通过数字指定施加的约束{p_end}
{synopt:{opt const:raints(matname)}}包含要施加约束的矩阵{p_end}
{synopt:{opt nocnsnote:s}}在约束被删除时不显示注释{p_end}
{synopt:{opth ti:tle(data types:string)}}在估计输出上放置标题{p_end}
{synopt:{opt nopre:serve}}在内存中不保留估计的子样本{p_end}
{synopt:{opt col:linear}}在方程中保留共线变量{p_end}
{synopt:{opt miss:ing}}保留包含缺失值变量的观察{p_end}
{synopt:{opt lf0(#k #ll)}}参数的数量和
常数模型的对数似然值{p_end}
{synopt:{opt cont:inue}}指定模型已被拟合，并将模型的初始值b_0设定为基于这些
结果进行拟合{p_end}
{synopt:{opt wald:test(#)}}执行Wald检验；见
{help ml_11##mlmode:交互或非交互模式下使用的选项}  
{p_end}
{synopt:{opt obs(#)}}观察值的数量{p_end}
{synopt:{opth "crittype(data types:string)"}}描述{opt ml}优化的标准{p_end}
{synopt:{opth sub:pop(varname)}}为单个
子群体计算估计值{p_end}
{synopt:{opt no}{opt svy:adjust}}将Wald检验作为W/k分布的F(k,d)进行{p_end}
{synopt:{cmdab:tech:nique(nr)}}Stata修改的Newton-Raphson (NR)算法{p_end}
{synopt:{cmdab:tech:nique(bhhh)}}Berndt-Hall-Hall-Hausman (BHHH)算法{p_end}
{synopt:{cmdab:tech:nique(dfp)}}Davidon-Fletcher-Powell (DFP)算法{p_end}
{synopt:{cmdab:tech:nique(bfgs)}}Broyden-Fletcher-Goldfarb-Shanno (BFGS)算法{p_end}
{synoptline}
{p2colreset}{...}

{marker noninteractive_options}{...}
{synoptset 28}{...}
{synopthdr:noninteractive_options}
{synoptline}
{synopt:{opt init:(ml_init_args)}}设置初始值b_0{p_end}
{synopt:{cmdab:sea:rch(on)}}相当于{cmd:ml search, repeat(0)}；默认值{p_end}
{synopt:{cmdab:sea:rch(norescale)}}相当于{cmd:ml search, repeat(0) norescale}{p_end}
{synopt:{cmdab:sea:rch(quietly)}}与{cmd:search(on)}相同，输出被抑制{p_end}
{synopt:{cmdab:sea:rch(off)}}防止调用{opt ml search}{p_end}
{synopt:{opt r:epeat(#)}}{opt ml search}的{opt repeat()}选项；见下文{p_end}
{synopt:{opt b:ounds(ml_search_bounds)}}为{opt ml search}指定界限{p_end}
{synopt:{opt nowarn:ing}}抑制{cmd:iterate(0)}的“未达到收敛”消息{p_end}
{synopt:{opt novce}}将零矩阵替代方差矩阵{p_end}
{synopt:{opt negh}}指示评估器返回负Hessian矩阵{p_end}
{synopt:{opth sc:ore(newvar:newvars)}}新变量包含对分数的贡献{p_end}
{synopt:{it:{help ml_11##noninteractive_maxopts:maximize_options}}}控制
最大化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}

{marker search_options}{...}
{synoptset 28}{...}
{synopthdr:search_options}
{synoptline}
{synopt:{opt r:epeat(#)}}随机尝试找到更好的初始值向量的次数；默认情况下，在交互模式下为{cmd:repeat(10)}，在非交互模式下为{cmd:repeat(0)}{p_end}
{synopt:{opt rest:art}}使用随机动作找到起始值；不建议使用{p_end}
{synopt:{opt noresc:ale}}不进行缩放以改善向量参数；不建议使用{p_end}
{synopt:{it:{help ml_11##search_maxopts:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}

{marker ml_maximize_options}{...}
{synoptset 28}{...}
{synopthdr:ml_maximize_options}
{synoptline}
{synopt:{opt nowarn:ing}}抑制{cmd:iterate(0)}的“未达到收敛”消息{p_end}
{synopt:{opt novce}}用零矩阵替代方差矩阵{p_end}
{synopt:{opt negh}}指示评估器返回负Hessian矩阵{p_end}
{synopt:{cmdab:sc:ore(}{it:{help newvar_zh:newvars}} | {it:stub}{cmd:*}{cmd:)}}新变量包含分数的贡献{p_end}
{synopt:{opt noout:put}}抑制结果的显示{p_end}
{synopt:{opt noclear}}在模型收敛后不清除ml问题定义{p_end}
{synopt:{it:{help ml_11##ml_maxopts:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}

{marker display_options}{...}
{synoptset 28}{...}
{synopthdr:display_options}
{synoptline}
{synopt:{opt noh:eader}}抑制系数表上方的标题显示{p_end}
{synopt:{opt nofoot:note}}抑制系数表下方的脚注显示{p_end}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为{cmd:level(95)}{p_end}
{synopt:{opt f:irst}}只显示报表的第一个方程的结果{p_end}
{synopt:{opt neq(#)}}显示第一个{it:#}方程的结果{p_end}
{synopt:{opt showeq:ns}}在系数表中显示方程名称{p_end}
{synopt:{opt pl:us}}以破折号{c -}加加号{c -}破折号结束系数表{p_end}
{synopt:{opt nocnsr:eport}}抑制系数表上方的约束显示{p_end}
{synopt:{opt noomit:ted}}抑制遗漏变量的显示{p_end}
{synopt:{opt vsquish}}抑制将要素变量项或时间序列操作变量与其他变量隔开的空白空间{p_end}
{synopt:{opt noempty:cells}}抑制因子变量交互的空单元格{p_end}
{synopt:{opt base:levels}}报告因子变量和交互的基数级别{p_end}
{synopt:{opt allbase:levels}}显示因子变量和交互的所有基数级别{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker eform_option}{...}
{synoptset 28}{...}
{synopthdr:eform_option}
{synoptline}
{synopt:{opth ef:orm(data types:string)}}显示指数形式的系数；
列标题为“字符串”{p_end}
{synopt:{opt ef:orm}}显示指数形式的系数；
列标题为"{cmd:exp(b)}"{p_end}
{synopt:{opt hr}}报告风险比{p_end}
{synopt:{opt shr}}报告子风险比{p_end}
{synopt:{opt ir:r}}报告发病率比{p_end}
{synopt:{opt or}}报告比值比{p_end}
{synopt:{opt rr:r}}报告相对风险比{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt fweight}s、{opt aweight}s、{opt iweight}s和{opt pweight}s是允许的；见{help weight_zh}。
在除lf方法外的所有方法中，如果要指定{opt pweight}s，则必须仔细编写您的似然评估程序，并且在使用方法d0、d1、d1debug、d2或d2debug时不可指定{opt pweight}s。有关详细信息，请参阅Gould、Pitblado和Sribney（2006，第4章）。{p_end}
{p 4 6 2}
有关估计命令的更多功能，请参见{help estcom_zh}。要重新显示结果，请键入{cmd:ml display}.{p_end}


{title:描述}

{pstd}
{opt ml model}定义了当前问题。

{pstd}
{opt ml clear}清除当前问题定义。此命令很少使用，因为当您键入{opt ml model}时，任何先前的问题将自动清除。

{pstd}
{opt ml query}显示当前问题的描述。

{pstd}
{opt ml check}验证您编写的对数似然评估器是否有效。我们强烈建议使用此命令。

{pstd}
{opt ml search}搜索（更好）的初始值。我们建议使用此命令。

{pstd}
{opt ml plot}提供了一种图形方式来搜索（更好）的初始值。

{pstd}
{opt ml init}提供了一种指定初始值的方法。

{pstd}
{opt ml report}报告在初始值或当前参数估计值下的ln L值、梯度和Hessian。

{pstd}
{opt ml trace}跟踪用户定义的对数似然评估程序的执行。

{pstd}
{opt ml count}计算用户定义的对数似然评估程序被调用的次数；此命令很少使用。
{opt ml count clear} 清除计数器。{opt ml count on} 开启计数器。{opt ml count}没有参数时报告计数器的当前值。{opt ml count off}停止计数调用。

{pstd}
{opt ml maximize}最大化似然函数并报告结果。一旦{opt ml maximize}成功完成，先前提到的{opt ml}命令可能无法使用，除非指定{opt noclear}。无论是否指定{opt noclear}，都可以使用{opt ml graph}和{opt ml display}。

{pstd}
{opt ml graph}将对数似然值与迭代次数进行图形化。

{pstd}
{opt ml display}重新显示结果。

{pstd}
{opt ml footnote}在模型未在指定的迭代次数内收敛时显示警告消息。

{pstd}
{opt ml score}创建新变量，包含方程级的分数。由{cmd:ml score}生成的变量
等同于通过指定{cmd:score()}选项的结果{cmd:ml maximize}（和{cmd:ml model} ...{cmd:,} ... {cmd:maximize}）。

{pstd}
{it:progname}是您编写的用于评估对数似然函数的Stata程序的名称。

{pstd}
{it:funcname}{cmd:()}是您编写的用于评估对数似然函数的Mata函数的名称。

{pstd}
在此文档中，{it:progname}和{it:funcname}{cmd:()}被称为用户编写的评估器、似然评估器，或者有时简称评估器。您编写的程序是以您选择的方法所要求的风格编写的。方法包括lf、d0、d1、d2、e1、e2、v1和v2。因此，如果您选择使用方法lf，您的程序称为lf评估器。{help mlmethod_11_zh}展示了每种方法的评估程序的概述。

{pstd}
有几个命令在为{opt ml}编写用户编写的评估器时很有帮助。如果您的评估器是Stata程序，请查看{help mleval_11_zh}以了解{opt mleval}、{opt mlsum}、{opt mlvecsum}、{opt mlmatsum}和{opt mlmatbysum}等命令的详细信息。
如果您的评估器是Mata函数，请查看{helpb moptimize_11##syn_stepall:moptimize_11} 
以了解{cmd:moptimize_util_sum()}、{cmd:moptimize_util_vecsum()}、{cmd:moptimize_util_matsum()}和{cmd:moptimize_util_matbysum()}函数的详细信息。

{marker mlmode}{...}
{title:用于交互或非交互模式下ml模型的选项}

{phang}
{opt vce(vcetype)}指定报告的标准误差类型，包括对某些错误规格稳健的类型，允许组内相关性，且源自渐进理论；
见{help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)}, {cmd:pweight}和{cmd:svy}将与方法lf、e1、e2、v0、v1和v2评估器配合使用；
所需的只是简单地指定它们。

{pmore}
这些选项与方法d0、d1或d2评估器无效，指定这些选项将产生错误消息。

{phang}
{cmd:constraints(}{it:{help numlist_zh}} | {it:matname}{cmd:)}指定将在估计过程中施加的线性约束。{opt constraints(numlist)}通过数字指定约束。约束是通过{cmd:constraint}命令定义的；见{manhelp constraint R}。{opt constraint(matname)}指定一个包含要施加约束的矩阵。

{phang}
{opt nocnsnotes}防止在约束被删除时显示注释。如果约束不一致、与其他约束矛盾或在构建约束矩阵时导致其他错误，将删除该约束。约束将按照指定的顺序进行检查。

{phang}
{opth "title(data types:string)"}指定在结果完成时估计输出的标题。

{phang}
{opt nopreserve}指定{cmd:ml}在调用用户编写的似然评估器时无需确保只有估计子样本在内存中。使用lf方法时{opt nopreserve}是无关的。有关更多详细信息，请参见{bf:[R] ml}。

{phang}
{opt collinear}指定{opt ml}不会删除方程内的共线变量。没有理由保留共线变量，但这个选项对程序员来说是有趣的，因为他们的代码中已经删除了共线变量，并且不希望{cmd:ml}浪费计算时间再次检查。

{phang}
{opt missing}指定包含缺失值变量的观察不被排除在估计样本之外。您可能想要指定{cmd:missing}的两个原因：

{pmore}
程序员可能希望指定{cmd:missing}，因为在代码的其他部分中，他们已经消除了缺失值的观察，不希望{cmd:ml}浪费计算时间再次调查。

{pmore}
如果您的模型明确处理缺失值，您可能希望指定{cmd:missing}。Stata的{cmd:heckman}命令就是一个很好的例子。在这种情况下，将允许某些观察缺失值，而其他观察则不允许其存在——存在时，这些观察应该被排除。如果您指定{cmd:missing}，您有责任指定一个{cmd:if} {it:exp}，以消除无关的观察。

{phang}
{opt lf0(#k #ll)}通常由程序员使用。它指定常数模型的参数数量和对数似然值，以便{cmd:ml}能够报告似然比检验，而不是Wald检验。

{pmore}
另外请参见下方的{cmd:continue}选项。

{pmore}
如果您指定{cmd:lf0()}，那么同时也必须安全地指定{cmd:missing}选项，否则您是如何在同一样本上计算出常数模型的对数似然的呢？您必须识别估计样本，并且做得正确，因此{cmd:ml}没有理由浪费时间重新检查您的结果。所有这些都意味著，除非您确定代码正确识别了估计样本，否则不要指定{cmd:lf0()}。

{pmore}
{cmd:lf0()}在指定{cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)}, {cmd:pweight}或{cmd:svy}时被忽略，因为在这种情况下，进行似然比检验是不合适的。

{phang}
{opt continue}通常由程序员指定，并且执行两个操作：

{pmore}
首先，它指定使用{opt ml}或其他估计命令（例如{help logit_zh}）刚刚拟合了一个模型，并且当前存储在{cmd:e(ll)}中的对数值和存储在{cmd:e(b)}中的参数数量是与常数模型相关的值。当前的对数似然值用于呈现似然比检验，除非指定了{cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)}, {opt pweight}、{opt svy}或{opt constraints()}。当指定{cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)}, {opt pweight}或{opt svy}时，似然比检验是不合适的。当指定{opt constraints()}时，我们建议使用{help lrtest_zh}。

{pmore}
其次，{opt continue}根据当前存储的{cmd:e(b)}为即将被拟合的模型设置初始值b_0。

{pmore}
关于{cmd:missing}与{cmd:lf0()}的特定说明同样适用于此。

{phang}
{opt waldtest(#)}通常由程序员指定。默认情况下，{opt ml}会呈现Wald检验，但如果指定了{opt lf0()}或{opt continue}选项，则会覆盖这一点。如果指定了{cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)},或{opt pweight}，则执行Wald检验。

{pmore}
{cmd:waldtest(0)}防止报告即使Wald检验。

{pmore}
{cmd:waldtest(-1)}是默认值。它指定通过将所有系数约束为0以在第一个方程中执行Wald检验。其余方程应不受约束。
如果既未指定{cmd:lf0()}也未指定{opt continue}，则执行Wald检验，并且如果指定了{cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)}, 或{opt pweight}，则强制执行Wald检验。

{pmore}
{opt waldtest(k)}对于{it:k} {ul:<} -1指定通过将所有系数约束为0在第一个|{it:k}|方程中执行Wald检验；其余方程应不受约束。如果既未指定{cmd:lf0()}也未指定{opt continue}，则执行Wald检验，并且如果指定了{cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)}, 或{opt pweight}，则强制执行Wald检验。

{pmore}
{opt waldtest(k)}对于{it:k} {ul:>} 1的工作与上述选项类似，不同之处在于即使可以执行似然比检验且未指定{cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)}, 或{opt pweight}时，也会强制报告Wald检验。
{opt waldtest(k)}，{it:k} {ul:>} 1，不能与{opt lf0()}一起指定。

{phang}
{opt obs(#)}主要由程序员使用。它指定报告的观察数量和最终存储在{cmd:e(N)}中的数量为{it:#}。
通常，{opt ml}可以自行计算此值。程序员可能想在使似然评估器适用于N观察值时指定此选项，因为他们首先必须修改数据集以包含不同数量的观察。

{phang}
{opth "crittype(data types:string)"}主要由程序员使用。它允许程序员提供一个字符串（最长为32个字符）来描述{cmd:ml}所优化的标准。对于非稳健估计，默认值为{cmd:"log likelihood"}，对于稳健估计，默认值为{cmd:"log pseudolikelihood"}。

{phang}
{opt svy}指示{cmd:ml}应拾取由{cmd:svyset}设置的{opt svy}设置并使用稳健方差估计器。此选项要求数据被{help svyset_zh}。{opt svy}不能与{cmd:vce()}或{help weight_zh}s同时指定。

{phang}
{opth subpop(varname)}指定为由{it:varname} != 0的观察定义的单个子群体计算估计值。通常，{it:varname} = 1定义子群体，而{it:varname} = 0表示不属于子群体的观察。对于子群体状态不确定的观察，{it:varname}应设置为缺失（‘.’）。此选项需要{opt svy}选项。

{phang}
{opt nosvyadjust}指定模型Wald检验应作为W/k分布的F(k,d)进行，其中W是Wald检验统计量，k是模型中除常数项外的项数，d是已抽样的PSU的总数减去总层数，而F(k,d)是具有k个分子自由度和d个分母自由度的F分布。默认情况下，进行调整的Wald检验： （d-k+1）W/(kd)分布的F(k,d-k+1)。有关Wald检验及其调整的讨论，请参见Korn和Graubard（1990）。此选项需要{opt svy}选项。

{phang}
{opt technique(algorithm_spec)}指定最大化似然函数的方法。{cmd:ml}当前实现了以下算法。有关详细信息，请参阅Gould、Pitblado和Sribney（2006）。

{pmore}
{cmd:technique(nr)}指定Stata修改的Newton-Raphson (NR)算法。

{pmore}
{cmd:technique(bhhh)}指定Berndt-Hall-Hall-Hausman (BHHH)算法。

{pmore}
{cmd:technique(dfp)}指定Davidon-Fletcher-Powell (DFP)算法。

{pmore}
{cmd:technique(bfgs)}指定Broyden-Fletcher-Goldfarb-Shanno (BFGS)算法。

{pmore}
默认值为{cmd:technique(nr)}。

{pmore}
您可以通过在{opt technique()}选项中指定多个方法来切换算法。默认情况下，{cmd:ml}将在变更到下一个算法之前执行五次迭代。要指定不同的迭代次数，请在选项中包含数字。例如，指定{cmd:technique(bhhh 10 nr 1000)}请求{cmd:ml}进行10次使用BHHH算法的迭代，然后进行1,000次使用NR算法的迭代，然后再切换回BHHH进行10次迭代，依此类推。该过程将继续进行，直到收敛或达到最大迭代次数。


{title:用于非交互模式指定ml模型的选项}

{pstd}
以下额外选项适用于非交互模式下的{opt ml model}。非交互模式是针对将{opt ml}用作子程序的程序员，而希望一次性发出一个命令，将估计从头到尾进行。

{phang}
{opt maximize}是必需的。它指定非交互模式。

{phang}
{opt init(ml_init_args)}设置初始值b_0。
{it:ml_init_args}是您在{opt ml init}命令后输入的内容。

{phang}
{cmd:search(}{opt on}|{opt norescale}|{opt quietly}|{opt off}{cmd:)}指定是否使用{cmd:ml search}来改进初始值。{cmd:search(on)}是默认值，相当于单独运行{cmd:ml search, repeat(0)}。{cmd:search(norescale)}相当于单独运行{cmd:ml search, repeat(0) norescale}。
{cmd:search(quietly)}相当于{cmd:search(on)}，不同之处在于它抑制{cmd:ml search}的输出。{cmd:search(off)}防止调用{cmd:ml search}。

{phang}
{opt repeat(#)}是{opt ml search}的{opt repeat()}选项。{cmd:repeat(0)}是默认值。

{phang}
{opt bounds(ml_search_bounds)}指定搜索界限。{opt ml model}命令发出{opt ml search} {it:ml_search_bounds}{opt , repeat(#)}。指定搜索界限是可选择的。

{phang}
{opt nowarning}、{opt novce}、{opt negh}和{opt score()}是{opt ml maximize}的等效选项。

{phang}{marker noninteractive_maxopts}
{it:maximize_options}：
{opt dif:ficult}、{opt tech:nique(algorithm_spec)}、{opt iter:ate(#)}，
[{cmdab:no:}]{opt lo:g}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance}；见{manhelp maximize R}。这些选项很少使用。

{title:指定方程时使用的选项}

{phang}
{opt noconstant}指定方程不包括截距。

{phang}
{opth "offset(varname:varname_o)"}指定方程为
xb + {it:varname_o} -- 这意味着它包含{it:varname_o}且
系数约束为1。

{phang}
{opth "exposure(varname:varname_e)"}是{opt offset(varname_o)}的替代方案；它指定方程为xb +
ln({it:varname_e})。方程中应包含ln({it:varname_e})且系数约束为1。


{title:与ml search一起使用的选项}

{phang}
{opt repeat(#)}指定要进行的随机尝试次数，以求找到更好的初始值向量。默认值为{cmd:repeat(10)}。

{pmore}
{cmd:repeat(0)}指定不进行随机尝试。
更确切地说，{cmd:repeat(0)}指定在第一个初始值向量是可行的起点的情况下不进行随机尝试。如果不然，即使您指定{cmd:repeat(0)}，{opt ml search}也会进行随机尝试，因为它没有其它选择。当初始起始值向量不可行时，{opt ml search}将进行多达1,000次随机尝试以寻找起始值。它会在找到一组有效值时停止，然后继续进行改进初始值的逻辑。

{pmore}
{opt repeat(k)}，{it:k} > 0，指定要进行随机尝试以改进初始值的次数。

{phang}
{opt restart}指定采取随机行动以获得起始值，并且结果起始值不是当前值的确定性函数。通常，您不应指定此选项，因为使用{cmd:restart}时，{cmd:ml search}故意不产生尽可能好的起始值。
{opt restart}是为优化器在严重故障时使用而设的。随机行动确保优化器与{cmd:ml search}协同工作时不会导致无休止的循环。

{pmore}
{cmd:restart}隐含{cmd:norescale}，因此我们建议您不要指定{cmd:restart}。在测试过程中，有时{cmd:rescale}效果非常好，以至于即使随机化后，缩放过程也会将起始值恢复到最初的状态，从而违背随机化的意图。

{phang}
{opt norescale}指定{opt ml search}不进行缩放以改善参数向量。我们不建议指定此选项，因为缩放通常效果很好。

{phang}{marker search_maxopts}
{it:maximize_options}：
[{cmdab:no:}]{cmdab:lo:g}、{opt tr:ace}；见{manhelp maximize R}。这些选项很少使用。

{title:与ml plot一起使用的选项}

{phang}
{help saving_option_zh:saving({it:filename}[, replace])}指定图形被保存到{it:filename}{cmd:.gph}。

{title:与ml init一起使用的选项}

{phang}
{opt copy}指定数字列表或初始化向量按位置而非按名称复制到初始值向量中。

{phang}
{opt skip}指定在指定的初始化向量中找到的任何参数如果未在模型中找到则被忽略。默认动作是发出错误消息。

{title:与ml maximize一起使用的选项}

{phang}
{opt nowarning}仅与{cmd:iterate(0)}一起使用。{opt nowarning}抑制“未达到收敛”消息。
程序员可能会在他们已经包含最终估计的向量b并希望{opt ml}计算方差矩阵和后期估计结果时指定{cmd:iterate(0) nowarning}。然后指定{bind:{cmd:init(b) search(off) iterate(0) nowarning nolog}}。

{phang}
{opt novce}仅与{cmd:iterate(0)}一起使用。{opt novce}将零矩阵替代方差矩阵，这实际上将估计结果发布为固定常数。

{phang}
{opt negh}指示评估器返回负Hessian矩阵。默认情况下，{cmd:ml}假设d2、e2和v2评估器返回Hessian矩阵。

{phang}
{cmd:score(}{it:{help newvar_zh:newvars}} | {it:stub}{cmd:*}{cmd:)}为每个方程和模型中的辅助参数创建新变量，包含分数贡献；见{findalias frscore}。

{pmore}
如果指定{opt score(newvars)}，则{it:newvars}必须包含k个新变量，每个方程一个。如果指定{cmd:score(}{it:stub}{cmd:*)}，则会创建名为{it:stub}{cmd:1}、{it:stub}{cmd:2}、{it:stub}{cmd:...}、{it:stub}{cmd:k}的变量。

{pmore}
第一个变量包含{bind:d(ln L_j)/d(x_1j b_1)}，第二个变量包含{bind:d(ln L_j)/d(x_2j b_2)}，依此类推。

{phang}
{opt nooutput}抑制结果的显示。此选项不同于在{opt ml maximize}前加上{opt quietly}，因为迭代日志仍然会被显示（假定未指定{opt nolog}）。

{phang}
{opt noclear}指定在模型收敛后不清除ml问题定义。也许您遇到了收敛问题并打算运行模型以取得收敛。如果是这样，请使用{opt ml search}查看这些值是否可以改善，然后重新开始估计。

{phang}{marker ml_maxopts}
{it:maximize_options}：
{opt dif:ficult}、{opt iter:ate(#)}、[{cmdab:no:}]{opt lo:g}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance}；见{manhelp maximize R}。这些选项很少使用。

{phang}
{it:display_options}；见
{help ml_11##mldisplay:与ml display一起使用的选项}。

{phang}
{it:eform_option}；见
{help ml_11##mldisplay:与ml display一起使用的选项}。


{title:与ml graph一起使用的选项}

{phang}
{help saving_option_zh:saving({it:filename}[, replace])}指定图形被保存到{it:filename}{cmd:.gph}。


{marker mldisplay}{...}
{title:与ml display一起使用的选项}

{phang}
{opt noheader}抑制系数表上方的标题显示，显示最终的对数似然值、观察数量和模型显著性检验。

{phang}
{opt nofootnote}抑制系数表下方的脚注显示，显示警告，如果模型拟合在指定的迭代次数内未收敛。使用{cmd:ml} {cmd:footnote}在1）使用{cmd:plus}选项将结果添加到系数表或2）您有自己的脚注并希望警告最后显示的情况下显示警告。

{phang}
{opt level(#)}是标准置信水平选项。它指定系数信赖区间的置信水平，以百分比表示。默认值为{cmd:level(95)}或由{opt set level}设置；见{manhelp level R}。

{phang}
{opt first}仅显示第一个方程的结果，使报告看起来好像只有第一个方程。该选项用于估计第二个及后续方程的辅助参数，并报告这些参数值的程序员。

{phang}
{opt neq(#)}是{opt first}的替代方案。
{opt neq(#)}显示前{it:#}个方程的结果。该选项用于估计{it:#}+1及后续方程的辅助参数，并报告这些参数值的程序员。

{phang}
{opt showeqns}是一个很少使用的选项，它在系数表中显示方程名称。{cmd:ml} {cmd:display}使用存储在{cmd:e(k_eq)}和{cmd:e(k_aux)}中的数字来确定如何显示系数表。{cmd:e(k_eq)}指出方程的数量，而{cmd:e(k_aux)}指出这些方程中有多少是辅助参数。当未指定{opt showeqns}时，默认假定{opt first}选项，而所有但第一个方程都是辅助参数。

{phang}
{opt plus}显示系数表并以破折号{c -}加加号{c -}破折号结束，而不仅仅是破折号。这使程序员能够编写额外的显示代码，将更多结果添加到表中，并使其看起来像是一个表。程序员通常在{opt first}或{opt neq()}选项中指定{cmd:plus}。此选项隐含{cmd:nofootnote}。

{phang}
{opt nocnsreport}抑制在系数表上方显示约束。当未使用约束拟合模型时，此选项会被忽略。

{phang}
{opt noomitted}指定因共线性而被省略的变量不被显示。默认情况下，表中应包含因共线性被省略的任何变量，并且标注为“（省略）”。

{phang}
{opt vsquish}指定抑制因子变量项或时间序列操作变量与其他变量之间的空白空间。

{phang}
{opt noemptycells}指定不显示因子变量交互的空单元格。默认情况下，表中应包含在估计样本中未发生的交互单元格，并标注为“（空）”。

{phang}
{opt baselevels}和{opt allbaselevels}控制是否显示因子变量和交互的基数级别。默认情况是从表中排除所有基数类。

{phang2}
        {opt baselevels}指定因子变量和其基础无法从其组件因子变量推断的交互报告基数级别。

{phang2}
        {opt allbaselevels}指定报告因子变量和交互的所有基数级别。

{phang}
{opt coeflegend}指定将显示系数的图例以及如何在表达式中指定它们，而不是显示系数的统计数据。

{phang}
{it:eform_option}： {opth "eform(data types:string)"}, {opt eform}, {opt hr}, {opt shr}, {opt irr}, {opt or}，和{opt rrr}以指数形式显示系数表：
对于每个系数，显示exp({it:b})而不是{it:b}，并且标准误和置信区间被转换。若存在，截距的显示被抑制。{it:string}是将显示在转换系数上方的表头，且长度不得超过11个字符——例如，{cmd:eform("比值比")}。
选项{opt eform}、{opt hr}、{opt shr}、{opt irr}、{opt or}和{opt rrr}提供默认{it:string}，等价于{cmd:"exp(b)"}, {cmd:"Haz.  Ratio"}, {cmd:"SHR"}, {cmd:"IRR"}, {cmd:"Odds Ratio"}，和{cmd:"RRR"}。这些选项不能组合。

{pmore}
{cmd:ml} {cmd:display}查看{cmd:e(k_eform)}以确定有多少方程受{it:eform_option}影响；默认情况下，只有第一个方程会受到影响。


{title:示例}

{pstd}
见{bf:[R] ml}以获取示例。更多示例可在Gould、Pitblado和Sribney（2006）中找到——可从StataCorp获得。


{title:保存的结果}

{pstd}
有关未使用{cmd:svy}选项的{cmd:ml}保存的结果，请参见{manhelp maximize R}。

{pstd}
有关使用{cmd:svy}选项的{cmd:ml}保存的结果，请参见{manhelp svy SVY}。


{title:参考文献}

{phang}
Gould, W. W., J. Pitblado, and W. M. Sribney. 2006. 
{browse "http://www.stata.com/bookstore/mle.html":{it:用Stata进行最大似然估计}. 第3版} College Station, TX: Stata Press。

{phang}
Korn, E. L., and B. I. Graubard. 1990.
使用复杂调查数据的回归系数的同时检验：使用Bonferroni t统计量。
{it:美国统计师} 44: 270-276。


{title:另请参见}

{psee}
手册：
{manlink R ml}

{psee}
{space 2}帮助：  
{manhelp maximize R}、
{helpb ml score}、
{help mleval_11_zh}、
{manhelp nl R}、
{help moptimize_11_zh}、
{help optimize_11_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ml_11.sthlp>}