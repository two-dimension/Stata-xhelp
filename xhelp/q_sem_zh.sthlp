
{smcl}
{* *! version 1.4.1  22may2019}{...}
{bf:Stata 结构方程建模参考手册所用数据集，版本 16}
{hline}
{help q_sem:English Version}
{hline}
{p}
Stata 文档中使用的数据集是为演示如何使用 Stata 而选择的。有些数据集经过修改以解释特定功能。请勿将这些数据集用于分析。
{p_end}
{hline}

{p 4 4 2}
还请参见 {help sempath_examples_zh:SEM 路径图示例} 以获取在 {it:Stata 结构方程建模参考手册} 中显示的路径图。
{p_end}

    {title:示例 1 - 单因子测量模型}
	sem_1fmm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_1fmm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_1fmm.dta":describe}

    {title:示例 3 - 两因子测量模型}
	sem_2fmm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_2fmm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_2fmm.dta":describe}

    {title:示例 4 - 拟合优度统计}
	sem_2fmm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_2fmm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_2fmm.dta":describe}

    {title:示例 5 - 修改指数}
	sem_2fmm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_2fmm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_2fmm.dta":describe}

    {title:示例 6 - 线性回归}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:示例 7 - 非递归结构模型}
	sem_sm1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_sm1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_sm1.dta":describe}

    {title:示例 8 - 测试系数是否相等并约束它们}
	sem_sm1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_sm1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_sm1.dta":describe}

    {title:示例 9 - 带测量组件的结构模型}
	sem_sm2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_sm2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_sm2.dta":describe}

    {title:示例 10 - MIMIC 模型}
	sem_mimic1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_mimic1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_mimic1.dta":describe}

    {title:示例 11 - estat 框架}
	sem_mimic1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_mimic1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_mimic1.dta":describe}

    {title:示例 12 - 看似不相关的回归}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:示例 13 - 方程级 Wald 测试}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:示例 14 - 预测值}
	sem_1fmm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_1fmm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_1fmm.dta":describe}

    {title:示例 16 - 高阶 CFA}
	sem_hcfa1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_hcfa1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_hcfa1.dta":describe}

    {title:示例 16 - 相关性}
	census13.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census13.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census13.dta":describe}

    {title:示例 17 - 相关独特性模型}
	sem_cu1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_cu1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_cu1.dta":describe}

    {title:示例 18 - 潜在增长模型}
	sem_lcm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_lcm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_lcm.dta":describe}

    {title:示例 20 - 按组的两因子测量模型}
	sem_2fmmby.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_2fmmby.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_2fmmby.dta":describe}

    {title:示例 21 - 组级拟合优度}
	sem_2fmmby.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_2fmmby.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_2fmmby.dta":describe}

    {title:示例 22 - 测试组间参数相等性}
	sem_2fmmby.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_2fmmby.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_2fmmby.dta":describe}

    {title:示例 23 - 指定组间参数约束}
	sem_2fmmby.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_2fmmby.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_2fmmby.dta":describe}

    {title:示例 24 - 可靠性}
	sem_rel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sem_rel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sem_rel.dta":describe}

    {title:示例 25 - 从原始数据创建摘要统计数据}
	auto2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto2.dta":describe}

    {title:示例 26 - 使用随机缺失数据拟合模型}
	cfa_missing.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cfa_missing.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cfa_missing.dta":describe}

    {title:示例 27g - 单因子测量模型（广义响应）}
	gsem_1fmm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_1fmm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_1fmm.dta":describe}

    {title:示例 28g - 单参数逻辑 IRT（Rasch）模型}
	gsem_cfa.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_cfa.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_cfa.dta":describe}

    {title:示例 29g - 两参数逻辑 IRT 模型}
	gsem_cfa.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_cfa.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_cfa.dta":describe}

    {title:示例 30g - 两级测量模型（多层，广义响应）}
	gsem_cfa.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_cfa.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_cfa.dta":describe}

    {title:示例 31g - 两因子测量模型（广义响应）}
	gsem_cfa.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_cfa.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_cfa.dta":describe}

    {title:示例 32g - 完整结构方程模型（广义响应）}
	gsem_cfa.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_cfa.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_cfa.dta":describe}

    {title:示例 33g - 逻辑回归}
	gsem_lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_lbw.dta":describe}

    {title:示例 34g - 组合模型（广义响应）}
	gsem_lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_lbw.dta":describe}

    {title:示例 35g - 有序概率和有序逻辑}
	gsem_issp93.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_issp93.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_issp93.dta":describe}

    {title:示例 36g - MIMIC 模型（广义响应）}
	gsem_issp93.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_issp93.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_issp93.dta":describe}

    {title:示例 37g - 多项逻辑回归}
	gsem_sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_sysdsn1.dta":describe}

    {title:示例 38g - 随机截距和随机斜率模型（多层）}
	gsem_nlsy.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_nlsy.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_nlsy.dta":describe}

    {title:示例 39g - 三层模型（多层，广义响应）}
	gsem_melanoma.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_melanoma.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_melanoma.dta":describe}

    {title:示例 40g - 交叉模型（多层）}
	gsem_fifeschool.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_fifeschool.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_fifeschool.dta":describe}

    {title:示例 41g - 两层多项逻辑回归（多层）}
	gsem_lineup.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_lineup.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_lineup.dta":describe}

    {title:示例 42g - 一层和两层中介模型（多层）}
	gsem_multmed.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_multmed.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_multmed.dta":describe}

    {title:示例 43g - Tobit 回归}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:示例 44g - 区间回归}
	intregxmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/intregxmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/intregxmpl.dta":describe}

    {title:示例 45g - Heckman 选择模型}
	gsem_womenwk.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_womenwk.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_womenwk.dta":describe}

    {title:示例 46g - 内生治疗效应模型}
	gsem_union3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_union3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_union3.dta":describe}

    {title:示例 47g - 指数生存模型}
	gsem_kva.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_kva.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_kva.dta":describe}

    {title:示例 48g - 带删失和截断数据的对数逻辑生存模型}
	gsem_diet.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_diet.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_diet.dta":describe}

    {title:示例 49g - 多组 Weibull 生存模型}
	gsem_cancer.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_cancer.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_cancer.dta":describe}

    {title:示例 50g - 潜在类别模型}
	gsem_lca1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_lca1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_lca1.dta":describe}

    {title:示例 51g - 潜在类别拟合优度统计}
	gsem_lca1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_lca1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_lca1.dta":describe}

    {title:示例 52g - 潜在轮廓模型}
	gsem_lca2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_lca2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_lca2.dta":describe}

    {title:示例 53g - 有限混合泊松回归}
	gsem_mixture.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_mixture.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_mixture.dta":describe}

    {title:示例 54g - 有限混合泊松回归，多个响应}
	gsem_mixture.dta{col 32}{stata "use http://www.stata-press.com/data/r16/gsem_mixture.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/gsem_mixture.dta":describe}
{hline}

{p}
StataCorp 感谢参考手册中的一些数据集是专有的，并在我们的印刷文档中经版权持有者的明确许可使用。如果任何版权持有者认为，因向公众提供这些数据集，StataCorp 违反了任何此类协议的内容或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，并将从此网页移除任何相关材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_sem.sthlp>}