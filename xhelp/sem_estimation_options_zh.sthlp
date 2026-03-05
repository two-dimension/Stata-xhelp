{smcl}
{* *! version 1.0.11  12dec2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem 估计选项" "mansection SEM semestimationoptions"}{...}
{vieweralsosee "[SEM] 导论 8" "mansection SEM Intro8"}{...}
{vieweralsosee "[SEM] 导论 9" "mansection SEM Intro9"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem 选项 method()" "help sem_option_method_zh"}{...}
{vieweralsosee "[SEM] sem 选项 noxconditional" "help sem_option_noxconditional_zh"}{...}
{viewerjumpto "语法" "sem_estimation_options_zh##syntax"}{...}
{viewerjumpto "描述" "sem_estimation_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_estimation_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "sem_estimation_options_zh##options"}{...}
{viewerjumpto "备注" "sem_estimation_options_zh##remarks"}{...}
{viewerjumpto "示例" "sem_estimation_options_zh##examples"}
{help sem_estimation_options:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[SEM] sem 估计选项} {hline 2}}影响估计的选项{p_end}
{p2col:}({mansection SEM semestimationoptions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} {help sem and gsem path notation:{it:paths}} 
... {cmd:,} ... {it:estimation_options}


{synoptset 28}{...}
{synopthdr:estimation_options}
{synoptline}
{synopt :{opt meth:od}{cmd:(}{it:{help sem_option_method##method:method}{cmd:)}}}{it:method} 可以是 {opt ml}、{opt mlmv} 或 {opt adf}{p_end}
{synopt :{opt vce}{cmd:(}{it:{help sem_option_method##vcetype:vcetype}{cmd:)}}}{it:vcetype} 可以是 {opt oim}、{opt eim}、{opt opg}、{opt sbentler}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}
{synopt :{opt nm1}}计算样本方差，而非 ML 方差 {p_end}
{synopt :{opt noxcond:itional}}计算观察到的外生变量的协方差等{p_end}
{synopt :{opt allmiss:ing}}用于 {cmd:method(mlmv)} {p_end}
{synopt :{opt noivstart}}跳过初始值计算 {p_end}

{synopt :{opt noest:imate}}不拟合模型，而是展示初始值{p_end}

{synopt :{it:{help sem_estimation_options##maximize_options:maximize_options}}}控制指定模型的极大化过程；很少使用{p_end}
{synopt :{opt satopt:s}{cmd:(}{it:{help sem_estimation_options##satopts:maximize_options}{cmd:)}}}控制饱和模型的极大化过程；很少使用{p_end}
{synopt :{opt baseopt:s}{cmd:(}{it:{help sem_estimation_options##baseopts:maximize_options}{cmd:)}}}控制基线模型的极大化过程；很少使用{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
这些选项控制结果的获取方式。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semestimationoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt method()} 和 {opt vce()} 指定用于获得参数估计的的方法和获得估计的方差-协方差矩阵的技术。
请参见 {help sem_option_method_zh:[SEM] sem 选项 method()}。

{phang}
{opt nm1} 指定在 SEM 方程中使用样本方差（除以 N-1）而非渐进方差（除以 N）。这是一个小的技术问题，除非你试图匹配假设样本方差的其他软件的结果，否则一般不重要。{cmd:sem} 假设使用渐进方差。

{phang}
{opt noxconditional} 表示希望将观察到的外生变量的均值、方差和协方差纳入 {cmd:sem} 要估计的参数中。请参见 {help sem_option_noxconditional_zh:[SEM] sem 选项 noxconditional}。

{phang}
{opt allmissing} 指定在 {cmd:method(mlmv)} 选项指定时缺失值的处理方式。

{p 8 8 2}
通常情况下，{cmd:sem} 会从估计样本中排除任何观测值，如果这些观测值包含模型中使用的观察变量的缺失值。然而，{cmd:method(mlmv)} 可以处理这些缺失值，因此在这种情况下，包含缺失的观测值并不被排除。

{p 8 8 2}
即便如此，{cmd:sem,} {cmd:method(mlmv)} 仍会从估计样本中排除包含 {cmd:.a}、{cmd:.b}、...、{cmd:.z} 的观测值。{cmd:sem} 假设你不希望这些观测值被用于，因为缺失值并不是随机缺失的。如果你希望 {cmd:sem} 将这些观测值纳入估计样本，需指定 {opt allmissing} 选项。

{phang}
{opt noivstart} 是一个不常用的特别选项，主要供程序员使用。它指定 {cmd:sem} 跳过生成良好初始值的努力，这些努力使用需要计算时间的工具变量技术。如果指定此选项，应指定所有的初始值。任何未指定的初始值将被假定为 0（均值、路径系数和协方差）或数据的某些简单函数（方差）。

{phang}
{cmd:noestimate} 指定模型不进行拟合。相反，初始值将被显示，并且它们将采用 {cmd:coeflegend} 风格的输出。这一选项的重要用途是在模型难以收敛时改善初始值。可以采用以下步骤：

{phang2}{cmd:. sem ..., ... noestimate}

{phang2}{cmd:. matrix b = e(b)}{p_end}
{phang2}. ...（修改 b 的元素）...

{phang2}{cmd:. sem ..., ... from(b)}

{marker maximize_options}{...}
{phang}
{it:maximize_options} 指定控制 {cmd:sem} 极大化过程的标准和很少指定的选项；
请参见 {help maximize_zh:[R] 极大化}。 相关选项包括 {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt tol:erance(#)}、{opt ltol:erance(#)}，和 {opt nrtol:erance(#)}。

{marker satopts}{...}
{phang}
{cmd:satopts(}{it:{help sem_estimation_options##maximize_options:maximize_options}}{cmd:)} 是一个不常指定的选项，仅在指定 {cmd:method(mlmv)} 选项时相关。{cmd:sem} 在输出底部报告模型与饱和模型的测试。因此，{cmd:sem} 需要获得饱和拟合。在 {cmd:method(ml)} 或 {cmd:method(adf} 的情况下，{cmd:sem} 可以直接计算。在 {cmd:method(mlmv)} 的其他情况下，{cmd:sem} 必须真正拟合饱和模型。指定在 {cmd:satopts()} 中的极大化选项控制该极大化过程。即便需要指定整体 {it:maximize_options}，通常也不需要指定 {cmd:satopts()} 选项。

{marker baseopts}{...}
{phang}
{cmd:baseopts(}{it:{help sem_estimation_options##maximize_options:maximize_options}}{cmd:)} 是一个很少指定的选项，除非同时指定 {cmd:method(mlmv)} 或 {cmd:method(adf)}。在拟合模型时，{cmd:sem} 会记录关于基线模型的信息，以便在以后通过 {cmd:estat gof} 命令使用。因此，{cmd:sem} 需要获得基线拟合。在 {cmd:method(ml)} 的情况下，{cmd:sem} 可以直接计算。在 {cmd:method(mlmv)} 和 {cmd:method(adf)} 的情况下，{cmd:sem} 必须真正拟合基线模型。指定在 {cmd:baseopts()} 中的极大化选项控制该极大化过程。即便需要指定整体 {it:maximize_options}，通常也不需要指定 {cmd:baseopts()} 选项。


{marker remarks}{...}
{title:备注}

{pstd}
在这一组选项中，最常指定的选项是 {opt vce()}。请参见 {helpb sem option method:[SEM] sem 选项 method()}、{manlink SEM Intro 8}，和 {manlink SEM Intro 9}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cfa_missing}{p_end}

{pstd}使用最大似然拟合 CFA 模型{p_end}
{phang2}{cmd:. sem (test1 test2 test3 test4 <- X)}{p_end}

{pstd}计算样本方差{p_end}
{phang2}{cmd:. sem (test1 test2 test3 test4 <- X), nm1}{p_end}

{pstd}对于 {cmd:method(mlmv)} 将所有缺失值视为缺失{p_end}
{phang2}{cmd:. sem (test1 test2 test3 test4 <- X), method(mlmv) allmissing}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estimation_options.sthlp>}