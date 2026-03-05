{smcl}
{* *! version 1.0.13  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute truncreg" "mansection MI miimputetruncreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute intreg" "help mi_impute_intreg_zh"}{...}
{vieweralsosee "[MI] mi impute pmm" "help mi_impute_pmm_zh"}{...}
{vieweralsosee "[MI] mi impute regress" "help mi_impute_regress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_truncreg_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_truncreg_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_truncreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_truncreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_truncreg_zh##options"}{...}
{viewerjumpto "Example" "mi_impute_truncreg_zh##example"}{...}
{viewerjumpto "Stored results" "mi_impute_truncreg_zh##results"}
{help mi_impute_truncreg:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[MI] mi impute truncreg} {hline 2}}使用截断回归进行插补{p_end}
{p2col:}({mansection MI miimputetruncreg:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:truncreg} 
{it:ivar} [{it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute truncreg##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}} {it:options}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt: {opt nocons:tant}}抑制常数项{p_end}
{synopt:{cmd:ll(}{varname}|{it:#}{cmd:)}}左截断的下限
{p_end}
{synopt:{cmd:ul(}{varname}|{it:#}{cmd:)}}右截断的上限
{p_end}
{synopt:{opth off:set(varname:varname_o)}}将 {it:varname} 包含在模型中，其系数固定为1{p_end}
{synopt: {opth cond:itional(if)}}进行条件插补{p_end}
{synopt: {opt boot:strap}}使用带替换抽样估计模型参数{p_end}

{syntab:最大化}
{synopt :{it:{help truncreg##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}
{synoptline}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:truncreg} 之前，必须 {cmd:mi set} 数据；详见 {manhelp mi_set MI:mi set}.{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:truncreg} 之前，必须将 {it:ivar} 注册为插补变量；详见 {manhelp mi_set MI:mi set}.{p_end}
包括帮助 fvvarlist
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:aweight}s, {cmd:fweight}s, {cmd:iweight}s 和 {cmd:pweight}s；详见 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:truncreg} 使用截断回归插补方法填充连续变量的缺失值，该变量具有受限的范围。可以通过指定 {cmd:by()} 选项对数据的不同子集执行单独的插补。还可以考虑分析性、频率、重要性和抽样权重。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miimputetruncregRemarksandexamples:备注和示例}

        {mansection MI miimputetruncregMethodsandformulas:方法和公式}

{pstd}
以上章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt noconstant}; 详见 {manhelp estimation_options R: 估计选项}。

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}; 详见 {manhelp mi_impute MI:mi impute}。

{phang}
{cmd:ll(}{varname}|{it:#}{cmd:)} 和
{opt ul(varname|#)} 分别指示截断的下限和上限。可以指定一个或两个。
满足 {it:ivar} {ul:<} {opt ll()} 的观察值是左截断的，
满足 {it:ivar} {ul:>} {opt ul()} 的观察值是右截断的，
其余观察值不进行截断。

{phang}
{opth offset:(varname:varname_o)}; 详见
{help estimation_options_zh:[R] 估计选项}。

{phang}
包括帮助 mi_impute_uvopt_conditional.ihlp

{phang}
包括帮助 mi_impute_uvopt_bootstrap.ihlp

{dlgtab:报告}

{phang}
{cmd:dots}, {cmd:noisily}, {cmd:nolegend}; 详见 {manhelp mi_impute MI:mi impute}。
{cmd:noisily} 指定显示拟合到观测数据的截断回归输出。
包括帮助 mi_impute_uvopt_nolegend.ihlp

{dlgtab:最大化}

{phang}
{it:{help truncreg##maximize_options:maximize_options}}; 详见 {manhelp truncreg R}。
这些选项很少使用。

{dlgtab:高级}

{phang}
{cmd:force}; 详见 {manhelp mi_impute MI:mi impute}。

{pstd}
以下选项在 {opt mi impute} 中可用，但在对话框中未显示：

{phang}
{cmd:noupdate}; 详见 {manhelp noupdate_option MI:noupdate option}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}
{cmd:. webuse mheart1s0}
{p_end}

{pstd}描述 {cmd:mi} 数据{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}
从在 [17, 39] 截断的正态分布中插补 {cmd:bmi}{p_end}
{phang2}
{cmd:. mi impute truncreg bmi attack smokes age female hsgrad, add(20) ll(17) ul(39)}
{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:mi impute truncreg} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补的总数{p_end}
{synopt:{cmd:r(M_add)}}增加的插补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的插补数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量（始终为 {cmd:1}）{p_end}
{synopt:{cmd:r(N_trunc)}}截断观察的数量{p_end}
{synopt:{cmd:r(N_ltrunc)}}左截断观察的数量{p_end}
{synopt:{cmd:r(N_rtrunc)}}右截断观察的数量{p_end}
{synopt:{cmd:r(ll)}}下截断限（如果指定了 {opt ll(#)}）{p_end}
{synopt:{cmd:r(ul)}}上截断限（如果指定了 {opt ll(#)}）{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称 ({cmd:truncreg}){p_end}
{synopt:{cmd:r(ivars)}}插补变量的名称{p_end}
{synopt:{cmd:r(llopt)}}{cmd:ll()} 的内容（如果指定）{p_end}
{synopt:{cmd:r(ulopt)}}{cmd:ul()} 的内容（如果指定）{p_end}
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
{center:翻译自Stata官方帮助文档 <mi_impute_truncreg.sthlp>}