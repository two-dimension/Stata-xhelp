{smcl}
{* *! version 1.0.4  19oct2017}{...}
{vieweralsosee "[FMM] fmm estimation" "mansection FMM fmmestimation"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm glossary"}{...}
{viewerjumpto "Description" "fmm_estimation_zh##description"}{...}
{viewerjumpto "Linear regression models" "fmm_estimation_zh##linear"}{...}
{viewerjumpto "Binary-response regression models" "fmm_estimation_zh##binary"}{...}
{viewerjumpto "Ordinal-response regression models" "fmm_estimation_zh##ordinal"}{...}
{viewerjumpto "Categorical-response regression models" "fmm_estimation_zh##categorical"}{...}
{viewerjumpto "Count-response regression models" "fmm_estimation_zh##count"}{...}
{viewerjumpto "Generalized linear models" "fmm_estimation_zh##glm"}{...}
{viewerjumpto "Fractional-response regression models" "fmm_estimation_zh##fractional"}{...}
{viewerjumpto "Survival regression models" "fmm_estimation_zh##survival"}
{help fmm_estimation:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[FMM] fmm estimation} {hline 2}}拟合有限混合模型
{p_end}
{p2col:}({mansection FMM fmmestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
有限混合模型（FMMs）用于对观察进行分类，以调整聚类并建模未观察到的异质性。在有限混合建模中，假设观察数据属于若干未观察的亚群体，称为类，并使用概率密度或回归模型的混合来建模感兴趣的结果。拟合模型后，还可以预测每个观察的类成员资格概率。


{p2colset 5 37 39 2}{...}
{pstd}
{marker linear}{...}
{bf:线性回归模型}

{p2col :{helpb fmm regress:[FMM] fmm: regress}}线性回归{p_end}
{p2col :{helpb fmm truncreg:[FMM] fmm: truncreg}}截断回归{p_end}
{p2col :{helpb fmm intreg:[FMM] fmm: intreg}}区间回归{p_end}
{p2col :{helpb fmm tobit:[FMM] fmm: tobit}}Tobit回归{p_end}
{p2col :{helpb fmm ivregress:[FMM] fmm: ivregress}}工具变量回归{p_end}


{pstd}
{marker binary}{...}
{bf:二元响应回归模型}

{p2col :{helpb fmm logit:[FMM] fmm: logit}}逻辑回归，报告系数{p_end}
{p2col :{helpb fmm probit:[FMM] fmm: probit}}Probit回归{p_end}
{p2col :{helpb fmm cloglog:[FMM] fmm: cloglog}}互补对数-对数回归{p_end}


{pstd}
{marker ordinal}{...}
{bf:有序响应回归模型}

{p2col :{helpb fmm ologit:[FMM] fmm: ologit}}有序逻辑回归{p_end}
{p2col :{helpb fmm oprobit:[FMM] fmm: oprobit}}有序Probit回归{p_end}


{pstd}
{marker categorical}{...}
{bf:分类响应回归模型}

{p2col :{helpb fmm mlogit:[FMM] fmm: mlogit}}多项（多类别）逻辑回归{p_end}


{pstd}
{marker count}{...}
{bf:计数响应回归模型}

{p2col :{helpb fmm poisson:[FMM] fmm: poisson}}Poisson回归{p_end}
{p2col :{helpb fmm nbreg:[FMM] fmm: nbreg}}负二项回归{p_end}
{p2col :{helpb fmm tpoisson:[FMM] fmm: tpoisson}}截断Poisson回归{p_end}


{pstd}
{marker glm}{...}
{bf:广义线性模型}

{p2col :{helpb fmm glm:[FMM] fmm: glm}}广义线性模型{p_end}


{pstd}
{marker fractional}{...}
{bf:分数响应回归模型}

{p2col :{helpb fmm betareg:[FMM] fmm: betareg}}Beta回归{p_end}


{pstd}
{marker survival}{...}
{bf:生存回归模型}

{p2col :{helpb fmm streg:[FMM] fmm: streg}}参数生存模型{p_end}


{pstd}
{cmd:fmm:} 允许对混合的不同组分使用不同的回归模型；请参见 {manhelp fmm FMM}。{cmd:fmm:} 还允许一个或多个组分为一个退化分布，其以概率1取单个整数值；请参见 {manhelp fmm_pointmass FMM:fmm: pointmass}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_estimation.sthlp>}