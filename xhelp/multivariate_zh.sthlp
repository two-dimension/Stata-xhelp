{smcl}
{* *! version 1.1.15  19jun2019}{...}
{vieweralsosee "[MV] 多元" "mansection MV Multivariate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] 术语表" "help mv_glossary_zh"}
{help multivariate:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[MV] 多元} {hline 2}}多元命令简介
{p_end}
{p2col:}({mansection MV Multivariate:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{title:描述}

{pstd}
此概述根据多元命令的功能相似性对其进行组织和展示。

{pstd}
{bf:聚类分析}.{break}
这些命令对变量或矩阵内的相似性或不相似性值进行聚类分析。有关聚类分析的简介和 {cmd:cluster} 及 {cmd:clustermat} 子命令的描述，请参见 {manhelp cluster MV} 和 {manhelp clustermat MV}。

{pstd}
{bf:判别分析}.{break}
这些命令提供描述性和预测性线性判别分析（LDA），以及预测性二次判别分析（QDA）、逻辑判别分析和 {it:k}近邻（KNN）判别分析。有关判别分析及 {cmd:discrim} 命令的简介，请参见 {manhelp discrim MV}。

{pstd}
{bf:因子分析和主成分分析}.{break}
这些命令提供使用Cronbach's alpha的可靠性分析、相关矩阵的因子分析和相关或协方差矩阵的主成分分析（PCA）。可以直接提供相关或协方差矩阵，也可以通过变量计算。

{pstd}
{bf:旋转}.{break}
这些命令提供旋转因子或PCA解或旋转矩阵的方法。还提供了Procrustes旋转分析，以使一组变量尽可能匹配另一组变量。

{pstd}
{bf:多元方差分析、多元回归和相关技术}.{break}
这些命令提供典型相关分析、多元回归、多元方差分析（MANOVA）以及多元均值比较。还提供多元均值、协方差和相关性以及多元正态性的测试。

{pstd}
{bf:结构方程模型}.{break}
这些命令提供包含观察变量和潜变量的多元线性模型。这些模型包括确认性因子分析、多元回归、路径分析、中介分析等; 请参见 {help sem_zh:[SEM] sem}。

{pstd}
{bf:多维尺度分析和双图}.{break}
这些命令提供经典和现代（度量和非度量）MDS和二维双图。可在变量或矩阵中的邻近数据上进行MDS，或者在长格式的邻近数据上进行。

{pstd}
{bf:对应分析}.{break}
这些命令对两个分类变量的交叉表或矩阵提供简单对应分析（CA），以及对两种或更多分类变量的多重对应分析（MCA）和联合对应分析（JCA）。

{pstd}
{bf:贝叶斯分析}.{break}
这些命令提供多元线性模型的贝叶斯估计，包括多元正态回归; 请参见 {mansection BAYES bayesBayesianAnalysis:{it:Stata Bayesian Analysis Reference Manual}}。

{pstd}
{bf:项目反应理论}.{break}
这些命令对二元、有序和名义项目及其组合进行项目反应理论模型拟合。后估计功能包括绘制特征曲线和信息函数的图形工具; 请参见 {mansection IRT irtItemResponseTheory:{it:Stata Item Response Theory Reference Manual}}。

{pstd}
{bf:多元时间序列模型}.{break}
这些命令提供时间序列数据的多元模型，包括多元广义自回归条件异方差（GARCH）、向量自回归（VAR）、向量误差修正（VEC）、动态因子、状态空间和动态随机一般均衡（DSGE）模型。

{pstd}
{bf: 聚类分析}

{p2colset 5 37 39 2}{...}
{p2col :{help cluster_zh}}聚类分析命令简介{p_end}
{p2col :{help clustermat_zh}}clustermat命令简介{p_end}
{p2col :{helpb matrix dissimilarity}}计算相似性或不相似性度量；可由 {cmd:clustermat} 使用{p_end}

{pstd}
{bf: 判别分析}

{p2col :{help discrim_zh}}判别分析命令简介{p_end}
{p2col :{helpb discrim lda}}线性判别分析（LDA）{p_end}
{p2col :{help discrim lda postestimation}}discrim lda的后估计工具{p_end}
{p2col :{help candisc_zh}}典型（描述性）线性判别分析{p_end}
{p2col :{helpb discrim qda}}二次判别分析（QDA）{p_end}
{p2col :{help discrim qda postestimation}}discrim qda的后估计工具{p_end}
{p2col :{helpb discrim logistic}}逻辑判别分析{p_end}
{p2col :{help discrim logistic postestimation}}discrim logistic的后估计工具{p_end}
{p2col :{helpb discrim knn}}{it:k}近邻（KNN）判别分析{p_end}
{p2col :{help discrim knn postestimation}}discrim knn的后估计工具{p_end}
{p2col :{helpb discrim estat}}discrim的后估计工具{p_end}

{pstd}
{bf: 因子分析和主成分分析}

{p2col :{help alpha_zh}}计算项之间的相关性（协方差）和Cronbach's alpha{p_end}
{p2col :{help factor_zh}}因子分析{p_end}
{p2col :{help factor postestimation}}因子和factormat的后估计工具{p_end}
{p2col :{help pca_zh}}主成分分析{p_end}
{p2col :{help pca postestimation}}pca和pcamat的后估计工具{p_end}
{p2col :{help rotate_zh}}因子和pca后的正交和斜转{p_end}
{p2col :{help screeplot_zh}}碎石图{p_end}
{p2col :{help scoreplot_zh}}评分和载荷图{p_end}

{pstd}
{bf: 旋转}

{p2col :{help rotate_zh}}因子和pca后的正交和斜转{p_end}
{p2col :{help rotatemat_zh}}对Stata矩阵进行正交和斜转{p_end}
{p2col :{help procrustes_zh}}Procrustes变换{p_end}
{p2col :{help procrustes postestimation}}procrustes的后估计工具{p_end}

{pstd}
{bf: 多元方差分析、多元回归和相关技术}

{p2col :{help canon_zh}}典型相关{p_end}
{p2col :{help canon postestimation}}典型相关的后估计工具{p_end}
{p2col :{help mvreg_zh}}多元回归{p_end}
{p2col :{help mvreg postestimation}}mvreg的后估计工具{p_end}
{p2col :{help manova_zh}}多元方差分析和协方差{p_end}
{p2col :{help manova postestimation}}manova的后估计工具{p_end}
{p2col :{helpb hotelling}}Hotelling的T平方广义均值检验{p_end}
{p2col :{help mvtest_zh}}多元均值、协方差、相关性和正态性的测试{p_end}
{p2col :{help nlsur_zh}}非线性方程组的估计{p_end}
{p2col :{help reg3_zh}}同时方程组的三阶段估计{p_end}
{p2col :{help sureg_zh}}Zellner的看似无关回归{p_end}

{pstd}
{bf: 结构方程模型}

{p2col :{help sem_zh}}结构方程建模{p_end}

{pstd}
{bf:多维尺度分析和双图}

{p2col :{help mds_zh}}双向数据的多维尺度分析{p_end}
{p2col :{help mds postestimation}}mds、mdsmat和mdslong的后估计工具{p_end}
{p2col :{help mds postestimation plots}}mds、mdsmat和mdslong的后估计图{p_end}
{p2col :{help mdslong_zh}}长格式邻近数据的多维尺度分析{p_end}
{p2col :{help mdsmat_zh}}矩阵中邻近数据的多维尺度分析{p_end}
{p2col :{help biplot_zh}}双图{p_end}

{pstd}
{bf:对应分析}

{p2col :{help ca_zh}}简单对应分析{p_end}
{p2col :{help ca postestimation}}ca和camat的后估计工具{p_end}
{p2col :{help ca postestimation plots}}ca和camat的后估计图{p_end}
{p2col :{help mca_zh}}多重和联合对应分析{p_end}
{p2col :{help mca postestimation}}mca的后估计工具{p_end}
{p2col :{help mca postestimation plots}}mca的后估计图{p_end}

{pstd}
{bf: 贝叶斯分析}

{pstd}
{mansection BAYES bayesBayesianAnalysis:{it:Stata Bayesian Analysis Reference Manual}}

{pstd}
{bf: 项目反应理论}

{pstd}
{mansection IRT irtItemResponseTheory:{it:Stata Item Response Theory Reference Manual}}{p_end}

{pstd}
{bf:多元时间序列模型}

{pstd}
{mansection TS tsTimeSeries:{it:Stata Time-Series Reference Manual}}{p_end}
{pstd}
{mansection DSGE dsgeDSGE:{it:Stata Dynamic Stochastic General Equilibrium Models Reference Manual}}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <multivariate.sthlp>}