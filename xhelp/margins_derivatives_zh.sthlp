{smcl}
{* *! version 1.0.0  31oct2017}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[R] predict" "help predict_zh"}
{help margins_derivatives:English Version}
{hline}{...}
{p 1 4 2}
{hi:支持边际分析导数的预测}

{synoptset 20}{...}
{synopt:命令}{cmd:predict} {it:option}{p_end}
{synoptline}
{synopt:{help betareg_zh}}{helpb betareg postestimation##margins:cmean}{p_end}
{synopt:{help biprobit_zh}}{helpb biprobit postestimation##margins:p11 p10 p01 p00 pmarg1 pmarg2 pcond1 pcond2}{p_end}
{synopt:{help cloglog_zh}}{helpb cloglog postestimation##margins:pr}{p_end}
{synopt:{help heckman_zh}}{helpb heckman postestimation##margins:ycond yexpected mills nshazard psel}{p_end}
{synopt:{help logit_zh}}{helpb logit postestimation##margins:pr}{p_end}
{synopt:{help mlogit_zh}}{helpb mlogit postestimation##margins:pr}{p_end}
{synopt:{help ologit_zh}}{helpb ologit postestimation##margins:pr}{p_end}
{synopt:{help oprobit_zh}}{helpb oprobit postestimation##margins:pr}{p_end}
{synopt:{help nbreg_zh}}{helpb nbreg postestimation##margins:n ir}{p_end}
{synopt:{help poisson_zh}}{helpb poisson postestimation##margins:n ir}{p_end}
{synopt:{help probit_zh}}{helpb probit postestimation##margins:pr}{p_end}
{synoptline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <margins_derivatives.sthlp>}