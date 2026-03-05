{smcl}
{* *! version 1.0.20  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute mlogit" "mansection MI miimputemlogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute ologit" "help mi_impute_ologit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_mlogit_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_mlogit_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_mlogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_mlogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_mlogit_zh##options"}{...}
{viewerjumpto "Example" "mi_impute_mlogit_zh##example"}{...}
{viewerjumpto "Stored results" "mi_impute_mlogit_zh##results"}
{help mi_impute_mlogit:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[MI] mi impute mlogit} {hline 2}}使用多项式逻辑回归进行缺失值填补{p_end}
{p2col:}({mansection MI miimputemlogit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:mlog:it} 
{it:ivar} [{it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute mlogit##weight:权重}}]
[{cmd:,} {it:{help mi_impute##impopts:填补选项}} {it:选项}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{synopt: {opt nocons:tant}}抑制常数项{p_end}
{synopt: {opt b:aseoutcome(#)}}指定作为基本结果的 {it:ivar} 的值{p_end}
{synopt: {opt aug:ment}}在完美预测的情况下进行增广回归{p_end}
{synopt: {opth cond:itional(if)}}执行条件填补{p_end}
{synopt: {opt boot:strap}}使用替代抽样估计模型参数{p_end}

{syntab:最大化}
{synopt :{it:{help mi_impute_mlogit##maximize_options:最大化选项}}}控制 
最大化过程；很少使用{p_end}
{synoptline}
{p 4 6 2}
您必须在使用 {cmd:mi} {cmd:impute} {cmd:mlogit} 之前 {cmd:mi set} 数据；
请参见 {manhelp mi_set MI:mi set}.{p_end}
{p 4 6 2}
您必须在使用 {cmd:mi} {cmd:impute} {cmd:mlogit} 之前将 {it:ivar} 注册为填补；
请参见 {manhelp mi_set MI:mi set}.{p_end}
包含帮助 fvvarlist
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 被允许；请参见 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重填补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:mlogit} 使用多项式（多类）逻辑回归填补名义变量的缺失值。 通过指定 {cmd:by()} 选项，可以对数据的不同子集执行单独的填补。 您还可以考虑频率、重要性和抽样权重。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimputemlogitRemarksandexamples:备注和示例}

        {mansection MI miimputemlogitMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:noconstant}；请参见 {manhelp estimation_options R:估计选项}。

{phang}
{cmd:add()}、{cmd:replace}、{cmd:rseed()}、{cmd:double}、{cmd:by()}；请参见
{manhelp mi_impute MI:mi impute}。

{phang}
{opt baseoutcome(#)} 指定要视为基本结果的 {it:ivar} 的值。 默认情况下，选择最频繁的结果。

{phang}
包含帮助 mi_impute_uvopt_augment.ihlp

{phang}
包含帮助 mi_impute_uvopt_conditional.ihlp

{phang}
包含帮助 mi_impute_uvopt_bootstrap.ihlp

{dlgtab:报告}

{phang}
{cmd:dots}、{cmd:noisily}、{cmd:nolegend}；请参见 {manhelp mi_impute MI:mi impute}。 
{cmd:noisily} 指定显示对观察数据进行的多项式逻辑回归拟合的输出。
包含帮助 mi_impute_uvopt_nolegend.ihlp

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:{help mlogit##maximize_options:最大化选项}}；请参见 {manhelp mlogit R}。
这些选项很少使用。
在使用 {cmd:augment} 选项时，{cmd:difficult}、{cmd:technique()}、{cmd:gradient}、{cmd:showstep}、{cmd:hessian} 和 {cmd:showtolerance} 不被允许。

{dlgtab:高级}

{phang}
{cmd:force}；请参见 {manhelp mi_impute MI:mi impute}。

{pstd}
以下选项可与 {opt mi impute} 一起使用，但未在对话框中显示：

{phang}
{cmd:noupdate}；请参见 {manhelp noupdate_option MI:noupdate 选项}。


{marker example}{...}
{title:示例}

{pstd}
设置
{p_end}
{phang2}
{cmd:. webuse mheart3}
{p_end}
{phang2}
{cmd:. tabulate marstatus, missing}
{p_end}

{p 6 6 2}声明数据并将 {cmd:marstatus} 注册为填补{p_end}
{phang2}
{cmd:. mi set mlong}
{p_end}
{phang2}
{cmd:. mi register imputed marstatus}
{p_end}

{pstd}
使用多项式逻辑回归填补 {cmd:marstatus} （婚姻状态）{p_end}
{phang2}
{cmd:. mi impute mlogit marstatus attack smokes age bmi female hsgrad, add(10)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute mlogit} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}填补总数{p_end}
{synopt:{cmd:r(M_add)}}添加的填补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的填补数量{p_end}
{synopt:{cmd:r(k_ivars)}}填补的变量数量（始终为 {cmd:1}）{p_end}
{synopt:{cmd:r(pp)}}如果检测到完美预测则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(N_g)}}填补群体数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}填补方法名称 ({cmd:mlogit}){p_end}
{synopt:{cmd:r(ivars)}}填补变量名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 内指定的变量名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}每个组中填补样本中的观察数量{p_end}
{synopt:{cmd:r(N_complete)}}每个组中填补样本中的完整观察数量{p_end}
{synopt:{cmd:r(N_incomplete)}}每个组中填补样本中的不完整观察数量{p_end}
{synopt:{cmd:r(N_imputed)}}每个组中填补样本中的填补观察数量{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_mlogit.sthlp>}