
{smcl}
{* *! version 1.0.1  15feb2017}{...}
{title:什么是线性化对数似然？}

{help j_menl_linearll:English Version}
{hline}
{pstd}
{cmd:menl} 使用术语 {it:linearization} {it:log} {it:likelihood} 来指
代优化中使用的目标函数值。

{pstd}
{cmd:menl} 使用 {help j_menl_linearll##LB1990:林德斯特龙和贝茨 (1990)} 的线性化方法，
并吸收了 {help j_menl_linearll##PB1995:皮尼罗和贝茨 (1995)} 的扩展，
进行估计。线性化方法利用所指定的非线性均值函数的一阶泰勒级数展开
来将其近似为固定效应和随机效应的线性函数。因此，非线性混合效应 (NLME)
模型被线性混合效应 (LME) 模型近似，其中固定效应和随机效应设计矩阵包含
非线性均值函数对固定效应（系数）和随机效应的导数。线性化对数似然
是该近似 LME 模型的对数似然值。


{title:参考文献}

{marker LB1990}{...}
{phang}
林德斯特龙，M. J. 和贝茨，D. M. 1990. 针对重复测量数据的非线性混合效应模型。 
{it:Biometrics} 46: 673-687.

{marker PB1995}{...}
{phang}
皮尼罗，J. C. 和贝茨，D. M. 1995. 非线性混合效应模型中对数似然函数的近似。 
{it:计算与图形统计学杂志} 4: 12-35.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_menl_linearll.sthlp>}