{smcl}
{* *! version 1.2.9  22jun2019}{...}
{vieweralsosee "[U] 20 估计和后估计命令（估计）" "help estcom_zh"}{...}
{vieweralsosee "[U] 20 估计和后估计命令（后估计）" "help postest_zh"}
{help estimation_commands:English Version}
{hline}{...}
{title:标题}

{pstd}
估计命令快速参考


{title:描述}

{pstd}
该条目提供 Stata 估计命令的快速参考。
由于 Stata 不断进行改进，请键入 
{cmd:search estimation commands} 以获取可能新增的内容；请参见
{manhelp search R}。

{pstd}
有关所有估计命令的共同特性讨论，请参见
{help estcom_zh}。

{pstd}
有关可与许多这些估计命令一起使用的前缀命令列表，请参见 {manhelp prefix U:11.1.10 前缀命令}。


{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help anova_zh}}方差和协方差分析{p_end}
{synopt :{help arch_zh}}ARCH 估计量系列{p_end}
{synopt :{help areg_zh}}使用大虚拟变量集的线性回归{p_end}
{synopt :{help arfima_zh}}自回归分数积分移动平均模型{p_end}
{synopt :{help arima_zh}}ARIMA、ARMAX 和其他动态回归模型{p_end}

{synopt :{helpb bayesian estimation:bayes:}}贝叶斯回归命令{p_end}
{synopt :{help bayesmh_zh}}使用梅特罗波利斯-哈斯廷斯算法的贝叶斯回归{p_end}
{synopt :{help betareg_zh}}贝塔回归{p_end}
{synopt :{help binreg_zh}}广义线性模型：对二项式系列的扩展{p_end}
{synopt :{help biprobit_zh}}双变量 Probit 回归{p_end}
{synopt :{help boxcox_zh}}Box-Cox 回归模型{p_end}
{synopt :{helpb bsqreg}}自助量化回归{p_end}

{synopt :{help ca_zh}}简单对应分析{p_end}
{synopt :{helpb camat}}矩阵的简单对应分析{p_end}
{synopt :{help candisc_zh}}典型线性判别分析{p_end}
{synopt :{help canon_zh}}典型相关{p_end}
{synopt :{help churdle_zh}}Cragg 障碍回归{p_end}
{synopt :{help clogit_zh}}条件（固定效应）逻辑回归{p_end}
{synopt :{help cloglog_zh}}互补对数-对数回归{p_end}
{synopt :{help cmclogit_zh}}条件逻辑（McFadden）选择模型{p_end}
{synopt :{help cmmixlogit_zh}}混合逻辑选择模型{p_end}
{synopt :{help cmmprobit_zh}}多项 Probit 选择模型{p_end}
{synopt :{help cmrologit_zh}}排名逻辑选择模型{p_end}
{synopt :{help cmroprobit_zh}}排名 Probit 选择模型{p_end}
{synopt :{help cmxtmixlogit_zh}}面板数据混合逻辑选择模型{p_end}
{synopt :{help cnsreg_zh}}受约束的线性回归{p_end}
{synopt :{help contrast_zh:contrast, post}}作为估计结果的后对比{p_end}
{synopt :{help cpoisson_zh}}截断的 Poisson 回归{p_end}

{synopt :{help dfactor_zh}}动态因子模型{p_end}
{synopt :{helpb discrim knn}}k近邻判别分析{p_end}
{synopt :{helpb discrim lda}}线性判别分析{p_end}
{synopt :{helpb discrim logistic}}逻辑判别分析{p_end}
{synopt :{helpb discrim qda}}二次判别分析{p_end}
{synopt :{help dsge_zh}}线性动态随机一般均衡模型{p_end}
{synopt :{help dsgenl_zh}}非线性动态随机一般均衡模型{p_end}
{synopt :{help dslogit_zh}}双选择 Lasso 逻辑回归{p_end}
{synopt :{help dspoisson_zh}}双选择 Lasso Poisson 回归{p_end}
{synopt :{help dsregress_zh}}双选择 Lasso 线性回归{p_end}

{synopt :{help eintreg_zh}}扩展区间回归{p_end}
{synopt :{help eivreg_zh}}误差变量回归{p_end}
{synopt :{help elasticnet_zh}}用于预测和模型选择的弹性网络{p_end}

{synopt :{help eoprobit_zh}}扩展有序 Probit 回归{p_end}
{synopt :{help eprobit_zh}}扩展 Probit 回归{p_end}
{synopt :{help eregress_zh}}扩展线性回归{p_end}
{synopt :{help eteffects_zh}}内生处理效应估计{p_end}
{synopt :{help etpoisson_zh}}具有内生处理效应的 Poisson 回归{p_end}
{synopt :{help etregress_zh}}具有内生处理效应的线性回归{p_end}
{synopt :{help exlogistic_zh}}精确逻辑回归{p_end}
{synopt :{help expoisson_zh}}精确 Poisson 回归{p_end}

{synopt :{help factor_zh}}因子分析{p_end}
{synopt :{helpb factormat}}相关矩阵的因子分析{p_end}
{synopt :{helpb fmm estimation:fmm:}}有限混合建模命令{p_end}
{synopt :{help fracreg_zh}}分数响应回归{p_end}
{synopt :{help frontier_zh}}随机前沿模型{p_end}

{synopt :{help glm_zh}}广义线性模型{p_end}
{synopt :{help gmm_zh}}广义矩估计{p_end}
{synopt :{helpb gnbreg}}广义负二项模型{p_end}
{synopt :{help gsem_command_zh:gsem}}广义结构方程模型估计命令{p_end}

{synopt :{help heckman_zh}}Heckman 选择模型{p_end}
{synopt :{help heckoprobit_zh}}具有样本选择的有序 Probit 模型{p_end}
{synopt :{help heckpoisson_zh}}具有内生样本选择的 Poisson 回归{p_end}
{synopt :{help heckprobit_zh}}具有样本选择的 Probit 模型{p_end}
{synopt :{help hetoprobit_zh}}异方差有序 Probit 回归{p_end}
{synopt :{help hetprobit_zh}}异方差 Probit 模型{p_end}
{synopt :{help hetregress_zh}}异方差线性回归{p_end}

{synopt :{help intreg_zh}}区间回归{p_end}
{synopt :{helpb iqreg}}分位差回归{p_end}
{synopt :{helpb irt 1pl}}一参数逻辑模型{p_end}
{synopt :{helpb irt 2pl}}二参数逻辑模型{p_end}
{synopt :{helpb irt 3pl}}三参数逻辑模型{p_end}
{synopt :{helpb irt gpcm}}广义部分信用模型{p_end}
{synopt :{helpb irt grm}}分级响应模型{p_end}
{synopt :{helpb irt hybrid}}混合 IRT 模型{p_end}
{synopt :{helpb irt nrm}}名义响应模型{p_end}
{synopt :{helpb irt pcm}}部分信用模型{p_end}
{synopt :{helpb irt rsm}}评级量表模型{p_end}
{synopt :{help ivpoisson_zh}}具有连续内生协变量的 Poisson 模型{p_end}
{synopt :{help ivprobit_zh}}具有连续内生协变量的 Probit 模型{p_end}
{synopt :{help ivregress_zh}}单方程工具变量估计{p_end}
{synopt :{help ivtobit_zh}}具有连续内生协变量的 Tobit 模型{p_end}

{synopt :{help lasso_zh}}用于预测和模型选择的 Lasso{p_end}
{synopt :{help logistic_zh}}逻辑回归，报告赔率比{p_end}
{synopt :{help logit_zh}}逻辑回归，报告系数{p_end}

{synopt :{help manova_zh}}多元方差分析和协方差分析{p_end}
{synopt :{help margins_zh:margins, post}}作为估计结果的后边际{p_end}
{synopt :{help mca_zh}}多重和联合对应分析{p_end}
{synopt :{help mds_zh}}二维数据的多维标度{p_end}
{synopt :{help mdslong_zh}}长格式接近数据的多维标度{p_end}
{synopt :{help mdsmat_zh}}矩阵中接近数据的多维标度{p_end}
{synopt :{help mean_zh}}估计均值{p_end}
{synopt :{help mecloglog_zh}}多级混合效果互补对数-对数回归{p_end}
{synopt :{help meglm_zh}}多级混合效果广义线性模型{p_end}
{synopt :{help meintreg_zh}}多级混合效果区间回归{p_end}
{synopt :{help melogit_zh}}多级混合效果逻辑回归{p_end}
{synopt :{help menbreg_zh}}多级混合效果负二项回归{p_end}
{synopt :{help menl_zh}}非线性混合效果回归{p_end}
{synopt :{help meologit_zh}}多级混合效果有序逻辑回归{p_end}
{synopt :{help meoprobit_zh}}多级混合效果有序 Probit 回归{p_end}
{synopt :{help mepoisson_zh}}多级混合效果 Poisson 回归{p_end}
{synopt :{help meprobit_zh}}多级混合效果 Probit 回归{p_end}
{synopt :{help mestreg_zh}}多级混合效果参数生存模型{p_end}
{synopt :{helpb meta regress}}元分析回归{p_end}
{synopt :{help metobit_zh}}多级混合效果 Tobit 回归{p_end}
{synopt :{helpb mgarch ccc}}常数条件相关的多元 GARCH 模型{p_end}
{synopt :{helpb mgarch dcc}}动态条件相关的多元 GARCH 模型{p_end}
{synopt :{helpb mgarch dvech}}对角 vech 多元 GARCH 模型{p_end}
{synopt :{helpb mgarch vcc}}变化条件相关的多元 GARCH 模型{p_end}
{synopt :{help mixed_zh}}多级混合效果线性回归{p_end}
{synopt :{help ml_zh}}最大似然估计{p_end}
{synopt :{help mlexp_zh}}用户指定表达式的最大似然估计{p_end}
{synopt :{help mlogit_zh}}多项（多类别）逻辑回归{p_end}
{synopt :{help mprobit_zh}}多项 Probit 回归{p_end}
{synopt :{help mswitch_zh}}马尔可夫切换回归模型{p_end}
{synopt :{help mvreg_zh}}多变量回归{p_end}

{synopt :{help nbreg_zh}}负二项回归{p_end}
{synopt :{help newey_zh}}带有 Newey-West 标准误的回归{p_end}
{synopt :{help nl_zh}}非线性最小二乘估计{p_end}
{synopt :{help nlogit_zh}}嵌套逻辑模型{p_end}
{synopt :{help nlsur_zh}}非线性方程组{p_end}
{synopt :{helpb npregress kernel}}非参数核回归{p_end}
{synopt :{helpb npregress series}}非参数系列回归{p_end}

{synopt :{help ologit_zh}}有序逻辑回归{p_end}
{synopt :{help oprobit_zh}}有序 Probit 回归{p_end}

{synopt :{help pca_zh}}主成分分析{p_end}
{synopt :{helpb pcamat}}相关或协方差矩阵的主成分分析{p_end}
{synopt :{help poisson_zh}}Poisson 回归{p_end}
{synopt :{help poivregress_zh}}部分 Lasso 工具变量回归{p_end}
{synopt :{help pologit_zh}}部分 Lasso 逻辑回归{p_end}
{synopt :{help popoisson_zh}}部分 Lasso Poisson 回归{p_end}
{synopt :{help poregress_zh}}部分 Lasso 线性回归{p_end}
{synopt :{help prais_zh}}Prais-Winsten 和 Cochrane-Orcutt 回归{p_end}
{synopt :{help probit_zh}}Probit 回归{p_end}
{synopt :{help procrustes_zh}}Procrustes 变换{p_end}
{synopt :{help proportion_zh}}估计比例{p_end}
{synopt :{help pwcompare_zh:pwcompare, post}}作为估计结果的后成对比较{p_end}
{synopt :{help pwmean_zh:pwmean}}执行均值的成对比较{p_end}

{synopt :{help qreg_zh}}分位回归{p_end}

{synopt :{help ratio_zh}}估计比率{p_end}
{synopt :{help reg3_zh}}用于 simultaneous equations 系统的三阶段估计{p_end}
{synopt :{help regress_zh}}线性回归{p_end}
{synopt :{help rocfit_zh}}参数 ROC 模型{p_end}
{synopt :{help rocreg_zh}}参数和非参数 ROC 回归{p_end}
{synopt :{help rreg_zh}}鲁棒回归{p_end}

{synopt :{help scobit_zh}}偏态逻辑回归{p_end}
{synopt :{help sem_command_zh:sem}}结构方程模型估计命令{p_end}
{synopt :{help slogit_zh}}刻板逻辑回归{p_end}
{synopt :{help spivregress_zh}}具有内生协变量的空间自回归模型{p_end}
{synopt :{help spregress_zh}}空间自回归模型{p_end}
{synopt :{help spxtregress_zh}}面板数据的空间自回归模型{p_end}
{synopt :{helpb sqreg}}同时量化回归{p_end}
{synopt :{help sqrtlasso_zh}}平方根 Lasso 用于预测和模型选择{p_end}
{synopt :{help sspace_zh}}状态空间模型{p_end}
{synopt :{help stcox_zh}}Cox 比例风险模型{p_end}
{synopt :{help stcrreg_zh}}竞争风险回归{p_end}
{synopt :{help stintreg_zh}}适用于区间截尾生存时间数据的参数模型{p_end}
{synopt :{helpb stteffects ipw}}生存时间逆概率加权{p_end}
{synopt :{helpb stteffects ipwra}}生存时间逆概率加权回归调整{p_end}
{synopt :{helpb stteffects ra}}生存时间回归调整{p_end}
{synopt :{helpb stteffects wra}}生存时间加权回归调整{p_end}
{synopt :{help streg_zh}}参数生存模型{p_end}
{synopt :{help sureg_zh}}Zellner 的看似不相关回归{p_end}
{synopt :{helpb svy estimation:svy:}}用于调查数据的估计命令{p_end}

{synopt :{helpb teffects aipw}}通过增强逆概率加权的方法估计处理效果{p_end}
{synopt :{helpb teffects ipw}}通过概率加权的方法估计处理效果{p_end}
{synopt :{helpb teffects ipwra}}通过逆概率加权回归调整估计处理效果{p_end}
{synopt :{helpb teffects nnmatch}}通过最近邻匹配估计处理效果{p_end}
{synopt :{helpb teffects psmatch}}通过倾向得分匹配估计处理效果{p_end}
{synopt :{helpb teffects ra}}使用回归调整估计处理效果{p_end}
{synopt :{help threshold_zh}}阈值回归{p_end}
{synopt :{help tnbreg_zh}}截断负二项回归{p_end}
{synopt :{help tobit_zh}}Tobit 回归{p_end}
{synopt :{help total_zh}}估计总量{p_end}
{synopt :{help tpoisson_zh}}截断 Poisson 回归{p_end}
{synopt :{help truncreg_zh}}截断回归{p_end}

{synopt :{help ucm_zh}}未观测成分模型{p_end}

{synopt :{help var_zh}}向量自回归模型{p_end}
{synopt :{helpb var svar}}结构向量自回归模型{p_end}
{synopt :{help varbasic_zh}}拟合简单 VAR 并绘制 IRF 和 FEVD{p_end}
{synopt :{help vec_zh}}向量误差修正模型{p_end}
{synopt :{help vwls_zh}}方差加权最小二乘法{p_end}

{synopt :{help xtabond_zh}}Arellano-Bond 线性动态面板数据估计{p_end}
{synopt :{help xtcloglog_zh}}随机效应和人口平均的 cloglog 模型{p_end}
{synopt :{help xtdpd_zh}}线性动态面板数据估计{p_end}
{synopt :{help xtdpdsys_zh}}Arellano-Bond/Blundell-Bond 估计{p_end}
{synopt :{helpb xteintreg}}扩展随机效应区间回归{p_end}
{synopt :{helpb xteoprobit}}扩展随机效应有序 Probit 回归{p_end}
{synopt :{helpb xteprobit}}扩展随机效应 Probit 回归{p_end}
{synopt :{helpb xteregress}}扩展随机效应线性回归{p_end}
{synopt :{help xtfrontier_zh}}面板数据随机前沿模型{p_end}
{synopt :{help xtgee_zh}}使用 GEE 拟合人口平均面板数据模型{p_end}
{synopt :{help xtgls_zh}}使用 GLS 拟合面板数据模型{p_end}
{synopt :{help xtheckman_zh}}具有样本选择的随机效应回归{p_end}
{synopt :{help xthtaylor_zh}}Hausman-Taylor 估计器用于误差成分模型{p_end}
{synopt :{help xtintreg_zh}}随机效应区间数据回归模型{p_end}
{synopt :{help xtivreg_zh}}面板数据模型的工具变量和两阶段最小二乘法{p_end}
{synopt :{help xtlogit_zh}}固定效应、随机效应和人口平均的逻辑模型{p_end}
{synopt :{help xtnbreg_zh}}固定效应、随机效应和人口平均的负二项模型{p_end}
{synopt :{help xtologit_zh}}随机效应有序逻辑模型{p_end}
{synopt :{help xtoprobit_zh}}随机效应有序 Probit 模型{p_end}
{synopt :{help xtpcse_zh}}带有面板校正标准误的 OLS 或 Prais-Winsten 模型{p_end}
{synopt :{help xtpoisson_zh}}固定效应、随机效应和人口平均的 Poisson 模型{p_end}
{synopt :{help xpoivregress_zh}}交叉拟合部分 Lasso 工具变量回归{p_end}
{synopt :{help xpologit_zh}}交叉拟合部分 Lasso 逻辑回归{p_end}
{synopt :{help xpopoisson_zh}}交叉拟合部分 Lasso Poisson 回归{p_end}
{synopt :{help xporegress_zh}}交叉拟合部分 Lasso 线性回归{p_end}
{synopt :{help xtprobit_zh}}随机效应和人口平均 Probit 模型{p_end}
{synopt :{help xtrc_zh}}随机系数模型{p_end}
{synopt :{help xtreg_zh}}固定效应、夹缝效应和随机效应以及人口平均线性模型{p_end}
{synopt :{help xtregar_zh}}带有 AR(1) 干扰的固定效应和随机效应线性模型{p_end}
{synopt :{help xtstreg_zh}}随机效应参数生存模型{p_end}
{synopt :{help xttobit_zh}}随机效应 Tobit 模型{p_end}

{synopt :{help zinb_zh}}零膨胀负二项回归{p_end}
{synopt :{help zioprobit_zh}}零膨胀有序 Probit 回归{p_end}
{synopt :{help zip_zh}}零膨胀 Poisson 回归{p_end}
{synoptline}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimation_commands.sthlp>}