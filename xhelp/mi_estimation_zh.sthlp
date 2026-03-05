{smcl}
{* *! version 1.0.21  06jun2019}{...}
{vieweralsosee "[MI] Estimation" "mansection MI Estimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "[MI] mi estimate postestimation" "help mi_estimate_postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi import" "help mi_import_zh"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "[MI] mi set" "help mi_set_zh"}{...}
{vieweralsosee "[MI] Workflow" "help mi_workflow_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] Glossary" "help mi_glossary_zh"}
{help mi_estimation:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MI] Estimation} {hline 2}}用于 mi estimate 的估计命令{p_end}
{p2col:}({mansection MI Estimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{title:描述}

{pstd}
在 Stata 中，多重插补数据分析与标准数据分析类似。标准语法适用，但您需要记住以下内容以进行 MI 数据分析：

{phang2}
1. 数据必须声明为 {cmd:mi} 数据。

{pmore2}
如果您已经拥有多重插补的数据（以 Stata 格式保存），请使用 
{helpb mi import} 将其导入 {cmd:mi}。

{pmore2}
如果您没有多重插补的数据，请使用 {helpb mi set} 将您的原始数据声明为 {cmd:mi} 数据，并使用 {helpb mi impute} 填充缺失值。

{phang2}
2. 在声明 {cmd:mi} 数据后，诸如 {help svyset_zh}、{help stset_zh} 和 {help xtset_zh} 的命令无法使用。
相应地使用 {cmd:mi svyset} 来声明调查数据，
使用 {cmd:mi stset} 来声明生存数据，以及
使用 {cmd:mi xtset} 来声明面板数据。请参见
{helpb mi XXXset:[MI] mi XXXset}。

{phang2}
3. 在估计命令前加上 {help mi_estimate_zh:mi estimate:}。

{marker estimation_command}{...}
{pstd}
以下估计命令支持 {cmd:mi} {cmd:estimate} 前缀。

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{syntab:线性回归模型}
{synopt :{help regress_zh}}线性回归{p_end}
{synopt :{help cnsreg_zh}}约束线性回归{p_end}
{synopt :{help mvreg_zh}}多元回归{p_end}

{syntab:二元响应回归模型}
{synopt :{help logistic_zh}}逻辑回归，报告胜算比{p_end}
{synopt :{help logit_zh}}逻辑回归，报告系数{p_end}
{synopt :{help probit_zh}}Probit回归{p_end}
{synopt :{help cloglog_zh}}补充对数-对数回归{p_end}
{synopt :{help binreg_zh}}二项式族的广义线性模型{p_end}

{syntab:计数响应回归模型}
{synopt :{help poisson_zh}}Poisson回归{p_end}
{synopt :{help nbreg_zh}}负二项回归{p_end}
{synopt :{helpb gnbreg}}广义负二项回归{p_end}

{syntab:有序响应回归模型}
{synopt :{help ologit_zh}}有序逻辑回归{p_end}
{synopt :{help oprobit_zh}}有序probit回归{p_end}

{syntab:分类响应回归模型}
{synopt :{help mlogit_zh}}多项式逻辑回归{p_end}
{synopt :{help mprobit_zh}}多项式probit回归{p_end}
{synopt :{help clogit_zh}}条件（固定效应）逻辑回归{p_end}

{syntab:分数响应回归模型}
{synopt :{help fracreg_zh}}分数响应回归{p_end}

{syntab:分位数回归模型}
{synopt :{help qreg_zh}}分位数回归{p_end}
{synopt :{helpb iqreg}}分位数区间回归{p_end}
{synopt :{helpb sqreg}}同时分位数回归{p_end}
{synopt :{helpb bsqreg}}自助法分位数回归{p_end}

{syntab:生存回归模型}
{synopt :{help stcox_zh}}Cox比例风险模型{p_end}
{synopt :{help streg_zh}}参数生存模型{p_end}
{synopt :{help stcrreg_zh}}竞争风险回归{p_end}

{syntab:其他回归模型}
{synopt :{help glm_zh}}广义线性模型{p_end}
{synopt :{help areg_zh}}带有大虚拟变量集的线性回归{p_end}
{synopt :{help rreg_zh}}稳健回归{p_end}
{synopt :{help truncreg_zh}}截断回归{p_end}

{syntab:描述性统计}
{synopt :{help mean_zh}}估计均值{p_end}
{synopt :{help proportion_zh}}估计比例{p_end}
{synopt :{help ratio_zh}}估计比率{p_end}
{synopt :{help total_zh}}估计总数{p_end}

{marker xt_cmds}{...}
{syntab:面板数据模型}
{synopt :{help xtreg_zh}}固定效应、组间效应和随机效应的线性模型，以及总体平均线性模型{p_end}
{synopt :{help xtrc_zh}}随机系数模型{p_end}
{synopt :{help xtlogit_zh}}固定效应、随机效应和总体平均logit模型{p_end}
{synopt :{help xtprobit_zh}}随机效应和总体平均probit模型{p_end}
{synopt :{help xtcloglog_zh}}随机效应和总体平均cloglog模型{p_end}
{synopt :{help xtpoisson_zh}}固定效应、随机效应和总体平均Poisson模型{p_end}
{synopt :{help xtnbreg_zh}}固定效应、随机效应和总体平均负二项模型{p_end}
{synopt :{help xtgee_zh}}使用广义估计方程拟合总体平均的面板数据模型{p_end}

{syntab:多层混合效应模型}
{synopt :{help mixed_zh}}多层混合效应线性回归{p_end}

{syntab:调查回归模型}
{synopt :{helpb svy estimation:svy:}}调查数据的估计命令 
（不包括上述未列出的命令）{p_end}

{synoptline}
{p2colreset}{...}
{p 4 6 2}
仅支持使用 {cmd:svy:} 的泰勒线性化调查方差估计。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_estimation.sthlp>}