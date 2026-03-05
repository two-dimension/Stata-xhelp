{smcl}
{* *! version 1.8.0  28apr2019}{...}
{viewerdialog nlogit "dialog nlogit"}{...}
{viewerdialog nlogitgen "dialog nlogitgen"}{...}
{viewerdialog nlogittree "dialog nlogittree"}{...}
{vieweralsosee "[CM] nlogit" "mansection CM nlogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] nlogit postestimation" "help nlogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmclogit" "help cmclogit_zh"}{...}
{vieweralsosee "[CM] cmmixlogit" "help cmmixlogit_zh"}{...}
{vieweralsosee "[CM] cmmprobit" "help cmmprobit_zh"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{vieweralsosee "[R] slogit" "help slogit_zh"}{...}
{viewerjumpto "Syntax" "nlogit_zh##syntax"}{...}
{viewerjumpto "Menu" "nlogit_zh##menu"}{...}
{viewerjumpto "Description" "nlogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "nlogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "nlogit_zh##options"}{...}
{viewerjumpto "Remark on degenerate branches" "nlogit_zh##remark"}{...}
{viewerjumpto "Examples" "nlogit_zh##examples"}{...}
{viewerjumpto "Stored results" "nlogit_zh##results"}
{help nlogit:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[CM] nlogit} {hline 2}}嵌套 logit 回归{p_end}
{p2col:}({mansection CM nlogit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
嵌套 logit 回归

{p 8 15 2}
{cmd:nlogit} {depvar} [{indepvars}] {ifin}
[{it:{help nlogit##weight:weight}}]
	[{cmd:||} {it:lev1_equation} [{cmd:||} {it:lev2_equation} ...]] 
	{cmd:||} {it:{help nlogit##altvar:altvar}}{cmd::}
        [{it:{help nlogit##byaltvarlist:byaltvarlist}}]{cmd:,}
	{opth case(varname)} [{it:{help nlogit##options_table:nlogit_options}}]

{pin}
其中 {it:{help nlogit##lev#_equation:lev#_equation}} 的语法是

{p 12 24 2}
	{it:{help nlogit##altvar:altvar}}{cmd::} 
	[{it:{help nlogit##byaltvarlist:byaltvarlist}}] 
		[{cmd:,} {opt base(#|lbl)} {opt estc:onst}]


{phang}
根据分支的规格创建变量{p_end}

{p 8 18 2}
{cmd:nlogitgen} {it:{help nlogit##newaltvar:newaltvar}} {cmd:=}
                {it:{help nlogit##newaltvar:altvar}}
{cmd:(}{it:branchlist}{cmd:)} [{cmd:,} [{cmd:no}]{cmd:log}]

{pin}{marker branchlist}
其中 {it:branchlist} 是{p_end}

{p 12 12 2}{it:branch}{cmd:,} {it:branch} [{cmd:,} {it:branch ...}]

{pin}
并且 {it:branch} 是{p_end}

{p 12 12 2}[{it:{help nlogit##label:label}}{cmd::}] 
{it:{help nlogit##alternative:alternative}} [{cmd:|} {it:alternative}
[{cmd:|} {it:alternative ...}] ]


{phang}
显示树结构

{p 8 19 2}
{cmd:nlogittree} {it:{help nlogit##altvarlist:altvarlist}} {ifin} 
[{it:{help nlogit##weight:weight}}]
   [{cmd:,} {it:{help nlogit##nlogittree_options:nlogittree_options}}]


{marker options_table}{...}
{synoptset 26 tabbed}{...}
{synopthdr:nlogit_options}
{synoptline}
{syntab :模型}
{p2coldent :* {opth case(varname)}}使用 {it:varname} 来识别案例{p_end}
{synopt: {opt base(#|lbl)}}使用指定的级别或标签作为底层的基准备选项{p_end}
{synopt: {opt nocons:tant}}抑制底层备选项的常数项{p_end}
{synopt :{opt nonn:ormalized}}使用非规范化参数化{p_end}
{synopt :{opt altwise}}使用按备选项删除而不是按案例删除{p_end}
{synopt :{cmdab:const:raints(}{it:{help nlogit##constraints:constraints}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能是 {opt oim}，{opt r:obust}，{opt cl:uster} {it:clustvar}，{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt notr:ee}}抑制树结构输出的显示；另见 {helpb nlogit##treedisp:nolabel} 和 
{helpb nlogit##treedisp:nobranches}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help nlogit##display_options:display_options}}}控制  
包含帮助短描述显示选项

{syntab :最大化}
{synopt :{it:{help nlogit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt: {opt col:linear}}保持共线性变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt case(varname)} 是必需的。{p_end}

{marker nlogittree_options}{...}
{synoptset 26 tabbed}{...}
{synopthdr:nlogittree_options}
{synoptline}
{syntab :主要}
{synopt:{opth cho:ice(depvar)}}使用 {it:depvar} 作为选择指标变量{p_end}
{synopt:{opth case(varname)}}使用 {it:varname} 来识别案例{p_end}
{synopt: {opth gen:erate(newvar)}}创建 {it:newvar} 来识别无效观察{p_end}
{synopt: {opt nolab:el}}抑制树结构输出的值标签{p_end}
{synopt :{opt nobranch:es}}在树结构输出中抑制绘制分支{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}{it:byaltvarlist} 可以包含因子变量；见{help fvvarlist_zh}。
{p_end}
{p 4 6 2}{cmd:bootstrap}，{cmd:by}，{cmd:fp}，{cmd:jackknife} 和 
{cmd:statsby} 是允许的；见{help prefix_zh}。{p_end}
{p 4 6 2}在 {help bootstrap_zh} 前缀中不允许使用权重。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s，{cmd:iweight}s 和 {cmd:pweight}s 允许与 {cmd:nlogit} 一起使用，而 {cmd:fweight}s 允许与 {cmd:nlogittree} 一起使用；见 {help weight_zh}。 
{cmd:nlogit} 的权重必须在案例内保持不变。{p_end}
{p 4 6 2}
{opt collinear} 不会出现在对话框中。{p_end}
{p 4 6 2}有关评估后可用功能的信息，请参见 {manhelp nlogit_postestimation CM:nlogit postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

    {title:nlogit}

{phang2}
{bf:统计 > 选择模型 > 嵌套 logit 模型 > 嵌套 logit 模型}

    {title:nlogitgen}

{phang2}
{bf:统计 > 选择模型 > 嵌套 logit 模型 > 嵌套 logit 模型设置}

    {title:nlogittree}

{phang2}
{bf:统计 > 选择模型 > 嵌套 logit 模型 > 显示嵌套 logit 树结构}


{marker description}{...}
{title:描述}

{pstd}
{cmd:nlogit} 执行嵌套 logit 模型的完整信息最大似然估计。这些模型放宽了独立分布误差和条件及多项 logit 模型中无关选项独立性的假设，通过将类似的选择聚类到嵌套中。

{pstd}
默认情况下，{cmd:nlogit} 使用与随机效用模型 (RUM) 一致的参数化。在 Stata 版本 10 之前，适配了非规范化的嵌套 logit 模型，您可以通过指定 {opt nonnormalized} 选项来请求。

{pstd}
在调用 {cmd:nlogit} 之前，您必须使用 {cmd:nlogitgen} 生成新的分类变量，以指定嵌套 logit 树的分支。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM nlogitQuickstart:快速入门}

        {mansection CM nlogitRemarksandexamples:备注和示例}

        {mansection CM nlogitMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker lev#_equation}{...}
    {title:lev#_equation 的规格和选项}

{marker altvar}{...}
{phang}
{it:altvar} 是一个变量，用于识别该层次结构级别的备选项。

{marker byaltvarlist}{...}
{phang}
{it:byaltvarlist} 指定用于计算该层的按备选项回归系数的变量。对于变量列表中指定的每个变量，该层的每个备选项都有一个回归系数。如果该变量在每个备选项之间保持不变（特定于案例的变量），那么与基准选项关联的回归系数是不可识别的。这些回归系数在回归表中标记为（基准）。如果该变量在备选项之间变化，则将为每个备选项估计回归系数。

{phang} {marker base}{...}
{opt base(#|lbl)} 可以在每个级别方程中指定，用于识别该级别将使用的基准备选项。默认值是出现频率最高的选项。

{pmore}
如果指定了 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，则您必须为每个具有 {it:byaltvarlist} 的级别指定基准备选项，或者指定常数是否会被估计。这样确保在每次调用 {cmd:nlogit} 时拟合相同的模型。

{phang} {marker estc}{...}
{opt estconst} 适用于除底层方程之外的所有层方程。指定 {cmd:estconst} 请求估算每个备选项的常数（基准选项除外）。默认情况下，这些级别不估算常数。常数只能在树层次结构中的一个级别进行估计。如果您对其中一个级别方程指定了 {cmd:estconst}，则必须为底层方程指定 {cmd:noconstant}。


    {title:nlogit 的选项}

{dlgtab:模型}

{phang}
{opth case(varname)} 指定识别每个案例的变量。
{opt case()} 是必需的。

{phang} {marker base}{...}
{opt base(#|lbl)} 可以在每个级别方程中指定，用于识别该级别将使用的基准备选项。默认值是出现频率最高的选项。

{pmore}
如果指定了 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，则您必须为每个具有 {it:{help nlogit##byaltvarlist:byaltvarlist}} 的级别指定基准备选项，或指定常数是否会被估计。这样确保在每次调用 {cmd:nlogit} 时拟合相同的模型。

{phang}
{opt noconstant} 仅适用于定义层次结构底层的方程。默认情况下，估算 {it:{help nlogit##altvar:altvar}} 的每个备选项的常数（不包括基准备选项）。要抑制该级别的常数项，请指定 {cmd:noconstant}。如果不指定 {cmd:noconstant}，则无法对更高级别的方程指定 {cmd:estconst}。

{phang}
{opt nonnormalized} 请求采用非规范化模型参数化，该模型不会按每个嵌套内部的备选项的不相似程度进行标度。使用此选项可以重现 Stata 旧版本的结果。默认使用与 RUM 一致的参数化。

{phang}
{opt altwise} 指定在因变量缺失时使用按备选项删除。当遇到缺失值时，整个组成案例的观察被遗漏的默认值是按案例删除；也就是说，如果遇到任何缺失值，则会缺少该案例的整个观察组。此选项不适用于通过 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀排除的观察；这些观察无论是否指定 {cmd:altwise} 始终以备选项方式处理。

{phang} {marker constraints}{...}
{opt constraints(constraints)}; 见 
{helpb estimation options##constraints():[R] 估计选项}。

{pmore}
包容性价值/不相似参数被参数化为 {cmd:ml} 附加参数。它们标记为 [{it:alternative}_tau]_const，其中 {it:alternative} 是定义树分支的备选项之一。要将备选项 {cmd:a1} 的包容性价值/不相似参数约束为与备选项 {cmd:a2} 相等，可以使用以下语法：

{phang3}{cmd:. constraint 1 [a1_tau]_cons = [a2_tau]_cons}

{phang3}{cmd:. nlogit ... , constraints(1)}

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括基于渐近理论的类型 ({cmd:oim})，对某些类型的错误指定具有稳健性 ({cmd:robust})，允许组内相关性 ({cmd:cluster} {it:clustvar}) 和使用自助法或重抽样法的方法 ({cmd:bootstrap}, {cmd:jackknife})；见 
{help vce_option_zh:[R] {it:vce_option}}。

{pmore}
如果指定 {cmd:vce(robust)} 或 {cmd:vce(cluster} {it:clustvar}{cmd:)}，则不会计算无关选择独立性 (IIA) 的似然比检验。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt notree} 指定不显示嵌套 logit 模型的树结构。 
另见 {helpb nlogit##treedisp:nolabel} 和 
{helpb nlogit##treedisp:nobranches}，当 {opt notree} 未被指定时。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}，
{opt iter:ate(#)}， [{cmd:no}]{opt log}， {opt tr:ace}, 
{opt grad:ient}, {opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}，
{opt ltol:erance(#)}， {opt nrtol:erance(#)}，
{opt nonrtol:erance}，以及
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。 {cmd:technique(bhhh)} 选项不被允许。

{pstd}
以下选项适用于 {opt nlogit} 但不显示在对话框中：

{phang} 
{opt collinear} 防止共线性变量被丢弃。当您知道您有共线性变量并且应用 {cmd:constraints()} 来处理秩减少时，可以使用此选项。有关与 {cmd:constraints()} 一起使用 {cmd:collinear} 的详细信息，见 {helpb estimation options##collinear:[R] 估计选项}。

{pmore}
{cmd:nlogit} 不允许您在多个级别方程中指定独立变量。指定 {opt collinear} 选项将允许继续执行此操作，但您有责任确保参数可识别。


    {title:nlogitgen 的规格和选项}

{marker newaltvar}{...}
{phang}
{it:newaltvar} 和 {it:altvar} 是识别每层次结构级别的备选项的变量。

{phang} {marker label}{...}
{it:label} 定义要与分支关联的标签。如果未给出标签，则使用数值。

{phang} {marker alternative}{...}
{it:alternative} 指定在语法中指定的 {it:altvar} 中包含的备选项。它可以是数值或与该值相关的标签。 {cmd:nlogitgen} 的一个示例如下：

{phang2}{cmd}. nlogitgen type = restaurant({bind:fast: 1 | 2,}
{bind:family: CafeEccell | LosNortenos | WingsNmore,} {bind:fancy: 6 | 7)}{txt}

{phang}
包含帮助 lognolog


{marker treedisp}{...}
    {title:nlogittree 的规格和选项}

{dlgtab:主要}

{marker altvarlist}{...}
{phang}
{it:altvarlist} 是定义树层次结构的备选变量列表。第一个变量必须定义底层备选项，顺序继续到定义顶层备选项的变量。

{phang}
{opth choice(depvar)} 定义选择指标变量并强制 {cmd:nlogittree} 计算和显示每个底层备选项的选择频率。

{phang}
{opth case(varname)} 指定识别每个案例的变量。当同时指定 {cmd:case()} 和 {cmd:choice()} 时，{cmd:nlogittree} 执行树结构的诊断并识别将导致 {cmd:nlogit} 终止执行或丢弃观察的观察。

{phang}
{opth generate(newvar)} 生成一个新指标变量 {it:newvar}，对于无效观察，其值为 1。此选项要求同时指定 {cmd:choice()} 和 {cmd:case()}。

{phang}
{opt nolabel} 强制 {cmd:nlogittree} 在树结构输出中抑制值标签。

{phang}
{opt nobranches} 强制 {cmd:nlogittree} 在树结构输出中抑制绘制分支。


{marker remark}{...}
{marker degen_tau}{...}
{title:关于退化分支的备注}

{pstd}
退化嵌套发生在树层次结构的某一分支中只有一个备选项。如果在 RUM 的相关不相似度参数无法定义。非规范化模型的包容性价值参数将是可识别的，如果在模型规格的方程 1 中指定了特定于备选项的变量（模型语法中的 {it:indepvars}）。从数值上讲，您可以通过为它们设置约束来规避不可识别/未定义参数的问题。对于 RUM 约束，将不相似度参数设置为 1。有关设置不相似度参数约束的详细信息，请参见 {help nlogit##constraints:constraints}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse restaurant}
 
{pstd}
生成一个新的分类变量，名为 {hi:type}，其识别基于名为 {hi:restaurant} 的变量的第一级备选项{p_end}
{phang2}{cmd:. nlogitgen type = restaurant(fast: Freebirds | MamasPizza, family:  CafeEccell | LosNortenos | WingsNmore, fancy: Christophers | MadCows)}

{pstd}
检查树结构{p_end}
{phang2}{cmd:. nlogittree restaurant type, choice(chosen) case(family_id)}

{pstd}执行嵌套 logit 回归{p_end}
{phang2}{cmd:. nlogit chosen cost distance rating || type: income kids, base(family) || restaurant:, noconst case(family_id)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:nlogit} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_case)}}案例数量{p_end}
{synopt:{cmd:e(N_ic)}}贝叶斯信息准则 (BIC) 的 N{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_alt)}}底层备选项的数量{p_end}
{synopt:{cmd:e(k_alt}{it:j}{cmd:)}}第 {it:j} 层的备选项数量{p_end}
{synopt:{cmd:e(k_indvars)}}独立变量的数量{p_end}
{synopt:{cmd:e(k_ind2vars)}}底层的按备选项变量数量{p_end}
{synopt:{cmd:e(k_ind2vars}{it:j}{cmd:)}}第 {it:j} 层的按备选项变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(df_c)}}{cmd:clogit} 模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_c)}}{cmd:clogit} 模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}无关选择独立性 (IIA) 的似然比检验{p_end}
{synopt:{cmd:e(p)}}模型 Wald 检验的 p 值{p_end}
{synopt:{cmd:e(p_c)}} IIA 检验的 p 值{p_end}
{synopt:{cmd:e(i_base)}}底层的基准索引{p_end}
{synopt:{cmd:e(i_base}{it:j}{cmd:)}}第 {it:j} 层的基准索引{p_end}
{synopt:{cmd:e(levels)}}级别数量{p_end}
{synopt:{cmd:e(alt_min)}}最小备选项数量{p_end}
{synopt:{cmd:e(alt_avg)}}平均备选项数量{p_end}
{synopt:{cmd:e(alt_max)}}最大备选项数量{p_end}
{synopt:{cmd:e(const)}}底层的常数指示器{p_end}
{synopt:{cmd:e(const}{it:j}{cmd:)}}第 {it:j} 层的常数指示器{p_end}
{synopt:{cmd:e(rum)}}{cmd:1} 如果是 RUM，{cmd:0} 否则{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:nlogit}{p_end}
{synopt:{cmd:e(cmdline)}}按键入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(indvars)}}自变量名称{p_end}
{synopt:{cmd:e(ind2vars)}}底层的按备选项变量{p_end}
{synopt:{cmd:e(ind2vars}{it:j}{cmd:)}}第 {it:j} 层的按备选项变量{p_end}
{synopt:{cmd:e(case)}}定义案例的变量{p_end}
{synopt:{cmd:e(altvar)}}底层的备选项变量{p_end}
{synopt:{cmd:e(altvar}{it:j}{cmd:)}}第 {it:j} 层的备选项变量{p_end}
{synopt:{cmd:e(alteqs)}}底层的方程名称{p_end}
{synopt:{cmd:e(alteqs}{it:j}{cmd:)}}第 {it:j} 层的方程名称{p_end}
{synopt:{cmd:e(alt}{it:i}{cmd:)}}第 {it:i} 个底层备选项{p_end}
{synopt:{cmd:e(alt}{it:j}{cmd:_}{it:i}{cmd:)}}第 {it:i} 个第 {it:j} 层备选项{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(marktype)}}{cmd:casewise} 或 {cmd:altwise}, 标记输出类型{p_end}
{synopt :{cmd:e(key_N_ic)}}{cmd:cases}，用于贝叶斯信息准则 (BIC) 的键{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}，模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}检查和字段{p_end}
{synopt:{cmd:e(datasignaturevars)}}计算检查和时使用的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}由 {cmd:margins} 禁用的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset}  作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset}  作为 {cmd:asobserved}{p_end}

{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(k_altern)}}每个层次的备选项数量{p_end}
{synopt:{cmd:e(k_branch}{it:j}{cmd:)}}第 {it:j} 个层次每个备选项的分支数量{p_end}
{synopt:{cmd:e(stats)}}底层的替代统计{p_end}
{synopt:{cmd:e(stats}{it:j}{cmd:)}}第 {it:j} 层的替代统计{p_end}
{synopt:{cmd:e(altidx}{it:j}{cmd:)}}第 {it:j} 层的备选项索引{p_end}
{synopt:{cmd:e(alt_ind2vars)}}通过按备选项变量估算的底层指示符 -- {cmd:e(k_alt)} x {cmd:e(k_ind2vars)}{p_end}
{synopt:{cmd:e(alt_ind2vars}{it:j}{cmd:)}}通过按备选项变量估算的第 {it:j} 层指示符 -- {cmd:e(k_alt}{it:j}{cmd:)} x {cmd:e(k_ind2vars}{it:j}{cmd:)}{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 25 29 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nlogit.sthlp>}