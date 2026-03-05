{smcl}
{* *! version 1.1.33  28apr2019}{...}
{vieweralsosee "[SVY] svy estimation" "mansection SVY svyestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] estat" "help svy_estat_zh"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svyset" "help svyset_zh"}{...}
{viewerjumpto "Description" "svy_estimation_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "svy_estimation_zh##linkspdf"}{...}
{viewerjumpto "Menu" "svy_estimation_zh##menu"}{...}
{viewerjumpto "Examples" "svy_estimation_zh##examples"}
{help svy_estimation:English Version}
{hline}{...}
{p2colset 5 27 29 2}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[SVY] svy estimation} {hline 2}}用于调查数据的估计命令
{p_end}
{p2col:}({mansection SVY svyestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
在 Stata 中，调查数据分析与标准数据分析基本相同。
标准语法适用；您只需记住以下几点：

{phang2}
o  使用 {cmd:svyset} 来识别调查设计特征。

{phang2}
o  在估计命令前加上 {cmd:svy:}。

{pstd}
例如，

{pmore2}
{cmd:. webuse nhanes2f}{break}
{cmd:. svyset psuid [pweight=finalwgt], strata(stratid)}{break}
{cmd:. svy: regress zinc age c.age#c.age weight female black orace rural}

{pstd}
请参见 {manhelp svyset SVY} 和 {manhelp svy SVY}。

{pstd}
以下估计命令支持 {cmd:svy} 前缀：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{syntab:描述性统计}
{synopt :{help mean_zh}}估计均值{p_end}
{synopt :{help proportion_zh}}估计比例{p_end}
{p2col :{help ratio_zh}}估计比率{p_end}
{p2col :{help total_zh}}估计总数{p_end}

{syntab:线性回归模型}
{p2col :{help churdle_zh}}Cragg 阻断回归{p_end}
{p2col :{help cnsreg_zh}}约束线性回归{p_end}
{p2col :{help eintreg_zh}}扩展区间回归{p_end}
{p2col :{help eregress_zh}}扩展线性回归{p_end}
{p2col :{help etregress_zh}}具有内生处理效应的线性回归{p_end}
{p2col :{help glm_zh}}广义线性模型{p_end}
{p2col :{help hetregress_zh}}异方差线性回归{p_end}
{p2col :{help intreg_zh}}区间回归{p_end}
{p2col :{help nl_zh}}非线性最小二乘估计{p_end}
{p2col :{help regress_zh}}线性回归{p_end}
{p2col :{help tobit_zh}}Tobit 回归{p_end}
{p2col :{help truncreg_zh}}截断回归{p_end}

{syntab:结构方程模型}
{p2col :{help sem_command_zh:sem}}结构方程模型估计命令{p_end}
{p2col :{help gsem_command_zh:gsem}}广义结构方程模型估计命令{p_end}

{syntab:生存数据回归模型}
{p2col :{help stcox_zh}}Cox 比例风险模型{p_end}
{p2col :{help stintreg_zh}}用于区间审查生存时间数据的参数模型{p_end}
{p2col :{help streg_zh}}参数生存模型{p_end}

{syntab:二元响应回归模型}
{p2col :{help biprobit_zh}}双变量 probit 回归{p_end}
{p2col :{help cloglog_zh}}补充对数-对数回归{p_end}
{p2col :{help eprobit_zh}}扩展 probit 回归{p_end}
{p2col :{help hetprobit_zh}}异方差 probit 回归{p_end}
{p2col :{help logistic_zh}}逻辑回归，报告比值比{p_end}
{p2col :{help logit_zh}}逻辑回归，报告系数{p_end}
{p2col :{help probit_zh}}Probit 回归{p_end}
{p2col :{help scobit_zh}}偏斜逻辑回归{p_end}

{syntab:离散响应回归模型}
{p2col :{help clogit_zh}}条件（固定效应）逻辑回归{p_end}
{p2col :{help cmmixlogit_zh}}混合逻辑选择模型{p_end}
{p2col :{help cmxtmixlogit_zh}}面板数据混合逻辑选择模型{p_end}
{p2col :{help eoprobit_zh}}扩展有序 probit 回归{p_end}
{p2col :{help hetoprobit_zh}}异方差有序 probit 回归{p_end}
{p2col :{help mlogit_zh}}多项式（多项式）逻辑回归{p_end}
{p2col :{help mprobit_zh}}多项式 probit 回归{p_end}
{p2col :{help ologit_zh}}有序逻辑回归{p_end}
{p2col :{help oprobit_zh}}有序 probit 回归{p_end}
{p2col :{help slogit_zh}}刻板逻辑回归{p_end}
{p2col :{help zioprobit_zh}}零膨胀有序 probit 回归{p_end}

{syntab:分数响应回归模型}
{p2col :{help betareg_zh}}Beta 回归{p_end}
{p2col :{help fracreg_zh}}分数响应回归{p_end}

{syntab:泊松回归模型}
{p2col :{help cpoisson_zh}}截断的 Poisson 回归{p_end}
{p2col :{help etpoisson_zh}}具有内生处理效应的 Poisson 回归{p_end}
{p2col :{helpb gnbreg}}广义负二项回归{p_end}
{p2col :{help nbreg_zh}}负二项回归{p_end}
{p2col :{help poisson_zh}}Poisson 回归{p_end}
{p2col :{help tnbreg_zh}}截断的负二项回归{p_end}
{p2col :{help tpoisson_zh}}截断的 Poisson 回归{p_end}
{p2col :{help zinb_zh}}零膨胀负二项回归{p_end}
{p2col :{help zip_zh}}零膨胀 Poisson 回归{p_end}

{syntab:工具变量回归模型}
{p2col :{help ivprobit_zh}}具有连续内生协变量的 Probit 模型{p_end}
{p2col :{help ivregress_zh}}单方程工具变量回归{p_end}
{p2col :{help ivtobit_zh}}具有连续内生协变量的 Tobit 模型{p_end}

{syntab:选择的回归模型}
{p2col :{help heckman_zh}}Heckman 选择模型{p_end}
{p2col :{help heckoprobit_zh}}带样本选择的有序 probit 模型{p_end}
{p2col :{help heckpoisson_zh}}带样本选择的 Poisson 回归{p_end}
{p2col :{help heckprobit_zh}}带样本选择的 Probit 模型{p_end}

{syntab:多层混合效应模型}
{p2col :{help mecloglog_zh}}多层混合效应补充对数-对数回归{p_end}
{p2col :{help meglm_zh}}多层混合效应广义线性模型{p_end}
{p2col :{help meintreg_zh}}多层混合效应区间回归{p_end}
{p2col :{help melogit_zh}}多层混合效应逻辑回归{p_end}
{p2col :{help menbreg_zh}}多层混合效应负二项回归{p_end}
{p2col :{help meologit_zh}}多层混合效应有序逻辑回归{p_end}
{p2col :{help meoprobit_zh}}多层混合效应有序 probit 回归{p_end}
{p2col :{help mepoisson_zh}}多层混合效应泊松回归{p_end}
{p2col :{help meprobit_zh}}多层混合效应 probit 回归{p_end}
{p2col :{help mestreg_zh}}多层混合效应参数生存模型{p_end}
{p2col :{help metobit_zh}}多层混合效应 tobit 回归{p_end}

{syntab:有限混合模型}
{p2col :{help fmm_betareg_zh:fmm: betareg}}有限的Beta回归模型混合{p_end}
{p2col :{help fmm_cloglog_zh:fmm: cloglog}}有限的补充对数-对数回归模型混合{p_end}
{p2col :{help fmm_glm_zh:fmm: glm}}有限的广义线性回归模型混合{p_end}
{p2col :{help fmm_intreg_zh:fmm: intreg}}有限的区间回归模型混合{p_end}
{p2col :{help fmm_ivregress_zh:fmm: ivregress}}有限的内生协变量线性回归模型混合{p_end}
{p2col :{help fmm_logit_zh:fmm: logit}}有限的逻辑回归模型混合{p_end}
{p2col :{help fmm_mlogit_zh:fmm: mlogit}}有限的多项式（多项式）逻辑回归模型混合{p_end}
{p2col :{help fmm_nbreg_zh:fmm: nbreg}}有限的负二项回归模型混合{p_end}
{p2col :{help fmm_ologit_zh:fmm: ologit}}有限的有序逻辑回归模型混合{p_end}
{p2col :{help fmm_oprobit_zh:fmm: oprobit}}有限的有序 probit 回归模型混合{p_end}
{p2col :{help fmm_pointmass_zh:fmm: pointmass}}有限的具有单点密度质点的模型混合{p_end}
{p2col :{help fmm_poisson_zh:fmm: poisson}}有限的 Poisson 回归模型混合{p_end}
{p2col :{help fmm_probit_zh:fmm: probit}}有限的 probit 回归模型混合{p_end}
{p2col :{help fmm_regress_zh:fmm: regress}}有限的线性回归模型混合{p_end}
{p2col :{help fmm_streg_zh:fmm: streg}}有限的参数生存模型混合{p_end}
{p2col :{help fmm_tobit_zh:fmm: tobit}}有限的 tobit 回归模型混合{p_end}
{p2col :{help fmm_tpoisson_zh:fmm: tpoisson}}有限的截断 Poisson 回归模型混合{p_end}
{p2col :{help fmm_truncreg_zh:fmm: truncreg}}有限的截断线性回归模型混合{p_end}


{syntab:项目反应理论}
{p2col :{helpb irt 1pl}}单参数逻辑模型{p_end}
{p2col :{helpb irt 2pl}}双参数逻辑模型{p_end}
{p2col :{helpb irt 3pl}}三参数逻辑模型{p_end}
{p2col :{helpb irt grm}}分级反应模型{p_end}
{p2col :{helpb irt nrm}}名义反应模型{p_end}
{p2col :{helpb irt pcm}}部分信用模型{p_end}
{p2col :{helpb irt rsm}}评分量表模型{p_end}
{p2col :{helpb irt hybrid}}混合 IRT 模型{p_end}
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SVY svyestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 调查数据分析 >} ...

{pstd}
所有支持 {cmd:svy} 的统计估计器的对话框可以在上述菜单路径中找到。此外，您可以通过 {bf:SE/Robust} 或 {bf:SE/Cluster} 选项卡中的标准对话框访问调查数据估计。


{marker examples}{...}
{title:示例}

{pstd}
描述性统计
{p_end}
{phang2}
{cmd:. webuse nmihs}
{p_end}
{phang2}
{cmd:. svyset [pweight=finwgt], strata(stratan)}
{p_end}
{phang2}
{cmd:. svy: mean birthwgt}
{p_end}

{pstd}
回归模型
{p_end}
{phang2}
{cmd:. webuse nhanes2d}
{p_end}
{phang2}
{cmd:. svyset}
{p_end}
{phang2}
{cmd:. svy: logistic highbp height weight age age2 female}
{p_end}
{phang2}
{cmd:. svy, subpop(female): logistic highbp height weight age age2}
{p_end}

{pstd}
Cox 比例风险模型
{p_end}
{phang2}
{cmd:. webuse nhefs}
{p_end}
{phang2}
{cmd:. svyset psu2 [pw=swgt2], strata(strata2)}
{p_end}
{phang2}
{cmd:. stset age_lung_cancer [pw=swgt2], fail(lung_cancer)}
{p_end}
{phang2}
{cmd:. svy: stcox former_smoker smoker male urban1 rural}
{p_end}

{pstd}
多个基线风险
{p_end}
{phang2}
{cmd:. stphplot, strata(revised_race) adjust(former_smoker smoker male urban1 rural) zero legend(col(1))}
{p_end}
{phang2}
{cmd:. svy: stcox former_smoker smoker male urban1 rural, strata(revised_race)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_estimation.sthlp>}