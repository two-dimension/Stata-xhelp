{smcl}
{* *! version 1.0.5  25feb2019}{...}
{vieweralsosee "[DSGE] Glossary" "mansection DSGE Glossary"}{...}
{viewerjumpto "Description" "dsge_glossary_zh##description"}{...}
{viewerjumpto "Glossary" "dsge_glossary_zh##glossary"}{...}
{viewerjumpto "Reference" "dsge_glossary_zh##reference"}
{help dsge_glossary:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[DSGE] Glossary} {hline 2}}术语表{p_end}
{p2col:}({mansection DSGE Glossary:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker description}{...}
{title:描述}

{pstd}这里定义了一些常用的术语。


{marker glossary}{...}
{title:术语表}

{phang}
{bf:自回归过程}。
自回归过程是一种时间序列，其中一个变量的当前值是其过去值的线性函数加上一个白噪声误差项。一个一阶自回归过程，记作 AR(1) 过程，其形式为 y_t = rho y_{t-1} + epsilon_t。AR(p) 模型包含 p 个滞后值的因变量。

{marker conditional_mean}{...}
{phang}
{bf:条件均值}。
条件均值表示一个变量的均值作为其他变量的函数。回归函数是条件均值的一个例子。

{marker control_variable}{...}
{phang}
{bf:控制变量}。
控制变量是一个{help dsge_glossary##endogenous_variable:内生变量}。
控制变量可以是可观察的或不可观察的。

{pmore}
在一个 {help dsge_glossary##structural_model:结构性} DSGE 模型中，控制变量的当前值依赖于其他控制变量的当前值、任何控制变量的预期未来值，以及状态变量的当前值。控制变量的当前值通过求解模型得到{help dsge_glossary##state_space:状态空间形式}。

{marker covariance_stationary}{...}
{phang}
{bf:协方差平稳}。
协方差平稳过程是一个{help dsge_glossary##weakly_stationary:弱平稳}过程。

{marker dynamic_forecast}{...}
{phang}
{bf:动态预测}。
动态预测在模型中滞后变量出现的地方使用预测值，从而允许对未来多个时期进行预测。

{phang}
{bf:动态随机一般均衡模型}。
动态随机一般均衡模型是一种多变量时间序列模型，规定了状态变量与控制变量之间的结构关系，通常源自经济理论。

{marker endogenous_variable}{...}
{phang}
{bf:内生变量}。
内生变量是由{help dsge_glossary##structural_model:结构模型}的均衡所决定的变量。
内生变量的值是在系统内部决定的。

{phang}
{bf:均衡}。
模型中变量的均衡值是同时满足模型所有方程的值。

{marker exogenous_variable}{...}
{phang}
{bf:外生变量}。
外生变量是其值独立于 {help dsge_glossary##structural_model:结构模型} 中其他变量变化的变量。
外生变量的值是在系统外部决定的。
在时间序列模型中，外生变量也是一个{help dsge_glossary##predetermined:预先确定的变量}。

{phang}
{bf:预期未来值}。
预期未来值是基于当前信息对某个变量未来值的预测。在 DSGE 模型中，预期未来值是在 {help dsge_glossary##rational_expectations:理性预期} 下计算的。

{pmore}
在理性预期下，E_t(y_{t+1}) 是 y_{t+1} 的条件均值，条件是基于模型中所有变量的完整历史和模型本身的结构。

{marker forward_operator}{...}
{phang}
{bf:前向算子}。
前向算子 F 表示变量在时间 t + 1 的值。形式上，Fy_t = y_{t+1}，F^2y_t = Fy_{t+1} = y_{t+2}。
前向算子也称为领先算子。

{phang}
{bf:识别}。
识别是估计模型参数所需的一种条件。换句话说，只有识别的参数才能被估计。

{pmore}
在 DSGE 模型中，当存在唯一的参数向量使得似然函数达到最大值时，参数是被识别的。关于识别的讨论见 {manlink DSGE Intro 6}。

{phang}
{bf:脉冲响应函数}。
脉冲响应函数 (IRF) 衡量对内生变量的冲击对自身或另一个内生变量的影响。变量 i 对变量 j 的第 k 个脉冲响应函数测量在时间 t 受到变量 i 在时间 t 的单位冲击时对变量 j 在时间 t + k 的影响，同时保持其他条件不变。

{phang}
{bf:独立同分布}。
一系列观察值是独立同分布 (i.i.d.) 的，如果每个观察值都是来自同一潜在分布的独立实现。在某些情况下，定义被放宽意味着观察值是独立的，并且具有相同的均值和方差；见 {help dsge_glossary##DM1993:Davidson 和 MacKinnon (1993)}。

{phang}
{bf:初始值}。
初始值指定了 DSGE 所用迭代最大化算法的起始位置。

{phang}
{bf:卡尔曼滤波器}。
卡尔曼滤波器是一种递归程序，用于预测状态空间模型中的状态向量。

{phang}
{bf:滞后算子}。
滞后算子 L 表示变量在时间 t - 1 的值。形式上，Ly_t = y_{t-1}，L^2y_t = Ly_{t-1} = y_{t-2}。

{phang}
{bf:领先算子}。见 {it:{help dsge_glossary##forward_operator:前向算子}}。

{phang}
{bf:似然比 (LR) 检验}。
LR 检验是一种经典测试程序，用于比较两个模型的拟合效果，其中一个被约束模型嵌套在完整（不受约束）模型中。在原假设下，约束模型与完整模型对数据的拟合效果相同。LR 检验需要确定约束模型和完整模型的对数似然函数的最大值。

{phang}
{bf:线性化模型}。
线性化模型是对一个非线性变量和参数模型的近似。该近似在变量上是线性的，但在参数上可能是非线性的。在一个线性化模型中，变量被解释为偏离稳态的单位偏差。

{phang}
{bf:对数线性模型}。
对数线性模型是对一个非线性变量和参数模型的近似。在对数线性模型中，变量被解释为偏离稳态的百分比偏差。

{phang}
{bf:模型解}。
模型解是以外生变量为函数的{help dsge_glossary##endogenous_variable:内生变量}的函数。
模型解也称为模型的{help dsge_glossary##reduced_form:简化形式}。

{pmore}
在 DSGE 术语中，模型解将控制变量表示为仅依赖于状态变量的函数，并将状态变量表示为其在上一个时期的值和冲击的函数。DSGE 模型的简化形式也称为 {help dsge_glossary##state_space:状态空间形式}。

{marker model_consistent}{...}
{phang} 
{bf:与模型一致的预期}。
与模型一致的预期是由所考虑的模型隐含的变量的{help dsge_glossary##conditional_mean:条件均值}。

{pmore}
例如，根据 {help dsge_glossary##rational_expectations:理性预期}，E_t(y_{t+1}) 的与模型一致的预期是基于时间 t 或之前变量实现的 y_{t+1} 的均值。

{phang}
{bf:非预定变量}。
非预定变量是时间 t 的值由模型中的方程组决定的变量。与 {help dsge_glossary##predetermined:预定变量} 相对。

{phang} 
{bf:原假设}。
在假设检验中，原假设通常表示一个试图被驳斥的推测。通常原假设是某个参数为零，或者某个统计量在不同群体之间相等。

{phang}
{bf:一步预测}。见 {help dsge_glossary##static_forecast:{it:静态预测}}。

{phang}
{bf:政策矩阵}。
DSGE 模型的{help dsge_glossary##reduced_form:简化形式}中的政策矩阵是将控制变量作为状态变量的函数表示的矩阵。

{marker predetermined}{...}
{phang}
{bf:预定变量}。
预定变量是在时间 t 固定的变量，其值在之前发生的一切事物已经确定的情况下固定。更技术性地说，预定变量的值是固定的，给定时间 t - 1、t - 2 等所有已观察和未观察变量的{help dsge_glossary##realization:实现}。

{marker rational_expectations}{...}
{phang}
{bf:理性预期}。
变量的理性预期不会以可预测的方式偏离该变量的均值。更技术性地说，变量的理性预期是模型所隐含的{help dsge_glossary##conditional_mean:条件均值}。

{marker realization}{...}
{phang}
{bf:实现}。
随机变量的实现是当其被抽取时所取的值。

{marker reduced_form}{...}
{phang}
{bf:简化形式}。
模型的简化形式表示内生变量作为外生变量的函数。

{pmore}
DSGE 模型的简化形式将控制变量作为状态变量的函数表示，并将状态变量作为过去时期值和冲击的函数表示。DSGE 模型的简化形式是一个 {help dsge_glossary##state_space:状态空间模型}。

{phang}
{bf:鞍点稳定}。
鞍点稳定模型是一个可解的{help dsge_glossary##structural_model:结构模型}，其状态空间形式。鞍点稳定解的存在取决于模型的参数值。有关鞍点稳定性的讨论，见 {manlink DSGE Intro 5}。

{phang}
{bf:冲击变量}。
冲击变量是指定为独立同分布 (i.i.d.) 随机变量的随机变量。
在正态分布冲击下导出的最大似然估计在 i.i.d. 冲击下也保持一致。当误差为 i.i.d. 而未正态分布时，必须指定稳健标准误差。

{phang}
{bf:状态转移矩阵}。
DSGE 模型的{help dsge_glossary##reduced_form:简化形式}中的状态转移矩阵是表示未来状态变量值如何依赖于当前值的矩阵。

{marker state_variable}{...}
{phang}
{bf:状态变量}。
状态变量是一个不可观察的外生变量。

{pmore}
在 DSGE 模型中，状态变量是一个不可观察的外生变量，可能依赖于自身的历史值、其他状态变量的历史值和冲击。

{marker state_space}{...}
{phang}
{bf:状态空间模型}。
状态空间模型描述了观察到的时间序列与未观察的状态向量之间的关系，该向量表示世界的“状态”。测量方程将观察到的序列表示为状态向量的函数，转移方程描述未观察状态向量随时间的演变。通过适当定义测量和转移方程的参数，可以用状态空间形式编写多种时间序列模型。

{pmore}
在 DSGE 模型中，状态空间形式是{help dsge_glossary##reduced_form:简化形式}的{help dsge_glossary##structural_model:结构模型}。

{pmore}
DSGE 框架改变了术语和状态空间模型的结构。
测量方程是控制变量的方程组，转移方程是状态变量的方程组。
与标准状态空间模型相比，DSGE 模型允许控制变量不可观察。

{marker static_forecast}{...}
{phang}
{bf:静态预测}。
静态预测在模型中滞后变量出现的地方使用实际值。因此，静态预测至少与 {help dsge_glossary##dynamic_forecast:动态预测} 一样好，但静态预测无法在模型中滞后内生变量的情况下产生未来的预测。

{pmore}
由于在数据集中最后一个历史时期之后实际值将缺失，静态预测只能预测一个时期的未来（假设模型中仅出现第一阶滞后）；因此，它们通常被称为一步预测。

{phang}
{bf:稳态均衡}。
稳态均衡是动态系统的一个不随时间变化的静态点。

{pmore}
更技术性地说，稳态均衡是内生变量的一组值，动态系统在外生变量变化或随机冲击发生后将返回到的这些值。这组值是时间不变的，因为它不依赖于变化或冲击发生的时间阶段。多步 {help dsge_glossary##dynamic_forecast:动态预测} 收敛到这些值。稳态均衡也称为长期均衡，因为它指定了时间不变的内生变量值，且在没有冲击的情况下，动态系统将返回到这些值。

{phang}
{bf:随机方程}。
随机方程与一个身份方程相对，是预测模型中包括随机成分的方程，通常以加性误差项的形式出现。随机方程包括必须根据历史数据估计的参数。

{phang}
{bf:随机趋势}。
随机趋势是一种非平稳随机过程。单位根过程和随机系数时间是两种常见的随机趋势。见 {manhelp ucm TS} 了解更多常用随机趋势的示例和讨论。

{phang}
{bf:严格平稳}。
如果 y_{1}, ..., y_{k} 的联合分布与 y_{1+tau}, ..., y_{k+tau} 的联合分布相同（对所有的 k 和 tau），则一个过程是严格平稳的。从直观上看，通过 tau 单位移动序列的原点不会影响联合分布。

{marker structural_model}{...}
{phang}
{bf:结构模型}。
结构模型规定了一组变量之间的理论关系。结构模型包含内生变量和外生变量。
参数估计和解释要求结构模型以简化形式求解。

{phang}
{bf:趋势}。
趋势指定时间序列的长期行为。趋势可以是确定性的或随机的。许多经济、生物、健康和社会时间序列都有长期的上升或下降趋势。在 1980 年之前，大多数时间序列分析将长期趋势指定为时间的确定性函数。自 1980 年代以来，由单位根过程所暗示的随机趋势已成为工具箱的标准部分。

{phang} 
{bf:沃尔德检验}。
沃尔德检验是一种经典测试程序，用于比较两个模型的拟合效果，其中一个被约束模型嵌套在完整（不受约束）模型中。在原假设下，约束模型与完整模型对数据的拟合效果相同。沃尔德检验要求拟合完整模型，但不要求拟合约束模型。

{marker weakly_stationary}{...}
{phang}
{bf:弱平稳}。
如果过程的均值是有限且与 t 无关，过程的无条件方差是有限且与 t 无关，以及 t 和 t - s 之间的协方差是有限的、依赖于 t - s 但不依赖于 t 或 s 本身，那么该过程是弱平稳的。弱平稳过程也称为协方差平稳过程。

{phang}
{bf:白噪声}。
如果 u_t 的均值为零，u_t 的方差为 sigma^2，且对于所有的 s != t，u_t 和 u_s 之间的协方差为零，则变量 u_t 代表一个白噪声过程。


{marker reference}{...}
{title:参考文献}

{marker DM1993}{...}
{phang}
Davidson, R., and J. G. MacKinnon. 1993.
{browse "http://www.stata.com/bookstore/eie.html":{it:计量经济学中的估计与推断}}。
纽约：牛津大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dsge_glossary.sthlp>}