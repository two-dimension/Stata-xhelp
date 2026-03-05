{smcl}
{* *! version 1.4.5  07dec2018}{...}
{vieweralsosee "[M-4] 统计" "mansection M-4 Statistical"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 介绍" "help m4_intro_zh"}{...}
{viewerjumpto "目录" "m4_statistical_zh##contents"}{...}
{viewerjumpto "描述" "m4_statistical_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m4_statistical_zh##linkspdf"}{...}
{viewerjumpto "备注" "m4_statistical_zh##remarks"}
{help m4_statistical:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-4] 统计} {hline 2}}统计函数
{p_end}
{p2col:}({mansection M-4 Statistical:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 2}   [M-5]
{col 2}手册条目{col 18}函数{col 42}目的
{col 2}{hline}

{col 2}   {c TLC}{hline 23}{c TRC}
{col 2}{hline 3}{c RT}{it: 伪随机变量 }{c LT}{hline}
{col 2}   {c BLC}{hline 23}{c BRC}

{col 2}{bf:{help mf_runiform_zh:runiform()}}{...}
{col 18}{cmd:runiform()}{...}
{col 42}均匀随机变量
{col 18}{cmd:rnormal()}{...}
{col 42}正态（高斯）随机变量
{col 18}{cmd:rseed()}{...}
{col 42}获取或设置随机变量种子
{col 18}{cmd:rngstate()}{...}
{col 42}获取或设置随机数生成器状态
{col 18}{hline 10}
{col 18}{cmd:rbeta()}{...}
{col 42}贝塔随机变量
{col 18}{cmd:rbinomial()}{...}
{col 42}二项随机变量
{col 18}{cmd:rcauchy()}{...}
{col 42}柯西随机变量
{col 18}{cmd:rchi2()}{...}
{col 42}卡方随机变量
{col 18}{cmd:rdiscrete()}{...}
{col 42}离散随机变量
{col 18}{cmd:rexponential()}{...}
{col 42}指数随机变量
{col 18}{cmd:rgamma()}{...}
{col 42}伽马随机变量
{col 18}{cmd:rhypergeometric()}{...}
{col 42}超几何随机变量
{col 18}{cmd:rigaussian()}{...}
{col 42}逆高斯随机变量
{col 18}{cmd:rlaplace()}{...}
{col 42}拉普拉斯随机变量
{col 18}{cmd:rlogistic()}{...}
{col 42}逻辑随机变量
{col 18}{cmd:rnbinomial()}{...}
{col 42}负二项随机变量
{col 18}{cmd:rpoisson()}{...}
{col 42}泊松随机变量
{col 18}{cmd:rt()}{...}
{col 42}学生t随机变量
{col 18}{cmd:runiformint()}{...}
{col 42}均匀随机整数变量
{col 18}{cmd:rweibull()}{...}
{col 42}韦布尔随机变量
{col 18}{cmd:rweibullph()}{...}
{col 42}韦布尔（比例风险）
{col 42}  随机变量

{col 2}   {c TLC}{hline 34}{c TRC}
{col 2}{hline 3}{c RT}{it: 均值、方差与相关性 }{c LT}{hline}
{col 2}   {c BLC}{hline 34}{c BRC}

{col 2}{bf:{help mf_mean_zh:mean()}}{...}
{col 18}{cmd:mean()}{...}
{col 42}均值 
{col 18}{cmd:variance()}{...}
{col 42}方差 
{col 18}{cmd:quadvariance()}{...}
{col 42}四重精度方差 
{col 18}{cmd:meanvariance()}{...}
{col 42}均值和方差
{col 18}{cmd:quadmeanvariance()}{...}
{col 42}四重精度均值和方差
{col 18}{cmd:correlation()}{...}
{col 42}相关性
{col 18}{cmd:quadcorrelation()}{...}
{col 42}四重精度相关性

{col 2}{bf:{help mf_cross_zh:cross()}}{...}
{col 18}{cmd:cross()}{...}
{col 42}{it:X}'{it:X}, {it:X}'{it:Z}, {it:X}'diag({it:w}){it:Z}, 等等

{col 2}{bf:{help mf_corr_zh:corr()}}{...}
{col 18}{cmd:corr()}{...}
{col 42}从方差矩阵生成相关性 

{col 2}{bf:{help mf_crossdev_zh:crossdev()}}{...}
{col 18}{cmd:crossdev()}{...}
{col 42}({it:X}:-{it:x})'({it:X}:-{it:x}), ({it:X}:-{it:x})'({it:Z}:-{it:z}), 等等。

{col 2}{bf:{help mf_quadcross_zh:quadcross()}}{...}
{col 18}{cmd:quadcross()}{...}
{col 42}四重精度 {cmd:cross()}
{col 18}{cmd:quadcrossdev()}{...}
{col 42}四重精度 {cmd:crossdev()}

{col 2}   {c TLC}{hline 26}{c TRC}
{col 2}{hline 3}{c RT}{it: 阶乘与组合 }{c LT}{hline}
{col 2}   {c BLC}{hline 26}{c BRC}

{col 2}{bf:{help mf_factorial_zh:factorial()}}{...}
{col 18}{cmd:factorial()}{...}
{col 42}阶乘
{col 18}{cmd:lnfactorial()}{...}
{col 42}阶乘的自然对数
{col 18}{cmd:gamma()}{...}
{col 42}伽马函数
{col 18}{cmd:lngamma()}{...}
{col 42}伽马函数的自然对数
{col 18}{cmd:digamma()}{...}
{col 42} {cmd:lngamma()} 的导数
{col 18}{cmd:trigamma()}{...}
{col 42} {cmd:lngamma()} 的二阶导数

{col 2}{bf:{help mf_comb_zh:comb()}}{...}
{col 18}{cmd:comb()}{...}
{col 42}组合函数 {it:n} 选择 {it:k}

{col 2}{bf:{help mf_cvpermute_zh:cvpermute()}}{...}
{col 18}{cmd:cvpermutesetup()}{...}
{col 42}置换设置
{col 18}{cmd:cvpermute()}{...}
{col 42}返回置换，每次一个

{col 2}   {c TLC}{hline 27}{c TRC}
{col 2}{hline 3}{c RT}{it: 密度与分布 }{c LT}{hline}
{col 2}   {c BLC}{hline 27}{c BRC}

{col 2}{bf:{help mf_normal_zh:normal()}}{...}
{col 18}{cmd:normalden()}{...}
{col 42}正态密度
{col 18}{cmd:normal()}{...}
{col 42}累积正态
{col 18}{cmd:invnormal()}{...}
{col 42}逆累积正态
{col 18}{cmd:lnnormalden()}{...}
{col 42}正态密度的对数
{col 18}{cmd:lnnormal()}{...}
{col 42}累积正态的对数
{col 18}{hline 10}
{col 18}{cmd:binormal()}{...}
{col 42}累积二元
{col 18}{hline 10}
{col 18}{cmd:lnmvnormalden()}{...}
{col 42}多元正态的对数
{col 42}  密度
{col 18}{hline 10}
{col 18}{cmd:betaden()}{...}
{col 42}贝塔密度
{col 18}{cmd:ibeta()}{...}
{col 42}累积贝塔；
{col 42}  亦称不完全贝塔函数
{col 18}{cmd:ibetatail()}{...}
{col 42}逆累积贝塔
{col 18}{cmd:invibeta()}{...}
{col 42}逆累积贝塔
{col 18}{cmd:invibetatail()}{...}
{col 42}逆逆累积贝塔
{col 18}{hline 10}
{col 18}{cmd:binomialp()}{...}
{col 42}二项概率
{col 18}{cmd:binomial()}{...}
{col 42}累积二项
{col 18}{cmd:binomialtail()}{...}
{col 42}逆累积二项
{col 18}{cmd:invbinomial()}{...}
{col 42}逆累积二项
{col 18}{cmd:invbinomialtail()}{...}
{col 42}逆逆累积二项
{col 18}{hline 10}
{col 18}{cmd:cauchyden()}{...}
{col 42}柯西密度
{col 18}{cmd:cauchy()}{...}
{col 42}累积柯西
{col 18}{cmd:cauchytail()}{...}
{col 42}逆累积柯西
{col 18}{cmd:invcauchy()}{...}
{col 42}逆累积柯西
{col 18}{cmd:invcauchytail()}{...}
{col 42}逆逆累积柯西
{col 18}{cmd:lncauchyden()}{...}
{col 42}柯西密度的对数
{col 18}{hline 10}
{col 18}{cmd:chi2()}{...}
{col 42}累积卡方
{col 18}{cmd:chi2den()}{...}
{col 42}卡方密度
{col 18}{cmd:chi2tail()}{...}
{col 42}逆累积卡方
{col 18}{cmd:invchi2()}{...}
{col 42}逆累积卡方
{col 18}{cmd:invchi2tail()}{...}
{col 42}逆逆累积卡方
{col 18}{hline 10}
{col 18}{cmd:dunnettprob()}{...}
{col 42}累积多重范围；用于
{col 42}  Dunnett的多重比较
{col 18}{cmd:invdunnettprob()}{...}
{col 42}逆累积多重范围；
{col 42}  用于Dunnett的多重
{col 42}  比较
{col 18}{hline 10}
{col 18}{cmd:exponentialden()}{...}
{col 42}指数密度
{col 18}{cmd:exponential()}{...}
{col 42}累积指数
{col 18}{cmd:exponentialtail()}{...}
{col 42}逆累积指数
{col 18}{cmd:invexponential()}{...}
{col 42}逆累积指数
{col 18}{cmd:invexponentialtail()}{...}
{col 42}逆逆累积指数
{col 18}{hline 10}
{col 18}{cmd:Fden()}{...}
{col 42}F密度
{col 18}{cmd:F()}{...}
{col 42}累积F
{col 18}{cmd:Ftail()}{...}
{col 42}逆累积F
{col 18}{cmd:invF()}{...}
{col 42}逆累积F
{col 18}{cmd:invFtail()}{...}
{col 42}逆逆累积F
{col 18}{hline 10}
{col 18}{cmd:gammaden()}{...}
{col 42}伽马密度
{col 18}{cmd:gammap()}{...}
{col 42}累积伽马；
{col 42}  亦称不完全伽马函数
{col 18}{cmd:gammaptail()}{...}
{col 42}逆累积伽马
{col 18}{cmd:invgammap()}{...}
{col 42}逆累积伽马
{col 18}{cmd:invgammaptail()}{...}
{col 42}逆逆累积伽马
{col 18}{cmd:dgammapda()}{...}
{col 42}{it:dg/da}
{col 18}{cmd:dgammapdx()}{...}
{col 42}{it:dg/dx}
{col 18}{cmd:dgammapdada()}{...}
{col 42}{it:d2g/da2}
{col 18}{cmd:dgammapdadx()}{...}
{col 42}{it:d2g/dadx}
{col 18}{cmd:dgammapdxdx()}{...}
{col 42}{it:d2g/dx2}
{col 18}{cmd:lnigammaden()}{...}
{col 42}逆伽马密度的对数
{col 18}{hline 10}
{col 18}{cmd:hypergeometricp()}{...}
{col 42}超几何概率
{col 18}{cmd:hypergeometric()}{...}
{col 42}累积超几何
{col 18}{hline 10}
{col 18}{cmd:igaussianden()}{...}
{col 42}逆高斯密度
{col 18}{cmd:igaussian()}{...}
{col 42}累积逆高斯
{col 18}{cmd:igaussiantail()}{...}
{col 42}逆累积逆高斯 
{col 18}{cmd:invigaussian()}{...}
{col 42}逆累积逆高斯
{col 18}{cmd:invigaussiantail()}{...}
{col 42}逆逆累积逆高斯
{col 18}{cmd:lnigaussianden()}{...}
{col 42}逆高斯的对数密度
{col 42}  密度
{col 18}{hline 10}
{col 18}{cmd:laplaceden()}{...}
{col 42}拉普拉斯密度
{col 18}{cmd:laplace()}{...}
{col 42}累积拉普拉斯
{col 18}{cmd:laplacetail()}{...}
{col 42}逆累积拉普拉斯
{col 18}{cmd:invlaplace()}{...}
{col 42}逆累积拉普拉斯
{col 18}{cmd:invlaplacetail()}{...}
{col 42}逆逆累积拉普拉斯
{col 18}{cmd:lnlaplaceden()}{...}
{col 42}拉普拉斯密度的对数
{col 18}{hline 10}
{col 18}{cmd:logisticden()}{...}
{col 42}逻辑密度
{col 18}{cmd:logistic()}{...}
{col 42}累积逻辑
{col 18}{cmd:logistictail()}{...}
{col 42}逆累积逻辑
{col 18}{cmd:invlogistic()}{...}
{col 42}逆累积逻辑
{col 18}{cmd:invlogistictail()}{...}
{col 42}逆逆累积逻辑
{col 18}{hline 10}
{col 18}{cmd:nbetaden()}{...}
{col 42}非中心贝塔密度
{col 18}{cmd:nibeta()}{...}
{col 42}累积非中心贝塔
{col 18}{cmd:invnibeta()}{...}
{col 42}逆累积非中心贝塔
{col 18}{hline 10}
{col 18}{cmd:nbinomialp()}{...}
{col 42}负二项概率
{col 18}{cmd:nbinomial()}{...}
{col 42}累积负二项
{col 18}{cmd:nbinomialtail()}{...}
{col 42}逆累积负二项
{col 18}{cmd:invnbinomial()}{...}
{col 42}逆累积负二项
{col 18}{cmd:invnbinomialtail()}{...}
{col 42}逆逆累积负二项
{col 18}{hline 10}
{col 18}{cmd:nchi2()}{...}
{col 42}累积非中心卡方
{col 18}{cmd:nchi2den()}{...}
{col 42}非中心卡方密度
{col 18}{cmd:nchi2tail()}{...}
{col 42}逆累积非中心卡方
{col 18}{cmd:invnchi2()}{...}
{col 42}逆累积非中心卡方
{col 18}{cmd:invnchi2tail()}{...}
{col 42}逆逆累积非中心卡方
{col 18}{cmd:npnchi2()}{...}
{col 42}{cmd:nchi2()} 的非中心参数
{col 18}{hline 10}
{col 18}{cmd:nF()}{...}
{col 42}累积非中心F
{col 18}{cmd:nFden()}{...}
{col 42}非中心F密度
{col 18}{cmd:nFtail()}{...}
{col 42}逆累积非中心F
{col 18}{cmd:invnF()}{...}
{col 42}逆累积非中心F
{col 18}{cmd:invnFtail()}{...}
{col 42}逆逆累积非中心F
{col 18}{cmd:npnF()}{...}
{col 42}{cmd:nF()} 的非中心参数
{col 18}{hline 10}
{col 18}{cmd:nt()}{...}
{col 42}累积非中心学生t
{col 18}{cmd:ntden()}{...}
{col 42}非中心学生t密度
{col 18}{cmd:nttail()}{...}
{col 42}逆累积非中心t
{col 18}{cmd:invnt()}{...}
{col 42}逆累积非中心t
{col 18}{cmd:invnttail()}{...}
{col 42}逆逆累积非中心t
{col 18}{cmd:npnt()}{...}
{col 42}{cmd:nt()} 的非中心参数
{col 18}{hline 10}
{col 18}{cmd:poissonp()}{...}
{col 42}泊松概率
{col 18}{cmd:poisson()}{...}
{col 42}累积泊松
{col 18}{cmd:poissontail()}{...}
{col 42}逆累积泊松
{col 18}{cmd:invpoisson()}{...}
{col 42}逆累积泊松
{col 18}{cmd:invpoissontail()}{...}
{col 42}逆逆累积泊松
{col 18}{hline 10}
{col 18}{cmd:t()}{...}
{col 42}累积学生t
{col 18}{cmd:tden()}{...}
{col 42}学生t密度
{col 18}{cmd:ttail()}{...}
{col 42}逆累积学生t
{col 18}{cmd:invt()}{...}
{col 42}逆累积学生t
{col 18}{cmd:invttail()}{...}
{col 42}逆逆累积学生t
{col 18}{hline 10}
{col 18}{cmd:tukeyprob()}{...}
{col 42}累积多重范围；
{col 42}  用于Tukey的多重比较
{col 18}{cmd:invtukeyprob()}{...}
{col 42}逆累积多重范围；
{col 42}  用于Tukey的多重比较
{col 18}{hline 10}
{col 18}{cmd:weibullden()}{...}
{col 42}韦布尔密度
{col 18}{cmd:weibull}{...}
{col 42}累积韦布尔
{col 18}{cmd:weibulltail()}{...}
{col 42}逆累积韦布尔
{col 18}{cmd:invweibull()}{...}
{col 42}逆累积韦布尔
{col 18}{cmd:invweibulltail()}{...}
{col 42}逆逆累积韦布尔
{col 18}{hline 10}
{col 18}{cmd:weibullphden()}{...}
{col 42}韦布尔（比例风险）密度
{col 18}{cmd:weibullph}{...}
{col 42}累积韦布尔（比例
{col 42}  风险）
{col 18}{cmd:weibullphtail()}{...}
{col 42}逆累积韦布尔
{col 42}  （比例风险）
{col 18}{cmd:invweibullph()}{...}
{col 42}逆累积韦布尔
{col 42}  （比例风险）
{col 18}{cmd:invweibullphtail()}{...}
{col 42}逆逆累积韦布尔
{col 42}  （比例风险）
{col 18}{hline 10}
{col 18}{cmd:lnwishartden()}{...}
{col 42}Wishart密度的对数
{col 18}{cmd:lniwishartden()}{...}
{col 42}逆Wishart密度的对数

{col 2}{bf:{help mf_mvnormal_zh:mvnormal()}}{...}
{col 18}{cmd:mvnormal()}{...}
{col 42}多元正态概率
{col 42}  （指定相关性）
{col 18}{cmd:mvnormalcv()}{...}
{col 42}多元正态概率
{col 42}  （指定协方差）
{col 18}{cmd:mvnormalqp()}{...}
{col 42}{cmd:mvnormal()} 与指定
{col 42}  数值点
{col 18}{cmd:mvnormalcvqp()}{...}
{col 42}{cmd:mvnormalcv()} 与指定 
{col 42}  数值点
{col 18}{cmd:mvnormalderiv()}{...}
{col 42} {cmd:mvnormal()} 的导数
{col 18}{cmd:mvnormalcvderiv()}{...}
{col 42} {cmd:mvnormalcv()} 的导数
{col 18}{cmd:mvnormaldervqp()}{...}
{col 42} {cmd:mvnormalderiv()} 与指定
{col 42}  数值点
{col 18}{cmd:mvnormalcvderivqp()}{...}
{col 42} {cmd:mvnormalcvderiv()} 与指定
{col 42}  数值点

{col 2}   {c TLC}{hline 29}{c TRC}
{col 2}{hline 3}{c RT}{it: 最大化与最小化 }{c LT}{hline}
{col 2}   {c BLC}{hline 29}{c BRC}

{col 2}{bf:{help mf_optimize_zh:optimize()}}{...}
{col 18}{cmd:optimize()}{...}
{col 42}函数最大化与最小化
{col 18}{cmd:optimize_evaluate()}{...}
{col 42}在初始值上评估函数
{col 18}{cmd:optimize_init()}{...}
{col 42}开始优化
{col 18}{cmd:optimize_init_}{it:*}{cmd:()}{...}
{col 42}设置细节
{col 18}{cmd:optimize_result_}{it:*}{cmd:()}{...}
{col 42}访问结果
{col 18}{cmd:optimize_query()}{...}
{col 42}报告设置

{col 2}{bf:{help mf_moptimize_zh:moptimize()}}{...}
{col 18}{cmd:moptimize()}{...}
{col 42}函数优化
{col 18}{cmd:moptimize_evaluate()}{...}
{col 42}在初始值上评估函数
{col 18}{cmd:moptimize_init()}{...}
{col 42}开始设置优化问题
{col 18}{cmd:moptimize_init_}{it:*}{cmd:()}{...}
{col 42}设置细节 
{col 18}{cmd:moptimize_result_}{it:*}{cmd:()}{...}
{col 42}访问 {cmd:moptimize()} 结果
{col 18}{cmd:moptimize_ado_cleanup()}{...}
{col 42}在 ado 后执行清理 
{col 18}{cmd:moptimize_query()}{...}
{col 42}报告设置
{col 18}{cmd:moptimize_util_}{it:*}{cmd:()}{...}
{col 42}用于编写
{col 42}  评估函数和处理结果的工具函数
{col 2}{bf:{help mf_linearprogram_zh:LinearProgram()}}{...}
{col 18}{cmd:LinearProgram()}{...}
{col 42}线性规划

{col 2}   {c TLC}{hline 25}{c TRC}
{col 2}{hline 3}{c RT}{it: Logistic、赔率与相关 }{c LT}{hline}
{col 2}   {c BLC}{hline 25}{c BRC}

{col 2}{bf:{help mf_logit_zh:logit()}}{...}
{col 18}{cmd:logit()}{...}
{col 42}赔率比的对数
{col 18}{cmd:invlogit()}{...}
{col 42}赔率比的逆对数
{col 18}{cmd:cloglog()}{...}
{col 42}互补对数对数
{col 18}{cmd:invcloglog()}{...}
{col 42}逆互补对数对数

{col 2}   {c TLC}{hline 21}{c TRC}
{col 2}{hline 3}{c RT}{it: 多元正态 }{c LT}{hline}
{col 2}   {c BLC}{hline 21}{c BRC}

{col 2}{bf:{help mf_ghk_zh:ghk()}}{...}
{col 18}{cmd:ghk()}{...}
{col 42}GHK多元正态（MVN）
{col 42}  模拟器
{col 18}{cmd:ghk_init()}{...}
{col 42}GHK MVN初始化
{col 18}{cmd:ghk_init_}{it:*}{cmd:()}{...}
{col 42}设置细节
{col 18}{cmd:ghk()}{...}
{col 42}执行模拟
{col 18}{cmd:ghk_query_npts()}{...}
{col 42}返回模拟点的数量

{col 2}{bf:{help mf_ghkfast_zh:ghkfast()}}{...}
{col 18}{cmd:ghkfast()}{...}
{col 42}GHK MVN模拟器
{col 18}{cmd:ghkfast_init()}{...}
{col 42}GHK MVN初始化
{col 18}{cmd:ghkfast_init_}{it:*}{cmd:()}{...}
{col 42}设置细节
{col 18}{cmd:ghkfast()}{...}
{col 42}执行模拟
{col 18}{cmd:ghkfast_i()}{...}
{col 42}第i观测值的结果
{col 18}{cmd:ghk_query_}{it:*}{cmd:()}{...}
{col 42}显示设置

{col 2}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
以上函数是统计性、概率性的，或者设计用于处理数据矩阵。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-4 StatisticalRemarksandexamples:备注与示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p2colset 8 29 32 2}{...}
{p 4 4 2}
关于数据矩阵，见 

{col 8}{...}
{bf:{help m4_stata_zh:[M-4] Stata}}{...}
{col 30}Stata界面函数

{p 4 4 2}
尤其是 

{col 8}{...}
{bf:{help mf_st_data_zh:[M-5] st_data()}}{...}
{col 30}加载当前Stata数据集的副本
{col 8}{...}
{p2col:{bf:{help mf_st_view_zh:[M-5] st_view()}}}{...}
 制作一个视图矩阵以映射当前Stata数据集

{p 4 4 2}
有关其他数学函数，见

{col 8}{...}
{bf:{help m4_matrix_zh:[M-4] 矩阵}}{...}
{col 30}矩阵数学函数

{col 8}{...}
{bf:{help m4_scalar_zh:[M-4] 数量}}{...}
{col 30}数量数学函数

{col 8}{...}
{bf:{help m4_mathematical_zh:[M-4] 数学}}{...}
{col 30}重要的数学函数
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_statistical.sthlp>}