{smcl}
{* *! version 1.3.7  04jun2018}{...}
{viewerdialog predict "dialog pca_p"}{...}
{viewerdialog estat "dialog pca_estat"}{...}
{viewerdialog loadingplot "dialog loadingplot"}{...}
{viewerdialog rotate "dialog rotate"}{...}
{viewerdialog scoreplot "dialog scoreplot"}{...}
{viewerdialog screeplot "dialog screeplot"}{...}
{vieweralsosee "[MV] pca postestimation" "mansection MV pcapostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] rotate" "help rotate_zh"}{...}
{vieweralsosee "[MV] scoreplot" "help scoreplot_zh"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{viewerjumpto "Postestimation commands" "pca postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "pca_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "pca postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "pca postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "pca postestimation##examples"}{...}
{viewerjumpto "Stored results" "pca postestimation##results"}{...}
{viewerjumpto "Reference" "pca postestimation##reference"}
{help pca_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[MV] pca postestimation} {hline 2}}pca和pcamat的后估计工具
{p_end}
{p2col:}({mansection MV pcapostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行{cmd:pca}和{cmd:pcamat}之后，以下后估计命令特别重要：

{synoptset 22 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb pca postestimation##anti:estat anti}}反影像相关和
	协方差矩阵{p_end}
{synopt:{helpb pca postestimation##kmo:estat kmo}}Kaiser-Meyer-Olkin样本充足性测量{p_end}
{synopt:{helpb pca postestimation##loadings:estat loadings}}成分负载矩阵的几种归一化形式之一{p_end}
{synopt:{helpb pca postestimation##residuals:estat residuals}}相关或协方差的余量矩阵{p_end}
{synopt:{helpb pca postestimation##rotatecomp:estat rotatecompare}}比较旋转和未旋转成分{p_end}
{synopt:{helpb pca postestimation##smc:estat smc}}每个变量与其余变量之间的平方多重相关{p_end}
{p2coldent:+ {helpb pca postestimation##summarize:estat summarize}}显示估计样本的摘要统计{p_end}
{synopt:{help scoreplot_zh:loadingplot}}成分负载的绘图{p_end}
{synopt:{help rotate_zh}}旋转成分负载{p_end}
{synopt:{help scoreplot_zh}}绘制得分变量{p_end}
{synopt:{help screeplot_zh}}绘制特征值{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
+ {cmd:estat summarize} 在 {cmd:pcamat} 之后不可用。
{p_end}

{pstd}
还提供以下标准后估计命令：

{synoptset 22 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:+ {bf:{help estat vce}}}估计量的方差-协方差矩阵（VCE）{p_end}
包括帮助 post_estimates
{p2coldent:* {help lincom_zh}}线性组合的点估计、标准误差、检验和推断{p_end}
{p2coldent:* {help nlcom_zh}}非线性组合的点估计、标准误差、检验和推断{p_end}
{synopt:{helpb pca postestimation##predict:predict}}得分变量、预测和残差{p_end}
{p2coldent:* {help predictnl_zh}}广义预测的点估计、标准误差、检验和推断{p_end}
{p2coldent:* {help test_zh}}简单和复合线性假设的Wald检验{p_end}
{p2coldent:* {help testnl_zh}}非线性假设的Wald检验{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
+ {cmd:estat} {cmd:vce} 在 {cmd:pca} 和 {cmd:pcamat} 之后可用，配合 {cmd:vce(normal)} 选项。
{p_end}
{p 4 6 2}
* {cmd:lincom}, {cmd:nlcom}, {cmd:predictnl}, {cmd:test}, 和 {cmd:testnl} 仅在 {cmd:pca} 之后使用 {cmd:vce(normal)} 选项时可用。
{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV pcapostestimationRemarksandexamples:备注和示例}

        {mansection MV pcapostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}} {ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 21 tabbed}{...}
{p2coldent:{it:statistic}{space 2}{sf:# of vars.}}描述
	({it:k} = 原始变量的数量； {it:f} = 成分数量){p_end}
{synoptline}
{syntab:主}
{synopt:{opt sc:ore} {space 5} 1,...,{it:f}}基于成分的得分； 默认值{p_end}
{synopt:{opt f:it} {space 7} {it:k}}使用保留成分的拟合值{p_end}
{synopt:{opt res:idual} {space 2} {it:k}}使用保留成分的拟合后的原始残差{p_end}
{synopt:{opt q} {space 9} 1}残差平方和{p_end}
{synoptline}

{synopthdr}
{synoptline}
{syntab:主}
{synopt:{opt norot:ated}}即使有可用的旋转结果也使用未旋转的结果{p_end}
{synopt:{opt cen:ter}}基于中心化变量的得分{p_end}
{synopt:{opt notab:le}}抑制得分系数表的显示{p_end}
{synopt:{opth for:mat(%fmt)}}显示得分系数的格式{p_end}
{synoptline}
{p2colreset}{...}


包括帮助菜单_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建新的变量，包含得分、拟合值、原始残差和残差平方和等预测结果。


{marker options_predict}{...}
{title:预测选项}

{pstd}
关于 {cmd:pcamat} 的说明： {cmd:predict} 要求内存中必须有具有正确名称的变量。 除了中心得分，{opt means()} 应该在使用 {cmd:pcamat} 时指定。如果您使用 {cmd:pcamat} 是因为您只能访问相关或协方差矩阵，您将无法使用 {cmd:predict}。

{dlgtab:主}

{phang}
{opt score} 计算成分 1,...,{it:#} 的得分，其中 {it:#} 是 {it:{help varlist_zh:newvarlist}} 中的变量数量。

{phang}
{opt fit} 计算每个变量的拟合值，使用保留的成分。 {it:{help varlist_zh:newvarlist}} 中的变量数量应等于 {help pca_zh} 的 {varlist} 中的变量数量。

{phang}
{opt residual} 为每个变量计算原始残差（残差 = 观察值 - 拟合值），使用保留成分计算的拟合值。

{phang}
{opt q} 计算 Rao 统计量（即，省略成分的平方和），由相应的特征值加权。 这等于原始变量与拟合值之间的残差平方和。

{phang}
{opt norotated}
使用未旋转结果，即使旋转结果可用。

{phang}
{opt center}
基于中心化变量的得分。 该选项仅与协方差矩阵的PCA相关，其中得分默认基于未中心化变量。 相关矩阵的PCA得分始终基于标准化变量。

{phang}
{opt notable}
抑制得分系数表的显示。

{phang}
{opth format(%fmt)}
指定得分系数的显示格式。 默认为 {cmd:format(%8.4f)}。


{marker syntax_estat}{...}
{title:estat的语法}

{marker anti}{...}
{pstd}
显示反影像相关和协方差矩阵

{p 8 14 2}
{cmd:estat} {cmd:anti}
[{cmd:,} {opt nocorr} {opt nocov} {opth for:mat(%fmt)}]


{marker kmo}{...}
{pstd}
显示Kaiser-Meyer-Olkin样本充足性测量

{p 8 14 2}
{cmd:estat} {cmd:kmo}
[{cmd:,} {opt nov:ar} {opth for:mat(%fmt)}]


{marker loadings}{...}
{pstd}
显示成分负载矩阵

{p 8 14 2}
{cmd:estat} {cmdab:loa:dings}
[{cmd:,} {cmdab:cn:orm(}{cmdab:u:nit}|{cmdab:e:igen}|{cmdab:i:nveigen}{cmd:)}
{opth for:mat(%fmt)}]


{marker residuals}{...}
{pstd}
显示矩阵中的差异

{p 8 14 2}
{cmd:estat} {cmdab:res:iduals}
[{cmd:,} {opt o:bs} {opt f:itted} {opth for:mat(%fmt)}]


{marker rotatecomp}{...}
{pstd}
显示未旋转和旋转的成分

{p 8 14 2}
{cmd:estat} {cmdab:rot:atecompare} [{cmd:,} {opth for:mat(%fmt)}]


{marker smc}{...}
{pstd}
显示平方多重相关

{p 8 14 2}
{cmd:estat} {cmd:smc} [{cmd:,} {opth for:mat(%fmt)}]


{marker summarize}{...}
{pstd}
显示摘要统计

{p 8 14 2}
{cmd:estat} {cmdab:su:mmarize}
[{cmd:,} {opt lab:els} {opt nohea:der}  {opt nowei:ghts}]


包括帮助菜单_estat


{marker desc_estat}{...}
{title:estat的描述}

{pstd}
{cmd:estat anti} 显示反影像相关和反影像协方差矩阵。 这些是所有变量对的部分协方差和部分相关的负值，保持所有其他变量不变。

{pstd}
{cmd:estat kmo} 显示Kaiser-Meyer-Olkin (KMO) 样本充足性测量。 KMO 的值在0和1之间，较小的值表示变量整体之间缺乏相关性，不能进行 PCA 分析。历史上，KMO值通常被标记为以下范围（{help pca_postestimation##K1974:Kaiser 1974}）：

	    0.00到0.49    不可接受
	    0.50到0.59    可怜
	    0.60到0.69    中等
            0.70到0.79    一般
            0.80到0.89    优良
            0.90到1.00    卓越

{pstd}
{cmd:estat loadings} 显示成分负载矩阵的几种归一化形式之一（列为特征向量）。

{pstd}
{cmd:estat residuals} 显示观察到的相关或协方差矩阵与使用保留因素的拟合（重建）矩阵之间的差异。

{pstd}
{cmd:estat rotatecompare} 显示未旋转（主）成分和最近的旋转成分。

{pstd}
{cmd:estat smc} 显示每个变量与所有其他变量之间的平方多重相关。 SMC 是共同性的理论下限，因此是未解释方差的上限。

{pstd}
{cmd:estat summarize} 显示主成分分析中估计样本的变量摘要统计。 此子命令在 {cmd:pcamat} 之后不可用。


{marker options_estat}{...}
{title:estat的选项}

{phang}
{opt nocorr}，与 {cmd:estat anti} 一起使用的选项，抑制反影像相关矩阵的显示，即到每一对变量的部分相关矩阵的负值，保持其他变量不变。

{phang}
{opt nocov}，与 {cmd:estat anti} 一起使用的选项，抑制反影像协方差矩阵的显示，即到每一对变量的部分协方差矩阵的负值，保持其他变量不变。

{phang}
{opth format(%fmt)} 指定显示格式。 默认值因子命令而异。

{phang}
{opt novar}，与 {cmd:estat kmo} 一起使用的选项，抑制主成分分析中变量的Kaiser-Meyer-Olkin测量，仅显示总体KMO测量。

{phang}
{cmd:cnorm(unit}|{cmd:eigen}|{cmd:inveigen)}，与 {cmd:estat loadings} 一起使用的选项，选择特征向量的归一化形式，即主成分负载矩阵的列。 可用的归一化形式如下：

{p 12 24 2}{cmd:unit} {space 6} ssq(column) = 1；默认值{p_end}
{p 12 24 2}{cmd:eigen} {space 5} ssq(column) = 特征值{p_end}
{p 12 24 2}{cmd:inveigen} {space 2} ssq(column) = 1/特征值

{pmore}
其中 ssq(column) 是一列元素的平方和，特征值是与该列（特征向量）相关的特征值。

{phang}
{opt obs}，与 {cmd:estat residuals} 一起使用的选项，显示执行 PCA 所用的观察相关或协方差矩阵。

{phang}
{opt fitted}，与 {cmd:estat residuals} 一起使用的选项，显示基于保留成分的拟合（重建）相关或协方差矩阵。

{phang}
{opt labels}、{opt noheader}和{opt noweights}与通用的 {cmd:estat summarize} 命令相同；请参见 {helpb estat summarize:[R] estat summarize}。


{marker examples}{...}
{title:示例}

    设置
        {cmd:. sysuse auto}
	{cmd:. pca trunk weight length headroom}
    
    统计
    	{cmd:. estat residuals, fitted}
    	{cmd:. estat loadings, cnorm(eigen)}

    特征值图
        {cmd:. screeplot}

    成分负载和得分的图
        {cmd:. loadingplot, component(3)}
        {cmd:. scoreplot, component(3)}

    加载的旋转
	{cmd:. rotate}
        {cmd:. rotate, varimax}

    各成分的得分通过 {cmd:predict} 获得
        {cmd:. predict f1}
        {cmd:. drop f1}
        {cmd:. predict f1 f2}
        {cmd:. drop f1 f2}
        {cmd:. predict f1-f4}

    残差平方和
        {cmd:. predict t, q}


{marker results}{...}
{title:存储的结果}

{pstd}
设 {it:p} 为变量的数量， {it:f} 为因子的数量。

{pstd}
{cmd:predict} 除了生成变量外，还在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(scoef)}}p x f 的得分系数矩阵{p_end}

{pstd}
{cmd:estat anti} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(acov)}}p x p 的反影像协方差矩阵 {p_end}
{synopt:{cmd:r(acorr)}}p x p 的反影像相关矩阵 {p_end}

{pstd}
{cmd:estat kmo} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(kmo)}}Kaiser-Meyer-Olkin样本充足性测量 {p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(kmow)}}每个变量的KMO测量的列向量{p_end}

{pstd}
{cmd:estat loadings} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(cnorm)}}成分归一化： {cmd:eigen}、 {cmd:inveigen}，或 {cmd:unit} {p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(A)}}p x f 的归一化成分负载矩阵{p_end}

{pstd}
{cmd:estat residuals} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(fit)}}p x p 的拟合值矩阵{p_end}
{synopt:{cmd:r(residual)}}p x p 的残差矩阵{p_end}

{pstd}
{cmd:estat smc} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(smc)}}变量与所有其他变量之间的平方多重相关的向量{p_end}

{pstd}
请参阅 {cmd:estat summarize} 的返回结果
{helpb estat summarize:[R] estat summarize} 和
{cmd:estat vce} 的返回结果 {helpb estat vce:[R] estat vce} （当 {cmd:vce(normal)} 与 {cmd:pca} 或 {cmd:pcamat} 一起指定时可用）。

{pstd}
{cmd:rotate} 在 {cmd:pca} 和 {cmd:pcamat} 之后将添加到已有的 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(r_f)}}旋转解中的成分数量{p_end}
{synopt:{cmd:e(r_fmin)}}旋转标准值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(r_class)}}{cmd:orthogonal}或{cmd:oblique}{p_end}
{synopt:{cmd:e(r_criterion)}}旋转标准{p_end}
{synopt:{cmd:e(r_ctitle)}}旋转标题{p_end}
{synopt:{cmd:e(r_normalization)}}{cmd:kaiser}或{cmd:none}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(r_L)}}旋转负载{p_end}
{synopt:{cmd:e(r_T)}}旋转{p_end}
{synopt:{cmd:e(r_Ev)}}旋转成分解释的方差{p_end}
{p2colreset}{...}

{pstd}
旋转解中的成分按 {cmd:e(r_Ev)} 降序排列。


{marker reference}{...}
{title:参考文献}

{marker K1974}{...}
{phang}
Kaiser, H. F. 1974. 一个因子简单性的指数。
  {it:Psychometrika} 39: 31-36.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pca_postestimation.sthlp>}