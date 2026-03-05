{smcl}
{* *! version 1.0.12  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute intreg" "mansection MI miimputeintreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute pmm" "help mi_impute_pmm_zh"}{...}
{vieweralsosee "[MI] mi impute regress" "help mi_impute_regress_zh"}{...}
{vieweralsosee "[MI] mi impute truncreg" "help mi_impute_truncreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_intreg_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_intreg_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_intreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_intreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_intreg_zh##options"}{...}
{viewerjumpto "Remarks" "mi_impute_intreg_zh##remarks"}{...}
{viewerjumpto "Example" "mi_impute_intreg_zh##example"}{...}
{viewerjumpto "Stored results" "mi_impute_intreg_zh##results"}
{help mi_impute_intreg:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[MI] mi impute intreg} {hline 2}}使用区间回归进行插补{p_end}
{p2col:}({mansection MI miimputeintreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:intreg} 
{it:{help newvarname:newivar}} [{it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute intreg##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}} {it:options}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt: {opt nocons:tant}}抑制常数项{p_end}
{p2coldent:* {opth ll(varname)}}区间截断的下限{p_end}
{p2coldent:* {opth ul(varname)}}区间截断的上限{p_end}
{synopt:{opth off:set(varname)}}在模型中包含 {it:varname}，其系数约束为 1{p_end}
{synopt: {opth cond:itional(if)}}执行条件插补{p_end}
{synopt: {opt boot:strap}}使用有放回抽样估计模型参数{p_end}

{syntab:最大化}
{synopt :{it:{help intreg##maximize_options:maximize_options}}}控制
最大化过程；很少使用{p_end}
{synoptline}
{p 4 6 2}
* {cmd:ll()} 和 {cmd:ul()} 是必须的。
{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:intreg} 之前，必须 {cmd:mi set} 数据；请参见 {manhelp mi_set MI:mi set}.{p_end}
包含帮助 fvvarlist
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:aweight}s、{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s；见 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:intreg} 使用区间回归插补方法填补连续部分观测（被截断）变量的缺失值。您可以使用 {cmd:by()} 选项对数据的不同子集执行单独的插补。还可以考虑分析权重、频率权重、重要性权重和抽样权重。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimputeintregRemarksandexamples:备注和示例}

        {mansection MI miimputeintregMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt noconstant}; 见 {manhelp estimation_options R: 估计选项}。

{phang}
{opth ll(varname)} 和 {opt ul(varname)} 指定包含区间截断下限和上限的变量。必须同时指定这两个变量。具有相同值的不缺失观测在 {opt ll()} 和 {opt ul()} 中都是完全观测的，而在这两个变量中缺失的观测是未观测（缺失的），其余观测则是部分观测（被截断）。当 {opt ll()} 包含缺失值时，部分观测案例被称为左截断；当 {opt ul()} 包含缺失值时，被称为右截断；当 {opt ll()} < {opt ul()} 时，被称为区间截断。完全观测的案例也称为点数据；还请参阅 {mansection R intregDescription:{it:描述}} 中的 {manhelp intreg R}。除了 {it:newivar}，{cmd:mi} {cmd:impute} {cmd:intreg} 还填补在 {cmd:ll()} 和 {cmd:ul()} 中提供的未观测（缺失）值；被截断的值保持不变。

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}; 见 {manhelp mi_impute MI:mi impute}。

{phang}
{opth offset(varname)}；见 {helpb estimation options:[R] 估计选项}。

{phang}
包含帮助 mi_impute_uvopt_conditional.ihlp

{phang}
包含帮助 mi_impute_uvopt_bootstrap.ihlp

{dlgtab:报告}

{phang}
{cmd:dots}、{cmd:noisily}、{cmd:nolegend}; 见 {manhelp mi_impute MI:mi impute}。
{cmd:noisily} 指定显示对观察数据进行的区间回归拟合的输出。
包含帮助 mi_impute_uvopt_nolegend.ihlp

{dlgtab:最大化}

{phang}
{it:{help intreg##maximize_options:maximize_options}}; 见 {manhelp intreg R}。
这些选项很少使用。

{dlgtab:高级}

{phang}
{cmd:force}; 见 {manhelp mi_impute MI:mi impute}。

{pstd}
以下选项可在 {opt mi impute} 中使用，但在对话框中未显示：

{phang}
{cmd:noupdate}; 见 {manhelp noupdate_option MI:noupdate option}。


{marker remarks}{...}
{title:备注}

{pstd}
我们建议您首先阅读 {mansection MI miimputeintregRemarksandexamplesUnivariateimputationusingintervalregression:{it:使用区间回归的单变量插补}}中的 {it:备注和示例}，以获得关于区间截断数据插补的一般介绍。

{pstd}
{opt mi impute intreg} 要求在 {opt ll()} 和 {opt ul()} 选项中指定包含区间截断限制的变量；请参见 {it:{help mi_impute_intreg##options:选项}} 中 {opt ll()} 和 {opt ul()} 的描述。{cmd:mi impute intreg} 还要求您指定一个新的变量名 {it:newivar} 来存储结果插补值。{cmd:mi impute intreg} 会创建一个新变量 {it:newivar} 并将其注册为已插补。

{pstd}
{it:newivar} 的值由 {opt ll()} 和 {opt ul()} 决定。对于 {opt ll()} 和 {opt ul()} 不同或都包含软缺失的 {it:newivar} 的观测，将设置为软缺失 ({opt .}) 并被认为是不完整的。对于任一 {opt ll()} 或 {opt ul()} 包含硬缺失的观测，将设置为扩展缺失值 {opt .a}，并按照惯例在插补中被省略。其余观测对应于观察到的点数据，是完整的。

{pstd}
插补后，{opt mi impute intreg} 将插补值存储在 {it:newivar} 中。如果 {opt ll()} 和 {cmd:ul()} 中的变量尚未注册为被动变量，则还会将其注册为被动变量（见 {helpb mi register}），并用相应的插补值替换 {opt ll()} 和 {cmd:ul()} 同时包含软缺失的观测。也就是说，只有这些变量中的缺失数据会被替换；被截断的数据不会被更改。

{pstd}
之后，您可以决定添加更多的插补或修改插补模型，并用新的插补替换现有的插补。在这种情况下，您无需提供新的变量名。您可以重新使用之前由 {cmd:mi impute intreg} 创建的变量名。{cmd:mi impute intreg} 将检查该变量是否已注册为插补，并且在观测数据中与 {cmd:ll()} 和 {cmd:ul()} 中提供的变量一致。也就是说，该变量在 {cmd:ll()} 和 {cmd:ul()} 相等的观测中必须具有与 {cmd:ll()} 和 {cmd:ul()} 相同的值，而在其余观测中必须具有软缺失值。如果 {cmd:ll()} 或 {cmd:ul()} 包含硬缺失值，该变量在相应的观测中也必须包含硬缺失值。

{pstd}
有关更多详细信息，请参见 {mansection MI miimputeintregRemarksandexamplesUsingmiimputeintreg:{it:使用 mi impute intreg}} 中的 {it:备注和示例}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}
{cmd:. webuse mheartintreg}
{p_end}

{pstd}声明数据{p_end}
{phang2}
{cmd:. mi set mlong}
{p_end}

{pstd}
使用区间回归插补 BMI 值，这些值记录在 {cmd:lbmi} 和 {cmd:ubmi} 变量中{p_end}
{phang2}
{cmd:. mi impute intreg newbmi attack smokes age female hsgrad, add(20) ll(lbmi) ul(ubmi)}
{p_end}

{pstd}描述结果 {cmd:mi} 数据{p_end}
{phang2}
{cmd:. mi describe}
{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:mi impute intreg} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补的总次数{p_end}
{synopt:{cmd:r(M_add)}}添加的插补次数{p_end}
{synopt:{cmd:r(M_update)}}更新的插补次数{p_end}
{synopt:{cmd:r(N_miss)}}缺失观察的数量{p_end}
{synopt:{cmd:r(N_cens)}}被截断观察的数量{p_end}
{synopt:{cmd:r(N_lcens)}}左截断观察的数量{p_end}
{synopt:{cmd:r(N_rcens)}}右截断观察的数量{p_end}
{synopt:{cmd:r(N_intcens)}}区间截断观察的数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量（始终为 {cmd:1}）{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称 ({cmd:intreg}){p_end}
{synopt:{cmd:r(ivars)}}插补变量的名称{p_end}
{synopt:{cmd:r(llname)}}包含下区间截断限制的变量名称{p_end}
{synopt:{cmd:r(ulname)}}包含上区间截断限制的变量名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}每组插补样本中的观测数量{p_end}
{synopt:{cmd:r(N_complete)}}每组插补样本中的完整观测数量{p_end}
{synopt:{cmd:r(N_incomplete)}}每组插补样本中的不完整观测数量{p_end}
{synopt:{cmd:r(N_imputed)}}每组插补样本中的插补观测数量{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_intreg.sthlp>}