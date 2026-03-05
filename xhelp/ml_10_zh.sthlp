
{smcl}
{* *! version 1.1.9  31may2018}{...}
{cmd:help ml_10}{right:{help prdocumented_zh:之前已记录}}
{hline}
{help ml_10:English Version}
{hline}

{title:标题}

{p2colset 4 14 16 2}{...}
{p2col:{hi:[R] ml} {hline 2}}最大似然估计{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[{bf:ml} 语法从版本 11 开始有所更改。
本帮助文件记录了 {cmd:ml} 的旧语法，因此可能不适合您使用。您不必将旧的 do 文件中对 {cmd:ml} 的调用转换为现代语法，因为 Stata 仍然理解旧语法和新语法。此帮助文件是为了那些想要调试或理解旧代码的人提供的。
点击 {help ml_zh:这里} 获取现代 {cmd:ml} 命令的帮助文件。]{rm}


{title:语法}

{pstd}
在交互模式下使用 ml 模型

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:method progname eq}
[{it:eq ...}]
{ifin}
{weight}
[{cmd:,}
{it:{help ml_10##model_options:model_options}}
{opt svy}
{it:{help ml_10##diparm_options:diparm_options}}]


{pstd}
在非交互模式下使用 ml 模型

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:method progname eq}
[{it:eq ...}]
{ifin}
{weight}{cmd:,}
{opt max:imize}
[{it:{help ml_10##model_options:model_options}}
{opt svy}
{it:{help ml_10##diparm_options:diparm_options}}
{it:{help ml_10##noninteractive_options:noninteractive_options}}]


{pstd}
通过指定 {opt maximize} 选项来调用非交互模式。
当 {opt ml} 用作其他 ado 文件或程序的子例程，并且您希望将问题从定义到结果发布一并完成时，请使用 {opt maximize}。

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
	{it:{help ml_10##search_options:search_options}}]

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
	{it:{help ml_10##ml_maximize_options:ml_maximize_options}}
	{it:{help ml_10##display_options:display_options}}
	{it:{help ml_10##eform_option:eform_option}}]

{p 8 20 2}
{cmd:ml} {opt gr:aph}{space 4}[{it:#}]
	[{cmd:,}
	{cmdab:sav:ing:(}{it:filename}[{cmd:,} {opt replace}]{cmd:)}
	]

{p 8 20 2}
{cmd:ml} {opt di:splay}{space 2}[{cmd:,}
	{it:{help ml_10##display_options:display_options}}
	{it:{help ml_10##eform_option:eform_option}}]

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
其中 {it:method} 为 
{c -(} {opt lf} | {opt d0} | {opt d1} | {opt d1debug} | {opt d2} | {opt d2debug} {c )-},

{phang}
{it:eq} 是要估计的方程，包含在括号中，还可以选择性地给方程命名，前面加上冒号，

{p 12 16 2}
{cmd:(}
	[{it:eqname}{cmd::}]
	[{it:varlist_y} {cmd:=}]
	[{it:varlist_x}]
	[{cmd:,} {it:eq_options}]
{cmd:)}

{pmore}
或 {it:eq} 是一个参数的名称，例如 sigma，前面带斜杠

{p 12 12 2}
{cmd:/}{it:eqname}{space 6}这
等同于{space 4}{cmd:(}{it:eqname}{cmd::)}

{pmore}
{marker diparm_options}{...}
和 {it:diparm_options} 是一个或多个 {opt diparm(diparm_args)} 选项，其中
{it:diparm_args} 是 {opt __sep__} 或任何被"未记录"的 {opt _diparm} 命令接受的内容；请参见 {manhelp _diparm P}。

{marker eq_options}{...}
{synoptset 28}{...}
{synopthdr:eq_options}
{synoptline}
{synopt:{opt nocons:tant}}不包括方程中的截距
{p_end}
{synopt:{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，并将其系数约束为 1
	{p_end}
{synopt:{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，并将其系数约束为 1
	{p_end}
{synoptline}
{p2colreset}{...}

{marker model_options}{...}
{synoptset 28}{...}
{synopthdr:model_options}
{synoptline}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust},
{opt cl:uster} {it:clustvar}, {opt oim}, 或 {opt opg}{p_end}
{synopt:{opth const:raints(numlist)}}按数字应用的约束{p_end}
{synopt:{opt const:raints(matname)}}包含 要应用的约束的矩阵{p_end}
{synopt:{opt nocnsnote:s}}在约束被删除时不显示备注{p_end}
{synopt:{opth ti:tle(data types:string)}}在估计输出上放置标题{p_end}
{synopt:{opt nopre:serve}}在内存中不保留估计子样本{p_end}
{synopt:{opt col:linear}}在方程中保留共线变量{p_end}
{synopt:{opt miss:ing}}保留包含缺失值变量的观测值{p_end}
{synopt:{opt lf0(#k #ll)}}常数模型的参数数量和对数似然值{p_end}
{synopt:{opt cont:inue}}指定已经拟合一个模型并基于那些结果设置初始值 b_0 的变量{p_end}
{synopt:{opt wald:test(#)}}执行 Wald 检验；参见
{help ml_10##mlmode:在交互或非交互模式下使用 ml 模型的选项}下面的内容
{p_end}
{synopt:{opt obs(#)}}观测值的数量{p_end}
{synopt:{opt noscvars}}不生成并传递得分变量给似然评估程序；很少使用{p_end}
{synopt:{opth "crittype(data types:string)"}}描述 {opt ml} 所优化的标准
{p_end}
{synopt:{opth sub:pop(varname)}}计算单个子群体的估计{p_end}
{synopt:{opt no}{opt svy:adjust}}进行 W/k 分布 F(k,d) 的 Wald 检验{p_end}
{synopt:{cmdab:tech:nique(nr)}} Stata 的修改牛顿-拉夫森 (NR) 算法{p_end}
{synopt:{cmdab:tech:nique(bhhh)}} Berndt-Hall-Hall-Hausman (BHHH) 算法{p_end}
{synopt:{cmdab:tech:nique(dfp)}} Davidon-Fletcher-Powell (DFP) 算法{p_end}
{synopt:{cmdab:tech:nique(bfgs)}} Broyden-Fletcher-Goldfarb-Shanno (BFGS) 算法{p_end}
{synoptline}
{p2colreset}{...}

{marker noninteractive_options}{...}
{synoptset 28}{...}
{synopthdr:noninteractive_options}
{synoptline}
{synopt:{opt init:(ml_init_args)}}设置初始值 b_0{p_end}
{synopt:{cmdab:sea:rch(on)}}等同于 {cmd:ml search, repeat(0)}；默认值{p_end}
{synopt:{cmdab:sea:rch(norescale)}}等同于 {cmd:ml search, repeat(0) norescale}{p_end}
{synopt:{cmdab:sea:rch(quietly)}}与 {cmd:search(on)} 相同，但 suppress 的输出{p_end}
{synopt:{cmdab:sea:rch(off)}}防止调用 {opt ml search}{p_end}
{synopt:{opt r:epeat(#)}}{opt ml search} 的 {opt repeat()} 选项；见下文{p_end}
{synopt:{opt b:ounds(ml_search_bounds)}}为 {opt ml search} 指定边界
{p_end}
{synopt:{opt nowarn:ing}}抑制 {cmd:iterate(0)} 的 "未达到收敛" 消息{p_end}
{synopt:{opt novce}}用零矩阵替代方差矩阵{p_end}
{synopt:{opth sc:ore(newvar:newvars)}}包含得分贡献的新变量{p_end}
{synopt:{it:{help ml_10##noninteractive_maxopts:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}

{marker search_options}{...}
{synoptset 28}{...}
{synopthdr:search_options}
{synoptline}
{synopt:{opt r:epeat(#)}}随机尝试找到更好的初始值向量的次数；默认值为 {cmd:repeat(10)} 在交互模式下和 {cmd:repeat(0)} 在非交互模式下{p_end}
{synopt:{opt rest:art}}使用随机行为来寻找起始值；不推荐{p_end}
{synopt:{opt noresc:ale}}不进行重新缩放以改善向量参数；不推荐{p_end}
{synopt:{it:{help ml_10##search_maxopts:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}

{marker ml_maximize_options}{...}
{synoptset 28}{...}
{synopthdr:ml_maximize_options}
{synoptline}
{synopt:{opt nowarn:ing}}仅在 {cmd:iterate(0)} 时允许。 {opt nowarn:ing}
抑制“未达到收敛”消息。
程序员可能会在他们有一个最终估计的 b 向量时指定 {cmd:iterate(0) nowarning}，并希望 {opt ml} 计算方差矩阵和后估计结果。在这种情况下，请指定
{bind:{cmd:init(b) search(off) iterate(0) nowarning nolog}}。

{phang}
{opt novce}仅在 {cmd:iterate(0)} 时允许。 {opt novce}
将零矩阵替代方差矩阵，这实际上将估计结果作为固定常数发布。

{phang}
{cmd:score(}{it:{help newvar_zh:newvars}} | {it:stub}{cmd:*}{cmd:)} 创建新变量，包含模型中每个方程和附加参数的得分贡献；见
{bf:[U] 20.16 获取得分}。

{pmore}
如果 {opt score(newvars)} 被指定，{it:newvars} 必须包含 k 个新变量，分别对应模型中的每个方程。如果指定了 {cmd:score(}{it:stub}{cmd:*)}，则创建名为 {it:stub}{cmd:1}, {it:stub}{cmd:2}, {it:...}, {it:stub}{cmd:k} 的变量。

{pmore}
第一个变量包含 {bind:d(ln L_j)/d(x_1j b_1)}，第二个变量包含 {bind:d(ln L_j)/d(x_2j b_2)}，以此类推。

{phang}
{opt nooutput} 抑制结果的显示。此选项与在 {opt ml maximize} 前加上 {opt quietly} 不同，因为迭代日志仍会显示（假设未指定 {opt nolog}）。

{phang}
{opt noclear} 指定在模型收敛后不清除 ml 问题定义。也许您遇到了收敛问题，并且打算运行模型直到收敛。如果是这样，请使用 {opt ml search} 查看这些值是否能够改善，然后重新启动估计。

{phang}{marker ml_maxopts}
{it:maximize_options}:
{opt dif:ficult},
{opt iter:ate(#)},
[{cmdab:no:}]{opt lo:g},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt shownr:tolerance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt gtol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}; 见 {manhelp maximize R}。这些选项很少使用。

{phang}
{it:display_options}; 见
{help ml_10##mldisplay:与 ml display 一起使用的选项}。

{phang}
{it:eform_option}; 见
{help ml_10##mldisplay:与 ml display 一起使用的选项}。


{title:用于 ml graph 的选项}

{phang}
{help saving_option_zh:saving({it:filename}[, replace])} 指定图表保存在 {it:filename}{cmd:.gph} 中。


{marker mldisplay}{...}
{title:与 ml display 一起使用的选项}

{phang}
{opt noheader} 抑制系数表上方的头部显示，该头部显示最终对数似然值、观测值数量和模型显著性检验。

{phang}
{opt nocnsreport} 抑制系数表上方的约束显示。当未使用约束来拟合模型时，此选项将被忽略。

{phang}
{opt nofootnote} 抑制系数表下方的脚注显示，当模型所拟合的未在指定迭代次数内收敛时，显示警告。如果 (1) 您通过使用 {cmd:plus} 选项添加系数表，或 (2) 您有自己的脚注并希望警告最后显示，则使用 {cmd:ml} {cmd:footnote} 来显示警告。

{phang}
{opt level(#)} 是标准置信水平选项。它指定置信区间的置信水平（以百分比表示），默认值为 {cmd:level(95)} 或由 {opt set level} 设置；见 {manhelp level R}。

{phang}
{opt first} 仅显示第一方程的结果的系数表，并让报告看起来第一方程是唯一的。这选项用于估计附加参数的程序员，他们希望自己报告这些参数的值。

{phang}
{opt neq(#)} 是 {opt first} 的替代选项。
{opt neq(#)} 显示第一 {it:#} 方程的系数表。这选项用于估计 {it:#}+1 和之后方程的附加参数的程序员，他们希望自己报告这些参数的值。

{phang}
{opt showeqns} 是一个很少使用的选项，会在系数表中显示方程名称。 {cmd:ml} {cmd:display} 使用 {cmd:e(k_eq)} 和 {cmd:e(k_aux)} 中存储的数字来决定如何显示系数表。 {cmd:e(k_eq)} 确定方程的数量，{cmd:e(k_aux)} 确定有多少方程是附加参数的方程。如果未指定 {opt showeqns}，则隐含使用 {opt first} 选项，而除了第一方程外的所有方程都是附加参数的方程。

{phang}
{opt plus} 显示系数表，并以破折号{c -}加加号{c -}破折号结束，而不仅仅是破折号。这是为了程序员能够编写附加显示代码，将更多结果添加到表中，使其看起来像合并结果为一个表格。程序员通常会在选项 {opt first} 或 {opt neq()} 中指定 {cmd:plus}。这个选项隐含了 {cmd:nofootnote}。

{phang}
{it:eform_option}: {opth "eform(data types:string)"}, {opt eform}, {opt hr},
{opt irr}, {opt or}, 和
{opt rrr} 以指数形式显示系数表：
对于每个系数，将显示 exp({it:b}) 而不是 {it:b}，并且标准误差和置信区间也会转化。任何截距的显示（如果有的话）将被抑制。 {it:string} 是显示在转换系数上方的表头，必须不超过 11 个字符的长度 -- 例如，{cmd:eform("Odds ratio")}。选项 {opt eform}、{opt hr}、{opt irr}、{opt or} 和 {opt rrr} 提供一个默认的 {it:string}，等同于 {cmd:"exp(b)"}, {cmd:"Haz.  Ratio"}, {cmd:"IRR"}, {cmd:"Odds Ratio"}, 和 {cmd:"RRR"}。这些选项不能结合使用。

{pmore}
{cmd:ml} {cmd:display} 查看 {cmd:e(k_eform)} 以确定受到 {it:eform_option} 影响的方程数量；默认情况下，仅第一个方程受到影响。


{title:示例}

{pstd}
请参考 {bf:[R] ml} 以获取示例。更多示例可在
Gould, Pitblado 和 Sribney (2006) 中找到 -- 可以从 StataCorp 获取。


{title:保存的结果}

{pstd}
有关 {cmd:ml} 在没有 {cmd:svy} 选项下保存的结果，请参见
{manhelp maximize R}。

{pstd}
有关 {cmd:ml} 在使用 {cmd:svy} 选项下保存的结果，请参见
{manhelp svy SVY}。


{title:参考文献}

{phang}
Gould, W., J. Pitblado, 和 W. Sribney. 2006. 
{it:{browse "http://www.stata.com/bookstore/mle.html":使用 Stata 进行最大似然估计}}. 第 3 版. College Station: Stata Press。

{phang}
Korn, E. L., 和 B. I. Graubard. 1990.
使用复杂调查数据对回归系数进行同时检验：使用 Bonferroni t 统计量。
{it:American Statistician} 44: 270-276.


{title:另见}

{psee}
手册：
{bf:[R] ml}

{psee}
在线：
{manhelp maximize R},
{help ml score},
{help mleval_10_zh},
{manhelp nl R},
{help optimize_11_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ml_10.sthlp>}