{smcl}
{* *! version 1.0.26  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute monotone" "mansection MI miimputemonotone"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "[MI] Glossary" "help mi glossary"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute chained" "help mi_impute_chained_zh"}{...}
{vieweralsosee "[MI] mi impute mvn" "help mi_impute_mvn_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_monotone_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_monotone_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_monotone_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_monotone_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_monotone_zh##options"}{...}
{viewerjumpto "Examples" "mi_impute_monotone_zh##examples"}{...}
{viewerjumpto "Stored results" "mi_impute_monotone_zh##results"}
{help mi_impute_monotone:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[MI] mi impute monotone} {hline 2}}对单调数据进行缺失值插补{p_end}
{p2col:}({mansection MI miimputemonotone:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}默认的预测方程规格，基本语法

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:mon:otone}
{cmd:(}{it:{help mi_impute_monotone##uvmethod:uvmethod}}{cmd:)}
       {it:{help mi_impute_monotone##ivars:ivars}}
[{cmd:=} {it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute monotone##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}}
         {it:{help mi_impute_monotone##opts1:options}}]


{p 4 4 2}默认的预测方程规格，完整语法

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:mon:otone} {it:lhs}
[{cmd:=} {it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi impute monotone##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}}
         {it:{help mi_impute_monotone##opts1:options}}]


{p 4 4 2}自定义的预测方程规格

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:mon:otone} {it:cmodels}
[{it:{help if_zh}}]
[{it:{help mi impute monotone##weight:weight}}]{cmd:,}
 {opt c:ustom} [{it:{help mi_impute##impopts:impute_options}}
 {it:{help mi_impute_monotone##opts1:options}}]


{phang}
其中 {it:lhs} 是 {it:lhs_spec} [{it:lhs_spec} [...]] 而 {it:lhs_spec} 是

{phang2}
{cmd:(}{it:{help mi_impute_monotone##uvmethod:uvmethod}} [{it:{help if_zh}}]
[{cmd:,} {it:{help mi_impute_monotone##uvspec_options:uvspec_options}}]{cmd:)}
         {it:{help mi_impute_monotone##ivars:ivars}}

{pstd}
{it:cmodels} 是 {cmd:(}{it:cond_spec}{cmd:)} [{cmd:(}{it:cond_spec}{cmd:)}
    [...]] 而条件规格 {it:cond_spec} 是

{phang2}
{it:{help mi_impute_monoton##uvmethod:uvmethod}} 
{it:{help mi_impute_monotone##ivars:ivar}} [{it:rhs_spec}] [{it:{help if_zh}}]
[{cmd:,} {it:{help mi_impute_monotone##uvspec_options:uvspec_options}}]

{pstd}
{it:rhs_spec} 包括 {it:{help varlist_zh}} 和用括号括起来的插补变量表达式。

{marker ivars}{...}
{phang}
{it:ivar}({it:s}) (如果 {it:uvmethod} 是 {cmd:intreg}，则为 {it:newivar}) 是插补变量的名称。

{marker uvspec_options}{...}
{phang}
{it:uvspec_options} 包括 {opt asc:ontinuous}、{opt noi:sily}，以及在每个 {help mi_impute_monotone##uvmethod:单变量插补方法} 的手册条目中描述的方法特定选项。


{marker uvmethod}{...}
{synoptset 15}{...}
{synopthdr:uvmethod}
{synoptline}
{synopt: {opt reg:ress}}连续变量的线性回归；
       {manhelp mi_impute_regress MI:mi impute regress}{p_end}
{synopt: {opt pmm}}连续变量的预测均值匹配；
       {manhelp mi_impute_pmm MI:mi impute pmm}{p_end}
{synopt: {opt truncreg}}带有限制范围的连续变量的截断回归；
       {manhelp mi_impute_truncreg MI:mi impute truncreg}{p_end}
{synopt: {opt intreg}}部分观察（被截断）连续变量的区间回归； {manhelp mi_impute_intreg MI:mi impute intreg}{p_end}
{synopt: {opt logi:t}}二元变量的逻辑回归； 
       {manhelp mi_impute_logit MI:mi impute logit}{p_end}
{synopt: {opt olog:it}}有序逻辑回归的序数变量； 
       {manhelp mi_impute_ologit MI:mi impute ologit}{p_end}
{synopt: {opt mlog:it}}名义变量的多项逻辑回归；
       {manhelp mi_impute_mlogit MI:mi impute mlogit}{p_end}
{synopt: {opt poisson}}计数变量的泊松回归；
       {manhelp mi_impute_poisson MI:mi impute poisson}{p_end}
{synopt: {opt nbreg}}过度分散计数变量的负二项回归；
       {manhelp mi_impute_nbreg MI:mi impute nbreg}{p_end}
{synoptline}


{marker opts1}{...}
{synoptset 15 tabbed}{...}
{synopthdr:options}
{synoptline}
{syntab:主要}
{p2coldent:* {opt c:ustom}}自定义条件规格的预测方程{p_end}
{synopt:{opt aug:ment}}在所有分类插补变量完美预测的情况下执行增强回归{p_end}
{synopt:{opt boot:strap}}使用替换抽样估计模型参数{p_end}

{syntab:报告}
{synopt: {opt dryrun}}显示条件规格而不插补数据{p_end}
{synopt: {opt verbose}}显示条件规格并插补数据；
     当没有指定 {cmd:custom} 预测方程时隐含{p_end}
{synopt: {opt report}}显示关于每个条件规格的报告{p_end}

{syntab:高级}
{synopt: {opt nomonotonechk}}不检查变量是否遵循单调缺失模式{p_end}
{synoptline}
{p 4 6 2}
* {cmd:custom} 是指定自定义预测方程时所必需的。
{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute}
{cmd:monotone} 之前，必须先 {cmd:mi} {cmd:set} 数据；请参见 {manhelp mi_set MI:mi set}。{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:monotone} 之前，必须将 {cmd:mi} {cmd:register} {it:ivars} 作为插补确认；请参见 {manhelp mi_set MI:mi set}。{p_end}
{p 4 6 2}
{it:indepvars} 和 {it:rhs_spec} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}s、{cmd:aweight}s ({cmd:regress}、{cmd:pmm}、{cmd:truncreg} 和
{cmd:intreg} 仅适用)、{cmd:iweight}s 和 {cmd:pweight}s；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:monotone} 通过使用一系列独立的单变量条件插补方法填充多个变量中的缺失值。 要插补的变量 {it:ivars} 必须遵循单调缺失模式（见 {manlink MI Intro substantive}）。可以通过指定 {cmd:by()} 选项对数据的不同子集进行单独的插补。您还可以考虑频率、分析（仅限连续变量）、重要性和抽样权重。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miimputemonotoneRemarksandexamples:备注和示例}

        {mansection MI miimputemonotoneMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:custom} 是在单变量条件规格中构建自定义预测方程所需的。否则，将假定使用默认的预测方程规格。

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}；见 {manhelp mi_impute MI:mi impute}。

{phang}
包含帮助 mi_impute_uvopt_augment
此选项相当于在所有分类插补方法的单变量规格中指定 {cmd:augment}。

{phang}
包含帮助 mi_impute_uvopt_bootstrap
此选项相当于在所有单变量规格中指定 {cmd:bootstrap}。

{pstd}
以下选项出现在您单击 {bf:创建 ...} 按钮时显示的规格对话框的 {bf:主要} 选项卡上。

{phang}
{it:uvspec_options} 是在每个单变量插补方法 {it:uvmethod} 中指定的选项。{it:uvspec_options} 包括 {opt asc:ontinuous}、{opt noi:sily}，以及在每个单变量插补方法的手册条目中描述的特定方法的 {it:options}。

{phang2}
{opt ascontinuous} 指定将与当前 {it:uvmethod} 对应的分类插补变量作为连续变量包含在所有预测方程中。此选项仅在 {it:uvmethod} 为 {cmd:logit}、{cmd:ologit} 或 {cmd:mlogit} 时允许。

{phang2}
{opt noisily} 指定显示适用于观察数据的当前单变量模型拟合的输出。

{dlgtab:报告}

{phang}
{cmd:dots}、{cmd:noisily}、{cmd:nolegend}；见 {manhelp mi_impute MI:mi impute}。 {cmd:noisily} 指定显示所有适用于观察数据的单变量条件模型拟合的输出。{cmd:nolegend} 抑制所有插补表的图例，包括触发 {cmd:conditional()} 时的条件插补的图例，以及当指定 {cmd:by()} 时的组图例。

{phang}
{cmd:dryrun} 指定显示用于插补每个变量的条件规格，而不实际插补数据。此选项建议在插补之前检查条件模型的规格。

{phang}
{cmd:verbose} 指定显示条件规格并插补数据。未指定自定义预测方程时，隐含 {cmd:verbose} 。

{phang}
{cmd:report} 指定显示关于每个单变量条件规格的报告。此选项与 {cmd:dryrun} 组合时，建议在插补之前检查条件模型的规格。

{dlgtab:高级}

{phang}
{cmd:force}；见 {manhelp mi_update MI:mi impute}。

{phang}
{cmd:nomonotonechk} 指定不检查插补变量是否遵循单调缺失模式。此选项可用于避免潜在耗时的检查。当插补大量变量时，单调性检查可能会耗时。如果您在自定义规格中使用了 {cmd:nomonotonechk}，则请确保按单调性顺序列出单变量条件规格，以避免得到不正确的结果。

{pstd}
该选项在 {opt mi impute} 中可用，但在对话框中未显示：

{phang}
{cmd:noupdate}；见 {manhelp noupdate_option MI:noupdate option}。


{marker examples}{...}
{title:示例： 默认预测方程}

{pstd}
    设置
{p_end}
{phang2}
{cmd:. webuse mheart5s0}
{p_end}

{pstd}
    描述 {cmd:mi} 数据
{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}
    检查缺失数据模式
{p_end}
{phang2}
{cmd:. mi misstable nested}
{p_end}

{pstd}
通过线性回归插补 {cmd:bmi} 和 {cmd:age}
{p_end}
{phang2}
{cmd:. mi impute monotone (regress) bmi age = attack smokes hsgrad female, add(10)}
{p_end}

{pstd}
使用线性回归插补 {cmd:bmi}，使用预测均值匹配插补 {cmd:age}
{p_end}
{phang2}
{cmd:. mi impute monotone (regress) bmi (pmm, knn(5)) age = attack smokes hsgrad female, replace}
{p_end}
{phang2}


{title:示例： 自定义预测方程}

{pstd}
    设置
{p_end}
{phang2}
{cmd:. webuse mheart6s0, clear}
{p_end}

{pstd}
    描述 {cmd:mi} 数据
{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}
    检查缺失数据模式
{p_end}
{phang2}
{cmd:. mi misstable nested}
{p_end}

{pstd}
为每个 {cmd:hightar}、{cmd:bmi} 和 {cmd:age} 指定自定义方程；
在 {cmd:age} 的方程中包含 {cmd:bmi} 的平方
{p_end}
{phang2}
{cmd:. mi impute monotone ///}{break}
{cmd:(logit hightar attack hsgrad female if smokes) ///}{break}
{cmd:(pmm bmi hightar attack smokes hsgrad female, knn(5)) ///}{break}
{cmd:(regress age bmi (bmi^2) hightar attack smokes hsgrad female),}
{cmd:custom add(10)}
{p_end}


{title:示例： 在子样本上插补}

{pstd}
    设置
{p_end}
{phang2}
{cmd:. webuse mheart5s0, clear}
{p_end}

{pstd}
使用预测均值匹配分别为男性和女性插补 {cmd:bmi} 和 {cmd:age}
{p_end}
{phang2}
{cmd:. mi impute monotone (pmm, knn(5)) bmi age = attack smokes hsgrad, add(10) by(female)}
{p_end}


{title:示例： 条件插补}

{pstd}
    设置
{p_end}
{phang2}
{cmd:. webuse mheart7s0, clear}
{p_end}

{pstd}
    描述 {cmd:mi} 数据
{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}
    使用预测均值匹配插补 {cmd:bmi} 和 {cmd:age}，并使用逻辑回归插补 {cmd:smokes} 和 {cmd:hightar}；仅使用 {cmd:smokes==1} 的观测值插补 {cmd:hightar}
{p_end}
{phang2}
{cmd:. mi impute monotone ///}{break}
{cmd:    (pmm, knn(5)) bmi ///}{break}
{cmd:    (pmm, knn(5)) age ///}{break}
{cmd:    (logit, cond(if smokes==1)) hightar ///}{break}
{cmd:    (logit) smokes = attack hsgrad female, add(10)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute monotone} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补的总数{p_end}
{synopt:{cmd:r(M_add)}}添加的插补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的插补数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称 ({cmd:monotone}){p_end}
{synopt:{cmd:r(ivars)}}插补变量的名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(uvmethods)}}单变量条件插补方法的名称{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}每组插补样本中的观测数量（每个变量）{p_end}
{synopt:{cmd:r(N_complete)}}每组插补样本中的完整观测数量（每个变量）
{p_end}
{synopt:{cmd:r(N_incomplete)}}每组插补样本中的不完整观测数量（每个变量）
{p_end}
{synopt:{cmd:r(N_imputed)}}每组插补样本中的插补观测数量（每个变量）{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_monotone.sthlp>}