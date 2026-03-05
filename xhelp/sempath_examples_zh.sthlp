
{smcl}
{* *! version 1.0.2  29may2013}{...}
{bf:来自以下的示例路径图}
{bf:[SEM] Stata 结构方程建模参考手册}
{help sempath_examples:English Version}
{hline}
{hline}
{p 0 0}点击右下角的 {bf:{stata " ":SEM}} 打开路径图，或点击 {bf:{stata " ":SEM/dta}} 打开图和相关数据集。点击左下角的示例编号可打开相关示例的 PDF 文档。需要网络访问。{p_end}
{hline}

{p 0 4}
{space 73}图{p_end}
{p 0 4}
{space 62}图{space 3}和数据{p_end}
{hline}
{p 0 4}
{findalias semsfmm}{space 4}单因素测量模型
	  {space 16}{bf:{stata "webgetsem sem_1fmm":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_1fmm sem_1fmm":SEM/dta}}{p_end}
{p 0 4}
{findalias semssd}{space 4}从已发布的协方差创建数据集
	  {space  2}{it:没有新的图}{p_end}
{p 0 4}
{findalias semtfmm}{space 4}双因素测量模型
	  {space 19}{bf:{stata "webgetsem sem_2fmm":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_2fmm sem_2fmm":SEM/dta}}{p_end}
{p 0 4}
{findalias semgof}{space 4}拟合优度统计
	  {space 21}{it:没有新的图}{p_end}
{p 0 4}
{findalias semmindices}{space 4}修正指数
	  {space 27}{it:没有新的图}{p_end}
{p 0 4}
{findalias semreg}{space 4}线性回归
	  {space 30}{bf:{stata "webgetsem sem_regress":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_regress autowt2":SEM/dta}}{p_end}
{p 0 4}
{findalias semnrsm}{space 4}非递归结构模型
	  {space 18}{bf:{stata "webgetsem sem_sm1":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_sm1 sem_sm1":SEM/dta}}{p_end}
{p 0 4}
{findalias sembequal}{space 4}测试和限制系数
	  {space  5}{it:没有新的图}{p_end}
{p 0 4}
{findalias semmc}{space 4}带测量成分的结构模型
	  {space  4}{bf:{stata "webgetsem sem_sm2":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_sm2 sem_sm2":SEM/dta}}{p_end}
{p 0 4}
{findalias semmimic}{space 3}MIMIC模型
	 {space 36}{bf:{stata "webgetsem sem_mimic1":SEM}}
	 {space  3}{bf:{stata "webgetsem sem_mimic1 sem_mimic1":SEM/dta}}{p_end}
{p 0 4}
{findalias semframework}{space 3}estat框架
	  {space 32}{it:没有新的图}{p_end}
{p 0 4}
{findalias semsureg}{space 3}表面无关回归
	  {space 17}{bf:{stata "webgetsem sem_sureg":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_sureg auto":SEM/dta}}{p_end}
{p 0 4}
{findalias semeqtest}{space 3}方程级Wald检验
	  {space 23}{it:没有新的图}{p_end}
{p 0 4}
{findalias sempredict}{space 3}预测值
	  {space 31}{it:没有新的图}{p_end}
{p 0 4}
{findalias semhcfa}{space 3}高阶CFA
	  {space 31}{bf:{stata "webgetsem sem_hcfa1":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_hcfa1 sem_hcfa1":SEM/dta}}{p_end}
{p 0 4}
{findalias semcorr}{space 3}相关性
	  {space 36}{bf:{stata "webgetsem sem_corr":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_corr census13":SEM/dta}}{p_end}
{p 0 4}
{findalias semcu}{space 3}相关唯一性模型
	  {space 20}{bf:{stata "webgetsem sem_cu1":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_cu1 sem_cu1":SEM/dta}}{p_end}
{p 0 4}
{findalias semlgm}{space 3}潜在增长模型
	  {space 28}{bf:{stata "webgetsem sem_lcm":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_lcm sem_lcm":SEM/dta}}{p_end}
{p 0 4}
{findalias semssdg}{space 3}从原始数据创建多组摘要统计数据
	  {space  0}{it:没有新的图}{p_end}
{p 0 4}
{findalias semtfmmg}{space 3}按组的双因素测量模型
	  {space 10}{bf:{stata "webgetsem sem_2fmmby":SEM}}
	  {space  3}{bf:{stata "webgetsem sem_2fmmby sem_2fmmby":SEM/dta}}{p_end}
{p 0 4}
{findalias semggof}{space 3}组级拟合优度
	  {space 20}{it:没有新的图}{p_end}
{p 0 4}
{findalias semginv}{space 3}测试组间参数相等
	  {space  7}{it:没有新的图}{p_end}
{p 0 4}
{findalias semcnsg}{space 3}在组间指定参数约束
	  {space  1}{it:没有新的图}{p_end}
{p 0 4}
{findalias semrel}{space 3}可靠性
	  {space 36}{it:没有新的图}{p_end}
{p 0 4}
{findalias semssdbuild}{space 3}从原始数据创建摘要统计数据
	  {space  1}{it:没有新的图}{p_end}
{p 0 4}
{findalias semmlmv}{space 3}使用随机缺失数据拟合模型
	  {space  3}{bf:{stata "webgetsem cfa_missing":SEM}}
	  {space  3}{bf:{stata "webgetsem cfa_missing cfa_missing":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemsfmm}{space 2}单因素测量模型（广义）
          {space  2}{bf:{stata "webgetsem gsem_1fmm":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_1fmm gsem_1fmm":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemoirt}{space 2}一参数逻辑IRT（Rasch）模型
          {space  7}{bf:{stata "webgetsem gsem_irt1":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_irt1 gsem_cfa":SEM/dta}}{p_end}
{p 0 4}
{space 19}1PL IRT模型，方差限制为 {cmd:1}
          {space  7}{bf:{stata "webgetsem gsem_irt2":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_irt2 gsem_cfa":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemtirt}{space 2}双参数逻辑IRT模型
          {space  15}{bf:{stata "webgetsem gsem_irt3":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_irt3 gsem_cfa":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemcfam}{space 2}双层测量模型（广义）
          {space  6}{bf:{stata "webgetsem gsem_mlcfa2":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_mlcfa2 gsem_cfa":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemtfmm}{space 2}双因素测量模型（广义）
          {space  5}{bf:{stata "webgetsem gsem_2fmm":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_2fmm gsem_cfa":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemsem}{space 2}完整结构方程模型（广义）
          {space  3}{bf:{stata "webgetsem gsem_sem":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_sem gsem_cfa":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemlogit}{space 2}逻辑回归
          {space  28}{bf:{stata "webgetsem gsem_logit":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_logit gsem_lbw":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemcombined}{space 2}组合模型（广义响应）
          {space  8}{bf:{stata "webgetsem gsem_comb":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_comb gsem_lbw":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemoprobit}{space 2}有序probit
          {space  33}{bf:{stata "webgetsem gsem_oprobit":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_oprobit gsem_issp93":SEM/dta}}{p_end}
{p 0 4}
{space 19}有序逻辑
          {space  31}{bf:{stata "webgetsem gsem_ologit":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_ologit gsem_issp93":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemmimic}{space 2}MIMIC模型（广义响应）
          {space  13}{bf:{stata "webgetsem gsem_mimic":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_mimic gsem_issp93":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemmlogit}{space 2}多项式逻辑回归
          {space  16}{bf:{stata "webgetsem gsem_mlogit1":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_mlogit1 gsem_sysdsn1":SEM/dta}}{p_end}
{p 0 4}
{space 19}带约束的多项逻辑模型
          {space  4}{bf:{stata "webgetsem sem_mlogit2":SEM}}
          {space  3}{bf:{stata "webgetsem sem_mlogit2 gsem_sysdsn1":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemmris}{space 2}随机截距模型
          {space  25}{bf:{stata "webgetsem gsem_rint":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_rint gsem_nlsy":SEM/dta}}{p_end}
{p 0 4}
{space 19}随机斜率模型
          {space  29}{bf:{stata "webgetsem gsem_rslope":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_rslope gsem_nlsy":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemtlevel}{space 2}三层模型（广义响应）
          {space  7}{bf:{stata "webgetsem gsem_3lev":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_3lev gsem_melanoma":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemcross}{space 2}交叉效应模型
          {space  26}{bf:{stata "webgetsem gsem_cross":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_cross gsem_fifeschool":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemtmlogit}{space 2}多项逻辑，共享随机效应
          {space  4}{bf:{stata "webgetsem gsem_mlmlogit1":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_mlmlogit1 gsem_lineup":SEM/dta}}{p_end}
{p 0 4}
{space 19}多项逻辑，独立随机效应
          {space  2}{bf:{stata "webgetsem gsem_mlmlogit2":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_mlmlogit2 gsem_lineup":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemmediation}{space 2}单层中介模型
          {space  22}{bf:{stata "webgetsem sem_med":SEM}}
          {space  3}{bf:{stata "webgetsem sem_med gsem_multmed":SEM/dta}}{p_end}
{p 0 4}
{space 19}双层中介模型
          {space  22}{bf:{stata "webgetsem gsem_mlmed":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_mlmed gsem_multmed":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemsel}{space 2}Heckman选择模型
          {space  24}{bf:{stata "webgetsem gsem_select":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_select gsem_multmed":SEM/dta}}{p_end}
{p 0 4}
{findalias gsemtreat}{space 2}内生处理效应模型
          {space  13}{bf:{stata "webgetsem gsem_treat":SEM}}
          {space  3}{bf:{stata "webgetsem gsem_treat gsem_union3":SEM/dta}}{p_end}{hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sempath_examples.sthlp>}