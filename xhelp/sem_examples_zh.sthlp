{smcl}
{* *! version 1.0.3  16mar2017}{...}
{vieweralsosee "[SEM]" "mansection SEM"}
{help sem_examples:English Version}
{hline}{...}
{title:标题}

{p2colset 5 21 23 2}{...}
{p2col:{bf:sem 示例 }{hline 2}}使用 sem 的示例{p_end}
{p2colreset}{...}


{title:手册条目}

{synoptset 20}{...}
{synopt :{findalias semsfmm}}单因子测量模型{p_end}
{synopt :{findalias semssd}}从已发布的协方差创建数据集{p_end}
{synopt :{findalias semtfmm}}双因子测量模型{p_end}
{synopt :{findalias semgof}}拟合度统计{p_end}
{synopt :{findalias semmindices}}修改指数{p_end}
{synopt :{findalias semreg}}线性回归{p_end}
{synopt :{findalias semnrsm}}非递归结构模型{p_end}
{synopt :{findalias sembequal}}检验系数是否相等，并约束它们{p_end}
{synopt :{findalias semmc}}具有测量成分的结构模型{p_end}
{synopt :{findalias semmimic}}MIMIC 模型{p_end}
{synopt :{findalias semframework}}estat framework{p_end}
{synopt :{findalias semsureg}}貌似无关的回归{p_end}
{synopt :{findalias semeqtest}}方程级 Wald 检验{p_end}
{synopt :{findalias sempredict}}预测值{p_end}
{synopt :{findalias semhcfa}}高阶 CFA{p_end}
{synopt :{findalias semcorr}}相关性{p_end}
{synopt :{findalias semcu}}相关唯一性模型{p_end}
{synopt :{findalias semlgm}}潜在增长模型{p_end}
{synopt :{findalias semssdg}}从原始数据创建多个组摘要统计数据{p_end}
{synopt :{findalias semtfmmg}}按组的双因子测量模型{p_end}
{synopt :{findalias semggof}}组级拟合度{p_end}
{synopt :{findalias semginv}}检验跨组参数相等性{p_end}
{synopt :{findalias semcnsg}}跨组指定参数约束{p_end}
{synopt :{findalias semrel}}可靠性{p_end}
{synopt :{findalias semssdbuild}}从原始数据创建摘要统计数据{p_end}
{synopt :{findalias semmlmv}}使用随机缺失数据拟合模型{p_end}
{synopt :{findalias gsemsfmm}}单因子测量模型（广义响应）{p_end}
{synopt :{findalias gsemoirt}}一参数逻辑 IRT（Rasch）模型{p_end}
{synopt :{findalias gsemtirt}}二参数逻辑 IRT 模型{p_end}
{synopt :{findalias gsemcfam}}两级测量模型（多级，广义响应）{p_end}
{synopt :{findalias gsemtfmm}}双因子测量模型（广义响应）{p_end}
{synopt :{findalias gsemsem}}完整的结构方程模型（广义响应）{p_end}
{synopt :{findalias gsemlogit}}逻辑回归{p_end}
{synopt :{findalias gsemcombined}}组合模型（广义响应）{p_end}
{synopt :{findalias gsemoprobit}}有序 probit 和有序 logit{p_end}
{synopt :{findalias gsemmimic}}MIMIC 模型（广义响应）{p_end}
{synopt :{findalias gsemmlogit}}多项逻辑回归{p_end}
{synopt :{findalias gsemmris}}随机截距和随机斜率模型（多级）{p_end}
{synopt :{findalias gsemtlevel}}三层模型（多级，广义响应）{p_end}
{synopt :{findalias gsemcross}}交叉模型（多级）{p_end}
{synopt :{findalias gsemtmlogit}}两级多项逻辑回归（多级）{p_end}
{synopt :{findalias gsemmediation}}一层和两层调解模型（多级）{p_end}
{synopt :{findalias gsemtobit}}Tobit 回归{p_end}
{synopt :{findalias gsemintreg}}区间回归{p_end}
{synopt :{findalias gsemsel}}Heckman 选择模型{p_end}
{synopt :{findalias gsemtreat}}内生处理效应模型{p_end}
{synopt :{findalias gsemexp}}指数生存模型{p_end}
{synopt :{findalias gsemllog}}带有审查和截断数据的 Loglogistic 生存模型{p_end}
{synopt :{findalias gsemgrp}}多组 Weibull 生存模型{p_end}
{synopt :{findalias gsemlca}}潜类模型{p_end}
{synopt :{findalias gsemlcagof}}潜类拟合度统计{p_end}
{synopt :{findalias gsemlpa}}潜在剖面模型{p_end}
{synopt :{findalias gsempfmm}}有限混合泊松回归{p_end}
{synopt :{findalias gsempfmmtwo}}有限混合泊松回归，多重响应{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_examples.sthlp>}