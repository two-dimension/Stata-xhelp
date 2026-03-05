{smcl}
{* *! version 1.1.21  30may2019}{...}
{vieweralsosee "[TS] 术语表" "mansection TS Glossary"}{...}
{viewerjumpto "描述" "ts_glossary_zh##description"}{...}
{viewerjumpto "术语表" "ts_glossary_zh##glossary"}{...}
{viewerjumpto "参考文献" "ts_glossary_zh##references"}
{help ts_glossary:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] 术语表} {hline 2}}术语概览{p_end}
{p2col:}({mansection TS Glossary:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}这里定义了一些常用术语。


{marker glossary}{...}
{title:术语表}

{phang}
{bf:增加因子}。
增加因子是在预测模型中添加到内生变量的数量。增加因子可用于将外部信息纳入模型，并可用于在替代情境下产生预测。

{phang}
{marker ARCH_model}{...}
{bf:ARCH 模型}。
自回归条件异方差（ARCH）模型是一个回归模型，其中条件方差被建模为一个{help ts_glossary##auto_process:自回归 (AR) 过程}。
ARCH({it:m}) 模型为

{phang2}{it:y}_{it:t} = {bf:x}_{it:t} beta + epsilon_{it:t}

{phang2}
        {it:E}(epsilon_{it:t}^2 | epsilon_[{it:t}-1]^2, epsilon_[{it:t}-2]^2, ...) = alpha_0 + alpha_1 epsilon_[{it:t}-1]^2 + ... + alpha_{it:m} epsilon_[{it:t}-{it:m}]^2

{pmore}
其中，epsilon_{it:t} 是一个白噪声误差项。{it:y}_{it:t} 的方程表示该过程的条件均值，而{it:E}(epsilon_{it:t}^2 | epsilon_[{it:t}-1]^2, epsilon_[{it:t}-2]^2, ...) 的方程则将条件方差指定为其过去实现的自回归函数。尽管条件方差随时间变化，但无条件方差是时间不变的，因为 {it:y}_{it:t} 是一个{help ts_glossary##stationary_process:平稳过程}。将条件方差建模为一个 AR 过程提高了隐含的无条件方差，这使得该模型对建模厚尾数据（如金融数据）的研究人员特别具有吸引力。

{phang}
{bf:ARFIMA 模型}。
自回归分数积分移动平均（ARFIMA）模型是一种适用于{help ts_glossary##long_memory:长记忆过程}的时间序列模型。ARFIMA 模型通过允许差分参数为 (-0.5, 0.5) 中的实数，而不是要求其为整数，对自回归积分移动平均（ARIMA）模型进行了概括。

{marker ARIMA_model}{...}
{phang}
{bf:ARIMA 模型}。
自回归积分移动平均（ARIMA）模型是适用于{help ts glossary##integrated_process:积分过程}的时间序列模型。在 ARIMA({it:p},{it:d},{it:q}) 模型中，数据被差分 {it:d} 次以获得一个平稳系列，然后拟合一个 ARMA({it:p},{it:q}) 模型到这个差分数据中。包括外生解释变量的 ARIMA 模型称为 ARMAX 模型。

{phang}
{bf:ARMA 模型}。
自回归移动平均（ARMA）模型是一种时间序列模型，在该模型中，当前时期的实现是自回归（AR）过程和移动平均（MA）过程的和。ARMA({it:p},{it:q}) 模型包含 {it:p} 个 AR 项和 {it:q} 个 MA 项。只有少数滞后项的 ARMA 模型通常能够与纯 AR 或 MA 模型的适配效果相当，尽管后者通常有更多的滞后项。

{marker ARMA_process}{...}
{phang}
{bf:ARMA 过程}。
自回归移动平均 (ARMA) 过程是一种时间序列，其中变量的当前值是其自身过去值的线性函数以及当前和过去实现的白噪声过程的加权平均。它由一个自回归成分和一个移动平均成分组成；参见{help ts_glossary##auto_process:{it:自回归 (AR) 过程}}和{help ts_glossary##MA_process:{it:移动平均 (MA) 过程}}。

{phang}
{bf:ARMAX 模型}。
ARMAX 模型是一种时间序列模型，在该模型中，当前时期的实现是一个{help ts_glossary##ARMA_process:ARMA 过程}加上外生变量集的线性函数。等效地，ARMAX 模型是一个线性回归模型，其中误差项被指定为遵循 ARMA 过程。

{phang}
{bf:自相关函数}。
自相关函数 (ACF) 表示时间序列中时期 {it:t} 和 {it:t}-{it:k} 之间的相关性，是时间 {it:t} 和滞后 {it:k} 的函数。对于平稳的时间序列，ACF 不依赖于 {it:t} 并且对称于 {it:k}=0，这意味着时期 {it:t} 和 {it:t}-{it:k} 之间的相关性等于时期 {it:t} 和 {it:t}+{it:k} 之间的相关性。

{marker auto_process}{...}
{phang}
{bf:自回归 (AR) 过程}。
自回归 (AR) 过程是一种时间序列，其中变量的当前值是其自身过去值的线性函数以及一个白噪声误差项。一个一阶 AR 过程，记作 AR(1) 过程，表示为 {it:y}_{it:t} = rho {it:y}_[{it:t}-1] + epsilon_{it:t}。AR({it:p}) 模型包含 {it:p} 个滞后值。

{phang}
{bf:带通滤波器}。
时间序列滤波器旨在传递或阻止在特定频率下的{help ts_glossary##stochastic_cycle:随机周期}。带通滤波器，例如在{helpb tsfilter bk} 和 {helpb tsfilter cf}中实现的，可以通过指定的频率范围传递随机周期，阻止所有其他随机周期。

{phang}
{bf:Cholesky 排序}。
Cholesky 排序是一种用于正交化 VAR 或 VECM 模型中的误差项的方法，以对动态模型施加递归结构，从而使得结果的{help ts_glossary##impulse_response:脉冲响应函数}可以被赋予因果解释。该方法之所以得名，是因为它使用了误差协方差矩阵的 Cholesky 分解。

{phang}
{marker CO_estimator}{...}
{bf:科克伦-奥库特估计器}。
该估计器是一种线性回归估计器，可在误差项表现出一阶自相关时使用。通过 OLS 残差获得自相关参数 rho 的初始估计，然后对转换后的数据进行 OLS，即：
tilde{{it:y}}_{it:t} = {it:y}_{it:t} - rho {it:y}_[{it:t}-1] 和
tilde{{bf:x}}_{it:t} = {bf:x}_{it:t} - rho {bf:x}_[{it:t}-1]。

{phang}
{bf:协整向量}。
协整向量指定非平稳变量的平稳线性组合。具体而言，如果每个变量 {it:x}_1, {it:x}_2, ..., {it:x}_{it:k} 是一阶积分，并且存在一组参数 beta_1, beta_2, ..., beta_{it:k} 使得 {it:z}_{it:t} = beta_1 {it:x}_1 + beta_2 {it:x}_2 + ... + beta_{it:k} {it:x}_{it:k} 是一个{help ts_glossary##stationary_process:平稳过程}，则称变量 {it:x}_1, {it:x}_2, ..., {it:x}_{it:k} 是协整的，向量 beta 称为协整向量。

{phang}
{bf:条件方差}。
尽管条件方差仅仅是条件分布的方差，但在时间序列分析中，条件方差通常被建模为{help ts_glossary##auto_process:自回归 (AR) 过程}，从而产生{help ts_glossary##ARCH_model:ARCH 模型}。

{phang}
{bf:自相关图}。
自相关图是一个表格或图形，显示时间序列的样本自相关或偏自相关。

{marker cov_stationary_process}{...}
{phang}
{bf:协方差平稳过程}。
如果一个过程的均值是有限的并且与 {it:t} 无关，且该过程的无条件方差是有限的并且与 {it:t} 无关，并且时期 {it:t} 和 {it:t}-{it:s} 之间的协方差是有限的并且依赖于 {it:t}-{it:s} 而不依赖于 {it:t}或 {it:s} 自身，则该过程称为协方差平稳。因此，协方差平稳过程也被称为弱平稳过程。另见 {help ts_glossary##stationary_process:{it:平稳过程}}。

{phang}
{bf:交叉相关函数}。
交叉相关函数表示在时间 {it:t} 的一个序列和在时间 {it:t}-{it:k} 的另一个序列之间的相关性，是时间 {it:t} 和滞后 {it:k} 的函数。如果两个序列都是平稳的，则该函数不依赖于 {it:t}。该函数在 {it:k}=0 处不是对称的：rho_[12]({it:k}) != rho_[12](-{it:k})。

{marker cyclical_component}{...}
{phang}
{bf:周期成分}。
周期成分是时间序列中一个随时间而周期性变化的部分。时间的确定性函数是确定性周期成分，而时间的随机函数是随机周期成分。例如，固定季节效应是确定性周期成分，而随机季节效应是随机季节成分。

{pmore}
在周期函数中的随机系数形成了一个尤其有用的随机周期成分类别；参见 {help ucm_zh:[TS] ucm}。

{phang}
{bf:确定性趋势}。
确定性趋势是指定时间序列长期趋势的确定性函数。

{phang}
{bf:差分算子}。
差分算子 Delta 表示从时期 {it:t}-1 到时期 {it:t} 的变量值变化。

{phang}
{bf:漂移}。
漂移是在一个{help ts_glossary##unit_root_process:单位根过程}中的常数项。在

            {it:y}_{it:t} = alpha + {it:y}_({it:t}-1) + epsilon_{it:t}

{pmore}
当 epsilon_{it:t} 是一个平稳的零均值过程时，alpha 是漂移。

{marker dynamic_forecast}{...}
{phang}
{bf:动态预测}。
动态预测在模型中使用内生变量的滞后值的地方都使用预测值，从而可以预测多个时期的未来值。另见 {it:{help ts_glossary##static_forecast:静态预测}}。

{phang}
{bf:动态乘数函数}。
动态乘数函数测量对内生变量的冲击对另一个内生变量的影响。变量 {it:i} 对变量 {it:j} 的第 {it:k} 个动态乘数函数测量了在时期 {it:t} 对变量 {it:i} 的一单位冲击响应所导致的在时期 {it:t}+{it:k} 对变量 {it:j} 的影响，同时保持其他一切不变。

{marker endogenous_variable}{...}
{phang}
{bf:内生变量}。
内生变量是与不可观测的误差项相关的回归变量。等效地，内生变量是其值由结构模型的均衡或结果决定的变量。

{marker exogenous_variable}{...}
{phang}
{bf:外生变量}。
外生变量与模型中任何不可观测的误差项都不相关。等效地，外生变量是其值独立于结构模型中的其他变量而变化的变量。

{phang}
{bf:指数平滑}。
指数平滑是一种{help ts_glossary##smoothing:平滑}时间序列的方法，其中时期 {it:t} 的平滑值等于该时期时间序列值的 alpha 乘积加上前一时期平滑值的（1-alpha）乘积。比例 alpha 被称为平滑参数。

{phang}
{bf:预测误差方差分解}。
预测误差方差分解测量在 {it:h} 个时期后预测变量 {it:i} 误差中可归因于对变量 {it:j} 的正交冲击的部分。

{marker forward_operator}{...}
{phang}
{bf:前向算子}。
前向算子 {it:F} 表示一个变量在时间 {it:t}+1 的值。形式上，{it:F}y_{it:t} = y_{{it:t}+1}，并且 {it:F}^2y_{it:t} = {it:F}y_{{it:t}+1} = y_{{it:t}+2}。
前向算子也称为领先算子。

{phang}
{marker frequency_domain}{...}
{bf:频域分析}。
频域分析是通过考虑时间序列数据的频率特性来分析该数据。{help ts_glossary##spectral_density:谱密度函数}和 {help ts_glossary##spectral_distribution:谱分布函数} 是频域分析的关键组成部分，因此它通常被称为谱分析。在 Stata 中，{help cumsp_zh} 和 {help pergram_zh} 命令用于分析样本谱分布和密度函数，分别。{help psdensity_zh} 在使用 {help arfima_zh}、{help arima_zh} 或 {help ucm_zh} 估计参数后估计谱密度或谱分布函数。

{phang}
{bf:线性滤波器（增益）}。
线性滤波器的增益在每个频率下对未滤波系列的谱密度进行缩放至滤波系列的谱密度。具体而言，在每个频率下，将未滤波系列的谱密度乘以线性滤波器增益的平方，便可获得滤波系列的谱密度。如果在特定频率上的增益为 1，则该频率下的滤波和未滤波谱密度是相同的，且相应的{help ts_glossary##stochastic_cycle:随机周期}被完美通过。如果在特定频率上的增益为 0，则滤波器从未滤波系列中移除所有相应的随机周期。

{phang}
{bf:GARCH 模型}。
广义自回归条件异方差（GARCH）模型是一个回归模型，其中条件方差被建模为一个{help ts_glossary##ARMA_process:ARMA 过程}。GARCH({it:m},{it:k}) 模型为

{phang2}{it:y}_{it:t} = {bf:x}_{it:t} beta + epsilon_{it:t}

{phang2}sigma_{it:t}^2 = gamma_0 + gamma_1 epsilon_[{it:t}-1]^2 + ... + gamma_{it:m} epsilon_[{it:t}-{it:m}]^2 + delta_1 sigma_[{it:t}-1]^2 + ... + delta_{it:k} sigma_[{it:t}-{it:k}]^2

{pmore}
其中 {it:y}_{it:t} 的方程表示该过程的条件均值，sigma_{it:t} 表示条件方差。有关如何将条件方差方程视为 ARMA 过程的更多详细信息，请参见 {help arch_zh:[TS] arch} 或 {help ts glossary##H1994:Hamilton (1994, chap. 21)}。使用 GARCH 模型的原因通常是 ARMA 规范往往允许用更少的参数建模条件方差，而不是要求纯 ARCH 模型。现存许多对基本 GARCH 模型的扩展，请参见 {help arch_zh:[TS] arch}，其中包含在 Stata 中实现的扩展。此外，另见 {it:{help ts_glossary##ARCH_model:ARCH 模型}}。

{phang}
{bf:广义最小二乘估计器}。
广义最小二乘（GLS）估计器用于估计当误差项是异方差或自相关时的回归函数参数。在线性情况下，GLS 有时被描述为"在转换数据上使用 OLS"，因为可以通过对数据集施加适当的变换，然后使用 OLS 来实现 GLS 估计器。

{phang}
{bf:格兰杰因果关系}。
如果给定 {it:y} 的过去值，{it:x} 的过去值对预测 {it:y} 是有用的，则说变量 {it:x} 格兰杰导致变量 {it:y}。

{phang}
{bf:高通滤波器}。
时间序列滤波器旨在传递或阻止在特定频率下的{help ts_glossary##stochastic_cycle:随机周期}。高通滤波器，例如在 {helpb tsfilter bw} 和 {helpb tsfilter hp}中实现的，可以传递高于截止频率的随机周期，并阻止所有其他随机周期。

{phang}
{bf:霍尔特-温特斯平滑}。
一套用于{help ts_glossary##smoothing:平滑}时间序列数据的方法，这些方法假设在时间 {it:t} 的时间序列值可以近似为曲线的总和，即随时间漂移的均值项，以及强度随时间漂移的时间趋势。基本方法的变体也允许数据中的季节模式。

{marker impulse_response}{...}
{phang}
{bf:脉冲响应函数}。
脉冲响应函数 (IRF) 测量对内生变量的冲击对其自身或另一个内生变量的影响。变量 {it:i} 对变量 {it:j} 的第 {it:k} 个脉冲响应函数测量了在时期 {it:t} 对变量 {it:i} 的一单位冲击响应所导致的在时期 {it:t}+{it:k} 对变量 {it:j} 的影响，同时保持其他一切不变。

{phang}
{bf:独立同分布}。
如果每个观察值都是来自同一底层分布的独立实现，则该系列观察值被称为独立同分布 (i.i.d.)。在一些上下文中，定义被放宽到仅意味着观察值是独立的，并且具有相同的均值和方差；参见 {help ts glossary##DM1993:Davidson and MacKinnon (1993, 42)}。

{marker integrated_process}{...}
{phang}
{bf:积分过程}。
如果一个非平稳过程必须差分 {it:d} 次才能生成平稳序列，则该过程被称为一阶积分过程，表示为 I({it:d})。 I(1) 过程 {it:y}_{it:t} 是一个在其中 Delta {it:y}_{it:t} 是平稳的过程。

{phang}
{bf:卡尔曼滤波器}。卡尔曼滤波器是一种递归程序，用于预测状态空间模型中的状态向量。

{phang}
{bf:滞后算子}。
滞后算子 {it:L} 表示在时间 {it:t}-1 的变量值。形式上，{it:Ly}_{it:t} = {it:y}_[{it:t}-1]，并且 {it:L}^2{it:y}_{it:t} = {it:Ly}_[{it:t}-1] = {it:y}_[{it:t}-2]。

{phang}
{bf:领先算子}。参见 {it:{help ts_glossary##forward_operator:前向算子}}。

{marker linear_filter}{...}
{phang}
{bf:线性滤波器}。
线性滤波器是一系列权重，用于在每个时间期内计算时间序列的加权平均。更正式地，线性滤波器 alpha({it:L}) 为

{phang3}
alpha({it:L}) =  alpha_0 + alpha_1 {it:L} + alpha_2 {it:L}^2 + ...
         = sum_(tau=0)^(infty) alpha_(tau) {it:L}^(tau)

{pmore}
其中 {it:L} 是滞后算子。将线性滤波器 alpha({it:L}) 应用于时间序列 {it:x}_{it:t} 会产生以下加权平均序列：

{phang3}
alpha({it:L}) {it:x}_{it:t} =
          sum_(tau=0)^(infty) alpha_(tau) {it:L}^(tau) {it:x}_({it:t}-tau)

{marker long_memory}{...}
{phang}
{bf:长记忆过程}。长记忆过程是一个{help ts_glossary##stationary_process:平稳过程}，其自相关衰减速度比短记忆过程要慢。ARFIMA 模型通常用于表示长记忆过程，而 ARMA 模型通常用于表示短记忆过程。

{marker MA_process}{...}
{phang}
{bf:移动平均 (MA) 过程}。
移动平均 (MA) 过程是一种时间序列过程，其中变量的当前值被建模为当前和过去的白噪声过程实现的加权平均，并且可选地为时间不变常数。按照惯例，白噪声过程当前实现的权重为 1，过去实现的权重称为 MA 系数。一阶 MA 过程，记作 MA(1) 过程，表示为 {it:y}_{it:t} = theta epsilon_[{it:t}-1] + epsilon_{it:t}。

{phang}
{bf:多元 GARCH 模型}。
多元 GARCH 模型是多元时间序列模型，其中误差的条件协方差矩阵取决于其自身的过去和过去的冲击。简洁性与灵活性之间的急剧权衡导致了大量模型的出现；参见 {manhelp mgarch TS}。

{phang}
{bf:纽依-韦斯特协方差矩阵}。
纽依-韦斯特协方差矩阵是时间序列数据中使用的异方差和自相关一致 (HAC) 协方差矩阵估计器类别的一个成员，该矩阵生成的协方差估计对任意异方差和自相关（至预设滞后）是稳健的。

{phang}
{bf:单步ahead预测}。参见 {it:{help ts_glossary##static_forecast:静态预测}}。

{phang}
{bf:正交脉冲响应函数}。
正交脉冲响应函数 (OIRF) 测量一个正交冲击对内生变量自身或另一个内生变量的影响。正交冲击是在时间 {it:t} 影响一个变量而不影响其他变量的冲击。参见{helpb irf create:[TS] irf create}，了解 IRF 和 OIRF 之间的区别。

{phang}
{bf:产出缺口}。
产出缺口，有时称为 GDP 缺口，是经济实际产出与潜在产出之间的差异。

{phang}
{bf:偏自相关函数}。
偏自相关函数 (PACF) 表示时间序列中时期 {it:t} 和 {it:t}-{it:k} 之间的相关性，是时间 {it:t} 和滞后 {it:k} 的函数，在控制干预滞后影响后进行控制。对于平稳时间序列，PACF 不依赖于 {it:t}。PACF 在 {it:k}=0 处不是对称的：{it:y}_{it:t} 和 {it:y}_[{it:t}-{it:k}] 之间的偏自相关不等于 {it:y}_{it:t} 和 {it:y}_[{it:t}+{it:k}] 之间的偏自相关。

{phang}
{bf:周期图}。
周期图是时间序列的谱密度函数作为频率的函数的图形。{help pergram_zh} 命令首先通过时间序列的样本方差标准化密度的幅度，然后绘制该标准化密度的对数。周期图中的峰值代表数据中的周期行为。

{phang}
{bf:相位函数}。
线性滤波器的相位函数指定滤波器如何影响频域中不同频率下随机成分的相对重要性。

{phang}
{bf:菲利普斯曲线}。
菲利普斯曲线是通货膨胀与经济活动之间的一种宏观经济关系，通常表示为涉及通货膨胀和产出缺口的方程。历史以来，菲利普斯曲线描述了失业率与工资上涨率之间的反向关系。

{phang}
{bf:门槛统计量}。
门槛统计量，或 {it:Q} 统计量，用于检验白噪声，使用序列的前 {it:m} 自相关计算，其中 {it:m} 由用户选择。在零假设下，该序列是一个{help ts_glossary##white_noise:白噪声过程}，门槛统计量的分布为自由度为 {it:m} 的卡方分布。

{phang}
{bf:普雷斯-温斯顿估计器}。
普雷斯-温斯顿估计器是一种线性回归估计器，当误差项表现出一阶自相关时使用；另见 {it:{help ts_glossary##CO_estimator:科克伦-奥库特估计器}}。这里，数据集中的第一观察值转化为：
tilde{{it:y}}_1 = sqrt{1-rho^2} {it:y}_1 和 tilde{{bf:x}}_1 = sqrt{1-rho^2} {bf:x}_1，因此第一观察值不会丢失。普雷斯-温斯顿估计器是一种广义最小二乘估计器。

{phang}
{bf:初始值}。
初始值是用于开始递归过程的初始预估值。

{phang}
{bf:随机游走}。
随机游走是一种时间序列过程，其中当前时期的实现等于上一时期的实现加上一个白噪声误差项： {it:y}_{it:t} = {it:y}_[{it:t}-1] + epsilon_{it:t}。随机游走带漂移的情况还包含一个非零不变常数：{it:y}_{it:t} = delta + {it:y}_[{it:t}-1] + epsilon_{it:t}。漂移参数 delta 是重要的属性。随机游走过程的一个重要特征是，最佳预测 {it:t}+1 的值是 {it:t} 时的值加上漂移参数的值。

{phang}
{bf:递归回归分析}。
递归回归分析涉及在时间 {it:t} 通过使用某个初始时间 {it:t}_0 到时间 {it:t} 的所有可用观察进行回归，在时间 {it:t}+1 再次使用时间 {it:t}_0 到时间 {it:t}+1 的所有观察进行回归，依此类推。与{help ts_glossary##rolling_reg:滚动回归分析}不同，所有回归使用的第一个时期保持不变。

{phang}
{bf:因变量}。因变量是回归模型中被解释或预测的变量。其同义词包括因变量、左侧变量和{help ts_glossary##endogenous_variable:内生变量}。

{phang}
{bf:自变量}。自变量是回归模型中的变量，用于预测因变量。其同义词包括自变量、右侧变量、解释变量、预测变量和{help ts_glossary##exogenous_variable:外生变量}。

{marker rolling_reg}{...}
{phang}
{bf:滚动回归分析}。
滚动或移动窗口回归分析涉及对每个时期执行回归，使用最近 {it:m} 期的数据，其中 {it:m} 被称为窗口大小。在时间 {it:t} 处，回归使用时间 {it:t}-19 到时间 {it:t} 的观察进行拟合；在时间 {it:t}+1 处，回归使用时间 {it:t}-18 到时间 {it:t}+1 的观察进行拟合；依此类推。

{phang}
{bf:季节差分算子}。
周期-{it:s} 的季节差分算子 Delta_{it:s} 表示时间 {it:t} 和时间 {it:t}-{it:s} 的变量值之间的差异。形式上，Delta_{it:s} {it:y}_{it:t} = {it:y}_{it:t} - {it:y}_[{it:t}-{it:s}]，
且 Delta_{it:s}^2 {it:y}_{it:t} = Delta_{it:s}({it:y}_{it:t} - {it:y}_[{it:t}-{it:s}]) = ({it:y}_{it:t} - {it:y}_[{it:t}-{it:s}]) - ({it:y}_[{it:t}-{it:s}]-{it:y}_[{it:t}-2{it:s}]) = {it:y}_{it:t} - 2{it:y}_[{it:t}-{it:s}] + {it:y}_[{it:t}-2{it:s}]。

{phang}
{bf:序列相关性}。
序列相关性是指回归误差在时间上的相关性。如果回归模型没有包含滞后因变量作为自变量，则 OLS 估计器在轻微的序列相关性存在时是一致的，但协方差矩阵是错误的。当模型包含滞后因变量且残差存在序列相关性时，OLS 估计值是有偏且不一致的。有关更多信息，请参见 {help ts glossary##DM1993:Davidson and MacKinnon (1993, chap. 10)}。

{phang}
{bf:序列相关性检验}。
因为在序列相关性存在的情况下 OLS 估计至少是无效的并且可能是有偏的，计量经济学家们已经开发了许多检验来检测它。流行的检验包括 Durbin-Watson ({help ts glossary##DW1950:1950}, {help ts glossary##DW1951:1951}, {help ts glossary##DW1971:1971}) 检验、Breusch-Pagan ({help ts glossary##BP1980:1980}) 检验和 Durbin 的 ({help ts glossary##D1970:1970}) 替代检验。有关详细信息，请参见 {help regress_postestimationts_zh:[R] 回归后估计时间序列}。

{marker smoothing}{...}
{phang}
{bf:平滑}。
平滑时间序列是提取数据中整体{help ts_glossary##trend:趋势}的过程。平滑的动机在于认为时间序列展现出趋势成分以及不规则成分，分析师对趋势成分感兴趣。某些平滑器还考虑季节性或其他周期性模式。

{phang}
{bf:谱分析}。
参见 {it:{help ts_glossary##frequency_domain:频域分析}}。

{phang}
{marker spectral_density}{...}
{bf:谱密度函数}。
谱密度函数是谱分布函数的导数。直观地，谱密度函数 {it:f}(omega) 表示时间序列中归因于频率为 omega 的正弦成分的方差量。另见 {it:{help ts_glossary##spectral_distribution:谱分布函数}}。谱密度函数有时被称为谱。

{phang}
{marker spectral_distribution}{...}
{bf:谱分布函数}。
一个过程的（归一化的）谱分布函数 {it:F}(omega) 描述了方差中可以被频率范围 (0, omega) 中的正弦波解释的比例，其范围为 0 <= omega <= pi。在时间域分析中使用的谱分布和密度函数与自相关函数密切相关；参见 {help ts glossary##C2004:Chatfield (2004, chap. 6)}。

{phang}
{bf:谱}。
参见 {it:{help ts_glossary##spectral_density:谱密度函数}}。

{phang}
{bf:状态空间模型}。
状态空间模型描述观察到的时间序列与表示“世界状态”的不可观察状态向量之间的关系。测量方程将观察序列表示为状态向量的函数，而转移方程描述不可观察状态向量如何随时间演变。通过适当地定义测量和转移方程的参数，可以在状态空间形式中编写各种时间序列模型。

{marker static_forecast}{...}
{phang}
{bf:静态预测}。
静态预测在模型中使用内生变量的滞后值的实际值。因此，静态预测的表现至少与{help ts_glossary##dynamic_forecast:动态预测}一样好，但如果模型中出现了内生变量的滞后，则静态预测不能产生未来的预测。

{pmore}
由于实际值会在数据集中最后一个历史时期之后缺失，因此静态预测只能预测到未来的一个时期（假设模型中只出现了一阶滞后）；因此通常称为单步ahead预测。

{marker stationary_process}{...}
{phang}
{bf:平稳过程}。
如果 {it:y}_1, ..., {it:y}_{it:k} 的联合分布与 {it:y}_{1+tau}, ..., {it:y}_[{it:k}+tau] 的联合分布相同，则该过程是平稳的。直观地，平移系列的起点 tau 单位不会影响联合分布；系列的边际分布不会随时间变化。平稳过程通常也称为严格平稳过程或强平稳过程。另见 {help ts_glossary##cov_stationary_process:{it:协方差平稳过程}}。

{phang}
{bf:稳态均衡}。
稳态均衡是动态模型中变量的预测值，忽略过去冲击的影响；或者等效地，假设过去冲击的影响已经完全消退且不再影响感兴趣的变量的值。

{marker stochastic_cycle}{...}
{phang}
{bf:随机周期}。
随机周期是一个周期，其幅度、相位或频率可能是时间的随机函数。参见 {help ts_glossary##cyclical_component:{it:周期成分}}。

{phang}
{bf:随机方程}。
随机方程与恒等式相对，是一个预测模型中包括随机成分的方程，通常为加性误差项。随机方程包含必须从历史数据中估计的参数。

{phang}
{bf:随机趋势}。
随机趋势是一个非平稳随机过程。{help ts_glossary##unit_root_process:单位根过程} 和时间上的随机系数是两种常见的随机趋势。有关更常应用的随机趋势的示例和讨论，请参见 {help ucm_zh:[TS] ucm}。

{phang}
{bf:严格平稳过程}。
参见 {help ts_glossary##stationary_process:{it:平稳过程}}。

{phang}
{bf:强平稳过程}。
参见 {help ts_glossary##stationary_process:{it:平稳过程}}。

{phang}
{bf:结构模型}。
在时间序列分析中，结构模型描述一组变量之间的关系，基于潜在的理论考虑。结构模型可能包含内生变量和外生变量。

{phang}
{bf:SVAR}。
结构向量自回归 (SVAR) 模型是一种 VAR，其中对产生的{help ts_glossary##impulse_response:脉冲响应函数}施加短期或长期限制。这些限制通常受到经济理论的驱动，因此允许对 IRF 的因果解释。

{phang}
{bf:时间域分析}。
时间域分析是指将数据视为随时间观察序列的分析。自相关函数、线性回归、{help ts_glossary##ARCH_model:ARCH 模型}和{help ts_glossary##ARIMA_model:ARIMA 模型}是时间域分析中常用的工具。

{marker trend}{...}
{phang}
{bf:趋势}。
趋势指定时间序列中的长期行为。趋势可以是确定性的或随机的。许多经济、生物、健康和社会时间序列都有长期的增加或减少趋势。在 1980 年代之前，大多数时间序列分析将长期趋势指定为时间的确定函数。自 1980 年代以来，单位根过程隐含的随机趋势已成为工具包中的标准部分。

{marker unit_root_process}{...}
{phang}
{bf:单位根过程}。
单位根过程是指一阶积分的过程，意味着该过程是非平稳的，但对该过程进行一阶差分产生平稳序列。单位根过程的最简单示例是随机游走。请参见{help ts glossary##H1994:Hamilton (1994, chap. 15)}，了解一般{help ts_glossary##ARMA_process:ARMA 过程}何时可能包含单位根的讨论。

{phang}
{bf:单位根检验}。
一个过程是否具有单位根具有重要的统计和经济意义，因此开发了多种检验来检测它们。在最早的检验中，{help ts glossary##DF1979:Dickey 和 Fuller (1979)} 提出的检验是其中之一，尽管目前大多数研究人员使用一种改进的变体，即增强型 Dickey-Fuller 检验，而不是原始版本。其他在 Stata 中实现的常见单位根检验包括{help ts glossary##ERS1996:Elliott、Rothenberg 和 Stock (1996)}的 DF-GLS 检验和 {help ts glossary##PP1988:Phillips-Perron (1988)} 检验。请参阅 {help dfuller_zh:[TS] dfuller}、{help dfgls_zh:[TS] dfgls} 和 {help pperron_zh:[TS] pperron}。

{marker VAR}{...}
{phang}
{bf:VAR}。
向量自回归 (VAR) 模型是一种多元回归技术，其中每个因变量都对自身的滞后和模型中所有其他因变量的滞后进行回归。有时，还会在模型中包含外生变量。

{marker VECM}{...}
{phang}
{bf:VECM}。
向量误差修正模型 (VECM) 是一种使用协整变量的 VAR类型。尽管一阶差分使一阶积分变量平稳，但对这些一阶差分变量拟合 VAR 会导致模型误设。请参见 {mansection TS vecintroRemarksandexamplesThemultivariateVECMspecification:{it:多元 VECM 规范}} 在 {bf:[TS] vec intro} 中了解更多信息。

{phang}
{bf:弱平稳过程}。
参见 {help ts_glossary##cov_stationary_process:{it:协方差平稳过程}}。

{marker white_noise}{...}
{phang}
{bf:白噪声过程}。
变量 {it:u}_{it:t} 代表一个白噪声过程，如果 {it:u}_{it:t} 的均值为零，{it:u}_{it:t} 的方差为 sigma^2 并且对于所有 {it:s} != {it:t}，{it:u}_{it:t} 和 {it:u}_{it:s} 之间的协方差为零。

{phang}
{bf:Yule-沃克方程}。
Yule-沃克方程是一组差分方程，描述自回归移动平均（ARMA）过程的自协方差和自相关之间的关系。


{marker references}{...}
{title:参考文献}

{marker BP1980}{...}
{phang}
Breusch, T. S., and A. R. Pagan. 1980. 拉格朗日乘数检验及其在计量经济学模型规格上的应用。
{it:经济研究评述} 47: 239-253。

{marker C2004}{...}
{phang}
Chatfield, C. 2004.
{it:时间序列分析：入门}.第 6 版。
佛罗里达州博卡拉顿：查普曼和霍尔/CRC。

{marker DM1993}{...}
{phang}
Davidson, R., and J. G. MacKinnon. 1993.
{browse "http://www.stata.com/bookstore/eie.html":{it:计量经济学中的估计与推断}}。
纽约：牛津大学出版社。

{marker DF1979}{...}
{phang}
Dickey, D. A., and W. A. Fuller. 1979.
带有单位根的自回归时间序列的估计量的分布。
{it:美国统计协会杂志} 74: 427-431。

{marker D1970}{...}
{phang}
Durbin, J. 1970.
当某些自变量是滞后因变量时，检验最小二乘回归中序列相关性。
{it:计量经济学} 38: 410-421。

{marker DW1950}{...}
{phang}
Durbin, J., and G. S. Watson. 1950.
在最小二乘回归中检验序列相关性 I。
{it:生物统计学} 37: 409-428。

{marker DW1951}{...}
{phang}
------. 1951.
在最小二乘回归中检验序列相关性 II。
{it:生物统计学} 38: 159-177。

{marker DW1971}{...}
{phang}
------. 1971.
在最小二乘回归中检验序列相关性 III。
{it:生物统计学} 58: 1-19。

{marker ERS1996}{...}
{phang}
Elliott, G., T. J. Rothenberg, and J. H. Stock. 1996.
自回归单位根的有效检验。
{it:计量经济学} 64: 813-836。 

{marker H1994}{...}
{phang}
Hamilton, J. D. 1994.
{it:时间序列分析}。
普林斯顿：普林斯顿大学出版社。

{marker PP1988}{...}
{phang}
Phillips, P. C. B., and P. Perron. 1988. 在时间序列回归中检验单位根。 {it:生物统计学} 75: 335-346。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ts_glossary.sthlp>}