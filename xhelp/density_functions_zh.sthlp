{smcl}
{* *! version 2.1.6  15may2018}{...}
{vieweralsosee "[FN] 统计函数" "mansection FN Statisticalfunctions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FN] 按类别的函数" "help functions_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{vieweralsosee "[M-4] 统计" "help m4_statistical_zh"}{...}
{findalias asfrfunctions}{...}
{viewerjumpto "函数" "density functions##functions"}{...}
{viewerjumpto "参考文献" "density functions##references"}
{help density_functions:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[FN] 统计函数}}
{p_end}
{p2col:({mansection FN Statisticalfunctions:查看完整 PDF 手册条目})}{p_end}
{p2colreset}{...}


{marker functions}{...}
{title:函数}

{pstd}
概率分布和密度函数按照以下标题组织：

{phang2}{help density_functions##beta:贝塔分布和非中心贝塔分布}{p_end}
{phang2}{help density_functions##binomial:二项分布}{p_end}
{phang2}{help density_functions##cauchy:柯西分布}{p_end}
{phang2}{help density_functions##chisquare:卡方分布和非中心卡方分布}{p_end}
{phang2}{help density_functions##dunnett:邓内特多重范围分布}{p_end}
{phang2}{help density_functions##exponential:指数分布}{p_end}
{phang2}{help density_functions##F:F分布和非中心F分布}{p_end}
{phang2}{help density_functions##gamma:伽玛分布}{p_end}
{phang2}{help density_functions##hypergeometric:超几何分布}{p_end}
{phang2}{help density_functions##igaussian:反高斯分布}{p_end}
{phang2}{help density_functions##laplace:拉普拉斯分布}{p_end}
{phang2}{help density_functions##logistic:逻辑斯蒂分布}{p_end}
{phang2}{help density_functions##negative_binomial:负二项分布}{p_end}
{phang2}{help density_functions##normal:正态（高斯）、双正态及多元正态分布}{p_end}
{phang2}{help density_functions##poisson:泊松分布}{p_end}
{phang2}{help density_functions##t:斯图登特 t 分布和非中心斯图登特 t 分布}{p_end}
{phang2}{help density_functions##tukey:图基的学生化范围分布}{p_end}
{phang2}{help density_functions##weibull:威布尔分布}{p_end}
{phang2}{help density_functions##weibullph:威布尔（比例风险）分布}{p_end}
{phang2}{help density_functions##wishart:威沙特分布}{p_end}


{marker beta}{...}
{title:贝塔分布和非中心贝塔分布}

包含 help f_betaden

包含 help f_ibeta

包含 help f_ibetatail

包含 help f_invibeta

包含 help f_invibetatail

包含 help f_nbetaden

包含 help f_nibeta

包含 help f_invnibeta


{marker binomial}{...}
{title:二项分布}

包含 help f_binomialp

包含 help f_binomial

包含 help f_binomialtail

包含 help f_invbinomial

包含 help f_invbinomialtail


{marker cauchy}{...}
{title:柯西分布}

包含 help f_cauchyden

包含 help f_cauchy

包含 help f_cauchytail

包含 help f_invcauchy

包含 help f_invcauchytail

包含 help f_lncauchyden


{marker chisquare}{...}
{title:卡方分布和非中心卡方分布}

包含 help f_chi2den

包含 help f_chi2

包含 help f_chi2tail

包含 help f_invchi2

包含 help f_invchi2tail

包含 help f_nchi2den

包含 help f_nchi2

包含 help f_nchi2tail

包含 help f_invnchi2

包含 help f_invnchi2tail

包含 help f_npnchi2


{marker dunnett}{...}
{title:邓内特多重范围分布}

包含 help f_dunnettprob

包含 help f_invdunnettprob


{marker exponential}{...}
{title:指数分布}

包含 help f_exponentialden

包含 help f_exponential

包含 help f_exponentialtail

包含 help f_invexponential

包含 help f_invexponentialtail


{marker F}{...}
{title:F分布和非中心F分布}

包含 help f_fden

包含 help f_f

包含 help f_ftail

包含 help f_invf

包含 help f_invftail

包含 help f_nfden

包含 help f_nf

包含 help f_nftail

包含 help f_invnf

包含 help f_invnftail

包含 help f_npnf


{marker gamma}{...}
{title:伽玛分布}

包含 help f_gammaden

包含 help f_gammap

包含 help f_gammaptail

包含 help f_invgammap

包含 help f_invgammaptail

包含 help f_dgammapda

包含 help f_dgammapdada

包含 help f_dgammapdadx

包含 help f_dgammapdx

包含 help f_dgammapdxdx

包含 help f_lnigammaden


{marker hypergeometric}
{title:超几何分布}

包含 help f_hypergeometricp

包含 help f_hypergeometric


{marker igaussian}
{title:反高斯分布}

包含 help f_igaussianden

包含 help f_igaussian

包含 help f_igaussiantail

包含 help f_invigaussian

包含 help f_invigaussiantail

包含 help f_lnigaussianden


{marker laplace}{...}
{title:拉普拉斯分布}

包含 help f_laplaceden

包含 help f_laplace

包含 help f_laplacetail

包含 help f_invlaplace

包含 help f_invlaplacetail

包含 help f_lnlaplaceden


{marker logistic}{...}
{title:逻辑斯蒂分布}

包含 help f_logisticden

包含 help f_logistic

包含 help f_logistictail

包含 help f_invlogistic

包含 help f_invlogistictail


{marker negative_binomial}{...}
{title:负二项分布}

包含 help f_nbinomialp

包含 help f_nbinomial

包含 help f_nbinomialtail

包含 help f_invnbinomial

包含 help f_invnbinomialtail


{marker normal}{...}
{title:正态（高斯）、双正态及多元正态分布}

包含 help f_normalden

包含 help f_normal

包含 help f_invnormal

包含 help f_lnnormalden

包含 help f_lnnormal

包含 help f_binormal

包含 help f_lnmvnormalden


{marker poisson}{...}
{title:泊松分布}

包含 help f_poissonp

包含 help f_poisson

包含 help f_poissontail

包含 help f_invpoisson

包含 help f_invpoissontail


{marker t}{...}
{title:斯图登特 t 分布和非中心斯图登特 t 分布}

包含 help f_tden

包含 help f_t

包含 help f_ttail

包含 help f_invt

包含 help f_invttail

包含 help f_invnt

包含 help f_invnttail

包含 help f_ntden

包含 help f_nt

包含 help f_nttail

包含 help f_npnt


{marker tukey}{...}
{title:图基的学生化范围分布}

包含 help f_tukeyprob

包含 help f_invtukeyprob


{marker weibull}{...}
{title:威布尔分布}

包含 help f_weibullden

包含 help f_weibull

包含 help f_weibulltail

包含 help f_invweibull

包含 help f_invweibulltail


{marker weibullph}{...}
{title:威布尔（比例风险）分布}

包含 help f_weibullphden

包含 help f_weibullph

包含 help f_weibullphtail

包含 help f_invweibullph

包含 help f_invweibullphtail


{marker wishart}{...}
{title:威沙特分布}

包含 help f_lnwishartden

包含 help f_lniwishartden


{marker references}{...}
{title:参考文献}

{marker JKB1995}{...}
{phang}
Johnson, N. L., S. Kotz, and N. Balakrishnan.  1995.
{it:连续单变量分布, 第2卷}.  第二版.  纽约: Wiley.

{marker M1981}{...}
{phang}
Miller, R. G., Jr.  1981.
{it:同时统计推断}.  第二版.  纽约: Springer.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <density_functions.sthlp>}