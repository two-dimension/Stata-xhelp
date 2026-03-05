{smcl}
{* *! version 1.0.10  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute nbreg" "mansection MI miimputenbreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute poisson" "help mi_impute_poisson_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "语法" "mi_impute_nbreg_zh##syntax"}{...}
{viewerjumpto "菜单" "mi_impute_nbreg_zh##menu"}{...}
{viewerjumpto "描述" "mi_impute_nbreg_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mi_impute_nbreg_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi_impute_nbreg_zh##options"}{...}
{viewerjumpto "示例" "mi_impute_nbreg_zh##example"}{...}
{viewerjumpto "存储结果" "mi_impute_nbreg_zh##results"}
{help mi_impute_nbreg:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[MI] mi impute nbreg} {hline 2}}使用负二项回归进行插补{p_end}
{p2col:}({mansection MI miimputenbreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmd:nbreg} 
{it:ivar} [{it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute nbreg##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}} {it:options}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{synopt: {opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:d:ispersion(}{opt m:ean}{cmd:)}}离散度的参数化；默认值{p_end}
{synopt :{cmdab:d:ispersion(}{opt c:onstant}{cmd:)}}所有观察的常数离散度{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数约束为 1{p_end}
{synopt: {opth cond:itional(if)}}执行条件插补{p_end}
{synopt: {opt boot:strap}}使用重抽样估计模型参数{p_end}

{syntab:最大化}
{synopt :{it:{help nbreg##nbreg_maximize:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:nbreg} 之前，您必须 {cmd:mi set} 您的数据；请参见 {manhelp mi_set MI:mi set}。{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:nbreg} 之前，您必须 {cmd:mi register} {it:ivar} 作为插补；请参见 {manhelp mi_set MI:mi set}。{p_end}
包含帮助 fvvarlist
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s，{cmd:iweight}s 和 {cmd:pweight}s 是允许的；请参见 {help weight_zh}。{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:nbreg} 使用负二项回归插补方法填补过分散的计数变量的缺失值。您可以通过指定 {cmd:by()} 选项对数据的不同子集执行单独的插补。您还可以考虑频率、重要性和抽样权重。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimputenbregRemarksandexamples:备注和示例}

        {mansection MI miimputenbregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:noconstant}; 参见 {manhelp estimation_options R:估计选项}。

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}; 参见 {manhelp mi_impute MI:mi impute}。

{phang}
{cmd:dispersion(mean}{c |}{cmd:constant)}; 参见 {manhelp nbreg R}。

{phang}
{opth "exposure(varname:varname_e)"},
{opt offset(varname_o)}; 
参见 {manhelp estimation_options R:估计选项}。

{phang}
包含帮助 mi_impute_uvopt_conditional.ihlp

{phang}
包含帮助 mi_impute_uvopt_bootstrap.ihlp

{dlgtab:报告}

{phang}
{cmd:dots}, {cmd:noisily}, {cmd:nolegend}; 参见 {manhelp mi_impute MI:mi impute}。 
{cmd:noisily} 指定从适用于观察数据的负二项回归输出中显示结果。
包含帮助 mi_impute_uvopt_nolegend.ihlp

{dlgtab:最大化}

{phang}
{it:{help nbreg##nbreg_maximize:maximize_options}}; 参见 {manhelp nbreg R}。
这些选项很少使用。

{dlgtab:高级}

{phang}
{cmd:force}; 参见 {manhelp mi_impute MI:mi impute}。

{pstd}
以下选项在 {opt mi impute} 中可用，但在对话框中未显示：

{phang}
{cmd:noupdate}; 参见 {manhelp noupdate_option MI:noupdate option}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}
{cmd:. webuse mheartpois}
{p_end}
{phang2}
{cmd:. misstable summarize}
{p_end}

{pstd}检查原始数据中 {cmd:npreg} 的过分散{p_end}
{phang2}
{cmd:. nbreg npreg attack smokes age bmi hsgrad if female==1, nolog}
{p_end}

{pstd}声明数据并注册 {cmd:npreg} 为插补{p_end}
{phang2}
{cmd:. mi set mlong}
{p_end}
{phang2}
{cmd:. mi register imputed npreg}
{p_end}

{pstd}
基于 {cmd:female} 条件插补计数变量 {cmd:npreg}{p_end}
{phang2}
{cmd:. mi impute nbreg npreg attack smokes age bmi hsgrad, add(10) conditional(if female==1)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute nbreg} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补的总数{p_end}
{synopt:{cmd:r(M_add)}}添加的插补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的插补数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量（始终为 {cmd:1}）{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称 ({cmd:nbreg}){p_end}
{synopt:{cmd:r(ivars)}}插补变量的名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}插补样本中的观察数量在每组中的数量{p_end}
{synopt:{cmd:r(N_complete)}}插补样本中的完整观察数量在每组中的数量{p_end}
{synopt:{cmd:r(N_incomplete)}}插补样本中的不完整观察数量在每组中的数量{p_end}
{synopt:{cmd:r(N_imputed)}}插补样本中的插补观察数量在每组中的数量{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_nbreg.sthlp>}