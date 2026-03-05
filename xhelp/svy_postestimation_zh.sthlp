{smcl}
{* *! version 1.2.5  19oct2017}{...}
{vieweralsosee "[SVY] svy postestimation" "mansection SVY svypostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] estat" "help svy_estat_zh"}{...}
{vieweralsosee "[SVY] svy bootstrap" "help svy_bootstrap_zh"}{...}
{vieweralsosee "[SVY] svy brr" "help svy_brr_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{vieweralsosee "[SVY] svy sdr" "help svy_sdr_zh"}{...}
{viewerjumpto "Postestimation commands" "svy postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "svy_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "svy postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "svy postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "svy postestimation##examples"}
{help svy_postestimation:English Version}
{hline}{...}
{p2colset 1 29 33 2}{...}
{p2col:{bf:[SVY] svy postestimation} {hline 2}}后估计工具{p_end}
{p2col:}({mansection SVY svypostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行{cmd:svy}后，可以使用以下后估计命令：

{synoptset 13}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_lincom
{synopt:{helpb svy_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb svy_postestimation##predict:predict}}预测、
	残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SVY svypostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker predict}{...}
{marker syntax_predict}{...}
{title:在svy之后的predict}

{pstd}
在{cmd:svy}之后使用{help predict_zh}的语法（即使{cmd:predict}被允许）取决于与{cmd:svy}一同使用的命令。
具体来说，{cmd:predict}不允许在{cmd:svy: mean}、{cmd:svy: proportion}、{cmd:svy: ratio}、{cmd:svy: tabulate}或
{cmd:svy: total}之后使用。


{marker margins}{...}
{marker syntax_margins}{...}
{title:在svy之后的margins}

{pstd}
在{cmd:svy}之后使用{help margins_zh}的语法（即使{cmd:margins}被允许）取决于与{cmd:svy}一同使用的命令。
具体来说，{cmd:margins}不允许在{cmd:svy: mean}、{cmd:svy: proportion}、{cmd:svy: ratio}、{cmd:svy: tabulate}或
{cmd:svy: total}之后使用。


{marker examples}{...}
{title:示例1：线性和非线性组合}

{phang}
{cmd:. webuse nhanes2}
{p_end}
{phang}
{cmd:. generate male = (sex == 1)}
{p_end}
{phang}
{cmd:. svy, subpop(male): mean zinc, over(race)}
{p_end}
{phang}
{cmd:. lincom [zinc]White - [zinc]Black}
{p_end}


{title:示例2：二次项}

{phang}
{cmd:. webuse nhanes2d, clear}
{p_end}
{phang}
{cmd:. svy: logistic highbp height weight age age2 female}
{p_end}
{phang}
{cmd:. nlcom peak: -_b[age]/(2*_b[age2])}
{p_end}
{phang}
{cmd:. testnl -_b[age]/(2*_b[age2]) = 70}
{p_end}


{title:示例3：预测边际}

{phang}
{cmd:. webuse nhanes2d}
{p_end}
{phang}
{cmd:. svyset}
{p_end}
{phang}
{cmd:. svy: logistic highbp height weight age c.age#c.age i.female i.race,}
     {cmd:baselevels}
{p_end}
{phang}
{cmd:. margins race, vce(unconditional)}
{p_end}
{phang}
{cmd:. margins, vce(unconditional) dydx(race)}
{p_end}
{phang}
{cmd:. margins, vce(unconditional) dydx(race) over(region)}
{p_end}


{title:示例4：非线性预测及其标准误}

{phang}
{cmd:. webuse nhanes2d}
{p_end}
{phang}
{cmd:. svy: regress loglead age age2 i.female i.race i.region}
{p_end}
{phang}
{cmd:. predictnl leadhat = exp(xb()), se(leadhat_se)}
{p_end}
{phang}
{cmd:. list lead leadhat leadhat_se age age2 in 1/10, abbrev(10)}
{p_end}


{title:示例5：多重假设检验}

{phang}
{cmd:. test 2.region 3.region 4.region}
{p_end}
{phang}
{cmd:. test 2.region 3.region 4.region, nosvyadjust}
{p_end}
{phang}
{cmd:. test 2.region 3.region 4.region, mtest(bonferroni)}
{p_end}


{title:示例6：使用suest进行调查数据分析}

{phang}
{cmd:. webuse nhanes2f, clear}
{p_end}
{phang}
{cmd:. svyset psuid [pw=finalwgt], strata(stratid)}
{p_end}
{phang}
{cmd:. svy: ologit health female black age age2}
{p_end}
{phang}
{cmd:. estimates store H5}
{p_end}
{phang}
{cmd:. gen health3 = clip(health, 2, 4)}
{p_end}
{phang}
{cmd:. svy: ologit health3 female black age age2}
{p_end}
{phang}
{cmd:. estimates store H3}
{p_end}
{phang}
{cmd:. suest H5 H3}
{p_end}
{phang}
{cmd:. test [H5_health=H3_health3]}
{p_end}
{phang}
{cmd:. test (/H5:cut2=/H3:cut1) (/H5:cut3=/H3:cut2)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_postestimation.sthlp>}