{smcl}
{* *! version 1.5.7  19feb2019}{...}
{vieweralsosee "[R] ml" "mansection R ml"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "ml score" "help ml score"}{...}
{vieweralsosee "mleval" "help mleval_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Maximize" "help maximize_zh"}{...}
{vieweralsosee "[R] mlexp" "help mlexp_zh"}{...}
{vieweralsosee "[M-5] moptimize()" "help mf_moptimize_zh"}{...}
{vieweralsosee "[R] nl" "help nl_zh"}{...}
{vieweralsosee "[M-5] optimize()" "help mf_optimize_zh"}{...}
{viewerjumpto "Syntax" "ml_zh##syntax"}{...}
{viewerjumpto "Description" "ml_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ml_zh##linkspdf"}{...}
{viewerjumpto "Options for use with ml model in interactive or noninteractive mode" "ml_zh##options1"}{...}
{viewerjumpto "Options for use with ml model in noninteractive mode" "ml_zh##options2"}{...}
{viewerjumpto "Options for use when specifying equations" "ml_zh##options3"}{...}
{viewerjumpto "Options for use with ml search" "ml_zh##options_mlsearch"}{...}
{viewerjumpto "Option for use with ml plot" "ml_zh##option_mlplot"}{...}
{viewerjumpto "Options for use with ml init" "ml_zh##options_mlinit"}{...}
{viewerjumpto "Options for use with ml maximize" "ml_zh##options_mlmax"}{...}
{viewerjumpto "Option for use with ml graph" "ml_zh##option_mlgraph"}{...}
{viewerjumpto "Options for use with ml display" "ml_zh##options_mldisplay"}{...}
{viewerjumpto "Examples" "ml_zh##examples"}{...}
{viewerjumpto "Stored results" "ml_zh##results"}{...}
{viewerjumpto "References" "ml_zh##references"}
{help ml:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] ml} {hline 2}}最大似然估计{p_end}
{p2col:}({mansection R ml:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
ml 模型的交互模式

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:{help ml##method:方法}}
{it:{help ml##progname:程序名称}}
{it:{help ml##eq:方程}}
[{it:{help ml##eq:eq}} ...]
{ifin}
[{it:{help ml##weight:权重}}]
[{cmd:,}
{it:{help ml##model_options:模型选项}}
{opt svy}
{it:{help ml##diparm_options:参数选项}}]

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:{help ml##method:方法}} {it:{help ml##funcname:函数名称}}{cmd:()}
{it:{help ml##eq:方程}}
[{it:{help ml##eq:eq}} ...]
{ifin}
[{it:{help ml##weight:权重}}]
[{cmd:,}
{it:{help ml##model_options:模型选项}}
{opt svy}
{it:{help ml##diparm_options:参数选项}}]


{pstd}
ml 模型的非交互模式

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:{help ml##method:方法}}
{it:{help ml##progname:程序名称}}
{it:{help ml##eq:方程}}
[{it:{help ml##eq:eq}} ...]
{ifin}
[{it:{help ml##weight:权重}}]{cmd:,}
{opt max:imize}
[{it:{help ml##model_options:模型选项}}
{opt svy}
{it:{help ml##diparm_options:参数选项}}
{it:{help ml##noninteractive_options:非交互选项}}]

{p 8 20 2}
{cmd:ml} {opt mod:el}{space 3}
{it:{help ml##method:方法}} {it:{help ml##funcname:函数名称}}{cmd:()}
{it:{help ml##eq:方程}}
[{it:{help ml##eq:eq}} ...]
{ifin}
[{it:{help ml##weight:权重}}]{cmd:,}
{opt max:imize}
[{it:{help ml##model_options:模型选项}}
{opt svy}
{it:{help ml##diparm_options:参数选项}}
{it:{help ml##noninteractive_options:非交互选项}}]


{pstd}
非交互模式通过指定 {opt maximize} 选项启动。当 {opt ml} 将作为另一个 ado 文件或程序的子程序使用时，可以使用 {opt maximize}，希望将问题从定义到结果发布在一个命令中完成。

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
    {it:{help ml##search_options:搜索选项}}]

{p 8 20 2}
{cmd:ml} {opt pl:ot}{space 4}
    [{it:eqname}{cmd::}]{it:name}
    [{it:#} [{it:#} [{it:#}]]]
    [{cmd:,}
    {cmdab:sav:ing:(}{it:{help filename_zh}}[{cmd:,} {opt replace}]{cmd:)}]

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
    {it:{help ml##ml_maximize_options:最大化选项}}
    {it:{help ml##display_options:显示选项}}
    {it:{help ml##eform_option:eform选项}}]

{p 8 20 2}
{cmd:ml} {opt gr:aph}{space 4}[{it:#}]
    [{cmd:,}
    {cmdab:sav:ing:(}{it:{help filename_zh}}[{cmd:,} {opt replace}]{cmd:)}
    ]

{p 8 20 2}
{cmd:ml} {opt di:splay}{space 2}[{cmd:,}
    {it:{help ml##display_options:显示选项}}
    {it:{help ml##eform_option:eform选项}}]

{p 8 20 2}
{cmd:ml} {opt foot:note}

{p 8 20 2}
{cmd:ml} {opt score} {newvar} {ifin}
      [{cmd:,} {it:{help ml_score_zh:ml_score_options}}]

{p 8 20 2}
{cmd:ml} {opt score} {it:newvarlist} {ifin}
      [{cmd:,} {bf:{help ml_score_zh:{ul:缺失}}]
 
{p 8 20 2}
{cmd:ml} {opt score} [{it:type}] {it:{help newvarlist##stub*:stub}}{cmd:*} {ifin}
      [{cmd:,} {bf:{help ml_score_zh:{ul:缺失}}]

{marker method}{...}
{phang}
其中 {it:method} 是以下之一

{col 13}{opt lf}{col 25}{opt d0}{col 37}{opt lf0}{col 49}{opt gf0}
                {col 25}{opt d1}{col 37}{opt lf1}
                {col 25}{opt d1debug}{col 37}{opt lf1debug}
                {col 25}{opt d2}{col 37}{opt lf2}
                {col 25}{opt d2debug}{col 37}{opt lf2debug}

{phang}
或者 {it:method} 可以用更长的、更具描述性的名称指定

{p2colset 13 35 37 2}{...}
{p2col:{it:method}}更长的名称{p_end}
{p2line}
{p2col:{opt lf}}{opt linearform}{p_end}
{p2col:{opt d0}}{opt derivative0}{p_end}
{p2col:{opt d1}}{opt derivative1}{p_end}
{p2col:{opt d1debug}}{opt derivative1debug}{p_end}
{p2col:{opt d2}}{opt derivative2}{p_end}
{p2col:{opt d2debug}}{opt derivative2debug}{p_end}
{p2col:{opt lf0}}{opt linearform0}{p_end}
{p2col:{opt lf1}}{opt linearform1}{p_end}
{p2col:{opt lf1debug}}{opt linearform1debug}{p_end}
{p2col:{opt lf2}}{opt linearform2}{p_end}
{p2col:{opt lf2debug}}{opt linearform2debug}{p_end}
{p2col:{opt gf0}}{opt generalform0}{p_end}
{p2line}
{p2colreset}{...}

{marker eq}{...}
{phang}
{it:eq} 是要估计的方程，括起来，并可以选择性地给方程一个名称，前面加冒号，

{p 12 16 2}
{cmd:(}
    [{it:eqname}{cmd::}]
    [{it:{help varlist_zh:varlist_y}} {cmd:=}]
    [{it:{help varlist_zh:varlist_x}}]
    [{cmd:,} {it:eq_options}]
{cmd:)}

{pmore}
或者 {it:eq} 是一个参数的名称，例如 sigma，前面带斜杠

{p 12 12 2}
{cmd:/}{it:eqname}{space 6}其
等价于{space 4}{cmd:(}{it:eqname}{cmd::, freeparm)}

{pmore}
{marker diparm_options}{...}
和 {it:diparm_options} 是一个或多个 {opt diparm(diparm_args)} 选项 {it:diparm_args} 是 {opt __sep__} 或任何被
“未记录”的 {opt _diparm} 命令接受的内容；请参见 {manhelp _diparm P}。

{marker eq_options}{...}
{synoptset 28}{...}
{synopthdr:{help ml##eq_options_descript:eq_options}                   }
{synoptline}
{synopt:{opt nocons:tant}}不包含方程中的截距
{p_end}
{synopt:{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，其
系数被约束为 1
{p_end}
{synopt:{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，其
系数被约束为 1
{p_end}
{synopt:{opt freeparm}}{it:eqname} 是一个自由参数{p_end}
{synoptline}
{p2colreset}{...}

{marker model_options}{...}
{synoptset 28}{...}
{synopthdr:{help ml##mlmode:model_options}                }
{synoptline}
{synopt:{opth group(varname)}}使用 {it:varname} 来识别组{p_end}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}、{opt cl:uster} {it:clustvar}、{opt oim} 或 {opt opg}{p_end}
{synopt:{opth const:raints(numlist)}}按数字施加的约束{p_end}
{synopt:{opt const:raints(matname)}}包含要施加的约束的矩阵{p_end}
{synopt:{opt nocnsnote:s}}在约束被丢弃时不显示注释{p_end}
{synopt:{opth ti:tle(strings:string)}}在估计输出上放置标题{p_end}
{synopt:{opt nopre:serve}}在内存中不保留估计子样本{p_end}
{synopt:{opt col:linear}}在方程内保留共线性变量{p_end}
{synopt:{opt miss:ing}}保留包含缺失值变量的观测值{p_end}
{synopt:{opt lf0(#k #ll)}}常数模型的参数数量和
对数似然值{p_end}
{synopt:{opt cont:inue}}指定一个模型已经被拟合并设置
即将要拟合的模型的初始值 b_0 基于这些
结果{p_end}
{synopt:{opt wald:test(#)}}执行 Wald 测试；请参见
{it:{help ml##mlmode:Options for use with ml model in interactive or noninteractive mode}} 下文
{p_end}
{synopt:{opt obs(#)}}观测值数量{p_end}
{synopt:{opth "crittype(strings:string)"}}描述由 {opt ml} 优化的准则
{p_end}
{synopt:{opth sub:pop(varname)}}为单个的
子人群计算估计{p_end}
{synopt:{opt nosvy:adjust}}将 Wald 测试进行为 W/k 分布F(k,d){p_end}
{synopt:{cmdab:tech:nique(nr)}}Stata 的修改牛顿-拉夫森 (NR) 算法{p_end}
{synopt:{cmdab:tech:nique(bhhh)}}Berndt-Hall-Hall-Hausman (BHHH) 算法{p_end}
{synopt:{cmdab:tech:nique(dfp)}}Davidon-Fletcher-Powell (DFP) 算法{p_end}
{synopt:{cmdab:tech:nique(bfgs)}}Broyden-Fletcher-Goldfarb-Shanno (BFGS) 算法{p_end}
{synoptline}
{p2colreset}{...}

{marker noninteractive_options}{...}
{synoptset 28}{...}
{synopthdr:{help ml##ml_noninteract_descript:noninteractive_options}       }
{synoptline}
{synopt:{opt ini:t(ml_init_args)}}设置初始值 b_0{p_end}
{synopt:{cmdab:sea:rch(on)}}相当于 {cmd:ml search, repeat(0)}；这是默认设置{p_end}
{synopt:{cmdab:sea:rch(norescale)}}相当于 {cmd:ml search, repeat(0) norescale}{p_end}
{synopt:{cmdab:sea:rch(quietly)}}同于 {cmd:search(on)}，只是输出被抑制{p_end}
{synopt:{cmdab:sea:rch(off)}}防止调用 {opt ml search}{p_end}
{synopt:{opt r:epeat(#)}}{opt ml search} 的 {opt repeat()} 选项；见下文{p_end}
{synopt:{opt b:ounds(ml_search_bounds)}}指定 {opt ml search} 的边界{p_end}
{synopt:{opt nowarn:ing}}抑制 “未达到收敛” 的消息{p_end}
{synopt:{opt novce}}将零矩阵替代方差矩阵{p_end}
{synopt:{opt negh}}表示评估者返回负 Hessian 矩阵{p_end}
{synopt:{opth sc:ore(newvar:newvars)}}新变量包含对得分的贡献{p_end}
{synopt:{it:{help ml##noninteractive_maxopts:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}

{marker search_options}{...}
{synoptset 28}{...}
{synopthdr:{help ml##ml_search_descript:search_options}               }
{synoptline}
{synopt:{opt r:epeat(#)}}尝试次数以寻找更好的
初始值向量；默认设置为 {cmd:repeat(10)} 交互模式和
{cmd:repeat(0)} 在非交互模式{p_end}
{synopt:{opt rest:art}}使用随机行动来寻找起始值；不推荐{p_end}
{synopt:{opt noresc:ale}}不进行重新缩放以改善参数向量；不推荐{p_end}
{synopt:{it:{help ml##search_maxopts:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p2colreset}{...}

{marker ml_maximize_options}{...}
{synoptset 28}{...}
{synopthdr:{help ml##ml_max_descript:ml_maximize_options}          }
{synoptline}
{synopt:{opt nowarn:ing}}仅与 {cmd:iterate(0)} 配合使用。 {opt nowarn:ing}
禁止 “未达到收敛” 的消息。
程序员可能会在他们已有的最终估计向量 b
中指定此设置，想要 {opt ml} 计算方差矩阵和后验结果。然后指定
{bind:{cmd:init(b) search(off) iterate(0) nowarning nolog}}。

{phang}
{opt novce}仅与 {cmd:iterate(0)} 配合使用。 {opt novce}
用零矩阵替换方差矩阵，这实际上将后验估计结果视为固定常量。

{phang}
{opt negh}表示评估者返回负 Hessian 矩阵。默认情况下，{cmd:ml} 假设 d2 和 lf2 评估者返回 Hessian 矩阵。

{phang}
{cmd:score(}{it:{help newvar_zh:newvars}} | {it:{help newvarlist##stub*:stub}}{cmd:*}{cmd:)}
创建新变量，包含每个方程和模型中辅助参数对得分的贡献；见
{findalias frscore}。

{pmore}
如果指定了 {opt score(newvars)}，{it:newvars} 必须包含 k
个新变量。对于 lf、lf0、lf1 和 lf2 方法的评估者而言，k 是
方程数量。对于 gf0 方法评估者，k 是参数数量。如果指定了 {cmd:score(}{it:stub}{cmd:*)}，则会创建名为
{it:stub}{cmd:1}、{it:stub}{cmd:2} 等变量。

{pmore}
对于 lf、lf0、lf1 和 lf2 方法的评估者，第一个变量包含
{bind:d(ln l_j)/d(x_1j b_1)}，第二个变量包含
{bind:d(ln l_j)/d(x_2j b_2)}，依此类推。

{pmore}
对于 gf0 方法的评估者，第一个变量包含
{bind:d(ln l_j)/d(b_1)}，第二个变量包含 {bind:d(ln l_j)/d(b_2)}，依此类推。

{phang}
{opt nooutput} 抑制结果显示。 这个选项不同于在 {opt ml maximize} 前面加上 {opt quietly}，因为迭代记录仍然会被显示（假设没有指定 {opt nolog}）。

{phang}
{opt noclear} 指定 ml 问题定义在模型收敛后不被清除。也许您正遇到
收敛问题，打算将模型运行到收敛。如果是这样，请使用 {opt ml search} 查看这些值是否可以改进，然后重启估算。

{phang}{marker ml_maxopts}
{it:maximize_options}:
{opt dif:ficult},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}, 和
{opt nonrtol:erance}; 参见 {help maximize_zh:[R] Maximize}。
这些选项很少使用。

{phang}
{it:display_options}; 参见
{it:{help ml##mldisplay:Options for use with ml display}}。

{phang}
{it:eform_option}; 参见
{it:{help ml##mldisplay:Options for use with ml display}}。


{marker option_mlgraph}{...}
{title:用于 ml graph 的选项}

{phang}
{help saving_option_zh:saving({it:filename}[, replace])} 指定将图形保存在 {it:filename}{cmd:.gph} 中。


{marker options_mldisplay}{...}
{marker mldisplay}{...}
{title:与 ml display 相关的选项}

{phang}
{opt noheader} 在显示最终对数似然值、观测数量和模型显著性测试的系数表上方抑制标题显示。

{phang}
{opt nofootnote} 在系数表下方抑制脚注显示，脚注显示的警告如果模型拟合未在指定的迭代次数内收敛。 使用 {cmd:ml} {cmd:footnote} 展示警告，如果 1）您添加到系数表中使用 {cmd:plus} 选项或 2）您有自己的脚注并希望警告为最后一条。

{phang}
{opt level(#)} 是标准置信水平选项。它
指定系数的置信区间的置信水平，单位为百分比。 默认值为 {cmd:level(95)} 或通过 {opt set level} 设置；
参见 {manhelp level R}。

{phang}
{opt first} 仅显示第一方程的系数表的结果，并使报告看起来只有第一方程。此选项用于那些估计第二个及后续方程中辅助参数并希望自行报告这些参数值的程序员。

{phang}
{opt neq(#)} 是 {opt first} 的替代方案。
{opt neq(#)} 显示第一 {it:#} 方程的系数表。
该选项用于那些估计 {it:#}+1 及后续方程中辅助参数并希望自行报告这些参数值的程序员。

{phang}
{opt showeqns} 是一个极少使用的选项，在系数表中显示方程名称。 {cmd:ml} {cmd:display} 使用存储在 {cmd:e(k_eq)} 和 {cmd:e(k_aux)} 中的数字来确定如何显示系数表。 {cmd:e(k_eq)} 确定方程数量，{cmd:e(k_aux)} 确定其中有多少方程是辅助参数。当不指定 {opt showeqns} 时，假定 {opt first} 选项并且所有非第一个方程都是辅助参数。

{phang}
{opt plus} 显示系数表，但
而不是以一行破折号结束，将以
破折号{c -}加号{c -}破折号结束。这样程序员可以编写额外的显示代码，以添加更多结果到表中，并使其看起来像综合结果是一个表。程序员通常会将 {cmd:plus} 与 {opt first} 或 {opt neq()} 选项结合使用。该选项意味着
{cmd:nofootnote}。

{phang}
{opt nocnsreport} 抑制约束在系数表上方的显示。 如果未使用约束拟合模型，则忽略该选项。

{phang}
{opt noomitted} 指定由于共线性而被省略的变量不显示。 默认情况是包含由于共线性而省略的任何变量，并将它们标记为“（已省略）”。

{phang}
{opt vsquish} 指定抑制因子变量术语或时间序列变量与其他变量之间的空白空间。

{phang}
{opt noemptycells} 指定不显示因子变量交互的空单元格。默认是将不出现在估计样本中的交互单元格包括在表中，并将其标记为“（空）”。

{phang}
{opt baselevels} 和 {opt allbaselevels} 控制因子变量和交互的基本水平是否显示。 默认情况下排除所有基本分类。

{phang2}
        {opt baselevels} 指定报告因子变量和因子变量交互的基本水平。

{phang2}
        {opt allbaselevels} 指定报告因子变量和交互的所有基本水平。

{marker cformat}{...}
{phang}
{opth cformat(%fmt)} 指定如何格式化系数、标准误差和
置信区间在系数表中。

{marker pformat}{...}
{phang}
{opth pformat(%fmt)} 指定如何格式化系数表中的 p 值。

{marker sformat}{...}
{phang}
{opth sformat(%fmt)} 指定如何格式化系数表中的测试统计量。

{phang}
{cmd:nolstretch} 指定系数表的宽度不
会自动加宽以适应更长的变量名称。 默认情况下，
{cmd:lstretch} 是自动加宽系数表，直到达到结果窗口的宽度。 
要更改默认设置，使用 {cmd:set} {cmd:lstretch} {cmd:off}。 
{cmd:nolstretch}不会显示在对话框中。

{phang}
{opt coeflegend} 指定系数的图例以及如何在表达式中
指定它们的显示。

{phang}
{it:eform_option}: {opth "eform(strings:string)"}, {opt eform}, {opt hr},
{opt shr}, {opt irr}, {opt or}, 和
{opt rrr} 将系数表以指数形式显示：
对于每个系数，exp({it:b}) 而不是 {it:b} 将被显示，并且标准
误差和置信区间也会转换。
{it:string} 是将显示在转化系数上方的表头，其长度必须不超过 11 个字符——例如，{cmd:eform("Odds ratio")}。
选项 {opt eform}、{opt hr}、{opt shr}、{opt irr}、{opt or} 和 {opt rrr}
提供默认的 {it:string}，等于 {cmd:"exp(b)"}, {cmd:"Haz.  Ratio"},
{cmd:"SHR"}, {cmd:"IRR"}, {cmd:"Odds Ratio"} 和 {cmd:"RRR"}。
这些选项不能组合使用。

{pmore}
{cmd:ml} {cmd:display} 查看 {cmd:e(k_eform)} 以确定受到 {it:eform_option} 影响的方程数量；默认情况下，只有第一个方程受到影响。 输入 {cmd:ereturn list, all} 查看 {cmd:e(k_eform)}；见 {help ereturn_zh:[P] ereturn}。


{marker examples}{...}
{title:示例}

{pstd}
请参见 {bf:[R] ml} 以获取示例。 还有更多示例可在
{help ml##GPP2010:Gould, Pitblado, and Poi (2010)} 中查阅——可从 StataCorp 获取。


{marker results}{...}
{title:存储的结果}

{pstd}
对于未使用 {cmd:svy} 选项的 {cmd:ml} 存储的结果，见
{help maximize_zh:[R] Maximize}。

{pstd}
对于使用 {cmd:svy} 选项的 {cmd:ml} 存储的结果，见
{manhelp svy SVY}。


{marker references}{...}
{title:参考文献}

{marker GPP2010}{...}
{phang}
Gould, W. W., J. Pitblado, 和 B. P. Poi. 2010. 
{browse "http://www.stata-press.com/books/ml4.html":{it:使用 Stata 的最大似然估计}. 第4版。} 德克萨斯州，学院站：Stata Press。

{marker KG1990}{...}
{phang}
Korn, E. L., 和 B. I. Graubard. 1990.
复杂调查数据的回归系数同时检验：使用 Bonferroni t 统计量。
{it:美国统计学家} 44: 270-276。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ml.sthlp>}