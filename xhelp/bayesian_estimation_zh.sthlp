{smcl}
{* *! version 1.0.6  13dec2018}{...}
{vieweralsosee "[BAYES] 贝叶斯估计" "mansection BAYES Bayesianestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "[BAYES] bayesmh 评估器" "help bayesmh_evaluators_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] 贝叶斯后估计" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] 术语表" "help bayes_glossary_zh"}{...}
{viewerjumpto "描述" "bayesian_estimation_zh##description"}{...}
{viewerjumpto "视频示例" "bayesian_estimation_zh##video"}
{help bayesian_estimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[BAYES] 贝叶斯估计} {hline 2}}贝叶斯估计命令{p_end}
{p2col:}({mansection BAYES Bayesianestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Stata 中的贝叶斯估计类似于标准估计 -- 只需在估计命令前加 {cmd:bayes:}（请参见 {manhelp bayes BAYES}）。您也可以参考 {manhelp bayesmh BAYES} 和 {manhelp bayesmh_evaluators BAYES:bayesmh 评估器} 来拟合更一般的贝叶斯模型。

{marker estimation_command}{...}
{pstd}
以下估计命令支持 {opt bayes} 前缀。

{synoptset 39 tabbed}{...}
{synopt:命令{space 4}条目}描述{p_end}
{synoptline}
{syntab:线性回归模型}
{synopt :{cmd:regress}{space 5}{manhelp bayes_regress BAYES:bayes: regress}}线性回归{p_end}
{synopt :{cmd:hetregress}{space 2}{manhelp bayes_hetregress BAYES:bayes: hetregress}}异方差线性回归{p_end}
{synopt :{cmd:tobit}{space 7}{manhelp bayes_tobit BAYES:bayes: tobit}}Tobit 回归{p_end}
{synopt :{cmd:intreg}{space 6}{manhelp bayes_intreg BAYES:bayes: intreg}}区间回归{p_end}
{synopt :{cmd:truncreg}{space 4}{manhelp bayes_truncreg BAYES:bayes: truncreg}}截断回归{p_end}
{synopt :{cmd:mvreg}{space 7}{manhelp bayes_mvreg BAYES:bayes: mvreg}}多元回归{p_end}

{syntab:二元响应回归模型}
{synopt :{cmd:logistic}{space 4}{manhelp bayes_logistic BAYES:bayes: logistic}}逻辑回归，报告赔率比{p_end}
{synopt :{cmd:logit}{space 7}{manhelp bayes_logit BAYES:bayes: logit}}逻辑回归，报告系数{p_end}
{synopt :{cmd:probit}{space 6}{manhelp bayes_probit BAYES:bayes: probit}}Probit 回归{p_end}
{synopt :{cmd:cloglog}{space 5}{manhelp bayes_cloglog BAYES:bayes: cloglog}}互补对数-对数回归{p_end}
{synopt :{cmd:hetprobit}{space 3}{manhelp bayes_hetprobit BAYES:bayes: hetprobit}}异方差 Probit 回归{p_end}
{synopt :{cmd:binreg}{space 6}{manhelp bayes_binreg BAYES:bayes: binreg}}二项族的广义线性模型{p_end}
{synopt :{cmd:biprobit}{space 4}{manhelp bayes_biprobit BAYES:bayes: biprobit}}双变量 Probit 回归{p_end}

{syntab:序数响应回归模型}
{synopt :{cmd:ologit}{space 6}{manhelp bayes_ologit BAYES:bayes: ologit}}有序逻辑回归{p_end}
{synopt :{cmd:oprobit}{space 5}{manhelp bayes_oprobit BAYES:bayes: oprobit}}有序 Probit 回归{p_end}
{synopt :{cmd:hetoprobit}{space 2}{manhelp bayes_hetoprobit BAYES:bayes: hetoprobit}}异方差有序 Probit 回归{p_end}
{synopt :{cmd:zioprobit}{space 3}{manhelp bayes_zioprobit BAYES:bayes: zioprobit}}零膨胀有序 Probit 回归{p_end}

{syntab:分类响应回归模型}
{synopt :{cmd:mlogit}{space 6}{manhelp bayes_mlogit BAYES:bayes: mlogit}}多项式（多类）逻辑回归{p_end}
{synopt :{cmd:mprobit}{space 5}{manhelp bayes_mprobit BAYES:bayes: mprobit}}多项式 Probit 回归{p_end}
{synopt :{cmd:clogit}{space 6}{manhelp bayes_clogit BAYES:bayes: clogit}}条件逻辑回归{p_end}

{syntab:计数响应回归模型}
{synopt :{cmd:poisson}{space 5}{manhelp bayes_poisson BAYES:bayes: poisson}}泊松回归{p_end}
{synopt :{cmd:nbreg}{space 7}{manhelp bayes_nbreg BAYES:bayes: nbreg}}负二项回归{p_end}
{synopt :{cmd:gnbreg}{space 6}{manhelp bayes_gnbreg BAYES:bayes: gnbreg}}广义负二项回归{p_end}
{synopt :{cmd:tpoisson}{space 4}{manhelp bayes_tpoisson BAYES:bayes: tpoisson}}截断泊松回归{p_end}
{synopt :{cmd:tnbreg}{space 6}{manhelp bayes_tnbreg BAYES:bayes: tnbreg}}截断负二项回归{p_end}
{synopt :{cmd:zip}{space 9}{manhelp bayes_zip BAYES:bayes: zip}}零膨胀泊松回归{p_end}
{synopt :{cmd:zinb}{space 8}{manhelp bayes_zinb BAYES:bayes: zinb}}零膨胀负二项回归{p_end}

{syntab:广义线性模型}
{synopt :{cmd:glm}{space 9}{manhelp bayes_glm BAYES:bayes: glm}}广义线性模型{p_end}

{syntab:分数响应回归模型}
{synopt :{cmd:fracreg}{space 5}{manhelp bayes_fracreg BAYES:bayes: fracreg}}分数响应回归{p_end}
{synopt :{cmd:betareg}{space 5}{manhelp bayes_betareg BAYES:bayes: betareg}}贝塔回归{p_end}

{syntab:生存回归模型}
{synopt :{cmd:streg}{space 7}{manhelp bayes_streg BAYES:bayes: streg}}参数生存模型{p_end}

{syntab:样本选择回归模型}
{synopt :{cmd:heckman}{space 5}{manhelp bayes_heckman BAYES:bayes: heckman}}赫克曼选择模型{p_end}
{synopt :{cmd:heckprobit}{space 2}{manhelp bayes_heckprobit BAYES:bayes: heckprobit}}具有样本选择的 Probit 模型{p_end}
{synopt :{cmd:heckoprobit}{space 1}{manhelp bayes_heckoprobit BAYES:bayes: heckoprobit}}具有样本选择的有序 Probit 模型{p_end}

{marker multilevel}{...}
{syntab:多级回归模型}
{synopt :{cmd:mixed}{space 7}{manhelp bayes_mixed BAYES:bayes: mixed}}多级线性回归{p_end}
{synopt :{cmd:metobit}{space 5}{manhelp bayes_metobit BAYES:bayes: metobit}}多级 Tobit 回归{p_end}
{synopt :{cmd:meintreg}{space 4}{manhelp bayes_meintreg BAYES:bayes: meintreg}}多级区间回归{p_end}
{synopt :{cmd:melogit}{space 5}{manhelp bayes_melogit BAYES:bayes: melogit}}多级逻辑回归{p_end}
{synopt :{cmd:meprobit}{space 4}{manhelp bayes_meprobit BAYES:bayes: meprobit}}多级 Probit 回归{p_end}
{synopt :{cmd:mecloglog}{space 3}{manhelp bayes_mecloglog BAYES:bayes: mecloglog}}多级互补对数-对数回归{p_end}
{synopt :{cmd:meologit}{space 4}{manhelp bayes_meologit BAYES:bayes: meologit}}多级有序逻辑回归{p_end}
{synopt :{cmd:meoprobit}{space 3}{manhelp bayes_meoprobit BAYES:bayes: meoprobit}}多级有序 Probit 回归{p_end}
{synopt :{cmd:mepoisson}{space 3}{manhelp bayes_mepoisson BAYES:bayes: mepoisson}}多级泊松回归{p_end}
{synopt :{cmd:menbreg}{space 5}{manhelp bayes_menbreg BAYES:bayes: menbreg}}多级负二项回归{p_end}
{synopt :{cmd:meglm}{space 7}{manhelp bayes_meglm BAYES:bayes: meglm}}多级广义线性模型{p_end}
{synopt :{cmd:mestreg}{space 5}{manhelp bayes_mestreg BAYES:bayes: mestreg}}多级参数生存回归{p_end}
{synoptline}
{p2colreset}{...}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://youtu.be/0F0QoMCSKJ4":贝叶斯统计简介，第 1 部分：基本概念}

{phang}
{browse "https://youtu.be/OTO1DygELpY":贝叶斯统计简介，第 2 部分：MCMC 和 Metropolis-Hastings 算法}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesian_estimation.sthlp>}