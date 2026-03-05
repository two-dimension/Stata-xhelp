{smcl}
{* *! version 1.0.3  19oct2017}{...}
{vieweralsosee "[FMM] 术语表" "mansection FMM Glossary"}{...}
{viewerjumpto "描述" "fmm_glossary_zh##description"}{...}
{viewerjumpto "术语表" "fmm_glossary_zh##glossary"}
{help fmm_glossary:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[FMM] 术语表} {hline 2}}术语表{p_end}
{p2col:}({mansection FMM Glossary:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}常用术语在此定义。


{marker glossary}{...}
{title:术语表}

{marker categorical_latent_variable}{...}
{phang}
{bf:分类潜变量}.
	分类潜变量具有代表未观察到的人群中的不同组别的水平。 潜在类别由分类潜变量的水平确定，可能代表健康和不健康的个体、具有不同购买偏好的消费者或不同的违法行为动机。

{marker class_model}{...}
{phang}
{bf:类别模型}.
	类别模型是应用于混合模型中一个成分的回归模型。在没有协变量的情况下，回归模型简化为分布函数。

{pmore}
在文献中，类别模型也称为
“成分模型”、
“成分密度”或
“成分分布”。

{marker class_probability}{...}
{phang}
{bf:类别概率}.
	在FMM的语境中，属于给定类别的概率。 {cmd:fmm}使用多项式逻辑回归来建模类别概率。

{pmore}
类别概率在文献中也称为
“潜在类别概率”、 
“成分概率”、
“混合成分概率”、
“混合概率”、
“混合比例”、
“混合权重”，或
“混合概率”。

{phang}
{bf:EM算法}.
	见 {help fmm_glossary##expectation_maximization:{it:期望最大化算法}}。

{marker expectation_maximization}{...}
{phang}
{bf:期望最大化算法}.
	在FMM的语境中，用于在最大化似然之前精炼起始值的迭代过程。 EM算法使用完整数据的似然，就好像我们观察到了潜在类别指示变量的值。

{marker finite_mixture_model}{...}
{phang}
{bf:有限混合模型}.
	有限混合模型(FMM)是一个统计模型，假设在总体人群中存在未观察到的组别，称为{help fmm_glossary##latent_class:潜在类别}。每个潜在类别可以通过其自己的回归模型来拟合，该模型可能具有线性或{help fmm_glossary##generalized_linear_response_functions:广义线性响应函数}。我们可以比较具有不同数量的潜在类别和不同参数约束集的模型，以确定最佳拟合模型。对于给定的模型，我们可以比较各类别之间的参数估计。我们可以估计每个潜在类别在人群中的比例，并预测样本中观察值属于每个潜在类别的概率。

{phang}
{bf:FMM}.
	见 {help fmm_glossary##finite_mixture_model:{it:有限混合模型}}。

{marker generalized_linear_response_functions}{...}
{phang}
{bf:广义线性响应函数}.
	广义线性响应函数包括线性函数，以及如probit、logit、多项式逻辑、排序probit、排序logit、泊松等函数。

{pmore} 
	这些广义线性函数由链接函数g()和统计分布F描述。链接函数g()指定响应变量y_i与解释变量的线性方程{x}_i{beta}之间的关系，族F指定y_i的分布：

            g{E(y_i)} = {bf:x}_i{beta}     y_i sim F

{pmore}
	如果我们指定g()为恒等函数且F为高斯（正态）分布，则我们得到了线性回归。如果我们指定g()为logit函数且F为伯努利分布，则我们得到了logit（逻辑）回归。

{pmore} 
	在这个广义线性结构中，可能的家族包括高斯、伽马、伯努利、二项式、泊松、负二项、序数或多项式。链接函数可以是恒等、对数、logit、probit或互补log-log。

{marker latent_class}{...}
{phang}
{bf:潜在类别}.
	潜在类别是通过{help fmm_glossary##categorical_latent_variable:分类潜变量}的某个水平识别的未观察到的组。

{pmore}
潜在类别在文献中也称为
“类”、
“组”、
“类型”或
“混合成分”。

{phang}
{bf:潜变量}.
	见 {help fmm_glossary##categorical_latent_variable:{it:分类潜变量}}。

{phang}
{bf:点质量密度}.
	在FMM的语境中，一种取单个整数值的退化分布，其概率为1。 点质量密度通常与其他FMM分布结合使用，以建模最常见的零膨胀结果。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_glossary.sthlp>}