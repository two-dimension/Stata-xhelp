{smcl}
{* *! version 1.2.28  22mar2019}{...}
{viewerdialog svar "dialog svar"}{...}
{vieweralsosee "[TS] var svar" "mansection TS varsvar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var svar postestimation" "help svar postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE]" "mansection DSGE dsge"}{...}
{viewerjumpto "Syntax" "svar_zh##syntax"}{...}
{viewerjumpto "Menu" "svar_zh##menu"}{...}
{viewerjumpto "Description" "svar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "svar_zh##linkspdf"}{...}
{viewerjumpto "Options" "svar_zh##options"}{...}
{viewerjumpto "Examples" "svar_zh##examples"}{...}
{viewerjumpto "Stored results" "svar_zh##results"}{...}
{viewerjumpto "Reference" "svar_zh##reference"}
{help svar:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] var svar} {hline 2}}结构性向量自回归模型{p_end}
{p2col:}({mansection TS varsvar:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
短期约束

{p 8 13 2}
{cmd:svar}
{depvarlist}
{ifin}
{cmd:,}
{c -(}
{opt acon:straints(constraints_a)}
{opt ae:q(matrix_aeq)}
{opt ac:ns(matrix_acns)}
{opt bcon:straints(constraints_b)}
{opt be:q(matrix_beq)}
{opt bc:ns(matrix_bcns)}
{c )-}
[{it:{help svar##short_run_options:短期选项}}]{p_end}


{pstd}
长期约束

{p 8 13 2 }
{cmd:svar}
{depvarlist}
{ifin}
{cmd:,}
{c -(}
{opt lrcon:straints(constraints_lr)}
{opt lre:q(matrix_lreq)}
{opt lrc:ns(matrix_lrcns)}
{c )-}
[{it:{help svar##long_run_options:长期选项}}]{p_end}


{synoptset 33 tabbed}{...}
{marker short_run_options}{...}
{synopthdr:短期选项}
{synoptline}
{syntab:模型}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{p2coldent:* {opt acon:straints(constraints_a)}}将先前定义的 {it:constraints_a} 应用于 {bf:A}{p_end}
{p2coldent:* {opt ae:q(matrix_aeq)}}定义并应用于 {bf:A} 的相等约束矩阵 {it:matrix_aeq}{p_end}
{p2coldent:* {opt ac:ns(matrix_acns)}}定义并应用于 {bf:A} 的交叉参数约束矩阵 {it:matrix_acns}{p_end}
{p2coldent:* {opt bcon:straints(constraints_b)}}将先前定义的 {it:constraints_b} 应用于 {bf:B}{p_end}
{p2coldent:* {opt be:q(matrix_beq)}}定义并应用于 {bf:B} 的相等约束矩阵 {it:matrix_beq}{p_end}
{p2coldent:* {opt bc:ns(matrix_bcns)}}定义并应用于 {bf:B} 的交叉参数约束矩阵 {it:matrix_bcns}{p_end}
{synopt:{opth la:gs(numlist)}}在基础 VAR 中使用滞后 {it:numlist}{p_end}

{syntab:模型 2}
{synopt:{opth ex:og(varlist:varlist_exog)}}使用外生变量 {it:varlist}{p_end}
{synopt:{opt varc:onstraints(constraints_v)}}将 {it:constraints_v} 应用于基础 VAR{p_end}
{synopt:{opt noislog}}抑制 SURE 迭代日志{p_end}
{synopt:{opt isit:erate(#)}}设置 SURE 的最大迭代次数；默认值为 {cmd:isiterate(1600)}{p_end}
{synopt:{opt istol:erance(#)}}设置 SURE 的收敛容忍度{p_end}
{synopt:{opt nois:ure}}使用一步 SURE{p_end}
{synopt:{opt dfk}}进行小样本自由度调整{p_end}
{synopt:{opt sm:all}}报告小样本 t 和 F 统计量{p_end}
{synopt:{opt noiden:check}}不检查局部识别{p_end}
{synopt:{opt nobig:f}}不计算隐式设置为零的系数的参数向量{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt f:ull}}在表中显示约束参数{p_end}
{synopt:{opt var}}显示基础 {opt var} 输出{p_end}
{synopt:{opt lut:stats}}报告 L{c u:}tkepohl 滞后顺序选择统计量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help svar##display_options:显示选项}}}控制列和列格式{p_end}

{syntab:最大化}
{synopt:{it:{help svar##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

包括帮助 shortdes-coeflegend
{synoptline}
{p 4 6 2}
* {opt aconstraints(constraints_a)}, {opt aeq(matrix_aeq)}, {opt acns(matrix_acns)},
  {opt bconstraints(constraints_b)}, {opt beq(matrix_beq)}, {opt bcns(matrix_bcns)}：
  至少必须指定其中一个选项。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}

{marker long_run_options}{...}
{synopthdr:长期选项}
{synoptline}
{syntab:模型}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{p2coldent:* {opt lrcon:straints(constraints_lr)}}将先前定义的 {it:constraints_lr} 应用于 {bf:C}{p_end}
{p2coldent:* {opt lre:q(matrix_lreq)}}定义并应用于 {bf:C} 的相等约束矩阵 {it:matrix_lreq}{p_end}
{p2coldent:* {opt lrc:ns(matrix_lrcns)}}定义并应用于 {bf:C} 的交叉参数约束矩阵 {it:matrix_lrcns}{p_end}
{synopt:{opth la:gs(numlist:numlist)}}在基础 VAR 中使用滞后 {it:numlist}{p_end}

{syntab:模型 2}
{synopt:{opth ex:og(varlist:varlist_exog)}}使用外生变量 {it:varlist}{p_end}
{synopt:{opt varc:onstraints(constraints_v)}}将 {it:constraints_v} 应用于基础 VAR {p_end}
{synopt:{opt noislog}}抑制 SURE 迭代日志{p_end}
{synopt:{opt isit:erate(#)}}设置 SURE 的最大迭代次数；默认值为 {cmd:isiterate(1600)}{p_end}
{synopt:{opt istol:erance(#)}}设置 SURE 的收敛容忍度{p_end}
{synopt:{opt nois:ure}}使用一步 SURE{p_end}
{synopt:{opt dfk}}进行小样本自由度调整{p_end}
{synopt:{opt sm:all}}报告小样本 t 和 F 统计量{p_end}
{synopt:{opt noiden:check}}不检查局部识别{p_end}
{synopt:{opt nobig:f}}不计算隐式设置为零的系数的参数向量{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt f:ull}}在表中显示约束参数{p_end}
{synopt:{opt var}}显示基础 {opt var} 输出{p_end}
{synopt:{opt lut:stats}}报告 L{c u:}tkepohl 滞后顺序选择统计量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help svar##display_options:显示选项}}}控制列和列格式{p_end}

{syntab:最大化}
{synopt:{it:{help svar##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

包括帮助 shortdes-coeflegend
{synoptline}
{p 4 6 2}
* {opt lrconstraints(constraints_lr)}, {opt lreq(matrix_lreq)},
  {opt lrcns(matrix_lrcns)}：至少必须指定其中一个选项。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}

{p 4 6 2}您必须在使用 {opt svar} 之前 {cmd:tsset} 您的数据；请参见
{help tsset_zh:[TS] tsset}。{p_end}
{p 4 6 2} {it:depvarlist} 和 {it:varlist_exog} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}{opt by}、{opt fp}、{opt rolling}、{opt statsby} 和 {cmd:xi} 是允许的；请参见 {help prefix_zh}。{p_end}
{p 4 6 2}请参见 {manhelp svar_postestimation TS:var svar postestimation} 获取
估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 结构性向量自回归 (SVAR)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svar} 拟合向量自回归模型，受您对结果脉冲响应函数（IRFs）的短期或长期约束。经济理论通常激励约束的设定，使得可以对 IRFs 进行因果解释。请参见
{manhelp var_intro TS:var intro} 获取与 {cmd:svar} 一起使用的命令列表。


{marker linkspdf}{...}
{title:指向 PDF 文档的链接}

        {mansection TS varsvarQuickstart:快速开始}

        {mansection TS varsvarRemarksandexamples:备注和示例}

        {mansection TS varsvarMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；请参见
{bf:{help estimation options##noconstant:[R] 估计选项}}。

{pstd}
{opt aconstraints(constraints_a)},
{opt aeq(matrix_aeq)},
{opt acns(matrix_acns)}
{break}
{opt bconstraints(constraints_b)},
{opt beq(matrix_beq)},
{opt bcns(matrix_bcns)}{p_end}
{pmore}
    这些选项指定了 SVAR 中的短期约束。要指定一个短期 SVAR 模型，您必须指定至少一个这些选项。第一组选项指定 {bf:A} 矩阵参数的约束；第二组指定 {bf:B} 矩阵参数的约束。
    如果从第一组中选择了至少一个选项，而未从第二组中选择任何选项，{opt svar} 将 {bf:B} 设置为单位矩阵。类似地，如果从第二组中选择了至少一个选项，而未从第一组中选择任何选项，{opt svar} 将 {bf:A} 设置为单位矩阵。

{pmore}
    这些选项不能与定义长期约束的任何选项组合使用。

{phang2}
{opt aconstraints(constraints_a)} 指定在估计过程中应用于 {bf:A} 的 Stata 先前定义的约束的 {it:{help numlist_zh}}。

{phang2}
{opt aeq(matrix_aeq)} 指定定义一组相等约束的矩阵。该矩阵必须是方阵，其维度等于基础 VAR 中方程的数量。该矩阵的元素必须是 {it:missing} 或实数。该矩阵的某个元素为缺失值表示该元素的 {bf:A} 是一个自由参数。某个元素为实数会约束 {bf:A} 的该元素等于这个实数。例如，

{center:{space 4}{c TLC}{space 11}{c TRC}}
{center:{bf:A} = {c |} 1     0   {c |}}
{center:{space 4}{c |} .    1.5  {c |}}
{center:{space 4}{c BLC}{space 11}{c BRC}}

{pmore2}
   指定 {bf:A}[1,1]=1, {bf:A}[1,2]=0, {bf:A}[2,2]=1.5, 并且 {bf:A}[2,1] 是一个自由参数。

{phang2}
{opt acns(matrix_acns)} 指定定义一组排除或交叉参数相等约束的矩阵，作用于 {bf:A}。该矩阵必须是方阵，其维度等于基础 VAR 中方程的数量。该矩阵的每个元素必须是 {it:missing}、0 或正整数。该元素为缺失值表示该 {bf:A} 的这个元素没有约束。该元素为零会约束 {bf:A} 的这个元素为零。在该矩阵中，任何严格正整数必须出现在两个或更多位置。该矩阵中的严格正整数约束对应于所有相应元素 {bf:A}，使得与该矩阵中含有相同整数的元素相等。例如，考虑矩阵

{center:{space 4}{c TLC}{space 10}{c TRC}}
{center:{bf:A} = {c |} .     1  {c |}}
{center:{space 4}{c |} 1     0  {c |}}
{center:{space 4}{c BLC}{space 10}{c BRC}}

{pmore2}
   在一个二方程 SVAR 中指定 {cmd:acns(A)} 会约束 {bf:A}[2,1]={bf:A}[1,2] 以及 {bf:A}[2,2]=0，同时使 {bf:A}[1,1] 自由。

{phang2}
{opt bconstraints(constraints_a)} 指定在估计过程中应用于 {bf:B} 的 Stata 先前定义的约束的 {it:{help numlist_zh}}。

{phang2}
{opt beq(matrix_beq)} 指定定义一组相等约束的矩阵。该矩阵必须是方阵，其维度等于基础 VAR 中方程的数量。该矩阵的元素必须是 {it:missing} 或实数。隐含约束的语法与 {opt aeq()} 中描述的相同，只不过它是作用于 {bf:B} 而不是 {bf:A}。

{phang2}
{opt bcns(matrix_bcns)} 指定定义一组排除或交叉参数相等约束的矩阵，作用于 {bf:B}。该矩阵必须是方阵，其维度等于基础 VAR 中方程的数量。该矩阵的每个元素必须是 {it:missing}、0 或正整数。隐含约束的格式与上述 {opt acns()} 选项中描述的格式相同。

{phang}
{opt lrconstraints(constraints_lr)},
{opt lreq(matrix_lreq)},
{opt lrcns(matrix_lrcns)}{p_end}
{pmore}
   这些选项指定 SVAR 中的长期约束。要指定一个长期 SVAR 模型，您必须指定至少一个这些选项。该选项列表指定了对长期 {bf:C} 矩阵参数的约束（见 
   {mansection TS varsvarRemarksandexamplesLong-runSVARmodels:{it:长期 SVAR 模型}}
   在 {bf:[TS] var svar}
   中为 {bf:C} 的定义）。这些选项不能与定义短期约束的任何选项组合使用。

{phang2}
{opt lrconstraints(constraints_lr)} 指定在估计过程中应用于 {bf:C} 的 Stata 先前定义的约束的 {it:{help numlist_zh}}。

{phang2}
{opt lreq(matrix_lreq)} 指定定义一组相等约束的矩阵，作用于 {bf:C}。该矩阵必须是方阵，其维度等于基础 VAR 中方程的数量。该矩阵的元素必须是 {it:missing} 或实数。隐含约束的语法与 {opt aeq()} 中描述的相同，只不过它是作用于 {bf:C}。

{phang2}
{opt lrcns(matrix_lrcns)} 指定定义一组排除或交叉参数相等约束的矩阵，作用于 {bf:C}。该矩阵必须是方阵，其维度等于基础 VAR 中方程的数量。该矩阵的每个元素必须是 {it:missing}、0 或正整数。隐含约束的格式与上述 {opt acns()} 选项中描述的格式相同。

{phang}
{opt lags(numlist)} 指定包含在基础 VAR 模型中的滞后。默认值为 {cmd:lags(1 2)}。此选项接受一个 {it:numlist} 而不仅仅是一个最大滞后整数。例如，{cmd:lags(2)} 仅会在模型中包含第二个滞后，而 {cmd:lags(1/2)} 则会在模型中包含第一和第二个滞后。有关 {it:numlist} 和滞后的进一步讨论，请参见 {it:{help numlist_zh}} 和 {help tsvarlist_zh}。

{dlgtab:模型 2}

{phang}
{opth "exog(varlist:varlist_exog)"} 指定要包括在基础 VAR 中的外生变量列表。

{phang}
{opt varconstraints(constraints_v)} 指定一组约束，作用于基础 VAR 中的系数。由于 {opt svar} 估计多个方程，约束必须为除了第一个方程以外的每个方程指定方程名称。

{phang}
{opt noislog} 防止 {opt svar} 显示迭代无关回归算法的迭代日志。当未指定 {opt varconstraints()} 选项时，VAR 系数通过 OLS 进行估计，这是一种非迭代程序。因此，{opt noislog} 仅可以与 {opt varconstraints()} 一起使用。类似地，{opt noislog} 不能与 {opt noisure} 结合使用。

{phang}
{opt isiterate(#)} 设置迭代无关回归算法的最大迭代次数。默认限制为 1600。当未指定 {opt varconstraints()} 选项时，VAR 系数通过 OLS 进行估计，属于非迭代程序。因此，{opt isiterate()} 仅可以与 {opt varconstraints()} 一起使用。类似地，{opt isiterate()} 不能与 {opt noisure} 结合使用。

{phang}
{opt istolerance(#)} 指定迭代无关回归算法的收敛容忍度。默认的容忍度为 {cmd:1e-6}。当未指定 {opt varconstraints()} 选项时，VAR 系数通过 OLS 进行估计，属于非迭代程序。因此，{opt istolerance()} 仅可以与 {opt varconstraints()} 一起使用。类似地，{opt istolerance()} 不能与 {opt noisure} 结合使用。

{phang}
{opt noisure} 指定在指定 {opt varconstraints()} 时通过一步似乎无关的回归来估计 VAR 系数。默认情况下，当指定 {opt varconstraints()} 时，{opt svar} 会通过迭代无关的回归来估计 VAR 中的系数。当未指定 {opt varconstraints()} 选项时，VAR 系数估计通过 OLS 获得，这是一种非迭代程序。因此，{opt noisure} 仅可以与 {opt varconstraints()} 一起使用。

{phang}
{opt dfk} 指定在估计 VAR 干扰的协方差矩阵时使用小样本自由度调整。具体而言，使用 1/(T-mparms) 替代大样本除数 1/T，其中 mparms 是 K 个方程在 {it:y_t} 的函数形式中的平均参数数量。

{phang}
{opt small} 导致 {opt svar} 计算并报告小样本 t 和 F 统计量，而不是大样本的正态和卡方统计量。

{phang}
{opt noidencheck} 请求不进行对 {help svar##AG1997:Amisano 和 Giannini (1997)} 的局部识别检查。该检查与使用的起始值局部相关。由于这一点依赖于起始值，因此您可能希望通过指定 {opt noidencheck} 选项来抑制此检查。然而，在指定此选项时要小心。未结构识别的模型仍可以收敛，从而生成看似有意义的无意义结果。

{phang}
{opt nobigf} 请求 {opt svar} 不计算估计的参数向量，包含隐式设置为零的系数，例如当某些滞后被省略时。{cmd:e(bf)} 用于计算后估计命令 {helpb irf create} 和 {helpb fcast compute} 中的渐近标准误。因此，指定 {opt nobigf} 说明采用的渐近标准误不会来自于 {opt irf create} 和 {opt fcast compute}。请参见 {it:{mansection TS varRemarksandexamplesFittingmodelswithsomelagsexcluded:省略某些滞后的模型拟合}} 在 {bf:[TS] var} 中。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{bf:{help estimation options##level():[R] 估计选项}}。

{phang}
{opt full} 在表中显示约束参数。

{phang}
{opt var} 指定 {opt var} 的输出也显示出来。默认情况下，基础 VAR 是 {help quietly_zh} 拟合的。

{phang}
{opt lutstats} 指定计算 L{c u:}tkepohl 版本的滞后顺序选择统计量。有关这些统计量的讨论，请参见 
{it:{mansection TS varsocMethodsandformulas:方法与公式}} 在 {bf:[TS] varsoc} 中。

{phang}
{opt nocnsreport}；请参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:显示选项}：
{opt noci},
{opt nopv:alues},
{opth cformat(%fmt)},
{opt pformat(%fmt)}, 和
{opt sformat(%fmt)}；
请参见 {helpb estimation options##display_options:[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:最大化选项}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}，和
{opt from(init_specs)}；
请参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项在 {opt svar} 中可用，但不会显示在对话框中：

{phang}
{opt coeflegend}；请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}
{phang2}{cmd:. matrix A = (1,0,0\.,1,0\.,.,1)}{p_end}
{phang2}{cmd:. matrix B = (.,0,0\0,.,0\0,0,.)}

{pstd}短期仅识别的 SVAR 模型{p_end}
{phang2}{cmd:. svar dln_inv dln_inc dln_consump, aeq(A) beq(B)}{p_end}

{pstd}与上述相同，但限制在指定的日期范围内{p_end}
{phang2}{cmd:. svar dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
            {cmd:aeq(A) beq(B)}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. matrix A = (1,0,0\0,1,0\.,.,1)}{p_end}
{phang2}{cmd:. matrix B = (.,0,0\0,.,0\0,0,.)}

{pstd}短期超识别的 SVAR 模型{p_end}
{phang2}{cmd:. svar dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
           {cmd:aeq(A) beq(B)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse m1gdp}{p_end}
{phang2}{cmd:. matrix lr = (.,0\0,.)}

{pstd}长期 SVAR 模型{p_end}
{phang2}{cmd:. svar d.ln_m1 d.ln_gdp, lreq(lr)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:svar} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_cns)}}约束数{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_dv)}}{cmd:e(b)} 中的因变量数{p_end}
{synopt:{cmd:e(ll)}}来自 {cmd:svar} 的对数似然{p_end}
{synopt:{cmd:e(N_gaps_var)}}样本中的缺口数{p_end}
{synopt:{cmd:e(k_var)}} VAR 中的系数数{p_end}
{synopt:{cmd:e(k_eq_var)}}基础 VAR 中的方程数{p_end}
{synopt:{cmd:e(k_dv_var)}}基础 VAR 中的因变量数{p_end}
{synopt:{cmd:e(df_eq_var)}}方程中的平均参数数{p_end}
{synopt:{cmd:e(df_r_var)}}如果是 {cmd:small}，则是方程的残差自由度{p_end}
{synopt:{cmd:e(obs_}{it:#}{cmd:_var)}}方程 {it:#} 的观察数{p_end}
{synopt:{cmd:e(k_}{it:#}{cmd:_var)}}方程 {it:#} 的系数数{p_end}
{synopt:{cmd:e(df_m}{it:#}{cmd:_var)}}方程 {it:#} 的模型自由度{p_end}
{synopt:{cmd:e(df_r}{it:#}{cmd:_var)}}方程 {it:#} 的残差自由度（仅适用于 {cmd:small}）{p_end}
{synopt:{cmd:e(r2_}{it:#}{cmd:_var)}}方程 {it:#} 的 R 平方{p_end}
{synopt:{cmd:e(ll_}{it:#}{cmd:_var)}}方程 {it:#} VAR 的对数似然{p_end}
{synopt:{cmd:e(chi2_}{it:#}{cmd:_var)}}方程 {it:#} 的卡方统计量{p_end}
{synopt:{cmd:e(F_}{it:#}{cmd:_var)}}方程 {it:#} 的 F 统计量（仅适用于 {cmd:small}）{p_end}
{synopt:{cmd:e(rmse_}{it:#}{cmd:_var)}}方程 {it:#} 的均方根误差{p_end}
{synopt:{cmd:e(mlag_var)}} VAR 中的最高滞后{p_end}
{synopt:{cmd:e(tparms_var)}}所有方程中的参数数量{p_end}
{synopt:{cmd:e(aic_var)}}赤池信息准则{p_end}
{synopt:{cmd:e(hqic_var)}}汉南-奎因信息准则{p_end}
{synopt:{cmd:e(sbic_var)}}施瓦茨-贝叶斯信息准则{p_end}
{synopt:{cmd:e(fpe_var)}}最终预测误差{p_end}
{synopt:{cmd:e(ll_var)}}来自 {cmd:var} 的对数似然{p_end}
{synopt:{cmd:e(detsig_var)}}{cmd:e(Sigma)} 的行列式{p_end}
{synopt:{cmd:e(detsig_ml_var)}}Sigma_ml hat 的行列式{p_end}
{synopt:{cmd:e(tmin)}}样本中的第一个时间段{p_end}
{synopt:{cmd:e(tmax)}}最大时间{p_end}
{synopt:{cmd:e(chi2_oid)}}过识别检验{p_end}
{synopt:{cmd:e(oid_df)}}过识别约束的数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic_ml)}}迭代次数{p_end}
{synopt:{cmd:e(rc_ml)}}来自 {cmd:ml} 的返回代码{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:svar}{p_end}
{synopt:{cmd:e(cmdline)}}命令如所键入{p_end}
{synopt:{cmd:e(lrmodel)}}长期模型（如果指定）{p_end}
{synopt:{cmd:e(lags_var)}}模型中的滞后{p_end}
{synopt:{cmd:e(depvar_var)}}因变量名称{p_end}
{synopt:{cmd:e(endog_var)}}内生变量名称{p_end}
{synopt:{cmd:e(exog_var)}}外生变量名称（如果指定）{p_end}
{synopt:{cmd:e(nocons_var)}}如果指定了 {cmd:noconstant} 的 {cmd:nocons}{p_end}
{synopt:{cmd:e(cns_lr)}}长期约束{p_end}
{synopt:{cmd:e(cns_a)}}对 A 的交叉参数相等约束{p_end}
{synopt:{cmd:e(cns_b)}}对 B 的交叉参数相等约束{p_end}
{synopt:{cmd:e(dfk_var)}}如果指定，备用除数（{cmd:dfk}）{p_end}
{synopt:{cmd:e(eqnames_var)}}方程名称{p_end}
{synopt:{cmd:e(lutstats_var)}}{cmd:lutstats}，如果指定{p_end}
{synopt:{cmd:e(constraints_var)}}{cmd:constraints_var}，如果存在对 VAR 的约束{p_end}
{synopt:{cmd:e(small)}}{cmd:small}，如果指定{p_end}
{synopt:{cmd:e(tsfmt)}}时间变量的格式{p_end}
{synopt:{cmd:e(timevar)}}时间变量的名称{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(Sigma)}}Sigma hat 矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(b_var)}}基础 VAR 模型的系数向量{p_end}
{synopt:{cmd:e(V_var)}}基础 VAR 模型的 VCE{p_end}
{synopt:{cmd:e(bf_var)}}包含被删除滞后的零的完整系数向量{p_end}
{synopt:{cmd:e(G_var)}}由 {cmd:var} 存储的 Gamma 矩阵；见
	{mansection TS varMethodsandformulas:{it:方法与公式}} 在
	{hi:[TS] var}{p_end}
{synopt:{cmd:e(aeq)}}{cmd:aeq(}{it:matrix}{cmd:)}, 如果指定{p_end}
{synopt:{cmd:e(acns)}}{cmd:acns(}{it:matrix}{cmd:)}, 如果指定{p_end}
{synopt:{cmd:e(beq)}}{cmd:beq(}{it:matrix}{cmd:)}, 如果指定{p_end}
{synopt:{cmd:e(bcns)}}{cmd:bcns(}{it:matrix}{cmd:)}, 如果指定{p_end}
{synopt:{cmd:e(lreq)}}{cmd:lreq(}{it:matrix}{cmd:)}, 如果指定{p_end}
{synopt:{cmd:e(lrcns)}}{cmd:lrcns(}{it:matrix}{cmd:)}, 如果指定{p_end}
{synopt:{cmd:e(Cns_var)}}来自 {cmd:var} 的约束矩阵（如果指定了 {cmd:varconstraints()}）{p_end}
{synopt:{cmd:e(A)}}估计的 A 矩阵（如果为短期模型）{p_end}
{synopt:{cmd:e(B)}}估计的 B 矩阵{p_end}
{synopt:{cmd:e(C)}}估计的 C 矩阵（如果为长期模型）{p_end}
{synopt:{cmd:e(A1)}}估计的 A bar 矩阵（如果为长期模型）{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker AG1997}{...}
{phang}
Amisano, G., 和 C. Giannini. 1997. {it:结构向量自回归计量经济学中的主题}. 
第二版. 海德堡：施普林格.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svar.sthlp>}