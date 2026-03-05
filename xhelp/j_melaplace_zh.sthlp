{smcl}
{* *! version 1.0.5  23may2018}{...}
{vieweralsosee "[ME] me" "mansection ME me"}{...}
{vieweralsosee "[ME] meglm" "mansection ME meglm"}{...}
{vieweralsosee "[ME] mixed" "mansection ME mixed"}{...}
{viewerjumpto "什么是拉普拉斯近似" "j_melaplace_zh##define"}{...}
{viewerjumpto "如何计算拉普拉斯近似？" "j_melaplace_zh##calculate"}{...}
{viewerjumpto "如果拉普拉斯估计有偏，那么为什么我还要它？" "j_melaplace_zh##want"}{...}
{viewerjumpto "参考文献" "j_melaplace_zh##references"}
{help j_melaplace:English Version}
{hline}{...}
{marker define}{...}
{title:什么是拉普拉斯近似？}

{pstd}
拉普拉斯近似是一种计算高效的方法，用于在{help me##GLMM:广义线性混合效应模型}中计算对数似然。

{marker calculate}{...}
{title:如何计算拉普拉斯近似？}

{pstd}
在混合效应模型中计算对数似然需要将随机效应积分出去，这些随机效应假定服从正态分布，以便将似然表示为固定效应和总结随机效应的方差分量的函数。当响应是非高斯的（例如二元时），该积分没有闭合形式，必须通过其他方法进行近似。拉普拉斯方法通过将被积函数的形式用以随机效应最大化的正态分布进行近似来处理此任务。这些最大化者对应于给予响应的随机效应的后验分布的众数。

{pstd}
估计积分的另一种方法是自适应高斯-赫尔米特积分，此方法在{help me##GLMM:广义线性混合效应命令}中也可用。自适应积分仅仅是普通积分，其积分节点被调整以更好地捕捉被积函数的特征。在{help meglm_zh}及其他广义线性混合效应命令中，拉普拉斯近似等同于描述中提到的众数-曲率自适应高斯-赫尔米特积分，具有一个积分点。拉普拉斯近似是一种仅使用一个积分点（即众数）进行的积分。

{pstd}
由于拉普拉斯近似仅涉及一个积分点，因此估计速度可以比使用多个积分点的自适应积分快得多。当然，为这种速度付出代价。基于拉普拉斯近似的参数估计往往比基于多积分点自适应积分的估计表现出更大的偏差，这种偏差会随着积分点数量（及计算时间）的增加而减小。

{marker want}{...}
{title:如果拉普拉斯估计有偏，那么为什么我还要它？}

{pstd}
尽管其简单性，拉普拉斯近似的表现良好（{help j_melaplace##LP1994:刘和皮尔斯1994}; {help j_melaplace##TK1986:Tierney和Kadane 1986}），根据我们自己的实证证据和{help j_melaplace##PC2006:皮尼罗和赵（2006）}的模拟研究，偏差在估计的方差分量中往往比在估计的固定效应中更为明显。如果您对调整多层随机效应的固定效应的推断更感兴趣，而不是总结随机效应的方差分量的估计，那么拉普拉斯近似可能适合您的需求。

{pstd}
此外，拉普拉斯近似通常对整体模型对数似然提供良好的近似。因此，在您比较竞争模型（基于对数似然的LR测试）以确定最终模型的分析模型构建阶段中，拉普拉斯近似可以是有用的。

{marker references}{...}
{title:参考文献}

{marker LP1994}{...}
{phang}
刘, Q. 和 D. A. 皮尔斯. 1994. 关于高斯-赫尔米特积分的说明。
{it:生物统计学} 81: 624-629.{p_end}

{marker PC2006}{...}
{phang}皮尼罗, J. C. 和 E. C. 赵. 2006. 用于多层广义线性混合模型的高效拉普拉斯和自适应高斯积分算法。  
{it:计算与图形统计学杂志} 15: 58-81.{p_end}

{marker SRH2004}{...}
{phang}斯克朗达尔, A. 和 S. 拉贝-赫斯克斯. 2004.
{browse "http://www.stata.com/bookstore/generalized-latent-variable-modeling/":{it:广义潜变量建模：多层次、纵向和结构方程模型}}.
佛罗里达州博卡拉顿: 查普曼与霍尔/CRC.{p_end}

{marker TK1986}{...}
{phang}Tierney, L. 和 J. B. 卡丹. 1986. 后验时刻和边际密度的准确近似。  
{it:美国统计协会杂志} 81: 82-86.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_melaplace.sthlp>}