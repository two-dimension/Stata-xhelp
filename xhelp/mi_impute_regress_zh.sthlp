{smcl}
{* *! version 1.0.22  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute regress" "mansection MI miimputeregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] 介绍" "help mi_zh"}{...}
{vieweralsosee "[MI] 介绍实质性话题" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute intreg" "help mi_impute_intreg_zh"}{...}
{vieweralsosee "[MI] mi impute pmm" "help mi_impute_pmm_zh"}{...}
{vieweralsosee "[MI] mi impute truncreg" "help mi_impute_truncreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "语法" "mi_impute_regress_zh##syntax"}{...}
{viewerjumpto "菜单" "mi_impute_regress_zh##menu"}{...}
{viewerjumpto "描述" "mi_impute_regress_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "mi_impute_regress_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi_impute_regress_zh##options"}{...}
{viewerjumpto "示例" "mi_impute_regress_zh##examples"}{...}
{viewerjumpto "视频示例" "mi_impute_regress_zh##video"}{...}
{viewerjumpto "存储结果" "mi_impute_regress_zh##results"}
{help mi_impute_regress:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[MI] mi impute regress} {hline 2}}使用线性回归进行插补{p_end}
{p2col:}({mansection MI miimputeregress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:reg:ress} 
{it:ivar} [{it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute regress##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}} {it:options}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt: {opt nocons:tant}}抑制常数项{p_end}
{synopt: {opth cond:itional(if)}}执行条件插补{p_end}
{synopt: {opt boot:strap}}使用带替换的抽样估计模型参数{p_end}
{synoptline}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:regress}之前，必须 {cmd:mi set} 数据；请参阅 {manhelp mi_set MI:mi set}.{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:regress} 之前，必须将 {it:ivar} 注册为插补；请参阅 {manhelp mi_set MI:mi set}.{p_end}
包括 help fvvarlist
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s, {cmd:fweight}s, {cmd:iweight}s 和 {cmd:pweight}s 被允许；请参阅 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:regress} 使用高斯正态回归插补方法填充连续变量的缺失值。您可以通过指定 {cmd:by()} 选项在数据的不同子集上执行单独的插补。您还可以考虑分析、频率、重要性和抽样权重。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection MI miimputeregressRemarksandexamples:备注和示例}

        {mansection MI miimputeregressMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt noconstant}; 请参阅 {manhelp estimation_options R: 估计选项}。

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}; 请参阅 {manhelp mi_impute MI:mi impute}。

{phang}
包括 help mi_impute_uvopt_conditional.ihlp

{phang}
包括 help mi_impute_uvopt_bootstrap.ihlp

{dlgtab:报告}

{phang}
{cmd:dots}, {cmd:noisily}, {cmd:nolegend}; 请参阅 {manhelp mi_impute MI:mi impute}。
{cmd:noisily} 指定在观察数据上拟合的线性回归的输出应显示。
包括 help mi_impute_uvopt_nolegend.ihlp

{dlgtab:高级}

{phang}
{cmd:force}; 请参阅 {manhelp mi_impute MI:mi impute}。

{pstd}
以下选项在 {opt mi impute} 中可用，但未在对话框中显示：

{phang}
{cmd:noupdate}; 请参阅 {manhelp noupdate_option MI:noupdate option}。


{marker examples}{...}
{title:示例}

{pstd}
设置
{p_end}
{phang2}
{cmd:. webuse mheart1s0}
{p_end}

{pstd}描述 {cmd:mi} 数据{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}
使用线性回归插补 {cmd:bmi}
{p_end}
{phang2}
{cmd:. mi impute regress bmi attack smokes age female hsgrad, add(20)}
{p_end}

{pstd}
分别对男性和女性进行 {cmd:bmi} 插补
{p_end}
{phang2}
{cmd:. mi impute regress bmi age attack smokes age hsgrad, replace by(female)}
{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=i6SOlq0mjuc":多重插补：设置、插补、估计 -- 回归插补}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute regress} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补的总数{p_end}
{synopt:{cmd:r(M_add)}}添加的插补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的插补数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量（始终为 {cmd:1}）{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量（如果未指定 {cmd:by()}，则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称 ({cmd:regress}){p_end}
{synopt:{cmd:r(ivars)}}插补变量的名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}插补样本中每组的观察值数量{p_end}
{synopt:{cmd:r(N_complete)}}插补样本中每组的完整观察值数量{p_end}
{synopt:{cmd:r(N_incomplete)}}插补样本中每组的不完整观察值数量{p_end}
{synopt:{cmd:r(N_imputed)}}插补样本中每组的插补观察值数量{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_regress.sthlp>}