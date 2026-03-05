{smcl}
{* *! version 1.0.11  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute poisson" "mansection MI miimputepoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute nbreg" "help mi_impute_nbreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_poisson_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_poisson_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_poisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_poisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_poisson_zh##options"}{...}
{viewerjumpto "Example" "mi_impute_poisson_zh##example"}{...}
{viewerjumpto "Stored results" "mi_impute_poisson_zh##results"}
{help mi_impute_poisson:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[MI] mi impute poisson} {hline 2}}使用 Poisson 回归进行插补{p_end}
{p2col:}({mansection MI miimputepoisson:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmd:poisson} 
{it:ivar} [{it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute poisson##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}} {it:options}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt: {opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数约束为 1{p_end}
{synopt: {opth cond:itional(if)}}执行条件插补{p_end}
{synopt: {opt boot:strap}}使用替换抽样估计模型参数{p_end}

{syntab:极大化}
{synopt :{it:{help poisson##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:poisson} 之前，您必须先 {cmd:mi set} 数据；请参阅 {manhelp mi_set MI:mi set}.{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:poisson} 之前，您必须将 {it:ivar} 注册为插补；请参阅 {manhelp mi_set MI:mi set}.{p_end}
包含帮助 fvvarlist
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s；请参阅 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:poisson} 使用 Poisson 回归插补方法填补计数变量的缺失值。您可以通过指定 {cmd:by()} 选项在数据的不同子集上执行单独的插补。您还可以考虑频率、重要性和抽样权重。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimputepoissonRemarksandexamples:备注和示例}

        {mansection MI miimputepoissonMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:noconstant}; 请参阅 {manhelp estimation_options R:估计选项}。

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}; 请参阅 {manhelp mi_impute MI:mi impute}。

{phang}
{opth "exposure(varname:varname_e)"},
{opt offset(varname_o)}; 
请参阅 {manhelp estimation_options R:估计选项}。

{phang}
包含帮助 mi_impute_uvopt_conditional.ihlp

{phang}
包含帮助 mi_impute_uvopt_bootstrap.ihlp

{dlgtab:报告}

{phang}
{cmd:dots}, {cmd:noisily}, {cmd:nolegend}; 请参阅 {manhelp mi_impute MI:mi impute}。 
{cmd:noisily} 指定显示拟合到观察数据的 Poisson 回归的输出。
包含帮助 mi_impute_uvopt_nolegend.ihlp

{dlgtab:极大化}

{phang}
{it:{help poisson##maximize_options:maximize_options}}; 请参阅 {manhelp poisson R}。
这些选项很少使用。

{dlgtab:高级}

{phang}
{cmd:force}; 请参阅 {manhelp mi_impute MI:mi impute}。

{pstd}
与 {opt mi impute} 一起可用的以下选项未在对话框中显示：

{phang}
{cmd:noupdate}; 请参阅 {manhelp noupdate_option MI:noupdate option}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}
{cmd:. webuse mheartpois}
{p_end}
{phang2}
{cmd:. misstable summarize}
{p_end}

{pstd}声明数据并注册 {cmd:npreg} 为插补{p_end}
{phang2}
{cmd:. mi set mlong}
{p_end}
{phang2}
{cmd:. mi register imputed npreg}
{p_end}

{pstd}
对 {cmd:npreg} 进行条件插补，条件为 {cmd:female}{p_end}
{phang2}
{cmd:. mi impute poisson npreg attack smokes age bmi hsgrad, add(10) conditional(if female==1)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute poisson} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}总插补次数{p_end}
{synopt:{cmd:r(M_add)}}新增插补次数{p_end}
{synopt:{cmd:r(M_update)}}更新的插补次数{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量（始终为 {cmd:1}）{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量（若未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称 ({cmd:poisson}){p_end}
{synopt:{cmd:r(ivars)}}插补变量的名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量的名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}每组插补样本中的观察数量{p_end}
{synopt:{cmd:r(N_complete)}}每组插补样本中的完整观察数量{p_end}
{synopt:{cmd:r(N_incomplete)}}每组插补样本中的不完整观察数量{p_end}
{synopt:{cmd:r(N_imputed)}}每组插补样本中的插补观察数量{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_poisson.sthlp>}