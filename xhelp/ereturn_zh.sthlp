{smcl}
{* *! version 1.3.5  14may2018}{...}
{viewerdialog "ereturn list" "dialog return_list"}{...}
{vieweralsosee "[P] ereturn" "mansection P ereturn"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] _estimates" "help _estimates_zh"}{...}
{vieweralsosee "[P] return" "help return_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{vieweralsosee "[U] 20 Estimation and postestimation commands (estimation)" "help estcom_zh"}{...}
{vieweralsosee "[U] 20 Estimation and postestimation commands (postestimation)" "help postest_zh"}{...}
{viewerjumpto "语法" "ereturn_zh##syntax"}{...}
{viewerjumpto "描述" "ereturn_zh##description"}{...}
{viewerjumpto "PDF文档链接" "ereturn_zh##linkspdf"}{...}
{viewerjumpto "选项" "ereturn_zh##options"}{...}
{viewerjumpto "示例" "ereturn_zh##examples"}{...}
{viewerjumpto "存储结果" "ereturn_zh##results"}
{help ereturn:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] ereturn} {hline 2}}发布估计结果{p_end}
{p2col:}({mansection P ereturn:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    设置由估计命令返回的宏

	{cmdab:eret:urn} {cmdab:loc:al} {it:name ...}{right:(参见 {manhelp macro P})  }


    设置由估计命令返回的标量

{p 8 16 2}{cmdab:eret:urn} {cmdab:sca:lar} {it:name} {cmd:=} {it:{help exp_zh}}


    设置由估计命令返回的矩阵

{p 8 16 2}{cmdab:eret:urn} {cmdab:mat:rix} {it:name} [{cmd:=}] {it:matname}
	[{cmd:,} {cmd:copy}]


    清除 e() 存储的结果

{p 8 16 2}{cmdab:eret:urn clear}


    列出 e() 存储的结果

{p 8 16 2}{cmdab:eret:urn} {cmdab:li:st} [{cmd:,} {cmd:all}]


    将系数向量和方差-协方差矩阵存储到 e()

{p 8 16 2}{cmdab:eret:urn post} [{it:b} [{it:V} [{it:Cns}]]]
[{it:{help ereturn##weight:weight}}]
[{cmd:,}
{cmdab:dep:name:(}{it:{help strings_zh:string}}{cmd:)} {cmdab:o:bs:(}{it:#}{cmd:)}
{cmdab:d:of:(}{it:#}{cmd:)} {cmdab:e:sample:(}{varname}{cmd:)}
{cmdab:prop:erties:(}{it:{help strings_zh:string}}{cmd:)}
{opt buildfv:info}
{opt findomitted}]


    更改系数向量和方差-协方差矩阵

{p 8 16 2}{cmdab:eret:urn repost} [{cmd:b =} {it:b}] [{cmd:V =} {it:V}]
[{cmd:Cns =} {it:Cns}]
[{it:{help ereturn##weight:weight}}]
[{cmd:,} {cmdab:e:sample:(}{varname}{cmd:)}
{cmdab:prop:erties:(}{it:{help strings_zh:string}}{cmd:)}
{opt buildfv:info}
{opt findomitted}
{cmdab:ren:ame}
{opt resize}]


    显示系数表

{p 8 16 2}{cmdab:eret:urn} {cmdab:di:splay} [{cmd:,}
{cmdab:ef:orm:(}{it:{help strings_zh:string}}{cmd:)} {cmdab:f:irst}
{cmd:neq(}{it:#}{cmd:)}
{cmdab:pl:us} {cmdab:l:evel:(}{it:#}{cmd:)}
{it:{help ereturn##display_options:display_options}}]


{pstd}
其中 {it:name} 是由估计程序返回的宏、标量或矩阵的名称； {it:matname} 是一个已存在的矩阵名称； {it:b} 是一个 1 x p 系数向量（矩阵）； {it:V} 是一个 p x p 协方差矩阵； {it:Cns} 是一个 c x (p+1) 约束矩阵。

{marker weight}{...}
{pstd}
{cmd:fweight}s、{cmd:aweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；参见 {help weight_zh}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:ereturn local}、{cmd:ereturn scalar} 和 {cmd:ereturn matrix} 设置由估计命令返回的 {hi:e()} 宏、标量和矩阵，其他于 {cmd:b}、{cmd:V} 和 {cmd:Cns}。参见 {manhelp return P}，以获取有关返回结果的更多讨论。

{pstd}
{cmd:ereturn clear} 清除 {hi:e()} 存储的结果。

{pstd}
{cmd:ereturn list} 列出存储在 {cmd:e()} 中的宏和标量的名称和值，以及上一个估计命令存储在 {cmd:e()} 中的矩阵的名称和大小。

{pstd}
{cmd:ereturn post} 清除所有现有的 e 类结果，并将系数向量 ({cmd:b})、方差-协方差矩阵 ({cmd:V}) 和约束矩阵 ({cmd:Cns}) 存储在 Stata 的系统区域中，使所有的后估计功能可用，这些功能在 {help postest_zh} 中描述。{cmd:b}、{cmd:V} 和 {cmd:Cns} 对于 {cmd:ereturn post} 是可选的；一些命令（例如 {help factor_zh}）没有 {cmd:b}、{cmd:V} 或 {cmd:Cns}，但会设置估计样本 {cmd:e(sample)} 和属性 {cmd:e(properties)}。您必须在设置其他 {cmd:e()} 宏、标量和矩阵之前使用 {cmd:ereturn} {cmd:post}。

{pstd}
{cmd:ereturn repost} 更改 {cmd:b}、{cmd:V} 或 {cmd:Cns} 矩阵（仅在发布其结果的估计命令之后允许使用 {cmd:ereturn post}）或更改声明的估计样本或 {cmd:e(properties)}。在 {cmd:post} 或 {cmd:repost} 之后，指定的矩阵不再存在；它们被移动到 Stata 的系统区域中。可以通过引用 {hi:e(b)}、{hi:e(V)} 和 {hi:e(Cns)} 来检索 Stata 系统区域中的结果 {cmd:b}、{cmd:V} 和 {cmd:Cns} 矩阵。{cmd:ereturn post} 和 {cmd:repost} 仅处理系数和方差-协方差矩阵，而 {cmd:ereturn matrix} 用于存储与估计命令相关的其他矩阵。

{pstd}
{cmd:ereturn display} 显示或重新显示先前使用 {cmd:ereturn post} 或 {cmd:repost} 发布的结果对应的系数表。

{pstd}
关于使用约束矩阵（上图语法图中的 {it:Cns}）发布结果的讨论，请参见 {manhelp makecns P}，但请在阅读本条目后再阅读。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P ereturnRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
在 {cmd:ereturn matrix} 中指定的 {cmd:copy} 指示应复制矩阵；即，原始矩阵应保留在原处。

{phang}
{cmd:all} 指定隐藏和历史存储结果与通常存储的结果一起列出。此选项鲜少使用。请参见 {mansection P returnRemarksandexamplesUsinghiddenandhistoricalstoredresults:{it:使用隐藏和历史存储结果}}以及 {mansection P returnRemarksandexamplesProgramminghiddenandhistoricalstoredresults:{it:编程隐藏和历史存储结果}}，以获取更多信息。这些部分是以 {cmd:return list} 的形式书写的，但那里所说的所有内容同样适用于 {cmd:ereturn list}。

{phang}
在 {cmd:ereturn post} 中指定的 {cmd:depname(}{it:{help strings_zh:string}}{cmd:)} 提供一个名称，应该是因变量的名称，但可以是任何名称；该名称被存储并在每次执行 {cmd:ereturn display} 时添加到输出中的适当位置。

{phang}
在 {cmd:ereturn post} 中指定的 {cmd:obs(}{it:#}{cmd:)} 提供执行估计所基于的观察数；该数字存储在 {hi:e(N)} 中。

{phang}
在 {cmd:ereturn post} 中指定的 {cmd:dof(}{it:#}{cmd:)} 提供与 t 和 F 统计相关的（分母）自由度，并存储在 {hi:e(df_r)} 中。此数字用于计算显著性水平和置信区间，通过 {cmd:ereturn display} 和随后的 {cmd:test} 命令对发布的结果进行操作。如果不指定此选项，则使用正常的 (Z) 和卡方统计。

{phang}
在 {cmd:ereturn post} 或 {cmd:ereturn repost} 中指定的 {cmd:esample(}{varname}{cmd:)} 提供指示参与估计的观察的 0/1 变量的名称。该变量从数据集中移除，但可用作 {hi:e(sample)}；参见 {findalias frsamp}。如果在 {cmd:ereturn post} 中没有指定 {cmd:esample()} 选项，则将其设置为全零（表示无估计样本）。有关 {cmd:marksample} 命令的详细信息，请参见 {manhelp mark P}，该命令可以帮助您创建 {it:varname}。

{phang}
在 {cmd:ereturn post} 或 {cmd:ereturn repost} 中指定的 {cmd:properties(}{it:{help strings_zh:string}}{cmd:)} 设置 {cmd:e(properties)} 宏。如果未指定 {cmd:properties()}，则默认将 {cmd:e(properties)} 设置为 {cmd:b V}。

{phang}
在 {cmd:ereturn post} 和 {cmd:ereturn repost} 中指定的 {opt buildfvinfo} 计算 postestimation 命令使用的 {cmd:H} 矩阵，{help contrast_zh}、{help margins_zh} 和 {help pwcompare_zh} 用于确定可估计函数。

{phang}
在 {cmd:ereturn post} 和 {cmd:ereturn repost} 中指定的 {opt findomitted} 将省略操作符 {cmd:o.} 添加到列名中对应于 {cmd:e(V)} 的零值对角元素的变量。这通常是不必要的，但在未在估计之前使用 {help _rmcoll_zh} 时非常有用。

{phang}
{cmd:rename} 仅在 {cmd:ereturn repost} 的 {cmd:b =} {it:b} 语法中允许，并使 Stata 使用来自指定 {it:b} 矩阵的名称作为 {cmd:b} 和 {cmd:V} 估计矩阵的标签。这些标签随后用于 {cmd:ereturn display} 所生成的输出。

{phang}
{cmd:resize} 仅在 {cmd:ereturn repost} 中允许，并指示 Stata 替换的 {cmd:b}、{cmd:V} 和 {cmd:Cns} 的元素数量与原始数量不同。此选项暗示 {cmd:rename}。

{phang}
在 {cmd:ereturn display} 中指定的 {cmd:eform(}{it:{help strings_zh:string}}{cmd:)} 表示输出系数的指数形式，并抑制常数的报告。 {it:string} 用于标记指数系数；参见 {manhelpi eform_option R}。

{phang}
{cmd:first} 请求 Stata 仅显示第一个方程，并使其看起来只估计了一个方程。

{phang}
{cmd:neq(}{it:#}{cmd:)} 请求 Stata 仅显示前 {it:#} 个方程，并使其看起来只估计了 {it:#} 个方程。

{phang}
{cmd:plus} 更改由 {cmd:ereturn display} 生成的底部分隔线，使其在变量名称和结果之间的分隔线位置具有 {hi:+} 符号。如果您打算向表中添加更多输出，这非常有用。

{phang}
{cmd:level(}{it:#}{cmd:)}, 是 {cmd:ereturn display} 的一个选项，指定估计参数的置信区间的置信水平，以百分比形式；参见 {manhelp level R}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci},
{opt nopv:alues},
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}, 和
{opt nolstretch}；
    参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}
请参阅 {manlink P ereturn} 以获取估计命令程序的一般 {mansection P ereturnRemarksandexamplesoutline_estcmd:outline} 以及 {cmd:ereturn post}、{cmd:repost} 和 {cmd:display} 的示例。在这样一个程序中，您可以使用类似以下内容存储 {hi:e()} 结果：

{tab}{it:...}
{phang2}{cmd:ereturn local depvar "`depname'"}{p_end}
{phang2}{cmd:ereturn scalar N = `nobs'}{p_end}
{phang2}{cmd:ereturn matrix lambda lam}{p_end}
{phang2}{cmd:ereturn local cmd "myestcmd"}{p_end}
{tab}{it:...}

{pstd}估计命令的用户将输入

{phang2}{cmd:. ereturn list}

{pstd}以查看估计命令返回的内容。

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress weight length displ}

{pstd}列出存储结果{p_end}
{phang2}{cmd:. ereturn list}

{pstd}访问单个 {cmd:e()} 结果{p_end}
{phang2}{cmd:. display "调整后的 R 平方为: `e(r2_a)'}{p_end}
{phang2}{cmd:. display "残差平方和为: `e(r22)'}{p_end}
{phang2}{cmd:. matrix list e(V)}{p_end}
{phang2}{cmd:. matrix list e(b)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ereturn} {cmd:post} 将以下内容存储在 {cmd:e()} 中：

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(df_r)}}自由度（如果指定）{p_end}

{p2col 5 16 20 2: 宏}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(properties)}}估计属性；通常为 {cmd:b V}{p_end}

{p2col 5 16 20 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
{cmd:ereturn} {cmd:repost} 将以下内容存储在 {cmd:e()} 中：

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 宏}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(properties)}}估计属性；通常为 {cmd:b V}{p_end}

{p2col 5 16 20 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
通过 {cmd:ereturn post}，所有先前存储的估计结果 -- {cmd:e()} 项 -- 被移除。
然而，{cmd:ereturn repost} 不会移除先前存储的估计结果。
{cmd:ereturn clear} 删除当前 {cmd:e()} 结果。
{p_end}


{pstd}
{cmd:ereturn} {cmd:display} 将以下内容存储在 {cmd:r()} 中：

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 标量}{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}

{p2col 5 16 20 2: 宏}{p_end}
{synopt:{cmd:r(label}{it:#}{cmd:)}}在第 {it:#} 个系数上的标签，例如 {cmd:(base)}、{cmd:(omitted)}、{cmd:(empty)} 或 {cmd:(constrained)}{p_end}
{synopt:{cmd:r(table)}}来自系数表的信息（见下文）{p_end}
{p2colreset}{...}


{pstd}
{cmd:r(table)} 为每个系数包含以下信息：

{synoptset 16 tabbed}{...}
{synopt:{cmd:b}}系数值{p_end}
{synopt:{cmd:se}}标准误差{p_end}
{synopt:{cmd:t/z}}系数的检验统计量{p_end}
{synopt:{cmd:pvalue}}{cmd:t/z} 的显著性水平{p_end}
{synopt:{cmd:ll}}置信区间的下限{p_end}
{synopt:{cmd:ul}}置信区间的上限{p_end}
{synopt:{cmd:df}}与系数相关的自由度{p_end}
{synopt:{cmd:crit}}与 {cmd:t/z} 相关的临界值{p_end}
{synopt:{cmd:eform}}指数化系数的指示符{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ereturn.sthlp>}