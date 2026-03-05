{smcl}
{* *! version 1.0.9  25apr2019}{...}
{viewerdialog bayesmh "dialog bayesmh"}{...}
{vieweralsosee "[BAYES] bayesmh evaluators" "mansection BAYES bayesmhevaluators"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes glossary"}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "语法" "bayesmh evaluators##syntax"}{...}
{viewerjumpto "描述" "bayesmh evaluators##description"}{...}
{viewerjumpto "PDF文档链接" "bayesmh_evaluators_zh##linkspdf"}{...}
{viewerjumpto "选项" "bayesmh evaluators##options"}{...}
{viewerjumpto "备注" "bayesmh evaluators##remarks"}{...}
{viewerjumpto "存储结果" "bayesmh evaluators##results"}
{help bayesmh_evaluators:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[BAYES] bayesmh evaluators} {hline 2}}用户定义的 bayesmh 评估器{p_end}
{p2col:}({mansection BAYES bayesmhevaluators:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
{cmd:单方程模型}

{p 6 11 2}
用户定义的对数后验评估器 

{p 8 11 2}
{opt bayesmh} {depvar} [{indepvars}]
   {ifin} [{it:{help bayesmh evaluators##weight:weight}}]{cmd:,} 
   {opth eval:uator(bayesmh_evaluators##evalspec:evalspec)}
   [{it:{help bayesmh_evaluators##options_table:options}}]

{p 6 11 2}
用户定义的对数似然评估器

{p 8 11 2}
{opt bayesmh} {depvar} [{indepvars}]
   {ifin} [{it:{help bayesmh evaluators##weight:weight}}]{cmd:,} 
   {opth lleval:uator(bayesmh_evaluators##evalspec:evalspec)}
   {opth prior:(bayesmh##priorspec:priorspec)}
   [{it:{help bayesmh_evaluators##options_table:options}}]


{phang}
{cmd:多方程模型}

{p 6 11 2}
用户定义的对数后验评估器

{p 8 11 2}
{opt bayesmh} {cmd:(}{it:{help bayesmh evaluators##eqspecp:eqspecp}}{cmd:)}
    [{cmd:(}{it:eqspecp}{cmd:)} [...]]
    {ifin} [{it:{help bayesmh evaluators##weight:weight}}]{cmd:,} 
   {opth eval:uator(bayesmh_evaluators##evalspec:evalspec)}
   [{it:{help bayesmh evaluators##options_table:options}}]

{p 6 11 2}
用户定义的对数似然评估器

{p 8 11 2}
{opt bayesmh} {cmd:(}{it:{help bayesmh evaluators##eqspecll:eqspecll}}{cmd:)}
    [{cmd:(}{it:eqspecll}{cmd:)} [...]]
    {ifin} [{it:{help bayesmh evaluators##weight:weight}}]{cmd:,} 
   {opth prior:(bayesmh##priorspec:priorspec)}
   [{it:{help bayesmh_evaluators##options_table:options}}]


{marker eqspecp}{...}
{pstd}
{it:eqspecp} 的语法为 

{p 8 11 2}
   {it:{help bayesmh##varspec:varspec}} [{cmd:,} {opt nocons:tant}] 
{p_end}

{marker eqspecll}{...}
{pstd}
内置似然模型的 {it:eqspecll} 语法为 

{p 8 11 2}
   {it:{help bayesmh##varspec:varspec}}{cmd:,}
   {opt likel:ihood}{cmd:(}{it:{help bayesmh##modelspec:modelspec}}{cmd:)}
   [{opt nocons:tant}] 
{p_end}

{pstd}
用户定义的对数似然评估器的 {it:eqspecll} 语法为 

{p 8 11 2}
   {it:{help bayesmh##varspec:varspec}}{cmd:,}
   {opt lleval:uator}{cmd:(}{it:{help bayesmh_evaluators##evalspec:evalspec}}{cmd:)}
   [{opt nocons:tant}] 
{p_end}

{marker varspec}{...}
{phang}
{it:varspec} 的语法为以下之一：

        单个结果的情况

{phang3}
[{it:eqname}{cmd::}]{depvar} [{indepvars}]
{p_end}

        对于共同回归变量的多个结果

{phang3}
{it:{help depvar:depvars}} {cmd:=} [{indepvars}]
{p_end}

        对于具有结果特定回归变量的多个结果

{phang3}
{cmd:(}[{it:eqname1}{cmd::}]{it:{help depvar:depvar1}} [{it:{help indepvars:indepvars1}}]{cmd:)}
{cmd:(}[{it:eqname2}{cmd::}]{it:{help depvar:depvar2}} [{it:{help indepvars:indepvars2}}]{cmd:)}
[...]
{p_end}

{marker evalspec}{...}
{phang}
{it:evalspec} 的语法为 

{p 8 11 2}
	{it:progname}{cmd:,} {opth param:eters(bayesmh_evaluators##paramlist:paramlist)}
	[{opth extravars(varlist)} {opt passthru:opts(string)}]
{p_end}

{marker paramlist}{...}
{pmore}
其中 {it:progname} 是你编写的用于评估对数后验密度或对数似然函数的 Stata 程序的名称（见 
{help bayesmh_evaluators##program:{it:程序评估器}}），而 {it:paramlist} 是模型参数的列表：

{phang3}
{it:{help bayesmh_evaluators##paramdef:paramdef}} [{it:paramdef} [...]]
{p_end}

{marker paramdef}{...}
{phang}
{it:paramdef} 的语法为

{phang3}
{cmd:{c -(}}[{it:eqname}{cmd::}]{it:param} [{it:param} [...]] [{cmd:,} {opt m:atrix}]{cmd:{c )-}}

{pmore}
其中参数标签 {it:eqname} 和参数名称 {it:param} 是有效的 Stata 名称。模型参数可以是标量，例如
{cmd:{c -(}var{c )-}}、{cmd:{c -(}mean{c )-}} 和
{cmd:{c -(}shape:alpha{c )-}}，也可以是矩阵，例如
{cmd:{c -(}Sigma, matrix{c )-}} 和 {cmd:{c -(}Scale:V, matrix{c )-}}。对于标量参数，你可以在上述指令中使用 {cmd:{c -(}param=}{it:#}{cmd:{c )-}} 指定初始值。例如，你可以指定
{cmd:{c -(}var=1{c )-}}、{cmd:{c -(}mean=1.267{c )-}} 或
{cmd:{c -(}shape:alpha=3{c )-}}。你可以用 {cmd:{c -(}eq:p1 p2 p3{c )-}} 或
{cmd:{c -(}eq: S1 S2, matrix{c )-}} 指定多个在同一方程的参数。此外，见
{mansection BAYES bayesmhRemarksandexamplesDeclaringmodelparameters:{it:声明模型参数}}
在 {bf:[BAYES] bayesmh} 中。


{marker options_table}{...}
{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{p2coldent: * {opth eval:uator(bayesmh_evaluators##evalspec:{it:evalspec})}}指定对数后验评估器；不可与 {cmd:llevaluator()} 和 {cmd:prior()} 组合{p_end}
{p2coldent: * {opth lleval:uator(bayesmh_evaluators##evalspec:{it:evalspec})}}指定对数似然评估器；
需要 {cmd:prior()}，且不可与 {cmd:evaluator()} 一起使用{p_end}
{p2coldent: * {opth prior:(bayesmh##priorspec:priorspec)}}模型参数的先验；在使用对数似然评估器时需要，并且可以重复{p_end}
{synopt :{opth likel:ihood(bayesmh##modelspec:modelspec)}}似然模型的分布；仅在多方程模型的方程中允许{p_end}
{synopt :{opt nocons:tant}}抑制常数项；在指定多方程模型的有序模型时，不能与 {cmd:likelihood()} 一起使用{p_end}
{synopt : {it:{help bayesmh##options_table:bayesmhopts}}}任何 {manhelp bayesmh BAYES} 的选项
除了 {cmd:likelihood()} 和 {cmd:prior()}{p_end}
{synoptline}
{p 4 6 2}* 选项 {cmd:evaluator()} 是对数后验评估器所必需的，
选项 {cmd:llevaluator()} 和 {cmd:prior()} 是对数似然评估器所必需的。对于对数似然评估器，必须为所有模型参数指定 {cmd:prior()}，并且可以重复。{p_end}
{p 4 6 2}{it:indepvars} 可以包含因子变量；见
{help fvvarlists}.{p_end}
{marker weight}{...}
{p 4 6 2}仅允许 {cmd:fweight}；见 {help weight_zh}.{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayesmh} 提供两个选项，{cmd:evaluator()} 和 {cmd:llevaluator()}，便于用户定义的评估器以拟合一般贝叶斯回归模型。 {cmd:bayesmh, evaluator()} 针对对数后验评估器。 {cmd:bayesmh, llevaluator()} 针对对数似然评估器，它与内置的先验分布结合，用于形成所需的后验密度。有关内置似然模型和先验分布的目录，请参见 {manhelp bayesmh BAYES}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmhevaluatorsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth evaluator:(bayesmh_evaluators##evalspec:evalspec)} 指定对数后验评估器的名称和属性；详见
{help bayesmh_evaluators##program:{it:程序评估器}}。此选项不可与 {cmd:llevaluator()} 或 {cmd:likelihood()} 结合使用。

{phang}
{opth llevaluator:(bayesmh_evaluators##evalspec:evalspec)} 指定对数似然评估器的名称和属性；详见
{help bayesmh_evaluators##program:{it:程序评估器}}。此选项不可与 {cmd:evaluator()} 或 {cmd:likelihood()} 结合使用，并要求 {cmd:prior()} 选项。

{phang}
{opth prior:(bayesmh##priorspec:priorspec)}；见 {manhelp bayesmh BAYES}。  

{phang}
{opth likelihood:(bayesmh##modelspec:modelspec)}；见 {manhelp bayesmh BAYES}。此选项仅在多方程模型的方程中允许。

{phang}
{cmd:noconstant}; 见 {manhelp bayesmh BAYES}。

{phang}
{it:bayesmhopts} 指定任何 
{it:{help bayesmh##options_table:options}} 的 {manhelp bayesmh BAYES}，除了 {cmd:likelihood()} 和 {cmd:prior()}。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

	{help bayesmh evaluators##program:程序评估器}
        {help bayesmh evaluators##global_macros:全局宏}


{marker program}{...}
{title:程序评估器}

{pstd}
如果你的似然模型或先验分布特别复杂，并且无法通过 {help bayesmh_zh} 提供的预定义分布集或可替代表达式表示，你可以通过编写自己的评估器程序来编程这些函数。

{pstd}
评估器程序可用于编程完整的后验密度，通过指定 {cmd:evaluator()} 选项，或者仅通过指定 {cmd:llevaluator()} 选项编程贝叶斯模型的似然部分。对于似然评估器，必须为所有模型参数指定 {cmd:prior()} 选项。你的程序应当计算并返回整体对数后验或对数似然密度值。

{pstd}
允许返回值与对数密度相差一个加法常数，但在这种情况下，某些报告的统计量，如 DIC 和对数边际似然，可能不适用。

{pstd}
你的程序评估器 {it:progname} 必须是一个 Stata 程序；见
{findalias frprograms}。该程序必须遵循以下风格。

            {cmd:program} {it:progname}
                {cmd}args lnden xb1 [xb2{txt} ...{cmd:] [}{it:modelparams}{cmd:]}

                 ... {it:计算} ...

                 {cmd}scalar `lnden' ={txt} ...
            {cmd:end}

{pstd}
这里 {cmd:lnden} 包含一个临时标量的名称，其将被填入整体对数后验或对数似然值；

{phang2}
{cmd:xb}{it:#} 包含来自第 {it:#} 个方程的线性预测器的临时变量名称；以及

{phang2}
{it:modelparams} 是一组包含了在 {cmd:evaluator() 或 {cmd:llevaluator()}} 的子选项 {cmd:parameters()} 中指定的模型参数的名称列表。对于矩阵参数，所指定的名称将包含当前值的临时矩阵的名称。对于标量参数，这些是包含当前值的临时标量的名称。名称的列出顺序应与在 {cmd:parameters()} 中指定的模型参数的列出顺序相对应。

{pstd}
另见 {help bayesmh_evaluators##global_macros:{it:全局宏}} 以获取可用于程序评估器的全局宏列表。

{pstd}
在你编写程序评估器后，为对数后验评估器指定其名称，在选项 {cmd:evaluator()} 中，

{phang2}
{cmd:. bayesmh} ...{cmd:,} {opt evaluator(progname, evalopts)}

{pstd}
或者对于对数似然评估器的选项 {cmd:llevaluator()}，

{phang2}
{cmd:. bayesmh} ...{cmd:,} {opt llevaluator(progname, evalopts)}

{pstd}
评估器选项 {it:evalopts} 包括 {cmd:parameters()}、{cmd:extravars()} 和 {cmd:passthruopts()}。

{phang2}
{opth parameters:(bayesmh_evaluators##paramlist:paramlist)} 指定模型参数。模型参数可以是标量或矩阵。每个参数必须在大括号 {cmd:{c -(} {c )-}} 中指定。具有相同方程名称的多个参数可以在一个 {cmd:{c -(} {c )-}} 中指定。

{pmore2}
例如，

{phang3}
{cmd:parameters({mu} {c -(}var:sig2{c )-} {S,matrix} {cov:Sigma, matrix}}
           {cmd:{prob:p1 p2})}

{pmore2}
指定一个没有方程标签的标量参数 {cmd:mu}，一个具有标签 {cmd:var} 的标量参数 {cmd:sig2}，一个矩阵参数 {cmd:S}，一个具有标签 {cmd:cov} 的矩阵参数 {cmd:Sigma}，以及两个标量参数 {cmd:{prob:p1}} 和 {cmd:{prob:p2}}。

{phang2}
{opth extravars(varlist)} 指定除了依赖变量和自变量之外的任何变量，这在你的程序评估器中可能需要。这些变量的示例包括偏移变量、计数数据模型的暴露变量，以及生存时间模型的失效或删失指示变量。见 {mansection BAYES bayesmhevaluatorsRemarksandexamplesCoxproportionalhazardsregression:{it:Cox 比例风险回归}}
在 {bf:[BAYES] bayesmh evaluators} 中的示例。

{phang2}
{opt passthruopts(string)} 指定你希望传递给程序评估器的一组选项。例如，这些选项可以包含模型参数和超参数的固定值。见 {mansection BAYES bayesmhevaluatorsRemarksandexamplesMultivariatenormalregressionmodel:{it:多元正态回归模型}}
在 {bf:[BAYES] bayesmh evaluators} 中的示例。

{pstd}
{opt bayesmh} 自动创建回归系数的参数：
{cmd:{c -(}}{it:depname}{cmd::}{it:varname}{cmd:{c )-}} 对于 {it:indepvars} 中的每个 {it:varname}，并且除非指定了 {cmd:noconstant}，否则还创建常数参数
{cmd:{c -(}}{it:depname}{cmd:{c )-}}。这些参数用于形成程序评估器所用的线性预测器。如果你需要在评估器中访问参数的值，可以使用 {cmd:$MH_b}；见 {mansection BAYES bayesmhevaluatorsRemarksandexamplesCoxproportionalhazardsregression:{it:Cox 比例风险回归}} 中的对数后验评估器的示例。
对于多个因变量，为每个因变量定义回归系数。


{marker global_macros}{...}
{title:全局宏}

{synoptset 20 tabbed}{...}
{marker prog_global}{...}
{synopt:全局宏}描述{p_end}
{synoptline}
{synopt :{opt $MH_N}}观察值的数量{p_end}
{synopt :{opt $MH_yn}}依赖变量的数量{p_end}
{synopt: {opt $MH_touse}}包含要使用的观察值的变量，其他为 0{p_end}
{synopt: {opt $MH_w}}包含与观察值相关的权重的变量{p_end}
{synopt :{opt $MH_extravars}}{varlist} 在 {cmd:extravars()} 中指定{p_end}
{synopt :{opt $MH_passthruopts}}在 {cmd:passthruopts()} 中指定的选项{p_end}

{marker one_outcome}{...}
{syntab:一个结果}
{synopt :{opt $MH_y}}依赖变量的名称{p_end}
{synopt :{opt $MH_x1}}第一个自变量的名称{p_end}
{synopt :{opt $MH_x2}}第二个自变量的名称{p_end}
{synopt :{opt ...}}{p_end}
{synopt :{opt $MH_xn}}自变量的数量{p_end}
{synopt :{opt $MH_xb}}包含线性组合的临时变量的名称{p_end}

{marker multiple_outcomes}{...}
{syntab:多个结果}
{synopt :{opt $MH_y1}}第一个依赖变量的名称{p_end}
{synopt :{opt $MH_y2}}第二个依赖变量的名称{p_end}
{synopt :{opt ...}}{p_end}

{synopt :{opt $MH_y1x1}}建模 y1 的第一个自变量的名称{p_end}
{synopt :{opt $MH_y1x2}}建模 y1 的第二个自变量的名称{p_end}
{synopt :{opt ...}}{p_end}
{synopt :{opt $MH_y1xn}}建模 y1 的自变量的数量{p_end}
{synopt :{opt $MH_y1xb}}包含建模 y1 的线性组合的临时变量的名称{p_end}

{synopt :{opt $MH_y2x1}}建模 y2 的第一个自变量的名称{p_end}
{synopt :{opt $MH_y2x2}}建模 y2 的第二个自变量的名称{p_end}
{synopt :{opt ...}}{p_end}
{synopt :{opt $MH_y2xn}}建模 y2 的自变量的数量{p_end}
{synopt :{opt $MH_y2xb}}包含建模 y2 的线性组合的临时变量的名称{p_end}

{synopt :{opt ...}}{p_end}

{marker prog_params}{...}
{syntab:标量和矩阵参数}
{synopt :{opt $MH_b}}临时系数向量的名称；条带的名称应与系数名称相对应{p_end}
{synopt :{opt $MH_bn}}系数的数量{p_end}
{synopt :{opt $MH_p}}临时的额外标量模型参数的名称（如果有）；条带名称应正确命名{p_end}
{synopt :{opt $MH_pn}}额外标量模型参数的数量{p_end}
{synopt :{opt $MH_m1}}第一个矩阵参数的临时矩阵的名称（如果有）{p_end}
{synopt :{opt $MH_m2}}第二个矩阵参数的临时矩阵的名称（如果有）{p_end}
{synopt :{opt ...}}{p_end}
{synopt :{opt $MH_mn}}矩阵模型参数的数量{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
除了 {cmd:bayesmh} 存储的结果外，{cmd:bayesmh, evaluator()} 和 {cmd:bayesmh, llevaluator()} 还存储以下结果在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 15 17 2: 宏}{p_end}
{synopt:{cmd:e(evaluator)}}程序评估器（一个方程）{p_end}
{synopt:{cmd:e(evaluator}{it:#}{cmd:)}}第 {it:#} 个方程的程序评估器{p_end}
{synopt:{cmd:e(evalparams)}}评估器参数（一个方程）{p_end}
{synopt:{cmd:e(evalparams}{it:#}{cmd:)}}第 {it:#} 个方程的评估器参数{p_end}
{synopt:{cmd:e(extravars)}}额外变量（一个方程）{p_end}
{synopt:{cmd:e(extravars}{it:#}{cmd:)}}第 {it:#} 个方程的额外变量{p_end}
{synopt:{cmd:e(passthruopts)}}传递选项（一个方程）{p_end}
{synopt:{cmd:e(passthruopts}{it:#}{cmd:)}}第 {it:#} 个方程的传递选项{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesmh_evaluators.sthlp>}