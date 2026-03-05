{smcl}
{* *! version 1.0.20  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute ologit" "mansection MI miimputeologit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute mlogit" "help mi_impute_mlogit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_ologit_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_ologit_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_ologit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_ologit_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_ologit_zh##options"}{...}
{viewerjumpto "Example" "mi_impute_ologit_zh##example"}{...}
{viewerjumpto "Stored results" "mi_impute_ologit_zh##results"}
{help mi_impute_ologit:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[MI] mi impute ologit} {hline 2}}使用有序逻辑回归进行插补{p_end}
{p2col:}({mansection MI miimputeologit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:olog:it} 
{it:ivar} [{it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute ologit##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}} {it:options}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt: {opth off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为1{p_end}
{synopt: {opt aug:ment}}在存在完美预测的情况下执行增强回归{p_end}
{synopt: {opth cond:itional(if)}}执行条件插补{p_end}
{synopt: {opt boot:strap}}使用带替换抽样估计模型参数{p_end}

{syntab:最大化}
{synopt :{it:{help mi_impute_ologit##maximize_options:maximize_options}}}控制 
最大化过程；很少使用{p_end}
{synoptline}
{p 4 6 2}
您必须在使用 {cmd:mi} {cmd:impute}
{cmd:ologit} 之前 {cmd:mi set} 您的数据；请参见 {manhelp mi_set MI:mi set}.{p_end}
{p 4 6 2}
您必须在使用 {cmd:mi}
{cmd:impute} {cmd:ologit} 之前将 {it:ivar} 注册为插补变量；请参见 {manhelp mi_set MI:mi set}.{p_end}
INCLUDE help fvvarlist
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s, {cmd:iweight}s, 以及 {cmd:pweight}s 是
允许的；请参见 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:ologit} 使用有序逻辑回归插补方法填补有序变量的缺失值。 通过指定 {cmd:by()} 选项，您可以对数据的不同子集执行单独的插补。 您还可以考虑频率、重要性和抽样权重。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miimputeologitRemarksandexamples:备注与示例}

        {mansection MI miimputeologitMethodsandformulas:方法与公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}; 参见 
{manhelp mi_impute MI:mi impute}。

{phang}
{opth offset(varname)}；请参见 {manhelp estimation_options R:估计选项}。

{phang}
INCLUDE help mi_impute_uvopt_augment.ihlp

{phang}
INCLUDE help mi_impute_uvopt_conditional.ihlp

{phang}
INCLUDE help mi_impute_uvopt_bootstrap.ihlp

{dlgtab:报告}

{phang}
{cmd:dots}, {cmd:noisily}, {cmd:nolegend}; 参见 {manhelp mi_impute MI:mi impute}. 
{cmd:noisily} 指定显示适应观察数据的有序逻辑回归输出。
INCLUDE help mi_impute_uvopt_nolegend.ihlp

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:{help ologit##maximize_options:maximize_options}}；请参见
{manhelp ologit R}。这些选项很少使用。
{cmd:difficult}, {cmd:technique()}, {cmd:gradient}, {cmd:showstep},
{cmd:hessian}, 和 {cmd:showtolerance} 在使用 {cmd:augment}
选项时不允许。

{dlgtab:高级}

{phang}
{cmd:force}; 请参见 {manhelp mi_impute MI:mi impute}。

{pstd}
以下选项在 {opt mi impute} 中可用，但未在 
对话框中显示：

{phang}
{cmd:noupdate}; 请参见 {manhelp noupdate_option MI:noupdate 选项}。


{marker example}{...}
{title:示例}

{pstd}
设置
{p_end}
{phang2}
{cmd:. webuse mheart4}
{p_end}
{phang2}
{cmd:. tabulate alcohol, missing}
{p_end}

{pstd}声明数据并将 {cmd:alcohol} 注册为插补变量{p_end}
{phang2}
{cmd:. mi set mlong}
{p_end}
{phang2}
{cmd:. mi register imputed alcohol}
{p_end}

{pstd}
插补有序分类变量 {cmd:alcohol}
{p_end}
{phang2}
{cmd:. mi impute ologit alcohol attack smokes age bmi female hsgrad, add(10)}
{p_end}


{marker results}{...}
{title:储存结果}

{pstd}
{cmd:mi impute ologit} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补的总数{p_end}
{synopt:{cmd:r(M_add)}}添加的插补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的插补数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量（始终为 {cmd:1}）{p_end}
{synopt:{cmd:r(pp)}}如果检测到完美预测，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称 ({cmd:ologit}){p_end}
{synopt:{cmd:r(ivars)}}插补变量名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 内指定的变量名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}每组插补样本中的观察数量{p_end}
{synopt:{cmd:r(N_complete)}}每组插补样本中的完整观察数量{p_end}
{synopt:{cmd:r(N_incomplete)}}每组插补样本中的不完整观察数量{p_end}
{synopt:{cmd:r(N_imputed)}}每组插补样本中的插补观察数量{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_ologit.sthlp>}