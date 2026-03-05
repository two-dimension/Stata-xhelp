{smcl}
{* *! version 1.0.22  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute logit" "mansection MI miimputelogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_logit_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_logit_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_logit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_logit_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_logit_zh##options"}{...}
{viewerjumpto "Example" "mi_impute_logit_zh##example"}{...}
{viewerjumpto "Video example" "mi_impute_logit_zh##video"}{...}
{viewerjumpto "Stored results" "mi_impute_logit_zh##results"}
{help mi_impute_logit:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[MI] mi impute logit} {hline 2}}使用逻辑回归进行插补{p_end}
{p2col:}({mansection MI miimputelogit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:logi:t} 
{it:ivar} [{it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute logit##weight:权重}}]
[{cmd:,} {it:{help mi_impute##impopts:插补选项}} {it:选项}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要选项}
{synopt: {opt nocons:tant}}抑制常数项{p_end}
{synopt: {opth off:set(varname)}}将 {it:varname} 包括在模型中，并将系数约束为 1{p_end}
{synopt: {opt aug:ment}}在存在完美预测的情况下执行增广回归{p_end}
{synopt: {opth cond:itional(if)}}执行条件插补{p_end}
{synopt: {opt boot:strap}}使用有放回的抽样估计模型参数{p_end}

{syntab:最大化选项}
{synopt :{it:{help mi_impute_logit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p 4 6 2}
您必须在使用 {cmd:mi} {cmd:impute} {cmd:logit} 之前 {cmd:mi set} 数据；
请参见 {manhelp mi_set MI:mi set}。{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:logit} 之前，您必须将 {it:ivar} 注册为插补；
请参见 {manhelp mi_set MI:mi set}。{p_end}
包括帮助 fvvarlist
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s 是
允许的；见 {help weight_zh}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:logit} 使用逻辑回归插补方法填补二元变量的缺失值。您可以通过指定 {cmd:by()} 选项在数据的不同子集上执行独立插补。您还可以考虑频率、重要性和抽样权重。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimputelogitRemarksandexamples:备注和示例}

        {mansection MI miimputelogitMethodsandformulas:方法和公式}

{pstd}
上述章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要选项}

{phang}
{cmd:noconstant}; 见 {manhelp estimation_options R:估计选项}。

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}; 见
{manhelp mi_impute MI:mi impute}。

{phang}
{opth offset(varname)}; 见 {manhelp estimation_options R:估计选项}。

{phang}
包括帮助 mi_impute_uvopt_augment.ihlp

{phang}
包括帮助 mi_impute_uvopt_conditional.ihlp

{phang}
包括帮助 mi_impute_uvopt_bootstrap.ihlp

{dlgtab:报告选项}

{phang}
{cmd:dots}, {cmd:noisily}, {cmd:nolegend}; 见 {manhelp mi_impute MI:mi impute}。
{cmd:noisily} 指定将显示拟合到观测数据的逻辑回归输出。
包括帮助 mi_impute_uvopt_nolegend.ihlp

{marker maximize_options}{...}
{dlgtab:最大化选项}

{phang}
{it:{help logit##maximize_options:最大化选项}}; 见 {manhelp logit R}。
这些选项很少使用。
{cmd:difficult}, {cmd:technique()}, {cmd:gradient}, {cmd:showstep},
{cmd:hessian}, 和 {cmd:showtolerance} 在使用 {cmd:augment} 选项时不可用。

{dlgtab:高级选项}

{phang}
{cmd:force}; 见 {manhelp mi_impute MI:mi impute}。

{pstd}
以下选项适用于 {opt mi impute} 但未显示在对话框中：

{phang}
{cmd:noupdate}; 见 {manhelp noupdate_option MI:noupdate 选项}。


{marker example}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse mheart2}
{p_end}

{pstd}
声明数据并将 {cmd:hsgrad} 注册为插补{p_end}
{phang2}
{cmd:. mi set mlong}
{p_end}
{phang2}
{cmd:. mi register imputed hsgrad}
{p_end}

{pstd}
使用逻辑回归插补 {cmd:hsgrad}
{p_end}
{phang2}
{cmd:. mi impute logit hsgrad attack smokes age bmi female, add(10)}
{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=QVvTpPx2LyU":多重插补：设置、插补、估计 -- 逻辑回归}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute logit} 在 {cmd:r()} 中存储以下信息：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补的总数{p_end}
{synopt:{cmd:r(M_add)}}增加的插补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的插补数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量（始终为 {cmd:1}）{p_end}
{synopt:{cmd:r(pp)}}如果检测到完美预测，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称 ({cmd:logit}){p_end}
{synopt:{cmd:r(ivars)}}插补变量的名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}每组插补样本中的观察数量{p_end}
{synopt:{cmd:r(N_complete)}}每组插补样本中的完整观察数量{p_end}
{synopt:{cmd:r(N_incomplete)}}每组插补样本中的不完整观察数量{p_end}
{synopt:{cmd:r(N_imputed)}}每组插补样本中的插补观察数量{p_end}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_logit.sthlp>}