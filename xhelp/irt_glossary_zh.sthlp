{smcl}
{* *! version 1.0.2  19oct2017}{...}
{vieweralsosee "[IRT] 术语表" "mansection IRT Glossary"}{...}
{viewerjumpto "描述" "irt_glossary_zh##description"}{...}
{viewerjumpto "术语表" "irt_glossary_zh##glossary"}
{help irt_glossary:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[IRT] 术语表} {hline 2}}术语表{p_end}
{p2col:}({mansection IRT Glossary:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}此处定义常用术语。


{marker glossary}{...}
{title:术语表}

{phang}
{bf:1PL}.
	参见 {help irt_glossary##1PL:{it:单参数逻辑模型}}。

{phang}
{bf:2PL}.
	参见 {help irt_glossary##2PL:{it:双参数逻辑模型}}。

{phang}
{bf:3PL}.
	参见 {help irt_glossary##3PL:{it:三参数逻辑模型}}。

{marker ability}{...}
{phang}
{bf:能力}.
	参见 {help irt_glossary##latent_trait:{it:潜在特征}}。

{phang}
{bf:BCC}.
	参见 {help irt_glossary##BCC:{it:边界特征曲线}}。

{marker binary}{...}
{phang}
{bf:二元项目}.
	二元项目是以0或1评分的项目。

{marker BCC}{...}
{phang}
{bf:边界特征曲线}.
	边界特征曲线 (BCC) 表示跨越将有序项目类别分成两组的给定边界阈值的概率，作为潜在特征的函数。

{marker calibration}{...}
{phang}
{bf:标定}.
	估计 IRT 模型参数的过程。

{marker categorical}{...}
{phang}
{bf:分类项目}.
	分类项目是按照顺序或名义分类的项目。

{phang}
{bf:类别边界曲线}.
	参见 {help irt_glossary##BCC:{it:边界特征曲线}}。

{phang}
{bf:类别边界位置}.
	参见 {help irt_glossary##difficulty:{it:难度}}。

{marker CCC}{...}
{phang}
{bf:类别特征曲线}.
	类别特征曲线 (CCC) 表达在给定项目类别中响应的概率作为潜在特征的函数。

{phang}
{bf:类别响应函数}.
	参见 {help irt_glossary##CCC:{it:类别特征曲线}}。

{phang}
{bf:CCC}.
	参见 {help irt_glossary##CCC:{it:类别特征曲线}}。

{marker conditional_independence}{...}
{phang}
{bf:条件独立性}.
	在控制潜在特征后，响应不相关的假设。

{marker dichotomous}{...}
{phang}
{bf:二分项目}.
	参见 {help irt_glossary##binary:{it:二元项目}}。

{marker difficulty}{...}
{phang}
{bf:难度}.
	通过项目或项目类别所需的潜在特征水平。

{marker discrimination}{...}
{phang}
{bf:辨别力}.
	项目在项目特征曲线的拐点附近区分连续潜在特征水平的能力的度量。

{marker empirical_Bayes}{...}
{phang}
{bf:经验贝叶斯}.
	在 IRT 模型中，经验贝叶斯指估计模型参数后对潜在特征的预测方法。经验贝叶斯方法使用贝叶斯原理来获得潜在特征的后验分布。然而，在此之前不是假设模型参数的先验分布，而是将参数视为给定。

{marker GHQ}{...}
{phang}
{bf:高斯-赫尔米特求积}.
	在 IRT 模型的背景下，高斯-赫尔米特求积 (GHQ) 是用于计算对数似然值时近似积分的方法。个体的求积位置和权重在优化过程中是固定的。

{marker GPCM}{...}
{phang}
{bf:广义部分得分模型}.
	广义部分得分模型 (GPCM) 是一种用于顺序响应的 IRT 模型。每个项目中的类别在难度上有所不同，但分享相同的辨别力参数。

{phang}
{bf:GHQ}.
	参见 {help irt_glossary##GHQ:{it:高斯-赫尔米特求积}}。

{phang}
{bf:GPCM}.
	参见 {help irt_glossary##GPCM:{it:广义部分得分模型}}。

{marker GRM}{...}
{phang}
{bf:分级响应模型}.
	分级响应模型 (GRM) 是双参数逻辑模型扩展到顺序响应的模型。每个项目中的类别在难度上有所不同，且共享相同的辨别力参数。

{phang}
{bf:GRM}.
	参见 {help irt_glossary##GRM:{it:分级响应模型}}。
	
{marker guessing}{...}
{phang}
{bf:猜测}.
	猜测参数考虑了对观察到的响应的偶然影响。该参数将项目特征曲线的下限提升至零以上。

{marker hybrid_model}{...}
{phang}
{bf:混合模型}.
	混合 IRT 模型是对不同响应格式的工具进行单次标定的模型。

{phang}
{bf:ICC}.
	参见 {help irt_glossary##ICC:{it:项目特征曲线}}。

{phang}
{bf:IIF}.
	参见 {help irt_glossary##IIF:{it:项目信息函数}}。
	
{marker information}{...}
{phang}
{bf:信息}.
	项目或工具衡量潜在特征的精确度；另见
	{help irt_glossary##IIF:{it:项目信息函数}}
	和
	{help irt_glossary##TIF:{it:测试信息函数}}。

{marker instrument}{...}
{phang}
{bf:工具}.
	通常被称为测试、调查或问卷的一组项目。

{marker invariance}{...}
{phang}
{bf:不变性}.
	当 IRT 模型在总体上准确拟合数据时，估计的项目参数应该是相同的，考虑抽样误差，不管数据来自哪个样本，而估计的人潜在特征也应该是不变的，不论它们是基于哪些项目。

{phang}
{bf:IRT}.
	参见 {help irt_glossary##IRT:{it:项目反应理论}}。

{marker item}{...}
{phang}
{bf:项目}.
	项目是测试或工具上的单个问题或任务。

{marker ICC}{...}
{phang}
{bf:项目特征曲线}.
	项目特征曲线 (ICC) 表示二元项目给定响应的概率作为潜在特征的函数。

{marker IIF}{...}
{phang}
{bf:项目信息函数}.
	项目信息函数 (IIF) 表示在潜在特征连续体上项目的精确度。

{phang}
{bf:项目位置}.
	项目在难度尺度上的位置。
	
{phang}
{bf:项目响应函数}.
	参见 {help irt_glossary##ICC:{it:项目特征曲线}}。

{marker IRT}{...}
{phang}
{bf:项目反应理论}.
	项目反应理论 (IRT) 是围绕潜在特征概念组织的理论框架。IRT 包含一组模型和相关统计程序，它们将观察到的工具响应与一个人潜在特征的水平相联系。

{marker latent_space}{...}
{phang}
{bf:潜在空间}.
	一个工具测量的潜在特征的数量。本手册中描述的所有 IRT 模型假设一维潜在空间，换句话说，一个潜在特征解释响应模式。

{marker latent_trait}{...}
{phang}
{bf:潜在特征}.
	无法直接观察的变量或构造。

{phang}
{bf:局部独立性}.
	参见 {help irt_glossary##conditional_independence:{it:条件独立性}}。

{phang}
{bf:下限渐近线}.
	参见 {help irt_glossary##guessing:{it:猜测}}。

{phang}
{bf:MCAGHQ}.
	参见 {help irt_glossary##MCAGHQ:{it:模式-曲率自适应高斯-赫尔米特求积}}。

{marker MVAGHQ}{...}
{phang}
{bf:均值-方差自适应高斯-赫尔米特求积}.
	在 IRT 模型的背景下，均值-方差自适应高斯-赫尔米特求积 (MVAGHQ) 是用于计算对数似然值时近似积分的方法。个体的求积位置和权重在优化过程中通过使用后验均值和后验标准差进行更新。

{marker MCAGHQ}{...}
{phang}
{bf:模式-曲率自适应高斯-赫尔米特求积}.
	在 IRT 模型的背景下，模式-曲率自适应高斯-赫尔米特求积 (MCAGHQ) 是用于计算对数似然值时近似积分的方法。个体的求积位置和权重在优化过程中通过使用后验模式和近似对模式的正态密度的标准差进行更新。

{phang}
{bf:MVAGHQ}.
	参见 {help irt_glossary##MVAGHQ:{it:均值-方差自适应高斯-赫尔米特求积}}。

{marker nominal}{...}
{phang}
{bf:名义项目}.
	名义 {help irt_glossary##item:{it:项目}} 是以没有自然排序的类别进行评分的项目。

{marker NRM}{...}
{phang}
{bf:名义响应模型}.
	名义响应模型 (NRM) 是用于名义响应的 IRT 模型。每个项目中的类别在难度和辨别力上有所不同。

{phang}
{bf:NRM}.
	参见 {help irt_glossary##NRM:{it:名义响应模型}}。

{marker 1PL}{...}
{phang}
{bf:单参数逻辑模型}.
	单参数逻辑 (1PL) 模型是一种用于二元响应的 IRT 模型，其中项目在难度上有所不同，但共享相同的辨别力参数。

{phang}
{bf:操作特征曲线}.
	参见 {help irt_glossary##CCC:{it:类别特征曲线}}。

{marker ordinal}{...}
{phang}
{bf:顺序项目}.
	顺序项目是按比例进行评分的项目，其中较高的分数表示“更高”的结果。

{marker PCM}{...}
{phang}
{bf:部分得分模型}.
	部分得分模型 (PCM) 是一种用于顺序响应的 IRT 模型。所有项目中的类别在难度上有所不同，但共享相同的辨别力参数。

{phang}
{bf:PCM}.
	参见 {help irt_glossary##PCM:{it:部分得分模型}}。

{phang}
{bf:人位置}.
	一个人在潜在特征尺度上的位置。

{marker polytomous}{...}
{phang}
{bf:多分类项目}.
	参见 {help irt_glossary##categorical:{it:分类项目}}。

{marker posterior_mean}{...}
{phang}
{bf:后验均值}.
	在 IRT 模型中，后验均值指根据后验分布的均值对潜在特征的预测。

{marker posterior_mode}{...}
{phang}
{bf:后验模式}.
	在 IRT 模型中，后验模式指根据后验分布的模式对潜在特征的预测。

{phang}
{bf:求积}.
	求积是一组评估特定积分的数值方法。

{marker RSM}{...}
{phang}
{bf:评分尺度模型}.
	评分尺度模型 (RSM) 是一种用于顺序响应的 IRT 模型。每个项目中的类别在难度上有所不同；然而，相邻难度参数之间的距离在各项目上被限制为相同。所有项目的类别共享相同的辨别力参数。

{phang}
{bf:RSM}.
	参见 {help irt_glossary##RSM:{it:评分尺度模型}}。

{phang}
{bf:斜率}.
	参见 {help irt_glossary##discrimination:{it:辨别力}}。

{phang}
{bf:TCC}.
	参见 {help irt_glossary##TCC:{it:测试特征曲线}}。

{marker TCC}{...}
{phang}
{bf:测试特征曲线}.
	测试特征曲线 (TCC) 是项目特征曲线的总和，表示在工具上的预期分数。

{marker TIF}{...}
{phang}
{bf:测试信息函数}
	测试信息函数 (TIF) 是项目信息函数的总和，表明整个工具在潜在特征连续体上的精确度。

{marker 3PL}{...}
{phang}
{bf:三参数逻辑模型}.
	三参数逻辑 (3PL) 模型是一种用于二元响应的 IRT 模型，其中项目在难度和辨别力上有所不同，并可以共享或拥有自己的猜测参数。

{phang}
{bf:TIF}.
	参见 {help irt_glossary##TIF:{it:测试信息函数}}。

{phang}
{bf:总特征曲线}.
	参见 {help irt_glossary##TCC:{it:测试特征曲线}}。

{phang}
{bf:总信息函数}.
	参见 {help irt_glossary##TIF:{it:测试信息函数}}。

{marker 2PL}{...}
{phang}
{bf:双参数逻辑模型}.
	双参数逻辑 (2PL) 模型是一种用于二元响应的 IRT 模型，其中项目在难度和辨别力上有所不同。

{phang}
{bf:一维性}.
	参见 {help irt_glossary##latent_space:{it:潜在空间}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_glossary.sthlp>}